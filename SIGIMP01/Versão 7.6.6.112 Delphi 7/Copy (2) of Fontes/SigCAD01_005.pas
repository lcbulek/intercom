unit SigCAD01_005;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadContaCorrente = class(Tfr_Cad)
    IBDataSetnum_agencia: TIBStringField;
    IBDataSetcod_banco: TSmallintField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSetnum_fone: TIBStringField;
    IBDataSetnom_gerente: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    IBDataSete_mail: TIBStringField;
    IBDataSethome_page: TIBStringField;
    Label1: TLabel;
    dbednum_agencia: TDBEdit;
    Label2: TLabel;
    dbednum_contacc: TDBEdit;
    Label6: TLabel;
    dbedden_contacc: TDBEdit;
    Label7: TLabel;
    dbednum_fone: TDBEdit;
    Label8: TLabel;
    dbednom_gerente: TDBEdit;
    Label12: TLabel;
    dbeddat_cadastro: TDBEdit;
    Label13: TLabel;
    dbede_mail: TDBEdit;
    Label14: TLabel;
    dbedhome_page: TDBEdit;
    dbckies_situacao: TDBCheckBox;
    QrAuxcod_banco: TSmallintField;
    QrAuxnom_banco: TIBStringField;
    IBDataSetlkNomBanco: TIBStringField;
    Label3: TLabel;
    dblklkNomBanco: TDBLookupComboBox;
    IBDataSetden_contacc: TIBStringField;
    edtcod_banco: TDBEdit;
    IBDataSetsequencia: TIntegerField;
    IBDataSetnum_contacc: TIBStringField;
    IBDataSetvlr_inicial: TIBBCDField;
    IBDataSetvlr_limite: TIBBCDField;
    IBDataSetdat_abertura: TDateField;
    IBDataSetcod_fornecedor: TSmallintField;
    IBDataSeties_default: TIBStringField;
    Fornecedor: TIBQuery;
    Fornecedorcod_fornecedor: TSmallintField;
    Fornecedorraz_social: TIBStringField;
    IBDataSetlkFornecedor: TStringField;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure FornecedorAfterOpen(DataSet: TDataSet);
    procedure QrAuxAfterOpen(DataSet: TDataSet);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadContaCorrente: Tfr_CadContaCorrente;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadContaCorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadContaCorrente := nil;
end;

procedure Tfr_CadContaCorrente.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadContaCorrente.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
	OpenTableAux(QrAux);
end;

procedure Tfr_CadContaCorrente.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSeties_situacao.AsString   := 'A';
  IBDataSeties_default.AsString    := 'N';
  IBDataSetvlr_inicial.AsCurrency  := 0.00;
  IBDataSetvlr_limite.AsCurrency   := 0.00;
  IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadContaCorrente.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State = dsBrowse then
   begin
      if Pesquisar('conta_corrente') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('num_contacc', dmConnection.qryPesquisa.FieldByName('campo2').AsVariant, []);
            finally
               EnableControls;
            end;
   end else
   if IBDataSet.State in [dsInsert, dsEdit] then
      if (edtcod_banco.Focused) or (dblklkNomBanco.Focused) then
      begin
         if Pesquisar('banco') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_banco.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;
      end;
end;

procedure Tfr_CadContaCorrente.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadContaCorrente.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  edtcod_banco.SetFocus;
end;

procedure Tfr_CadContaCorrente.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  edtcod_banco.SetFocus;
end;

procedure Tfr_CadContaCorrente.FornecedorAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Fornecedor.Last;
  Fornecedor.First;
end;

procedure Tfr_CadContaCorrente.QrAuxAfterOpen(DataSet: TDataSet);
begin
  inherited;
  QrAux.Last;
  QrAux.First;
end;

procedure Tfr_CadContaCorrente.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
   if DataSet.State = dsInsert then
      IBDataSetsequencia.AsInteger   := InsertCode('conta_corrente', 'sequencia');

end;

end.
