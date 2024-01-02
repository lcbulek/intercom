unit SigIMP01_010;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unConsulta, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, Mask, DBCtrls, ActnList,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Spin, DateUtils;

type
  Tfr_HistCompras = class(Tfr_Consultas)
    Produto: TIBQuery;
    Produtocod_produto: TIBStringField;
    Produtoies_situacao: TIBStringField;
    ProdutocalUniMedida: TStringField;
    Produtocod_uni_medida: TSmallintField;
    ds_produto: TDataSource;
    UnidadeMedida: TIBQuery;
    UnidadeMedidasigla: TIBStringField;
    Pedidos: TIBQuery;
    ds_pedidos: TDataSource;
    Produtopes_unitario: TFloatField;
    Lista: TIBQuery;
    ds_lista: TDataSource;
    Produtocod_cliente: TIBStringField;
    Produtocod_fornecedor: TSmallintField;
    Produtocod_prod_fornec: TIBStringField;
    Produtoraz_social_reduz: TIBStringField;
    Produtonom_cliente_reduz: TIBStringField;
    Produtoden_produto: TIBStringField;
    Produtoden_produto_ing: TIBStringField;
    pgHistorico: TPageControl;
    tsProdutos: TTabSheet;
    tsTipoProdutos: TTabSheet;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label31: TLabel;
    Label19: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edCodProd: TEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    pnlF1: TPanel;
    Panel5: TPanel;
    Cliente: TIBQuery;
    Clientecod_cliente: TIBStringField;
    Fornecedor: TIBQuery;
    Fornecedorraz_social_reduz: TIBStringField;
    Fornecedorcod_fornecedor: TSmallintField;
    dsFornecedor: TDataSource;
    tipo_produto: TIBQuery;
    dsTipo_Produto: TDataSource;
    Label10: TLabel;
    cbClientes: TComboBox;
    Label11: TLabel;
    dbxFornecedor: TDBLookupComboBox;
    Label6: TLabel;
    dbxTipoProduto: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    ds_Pedidos2: TDataSource;
    ds_Faturas2: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox6: TGroupBox;
    Pedidos2: TIBQuery;
    Faturas2: TIBQuery;
    JvDBUltimGrid1: TJvDBUltimGrid;
    Pedidos2num_pedido: TLargeintField;
    Pedidos2dat_emissao: TDateTimeField;
    Pedidos2dat_liberacao: TDateField;
    Pedidos2ies_situacao: TIBStringField;
    Pedidos2ies_tip_pedido: TIBStringField;
    Pedidos2num_pedido_cli: TIBStringField;
    Pedidos2cod_cliente: TIBStringField;
    Pedidos2num_pedido_for: TIBStringField;
    Pedidos2cod_produto: TIBStringField;
    Pedidos2num_sequencia: TSmallintField;
    Pedidos2qtd_produto: TIBBCDField;
    Pedidos2vlr_unitario: TFloatField;
    Pedidos2vlr_liquido: TIBBCDField;
    Pedidos2vlr_unitario_esp: TFloatField;
    Pedidos2vlr_liquido_esp: TIBBCDField;
    Pedidos2qtd_romaneada: TIBBCDField;
    Pedidos2qtd_faturada: TIBBCDField;
    Pedidos2qtd_pendente: TIBBCDField;
    Pedidos2raz_social_reduz: TIBStringField;
    Pedidos2den_produto: TIBStringField;
    JvDBUltimGrid2: TJvDBUltimGrid;
    Faturas2dat_emissao: TDateTimeField;
    Faturas2num_fatura: TIBStringField;
    Faturas2num_pedido: TLargeintField;
    Faturas2num_seq_pedido: TSmallintField;
    Faturas2cod_cliente: TIBStringField;
    Faturas2raz_social_reduz: TIBStringField;
    Faturas2cod_produto: TIBStringField;
    Faturas2den_produto: TIBStringField;
    Faturas2qtd_produto: TIBBCDField;
    Faturas2vlr_unitario: TFloatField;
    Faturas2vlr_liquido: TIBBCDField;
    Faturas2vlr_unitario_esp: TFloatField;
    Faturas2vlr_liquido_esp: TIBBCDField;
    Faturas2num_pedido_cli: TIBStringField;
    Faturas2num_pedido_for: TIBStringField;
    Faturas2den_tip_condicao: TIBStringField;
    Faturas2num_nota_fiscal: TIntegerField;
    Faturas2serie: TIBStringField;
    Faturas2num_ref_volume: TIBStringField;
    seAno: TSpinEdit;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    Listadata_preco: TDateField;
    Listavlr_unitario: TFloatField;
    Listaobs_preco: TIBStringField;
    Listanumero: TLargeintField;
    Listaies_origem: TIBStringField;
    Pedidosnum_pedido_cli: TIBStringField;
    Pedidosnum_pedido_for: TIBStringField;
    Pedidosdat_pedido: TDateField;
    Pedidosqtd_produto: TIBBCDField;
    Pedidosvlr_unitario: TFloatField;
    Pedidosvlr_liquido: TIBBCDField;
    Pedidosvlr_unitario_esp: TFloatField;
    Pedidosvlr_liquido_esp: TIBBCDField;
    Pedidosnum_fatura: TIBStringField;
    Pedidosnum_ref_volume: TIBStringField;
    Pedidosdat_embarque: TDateField;
    Pedidosqtd_embarcada: TIBBCDField;
    Pedidosvlr_real_fat: TIBBCDField;
    Pedidosvlr_esp_fat: TIBBCDField;
    Pedidosies_tip_pedido: TIBStringField;
    tipo_produtoden_tip_produto: TIBStringField;
    tipo_produtocod_tip_produto: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPesquisarExecute(Sender: TObject);
    procedure ProdutoCalcFields(DataSet: TDataSet);
    procedure Produtoies_situacaoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ProdutoAfterScroll(DataSet: TDataSet);
    procedure ProdutoBeforeOpen(DataSet: TDataSet);
    procedure Pedidosies_tip_pedidoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure edCodProdExit(Sender: TObject);
    procedure Produtocod_produtoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure pgHistoricoChange(Sender: TObject);
    procedure FornecedorAfterOpen(DataSet: TDataSet);
    procedure tipo_produtoAfterOpen(DataSet: TDataSet);
    procedure cbClientesClick(Sender: TObject);
    procedure dbxFornecedorClick(Sender: TObject);
    procedure Pedidos2cod_produtoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Faturas2cod_produtoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_HistCompras: Tfr_HistCompras;

implementation

uses unConnection, UnPesquisaProduto, unMenuCompl, SigIMP01_006,
  SigIMP01_007;

{$R *.dfm}

procedure Tfr_HistCompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  Pedidos.Close;
  Produto.Close;

  Action := caFree;
  fr_HistCompras := nil;
end;

procedure Tfr_HistCompras.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  { pesquisar para um produto }
  if (pgHistorico.ActivePage = tsProdutos) then
  begin
     if Not(Assigned(fr_PesquisaProduto)) then
        Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);

     fr_PesquisaProduto.ShowModal;

     if (fr_PesquisaProduto.ModalResult = mrOk) then
     begin
       edCodProd.Clear;

       with Produto do
       begin
         Close;
         SQL.Clear;
         SQL.Text := 'select p."cod_produto", p."den_produto" , p."ies_situacao",                                      '+
                     '       p."cod_uni_medida", p."pes_unitario", p."cod_cliente", p."cod_fornecedor",                '+
                     '       p."cod_prod_fornec", p."den_produto_ing", f."raz_social_reduz", c."nom_cliente_reduz"     '+
                     'from "produto" p, "fornecedor" f, "cliente" c                                                    '+
                     'where p."cod_empresa" = :cod_empresa                                                             '+
                     '  and p."cod_produto" = :cod_produto                                                             '+
                     '  and f."cod_fornecedor" = p."cod_fornecedor"                                                    '+
                     '  and c."cod_cliente" = p."cod_cliente"                                                          ';
         ParamByName('cod_empresa').Value := vgCod_Empresa;
         ParamByName('cod_produto').AsString := fr_PesquisaProduto.qryProdutocod_produto.AsString;
         Open;
       end;
     end;
  end;
  { pesquisar por Cliente, Fornecedor ou um Grupo de Produto }
  if (pgHistorico.ActivePage = tsTipoProdutos) then
  begin
    with Pedidos2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select a."num_pedido", a."dat_emissao", a."dat_liberacao", a."ies_situacao", a."ies_tip_pedido",   ');
      SQL.Add('       d."raz_social_reduz", c."num_pedido_cli", a."cod_cliente", c."num_pedido_for",              ');
      SQL.Add('       b."cod_produto", e."den_produto", b."num_sequencia", b."qtd_produto",                       ');
      SQL.Add('       b."vlr_unitario", b."vlr_liquido", b."vlr_unitario_esp", b."vlr_liquido_esp",               ');
      SQL.Add('       b."qtd_romaneada", b."qtd_faturada", b."qtd_pendente"                                       ');
      SQL.Add('from "pedido" a,  "pedido_produto" b, "pedido_complemento" c, "fornecedor" d, "produto" e          ');
      SQL.Add('where a."cod_empresa" = :cod_empresa                                                               ');
      if cbClientes.ItemIndex <> 0 then
      begin
        SQL.Add('  and a."cod_cliente" = :cod_cliente');
        ParamByName('cod_cliente').AsString := trim(cbClientes.Text);
      end;
      if dbxFornecedor.KeyValue <> 0 then
      begin
        SQL.Add('  and c."cod_fornecedor" = :cod_fornecedor');
        ParamByName('cod_fornecedor').AsInteger := dbxFornecedor.KeyValue;
      end;
      SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano               ');
      SQL.Add('  and c."cod_empresa" = a."cod_empresa"                 ');
      SQL.Add('  and c."num_pedido" = a."num_pedido"                   ');
      SQL.Add('  and b."cod_empresa" = a."cod_empresa"                 ');
      SQL.Add('  and b."num_pedido"  = a."num_pedido"                  ');
      SQL.Add('  and a."ies_situacao" <> ''C''                         ');
      SQL.Add('  and d."cod_fornecedor" = c."cod_fornecedor"           ');
      SQL.Add('  and e."cod_empresa" = b."cod_empresa"                 ');
      SQL.Add('  and e."cod_produto" = b."cod_produto"                 ');

      SQL.Add('  and exists (select * from "produto" x                 ');
      SQL.Add('               where x."cod_empresa" = a."cod_empresa"  ');
      SQL.Add('                 and x."cod_produto" = b."cod_produto"  ');
      if (dbxTipoProduto.KeyValue <> 0) then
      begin
         SQL.Add('                 and x."cod_tip_produto" = :cod_tip_produto');
         ParamByName('cod_tip_produto').AsInteger := dbxTipoProduto.KeyValue;
      end;
      SQL.Add('                 )');
      SQL.Add('order by a."dat_liberacao" desc, c."num_pedido_cli", b."cod_produto"');

      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('ano').AsString := seAno.Text;
      Open;
    end;
    with Faturas2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select a."dat_emissao", c."num_fatura", b."num_pedido", b."num_seq_pedido", a."cod_cliente", f."raz_social_reduz",');
      SQL.Add('       b."cod_produto", p."den_produto", b."qtd_produto", b."vlr_unitario", b."vlr_liquido", b."vlr_unitario_esp", b."vlr_liquido_esp",');
      SQL.Add('       d."num_pedido_cli", d."num_pedido_for", e."den_tip_condicao",');
      SQL.Add('       a."num_nota_fiscal", a."serie", c."num_ref_volume"');
      SQL.Add('from "nota_fiscal_saida" a, "nota_fiscal_saida_produto" b, "fornecedor" f, "produto" p,');
      SQL.Add('     "nf_saida_complemento" c');
      SQL.Add('     left join "condicao_venda" e');
      SQL.Add('     on e."cod_tip_condicao" = c."cod_cond_venda",');
      SQL.Add('     "pedido_complemento" d');
      SQL.Add('where');
      SQL.Add('      a."ies_situacao" <> ''C''');
      SQL.Add('  and a."cod_empresa" = :cod_empresa');
      if cbClientes.ItemIndex <> 0 then
      begin
        SQL.Add('  and a."cod_cliente" = :cod_cliente');
        ParamByName('cod_cliente').AsString := trim(cbClientes.Text);
      end;
      if dbxFornecedor.KeyValue <> 0 then
      begin
        SQL.Add('  and c."cod_fornecedor" = :cod_fornecedor');
        ParamByName('cod_fornecedor').AsInteger := dbxFornecedor.KeyValue;
      end;
      SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano               ');
      SQL.Add('  and b."cod_empresa" = a."cod_empresa"                 ');
      SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"         ');
      SQL.Add('  and b."serie" = a."serie"                             ');
      SQL.Add('  and c."cod_empresa" = a."cod_empresa"                 ');
      SQL.Add('  and c."num_nota_fiscal" = a."num_nota_fiscal"         ');
      SQL.Add('  and c."serie" = a."serie"                             ');
      SQL.Add('  and d."cod_empresa" = b."cod_empresa"                 ');
      SQL.Add('  and d."num_pedido" = b."num_pedido"                   ');
      SQL.Add('  and f."cod_fornecedor" = c."cod_fornecedor"           ');
      SQL.Add('  and p."cod_empresa" = b."cod_empresa"                 ');
      SQL.Add('  and p."cod_produto" = b."cod_produto"                 ');
      SQL.Add('  and exists (select * from "produto" x                 ');
      SQL.Add('               where x."cod_empresa" = a."cod_empresa"  ');
      SQL.Add('                 and x."cod_produto" = b."cod_produto"  ');
      if (dbxTipoProduto.KeyValue <> 0) then
      begin
         SQL.Add('                 and x."cod_tip_produto" = :cod_tip_produto');
         ParamByName('cod_tip_produto').AsInteger := dbxTipoProduto.KeyValue;
      end;
      SQL.Add('                 )');
      SQL.Add('order by a."dat_emissao" desc, b."cod_produto"');

      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('ano').AsString := seAno.Text;      
      Open;
    end;
  end;
end;

procedure Tfr_HistCompras.ProdutoCalcFields(DataSet: TDataSet);
begin
  inherited;
  { mostrar tradu��es na grade de resultado }
  with UnidadeMedida do
  begin
    Close;
    ParamByName('cod_uni_medida').AsString := Produtocod_uni_medida.AsString;
    Open;
    ProdutocalUniMedida.AsString := FieldByName('sigla').AsString;
    Close;
  end;
end;

procedure Tfr_HistCompras.Produtoies_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
         if Sender.Value = 'A' then Text := 'Ativo'
    else if Sender.Value = 'C' then Text := 'Cancelado'
    else if Sender.Value = 'I' then Text := 'Inativo'

end;

procedure Tfr_HistCompras.FormShow(Sender: TObject);
begin
  inherited;
  Pedidos.Active := True;
  Pedidos2.Active := True;
  //Faturas2.Active := True;
  Produto.Open;
  if (pgHistorico.ActivePage = tsProdutos) then edCodProd.SetFocus;  
end;

procedure Tfr_HistCompras.ProdutoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with Lista do
  begin
    Close;
    ParamByName('cod_empresa1').Value := vgCod_Empresa;
    ParamByName('cod_produto1').Value := Produtocod_produto.AsString;
    ParamByName('cod_cliente1').Value := Produtocod_cliente.AsString;
    ParamByName('cod_empresa2').Value := vgCod_Empresa;
    ParamByName('cod_produto2').Value := Produtocod_produto.AsString;
    ParamByName('cod_cliente2').Value := Produtocod_cliente.AsString;
    ParamByName('cod_empresa3').Value := vgCod_Empresa;
    ParamByName('cod_produto3').Value := Produtocod_produto.AsString;
    ParamByName('cod_cliente3').Value := Produtocod_cliente.AsString;
    Open;
  end;
  with Pedidos do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_produto').Value := Produtocod_produto.AsString;                    
    Open;
  end;
end;                                                                                                   

procedure Tfr_HistCompras.ProdutoBeforeOpen(DataSet: TDataSet);
begin                                                                                    
  inherited;
  Pedidos.Close;
end;

procedure Tfr_HistCompras.Pedidosies_tip_pedidoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value = 'P' then Text := 'SC';
  if Sender.Value = 'O' then Text := 'OR';
end;

procedure Tfr_HistCompras.edCodProdExit(Sender: TObject);
begin
  inherited;
  if trim(edCodProd.Text) <> '' then
  begin

    Lista.Close;
    Pedidos.Close;

    with Produto do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select p."cod_produto", p."den_produto" , p."ies_situacao",                                      '+
                  '       p."cod_uni_medida", p."pes_unitario", p."cod_cliente", p."cod_fornecedor",                '+
                  '       p."cod_prod_fornec", p."den_produto_ing", f."raz_social_reduz", c."nom_cliente_reduz"     '+
                  'from "produto" p, "fornecedor" f, "cliente" c                                                    '+
                  'where p."cod_empresa" = :cod_empresa                                                             '+
                  '  and p."cod_produto" = :cod_produto                                                             '+
                  '  and f."cod_fornecedor" = p."cod_fornecedor"                                                    '+
                  '  and c."cod_cliente" = p."cod_cliente"                                                          ';
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('cod_produto').AsString := trim(RetirarLixo(edCodProd.Text));
      Open;
      if IsEmpty then
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('cod_produto').AsString := trim(edCodProd.Text);
        Open;
        if IsEmpty then Exit;
      end;
    end;
  end;
end;

procedure Tfr_HistCompras.Produtocod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '' then Exit;

  with FmtProdutoCliente(Produtocod_cliente.AsString, Sender.AsString) do
  begin
    Text := fmtProduto;
  end;

end;

procedure Tfr_HistCompras.FormCreate(Sender: TObject);
begin
  inherited;
  pgHistorico.ActivePage := tsProdutos;
  { combo dos cliente }
  with Cliente do
  begin
    Open;
    while NOT(EOF) do
    begin
       cbClientes.Items.Add(FieldByName('cod_cliente').AsString);
       Next;
    end;
    cbClientes.ItemIndex := 0;

    Close;
  end;
  { combo dos Fornecedores }
  with Fornecedor do
  begin
    Close;
    Open;
    Last;
    dbxFornecedor.KeyValue := 0;
  end;
  { combo de tipo de produto }
  with tipo_produto do
  begin
    Close;
    Open;
    Last;
    dbxTipoProduto.KeyValue := 0;
  end;
  seAno.Value :=  YearOf(Buscar_DateTime);
end;

procedure Tfr_HistCompras.pgHistoricoChange(Sender: TObject);
begin
  inherited;
  if (pgHistorico.ActivePage = tsProdutos) then edCodProd.SetFocus;
end;

procedure Tfr_HistCompras.FornecedorAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.Last;
  DataSet.First;

end;

procedure Tfr_HistCompras.tipo_produtoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.Last;
  DataSet.First;

end;

procedure Tfr_HistCompras.cbClientesClick(Sender: TObject);
begin
  inherited;
    { filtrar fornecedores }
    with Fornecedor do
    begin
      SQL.Clear;
      SQL.Add('select cast(''*** TODOS ***'' as char(50)) "raz_social_reduz", cast(0 as smallint) "cod_fornecedor"');
      SQL.Add('from "fornecedor" a                                                                                ');
      SQL.Add('union                                                                                              ');
      SQL.Add('select cast(a."raz_social_reduz" as char(50)) "raz_social_reduz", cast(a."cod_fornecedor" as smallint) "cod_fornecedor"');
      SQL.Add('from "fornecedor" a                                                                                                    ');
      if cbClientes.ItemIndex <> 0 then
      begin
        SQL.Add('where exists (select * from "produto" b                                                                                ');
        SQL.Add('              where b."cod_empresa" = :cod_empresa                                                                     ');
        SQL.Add('                and b."cod_cliente" = :cod_cliente                                                                     ');
        SQL.Add('                and b."cod_fornecedor" = a."cod_fornecedor")                                                           ');
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_cliente').AsString := trim(cbClientes.Text);
      end;
      SQL.Add('order by 1');
      Open;
      dbxFornecedor.KeyValue := 0;
    end;
    { filtrar tipos de produtos }
    with tipo_produto do
    begin
      SQL.Clear;
      SQL.Add('select cast(''*** TODOS ***'' as varchar(128)) "den_tip_produto", cast(0 as smallint) "cod_tip_produto"');
      SQL.Add('from "tipo_produto" a');
      SQL.Add('union');
      SQL.Add('select cast(a."den_tip_produto" as varchar(128)) "den_tip_produto", cast(a."cod_tip_produto" as smallint) "cod_tip_produto"');
      SQL.Add('from "tipo_produto"  a');
      if cbClientes.ItemIndex <> 0 then
      begin
        SQL.Add('where exists (select * from "produto" b');
        SQL.Add('               where b."cod_empresa" = :cod_empresa');
        SQL.Add('                 and b."cod_cliente" = :cod_cliente');
        SQL.Add('                 and b."cod_tip_produto" = a."cod_tip_produto")');
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_cliente').AsString := trim(cbClientes.Text);
      end;
      SQL.Add('order by 1');
      Open;
      dbxTipoProduto.KeyValue := 0;
    end;
end;

procedure Tfr_HistCompras.dbxFornecedorClick(Sender: TObject);
begin
  inherited;
    { filtrar tipos de produtos }
    with tipo_produto do
    begin
      SQL.Clear;
      SQL.Add('select cast(''*** TODOS ***'' as varchar(128)) "den_tip_produto", cast(0 as smallint) "cod_tip_produto"');
      SQL.Add('from "tipo_produto" a');
      SQL.Add('union');
      SQL.Add('select cast(a."den_tip_produto" as varchar(128)) "den_tip_produto", cast(a."cod_tip_produto" as smallint) "cod_tip_produto"');
      SQL.Add('from "tipo_produto"  a');
      SQL.Add('where 1=1');
      if dbxFornecedor.KeyValue <> 0 then
      begin
        SQL.Add('and exists (select * from "produto" b');
        SQL.Add('               where b."cod_empresa" = :cod_empresa');
        SQL.Add('                 and b."cod_fornecedor" = :cod_fornecedor');
        SQL.Add('                 and b."cod_tip_produto" = a."cod_tip_produto")');
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_fornecedor').AsInteger := dbxFornecedor.KeyValue;
      end;
      if cbClientes.ItemIndex <> 0 then
      begin
        SQL.Add('and exists (select * from "produto" b');
        SQL.Add('               where b."cod_empresa" = :cod_empresa');
        SQL.Add('                 and b."cod_cliente" = :cod_cliente');
        SQL.Add('                 and b."cod_tip_produto" = a."cod_tip_produto")');
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_cliente').AsString := trim(cbClientes.Text);                  
      end;
      SQL.Add('order by 1');      
      Open;
      dbxTipoProduto.KeyValue := 0;
    end;

end;

procedure Tfr_HistCompras.Pedidos2cod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Not(Sender.IsNull) then
     with FmtProdutoCliente(Pedidos2cod_cliente.AsString, Pedidos2cod_produto.AsString) do
          Text := fmtProduto;
end;

procedure Tfr_HistCompras.Faturas2cod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Not(Sender.IsNull) then
     with FmtProdutoCliente(Faturas2cod_cliente.AsString, Faturas2cod_produto.AsString) do
          Text := fmtProduto;

end;

(*
	if Not(Faturas.IsEmpty) then
    if CriarForm(Tfr_ManNF, fr_ManNF, False, False) then
      fr_ManNF.Open_NF(Faturasnum_nota_fiscal.AsInteger, Faturasserie.AsString, Faturascod_cliente.AsString);
*)

end.
