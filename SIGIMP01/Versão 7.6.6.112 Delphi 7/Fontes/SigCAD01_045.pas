unit SigCAD01_045;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, JvBaseDlg,
  JvSelectDirectory, JvComponentBase, JvBrowseFolder;

type
  Tfr_CadParametroCliente = class(Tfr_Cad)
    IBDataSetcod_cliente: TIBStringField;
    IBDataSetmas_cod_produto: TIBStringField;
    Label1: TLabel;
    Label2: TLabel;
    dbeMascara: TDBEdit;
    IBDataSettam_cod_produto: TIntegerField;
    dbeCodCliente: TDBEdit;
    lista_preco: TIBQuery;
    lista_preconum_lista: TSmallintField;
    lista_precoden_lista: TIBStringField;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    IBDataSettxt_ship_marks: TMemoField;
    IBDataSettxt_other_remarks: TMemoField;
    IBDataSetcod_despachante: TSmallintField;
    IBDataSetden_destination_exp: TIBStringField;
    despachante: TIBQuery;
    despachantecod_despachante: TSmallintField;
    despachanteden_despachante: TIBStringField;
    IBDataSetlkpDespachante: TStringField;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    IBDataSetncm_formato: TIBStringField;
    IBDataSetncm_formato_doc: TIBStringField;
    Label3: TLabel;
    ncm_fmt_geral: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    DBMemo3: TDBMemo;
    IBDataSettxt_ship_marks_ptb: TMemoField;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    DBMemo4: TDBMemo;
    IBDataSettxt_ship_marks_esp: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbeMascaraKeyPress(Sender: TObject; var Key: Char);
    procedure IBDataSetCalcFields(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure IBDataSetAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure Set_Value; override;
  end;

var
  fr_CadParametroCliente: Tfr_CadParametroCliente;

implementation

uses unConnection, UnMenuCompl, SigCAD01_012;

{$R *.dfm}

procedure Tfr_CadParametroCliente.Set_Value;
begin
  IBDataSet.Close;
  if Assigned(fr_CadCliente) then
  begin
    IBDataSet.ParamByName('cod_cliente').AsString := fr_CadCliente.IBDataSet.FieldByName('cod_cliente').AsString;
  end;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadParametroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBDataSet.Close;
  QrAux.Close;
  inherited;
  fr_CadParametroCliente := nil;
end;

procedure Tfr_CadParametroCliente.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadParametroCliente.dbeMascaraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  { Caracteres válidos para máscara }
  if not(Key in ['#','A','@','.','-',',','/','\','|','[',']','(',')',#08]) then
     Key := #0;
end;

procedure Tfr_CadParametroCliente.IBDataSetCalcFields(DataSet: TDataSet);
begin
  inherited;
  { Determinar o tamanho da máscara, sem a formatação }
  { para usar no campo de edição de entrada           }
  IBDataSet.FieldByName('tam_cod_produto').AsInteger := TamanhoMascara(IBDataSet.FieldByName('mas_cod_produto').AsString);
end;

procedure Tfr_CadParametroCliente.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;                                                      
	if IBDataSet.State in [dsBrowse] then
  begin
  	if Pesquisar('parametro_cliente') then
    	if AbrirPesquisa then
      	with IBDataSet do
        	try
          	 DisableControls;
            First;
            Locate('cod_cliente', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
          finally
          	EnableControls;
          end;
	end;
end;

procedure Tfr_CadParametroCliente.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSetCod_Cliente.AsString := fr_CadCliente.IBDataSetcod_cliente.AsString;
end;

procedure Tfr_CadParametroCliente.IBDataSetAfterPost(DataSet: TDataSet);
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

procedure Tfr_CadParametroCliente.IBDataSetAfterDelete(DataSet: TDataSet);
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

end.
