unit SigCAD01_016;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin,
  IBStoredProc, JvExControls, JvDBLookup;

type
  Tfr_CadFornecedor = class(Tfr_Cad)
    IBDataSetraz_social: TIBStringField;
    IBDataSetraz_social_reduz: TIBStringField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSetobservacao: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    QrAuxcod_contato: TSmallintField;
    QrAuxnom_contato: TIBStringField;
    Label1: TLabel;
    dbedcod_fornecedor: TDBEdit;
    Label2: TLabel;
    dbedraz_social: TDBEdit;
    Label3: TLabel;
    dbedraz_social_reduz: TDBEdit;
    Label22: TLabel;
    dbmmobservacao: TDBMemo;
    IBDataSetcod_fornecedor: TIntegerField;
    actCad_Contato: TAction;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    actBancos: TAction;
    IBDataSeties_idioma: TIBStringField;
    Label6: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label7: TLabel;
    dbeMascara: TDBEdit;
    IBDataSetmas_cod_produto: TIBStringField;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    IBDataSetcod_tip_fornecedor: TSmallintField;
    Label4: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetpais_origem: TIBStringField;
    IBDataSetpais_aquisicao: TIBStringField;
    IBDataSetpais_procedencia: TIBStringField;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    IBDataSetcod_moeda: TSmallintField;
    Moedas: TIBQuery;
    Moedascod_moeda: TSmallintField;
    Moedascodigo: TIBStringField;
    Moedasden_moeda: TIBStringField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label11: TLabel;
    dsMoedas: TDataSource;
    IBDataSetendereco: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure actCad_ContatoExecute(Sender: TObject);                   
    procedure lkpDensubCategoriaExit(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetAfterScroll(DataSet: TDataSet);
    procedure actBancosExecute(Sender: TObject);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure dbeMascaraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadFornecedor: Tfr_CadFornecedor;

implementation

uses unConnection, UnMenuCompl, SigCAD01_004, SigCAD01_015;

{$R *.dfm}

procedure Tfr_CadFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  if Assigned(fr_CadFornecedor_Contato) then fr_CadFornecedor_Contato.Close;
  if Assigned(fr_CadBanco) then fr_CadBanco.Close;

  fr_CadFornecedor := nil;
end;

procedure Tfr_CadFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadFornecedor.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_fornecedor.AsInteger := InsertCode('fornecedor', 'cod_fornecedor');
  IBDataSetcod_tip_fornecedor.AsInteger := 1;
end;

procedure Tfr_CadFornecedor.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSeties_situacao.AsString   := 'A';
  IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
  IBDataSeties_idioma.AsString := 'I';
  IBDataSetcod_moeda.Value := 2; // default = USD
end;

procedure Tfr_CadFornecedor.fr_FmNavigator1acF3Execute(Sender: TObject);  
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('fornecedor') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_fornecedor', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadFornecedor.actCad_ContatoExecute(
  Sender: TObject);
begin
  inherited;
	CriarForm(Tfr_CadFornecedor_Contato, fr_CadFornecedor_Contato, false, false);
end;

procedure Tfr_CadFornecedor.lkpDensubCategoriaExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadFornecedor.Set_Value;
begin
  inherited;
  Moedas.Open;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadFornecedor.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetraz_social.FocusControl;
end;

procedure Tfr_CadFornecedor.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetraz_social.FocusControl;
end;

procedure Tfr_CadFornecedor.IBDataSetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Assigned(fr_CadFornecedor_Contato) then fr_CadFornecedor_Contato.Set_Value;
  if Assigned(fr_CadBanco) then fr_CadBanco.Set_Value;
end;

procedure Tfr_CadFornecedor.actBancosExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadBanco, fr_CadBanco, false, false);
end;

procedure Tfr_CadFornecedor.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;                      
      ApplyUpdates;
      Transaction.CommitRetaining;                  
   except
   	Transaction.RollbackRetaining;
   end;


end;

procedure Tfr_CadFornecedor.dbeMascaraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  { Caracteres v�lidos para m�scara }
  if not(Key in ['#','A','.','-',',','/','\','|','[',']','(',')',#08]) then
     Key := #0;
end;

end.
