unit SigCAD01_034;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls, UnGrid;

type
  Tfr_CadEstrutura = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetcod_produto: TIBStringField;
    IBDataSetcod_produto_componente: TIBStringField;
    IBDataSetqtd_necessaria: TIBBCDField;
    IBDataSetpct_refugo: TIBBCDField;
    QrAuxcod_produto: TIBStringField;
    QrAuxden_produto: TIBStringField;
    IBDataSetlkpDenProduto: TIBStringField;
    qryProduto: TIBQuery;
    qryProdutocod_produto: TIBStringField;
    qryProdutoden_produto: TIBStringField;
    IBDataSetlkpDenProdutoComp: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    grbProduto: TGroupBox;
    fr_FmGrid1: Tfr_FmGrid;
    grbComponente: TGroupBox;
    fr_FmGrid2: Tfr_FmGrid;
    GroupBox3: TGroupBox;
    edtCodProduto: TEdit;
    edtDenProduto: TEdit;
    grbCadastro: TGroupBox;
    Label2: TLabel;
    edtcod_produto_componente: TDBEdit;
    lkpDenProdutoComp: TDBLookupComboBox;
    edtpct_refugo: TDBEdit;
    Label4: TLabel;
    edtqtd_necessaria: TDBEdit;
    Label3: TLabel;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edtpct_refugoExit(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure IBDataSetcod_produto_componenteValidate(Sender: TField);
    procedure qryProdutoAfterScroll(DataSet: TDataSet);
    procedure edtCodProdutoChange(Sender: TObject);
    procedure qryProdutoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure edtDenProdutoChange(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadEstrutura: Tfr_CadEstrutura;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadEstrutura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	fr_CadEstrutura := nil;
end;

procedure Tfr_CadEstrutura.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_empresa.AsInteger	:= vgCod_Empresa;
   IBDataSetcod_produto.AsString		:= qryProdutocod_produto.AsString;
   IBDataSetqtd_necessaria.AsFloat	:= 1.000;
   IBDataSetpct_refugo.AsFloat		:= 0.000;
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadEstrutura.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  QrAux.Close;
  QrAux.ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
  OpenTableAux(QrAux);
end;

procedure Tfr_CadEstrutura.FormCreate(Sender: TObject);
begin
  inherited;
	Set_Value;
end;

procedure Tfr_CadEstrutura.edtpct_refugoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadEstrutura.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
  if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('produto') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               Filtered	:= False;
               Filtered	:= True;
            finally
               EnableControls;
            end;
   end else
   if IBDataSet.State in [dsInsert, dsEdit] then
      if (edtcod_produto_componente.Focused) or (lkpDenProdutoComp.Focused) then
      begin
         if Pesquisar('produto') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_produto_componente.AsString  := Trim(dmConnection.qryPesquisa.FieldByName('campo1').AsString);
      end;
end;

procedure Tfr_CadEstrutura.IBDataSetFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
   Accept := DataSet['cod_produto'] = qryProdutocod_produto.AsString;
end;

procedure Tfr_CadEstrutura.IBDataSetcod_produto_componenteValidate(
  Sender: TField);
begin
  inherited;
	if Sender.AsString = IBDataSetcod_produto.AsString then
  try
  	Abort;
  finally
  	MessageDlg('Atenção. Componente inválido.', mtError, [mbCancel], 0);
	end;
end;

procedure Tfr_CadEstrutura.qryProdutoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Filtrar_Tabela(IBDataSet);
end;

procedure Tfr_CadEstrutura.edtCodProdutoChange(Sender: TObject);
begin
  inherited;
	Filtrar_Tabela(qryProduto);
end;

procedure Tfr_CadEstrutura.qryProdutoFilterRecord(DataSet: TDataSet;
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

procedure Tfr_CadEstrutura.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_produto_componente.FocusControl;
end;

procedure Tfr_CadEstrutura.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
	IBDataSetcod_produto_componente.FocusControl;
end;

procedure Tfr_CadEstrutura.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  	try
	  	if qryProduto.IsEmpty then
   	   Abort;
	finally
      IBDataSetcod_produto_componente.FocusControl;
   end;
end;

procedure Tfr_CadEstrutura.edtDenProdutoChange(Sender: TObject);
begin
  inherited;
	Filtrar_Tabela(qryProduto);
end;

procedure Tfr_CadEstrutura.Set_Value;
begin
  inherited;
	qryProduto.Close;
  qryProduto.ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
  OpenTableAux(qryProduto);

  try
		IBDataSet.Close;
   	IBDataSet.ParamByName('cod_empresa').AsShort := vgCod_Empresa;
	  OpenTable(IBDataSet);
  finally
		Filtrar_Tabela(IBDataSet);
  end;
end;

end.
