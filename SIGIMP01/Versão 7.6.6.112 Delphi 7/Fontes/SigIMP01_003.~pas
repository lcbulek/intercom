unit SigIMP01_003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnGrid, DB, IBCustomDataSet, IBQuery, ExtCtrls, Buttons,
  ComCtrls, ToolWin, Mask, ActnList, Grids, DBGrids, UnType,
  JvExControls, JvComponent, JvButton, JvTransparentButton, JvCaptionButton,
  JvExStdCtrls, JvCtrls, DBCtrls, JvDBLookup, Menus, IBStoredProc, Spin,
  IBUpdateSQL, JvExDBGrids, JvDBGrid, JvDBUltimGrid, unNavigator,
  JvDBGridFooter, JvComponentBase, JvFormAutoSize, DateUtils, JvExGrids,
  JvStringGrid;


type
  TTotalPedidos = record
                   Total : double;
                   TotalEsp : double;
                   Faturado : double;
                   FaturadoEsp : double;
                   Pendente : double;
                   PendenteEsp : double;
                  end;


  Tfr_Filtro = class(TForm)
    GroupBox4: TGroupBox;
    Panel1: TPanel;                            
    pgcFiltro: TPageControl;
    tbsPedido: TTabSheet;
    tbsNF: TTabSheet;
    pnlFornecedor: TPanel;
    ActionList1: TActionList;
    actNF_Open: TAction;
    actNF_Insert: TAction;
    pnlNF: TPanel;
    actPedido_Open: TAction;
    actPedido_Insert: TAction;
    act_F5: TAction;
    act_F6: TAction;
    GroupBox1: TGroupBox;
    act_Filtrar: TAction;
    Panel4: TPanel;
    actPedidoNF: TAction;
    ToolBar3: TToolBar;
    ToolButton3: TToolButton;
    Clientes: TIBQuery;
    Clientescod_cliente: TIBStringField;
    Fornecedores: TIBQuery;
    ds_Clientes: TDataSource;
    Fornecedorescod_fornecedor: TSmallintField;
    Fornecedoresraz_social_reduz: TIBStringField;
    ds_Fornecedores: TDataSource;
    Pedidos: TIBQuery;
    ds_Pedidos: TDataSource;
    dbgFaturas: TJvDBUltimGrid;
    Pedidoscod_empresa: TSmallintField;
    Pedidosnum_pedido: TLargeintField;
    Pedidoscod_cliente: TIBStringField;
    Pedidosdat_emissao: TDateTimeField;
    Pedidosdat_entrega: TDateField;
    Pedidosdat_cadastro: TDateTimeField;
    Pedidosvlr_bruto: TIBBCDField;
    Pedidosvlr_liquido: TIBBCDField;
    Pedidosnum_pedido_cli: TIBStringField;
    Pedidosnum_pedido_for: TIBStringField;
    Pedidoscod_fornecedor: TIntegerField;
    Pedidosraz_social_reduz: TIBStringField;
    Faturas: TIBQuery;
    ds_Faturas: TDataSource;
    Faturascod_empresa: TSmallintField;
    Faturasnum_nota_fiscal: TIntegerField;
    Faturasserie: TIBStringField;
    Faturascod_cliente: TIBStringField;
    Faturasdat_emissao: TDateTimeField;
    Faturasdat_cadastro: TDateTimeField;
    Faturasies_situacao: TIBStringField;
    Faturasvlr_bruto: TIBBCDField;
    Faturasvlr_liquido: TIBBCDField;
    Faturasvol_total: TIBBCDField;
    Faturasqtd_caixas: TIntegerField;
    Faturasnum_ref_volume: TIBStringField;
    Faturasnum_fatura: TIBStringField;
    Faturascod_fornecedor: TSmallintField;
    Faturasraz_social_reduz: TIBStringField;
    Pedidosdat_liberacao: TDateField;
    GroupBox5: TGroupBox;
    upPedidos: TIBUpdateSQL;
    cby_pedido_faturados: TIBQuery;
    PedidoscalVlrPendente: TFloatField;
    PedidoscalVlrFaturado: TFloatField;
    cby_pedido_pendentes: TIBQuery;
    cby_pedido_pendentesvlr_total: TIBBCDField;
    cby_pedido_pendentesqtd_caixas: TIntegerField;
    cby_pedido_pendentespes_liquido: TIBBCDField;
    cby_pedido_pendentespes_bruto: TIBBCDField;
    GroupBox8: TGroupBox;
    edNumPedIntercom: TLabeledEdit;
    edNumPedido: TLabeledEdit;
    edNumConfirmacao: TLabeledEdit;
    edNumFatura: TLabeledEdit;
    dbcClientes: TJvDBLookupCombo;
    Label1: TLabel;
    dbcFornecedores: TJvDBLookupCombo;
    Label2: TLabel;
    seAno: TSpinEdit;
    Label3: TLabel;
    Grupos: TIBQuery;
    PedidoscalPesBruto: TFloatField;
    PedidoscalVolTotal: TFloatField;
    PedidoProdutos: TIBQuery;
    PedidoProdutoscod_produto: TIBStringField;
    PedidoProdutosvlr_pedido: TIBBCDField;
    PedidoProdutosnum_fatura: TIBStringField;
    dsPedidoProdutos: TDataSource;
    Panel3: TPanel;
    Label48: TLabel;
    Label55: TLabel;
    edBuscaCodigo: TEdit;
    edBuscaDesc: TEdit;
    TotalPedidoProdutos: TIBQuery;
    dsTotalPedidoProdutos: TDataSource;
    cby_produto_pendentes: TIBQuery;
    cby_produto_pendentesvlr_total: TIBBCDField;
    cby_produto_pendentesqtd_caixas: TIntegerField;
    cby_produto_pendentespes_liquido: TIBBCDField;
    cby_produto_pendentespes_bruto: TIBBCDField;
    PedidoProdutosvlr_pendente: TIBBCDField;
    PedidoProdutospes_bruto: TIBBCDField;
    Pedidospes_bruto: TIBBCDField;
    Pedidosvol_total: TIBBCDField;
    act_F4: TAction;
    PedidoProdutoscalDenPortugues: TStringField;
    PedidoProdutoscalDenIngles: TStringField;
    PedidoProdutosnum_sequencia: TSmallintField;
    PedidoProdutosqtd_pendente: TIBBCDField;
    PedidoProdutosqtd_pedido: TIBBCDField;
    PedidoProdutosvlr_unit_pedido: TFloatField;
    PedidoProdutosqtd_fatura: TIBBCDField;
    PedidoProdutosvlr_unit_fatura: TFloatField;
    PedidoProdutosvlr_fatura: TIBBCDField;
    PedidoProdutosdat_fatura: TDateField;
    TotalPedidoProdutosvlr_total_pedido: TIBBCDField;
    TotalPedidoProdutosvlr_total_fatura: TIBBCDField;
    TotalPedidoProdutosvlr_total_pendente: TIBBCDField;
    TotalPedidoProdutospes_bruto_total: TIBBCDField;
    Faturasdat_liquidacao: TDateField;
    Pedidostxt_observacao: TMemoField;
    edNumLote: TLabeledEdit;
    upFaturas: TIBUpdateSQL;
    gbComentarioPed: TGroupBox;
    dbmComentarios: TDBMemo;
    gbComentarioFat: TGroupBox;
    DBMemo1: TDBMemo;
    actSalvarPedido: TAction;
    actSalvarFaturas: TAction;
    Faturastxt_observacao: TMemoField;
    Pedidosvlr_bruto_esp: TIBBCDField;
    Pedidosvlr_liquido_esp: TIBBCDField;
    Faturasvlr_bruto_esp: TIBBCDField;
    Faturasvlr_liquido_esp: TIBBCDField;
    PedidoProdutosvlr_unit_ped_esp: TFloatField;
    PedidoProdutosvlr_pedido_esp: TIBBCDField;
    TotalPedidoProdutosvlr_total_ped_esp: TIBBCDField;
    TotalPedidoProdutosvlr_total_fat_esp: TIBBCDField;
    PedidoProdutosvlr_fatura_esp: TIBBCDField;
    PedidoscalVlrFaturadoEsp: TFloatField;
    PedidoscalVlrPendenteEsp: TFloatField;
    cby_pedido_pendentesvlr_total_esp: TIBBCDField;
    PedidoProdutosvlr_pendente_esp: TIBBCDField;
    TotalPedidoProdutosvlr_total_pendente_esp: TIBBCDField;
    gfPedido: TJvDBGridFooter;
    GroupBox10: TGroupBox;
    ProdutosFatura: TIBQuery;
    dsProdutosFatura: TDataSource;
    ProdutosFaturacod_empresa: TSmallintField;
    ProdutosFaturanum_nota_fiscal: TIntegerField;
    ProdutosFaturaserie: TIBStringField;
    ProdutosFaturanum_sequencia: TSmallintField;
    ProdutosFaturacod_produto: TIBStringField;
    ProdutosFaturaqtd_produto: TIBBCDField;
    ProdutosFaturavlr_unitario: TFloatField;
    ProdutosFaturavlr_unitario_esp: TFloatField;
    ProdutosFaturavlr_liquido: TIBBCDField;
    ProdutosFaturavlr_liquido_esp: TIBBCDField;
    ProdutosFaturanum_pedido_cli: TIBStringField;
    dbgProdutosFatura: TJvDBUltimGrid;
    JvDBGridFooter1: TJvDBGridFooter;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    JvImgBtn5: TJvImgBtn;
    btnSalvarPedido: TJvImgBtn;
    ProdutosFaturacalDenPortugues: TStringField;
    ProdutosFaturacalDenIngles: TStringField;
    PedidoProdutosvolume: TIBBCDField;
    Pedidosterms_payment: TIBStringField;
    gfFaturas: TJvDBGridFooter;
    Faturasdat_embarque: TDateField;
    Faturasdat_env_originais: TDateField;
    Faturasdat_rec_originais: TDateField;
    Faturasvlr_comissao_f: TFloatField;
    Faturasdat_pgto_comis_f: TDateField;
    Faturasvlr_comissao_c: TFloatField;
    Faturasdat_pgto_comis_c: TDateField;
    Faturasdat_acerto_com: TDateField;
    Pedidosdat_vertratadm: TDateField;
    Pedidosies_li: TIBStringField;
    Pedidosdat_verli: TDateField;
    Faturasdat_vertratadm: TDateField;
    Faturasies_li: TIBStringField;
    Faturasdat_verli: TDateField;
    CondicaoVenda: TIBQuery;
    Pedidosden_tip_condicao: TStringField;
    Pedidosgrupo: TStringField;
    Faturascod_cond_venda: TIntegerField;
    Faturasden_tip_condicao: TStringField;
    Faturasdat_coleta: TDateField;
    Faturasdat_eda_br: TDateField;
    Portos: TIBQuery;
    Pedidosporto_emb: TStringField;
    Pedidosporto_dest: TStringField;
    Faturasporto_emb: TStringField;
    Faturasporto_dest: TStringField;
    Faturascod_porto_emb: TIntegerField;
    Faturascod_porto_dest: TIntegerField;
    Pedidoscod_porto_emb: TIntegerField;
    Pedidoscod_porto_des: TIntegerField;
    Pedidoscod_cond_venda: TIntegerField;
    GroupBox3: TGroupBox;
    dbgProdutosPedidos: TJvDBUltimGrid;
    tbsComissao: TTabSheet;
    GroupBox11: TGroupBox;
    dbgComissoes: TJvDBUltimGrid;
    gfComissoes: TJvDBGridFooter;
    act_F7: TAction;
    btnAgruparPedidos: TButton;
    Pedidoscor_embarque: TSmallintField;
    dbgPedidos: TJvDBUltimGrid;
    btnDesagruparPedidos: TButton;
    gfProdutosPedidos: TJvDBGridFooter;
    Faturascor_embarque: TSmallintField;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    edBuscaCodigo1: TEdit;
    edBuscaDesc1: TEdit;
    JvImgBtn1: TJvImgBtn;
    btnAgruparFaturas: TButton;
    btnDesagruparFaturas: TButton;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    GroupBox7: TGroupBox;
    Pedidosdat_embalagem: TDateField;
    Faturasdat_fotos: TDateField;
    JvImgBtn2: TJvImgBtn;
    Faturasdat_instBL: TDateField;
    Pedidosdat_ctn_marks: TDateField;
    Faturasdat_mod_doc: TDateField;
    TotalPedidoProdutosvolume_total: TIBBCDField;
    cby_pedido_pendentesvolume: TIBBCDField;
    cby_produto_pendentesvolume: TIBBCDField;
    Faturasdat_env_bl: TDateField;
    Faturasdat_rec_bl: TDateField;
    Faturasdat_apro_bl: TDateField;
    sgPagPedido: TJvStringGrid;
    cby_pedido_faturadosvlr_bruto: TIBBCDField;
    cby_pedido_faturadosvlr_adicional: TIBBCDField;
    cby_pedido_faturadosvlr_desconto: TIBBCDField;
    cby_pedido_faturadosvlr_bruto_esp: TIBBCDField;
    cby_pedido_faturadosvlr_total_canc: TIBBCDField;
    cby_pedido_faturadosvlr_total_pend: TIBBCDField;
    cby_pedido_faturadosvlr_total_pend_esp: TIBBCDField;
    cby_pedido_faturadosvlr_total_fat: TIBBCDField;
    cby_pedido_faturadosvlr_total_fat_esp: TIBBCDField;
    pedido_pagamento_ad: TIBQuery;
    pedido_pagamento_advlr_pagamento: TIBBCDField;
    pedido_pagamento_addat_pagamento: TDateField;
    pedido_pagamento_advlr_pagamento_esp: TIBBCDField;
    pedido_pagamento_adnum_nota_fiscal: TIntegerField;
    Pedidosies_preco_esp: TIBStringField;
    spr_faturas_pedido: TIBQuery;
    pedido_pagamento_ef: TIBQuery;
    pedido_pagamento_efvlr_pagamento: TIBBCDField;
    pedido_pagamento_efdat_pagamento: TDateField;
    pedido_pagamento_efvlr_pagamento_esp: TIBBCDField;
    pedido_pagamento_efnum_nota_fiscal: TIntegerField;
    pedido_pagamento_efnum_fatura: TIBStringField;
    Panel6: TPanel;
    sgPagFatura: TJvStringGrid;
    Faturasies_preco_esp: TIBStringField;
    spr_saldo_confirmacao: TIBQuery;
    spr_saldo_confirmacaonum_pedido: TLargeintField;
    spr_saldo_confirmacaonum_pedido_for: TIBStringField;
    spr_saldo_confirmacaonum_pedido_cli: TIBStringField;
    spr_saldo_confirmacaodat_liberacao: TDateField;
    spr_saldo_confirmacaovlr_faturado: TIBBCDField;
    spr_saldo_confirmacaovlr_faturado_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_fat: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_fat_esp: TIBBCDField;
    spr_fatura_pedido_ptgadiantado: TIBQuery;
    spr_fatura_pedido_ptgadiantadodat_pagamento: TDateField;
    spr_fatura_pedido_ptgadiantadovlr_pagamento: TIBBCDField;
    spr_fatura_pedido_ptgadiantadovlr_pagamento_esp: TIBBCDField;
    spr_fatura_pedido_ptgadiantadonum_pedido_cli: TIBStringField;
    fatura_pagamento: TIBQuery;
    fatura_pagamentocod_empresa: TSmallintField;
    fatura_pagamentonum_nota_fiscal: TIntegerField;
    fatura_pagamentoserie: TIBStringField;
    fatura_pagamentonum_sequencia: TSmallintField;
    fatura_pagamentovlr_pagamento: TIBBCDField;
    fatura_pagamentovlr_pagamento_esp: TIBBCDField;
    fatura_pagamentodat_pagamento: TDateField;
    fatura_pagamentotxt_pagamento: TMemoField;
    fatura_pagamentonum_pedido: TLargeintField;
    Faturaspes_bru_geral: TIBBCDField;
    Faturaspes_liq_geral: TIBBCDField;
    Faturasqtd_pallets: TIntegerField;
    Faturasdat_pl_des: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPedido_OpenExecute(Sender: TObject);
    procedure actNF_OpenExecute(Sender: TObject);
    procedure actNF_InsertExecute(Sender: TObject);
    procedure actPedido_InsertExecute(Sender: TObject);
    procedure act_F5Execute(Sender: TObject);
    procedure act_F6Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure LerPedidos;
    procedure LerFaturas;
    procedure act_FiltrarExecute(Sender: TObject);
    procedure dbgPedidosDblClick(Sender: TObject);
    procedure dbgFaturasDblClick(Sender: TObject);
    procedure FaturasAfterScroll(DataSet: TDataSet);
    procedure Faturasies_situacaoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PedidosAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure PedidosAfterPost(DataSet: TDataSet);
    procedure ds_PedidosStateChange(Sender: TObject);
    procedure PedidosCalcFields(DataSet: TDataSet);
    procedure Panel3Enter(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PedidoProdutoscod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure act_F4Execute(Sender: TObject);
    procedure PedidoProdutosCalcFields(DataSet: TDataSet);
    procedure gfProdutosPedidosCalculate(Sender: TJvDBGridFooter;
      const FieldName: String; var CalcValue: Variant);
    procedure gfPedidoCalculate(Sender: TJvDBGridFooter;
      const FieldName: String; var CalcValue: Variant);
    function TotalPedidos:TTotalPedidos;
    procedure PedidosAfterOpen(DataSet: TDataSet);
    procedure SalvarMarcadores;
    procedure RetornarMarcadores;
    procedure actPedidoSalvarExecute(Sender: TObject);
    procedure pgcFiltroChange(Sender: TObject);
    procedure FaturasAfterPost(DataSet: TDataSet);
    procedure actSalvarPedidoExecute(Sender: TObject);
    procedure actSalvarFaturasExecute(Sender: TObject);
    procedure dbgProdutosPedidosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbcClientesClick(Sender: TObject);
    procedure edNumPedIntercomKeyPress(Sender: TObject; var Key: Char);
    procedure ProdutosFaturacod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure JvDBGridFooter1Calculate(Sender: TJvDBGridFooter;
      const FieldName: String; var CalcValue: Variant);
    procedure ProdutosFaturaCalcFields(DataSet: TDataSet);
    procedure gfFaturasCalculate(Sender: TJvDBGridFooter;
      const FieldName: String; var CalcValue: Variant);
    procedure FaturasAfterOpen(DataSet: TDataSet);
    function GetCondicaoVenda(Cod: integer): String;
    function GetDenPorto(Cod: integer): String;
    procedure FaturasCalcFields(DataSet: TDataSet);
    procedure act_F7Execute(Sender: TObject);
    procedure AgruparEmbarques(DataSet: TDataSet; Grade: TDBGrid; Remove:boolean = False);
    procedure btnAgruparPedidosClick(Sender: TObject);
    procedure dbgPedidosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnDesagruparPedidosClick(Sender: TObject);
    procedure dbgFaturasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edBuscaCodigo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaDesc1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAgruparFaturasClick(Sender: TObject);
    procedure btnDesagruparFaturasClick(Sender: TObject);

    procedure sgPagPedidoInit;
    procedure sgPagPedidoPedido;
    procedure sgPagPedidoPagAdiantados;
    procedure sgPagPedidoFaturas;
    procedure dbgPedidosCellClick(Column: TColumn);

    procedure sgPagFaturaInit;
    procedure sgPagFaturaPagamentos;
    procedure dbgFaturasCellClick(Column: TColumn);
  private
    { Private declarations }
    procedure Set_Value;
  public
    { Public declarations }
  end;

Const
  Cores:  array[0..17] of TColor  = (clWindow, clLime, clYellow, clFuchsia, clAqua, clMoneyGreen, clSkyBlue, clMedGray, clSilver,
                                     clMaroon, clGreen, clOlive, clNavy, clPurple, clTeal, clGray, clRed, clBlue);

var
  fr_Filtro: Tfr_Filtro;
  Ant : String;
  v1, v2, v3, v4, p1, p2, p3, p4, p5, p6, t1, t2 : Double;
  vt, ve, vf, vfe, vp, vpe : double;
  Cf, Cc :  double;
  q1, q2, q3, q4, q5 :double;
  LinPgAd, LinFat : integer;

  { bookmarks para tabelas }
  bkPedidos, bkFaturas, bkPedidoProdutos : TBookmark;

implementation

uses unConnection, SigIMP01_006, UnMenuCompl, SigIMP01_007, SigIMP01_045,
  Math;

{$R *.dfm}
procedure Tfr_Filtro.SalvarMarcadores;
begin
  { salvar a posição dos ponteiros nas tabelas  }
  bkPedidos := Pedidos.GetBookmark;
  bkFaturas := Faturas.GetBookmark;
  bkPedidoProdutos := PedidoProdutos.GetBookmark;
end;

procedure Tfr_Filtro.RetornarMarcadores;
begin
  { retornar a posição dos ponteiros nas tabelas }
  if Assigned(bkPedidos) then
  begin
  try
    Pedidos.GotoBookmark(bkPedidos);
    Pedidos.FreeBookmark(bkPedidos);
    bkPedidos := nil;
  except
    bkPedidos := nil;
  end;
  end;
  if Assigned(bkFaturas) then
  begin
  try
    Faturas.GotoBookmark(bkFaturas);
    Faturas.FreeBookmark(bkFaturas);
    bkFaturas := nil;
  except
    bkFaturas := nil;
  end;
  end;
  if Assigned(bkPedidoProdutos) then
  begin
  try
    PedidoProdutos.GotoBookmark(bkPedidoProdutos);
    PedidoProdutos.FreeBookmark(bkPedidoProdutos);
    bkPedidoProdutos := nil;
  except
    bkPedidoProdutos := nil;
  end;
  end;
end;


procedure Tfr_Filtro.LerPedidos;
begin
  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select                                                                                ');
    SQL.Add('        a."cod_empresa",                                                              ');
    SQL.Add('        a."num_pedido",                                                               ');
    SQL.Add('        a."cod_cliente",                                                              ');
    SQL.Add('        a."dat_emissao",                                                              ');
    SQL.Add('        a."dat_entrega",                                                              ');
    SQL.Add('        a."dat_cadastro",                                                             ');
    SQL.Add('        a."dat_liberacao",                                                            ');
    SQL.Add('        a."cor_embarque",                                                             ');    
    SQL.Add('        b."cod_cond_venda",                                                           ');
    SQL.Add('        b."cod_porto_emb",                                                            ');
    SQL.Add('        b."cod_porto_des",                                                            ');
    SQL.Add('        a."dat_embalagem",                                                            ');
    SQL.Add('        a."dat_ctn_marks",                                                            ');
    SQL.Add('   b."pes_bruto", b."vol_total", a."terms_payment",  a."txt_observacao",              ');
    SQL.Add('   a."vlr_bruto", a."vlr_liquido", a."vlr_bruto_esp", a."vlr_liquido_esp",            ');
    SQL.Add('   b."num_pedido_cli", b."num_pedido_for", b."cod_fornecedor", c."raz_social_reduz",  ');
    SQL.Add('   a."dat_vertratadm", a."ies_li", a."dat_verli", a."ies_preco_esp"                   ');
    SQL.Add(' from "pedido" a, "pedido_complemento" b, "fornecedor" c                              ');
    SQL.Add(' where                                                                                ');
    SQL.Add('       a."cod_empresa" = :"cod_empresa"                                               ');

    if (trim(edNumPedIntercom.Text) = '') and
       (trim(edNumPedido.Text) = '') and
       (trim(edNumConfirmacao.Text) = '') and
       (Trim(edNumFatura.Text) = '') and
       (Trim(edNumLote.Text) = '') and
       (dbcClientes.Value = '0') and
       (dbcFornecedores.Value = '0') then
    begin
      SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano');
      ParamByName('ano').AsString := seAno.Text;
    end;

    if (trim(edNumPedIntercom.Text) <> '') then
    begin
      SQL.Add('   and a."num_pedido" = :"num_pedido"                                         ');
      ParamByName('num_pedido').AsString := trim(edNumPedIntercom.Text);
    end else if (trim(edNumPedido.Text) <> '') then
    begin
      SQL.Add('   and b."num_pedido_cli" = :"num_pedido_cli"                                         ');
      ParamByName('num_pedido_cli').AsString := trim(edNumPedido.Text);
    end else if (trim(edNumConfirmacao.Text) <> '') then
    begin
      SQL.Add('   and b."num_pedido_for" = :"num_pedido_for"                                         ');
      ParamByName('num_pedido_for').AsString := trim(edNumConfirmacao.Text);
    end else if (Trim(edNumFatura.Text) <> '') then
    begin
      SQL.Add('   and exists (select * from "nf_saida_complemento" f, "nota_fiscal_saida_produto" p      ');
      SQL.Add('                where                                                                     ');
      SQL.Add('                      f."cod_empresa" = a."cod_empresa"                                   ');
      SQL.Add('                  and f."num_fatura" = :"num_fatura"                                      ');
      SQL.Add('                  and p."num_pedido"  = a."num_pedido"                                    ');
      SQL.Add('                  and p."cod_empresa" = f."cod_empresa"                                   ');
      SQL.Add('                  and p."num_nota_fiscal" = f."num_nota_fiscal"                           ');
      SQL.Add('                  and p."serie" = f."serie")                                              ');
      ParamByName('num_fatura').AsString := Trim(edNumFatura.Text);
    end else if (Trim(edNumLote.Text) <> '') then
    begin
      SQL.Add('   and exists (select * from "nf_saida_complemento" f, "nota_fiscal_saida_produto" p      ');
      SQL.Add('                where                                                                     ');
      SQL.Add('                      f."cod_empresa" = a."cod_empresa"                                   ');
      SQL.Add('                  and f."num_ref_volume" = :"num_ref_volume"                              ');
      SQL.Add('                  and p."num_pedido"  = a."num_pedido"                                    ');
      SQL.Add('                  and p."cod_empresa" = f."cod_empresa"                                   ');
      SQL.Add('                  and p."num_nota_fiscal" = f."num_nota_fiscal"                           ');
      SQL.Add('                  and p."serie" = f."serie")                                              ');
      ParamByName('num_ref_volume').AsString := Trim(edNumLote.Text);
    end else
    begin
      if (dbcClientes.Value <> '0') then
      begin
        SQL.Add('   and a."cod_cliente" = :"cod_cliente"                                               ');
        ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
      end;
      if (dbcFornecedores.Value <> '0') then
      begin
        SQL.Add('   and b."cod_fornecedor" = :"cod_fornecedor"                                         ');
        ParamByName('cod_fornecedor').AsString := Fornecedorescod_fornecedor.AsString;
      end;
    end;

    if ((dbcClientes.Value <> '0') or (dbcFornecedores.Value <> '0')) then
    begin
        SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano');
        ParamByName('ano').AsString := seAno.Text;
    end;

    SQL.Add('   and b."cod_empresa" = a."cod_empresa"                                              ');
    SQL.Add('   and b."num_pedido" = a."num_pedido"                                                ');
    SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"                                        ');
    SQL.Add(' order by a."dat_emissao" descending ');

    SQL.SaveToFile('C:\SIG\pedidos.sql');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
end;

procedure Tfr_Filtro.LerFaturas;
begin
  with Faturas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select                                                                           ');
    SQL.Add('  a."cod_empresa",a."num_nota_fiscal",a."serie",a."cod_cliente",                 ');
    SQL.Add('  a."dat_emissao",a."dat_liquidacao",a."dat_cadastro",a."ies_situacao",          ');
    SQL.Add('  a."vlr_bruto", a."vlr_bruto_esp", a."vlr_liquido",a."vlr_liquido_esp",         ');
    SQL.Add('  b."pes_bru_geral",b."pes_liq_geral", a."dat_embarque", b."cod_cond_venda",     ');
    SQL.Add('  b."cod_cond_venda", b."cod_porto_emb", b."cod_porto_dest",                     ');
    SQL.Add('  a."dat_env_originais", a."dat_rec_originais", a."dat_coleta", a."dat_eda_br",  ');
    SQL.Add('  b."vol_geral",b."qtd_caixas", b."qtd_pallets", b."num_ref_volume",             ');
    SQL.Add('  b."num_fatura", c."cod_fornecedor",c."raz_social_reduz", a."txt_observacao",   ');
    SQL.Add('  a."vlr_comissao_f" + sig_nvl(a."overprice_com_f") "vlr_comissao_f",            ');
    SQL.Add('  a."dat_pgto_comis_f", a."dat_vertratadm", a."ies_li", a."dat_verli",           ');
    SQL.Add('  a."vlr_comissao_c" + sig_nvl(a."overprice_com_c") "vlr_comissao_c",            ');
    SQL.Add('  a."dat_pgto_comis_c", a."dat_acerto_com", a."dat_acerto_com", a."cor_embarque",');
    SQL.Add('  a."dat_fotos", a."dat_instBL", a."dat_mod_doc", a."dat_env_bl", a."dat_rec_bl",');
    SQL.Add('  a."dat_pl_des", a."dat_apro_bl", a."ies_preco_esp"                             ');
    SQL.Add('  from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c           ');
    SQL.Add(' where                                                                           ');
    SQL.Add('       a."cod_empresa"      = :cod_empresa                                       ');
    SQL.Add('   and b."cod_empresa"      = a."cod_empresa"                                    ');
    SQL.Add('   and b."num_nota_fiscal"  = a."num_nota_fiscal"                                ');
    SQL.Add('   and b."serie"            = a."serie"                                          ');
    SQL.Add('   and c."cod_fornecedor"   = b."cod_fornecedor"                                 ');

    if (trim(edNumPedIntercom.Text) = '') and
       (trim(edNumPedido.Text) = '') and
       (trim(edNumConfirmacao.Text) = '') and
       (Trim(edNumFatura.Text) = '') and
       (Trim(edNumLote.Text) = '') and
       (dbcClientes.Value = '0') and
       (dbcFornecedores.Value = '0') then
    begin
      SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano');
      ParamByName('ano').AsString := seAno.Text;
    end;

    if Trim(edNumFatura.Text) <> '' then
    begin
      SQL.Add('   and b."num_fatura"       = :num_fatura');
      ParamByName('num_fatura').AsString := Trim(edNumFatura.Text);
    end else if Trim(edNumLote.Text) <> '' then
    begin
      SQL.Add('   and b."num_ref_volume"       = :num_ref_volume');
      ParamByName('num_ref_volume').AsString := Trim(edNumLote.Text);
    end else
    begin
      if (dbcClientes.Value <> '0') then
      begin
        SQL.Add('   and a."cod_cliente" = :"cod_cliente"                                               ');
        ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
      end;
      if (dbcFornecedores.Value <> '0') then
      begin
        SQL.Add('   and b."cod_fornecedor" = :"cod_fornecedor"                                         ');
        ParamByName('cod_fornecedor').AsString := Fornecedorescod_fornecedor.AsString;
      end;
    end;

    if (trim(edNumPedido.Text) <> '') or (trim(edNumConfirmacao.Text) <> '') or (trim(edNumPedIntercom.Text) <> '') then
    begin
      SQL.Add('   and exists (select * from "nota_fiscal_saida_produto" d            ');
      SQL.Add('                where d."cod_empresa" = a."cod_empresa"               ');
      SQL.Add('                  and d."num_nota_fiscal" = a."num_nota_fiscal"       ');
      SQL.Add('                  and d."serie" = a."serie"                           ');
      SQL.Add('                  and d."num_pedido" = :num_pedido)                   ');
      ParamByName('num_pedido').AsFloat := Pedidosnum_pedido.AsLargeInt;
    end;

    if ((dbcClientes.Value <> '0') or (dbcFornecedores.Value <> '0')) then
    begin
        SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano');
        ParamByName('ano').AsString := seAno.Text;
    end;
    SQL.Add('order by a."dat_emissao" descending ');

    SQL.SaveToFile('C:\SIG\faturas.sql');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;

    Open;
  end;
  FaturasAfterScroll(Faturas);
end;


procedure Tfr_Filtro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if Pedidos.State in [dsEdit] then
      Pedidos.Post;
   if Faturas.State in [dsEdit] then
      Faturas.Post;

   Clientes.Close;
   Fornecedores.Close;
   Pedidos.Close;
   Faturas.Close;
   PedidoProdutos.Close;
   TotalPedidoProdutos.Close;
   Grupos.Close;

   fr_Filtro := nil;
   Action    := caFree;
end;

procedure Tfr_Filtro.actPedido_OpenExecute(Sender: TObject);
begin
  SalvarMarcadores;
	if Not(Pedidos.IsEmpty) then
   	if CriarForm(Tfr_ManPedido, fr_ManPedido, False, False) then
	  	   fr_ManPedido.Open_Pedido(Pedidosnum_pedido.AsLargeInt, Pedidoscod_cliente.AsString);
end;

procedure Tfr_Filtro.actNF_OpenExecute(Sender: TObject);
begin
  SalvarMarcadores;
	if Not(Faturas.IsEmpty) then
  	if CriarForm(Tfr_ManNF, fr_ManNF, False, False) then
        fr_ManNF.Open_NF(Faturasnum_nota_fiscal.AsInteger, Faturasserie.AsString, Faturascod_cliente.AsString,1);
end;

procedure Tfr_Filtro.actNF_InsertExecute(Sender: TObject);
begin
 	if CriarForm(Tfr_ManNF, fr_ManNF, False, False) then
   	fr_ManNF.Insert_NF(Clientescod_cliente.AsString);
end;

procedure Tfr_Filtro.actPedido_InsertExecute(Sender: TObject);
begin
	if CriarForm(Tfr_ManPedido, fr_ManPedido, False, False) then
 	   fr_ManPedido.Insert_Pedido(Clientescod_cliente.AsString);
end;

procedure Tfr_Filtro.act_F5Execute(Sender: TObject);
begin
   pgcFiltro.ActivePage := tbsPedido;
   gbComentarioPed.Visible := True;
   gbComentarioPed.Align := alClient;
   gbComentarioFat.Visible := False;
   gbComentarioFat.Align := alBottom;
end;

procedure Tfr_Filtro.act_F6Execute(Sender: TObject);
begin
   pgcFiltro.ActivePage := tbsNF;
   gbComentarioFat.Visible := True;
   gbComentarioFat.Align := alClient;
   gbComentarioPed.Visible := False;
   gbComentarioPed.Align := alBottom;
end;

procedure Tfr_Filtro.Set_Value;
begin
  { Clientes e Fornecedores para os combos do Filtro }
  with Clientes do
  begin
    Close;
    Open;
  end;
  with Fornecedores do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    Open;
  end;
end;

procedure Tfr_Filtro.FormShow(Sender: TObject);
begin
  Set_Value;
  pgcFiltroChange(nil);

  { Width: Por causa de um bug neste grid arrombado }
  dbgPedidos.Columns[0].Width := 55;  // cliente
  dbgPedidos.Columns[1].Width := 75;  // Fornecedor
  dbgPedidos.Columns[2].Width := 75;  // Order
  dbgPedidos.Columns[3].Width := 60;  // Data
  dbgPedidos.Columns[4].Width := 75;  // Proforma
  dbgPedidos.Columns[5].Width := 60;  // Data
  dbgPedidos.Columns[6].Width := 65;  // Prev Pront
  dbgPedidos.Columns[7].Width := 60;  // VTA
  dbgPedidos.Columns[8].Width := 18;  // LI
  dbgPedidos.Columns[9].Width := 60;  // VLI
  dbgPedidos.Columns[10].Width := 66; // Ctn.Marks
  dbgPedidos.Columns[11].Width := 66; // Embalagem
  dbgPedidos.Columns[12].Width := 60; // Produtos
  dbgPedidos.Columns[13].Width := 60; // Condição Pgto
  dbgPedidos.Columns[14].Width := 65; // Incoterms
  dbgPedidos.Columns[15].Width := 52; // Porto Emb
  dbgPedidos.Columns[16].Width := 52; // Porto Dest
  dbgPedidos.Columns[17].Width := 78; // Tot Real B
  dbgPedidos.Columns[18].Width := 78; // Tot Esp L
  dbgPedidos.Columns[19].Width := 69; // Pes Bru
  dbgPedidos.Columns[20].Width := 56; // Vol Tot
  dbgPedidos.Columns[21].Width := 74; // Pend Real
  dbgPedidos.Columns[22].Width := 74; // Pend Esp
  dbgPedidos.Columns[23].Width := 69; // Pes Bru Pend
  dbgPedidos.Columns[24].Width := 56; // Vol Pend

  { Faturas }
  dbgFaturas.Columns[0].Width := 60;  // cliente
  dbgFaturas.Columns[1].Width := 80;  // Fornecedor
  dbgFaturas.Columns[2].Width := 60;  // Data
  dbgFaturas.Columns[3].Width := 80;  // Invoice
  dbgFaturas.Columns[4].Width := 60;  // VTA
  dbgFaturas.Columns[5].Width := 18;  // LI
  dbgFaturas.Columns[6].Width := 60;  // Venc LI
  dbgFaturas.Columns[7].Width := 80;  // Lote
  dbgFaturas.Columns[8].Width := 52;  // Pto Emb
  dbgFaturas.Columns[9].Width := 52;  // Pto Des
  dbgFaturas.Columns[10].Width := 60; // Inst BL
  dbgFaturas.Columns[11].Width := 60; // Apro BL
  dbgFaturas.Columns[12].Width := 60; // Mod.Doc
  dbgFaturas.Columns[13].Width := 60; // Fotos
  dbgFaturas.Columns[14].Width := 60; // Liquida
  dbgFaturas.Columns[15].Width := 60; // Prv Emb
  dbgFaturas.Columns[16].Width := 60; // Embarque
  dbgFaturas.Columns[17].Width := 60; // ETA BRA
  dbgFaturas.Columns[18].Width := 60; // I/PL DES
  dbgFaturas.Columns[19].Width := 60; // Env I/PL
  dbgFaturas.Columns[20].Width := 60; // Rec I/PL
  dbgFaturas.Columns[21].Width := 60; // Env B/L
  dbgFaturas.Columns[22].Width := 60; // Rec B/L
  dbgFaturas.Columns[23].Width := 74; // Total Real
  dbgFaturas.Columns[24].Width := 74; // Total Esp
  dbgFaturas.Columns[25].Width := 69; // Pes Bru
  dbgFaturas.Columns[26].Width := 69; // Pes Liq
  dbgFaturas.Columns[27].Width := 56; // Vol To
  dbgFaturas.Columns[28].Width := 45; // Caixas
  dbgFaturas.Columns[29].Width := 52; // Pallets


  { Inicializar sgPagPedido e sgPagFatura }
  sgPagPedidoInit;
  sgPagFaturaInit;
end;

function Tfr_Filtro.TotalPedidos:TTotalPedidos;
begin
  Result.Total := 0;
  Result.TotalEsp := 0;
  Result.Faturado := 0;
  Result.FaturadoEsp := 0;
  Result.Pendente := 0;
  Result.PendenteEsp := 0;
  with Pedidos do
  begin
    DisableControls;
    First;
    While not(EOF) do
    begin
      Result.Total       := Result.Total + Pedidosvlr_liquido.AsFloat;
      Result.TotalEsp    := Result.TotalEsp + Pedidosvlr_liquido_esp.AsFloat;
      Result.Faturado    := Result.Faturado + PedidoscalVlrFaturado.AsFloat;
      Result.FaturadoEsp := Result.FaturadoEsp + PedidoscalVlrFaturadoEsp.AsFloat;
      Result.Pendente    := Result.Pendente + PedidoscalVlrPendente.AsFloat;
      Result.PendenteEsp := Result.PendenteEsp + PedidoscalVlrPendenteEsp.AsFloat;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure Tfr_Filtro.act_FiltrarExecute(Sender: TObject);
begin
  { 12-jul-2008 }
  { permite consultar sem a necessidade de informar algum campo, somente com o campo do Ano deverá ser informado, }
  { mas este será iniciado com o ano corrente como default                                                        }
  sgPagPedidoInit;
  sgPagFaturaInit;

  try
  LerPedidos;
  except
  end;

  try
  LerFaturas;
  except
  end;

  try
  RetornarMarcadores;
  except
  end;

end;

procedure Tfr_Filtro.dbgPedidosDblClick(Sender: TObject);
begin
  actPedido_Open.Execute;
end;

procedure Tfr_Filtro.dbgFaturasDblClick(Sender: TObject);
begin
	actNF_Open.Execute;
end;

procedure Tfr_Filtro.FaturasAfterScroll(DataSet: TDataSet);
begin
  with ProdutosFatura do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := Faturascod_empresa.AsInteger;
    ParamByName('num_nota_fiscal').AsInteger := Faturasnum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := Faturasserie.AsString;
    Open;
  end;
end;

procedure Tfr_Filtro.Faturasies_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  { checar quando a NF é a origem, pois sua ies_situacao não está 'D' }
	if not Sender.IsNull then
  begin
    if Sender.AsString[1] = 'N' then
      Text := 'Aberta'
    else
    if Sender.AsString[1] = 'F' then
      Text := 'Fechada'
    else
    if Sender.AsString[1] = 'C' then
      Text := 'Cancelada'
    else
    if Sender.AsString[1] = 'S' then
      Text := 'Simulação'
    else
    if Sender.AsString[1] = 'L' then
      Text := 'Liquidada'
	end;
end;

procedure Tfr_Filtro.PedidosAfterScroll(DataSet: TDataSet);
begin
  { Totais dos Pedidos Produtos }
  with TotalPedidoProdutos do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
    Open;
  end;
  { Produtos do Pedido }
  with PedidoProdutos do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
    Open;
  end;
end;

procedure Tfr_Filtro.FormCreate(Sender: TObject);
begin
  seAno.Value :=  YearOf(Buscar_DateTime);
  pgcFiltro.ActivePage := tbsPedido;
  Pedidosvol_total.DisplayFormat := VolumeNumberFormat_fmt;
  PedidoscalVolTotal.DisplayFormat := VolumeNumberFormat_fmt;

  Faturasvol_total.DisplayFormat := VolumeNumberFormat_fmt;
end;

procedure Tfr_Filtro.PedidosAfterPost(DataSet: TDataSet);
begin
	with TIBQuery(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_Filtro.ds_PedidosStateChange(Sender: TObject);
begin
  btnSalvarPedido.Enabled := Pedidos.State in [dsEdit];
end;

procedure Tfr_Filtro.PedidosCalcFields(DataSet: TDataSet);
Var
  s : String;
begin
  if Pedidosnum_pedido.IsNull then Exit;
  if Pedidos.State in [dsEdit] then Exit;

  { obter o saldo pendente do pedido }
  with cby_pedido_pendentes do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').AsFloat := DataSet.FieldByName('num_pedido').Value;
    Open;
    DataSet.FieldByName('calVlrPendente').AsFloat := FieldByName('vlr_total').AsFloat;
    DataSet.FieldByName('calVlrPendenteEsp').AsFloat := FieldByName('vlr_total_esp').AsFloat;
    DataSet.FieldByName('calPesBruto').AsFloat := FieldByName('pes_bruto').AsFloat;
    DataSet.FieldByName('calVolTotal').AsFloat := FieldByName('volume').AsFloat;
  end;

  { Grupos de Produtos }
  s := '';
  with Grupos do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').AsFloat := Pedidosnum_pedido.AsLargeInt;
    Open;
    while Not(EOF) do
    begin
      s := s + trim(FieldByName('den_tip_produto').AsString);
      Next;
      if Not(EOF) then s := s + ', ';
    end;
    if trim(s) <> '' then
       s := s + '.';
    Close;
  end;
  DataSet.FieldByName('grupo').AsString := s;

  { Condição de Venda }
  DataSet.FieldByName('den_tip_condicao').AsString := GetCondicaoVenda(DataSet.FieldByName('cod_cond_venda').AsInteger);

  { Porto Embarque }
  DataSet.FieldByName('porto_emb').AsString := GetDenPorto(DataSet.FieldByName('cod_porto_emb').AsInteger);
  { Porto Destino }
  DataSet.FieldByName('porto_dest').AsString := GetDenPorto(DataSet.FieldByName('cod_porto_des').AsInteger);
end;

procedure Tfr_Filtro.Panel3Enter(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfr_Filtro.Panel3Exit(Sender: TObject);
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
end;

procedure Tfr_Filtro.edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);


  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    PedidoProdutos.DisableControls;
    if Des <> Ant then
    begin
       PedidoProdutos.First;
       Ant := Des;
    end
    else
       PedidoProdutos.Next;
    while not(PedidoProdutos.EOF) do
    begin
      s := PedidoProdutos.FieldByName('cod_produto').AsString;
      if Pos(Des, s) > 0 then
      begin
        PedidoProdutos.EnableControls;
        Exit;
      end;
      PedidoProdutos.Next;
    end;
    if (PedidoProdutos.Eof) then PedidoProdutos.First;
    PedidoProdutos.EnableControls;
  end;

begin
  { busca rápida por código do produto }
  if (Key = VK_RETURN) then
  begin
    if Not(PedidoProdutos.IsEmpty) then
       Localizar(trim(SemFmtProduto(Pedidoscod_cliente.AsString, edBuscaCodigo.Text)));

    if trim(edBuscaCodigo.Text) <> '' then
    begin
      edBuscaCodigo.SetFocus;
      edBuscaCodigo.SelLength := 0;
      edBuscaCodigo.SelStart := Length(trim(edBuscaCodigo.Text));
    end;
  end;
end;                                                                   

procedure Tfr_Filtro.edBuscaDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    PedidoProdutos.DisableControls;
    if Des <> Ant then
    begin
       PedidoProdutos.First;
       Ant := Des;
    end
    else
       PedidoProdutos.Next;
    while not(PedidoProdutos.EOF) do
    begin
      s := PedidoProdutos.FieldByName('calDenPortugues').AsString;
      if Pos(Des, s) > 0 then
      begin
        PedidoProdutos.EnableControls;
        Exit;
      end;
      PedidoProdutos.Next;
    end;
    if (PedidoProdutos.Eof) then PedidoProdutos.First;    
    PedidoProdutos.EnableControls;
  end;

begin
  { buscar pela descrição em português }
  if (Key = VK_RETURN) then
  begin
    if Not(PedidoProdutos.IsEmpty) then
       Localizar(trim(edBuscaDesc.Text));

    if trim(edBuscaDesc.Text) <> '' then
    begin
      edBuscaDesc.SetFocus;
      edBuscaDesc.SelLength := 0;
      edBuscaDesc.SelStart := Length(trim(edBuscaDesc.Text));
    end;
  end;
end;

procedure Tfr_Filtro.PedidoProdutoscod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '' then Exit;

  with FmtProdutoCliente(Pedidoscod_cliente.AsString, Sender.AsString) do
    Text := fmtProduto;
end;

procedure Tfr_Filtro.act_F4Execute(Sender: TObject);
begin
  { permitir abrir Pedidos e Faturas, usando a tecla F4            }
  { abre a tela correspondente a aba selecionada (Pedido ou Fatura) }
  { e conforme a grade que estiver em foco                                    }
  if pgcFiltro.ActivePage = tbsPedido then
  begin
    if dbgPedidos.Focused then actPedido_OpenExecute(Sender);
  end;

  if pgcFiltro.ActivePage = tbsNF then
  begin
    if dbgFaturas.Focused then actNF_OpenExecute(Sender);
  end;

  if pgcFiltro.ActivePage = tbsComissao then
  begin
    if dbgComissoes.Focused then actNF_OpenExecute(Sender);
  end;
end;

procedure Tfr_Filtro.PedidoProdutosCalcFields(DataSet: TDataSet);
begin
  with ProdutoDet(DataSet.FieldByName('cod_produto').AsString, Pedidoscod_cliente.AsString, Pedidoscod_fornecedor.AsInteger) do
  begin
    DataSet.FieldByName('calDenPortugues').AsString := Portugues;
    DataSet.FieldByName('calDenIngles').AsString := Ingles;
  end;
end;

procedure Tfr_Filtro.gfProdutosPedidosCalculate(Sender: TJvDBGridFooter;
  const FieldName: String; var CalcValue: Variant);
begin
  if PedidoProdutos.Active then
  begin
     if (FieldName = 'vlr_pedido') then
       CalcValue := FormatFloat('###,##0.00', Pedidos.FieldByName('vlr_bruto').AsFloat)
     else if (FieldName = 'vlr_pedido_esp') then
       CalcValue := FormatFloat('###,##0.00', Pedidos.FieldByName('vlr_liquido_esp').AsFloat)
     else if (FieldName = 'vlr_fatura') then
       CalcValue := FormatFloat('###,##0.00', TotalPedidoProdutosvlr_total_fatura.AsFloat)
     else if (FieldName = 'vlr_fatura_esp') then
       CalcValue := FormatFloat('###,##0.00', TotalPedidoProdutosvlr_total_fat_esp.AsFloat)
     else if (FieldName = 'vlr_pendente') then
       CalcValue := FormatFloat('###,##0.00', Pedidos.FieldByName('calVlrPendente').AsFloat)
     else if (FieldName = 'vlr_pendente_esp') then
       CalcValue := FormatFloat('###,##0.00', Pedidos.FieldByName('calVlrPendenteEsp').AsFloat)
     else if (FieldName = 'pes_bruto') then
       CalcValue := FormatFloat('###,##0.00', Pedidos.FieldByName('calPesBruto').AsFloat)
     else if (FieldName = 'volume') then
       CalcValue := FormatFloat('###,##0.00', Pedidos.FieldByName('calVolTotal').AsFloat)
  end;
end;

procedure Tfr_Filtro.gfPedidoCalculate(Sender: TJvDBGridFooter;
  const FieldName: String; var CalcValue: Variant);
begin
   if Pedidos.Active then
   begin
     if FieldName = 'vlr_bruto' then
       CalcValue := FormatFloat('###,##0.00', vt)
     else if FieldName = 'vlr_liquido_esp' then
       CalcValue := FormatFloat('###,##0.00', ve)
     else if FieldName = 'calVlrFaturado' then
       CalcValue := FormatFloat('###,##0.00', vf)
     else if FieldName = 'calVlrFaturadoEsp' then
       CalcValue := FormatFloat('###,##0.00', vfe)
     else if FieldName = 'calVlrPendente' then
       CalcValue := FormatFloat('###,##0.00', vp)
     else if FieldName = 'calVlrPendenteEsp' then
       CalcValue := FormatFloat('###,##0.00', vpe);
   end;
end;

procedure Tfr_Filtro.PedidosAfterOpen(DataSet: TDataSet);
begin
  vt := 0;
  ve := 0;
  vf := 0;
  vfe := 0;
  vp := 0;
  vpe := 0;

  with Pedidos do
  begin
    DisableControls;
    First;
    While not(EOF) do
    begin
      vt  := vt + Pedidosvlr_bruto.AsFloat;
      ve  := ve + Pedidosvlr_liquido_esp.AsFloat;
      vf  := vf + PedidoscalVlrFaturado.AsFloat;
      vfe := vfe + PedidoscalVlrFaturadoEsp.AsFloat;
      vp  := vp + PedidoscalVlrPendente.AsFloat;
      vpe := vpe + PedidoscalVlrPendenteEsp.AsFloat;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure Tfr_Filtro.actPedidoSalvarExecute(Sender: TObject);
begin
  Pedidos.Post;
end;

procedure Tfr_Filtro.pgcFiltroChange(Sender: TObject);
begin
  if pgcFiltro.ActivePage = tbsPedido then
  begin
    gbComentarioPed.Visible := True;
    gbComentarioPed.Align := alClient;
    gbComentarioFat.Visible := False;
    gbComentarioFat.Align := alBottom;
  end;
  if pgcFiltro.ActivePage = tbsNF then
  begin
    gbComentarioFat.Visible := True;
    gbComentarioFat.Align := alClient;
    gbComentarioPed.Visible := False;
    gbComentarioPed.Align := alBottom;
  end;
  if pgcFiltro.ActivePage = tbsComissao then
  begin
    gbComentarioFat.Visible := True;
    gbComentarioFat.Align := alClient;
    gbComentarioPed.Visible := False;
    gbComentarioPed.Align := alBottom;
  end;
end;

procedure Tfr_Filtro.FaturasAfterPost(DataSet: TDataSet);
begin
	with TIBQuery(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_Filtro.actSalvarPedidoExecute(Sender: TObject);
begin
   if Pedidos.State in [dsEdit] then
      Pedidos.Post;
end;

procedure Tfr_Filtro.actSalvarFaturasExecute(Sender: TObject);
begin
  if Faturas.State in [dsEdit] then
     Faturas.Post;
end;

procedure Tfr_Filtro.dbgProdutosPedidosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.Index in [9..13]) then
  begin
    if trim(PedidoProdutosnum_fatura.AsString) = '' then
       TDBGrid(Sender).Canvas.Brush.Color:= clWhite
    else
    begin
       TDBGrid(Sender).Canvas.Brush.Color:= 8454143;
       if PedidoProdutosqtd_pendente.AsFloat > 0 then
          TDBGrid(Sender).Canvas.Brush.Color:= clSkyBlue;
    end;
      TDBGrid(Sender).Canvas.Font.Color:= clWindowText;
      TDBGrid(Sender).Canvas.FillRect(Rect);
      TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);           
  end;
end;

procedure Tfr_Filtro.dbcClientesClick(Sender: TObject);
begin
  { selecionar fornecedores do cliente }
  with Fornecedores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select a."raz_social_reduz",  a."cod_fornecedor"                ');
    SQL.Add('  from "fornecedor" a, "produto" b                              ');
    SQL.Add('  where                                                         ');
    SQL.Add('        b."cod_empresa" = :cod_empresa                          ');
    SQL.Add('    and b."cod_fornecedor" = a."cod_fornecedor"                 ');

    if (dbcClientes.Value <> '0') then
    begin
      SQL.Add('    and b."cod_cliente" = :cod_cliente                        ');
      ParamByName('cod_cliente').AsString := trim(Clientescod_cliente.AsString);
    end;

    SQL.Add('group by 1,2');
    SQL.Add('order by 1');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;

    Open;
  end;
  dbcFornecedores.KeyValue := 0;
end;

procedure Tfr_Filtro.edNumPedIntercomKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not(Key in ['0'..'9', #8]) then Key := #0;
end;

procedure Tfr_Filtro.ProdutosFaturacod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '' then Exit;

  with FmtProdutoCliente(Faturascod_cliente.AsString, Sender.AsString) do
    Text := fmtProduto;
end;

procedure Tfr_Filtro.JvDBGridFooter1Calculate(Sender: TJvDBGridFooter;
  const FieldName: String; var CalcValue: Variant);
begin
   if ProdutosFatura.Active then
   begin
     if FieldName = 'vlr_liquido' then
       CalcValue := FormatFloat('###,##0.00', Faturasvlr_liquido.AsFloat)
     else if FieldName = 'vlr_liquido_esp' then
       CalcValue := FormatFloat('###,##0.00', Faturasvlr_liquido_esp.AsFloat);
   end;
end;

procedure Tfr_Filtro.ProdutosFaturaCalcFields(DataSet: TDataSet);
begin
  with ProdutoDet(DataSet.FieldByName('cod_produto').AsString, Faturascod_cliente.AsString, Faturascod_fornecedor.AsInteger) do
  begin
    DataSet.FieldByName('calDenPortugues').AsString := Portugues;
    DataSet.FieldByName('calDenIngles').AsString := Ingles;
  end;

end;

procedure Tfr_Filtro.gfFaturasCalculate(Sender: TJvDBGridFooter;
  const FieldName: String; var CalcValue: Variant);
begin
   if Faturas.Active then
   begin
     if FieldName = 'vlr_liquido' then
       CalcValue := FormatFloat('###,##0.00', t1)
     else if FieldName = 'vlr_liquido_esp' then
       CalcValue := FormatFloat('###,##0.00', t2)
     else if FieldName = 'vlr_comissao_f' then
       CalcValue := FormatFloat('###,##0.00', Cf)
     else if FieldName = 'vlr_comissao_c' then
       CalcValue := FormatFloat('###,##0.00', Cc);
   end;
end;

procedure Tfr_Filtro.FaturasAfterOpen(DataSet: TDataSet);
begin
  t1 := 0;
  t2 := 0;

  Cf := 0;
  Cc := 0;

  with Faturas do
  begin
    Last;
    First;
    DisableControls;
    while Not(EOF) do
    begin
      t1 := t1 + FieldByName('vlr_liquido').AsFloat;
      t2 := t2 + FieldByName('vlr_liquido_esp').AsFloat;


      Cf := Cf + FieldByName('vlr_comissao_f').AsFloat;
      Cc := Cc + FieldByName('vlr_comissao_c').AsFloat;

      Next;
    end;
    EnableControls;
    First;
  end;
end;

function Tfr_Filtro.GetCondicaoVenda(Cod: integer): string;
begin
  With CondicaoVenda do
  begin
    Close;
    ParamByName('cod_tip_condicao').Value := Cod;
    Open;
    Result := trim(FieldByName('den_tip_condicao').AsString);
    Close;
  end;
end;

function Tfr_Filtro.GetDenPorto(Cod: integer): String;
begin
  With Portos do
  begin
    Close;
    ParamByName('cod_porto').Value := Cod;
    Open;
    Result := trim(FieldByName('den_porto').AsString);
    Close;
  end;
end;

procedure Tfr_Filtro.FaturasCalcFields(DataSet: TDataSet);
begin
  { Condição de Venda }
  DataSet.FieldByName('den_tip_condicao').AsString := GetCondicaoVenda(DataSet.FieldByName('cod_cond_venda').AsInteger);
  { Porto Embarque }
  DataSet.FieldByName('porto_emb').AsString := GetDenPorto(DataSet.FieldByName('cod_porto_emb').AsInteger);
  { Porto Destino }
  DataSet.FieldByName('porto_dest').AsString := GetDenPorto(DataSet.FieldByName('cod_porto_dest').AsInteger);
end;

procedure Tfr_Filtro.act_F7Execute(Sender: TObject);
begin
   pgcFiltro.ActivePage := tbsComissao;
   gbComentarioFat.Visible := True;
   gbComentarioFat.Align := alClient;
   gbComentarioPed.Visible := False;
   gbComentarioPed.Align := alBottom;
end;

procedure Tfr_Filtro.AgruparEmbarques(DataSet: TDataSet; Grade: TDBGrid; Remove: boolean = False);
var
  SavePlace: TBookmark;
  i, j, cor: Integer;
  t : TDateTime;

begin
  t := Now;
  SavePlace := DataSet.GetBookmark;
  DataSet.AfterScroll := nil;
  DataSet.AfterPost := nil;
  DataSet.OnCalcFields := nil;
  DataSet.DisableControls;
  { Somente se houver mais de uma linha selecionada }
  if Grade.SelectedRows.Count > 0 then
  begin
    if Not(Remove) then cor := dmCOM.CorEmbarque
                   else cor := 0;
    with Grade.DataSource.DataSet do
      for i := 0 to Grade.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(Grade.SelectedRows.Items[i]));
        DataSet.Edit;
        DataSet.FieldByName('cor_embarque').Value := cor;
        DataSet.Post;
      end;
  end;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
		Transaction.RollbackRetaining;
   end;
  DataSet.EnableControls;
  if (DataSet = Pedidos) then
  begin
    DataSet.AfterScroll := PedidosAfterScroll;
    DataSet.AfterPost := PedidosAfterPost;
    DataSet.OnCalcFields := PedidosCalcFields;
  end;
  if (DataSet = Faturas) then
  begin
    DataSet.AfterScroll := FaturasAfterScroll;
    DataSet.AfterPost := FaturasAfterPost;
    DataSet.OnCalcFields := FaturasCalcFields;
  end;
  DataSet.Refresh;
  //MessageDlg('Embarques Agrupados:'+TempoDecorrido(t) , mtInformation, [mbOk], 0);
end;

procedure Tfr_Filtro.btnAgruparPedidosClick(Sender: TObject);
begin
  AgruparEmbarques(Pedidos, dbgPedidos);
end;

procedure Tfr_Filtro.dbgPedidosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Pedidoscor_embarque.AsInteger > 0 then
   begin
      if Column.Index in [0..5] then
      begin
         dbgPedidos.Canvas.Brush.Color:= Cores[Pedidoscor_embarque.AsInteger];
         if Pedidoscor_embarque.AsInteger in [0..8] then
            dbgPedidos.Canvas.Font.Color:= clWindowText
         else
           dbgPedidos.Canvas.Font.Color:= clWindow;
         dbgPedidos.Canvas.FillRect(Rect);
         dbgPedidos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
   end;
end;


procedure Tfr_Filtro.btnDesagruparPedidosClick(Sender: TObject);
begin
  AgruparEmbarques(Pedidos, dbgPedidos, True);
end;

procedure Tfr_Filtro.dbgFaturasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Faturascor_embarque.AsInteger > 0 then
   begin
      if Column.Index in [0..7] then
      begin
         dbgFaturas.Canvas.Brush.Color:= Cores[Faturascor_embarque.AsInteger];
         if Faturascor_embarque.AsInteger in [0..8] then
            dbgFaturas.Canvas.Font.Color:= clWindowText
         else
           dbgFaturas.Canvas.Font.Color:= clWindow;
         dbgFaturas.Canvas.FillRect(Rect);
         dbgFaturas.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
   end;
end;

procedure Tfr_Filtro.edBuscaCodigo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    ProdutosFatura.DisableControls;
    if Des <> Ant then
    begin
       ProdutosFatura.First;
       Ant := Des;
    end
    else
       ProdutosFatura.Next;
    while not(ProdutosFatura.EOF) do
    begin
      s := ProdutosFatura.FieldByName('cod_produto').AsString;
      if Pos(Des, s) > 0 then
      begin
        ProdutosFatura.EnableControls;
        Exit;
      end;
      ProdutosFatura.Next;
    end;
    if (ProdutosFatura.Eof) then ProdutosFatura.First;
    ProdutosFatura.EnableControls;
  end;

begin
  { busca rápida por código do produto }
  if (Key = VK_RETURN) then
  begin
    if Not(ProdutosFatura.IsEmpty) then
       Localizar(trim(SemFmtProduto(Faturascod_cliente.AsString, edBuscaCodigo1.Text)));

    if trim(edBuscaCodigo1.Text) <> '' then
    begin
      edBuscaCodigo1.SetFocus;
      edBuscaCodigo1.SelLength := 0;
      edBuscaCodigo1.SelStart := Length(trim(edBuscaCodigo1.Text));
    end;
  end;
end;

procedure Tfr_Filtro.edBuscaDesc1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    ProdutosFatura.DisableControls;
    if Des <> Ant then
    begin
       ProdutosFatura.First;
       Ant := Des;
    end
    else
       ProdutosFatura.Next;
    while not(ProdutosFatura.EOF) do
    begin
      s := ProdutosFatura.FieldByName('calDenPortugues').AsString;
      if Pos(Des, s) > 0 then
      begin
        ProdutosFatura.EnableControls;
        Exit;
      end;
      ProdutosFatura.Next;
    end;
    if (ProdutosFatura.Eof) then ProdutosFatura.First;
    ProdutosFatura.EnableControls;
  end;

begin
  { buscar pela descrição em português }
  if (Key = VK_RETURN) then
  begin
    if Not(ProdutosFatura.IsEmpty) then
       Localizar(trim(edBuscaDesc1.Text));

    if trim(edBuscaDesc1.Text) <> '' then
    begin
      edBuscaDesc1.SetFocus;
      edBuscaDesc1.SelLength := 0;
      edBuscaDesc1.SelStart := Length(trim(edBuscaDesc1.Text));
    end;
  end;
end;

procedure Tfr_Filtro.btnAgruparFaturasClick(Sender: TObject);
begin
  AgruparEmbarques(Faturas, dbgFaturas);
end;

procedure Tfr_Filtro.btnDesagruparFaturasClick(Sender: TObject);
begin
  AgruparEmbarques(Faturas, dbgFaturas, true);
end;

procedure Tfr_Filtro.sgPagPedidoInit;
Var
  i, j : integer;
begin
  { Inicializar sgPagPedido }
  with sgPagPedido do
    for i := 0 to ColCount - 1 do
      for j := 0 to RowCount - 1 do
        begin
          Cells[i,j] := '';
        end;
  sgPagPedido.Cells[0,0] := 'Pedido/Proforma/Data';
  sgPagPedido.Cells[1,0] := 'Tot Produtos';
  sgPagPedido.Cells[2,0] := 'Cancelado';
  sgPagPedido.Cells[3,0] := 'Adicionais';
  sgPagPedido.Cells[4,0] := 'Descontos';
  sgPagPedido.Cells[5,0] := 'Adic/Desc Preços';
  sgPagPedido.Cells[6,0] := 'Valor Final';
  sgPagPedido.Cells[7,0] := 'Pagamentos Adiantados Pedido';
  sgPagPedido.Cells[8,0] := 'Faturas';
  sgPagPedido.Cells[9,0] := 'Pag Pendente nas Faturas';
  sgPagPedido.Cells[10,0] := 'Pag Efetuados nas Faturas';
  sgPagPedido.Cells[11,0] := 'Saldo a pagar nas Faturas';
  sgPagPedido.Cells[12,0] := 'Pendente de embarque';

  sgPagPedido.ColWidths[0] := 208;
  sgPagPedido.ColWidths[1] := 86;
  sgPagPedido.ColWidths[2] := 86;
  sgPagPedido.ColWidths[3] := 86;
  sgPagPedido.ColWidths[4] := 86;
  sgPagPedido.ColWidths[5] := 93;
  sgPagPedido.ColWidths[6] := 86;
  sgPagPedido.ColWidths[7] := 180;
  sgPagPedido.ColWidths[8] := 220;
  sgPagPedido.ColWidths[9] := 180;
  sgPagPedido.ColWidths[10] := 220;
  sgPagPedido.ColWidths[11] := 130;
  sgPagPedido.ColWidths[12] := 120;

  sgPagPedido.ClearSelection;

  q1 := 0.00;
  q2 := 0.00;
  q3 := 0.00;
  q4 := 0.00;
  q5 := 0.00;

end;

procedure Tfr_Filtro.sgPagPedidoPedido;
Var
  v : double;
begin
  with cby_pedido_faturados do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').AsFloat := Pedidosnum_pedido.AsLargeInt;
    Open;
  end;

  sgPagPedido.Cells[0,1] := trim(Pedidosnum_pedido_cli.AsString) + '/' + trim(Pedidosnum_pedido_for.AsString) + '/' + FormatDateTime('dd.mm.yy', Pedidosdat_emissao.AsDateTime);
  sgPagPedido.Cells[1,1] := FormatFloat('#,##0.00', cby_pedido_faturadosvlr_bruto.AsFloat);
  sgPagPedido.Cells[2,1] := FormatFloat('#,##0.00', cby_pedido_faturadosvlr_total_canc.AsFloat);
  sgPagPedido.Cells[3,1] := FormatFloat('#,##0.00', cby_pedido_faturadosvlr_adicional.AsFloat);
  sgPagPedido.Cells[4,1] := FormatFloat('#,##0.00', cby_pedido_faturadosvlr_desconto.AsFloat);
  sgPagPedido.Cells[5,1] := FormatFloat('#,##0.00;-#,##0.00', cby_pedido_faturadosvlr_bruto_esp.AsFloat-cby_pedido_faturadosvlr_bruto.AsFloat);
  sgPagPedido.Cells[6,1] := FormatFloat('#,##0.00', cby_pedido_faturadosvlr_bruto.AsFloat -
                                                     cby_pedido_faturadosvlr_total_canc.AsFloat +
                                                     cby_pedido_faturadosvlr_adicional.AsFloat -
                                                     cby_pedido_faturadosvlr_desconto.AsFloat +
                                                     (cby_pedido_faturadosvlr_bruto_esp.AsFloat-cby_pedido_faturadosvlr_bruto.AsFloat));

  if (Pedidosies_preco_esp.AsString = 'S') then v := cby_pedido_faturadosvlr_total_pend_esp.AsFloat
                                           else v := cby_pedido_faturadosvlr_total_pend.AsFloat;

  sgPagPedido.Cells[12,1] := FormatFloat('#,##0.00', v);


end;

procedure Tfr_filtro.sgPagPedidoPagAdiantados;
Var
   s : String;
   v : Double;
   l : integer;
begin
   s := '';
   l := 1;
   q1 := 0.00;
   with pedido_pagamento_ad do
   begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
      Open;
      while Not(EOF) do
      begin
        if (pedido_pagamento_adnum_nota_fiscal.IsNull) then
        begin

           s := FormatDateTime('DD.MM.YY', pedido_pagamento_addat_pagamento.AsDateTime);
           if (Pedidosies_preco_esp.AsString = 'S') then v := pedido_pagamento_advlr_pagamento_esp.AsFloat
                                                    else v := pedido_pagamento_advlr_pagamento.AsFloat;
           s := s + '/';
           s := s + FormatFloat('#,##0.00', v);

           sgPagPedido.Cells[7,l] := s;
           q1 := q1 + v;
        end;
        Next;
        Inc(l);
      end;
   end;
   LinPgAd := l;
end;

procedure Tfr_filtro.sgPagPedidoFaturas;
Var
   s : String;
   v : Double;
   l : integer;
   PgtoPendFat, PgtoEfetFat,  SaldoPagtoFat : double;
begin
    s := '';
    l := 1;
    q2 := 0.00;
    q3 := 0.00;
    q4 := 0.00;
    q5 := 0.00;
    with spr_faturas_pedido do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
      Open;
      while Not(EOF) do
      begin
        { Faturas }
        if (Pedidosies_preco_esp.AsString = 'S') then v := FieldByName('vlr_total_esp').AsFloat
                                                 else v := FieldByName('vlr_total').AsFloat;

        s := trim(FieldByName('num_fatura').AsString) + '/' + FormatDateTime('DD.MM.YY', FieldByName('dat_emissao').AsDateTime) +
             '/' + FormatFloat('#,##0.00', v);

        q2 := q2 + v;
        sgPagPedido.Cells[8,l] := s;

        s := '';
        { Pagamentos Pendentes nas Faturas }
        if (Pedidosies_preco_esp.AsString = 'S') then v := FieldByName('vlr_saldo_esp').AsFloat
                                                 else v := FieldByName('vlr_saldo').AsFloat;
        if v <= 0 then s := trim(FieldByName('num_fatura').AsString)
        else if v > 0 then  s := trim(FieldByName('num_fatura').AsString);

        s := s + '/';

        if v < 0 then s := s + FormatFloat('#,##0.00', v*-1) // mostrar apenas Saldo devedor
        else if v >= 0 then s := s + '0.00';

        PgtoPendFat := 0.00;
        if v < 0 then
        begin
          PgtoPendFat := v*-1;
          q3 := q3 + PgtoPendFat;
        end;

        sgPagPedido.Cells[9,l] := s;

        s := '';

        PgtoEfetFat := 0.00;
        SaldoPagtoFat := 0.00;

        { Pagamentos Efetuados nas Faturas }
        with pedido_pagamento_ef do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
          ParamByName('num_nota_fiscal').AsInteger := spr_faturas_pedido.FieldByName('num_nota_fiscal').AsInteger;
          Open;
          while Not(EOF) do
          begin

            if (Pedidosies_preco_esp.AsString = 'S') then
            begin
              v := pedido_pagamento_efvlr_pagamento_esp.AsFloat;
              PgtoEfetFat := PgtoEfetFat + v;
            end
            else
            begin
              v := pedido_pagamento_efvlr_pagamento.AsFloat;
              PgtoEfetFat := PgtoEfetFat + v;
            end;

            s := trim(pedido_pagamento_efnum_fatura.AsString) + '/' + FormatDateTime('DD.MM.YY', pedido_pagamento_efdat_pagamento.AsDateTime) +
                 '/' + FormatFloat('#,##0.00', v);

            q4 := q4 + v;
            sgPagPedido.Cells[10,l] := s;

            Next;
            Inc(l);
          end;
        end;

        SaldoPagtoFat := PgtoPendFat - PgtoEfetFat;

        if pedido_pagamento_ef.IsEmpty then inc(l);

        s := trim(FieldByName('num_fatura').AsString) + '/' + FormatFloat('#,##0.00', SaldoPagtoFat);
        if (SaldoPagtoFat >=0) then
        begin
          q5 := q5 + SaldoPagtoFat;
          sgPagPedido.Cells[11,l-1] := s;
        end;

        Next;
      end;
    end;
    if spr_faturas_pedido.IsEmpty then inc(l);
    LinFat := l;

    l := MaxIntValue([1, LinPgAd, LinFat]);

    { Linha de Totais }
    sgPagPedido.Cells[6,l] := 'TOTAIS';
    sgPagPedido.Cells[7,l] := FormatFloat('#,##0.00', q1);
    sgPagPedido.Cells[8,l] := FormatFloat('#,##0.00', q2);
    sgPagPedido.Cells[9,l] := FormatFloat('#,##0.00', q3);
    sgPagPedido.Cells[10,l] := FormatFloat('#,##0.00', q4);
    sgPagPedido.Cells[11,l] := FormatFloat('#,##0.00', q5);
end;

procedure Tfr_Filtro.dbgPedidosCellClick(Column: TColumn);
begin
  LinPgAd := 0;
  LinFat := 0;
  sgPagPedidoInit;

  if Not(Pedidos.IsEmpty) then
  begin
    sgPagPedidoPedido;
    sgPagPedidoPagAdiantados;
    sgPagPedidoFaturas;
  end;

  sgPagPedido.Refresh;
end;

procedure Tfr_Filtro.sgPagFaturaInit;
Var
  i, j : integer;
begin
  { Inicializar sgPagPedido }
  with sgPagFatura do
    for i := 0 to ColCount - 1 do
      for j := 0 to RowCount - 1 do
        begin
          Cells[i,j] := '';
        end;
  sgPagFatura.Cells[0,0] := 'Fatura';
  sgPagFatura.Cells[1,0] := 'Pedidos';
  sgPagFatura.Cells[2,0] := 'Pagamentos Adiantados';
  sgPagFatura.Cells[3,0] := 'Pendente de Pagamento';
  sgPagFatura.Cells[4,0] := 'Pagamentos na Fatura';
  sgPagFatura.Cells[5,0] := 'Saldo';

  sgPagFatura.ColWidths[0] := 350;
  sgPagFatura.ColWidths[1] := 350;
  sgPagFatura.ColWidths[2] := 250;
  sgPagFatura.ColWidths[3] := 250;
  sgPagFatura.ColWidths[4] := 250;
  sgPagFatura.ColWidths[5] := 100;

  sgPagFatura.ClearSelection;

  q1 := 0.00;
  q2 := 0.00;
  q3 := 0.00;
  q4 := 0.00;
  q5 := 0.00;

end;

procedure Tfr_Filtro.sgPagFaturaPagamentos;
Var
  fEsp : boolean;
  s : string;
  Linha, LinPed, LinPgtAd, LinPgtEf : integer;
  v : double;
begin
   Linha := 1;

   q1 := 0.00;
   q2 := 0.00;
   q3 := 0.00;
   q4 := 0.00;
   q5 := 0.00;
   v := 0.00;

   fEsp := Faturasies_preco_esp.AsString = 'S';

   s := trim(Faturasnum_fatura.AsString) + ' / ' + trim(Faturasnum_ref_volume.AsString) + ' - '
               + FormatDateTime('DD.MM.YY', Faturasdat_emissao.AsDateTime);
   s := s + ' - ';
   if fEsp then s := s + FormatFloat('#,##0.00', Faturasvlr_liquido_esp.AsFloat)
           else s := s + FormatFloat('#,##0.00',Faturasvlr_liquido.AsFloat);

   sgPagFatura.Cells[0, Linha] := s;

   { Pedidos da Fatura }
   with spr_saldo_confirmacao do
   begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger := Faturasnum_nota_fiscal.AsInteger;
      ParamByName('serie').AsString := Faturasserie.AsString;
      Open;

      while Not(EOF) do
      begin
        { Pedidos/Confirmação-Data Liberação - Valor }
        s := trim(FieldByName('num_pedido_cli').AsString) + ' / ' + trim(FieldByName('num_pedido_for').AsString) + ' - ' + FormatDateTime('DD.MM.YY', FieldByName('dat_liberacao').AsDateTime);
        s := s + ' - ';

        if fEsp then v := FieldByName('vlr_faturado_esp').AsFloat
                else v := FieldByName('vlr_faturado').AsFloat;

        q1 := q1 + v;

        s := s + FormatFloat('#,##0.00', v);

        sgPagFatura.Cells[1, Linha] := s;

        { Pendente de Pagamento }
        s := trim(FieldByName('num_pedido_cli').AsString);
        s := s + ' - ';

        if fEsp then v := FieldByName('vlr_saldo_fat_esp').AsFloat
                else v := FieldByName('vlr_saldo_fat').AsFloat;

        q3 := q3 + v;

        s := s + FormatFloat('#,##0.00', v);

        sgPagFatura.Cells[3, Linha] := s;

        LinPed := Linha;

        { Pagamentos adiantados }
        with spr_fatura_pedido_ptgadiantado do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_nota_fiscal').AsInteger := Faturasnum_nota_fiscal.AsInteger;
          ParamByName('num_pedido').Value := spr_saldo_confirmacaonum_pedido.AsLargeInt;
          Open;

          { Inicializar colunas com valores default PEDIDO e VALOR = 0,00 }

          s := trim(spr_saldo_confirmacaonum_pedido_cli.AsString) + ' - 0,00' ;

          sgPagFatura.Cells[2, Linha] := s;

          while Not(EOF) do
          begin
             s := trim(spr_saldo_confirmacaonum_pedido_cli.AsString) + ' - ' +
                  FormatDateTime('DD.MM.YY', spr_fatura_pedido_ptgadiantadodat_pagamento.AsDateTime) +
                  ' - ';

             if fEsp then v := spr_fatura_pedido_ptgadiantadovlr_pagamento_esp.AsFloat
                     else v := spr_fatura_pedido_ptgadiantadovlr_pagamento.AsFloat;

             q2 := q2 + v;

             s := s + FormatFloat('#,##0.00', v);

             sgPagFatura.Cells[2, Linha] := s;

            Next;
            if Not(EOF) then Inc(Linha);
          end;
          LinPgtAd := Linha;
        end;

        Linha := LinPed;

        { Pagamentos na Fatura }
        with fatura_pagamento do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_nota_fiscal').AsInteger := Faturasnum_nota_fiscal.AsInteger;
          ParamByName('serie').AsString := Faturasserie.AsString;
          ParamByName('num_pedido').Value := spr_saldo_confirmacaonum_pedido.AsLargeInt;
          Open;

          { Inicializar colunas com valores default PEDIDO e VALOR = 0,00 }
          s := trim(spr_saldo_confirmacaonum_pedido_cli.AsString) + ' - 0,00';
          sgPagFatura.Cells[4, Linha] := s;

          while Not(EOF) do
          begin
            s := trim(spr_saldo_confirmacaonum_pedido_cli.AsString) + ' - ' +
                 FormatDateTime('DD.MM.YY', FieldByName('dat_pagamento').AsDateTime);
            s := s + ' - ';

            if fEsp then v := FieldByName('vlr_pagamento_esp').AsFloat
                    else v := FieldByName('vlr_pagamento').AsFloat;

            q4 := q4 + v;

            s := s + FormatFloat('#,##0.00', v);

            sgPagFatura.Cells[4, Linha] := s;

            Next;
            if Not(EOF) then Inc(Linha);
          end;
          LinPgtEf := Linha; { última linha das colunas de pagamentos }
        end;

        Next;
        if Not(EOF) then Inc(Linha);
      end;
      Linha := LinPed; { última linha dos Pedidos }
   end;

   //q5 := q1 - q2 - q4;
   { Saldo a Pagar = Pendente de Pagamento - Pagamento na Fatura }
   q5 := q3 - q4;

   Linha := MaxIntValue([LinPed, LinPgtAd, LinPgtEf]);
   Inc(Linha);

   { Linha de Totais }
   sgPagFatura.Cells[0, Linha] := 'TOTAIS';
   sgPagFatura.Cells[1, Linha] := FormatFloat('#,##0.00', q1);
   sgPagFatura.Cells[2, Linha] := FormatFloat('#,##0.00', q2);
   sgPagFatura.Cells[3, Linha] := FormatFloat('#,##0.00', q3);
   sgPagFatura.Cells[4, Linha] := FormatFloat('#,##0.00', q4);
   sgPagFatura.Cells[5, Linha] := FormatFloat('#,##0.00;"0.00"', q5); // mostrar zero caso saldo seja credor

end;



procedure Tfr_Filtro.dbgFaturasCellClick(Column: TColumn);
begin
  sgPagFaturaInit;

  if Not(Faturas.IsEmpty) then
  begin
    sgPagFaturaPagamentos;
  end;

  sgPagFatura.Refresh;
end;

end.
