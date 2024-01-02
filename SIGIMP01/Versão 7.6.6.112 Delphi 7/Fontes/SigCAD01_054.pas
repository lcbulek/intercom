unit SigCAD01_054;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  Tfr_CadParametrofornecedor = class(Tfr_Cad)
    fornecedor: TIBQuery;
    Label1: TLabel;
    dlkFornecedor: TDBLookupComboBox;
    Label2: TLabel;
    dbeMascara: TDBEdit;
    Label4: TLabel;
    dbeTamanho: TDBEdit;
    dbeCodFornecedor: TDBEdit;
    IBDataSetcod_fornecedor: TSmallintField;
    IBDataSetmas_cod_produto: TIBStringField;
    fornecedorcod_fornecedor: TSmallintField;
    IBDataSetlkraz_social: TStringField;
    IBDataSettam_cod_produto: TFloatField;
    fornecedorraz_social: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbeMascaraKeyPress(Sender: TObject; var Key: Char);
    procedure IBDataSetCalcFields(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure Set_Value; override;
  end;

var
  fr_CadParametrofornecedor: Tfr_CadParametrofornecedor;

implementation

uses unConnection, UnMenuCompl, SigCAD01_016;

{$R *.dfm}

procedure Tfr_CadParametrofornecedor.Set_Value;
begin
  IBDataSet.Close;
  if Assigned(fr_CadFornecedor) then
  begin
    dbeCodFornecedor.Enabled := False;
    dlkFornecedor.Enabled := False;
  
    IBDataSet.SelectSQL.Clear;
    IBDataSet.SelectSQL.Text := 'select * from "parametro_fornecedor" '+
                                ' where "cod_fornecedor" = :cod_fornecedor';
    IBDataSet.ParamByName('cod_fornecedor').AsString := fr_CadFornecedor.IBDataSet.FieldByName('cod_fornecedor').AsString;
  end;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadParametrofornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBDataSet.Close;
  QrAux.Close;
  inherited;
  fr_CadParametroFornecedor := nil;
end;

procedure Tfr_CadParametrofornecedor.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadParametrofornecedor.dbeMascaraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  { Caracteres válidos para máscara }
  if not(Key in ['#','A','.','-',',','/','\','|','[',']','(',')',#08]) then
     Key := #0;
end;

procedure Tfr_CadParametrofornecedor.IBDataSetCalcFields(DataSet: TDataSet);
begin
  inherited;
  { Determinar o tamanho da máscara, sem a formatação }
  { para usar no campo de edição de entrada           }
  IBDataSet.FieldByName('tam_cod_produto').AsInteger := TamanhoMascara(IBDataSet.FieldByName('mas_cod_produto').AsString);
end;

procedure Tfr_CadParametrofornecedor.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;                                                      
	if IBDataSet.State in [dsBrowse] then
  begin
  	if Pesquisar('parametro_fornecedor') then
    	if AbrirPesquisa then
      	with IBDataSet do
        	try
          	 DisableControls;
            First;
            Locate('cod_fornecedor', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
          finally
          	EnableControls;
          end;
	end else
  if IBDataSet.State in [dsInsert, dsEdit] then
 	  if (dbeCodFornecedor.Focused) or (dlkFornecedor.Focused) then
    begin
    	if Pesquisar('fornecedor') then
      	if AbrirPesquisa then
        	with IBDataSet do
          	IBDataSetcod_fornecedor.AsString := dmConnection.qryPesquisa.FieldByName('campo1').AsString;
    end;
end;

procedure Tfr_CadParametrofornecedor.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_fornecedor.AsString := fr_CadFornecedor.IBDataSetcod_fornecedor.AsString;
end;

end.
