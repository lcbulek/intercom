unit SigCAD01_082;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, JvExControls, JvComponent, JvDBLookup,
  StdCtrls, Mask, DBCtrls;

type
  Tfr_CadFornBancoInt = class(Tfr_Cad)
    IBDataSetsequencia: TIntegerField;
    IBDataSetcod_banco: TIntegerField;
    IBDataSetcod_fornecedor: TIntegerField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSeties_default: TIBStringField;
    Fornecedor: TIBQuery;
    Fornecedorcod_fornecedor: TSmallintField;
    Fornecedorraz_social: TIBStringField;
    Banco_Intermediario: TIBQuery;
    Banco_Intermediariocod_banco: TSmallintField;
    Banco_Intermediarionom_banco: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    IBDataSetlkBanco: TStringField;
    IBDataSetlkFornecedor: TStringField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label4: TLabel;
    Label5: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadFornBancoInt: Tfr_CadFornBancoInt;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadFornBancoInt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Fornecedor.Close;
  Banco_Intermediario.Close;
  Action := caFree;
  fr_CadFornBancoInt := nil;
end;

procedure Tfr_CadFornBancoInt.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
     if DataSet.State = dsInsert then
      IBDataSetsequencia.AsInteger   := InsertCode('banco_int_fornecedor', 'sequencia');
end;

procedure Tfr_CadFornBancoInt.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ies_situacao').AsString := 'A';
  DataSet.FieldByName('ies_default').AsString    := 'N';
end;

procedure Tfr_CadFornBancoInt.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('banco_int_fornecedor') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('sequencia', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadFornBancoInt.FormShow(Sender: TObject);
begin
  inherited;
  IBDataSet.Open;
end;

end.
