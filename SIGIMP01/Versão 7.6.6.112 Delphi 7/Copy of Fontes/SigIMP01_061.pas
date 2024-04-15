unit SigIMP01_061;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, ComCtrls, ToolWin,
  ImgList, ActnList, ExtCtrls, JvExControls, JvComponent, JvDBLookup,
  StdCtrls, DateUtils;

type
  Tfrm_PesquisaPedImportados = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    dlcCliente: TJvDBLookupCombo;
    dlcFornecedor: TJvDBLookupCombo;
    rgSituacao: TRadioGroup;
    Panel1: TPanel;
    ActionList1: TActionList;
    acOK: TAction;
    acClose: TAction;
    acClear: TAction;
    acFiltrar: TAction;
    ImageList1: TImageList;
    GroupBox2: TGroupBox;
    dbgPedido: TDBGrid;
    Clientes: TIBQuery;
    Clientescod_cliente: TIBStringField;
    ds_cliente: TDataSource;
    Fornecedores: TIBQuery;
    Fornecedorescod_fornecedor: TSmallintField;
    Fornecedoresraz_social_reduz: TIBStringField;
    ds_Fornecedor: TDataSource;
    Label2: TLabel;
    edNumPedido: TEdit;
    Pedidos: TIBQuery;
    ds_Pedidos: TDataSource;
    Pedidoscod_empresa: TSmallintField;
    Pedidoscod_cliente: TIBStringField;
    Pedidosnum_pedido_cli: TIBStringField;
    Pedidoscod_fornecedor: TSmallintField;
    Pedidosies_situacao: TIBStringField;
    qryFornecedor: TIBQuery;
    qryFornecedorcod_fornecedor: TSmallintField;
    qryFornecedorraz_social_reduz: TIBStringField;
    PedidoslkFornecedor: TStringField;
    Pedidosdat_cadastro: TDateTimeField;
    Pedidosvlr_liquido: TIBBCDField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure ToolButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dlcClienteChange(Sender: TObject);
    procedure dlcFornecedorChange(Sender: TObject);
    procedure acFiltrarExecute(Sender: TObject);
    procedure acOKExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acClearExecute(Sender: TObject);
    procedure dbgPedidoDblClick(Sender: TObject);
    procedure dbgPedidoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure ClientesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_PesquisaPedImportados: Tfrm_PesquisaPedImportados;

implementation

uses unConnection;

{$R *.dfm}

procedure Tfrm_PesquisaPedImportados.ToolButton3Click(Sender: TObject);
begin
  dlcCliente.ClearValue;
  Fornecedores.Close;
  dlcFornecedor.ClearValue;
  Pedidos.Close;

end;

procedure Tfrm_PesquisaPedImportados.FormCreate(Sender: TObject);
begin
  Clientes.Open;
  Fornecedores.Open;
end;

procedure Tfrm_PesquisaPedImportados.dlcClienteChange(Sender: TObject);
begin
  with Fornecedores do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    Open;
  end;
  acFiltrarExecute(nil);
end;

procedure Tfrm_PesquisaPedImportados.dlcFornecedorChange(Sender: TObject);
begin
  acFiltrarExecute(nil);
end;

procedure Tfrm_PesquisaPedImportados.acFiltrarExecute(Sender: TObject);
Var
  Situacao: String;
begin
  { aplicar filtros }
  if (trim(edNumPedido.Text) = '') and
     (dlcCliente.Value = '0') then Exit;

  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Clear;
    SQL.Add('select * from "imp_ped_cli"                 ');
    SQL.Add(' where "cod_empresa" = :cod_empresa         ');
    SQL.Add('  and "ies_situacao" <> ''G''               '); // não selecionar pedidos gerados

    if trim(edNumPedido.Text) <> '' then
    begin
       SQL.Add('  and "num_pedido_cli" = :num_pedido_cli');
       ParamByName('num_pedido_cli').AsString := trim(edNumPedido.Text);
    end;

    if dlcCliente.Value > '0' then
    begin
       SQL.Add('  and "cod_cliente" = :cod_cliente');
       ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    end;

    if dlcFornecedor.Value > '0' then
    begin                             
       SQL.Add('  and "cod_fornecedor" = :cod_fornecedor   ');
       ParamByName('cod_fornecedor').AsInteger := Fornecedorescod_fornecedor.AsInteger;
    end;

    case rgSituacao.ItemIndex of
      0 : Situacao := 'I';
      1 : Situacao := 'E';
      2 : Situacao := 'T';
    end;

    if Situacao <> 'T' then
    begin
       SQL.Add('  and "ies_situacao" = :ies_situacao');
       ParamByName('ies_situacao').AsString := Situacao;
    end;

    SQL.Add('  and substr("dat_cadastro", 1,4) >= :ano');

    SQL.Add('order by "dat_cadastro" desc                          ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('ano').Value := YearOf(Buscar_DateTime) - 1 ;
    Open;
  end;
end;

procedure Tfrm_PesquisaPedImportados.acOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfrm_PesquisaPedImportados.acCloseExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfrm_PesquisaPedImportados.acClearExecute(Sender: TObject);
begin
  dlcCliente.ClearValue;
  Fornecedores.Close;
  dlcFornecedor.ClearValue;
  Pedidos.Close;
  rgSituacao.ItemIndex := 2;
  dlcCliente.SetFocus;
end;

procedure Tfrm_PesquisaPedImportados.dbgPedidoDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfrm_PesquisaPedImportados.dbgPedidoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Pedidos.IsEmpty then Exit;

    if Pedidos.FieldByName('ies_situacao').AsString = 'E' then
    begin
      dbgPedido.Canvas.Brush.Color:= $008080FF;
      dbgPedido.Canvas.Font.Color:= clWindowText;
    end else
    if Pedidos.FieldByName('ies_situacao').AsString = 'G' then
    begin
      dbgPedido.Canvas.Brush.Color:= clMoneyGreen;
      dbgPedido.Canvas.Font.Color:= clWindowText;
    end else
    if Pedidos.FieldByName('ies_situacao').AsString = 'I' then
    begin
      dbgPedido.Canvas.Brush.Color:= clSkyBlue;
      dbgPedido.Canvas.Font.Color:= clWindowText;
    end;
  dbgPedido.Canvas.FillRect(Rect);
  dbgPedido.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_PesquisaPedImportados.FormShow(Sender: TObject);
begin
  acFiltrarExecute(nil);
  dlcCliente.SetFocus;
end;

procedure Tfrm_PesquisaPedImportados.ClientesAfterOpen(DataSet: TDataSet);
begin
   DataSet.Last;
   DataSet.First;
end;

end.
