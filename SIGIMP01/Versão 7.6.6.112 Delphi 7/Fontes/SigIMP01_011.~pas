unit SigIMP01_011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ExtCtrls, ComCtrls, ToolWin, DB,
  IBCustomDataSet, IBQuery, StdCtrls, JvExControls, JvComponent, JvDBLookup,
  Excel2000, OleServer, AniThread, Grids, DBGrids, Buttons,
  UnEntradaRelatorio, SigIMP01_045;

type
  Tfr_HistoricoPrecos = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    dbcClientes: TJvDBLookupCombo;
    rgOrdenar: TRadioGroup;
    edtCodProduto: TEdit;
    Panel1: TPanel;
    btnGerar: TBitBtn;
    btnAbrir: TBitBtn;
    BitBtn3: TBitBtn;
    panGauge: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    actAbrir: TAction;
    Clientes: TIBQuery;
    Clientescod_cliente: TIBStringField;
    ds_Clientes: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGerarExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_HistoricoPrecos: Tfr_HistoricoPrecos;

  { variaveis para o progress bar }
  Ani : TAnimationThread;
  Rect : TRect;

implementation

uses unConnection;

{$R *.dfm}

procedure Tfr_HistoricoPrecos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with dmCOM do
  begin
    FecharExcel;
    ProdutosHistPreco.Close;
    Clientes.Close;
    ultimos_precos.Close;
  end;
  Action := caFree;
  fr_HistoricoPrecos := nil;
end;

procedure Tfr_HistoricoPrecos.actGerarExecute(Sender: TObject);
Var
  CodCliente : String;
  CodFornecedor : integer;
begin
  { obrigatório escolher cliente/fornecedor ou um produto }
  if (trim(edtCodProduto.Text) = '') then
  begin
    if (dbcClientes.Value = '0') then Exit;
    CodCliente := Clientescod_cliente.AsString;
  end else
  begin { informado o código do produto }
    with ProdutoExiste(trim(edtCodProduto.Text)) do
    begin
       if Not(Existe) then Exit;
       CodCliente := Cliente;
       CodFornecedor := Fornecedor;
       dbcClientes.KeyValue := CodCliente;
    end;
  end;

   { inicializar progress bar }
   Rect := panGauge.ClientRect;
   InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
   Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
   Application.ProcessMessages;
   Screen.Cursor := crHourGlass;

   actGerar.Enabled := False;
   actAbrir.Enabled := False;

   with dmCOM.ProdutosHistPreco do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select a."cod_produto", a."den_produto", a."den_produto_ing", a."cod_cliente", a."cod_fornecedor" ');
      SQL.Add('  from "produto" a                                                                                ');
      SQL.Add(' where a."cod_empresa" = :cod_empresa                                                             ');
      SQL.Add('   and a."cod_cliente" = :cod_cliente                                                             ');

      if trim(edtCodProduto.Text) > '' then
      begin
         SQL.Add('  and a."cod_produto" like :cod_produto || ''%'' ');
         ParamByName('cod_produto').Value := Trim(edtCodProduto.Text);
      end;

      if rgOrdenar.ItemIndex = 0 then
         SQL.Add('order by a."den_produto_ing"');

      if rgOrdenar.ItemIndex = 1 then
         SQL.Add('order by a."den_produto"');

      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('cod_cliente').AsString  := CodCliente;
      Open;

      if IsEmpty then
      begin
        Ani.Terminate;
        Screen.Cursor := crDefault;
        Exit;
      end;
   end;

   dmCOM.ExcelHistoricoPrecos(CodCliente, CodFornecedor, rgOrdenar.ItemIndex, 0);

   { finalizar progress bar }
   Ani.Terminate;
   Screen.Cursor := crDefault;
   
   dmCOM.AbrirPlanilha(dmCOM.FileName);
   actGerar.Enabled := True;
   actAbrir.Enabled := True;
end;

procedure Tfr_HistoricoPrecos.actAbrirExecute(Sender: TObject);
begin
  if trim(dmCOM.FileName) > '' then
     dmCOM.AbrirPlanilha(dmCOM.FileName);
end;

procedure Tfr_HistoricoPrecos.FormCreate(Sender: TObject);
begin
  with dmCOM do
  begin
    with Clientes do
    begin
      ParamByName('login').Value := vgLogin;
      Open;
    end;
    Clientes.Open;
  end;
end;

end.
