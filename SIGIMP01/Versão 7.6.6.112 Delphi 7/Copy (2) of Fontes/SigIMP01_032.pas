unit SigIMP01_032;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, UnGrid, DBCtrls, Mask;

type
  Tfr_CadKit = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetcod_produto: TIBStringField;
    IBDataSetcod_produto_componente: TIBStringField;
    IBDataSetqtd_necessaria: TIBBCDField;
    IBDataSetdat_cadastro: TDateField;
    QrAuxcod_produto: TIBStringField;
    QrAuxden_produto: TIBStringField;
    IBDataSetlkpDen_Produto: TIBStringField;
    grbProduto: TGroupBox;
    grbComponente: TGroupBox;
    fr_FmGrid1: Tfr_FmGrid;
    fr_FmGrid2: Tfr_FmGrid;
    qryProduto: TIBQuery;
    qryProdutocod_produto: TIBStringField;
    qryProdutoden_produto: TIBStringField;
    pnlComponente: TPanel;
    Label2: TLabel;
    edtcod_produto_componente: TDBEdit;
    Label3: TLabel;
    edtqtd_necessaria: TDBEdit;
    dbeddat_cadastro: TDBEdit;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    edtCodProduto: TEdit;
    edtDenProduto: TEdit;
    qryExists_Romaneio: TIBQuery;
    dbeDenProd: TDBEdit;
    qryProdComp: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryProdutoAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure edtqtd_necessariaExit(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetqtd_necessariaValidate(Sender: TField);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure qryProdutoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure edtCodProdutoChange(Sender: TObject);
    procedure edtDenProdutoChange(Sender: TObject);
  private
    { Private declarations }
    function Exists_Romaneio: Boolean;
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadKit: Tfr_CadKit;

implementation

uses unConnection, UnMenuCompl, UnPesquisaProduto;

{$R *.dfm}

procedure Tfr_CadKit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	fr_CadKit := nil;
end;

procedure Tfr_CadKit.qryProdutoAfterScroll(DataSet: TDataSet);
begin
  inherited;
	with IBDataSet do
  try
    DisableControls;
    Close;
    ParamByName('cod_empresa').AsShort 	:= vgCod_Empresa;
    ParamByName('cod_produto').AsString	:= DataSet['cod_produto'];

    Open;
  finally
    EnableControls;
  end;
end;

procedure Tfr_CadKit.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadKit.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
	with QrAux do
  begin
  	Close;
		ParamByName('cod_empresa').AsSmallInt	:= vgCod_Empresa;
    OpenTableAux(QrAux);
  end;
end;

procedure Tfr_CadKit.edtqtd_necessariaExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadKit.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
	IBDataSetcod_empresa.AsInteger		:= vgCod_Empresa;
  IBDataSetcod_produto.AsString		:= qryProdutocod_produto.AsString;
  IBDataSetqtd_necessaria.AsFloat	:= 1.000;
  IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadKit.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_produto_componente.FocusControl;
	if Exists_Romaneio then
  try
  	Abort;
  finally
    MessageDlg('Atenção. Não é possível excluir o Kit está em uso', mtWarning, [mbCancel], 0);
  end;
end;

procedure Tfr_CadKit.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
	IBDataSetcod_produto_componente.FocusControl;
end;

procedure Tfr_CadKit.IBDataSetqtd_necessariaValidate(Sender: TField);
begin
  inherited;
	if Sender.AsFloat <= 0.000 then
  	try
    	Abort;
    finally
      MessageDlg('Atenção. Valor inválido', mtError, [mbCancel], 0);
    end;
end;

procedure Tfr_CadKit.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
	if IBDataSet.State in [dsBrowse] then
  begin
   with dmConnection.qryPesquisa do
   begin
       Close;
       SQL.Text :=   ' select a."cod_produto_componente" campo1 , b."den_produto" campo2 '+
                     ' from "kit" a, "produto" b '+
                     ' where ' +
                     '     a."cod_empresa"  = :cod_empresa                               '+
                     ' and a."cod_produto" = :cod_produto                                '+
                     ' and b."cod_produto" = a."cod_produto_componente"                  '+
                     ' and b."cod_empresa" = a."cod_empresa"                             '+
                     ' order by 2 ';
       ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
       ParamByName('cod_produto').AsString := qryProdutocod_produto.Value;
       Open;
   end;
    if not dmConnection.qryPesquisa.IsEmpty then
       if AbrirPesquisa then
          with IBDataSet do
          try
             DisableControls;
             First;
             Locate('cod_produto_componente', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
          finally
             EnableControls;
          end;
	end else
  if IBDataSet.State in [dsInsert, dsEdit] then
  	if (edtcod_produto_componente.Focused) or (dbeDenProd.Focused) then
    begin
      Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);
      fr_PesquisaProduto.ShowModal;
      if (fr_PesquisaProduto.ModalResult = mrOk) then
      begin
        	with IBDataSet do
          	IBDataSetcod_produto_componente.AsString  := fr_PesquisaProduto.qryProduto.FieldByName('cod_produto').AsString;
      end;
    end;
end;

procedure Tfr_CadKit.qryProdutoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept	:=  Length(edtCodProduto.Text) = 0;
  if not Accept then
  Accept := Pos(UpperCase(edtCodProduto.Text), UpperCase(DataSet['cod_produto'])) > 0
  else
  begin
  	Accept	:=  Length(edtDenProduto.Text) = 0;
	  if not Accept then
    	Accept := Pos(UpperCase(edtDenProduto.Text), UpperCase(DataSet['den_produto'])) > 0;
	end;
end;

procedure Tfr_CadKit.edtCodProdutoChange(Sender: TObject);
begin
  inherited;
	Filtrar_Tabela(qryProduto);
end;

procedure Tfr_CadKit.edtDenProdutoChange(Sender: TObject);
begin
  inherited;
	Filtrar_Tabela(qryProduto);
end;

function Tfr_CadKit.Exists_Romaneio: Boolean;
begin
	with qryExists_Romaneio do
  begin
    Close;
    ParamByName('cod_empresa').AsSmallInt						:= vgCod_Empresa;
    ParamByName('cod_produto').AsString							:= IBDataSetcod_produto.AsString;
    ParamByName('cod_produto_componente').AsString	:= IBDataSetcod_produto_componente.AsString;
    Open;
    Result := not IsEmpty;
  end;
end;

procedure Tfr_CadKit.Set_Value;
begin
  inherited;
	with qryProduto do
  try
    DisableControls;
  	Close;
		ParamByName('cod_empresa').AsSmallInt	:= vgCod_Empresa;
    Open;
    First;
  finally
    EnableControls;
  end;
end;

end.
