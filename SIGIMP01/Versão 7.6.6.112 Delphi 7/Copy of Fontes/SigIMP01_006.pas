unit  SigIMP01_006;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, UnNavigator, UnGrid, DB, IBCustomDataSet,
  IBQuery, DBCtrls, StdCtrls, Mask, ToolWin, ActnList, IBSQL, Grids, DBGrids,
  DateUtils, UnType, JvExStdCtrls, JvButton, JvCtrls,
  OleServer, ExcelXP, Excel2000, Math, Buttons, JvExControls, JvComponent,
  JvDBLookup, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit,
  IBStoredProc, DBActns, JvDBControls, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, Menus, AniThread, JvStaticText, JvExExtCtrls,
  JvDBRadioPanel, JvExtComponent, JvDBCombobox;

type
  tpCheck_Pedido = (chExcluir, chEditar, chInserir, chCancelar, chConfirmar, chRomanear, chFaturar, chCopiar, chImprimir);

  Tfr_ManPedido = class(TForm)
    Panel1: TPanel;
    pgcPedido: TPageControl;
    tbsPedido: TTabSheet;
    tbsPedidoProduto: TTabSheet;
    pnlProdto: TPanel;
    qryPedido: TIBDataSet;                                                        
    qryPedidocod_empresa: TSmallintField;
    qryPedidonum_lista: TSmallintField;                            
    qryPedidoies_situacao: TIBStringField;
    qryPedidoies_tip_pedido: TIBStringField;
    qryPedidodat_emissao: TDateTimeField;
    qryPedidodat_entrega: TDateField;
    qryPedidodat_cadastro: TDateTimeField;
    qryPedidologin: TIBStringField;
    cliente: TIBQuery;
    qryVendedor: TIBQuery;
    qryVendedornom_vendedor: TIBStringField;
    qryPedidolkpCodCliente: TIBStringField;
    dtsPedido: TDataSource;
    Label1: TLabel;
    txtnum_pedido: TDBText;                                   
    dstCliente: TDataSource;
    qryVendedorcnpj: TIBStringField;
    dtsVendedor: TDataSource;
    Label22: TLabel;
    Label11: TLabel;
    txtcod_cliente: TDBText;
    txtlkpNomFornecedor: TDBText;
    txties_tip_pedido: TDBText;
    qryPedidoProduto: TIBDataSet;
    qryPedidoProdutocod_empresa: TSmallintField;
    qryPedidoProdutonum_sequencia: TSmallintField;
    qryPedidoProdutoqtd_produto: TIBBCDField;
    qryPedidoProdutoqtd_cancelada: TIBBCDField;
    qryPedidoProdutodat_cadastro: TDateTimeField;
    pnlStatus: TPanel;
    fr_FmNavigator1: Tfr_FmNavigator;
    ToolBar1: TToolBar;
    btnValidar: TToolButton;
    ActionList1: TActionList;
    dtsProduto: TDataSource;
    qryProduto: TIBQuery;
    dtsPedidoProduto: TDataSource;
    actCancelarProduto: TAction;
    txties_situacao: TDBText;
    Label42: TLabel;
    qryPedidoProdutoqtd_romaneada: TIBBCDField;
    qryPedidoProdutoqtd_faturada: TIBBCDField;
    qryPedidoProdutoqtd_pendente: TIBBCDField;
    qryPedidocod_vendedor: TSmallintField;
    qryVendedorcod_vendedor: TIntegerField;
    qryPedidoProdutocod_produto: TIBStringField;
    actImprimir: TAction;
    ToolButton10: TToolButton;
    act_F5: TAction;
    act_F6: TAction;
    cliente_endereco: TIBQuery;
    cliente_enderecocod_unidade_federativa: TSmallintField;
    qryPedidoProdutoQtde_Romanear: TFloatField;
    qryPedidocod_moeda: TSmallintField;
    cliente_contato: TIBQuery;
    cliente_contatocod_contato: TSmallintField;
    cliente_contatonom_contato: TIBStringField;
    qryMoeda: TIBQuery;
    qryMoedacod_moeda: TSmallintField;
    qryMoedaden_moeda: TIBStringField;
    qryPedidolkpDenMoeda: TIBStringField;
    qryPedidonum_pedido: TLargeintField;
    qryPedidoProdutonum_pedido: TLargeintField;
    qryPedidocod_cliente: TIBStringField;
    qryPedidovlr_liquido: TIBBCDField;
    qryPedidoProdutovlr_liquido: TIBBCDField;
    qryVendedories_situacao: TIBStringField;
    qryPedidovlr_frete: TIBBCDField;
    qryPedidodat_liberacao: TDateField;
    qryPedidodat_faturamento: TDateField;
    qryPedidoProdutovlr_unitario: TFloatField;
    a: TPanel;
    fr_FmNavigator2: Tfr_FmNavigator;
    Fornecedor: TIBQuery;
    Fornecedorcod_fornecedor: TSmallintField;
    btnOrderProforma: TToolButton;
    actExcelOrder: TAction;
    ExcelApplication: TExcelApplication;
    produtos_xls: TIBQuery;
    embalagem: TIBQuery;
    ExcelWorkBook: TExcelWorkbook;
    ExcelWorksheet: TExcelWorksheet;
    Exportador: TIBQuery;
    Importador: TIBQuery;
    grupo_produto: TIBQuery;
    pedido_complemento: TIBDataSet;
    pedido_complementocod_empresa: TSmallintField;
    pedido_complementonum_pedido: TLargeintField;
    pedido_complementonum_pedido_cli: TIBStringField;
    pedido_complementonum_pedido_for: TIBStringField;
    pedido_complementocod_container: TIntegerField;
    pedido_complementocod_fornecedor: TIntegerField;
    pedido_complementocod_porto_emb: TIntegerField;
    pedido_complementocod_porto_des: TIntegerField;
    dtspedido_complemento: TDataSource;
    pedido_complementolkpFornecedor: TStringField;
    portos_embarque: TIBQuery;
    portos_embarquecod_porto: TIntegerField;
    portos_embarqueden_porto: TIBStringField;
    portos_embarqueies_tipo: TIBStringField;
    portos_desembarque: TIBQuery;
    portos_desembarquecod_porto: TIntegerField;
    portos_desembarqueden_porto: TIBStringField;
    portos_desembarqueies_tipo: TIBStringField;
    pedido_complementolkpPortoEmb: TStringField;
    pedido_complementolkpPortoDes: TStringField;
    Panel4: TPanel;
    lkpCliente: TDBLookupComboBox;
    Label5: TLabel;
    lpkFornecedor: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label17: TLabel;
    pedido_complementocod_cond_venda: TIntegerField;
    Label13: TLabel;
    dbNumPedidoCli: TDBEdit;
    Label18: TLabel;
    dbeNumPedidoFor: TDBEdit;
    condicao_venda: TIBQuery;
    condicao_vendacod_tip_condicao: TSmallintField;
    condicao_vendaden_tip_condicao: TIBStringField;
    condicao_vendaies_situacao: TIBStringField;
    pedido_complementolkcCondicaoVenda: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    Label20: TLabel;
    qryPedidoProdutoqtd_export_box: TIntegerField;
    qryPedidoProdutovol_caixas: TIBBCDField;
    qryPedidoProdutopes_liquido: TIBBCDField;
    qryPedidoProdutopes_bruto: TIBBCDField;
    pedido_complementonum_container: TIntegerField;
    qryPedidovlr_bruto: TIBBCDField;
    pedido_complementoqtd_caixas: TIntegerField;
    pedido_complementopes_liquido: TIBBCDField;
    pedido_complementopes_bruto: TIBBCDField;
    pedido_complementonum_ref_volume: TIBStringField;
    pedido_complementoswift: TIBStringField;
    pedido_complementobanco_intermed: TIBStringField;
    ProxSequencia: TIBQuery;
    ProxSequenciaprox_sequencia: TLargeintField;
    Label15: TLabel;
    Label16: TLabel;
    JvDBUltimGrid2: TJvDBUltimGrid;
    JvDBLookupCombo2: TJvDBLookupCombo;
    pedido_container: TIBDataSet;
    pedido_containerlkpDenContainer: TStringField;
    pedido_containerqtd_container: TSmallintField;
    pedido_containerarea_total: TIBBCDField;
    pedido_containerpeso_total: TIBBCDField;
    pedido_containercod_empresa: TSmallintField;
    pedido_containercod_container: TIntegerField;
    ds_pedido_container: TDataSource;
    Containers: TIBQuery;
    Containerscod_container: TIntegerField;
    Containersden_container: TIBStringField;
    Containerscomprimento: TIBBCDField;
    Containerslargura: TIBBCDField;
    Containersaltura: TIBBCDField;
    Containersarea_disp: TIBBCDField;
    Containersarea_util: TIBBCDField;
    Containerspeso_maximo: TIBBCDField;
    Containerstip_container: TIBStringField;
    pedido_containernum_pedido: TLargeintField;
    Label51: TLabel;
    edtvlr_liquido: TDBEdit;
    Label39: TLabel;
    DBEdit11: TDBEdit;
    Label40: TLabel;
    DBEdit12: TDBEdit;
    Label41: TLabel;
    DBEdit13: TDBEdit;
    Label45: TLabel;
    DBEdit14: TDBEdit;
    pnlProduto: TPanel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label36: TLabel;
    Label44: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    Label19: TLabel;
    Label50: TLabel;
    edtqtd_produtoproduto: TDBEdit;
    edtqtd_cancelada: TDBEdit;
    edtqtd_romaneada: TDBEdit;
    edtqtd_faturada: TDBEdit;
    edtqtd_pendente: TDBEdit;
    edtvlr_unitario: TDBEdit;
    edtvlr_liquidoproduto: TDBEdit;
    edtcod_produto: TDBEdit;
    mmtxt_observacao2: TDBMemo;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit17: TDBEdit;
    Label12: TLabel;
    dtpDatEmissao: TJvDBDatePickerEdit;
    dtpDatEntrega: TJvDBDatePickerEdit;
    dtpDatLiberacao: TJvDBDatePickerEdit;
    Label14: TLabel;
    pedido_containerlkTipoContainer: TStringField;
    tbAbrir: TToolButton;
    qryPedidotxt_pedido: TMemoField;
    qryPedidotxt_confirmacao: TMemoField;
    Label54: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    dsBanco: TDataSource;
    Banco: TIBQuery;
    qryPedidoProdutodat_preco: TDateField;
    del_pedido_produto: TIBQuery;
    Panel2: TPanel;
    Label48: TLabel;
    edBuscaCodigo: TEdit;
    Label55: TLabel;
    edBuscaDesc: TEdit;
    emb_especial_ped: TIBDataSet;
    emb_especial_pedcod_empresa: TSmallintField;
    emb_especial_pednum_pedido: TLargeintField;
    emb_especial_pedseq: TIntegerField;
    emb_especial_pedden_embalagem: TIBStringField;
    emb_especial_pedqtd_total: TIBBCDField;
    emb_especial_pedvol_total: TIBBCDField;
    emb_especial_pedpes_bruto: TIBBCDField;
    emb_especial_pedpes_liquido: TIBBCDField;
    emb_especial_pedqtd_caixas: TIntegerField;
    emb_especial_pedqtd_produto: TIBBCDField;
    emb_especial_pedpes_unitario: TFloatField;
    emb_especial_pedaltura: TIBBCDField;
    emb_especial_pedlargura: TIBBCDField;
    emb_especial_pedprofundidade: TIBBCDField;
    emb_especial_item_ped: TIBDataSet;
    emb_especial_item_pedcod_empresa: TSmallintField;
    emb_especial_item_pednum_pedido: TLargeintField;
    emb_especial_item_pedseq: TIntegerField;
    emb_especial_item_pednum_sequencia: TSmallintField;
    emb_especial_item_pedcod_produto: TIBStringField;
    emb_especial_item_pedqtd_produto: TIBBCDField;
    emb_especial_item_pedpes_liquido: TIBBCDField;
    ds_emb_especial_ped: TDataSource;
    ds_emb_especial_item_ped: TDataSource;
    qryPedidoProdutoies_emb_esp: TIBStringField;
    pgProdutos: TPageControl;
    TabSheet1: TTabSheet;
    fr_FmGrid1: Tfr_FmGrid;
    TabSheet2: TTabSheet;
    GroupBox12: TGroupBox;
    Panel7: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit28: TDBEdit;
    dbeDenEmb: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    GroupBox13: TGroupBox;
    dbgProdutosEmb: TDBGrid;
    Panel8: TPanel;
    dbgEmbEspecial: TDBGrid;
    Panel9: TPanel;
    fr_FmNavigator3: Tfr_FmNavigator;
    Label67: TLabel;
    Label68: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    qryPedidoProdutocod_prod_fornec: TStringField;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Label69: TLabel;
    qryPedidoProdutoobs_preco: TMemoField;
    qryPedidoProdutocalDenProduto: TStringField;
    emb_especial_item_pedcalDenProduto: TStringField;
    qryProdutocod_produto: TIBStringField;
    qryProdutoies_situacao: TIBStringField;
    qryProdutocod_uni_medida: TSmallintField;
    qryProdutoden_uni_medida: TIBStringField;
    qryProdutosigla: TIBStringField;
    qryProdutocod_prod_fornec: TIBStringField;
    qryPedidoies_pago: TIBStringField;
    qryPedidoProdutopct_comissao_f: TIBBCDField;
    qryPedidoProdutopct_comissao_c: TIBBCDField;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Pagamento: TIBQuery;
    pedido_pagamento: TIBDataSet;
    ds_pedido_pagamento: TDataSource;
    pedido_pagamentocod_empresa: TSmallintField;
    pedido_pagamentonum_pedido: TLargeintField;
    pedido_pagamentovlr_pagamento: TIBBCDField;
    Label53: TLabel;
    Label2: TLabel;
    qryPedidotxt_observacao: TMemoField;
    qryPedidoProdutotexto: TMemoField;
    qryPedidoProdutotxt_observacao: TMemoField;
    pedido_pagamentodat_pagamento: TDateField;
    pgPagDescAdic: TPageControl;
    tsPagamentos: TTabSheet;
    tsDescAdic: TTabSheet;
    Label46: TLabel;
    Label70: TLabel;
    SpeedButton2: TSpeedButton;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    SpeedButton3: TSpeedButton;
    Label74: TLabel;
    dbeVlrPagamento: TDBEdit;
    Label75: TLabel;
    dtDatPagamento: TJvDBDateEdit;
    JvDBUltimGrid3: TJvDBUltimGrid;
    DBNavigator2: TDBNavigator;
    Label76: TLabel;
    JvDBUltimGrid4: TJvDBUltimGrid;
    Label77: TLabel;
    Label78: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator3: TDBNavigator;
    pedido_adic_desc: TIBDataSet;
    ds_pedido_adic_desc: TDataSource;
    pedido_adic_desccod_empresa: TSmallintField;
    pedido_adic_descnum_pedido: TLargeintField;
    pedido_adic_descies_tipo: TIBStringField;
    pedido_adic_descvlr_adic_desc: TIBBCDField;
    pedido_adic_desctxt_descricao: TMemoField;
    dbmTxtDescricao: TDBMemo;
    dbmTxtPagamentos: TDBMemo;
    Pagamentocod_pagamento: TSmallintField;
    Pagamentoden_pagamento: TIBStringField;
    pedido_pagamentonum_sequencia: TSmallintField;
    pedido_pagamentotxt_pagamento: TMemoField;
    SeqPedidoPagamento: TIBQuery;
    SeqPedidoPagamentoprox_sequencia: TLargeintField;
    DBRadioGroup1: TDBRadioGroup;
    SeqPedidoAdicDesc: TIBQuery;
    SeqPedidoAdicDescprox_sequencia: TLargeintField;
    pedido_adic_descnum_sequencia: TSmallintField;
    qryAdicDesc: TIBQuery;
    qryAdicDescies_tipo: TIBStringField;
    qryAdicDescvlr_adic_desc: TIBBCDField;
    qryAdicDesctxt_descricao: TMemoField;
    grupo_produtoden_gru_produto: TIBStringField;
    grupo_produtoden_gru_produto_ing: TIBStringField;
    qryPedidovlr_condicao: TIBBCDField;
    Label6: TLabel;
    Label25: TLabel;
    dbeVlrCondicao: TDBEdit;
    pedido_adic_descnum_nota_fiscal: TIntegerField;
    pedido_adic_descserie: TIBStringField;
    pedido_adic_descies_faturado: TIBStringField;
    pedido_adic_descnum_fatura: TStringField;
    Label4: TLabel;
    DBEdit15: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    actHistPrecos: TAction;
    ToolButton6: TToolButton;
    GroupBox2: TGroupBox;
    mmtxt_observacao: TDBMemo;
    BitBtn1: TBitBtn;
    qryPedidovlr_liquido_esp: TIBBCDField;
    qryPedidoProdutovlr_unitario_esp: TFloatField;
    qryPedidoProdutovlr_liquido_esp: TIBBCDField;
    Label35: TLabel;
    DBEdit18: TDBEdit;
    Label43: TLabel;
    DBEdit19: TDBEdit;
    Label52: TLabel;
    DBEdit20: TDBEdit;
    qryPedidovlr_bruto_esp: TIBBCDField;
    pedido_adic_descvlr_adic_desc_esp: TIBBCDField;
    Label58: TLabel;
    DBEdit21: TDBEdit;
    qryPedidovlr_adicional: TIBBCDField;
    qryPedidovlr_desconto: TIBBCDField;
    qryPedidovlr_adicional_esp: TIBBCDField;
    qryPedidovlr_desconto_esp: TIBBCDField;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    pedido_pagamentovlr_pagamento_esp: TIBBCDField;
    Label83: TLabel;
    dbeVlrPagamentoEsp: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit29: TDBEdit;
    Label84: TLabel;
    cby_pedido_pagamento_totais: TIBQuery;
    dscby_pedido_pagamento: TDataSource;
    cby_pedido_pagamento_totaistot_pagamentos: TIBBCDField;
    cby_pedido_pagamento_totaistot_pagamentos_esp: TIBBCDField;
    PopupMenu1: TPopupMenu;
    popPedido: TMenuItem;
    popConfirmacao: TMenuItem;
    qryAdicDescvlr_adic_desc_esp: TIBBCDField;
    actExcelGerar: TAction;
    actExcelImportar: TAction;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    PedidoProdutoImp: TIBDataSet;
    spr_cal_romaneio_fatura: TIBStoredProc;
    qryPedidocod_banco: TIntegerField;
    Bancocod_banco: TSmallintField;
    Banconom_banco: TIBStringField;
    Bancotxt_descricao: TMemoField;
    ItensPedidoFatura: TIBQuery;
    ItensPedidoFaturanum_nota_fiscal: TIntegerField;
    ItensPedidoFaturanum_fatura: TIBStringField;
    ItensPedidoFaturanum_sequencia: TSmallintField;
    ItensPedidoFaturaqtd_produto: TIBBCDField;
    ItensPedidoFaturavlr_unitario: TFloatField;
    ItensPedidoFaturavlr_unitario_esp: TFloatField;
    ItensPedidoFaturavlr_liquido: TIBBCDField;
    ItensPedidoFaturavlr_liquido_esp: TIBBCDField;
    qryPedidoProdutoies_situacao: TIBStringField;
    nota_fiscal_saida_produto: TIBDataSet;
    nota_fiscal_saida_produtocod_empresa: TSmallintField;
    nota_fiscal_saida_produtonum_nota_fiscal: TIntegerField;
    nota_fiscal_saida_produtoserie: TIBStringField;
    nota_fiscal_saida_produtonum_sequencia: TSmallintField;
    nota_fiscal_saida_produtocod_produto: TIBStringField;
    nota_fiscal_saida_produtoqtd_produto: TIBBCDField;
    nota_fiscal_saida_produtovlr_unitario: TFloatField;
    nota_fiscal_saida_produtovlr_unitario_esp: TFloatField;
    nota_fiscal_saida_produtodat_cadastro: TDateTimeField;
    nota_fiscal_saida_produtoies_situacao: TIBStringField;
    nota_fiscal_saida_produtonum_pedido: TLargeintField;
    nota_fiscal_saida_produtonum_seq_pedido: TSmallintField;
    nota_fiscal_saida_produtovlr_liquido: TIBBCDField;
    nota_fiscal_saida_produtovlr_liquido_esp: TIBBCDField;
    nota_fiscal_saida_produtoies_emb_esp: TIBStringField;
    nota_fiscal_saida_produtoqtd_export_box: TIntegerField;
    nota_fiscal_saida_produtovol_caixas: TIBBCDField;
    nota_fiscal_saida_produtopes_liquido: TIBBCDField;
    nota_fiscal_saida_produtopes_bruto: TIBBCDField;
    spr_pedido_faturas: TIBStoredProc;
    ProxSequenciaNF: TIBQuery;
    ProxSequenciaNFprox_sequencia: TLargeintField;
    ProdutosExcelAlteracao: TIBQuery;
    qryPedidoProdutoobs_preco_esp: TMemoField;
    DBMemo3: TDBMemo;
    Label85: TLabel;
    ItensPedidoFaturaserie: TIBStringField;
    actShipMarks: TAction;
    btnShipMarks: TToolButton;
    nota_fiscal_saida_produtoobs_preco: TMemoField;
    nota_fiscal_saida_produtoobs_preco_esp: TMemoField;
    adicional_desconto: TIBDataSet;
    adicional_descontocod_empresa: TSmallintField;
    adicional_descontocod_cliente: TIBStringField;
    adicional_descontocod_fornecedor: TSmallintField;
    adicional_descontoies_comissao: TIBStringField;
    adicional_descontoies_tipo: TIBStringField;
    adicional_descontovlr_adic_desc: TIBBCDField;
    adicional_descontovlr_adic_desc_esp: TIBBCDField;
    adicional_descontotxt_descricao: TMemoField;
    adicional_descontonum_sequencia: TIntegerField;
    qryPedidoProdutodat_inspecao: TDateField;
    qryPedidoies_pallets: TIBStringField;
    DBRadioGroup3: TDBRadioGroup;
    qryPedidoProdutoseq_emb_esp: TIntegerField;
    qryPedidoProdutoseq_pallet: TIntegerField;
    qryPedidoProdutoqtd_pallet: TIntegerField;
    qryPedidoProdutopes_bruto_pallet: TIBBCDField;
    qryPedidoProdutopes_liquido_pallet: TIBBCDField;
    qryPedidoProdutocomprimento_pallet: TIBBCDField;
    qryPedidoProdutolargura_pallet: TIBBCDField;
    qryPedidoProdutoaltura_pallet: TIBBCDField;
    qryPedidoProdutovolume_pallet: TIBBCDField;
    emb_esp_ped: TIBQuery;
    produtos_pkl: TIBQuery;
    qryPedidoProdutoseq_pkl: TIntegerField;
    qryPedidoProdutoies_erros: TIBStringField;
    qryPedidoProdutoies_colunas: TLargeintField;
    excluir_item_emb_esp: TIBSQL;
    spr_emb_esp_ped: TIBStoredProc;
    PedidoProdutoImpcod_empresa: TSmallintField;
    PedidoProdutoImpnum_pedido: TLargeintField;
    PedidoProdutoImpnum_sequencia: TSmallintField;
    PedidoProdutoImpcod_produto: TIBStringField;
    PedidoProdutoImpqtd_produto: TIBBCDField;
    PedidoProdutoImpqtd_cancelada: TIBBCDField;
    PedidoProdutoImpqtd_romaneada: TIBBCDField;
    PedidoProdutoImpqtd_faturada: TIBBCDField;
    PedidoProdutoImpqtd_pendente: TIBBCDField;
    PedidoProdutoImpvlr_unitario: TFloatField;
    PedidoProdutoImpvlr_unitario_esp: TFloatField;
    PedidoProdutoImpdat_cadastro: TDateTimeField;
    PedidoProdutoImpdat_inspecao: TDateField;
    PedidoProdutoImpies_situacao: TIBStringField;
    PedidoProdutoImpvlr_liquido: TIBBCDField;
    PedidoProdutoImpvlr_liquido_esp: TIBBCDField;
    PedidoProdutoImpqtd_export_box: TIntegerField;
    PedidoProdutoImpvol_caixas: TIBBCDField;
    PedidoProdutoImppes_liquido: TIBBCDField;
    PedidoProdutoImppes_bruto: TIBBCDField;
    PedidoProdutoImpdat_preco: TDateField;
    PedidoProdutoImpies_emb_esp: TIBStringField;
    PedidoProdutoImpobs_preco: TMemoField;
    PedidoProdutoImpobs_preco_esp: TMemoField;
    PedidoProdutoImppct_comissao_f: TIBBCDField;
    PedidoProdutoImppct_comissao_c: TIBBCDField;
    PedidoProdutoImptexto: TMemoField;
    PedidoProdutoImptxt_observacao: TMemoField;
    PedidoProdutoImpseq_emb_esp: TIntegerField;
    PedidoProdutoImpseq_pallet: TIntegerField;
    PedidoProdutoImpqtd_pallet: TIntegerField;
    PedidoProdutoImppes_bruto_pallet: TIBBCDField;
    PedidoProdutoImppes_liquido_pallet: TIBBCDField;
    PedidoProdutoImpcomprimento_pallet: TIBBCDField;
    PedidoProdutoImplargura_pallet: TIBBCDField;
    PedidoProdutoImpaltura_pallet: TIBBCDField;
    PedidoProdutoImpvolume_pallet: TIBBCDField;
    PedidoProdutoImpseq_pkl: TIntegerField;
    PedidoProdutoImpnum_seq_origem: TIntegerField;
    PedidoProdutoImpies_erros: TIBStringField;
    PedidoProdutoImpies_colunas: TLargeintField;
    actValidar: TAction;
    btnImportarListaEsp: TToolButton;
    btnGerar: TToolButton;
    ToolButton9: TToolButton;
    ToolButton1: TToolButton;
    spr_faturas_pedido: TIBQuery;
    Label37: TLabel;
    ds_spr_faturas_pedido: TDataSource;
    pedido_pagamentonum_nota_fiscal: TIntegerField;
    pedido_pagamentoserie: TIBStringField;
    spr_faturas_pedidodat_emissao: TDateTimeField;
    spr_faturas_pedidonum_fatura: TIBStringField;
    spr_faturas_pedidonum_ref_volume: TIBStringField;
    spr_faturas_pedidonum_nota_fiscal: TIntegerField;
    spr_faturas_pedidoserie: TIBStringField;
    DBEdit3: TDBEdit;
    pedido_pagamentolkpNumFatura: TStringField;
    spr_calc_saldo_fatura: TIBStoredProc;
    fatura_pagamento: TIBDataSet;
    fatura_pagamentocod_empresa: TSmallintField;
    fatura_pagamentonum_nota_fiscal: TIntegerField;
    fatura_pagamentoserie: TIBStringField;
    fatura_pagamentonum_sequencia: TSmallintField;
    fatura_pagamentovlr_pagamento: TIBBCDField;
    fatura_pagamentovlr_pagamento_esp: TIBBCDField;
    fatura_pagamentodat_pagamento: TDateField;
    fatura_pagamentotxt_pagamento: TMemoField;
    fatura_pagamentonum_pedido: TLargeintField;
    pedido_pagamentonum_seq_fatpag: TIntegerField;
    emb_especial_pedpes_bruto_cx: TFloatField;
    pedido_complementoqtd_pallets: TIntegerField;
    pedido_complementovol_pallets: TIBBCDField;
    pedido_complementopes_liq_pallets: TIBBCDField;
    pedido_complementopes_bruto_pallets: TIBBCDField;
    Label47: TLabel;
    DBEdit4: TDBEdit;
    Label49: TLabel;
    DBEdit32: TDBEdit;
    Label86: TLabel;
    DBEdit39: TDBEdit;
    Label87: TLabel;
    DBEdit40: TDBEdit;
    JvStaticText2: TJvStaticText;
    spr_vlr_esp_ped: TIBStoredProc;
    spr_pedido_to_importacao: TIBStoredProc;
    ProdutosDuplicados: TIBQuery;
    ProdutosDuplicadoscod_produto: TIBStringField;
    ProdutosDuplicadosconta: TIntegerField;
    ItensPedidoFaturacod_produto: TIBStringField;
    qryPedidoProdutotxt_status_producao: TMemoField;
    qryPedidoProdutoies_result_inspecao: TIBStringField;
    Label88: TLabel;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvDBRadioPanel1: TJvDBRadioPanel;
    qryPedidoProdutoies_caixa_fechada: TIBStringField;
    PedidoProdutoImpies_caixa_fechada: TIBStringField;
    nota_fiscal_saida_produtoies_caixa_fechada: TIBStringField;
    qryProdutoncm_cod: TIntegerField;
    qryPedidoies_preco_esp: TIBStringField;
    DBRadioGroup4: TDBRadioGroup;
    ItensPedidoFaturanum_seq_pedido: TSmallintField;
    emb_padrao: TIBQuery;
    Button1: TButton;
    Button2: TButton;
    spr_excped_prodlist: TIBStoredProc;
    spr_excitem_prl: TIBStoredProc;
    qryPedidoProdutoqtd_inner_box: TIBBCDField;
    qryPedidoProdutoun_cx_master: TIBBCDField;
    ProdutosExcelAlteracaocod_empresa: TSmallintField;
    ProdutosExcelAlteracaonum_pedido: TLargeintField;
    ProdutosExcelAlteracaonum_sequencia: TSmallintField;
    ProdutosExcelAlteracaocod_produto: TIBStringField;
    ProdutosExcelAlteracaoqtd_produto: TIBBCDField;
    ProdutosExcelAlteracaoqtd_cancelada: TIBBCDField;
    ProdutosExcelAlteracaoqtd_romaneada: TIBBCDField;
    ProdutosExcelAlteracaoqtd_faturada: TIBBCDField;
    ProdutosExcelAlteracaoqtd_pendente: TIBBCDField;
    ProdutosExcelAlteracaovlr_unitario: TFloatField;
    ProdutosExcelAlteracaovlr_unitario_esp: TFloatField;
    ProdutosExcelAlteracaodat_cadastro: TDateTimeField;
    ProdutosExcelAlteracaoies_situacao: TIBStringField;
    ProdutosExcelAlteracaovlr_liquido: TIBBCDField;
    ProdutosExcelAlteracaovlr_liquido_esp: TIBBCDField;
    ProdutosExcelAlteracaoqtd_export_box: TIntegerField;
    ProdutosExcelAlteracaoqtd_inner_box: TIBBCDField;
    ProdutosExcelAlteracaovol_caixas: TIBBCDField;
    ProdutosExcelAlteracaopes_liquido: TIBBCDField;
    ProdutosExcelAlteracaopes_bruto: TIBBCDField;
    ProdutosExcelAlteracaodat_preco: TDateField;
    ProdutosExcelAlteracaoun_cx_master: TIBBCDField;
    ProdutosExcelAlteracaoies_emb_esp: TIBStringField;
    ProdutosExcelAlteracaoobs_preco: TMemoField;
    ProdutosExcelAlteracaoobs_preco_esp: TMemoField;
    ProdutosExcelAlteracaopct_comissao_f: TIBBCDField;
    ProdutosExcelAlteracaopct_comissao_c: TIBBCDField;
    ProdutosExcelAlteracaotexto: TMemoField;
    ProdutosExcelAlteracaotxt_observacao: TMemoField;
    ProdutosExcelAlteracaodat_inspecao: TDateField;
    ProdutosExcelAlteracaoseq_emb_esp: TIntegerField;
    ProdutosExcelAlteracaoseq_pallet: TIntegerField;
    ProdutosExcelAlteracaoqtd_pallet: TIntegerField;
    ProdutosExcelAlteracaopes_bruto_pallet: TIBBCDField;
    ProdutosExcelAlteracaopes_liquido_pallet: TIBBCDField;
    ProdutosExcelAlteracaocomprimento_pallet: TIBBCDField;
    ProdutosExcelAlteracaolargura_pallet: TIBBCDField;
    ProdutosExcelAlteracaoaltura_pallet: TIBBCDField;
    ProdutosExcelAlteracaovolume_pallet: TIBBCDField;
    ProdutosExcelAlteracaoseq_pkl: TIntegerField;
    ProdutosExcelAlteracaonum_seq_origem: TIntegerField;
    ProdutosExcelAlteracaoies_erros: TIBStringField;
    ProdutosExcelAlteracaoies_colunas: TLargeintField;
    ProdutosExcelAlteracaotxt_status_producao: TMemoField;
    ProdutosExcelAlteracaoies_result_inspecao: TIBStringField;
    ProdutosExcelAlteracaoies_caixa_fechada: TIBStringField;
    ProdutosExcelAlteracaoqtd_saldo: TIBBCDField;
    ProdutosExcelAlteracaoqtd_romanear: TIBBCDField;
    PedidoProdutoImpqtd_inner_box: TIBBCDField;
    PedidoProdutoImpun_cx_master: TIBBCDField;
    nota_fiscal_saida_produtoqtd_inner_box: TIBBCDField;
    Fornecedories_idioma: TIBStringField;
    qryPedidoProdutodat_upd_etd: TDateField;
    qryPedidoProdutoetd_factory: TDateField;
    qryPedidoProdutoetd_obs_cli: TMemoField;
    qryPedidoProdutoetd_obs_for: TMemoField;
    ProdutosExcelAlteracaodat_upd_etd: TDateField;
    ProdutosExcelAlteracaoetd_factory: TDateField;
    ProdutosExcelAlteracaoetd_obs_cli: TMemoField;
    ProdutosExcelAlteracaoetd_obs_for: TMemoField;
    PedidoProdutoImpetd_factory: TDateField;
    PedidoProdutoImpetd_obs_cli: TMemoField;
    PedidoProdutoImpetd_obs_for: TMemoField;
    PedidoProdutoImpdat_upd_etd: TDateField;
    qryPedidoProdutopes_pallet_vazio: TFloatField;
    PedidoProdutoImppes_pallet_vazio: TFloatField;
    ProdutosExcelAlteracaopes_pallet_vazio: TFloatField;
    pedido_complementovol_geral: TIBBCDField;
    pedido_complementocxs_outpallet: TIntegerField;
    pedido_complementopes_liq_geral: TIBBCDField;
    pedido_complementopes_bru_geral: TIBBCDField;
    actExcelAbrir: TAction;
    ProdutosEmbEsp: TIBQuery;
    ProdutosPallets: TIBQuery;
    Panel3: TPanel;
    panGauge: TPanel;
    cbPrecos: TCheckBox;
    cbEtdFactory: TCheckBox;
    Pallets: TIBQuery;
    OpenDialog: TOpenDialog;
    emb_esp_pedcod_empresa: TSmallintField;
    emb_esp_pednum_pedido: TLargeintField;
    emb_esp_pedseq: TIntegerField;
    emb_esp_pedden_embalagem: TIBStringField;
    emb_esp_pedqtd_total: TIBBCDField;
    emb_esp_pedvol_total: TIBBCDField;
    emb_esp_pedpes_bruto: TIBBCDField;
    emb_esp_pedpes_liquido: TIBBCDField;
    emb_esp_pedqtd_caixas: TIntegerField;
    emb_esp_pedqtd_produto: TIBBCDField;
    emb_esp_pedpes_unitario: TFloatField;
    emb_esp_pedaltura: TIBBCDField;
    emb_esp_pedlargura: TIBBCDField;
    emb_esp_pedprofundidade: TIBBCDField;
    emb_esp_pedpes_bruto_cx: TFloatField;
    btnComissoes: TToolButton;
    actExcelComissao: TAction;
    spr_troca_pedido_pl: TIBStoredProc;
    spr_atualizar_etdfactory: TIBStoredProc;
    nota_fiscal_saida_produtopct_comissao_f: TIBBCDField;
    nota_fiscal_saida_produtopct_comissao_c: TIBBCDField;
    qryPedidoies_comissao: TSmallintField;
    qryPedidoies_base_comissao: TIBStringField;
    tsComissao: TTabSheet;
    DBRadioGroup5: TDBRadioGroup;
    dgbComissao: TDBRadioGroup;
    dgbBaseComissao: TDBRadioGroup;
    qryPedidoies_insurance: TIBStringField;
    dbcInsurance: TJvDBComboBox;
    Label33: TLabel;
    qryPedidoies_idioma: TIBStringField;
    Label89: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Exportadorcod_fornecedor: TSmallintField;
    Exportadorraz_social: TIBStringField;
    Exportadorraz_social_reduz: TIBStringField;
    Exportadorpais_origem: TIBStringField;
    Exportadorpais_aquisicao: TIBStringField;
    Exportadorpais_procedencia: TIBStringField;
    Fornecedorcod_moeda: TSmallintField;
    qryPedidoterms_payment: TIBStringField;
    DBEdit16: TDBEdit;
    clientecod_cliente: TIBStringField;
    clientenom_cliente: TIBStringField;
    clientemas_cod_produto: TIBStringField;
    Importadornom_cliente: TIBStringField;
    Importadoridioma_shipmarks: TIBStringField;
    clientencm_pedido: TIBStringField;
    pedido_complementovol_total: TIBBCDField;
    emb_padraovol_caixas: TIBBCDField;
    emb_padraoqtd_export_box: TIntegerField;
    emb_padraoqtd_inner_box: TIBBCDField;
    emb_padraoqtd_master_box: TIBBCDField;
    emb_padraopes_liquido: TIBBCDField;
    emb_padraopes_bruto: TIBBCDField;
    emb_padraopes_bruto_caixa: TIBBCDField;
    emb_padraopes_unit_prod: TFloatField;
    emb_padraopes_unit_caixa: TFloatField;
    emb_padraocaixa_fechada: TIBStringField;
    emb_padraoaltura: TIBBCDField;
    emb_padraolargura: TIBBCDField;
    emb_padraocomprimento: TIBBCDField;
    emb_padraovol_master_box: TIBBCDField;
    emb_padraoobservacao: TIBStringField;
    emb_padraodat_cadastro: TDateField;
    emb_padraodat_cad_dimensoes: TDateField;
    emb_padraodat_cad_peso: TDateField;
    emb_padraodat_cad_master: TDateField;
    emb_padraodat_cad_inner: TDateField;
    emb_padraoobs_caixas: TIBStringField;
    embalagemvol_caixas: TIBBCDField;
    embalagemqtd_export_box: TIntegerField;
    embalagemqtd_inner_box: TIBBCDField;
    embalagemqtd_master_box: TIBBCDField;
    embalagempes_liquido: TIBBCDField;
    embalagempes_bruto: TIBBCDField;
    embalagempes_bruto_caixa: TIBBCDField;
    embalagempes_unit_prod: TFloatField;
    embalagempes_unit_caixa: TFloatField;
    embalagemcaixa_fechada: TIBStringField;
    embalagemaltura: TIBBCDField;
    embalagemlargura: TIBBCDField;
    embalagemcomprimento: TIBBCDField;
    embalagemvol_master_box: TIBBCDField;
    embalagemobservacao: TIBStringField;
    embalagemdat_cadastro: TDateField;
    embalagemdat_cad_dimensoes: TDateField;
    embalagemdat_cad_peso: TDateField;
    embalagemdat_cad_master: TDateField;
    embalagemdat_cad_inner: TDateField;
    embalagemobs_caixas: TIBStringField;
    cliente_filial: TIBQuery;
    cliente_filialseq_filial: TIntegerField;
    cliente_filialnome: TIBStringField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    ds_cliente_filial: TDataSource;
    qryPedidoseq_filial: TIntegerField;
    Label8: TLabel;
    Fabricantes: TIBQuery;
    dsFabricantes: TDataSource;
    Fabricantescod_fabricante: TSmallintField;
    Fabricantesnome: TIBStringField;
    qryPedidocod_fabricante: TSmallintField;
    qryPedidolkpFabricante: TStringField;
    Label31: TLabel;
    dbcFabricante: TDBLookupComboBox;
    Fabricantesdescricao: TMemoField;
    clienteden_portosdest: TIBStringField;
    cbImages: TCheckBox;
    Fornecedorraz_social_reduz: TIBStringField;
    emb_esp_pedmesclar: TIBStringField;
    emb_especial_pedmesclar: TIBStringField;
    emb_esp_item_ped: TIBQuery;
    qryPedidodat_vertratadm: TDateField;
    qryPedidoies_li: TIBStringField;
    qryPedidodat_verli: TDateField;
    DBRadioGroup6: TDBRadioGroup;
    dbVerLi: TJvDBDatePickerEdit;
    lbVerLi: TLabel;
    JvDBDatePickerEdit3: TJvDBDatePickerEdit;
    Label91: TLabel;
    qryPedidodat_embalagem: TDateField;
    Label90: TLabel;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    qryPedidodat_ctn_marks: TDateField;
    Label92: TLabel;
    JvDBDatePickerEdit4: TJvDBDatePickerEdit;
    JvStaticText1: TJvStaticText;
    JvStaticText3: TJvStaticText;
    Label93: TLabel;
    DBEdit26: TDBEdit;
    Produtos: TIBQuery;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto_detpor: TMemoField;
    Produtosden_produto: TIBStringField;
    Produtospes_unitario: TFloatField;
    cbProdCliente: TCheckBox;
    Exportadorendereco: TMemoField;
    Importadorendereco: TMemoField;
    cliente_filialendereco: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryPedidoNewRecord(DataSet: TDataSet);
    procedure qryPedidoAfterCancel(DataSet: TDataSet);
    procedure qryPedidoAfterDelete(DataSet: TDataSet);
    procedure qryPedidoAfterPost(DataSet: TDataSet);
    procedure qryPedidoBeforeOpen(DataSet: TDataSet);
    procedure qryPedidoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryPedidoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure qryPedidoies_tip_pedidoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryPedidoies_tip_freteGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryPedidoies_situacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryPedidoProdutoNewRecord(DataSet: TDataSet);
    procedure qryPedidoProdutoBeforeOpen(DataSet: TDataSet);
    procedure qryPedidoProdutocod_produtoValidate(Sender: TField);
    procedure qryPedidoAfterClose(DataSet: TDataSet);
    procedure qryPedidoBeforeDelete(DataSet: TDataSet);
    procedure qryPedidocod_vendedorValidate(Sender: TField);
    procedure qryPedidoProdutoBeforeDelete(DataSet: TDataSet);
    procedure actCancelarProdutoExecute(Sender: TObject);
    procedure qryPedidoProdutoBeforeInsert(DataSet: TDataSet);
    procedure qryPedidoProdutoqtd_produtoValidate(Sender: TField);
    procedure fr_FmGrid1DBGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qryPedidoProdutoAfterPost(DataSet: TDataSet);
    procedure qryPedidoProdutoAfterOpen(DataSet: TDataSet);
    procedure qryVendedorcnpjGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryPedidoProdutopct_descontoValidate(Sender: TField);
    procedure mmtxt_observacao2Exit(Sender: TObject);
    procedure qryPedidoProdutoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryPedidoBeforeInsert(DataSet: TDataSet);
    procedure qryPedidoies_tip_freteSetText(Sender: TField;
      const Text: String);
    procedure act_F5Execute(Sender: TObject);
    procedure act_F6Execute(Sender: TObject);
    procedure clienteAfterScroll(DataSet: TDataSet);
    procedure clienteAfterClose(DataSet: TDataSet);
    procedure qryPedidoies_tip_entregaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryPedidoies_tip_entregaSetText(Sender: TField;
      const Text: String);
    procedure fr_FmNavigator1ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure fr_FmNavigator2ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure qryPedidocod_moedaValidate(Sender: TField);
    procedure edtvlr_freteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actExcelOrderExecute(Sender: TObject);
    procedure pedido_complementoBeforeOpen(DataSet: TDataSet);
    procedure pedido_complementoAfterCancel(DataSet: TDataSet);
    procedure pedido_complementoAfterClose(DataSet: TDataSet);
    procedure pedido_complementoAfterDelete(DataSet: TDataSet);
    procedure pedido_complementoAfterPost(DataSet: TDataSet);
    procedure pedido_complementoAfterOpen(DataSet: TDataSet);
    procedure pedido_complementoNewRecord(DataSet: TDataSet);
    procedure dtspedido_complementoStateChange(Sender: TObject);
    procedure qryPedidoProdutoBeforePost(DataSet: TDataSet);
    procedure qryPedidoProdutovlr_unitarioValidate(Sender: TField);
    procedure pedido_containerAfterDelete(DataSet: TDataSet);
    procedure pedido_containerAfterPost(DataSet: TDataSet);
    procedure pedido_containerNewRecord(DataSet: TDataSet);
    procedure pedido_containerqtd_containerValidate(Sender: TField);
    procedure pedido_containercod_containerValidate(Sender: TField);
    procedure JvDBUltimGrid1Enter(Sender: TObject);
    procedure JvDBUltimGrid2Enter(Sender: TObject);
    procedure JvDBUltimGrid2Exit(Sender: TObject);
    procedure AbrirExcel(FileName: String; Visible: boolean = False);
    procedure FecharExcel;
    procedure FecharExcel2;
    procedure qryPedidoAfterOpen(DataSet: TDataSet);
    procedure pedido_complementonum_pedido_forValidate(Sender: TField);
    procedure pedido_complementonum_pedido_cliValidate(Sender: TField);
    procedure Panel2Enter(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure emb_especial_pedAfterScroll(DataSet: TDataSet);
    procedure emb_especial_pedAfterPost(DataSet: TDataSet);
    procedure emb_especial_pedAfterDelete(DataSet: TDataSet);
    procedure emb_especial_item_pedAfterDelete(DataSet: TDataSet);
    procedure emb_especial_item_pedAfterPost(DataSet: TDataSet);
    procedure emb_especial_pedBeforeDelete(DataSet: TDataSet);
    procedure emb_especial_item_pedcod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryPedidoProdutocod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryPedidoProdutoCalcFields(DataSet: TDataSet);
    procedure emb_especial_item_pedCalcFields(DataSet: TDataSet);
    procedure qryPedidoBeforePost(DataSet: TDataSet);
    function ExcelPedido(Tipo: String): String ;
    procedure fr_FmNavigator2acDeleteExecute(Sender: TObject);
    procedure JvDBUltimGrid1UserSort(Sender: TJvDBUltimGrid;
      var FieldsToSort: TSortFields; SortString: String;
      var SortOK: Boolean);
    procedure pedido_pagamentoAfterDelete(DataSet: TDataSet);
    procedure pedido_pagamentoAfterPost(DataSet: TDataSet);
    procedure pedido_pagamentoNewRecord(DataSet: TDataSet);
    procedure JvDBUltimGrid3Enter(Sender: TObject);
    procedure JvDBUltimGrid3Exit(Sender: TObject);
    procedure JvDBUltimGrid3UserSort(Sender: TJvDBUltimGrid;
      var FieldsToSort: TSortFields; SortString: String;
      var SortOK: Boolean);
    function SeqPagamento(NumPedido: Largeint) : Integer;
    function SeqAdicDesc(NumPedido: Largeint) : Integer;
    procedure SpeedButton3Click(Sender: TObject);
    procedure CondicaoAfterOpen(DataSet: TDataSet);
    procedure PagamentoAfterOpen(DataSet: TDataSet);
    procedure pedido_adic_descAfterDelete(DataSet: TDataSet);
    procedure pedido_adic_descAfterPost(DataSet: TDataSet);
    procedure pedido_adic_descNewRecord(DataSet: TDataSet);
    procedure pedido_adic_descCalcFields(DataSet: TDataSet);
    procedure pedido_adic_descBeforePost(DataSet: TDataSet);
    procedure pedido_pagamentoAfterInsert(DataSet: TDataSet);
    procedure pedido_adic_descAfterInsert(DataSet: TDataSet);
    procedure actHistPrecosExecute(Sender: TObject);
    procedure pedido_adic_descvlr_adic_descValidate(Sender: TField);
    procedure pedido_adic_descvlr_adic_desc_espValidate(Sender: TField);
    procedure GerarPedido(Tipo: String);
    procedure GerarShipMarks;
    procedure actExcelGerarExecute(Sender: TObject);
    procedure GerarAdicionaisDescontos;
    procedure PedidoProdutoImpAfterPost(DataSet: TDataSet);
    procedure ImportarItens(Sender: TObject);
    procedure actExcelImportarExecute(Sender: TObject);
    procedure qryPedidoProdutovlr_unitario_espValidate(Sender: TField);
    procedure BancoBeforeOpen(DataSet: TDataSet);
    procedure qryPedidoProdutoAfterDelete(DataSet: TDataSet);
    procedure nota_fiscal_saida_produtoAfterPost(DataSet: TDataSet);
    procedure nota_fiscal_saida_produtoAfterDelete(DataSet: TDataSet);
    procedure actShipMarksExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure adicional_descontoAfterDelete(DataSet: TDataSet);
    procedure adicional_descontoAfterPost(DataSet: TDataSet);
    procedure qryPedidodat_liberacaoChange(Sender: TField);
    procedure popPedidoClick(Sender: TObject);
    procedure PedidoProdutoImpAfterDelete(DataSet: TDataSet);
    procedure actValidarExecute(Sender: TObject);
    procedure RecalcularSaldoFatura(NumPedido: LongInt);
    procedure fatura_pagamentoAfterDelete(DataSet: TDataSet);
    procedure fatura_pagamentoAfterPost(DataSet: TDataSet);
    procedure pedido_pagamentoBeforeDelete(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure pedido_pagamentodat_pagamentoValidate(Sender: TField);
    procedure actExcelAbrirExecute(Sender: TObject);
    procedure AtualizarItensExcel(DataSet: TDataSet; Var pLinha: Integer);
    procedure ListarProdutosCliente;
    procedure actExcelComissaoExecute(Sender: TObject);
    procedure pedido_complementonum_pedido_cliChange(Sender: TField);
    procedure pedido_complementonum_pedido_forChange(Sender: TField);
    procedure qryPedidodat_entregaChange(Sender: TField);
    procedure FornecedorBeforeOpen(DataSet: TDataSet);
    procedure FabricantesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Open_Filter;
    procedure Last_Pedido_Cliente(Cod_Cliente: tpCod_Cliente);
    procedure set_Value;
    procedure PedidoHeader(Tipo, Pag: String);
    procedure PedidoItensPackingList(Tipo: String);
    procedure ExcluirMarcados(DataSet: TDataSet; Grade: TDBGrid);
    procedure ItensShipMarks;
    procedure ExcluirItemProdList(NumSequencia: Integer; NumPedido: Longint);

  public
    { Public declarations }
    procedure Open_Pedido(Num_Pedido: tpNum_Pedido; Cod_Cliente: tpCod_Cliente);
    procedure Insert_Pedido(Cod_Cliente: tpCod_Cliente);
  end;


var
  lcid : Cardinal;
  WkBk : _Workbook;

  fr_ManPedido: Tfr_ManPedido;
  FileName,FileListaEsp : String;
  i : Real;
  s, s1, s2, s3, ped : String;
  Ant : String;
  tncm, bank, Endereco, pd : TStringList;
  FlagAlteraFatura, FlagConfirma, FlagPedido, FlagEntrega : boolean;
  SavePlace: TBookmark; { salvar a posição na tabela de produtos }
  DocGerado, IdiomaExporter : String;
  fComissao : boolean;
  Linha : Integer;
  mi : Integer;

  m : TMemo;

implementation

uses unConnection, SigIMP01_003, UnMenuCompl, SigIMP01_034, SigIMP01_045, UnMenu, SigIMP01_008,
  SigIMP01_023, SigIMP01_074;

{$R *.dfm}

function Tfr_ManPedido.ExcelPedido(Tipo: String): String ;
Var
  DIR_PLANILHAS : String;
  Ped, FileName : String;

begin
  { retornar o caminho da planilha excel de pedido/confirmação }
                                                                  
   { Diretório principal para geração dos Documentos }
   with dmCOM.parametro_comercial do
   begin
     Close;
     ParamByName('cod_empresa').Value := vgCod_Empresa;
     Open;
     DIR_PLANILHAS := FieldByName('dir_planilhas').AsString;
   end;
   if trim(DIR_PLANILHAS) = '' then
   begin
     Application.MessageBox('Pasta para os documentos não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
     Abort;
   end;
   { diretório para planilhas, mais subpasta com código do cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(qryPedidocod_cliente.AsString);
   { Diretório Principal \ Cliente \ ORDERS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\ORDERS';
   { Criar a Pasta com o mesmo nome do Número do Pedido }
   ped := trim(pedido_complementonum_pedido_cli.AsString);
   ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   ped := StringReplace(ped, '\', '-', [rfReplaceAll]);
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'ORDER ' + ped;
   { Pedido }
   if qryPedidoies_tip_pedido.AsString = 'O' then
        ped := 'ORDER ' + trim(pedido_complementonum_pedido_cli.AsString) + Tipo + FormatDateTime(' - DD.MM.YY', DataHoraServidor );
   { Confirmação }
   if qryPedidoies_tip_pedido.AsString = 'P' then
        ped := 'ORDER ' + trim(pedido_complementonum_pedido_cli.AsString) +
               ' - PROFORMA INVOICE ' + trim(pedido_complementonum_pedido_for.AsString) +
               Tipo + FormatDateTime(' - DD.MM.YY', DataHoraServidor );


   ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   ped := StringReplace(ped, '\', '-', [rfReplaceAll]);
   ped := trim(ped);
   FileName := DIR_PLANILHAS + '\' + trim(ped) + '.xls';
   Result := FileName;
end;

procedure Tfr_ManPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryPedido.State in [dsEdit, dsInsert] then
     qryPedido.Post;

  if qryPedidoProduto.State in [dsEdit, dsInsert] then
     qryPedidoProduto.Post;

  if pedido_complemento.State in [dsEdit, dsInsert] then
     pedido_complemento.Post;

  Fabricantes.Close;

  Application.OnMessage := fr_MenuPrincipal.AppMsg;
  FecharExcel;
  if Assigned(fr_Filtro) then
  begin
     fr_Filtro.Show;
     fr_Filtro.act_FiltrarExecute(nil);
     fr_Filtro.tbsPedido.Show;
  end;
  fr_ManPedido   := nil;
  ACtion         := caFree;
end;

procedure Tfr_ManPedido.qryPedidoNewRecord(DataSet: TDataSet);
begin
  { abrir parâmetros comercial }
  with dmCOM.parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
  { a geração do número aqui é sempre de forma automática }
	qryPedidonum_pedido.AsLargeInt  := dmCOM.GerarNumPedido;
  with dmCOM.ultimo_pedido_cliente do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString  := fr_Filtro.Clientescod_cliente.AsString;
    Open;
    if IsEmpty then { cliente não tem pedido ainda, obtem dados default de parametro comercial }
    begin
      qryPedidocod_empresa.AsInteger         := vgCod_Empresa;
      qryPedidocod_vendedor.AsInteger        := dmCOM.parametro_comercialcod_vendedor.AsInteger;
      qryPedidonum_lista.AsInteger           := 0; { 22.06.16 - não usar mais listas de preços }
      qryPedidocod_moeda.AsInteger           := fornecedorcod_moeda.AsInteger;
      qryPedidoies_situacao.AsString         := 'N'; { Normal }
      qryPedidodat_cadastro.AsDateTime       := Buscar_DateTime;
      qryPedidodat_emissao.AsDateTime        := Buscar_DateTime;
      qryPedidodat_entrega.Clear;
      qryPedidoies_tip_pedido.AsString       := 'O';  { Orçamento }
      qryPedidologin.AsString                := vgLogin;
      qryPedidovlr_frete.AsCurrency		    := 0.000;
      qryPedidocod_cliente.AsString          := fr_Filtro.Clientescod_cliente.AsString;
      qryPedidoies_pago.AsString             := 'N';
      qryPedidoseq_filial.Value              := 0;
    end { obter dados do último pedido do cliente }
    else begin
      qryPedidocod_empresa.AsInteger         := vgCod_Empresa;
      qryPedidocod_vendedor.AsInteger        := dmCOM.ultimo_pedido_clientecod_vendedor.AsInteger;
      qryPedidonum_lista.AsInteger           := 0; { 22.06.16 - não usar mais listas de preços }
      qryPedidocod_moeda.AsInteger           := dmCOM.ultimo_pedido_clientecod_moeda.AsInteger;
      qryPedidoies_situacao.AsString         := 'N'; { Normal }
      qryPedidodat_cadastro.AsDateTime       := Buscar_DateTime;
      qryPedidodat_emissao.AsDateTime        := Buscar_DateTime;
      qryPedidodat_entrega.Clear;
      qryPedidoies_tip_pedido.AsString       := 'O';  { Orçamento }
      qryPedidologin.AsString                := vgLogin;
      qryPedidovlr_frete.AsCurrency		      := 0.000;
      qryPedidocod_cliente.AsString          := fr_Filtro.Clientescod_cliente.AsString;
      qryPedidoies_pago.AsString             := 'N';
      qryPedidoterms_payment.Value           := dmCOM.ultimo_pedido_clienteterms_payment.AsString;
      qryPedidoseq_filial.Value              := dmCOM.ultimo_pedido_clienteseq_filial.AsInteger;              
    end;
  end;
  qryPedidoies_pallets.AsString := 'N';
  qryPedidoies_base_comissao.AsString := dmCOM.parametro_comercialies_base_comissao.Value;
  pedido_complemento.Insert;
end;

procedure Tfr_ManPedido.qryPedidoAfterCancel(DataSet: TDataSet);
begin
  pedido_complemento.CancelUpdates;

	with TIBDataSet(DataSet) do
   try
      CancelUpdates;
   finally
      Transaction.RollbackRetaining;
   end;
end;

procedure Tfr_ManPedido.qryPedidoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;
end;

procedure Tfr_ManPedido.qryPedidoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

   { atualizar Valores Especiais em pedido_produto quando não informados }
   with spr_vlr_esp_ped do
    begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
     ExecProc;
     try
       Transaction.CommitRetaining;
     except
       Transaction.RollbackRetaining;
     end;
   end;

   if pedido_complemento.State in [dsEdit, dsInsert] then pedido_complemento.Post
   else begin
     pedido_complemento.Edit;
     pedido_complemento.Post;
   end;


   { Atualizar a Edt_Factory em Pedido Produtos e Prod List Itens }
   if (FlagEntrega) then
   begin
      with spr_atualizar_etdfactory do
      begin
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
        ExecProc;
        try
          Transaction.CommitRetaining;
        except
          Transaction.RollbackRetaining;
        end;
      end;
      FlagEntrega := False;
   end;
   RecalcularSaldoFatura(qryPedidonum_pedido.AsLargeInt);
end;

procedure Tfr_ManPedido.qryPedidoBeforeOpen(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := True;
	if not TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).Prepare;

  qryVendedor.Close;
  qryVendedor.Open;
  qryMoeda.Close;
  qryMoeda.Open;
end;

procedure Tfr_ManPedido.qryPedidoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
	Exception_Cadastro(DataSet, E, Action);
end;

procedure Tfr_ManPedido.qryPedidoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
	Exception_Update(DataSet, E, UpdateKind, UpdateAction);
end;

procedure Tfr_ManPedido.qryPedidoies_tip_pedidoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   if Sender.AsString = 'O' then
      Text  := 'Order Number'
   else
   if Sender.AsString = 'P' then
      Text  := 'Proforma Invoice'
   else Text  := '...';
end;

procedure Tfr_ManPedido.qryPedidoies_tip_freteGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
	if not Sender.IsNull then
      if Sender.AsInteger = 1 then
         Text  := '1 (CIF)'
      else
      if Sender.AsInteger = 2 then
         Text  := '2 (FOB)';
end;

procedure Tfr_ManPedido.qryPedidoies_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
	if not Sender.IsNull then
      if Sender.AsString = ctSit_Normal then
      	Text := 'Normal'
      else
      if Sender.AsString = ctSit_Cancelado then
      	Text := 'Cancelado'
      else
      if Sender.AsString = ctSit_Romaneado then
      	Text := 'Romaneado'
      else
      if Sender.AsString = ctSit_Fechado then
      	Text := 'Faturado';
end;

procedure Tfr_ManPedido.Open_Pedido(Num_Pedido: tpNum_Pedido; Cod_Cliente: tpCod_Cliente);
begin
  with cliente do
  begin
    Close;
    ParamByName('cod_cliente').AsString	:= Cod_Cliente;
    Open;
  end;

  { obter paramêtros comerciais }
	with dmCOM.parametro_comercial do
  begin
    Active  := False;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Active  := True;
  end;

  portos_embarque.Open;
  portos_desembarque.Open;

  with qryPedido do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= vgCod_Empresa;
    ParamByName('num_pedido').AsInt64  := Num_Pedido;
    Open;
  end;

  { abre os complementos do pedido }
  with pedido_complemento do
  begin
    Close;
    ParamByName('cod_empresa').AsShort := qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64  := qryPedidonum_pedido.AsLargeInt;
    Open;
  end;

  { Produtos do pedido }
  with qryPedidoProduto do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64 	:= qryPedidonum_pedido.AsLargeInt;
    Open;
  end;

  { Faturas do Pedido }
  with spr_faturas_pedido do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').Value  	   := qryPedidonum_pedido.AsLargeInt;
    Open;
  end;

  { Padido Pagamento }
  with pedido_pagamento do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64 	:= qryPedidonum_pedido.AsLargeInt;
    Open;
  end;

  { Totais pago no pedido }
  with cby_pedido_pagamento_totais do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := Num_Pedido;
    Open;
  end;

  { Pedido Containers }
  with pedido_container do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64 	:= qryPedidonum_pedido.AsLargeInt;
    Open;
  end;

  { Pedido Adicional/Desconto }
  with pedido_adic_desc do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64 	:= qryPedidonum_pedido.AsLargeInt;
    Open;
  end;
  { informações bancárias }
  with Banco do
  begin
    Close;
    Open;
  end;

  { Embalagem Especial do Pedido }
  with emb_especial_ped do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64 	:= qryPedidonum_pedido.AsLargeInt;
    Open;
  end;

  with emb_especial_item_ped do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64 	:= qryPedidonum_pedido.AsLargeInt;
    ParamByName('seq').AsInteger         := emb_especial_ped.FieldByName('seq').AsInteger;
    Open;
  end;


  IdiomaExporter := qryPedidoies_idioma.AsString;


  { Informações do Exportador (fornecedor) }
  with Exportador do
  begin
    Close;
    ParamByName('cod_fornecedor').AsInteger :=  pedido_complementocod_fornecedor.AsInteger;
    Open;
  end;

  dgbBaseComissao.ReadOnly := not(qryPedidoies_preco_esp.Value = 'S');

  { Informações Cliente Filial }
  with cliente_filial do
  begin
    Close;
    ParamByName('cod_cliente').AsString	:= Cod_Cliente;
    Open;
  end;

  { fabricantes }
  Fabricantes.Open;

  dbVerLi.Visible := qryPedidoies_li.AsString = 'S';
  lbVerLi.Visible := qryPedidoies_li.AsString = 'S';
  lbVerLi.Refresh;
  dbVerLi.Refresh;
end;

procedure Tfr_ManPedido.Insert_Pedido(Cod_Cliente: tpCod_Cliente);
begin
	Open_Pedido(0, Cod_Cliente);
	if (ExecutarAcao(fr_FmNavigator1.ActionList1,  fr_FmNavigator1.acInsert)) and (qryPedido.State in [dsEdit, dsInsert]) then
		qryPedidocod_cliente.AsString  := Cod_Cliente;
end;

procedure Tfr_ManPedido.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
   if (qryPedido.State in [dsEdit, dsInsert]) or
      (qryPedidoProduto.State in [dsEdit, dsInsert]) then
   begin
      if (lkpCliente.Focused) then
      begin
         if Pesquisar('cliente') then
            if AbrirPesquisa then
               qryPedidocod_cliente.AsString  := Trim(dmConnection.qryPesquisa.FieldByName('campo1').AsString);
      end else
      if (edtcod_produto.Focused) then
      begin
         if Pesquisar('produto') then
            if AbrirPesquisa then
               qryPedidoProdutocod_produto.AsString  := Trim(dmConnection.qryPesquisa.FieldByName('campo1').AsString);
      end;
   end else fr_FmNavigator1.acClose.Execute;
end;

procedure Tfr_ManPedido.Open_Filter;
begin
	CriarForm(Tfr_Filtro, fr_Filtro, False, False, True);                   
end;

procedure Tfr_ManPedido.FormCreate(Sender: TObject);
begin
   pgcPedido.ActivePageIndex  := 0;
   FlagAlteraFatura := False;
   FlagConfirma := False;
   FlagPedido := False;
   FlagEntrega := False;
   DocGerado := '';
   FileListaEsp := '';
   pgPagDescAdic.ActivePage := tsPagamentos;
   // Formatação de Volumes na tela.
   pedido_complementovol_total.DisplayFormat := VolumeNumberFormat_fmt;
   pedido_complementovol_geral.DisplayFormat := VolumeNumberFormat_fmt;
   pedido_complementovol_pallets.DisplayFormat := VolumeNumberFormat_fmt;
   qryPedidoProdutovol_caixas.DisplayFormat := VolumeNumberFormat_fmt;
end;

procedure Tfr_ManPedido.qryPedidoProdutoNewRecord(DataSet: TDataSet);
begin
   { compartilhado por qryPedidoProduto e ProdutoPedidoImp }
   DataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
   DataSet.FieldByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
   { Gerar o próximo número de sequencia para os itens do pedido }
   with ProxSequencia do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := qryPedidocod_empresa.AsInteger;
     ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
     Open;
     if ProxSequenciaprox_sequencia.IsNull then
        DataSet.FieldByName('num_sequencia').AsInteger := 1
     else DataSet.FieldByName('num_sequencia').AsInteger := ProxSequenciaprox_sequencia.AsInteger;
     Close;
   end;

   DataSet.FieldByName('qtd_produto').AsFloat := 1.000;
   DataSet.FieldByName('qtd_cancelada').AsFloat := 0.000;
   DataSet.FieldByName('qtd_romaneada').AsFloat := 0.000;
   DataSet.FieldByName('qtd_faturada').AsFloat := 0.000;
   DataSet.FieldByName('vlr_unitario').AsCurrency := 0.000;
   DataSet.FieldByName('vlr_unitario_esp').AsFloat := 0.00;
   DataSet.FieldByName('dat_inspecao').Clear;
   DataSet.FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
   DataSet.FieldByName('ies_emb_esp').AsString := 'N';
   DataSet.FieldByName('ies_situacao').AsString := 'N';
   DataSet.FieldByName('seq_emb_esp').Clear;
   DataSet.FieldByName('seq_pallet').Clear;
   DataSet.FieldByName('qtd_pallet').Clear;
   DataSet.FieldByName('comprimento_pallet').Clear;
   DataSet.FieldByName('altura_pallet').Clear;
   DataSet.FieldByName('largura_pallet').Clear;
   DataSet.FieldByName('volume_pallet').Clear;
   DataSet.FieldByName('pes_bruto_pallet').Clear;
   DataSet.FieldByName('pes_liquido_pallet').Clear;
   // Alterado em 18.02.14 - todos os item recebem a Dta Entrega do Pedido.
   DataSet.FieldByName('etd_factory').Value := qryPedidodat_entrega.AsDateTime;
   DataSet.FieldByName('dat_upd_etd').Clear;
end;

procedure Tfr_ManPedido.qryPedidoProdutoBeforeOpen(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := True;
	if not TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).Prepare;
end;

procedure Tfr_ManPedido.qryPedidoProdutocod_produtoValidate(
  Sender: TField);
begin
	try
    qryProduto.DisableControls;
	  qryProduto.First;
   	if not qryProduto.Locate(qryProdutocod_produto.DisplayName, Sender.AsString, []) then
    try
    	Abort;
    finally
    	MessageDlg('Produto inexistente', mtError, [mbCancel], 0);
    end else
    if qryProdutoies_situacao.AsString = ctSit_Inativo then
    try
       Abort;
    finally
       MessageDlg('Produto inativo', mtError, [mbCancel], 0);
    end else
    if qryProdutoies_situacao.AsString = ctSit_Cancelado then
    try
       Abort;
    finally
       MessageDlg('Produto cancelado', mtError, [mbCancel], 0);
    end;
	finally
  	qryProduto.EnableControls;
  end;
  { obter preço do Produto }
  with dmCOM.PrecoItem(qryPedidoProdutocod_produto.AsString, qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger) do
  begin
     if (Existe) then
     begin
        qryPedidoProdutovlr_unitario.AsCurrency := PrecoItem;
        qryPedidoProdutoobs_preco.AsString := ObsPreco;
        qryPedidoProdutodat_preco.AsDateTime := DataPreco;
        qryPedidoProdutopct_comissao_c.AsFloat := Comis_c;
        qryPedidoProdutopct_comissao_f.AsFloat := Comis_f;
     end;
  end;
end;

procedure Tfr_ManPedido.qryPedidoAfterClose(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := False;
	if TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).UnPrepare;
end;


procedure Tfr_ManPedido.qryPedidoBeforeDelete(DataSet: TDataSet);
begin
   { Pedido Romaneado/Faturado, não permitir exclusão }
   if qryPedidoies_situacao.AsString = ctSit_Romaneado then
   begin
     MessageDlg('Pedido Romaneado não pode ser excluído, exclua antes a Fatura e o Romaneio', mtInformation, [mbOk], 0);
     Abort;
   end;

   if qryPedidoies_situacao.AsString = ctSit_Fechado then
   begin
     MessageDlg('Pedido Faturado não pode ser excluído, exclua antes a Fatura e o Romaneio', mtInformation, [mbOk], 0);
     Abort;
   end;

   { Copiar o Pedido atual para o Pedido Importado }
   with spr_pedido_to_importacao do
   begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
   end;

   { Excluir o Pedido da Production List }
   with spr_excped_prodlist do
   begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
   end;


   { Excluir Itens do Pedido }
   with del_pedido_produto do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
     ExecSQL;
   end;
   qryPedidoProduto.Refresh;              
   { excluir pagamentos efetuados }
   pedido_pagamento.First;
   while Not(pedido_pagamento.Eof) do
      pedido_pagamento.Delete;
   {excluir containers }
   pedido_container.First;
   while Not(pedido_container.Eof) do
      pedido_container.Delete;
   { excluir adicionais/descontos }
   pedido_adic_desc.First;
   while Not(pedido_adic_desc.Eof) do
      pedido_adic_desc.Delete;

   if Not(pedido_complemento.IsEmpty) then
      pedido_complemento.Delete;

   emb_especial_ped.First;
   while Not(emb_especial_ped.Eof) do
     emb_especial_ped.Delete;

   qryPedidocod_cliente.FocusControl;
end;

procedure Tfr_ManPedido.qryPedidocod_vendedorValidate(Sender: TField);
begin
	try
  	qryVendedor.DisableControls;
    qryVendedor.First;
    if not qryVendedor.Locate(qryVendedorcod_vendedor.DisplayName, Sender.AsInteger, []) then
	  try
  		Abort;
    finally
    	MessageDlg('Vendedor inexistente', mtError, [mbCancel], 0);
    end else
    if qryVendedories_situacao.AsString = ctSit_Inativo then
    try
       Sender.DataSet.Close;
       Abort;
    finally
       MessageDlg('Vendedor inativo', mtError, [mbCancel], 0);
    end else
    if qryVendedories_situacao.AsString = ctSit_Cancelado then
    try
       Sender.DataSet.Close;
       Abort;
    finally
       MessageDlg('Vendedor cancelado', mtError, [mbCancel], 0);
    end;
	finally
  	qryVendedor.EnableControls;
	end;
end;

procedure Tfr_ManPedido.qryPedidoProdutoBeforeDelete(DataSet: TDataSet);
begin
  if qryPedidoProdutoqtd_romaneada.AsFloat > 0 then
  begin
     MessageDlg('Produto Faturado não pode ser excluído', mtInformation, [mbOk], 0);
     Abort;
  end;

  if qryPedidoProdutoqtd_faturada.AsFloat > 0 then
  begin
     MessageDlg('Produto Faturado não pode ser excluído', mtInformation, [mbOk], 0);
     Abort;
  end;

  { excluir item de embalagem especial }
  if (qryPedidoProdutoies_emb_esp.AsString = 'S') then
  begin
    with excluir_item_emb_esp do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').AsLong := qryPedidoProdutonum_pedido.AsLargeInt;
      ParamByName('seq').AsInteger := qryPedidoProdutoseq_emb_esp.AsInteger;
      ParamByName('num_sequencia').AsInteger := qryPedidoProdutonum_sequencia.AsInteger;
      ExecQuery;
    end
  end;

  ExcluirItemProdList(qryPedidoProdutonum_sequencia.AsInteger, qryPedidonum_pedido.AsLargeInt);

 	if pgcPedido.ActivePage = tbsPedidoProduto then
     qryPedidoProdutocod_produto.FocusControl;
end;

procedure Tfr_ManPedido.actCancelarProdutoExecute(Sender: TObject);
begin
  { cancelar o saldo pendente de um produto do pedido }
  { somar a qtde pendente a qtde cancelada            }
  { zerar a qtde pendente                             }
  { somente cancela itens com qtd pendente > 0        }
  with qryPedidoProduto do
  begin
    if FieldByname('qtd_pendente').AsFloat = 0 then
    begin
       Application.MessageBox('Não existe quantidade pendente para cancelar neste item', 'Informação', MB_OK+MB_ICONINFORMATION);
       Abort;
    end
    else
      if Application.MessageBox('Deseja cancelar este item?', 'Atenção', MB_YESNO+MB_ICONQUESTION) = mrNo then Abort;

    Edit;
    FieldByName('qtd_cancelada').AsFloat := FieldByName('qtd_cancelada').AsFloat + FieldByName('qtd_pendente').AsFloat;
    FieldByName('qtd_pendente').AsFloat := 0;
    Post;
  end;

  ExcluirItemProdList(qryPedidoProdutonum_sequencia.AsInteger, qryPedidonum_pedido.AsLargeInt);

end;

procedure Tfr_ManPedido.ExcluirItemProdList(NumSequencia: Integer; NumPedido: Longint);          
begin
  with spr_excitem_prl do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;                                     
    ParamByName('num_seq_ped').Value := NumSequencia;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;
end;


procedure Tfr_ManPedido.qryPedidoProdutoBeforeInsert(DataSet: TDataSet);
begin
 	if pgcPedido.ActivePage = tbsPedidoProduto then
     qryPedidoProdutocod_produto.FocusControl;
end;

procedure Tfr_ManPedido.qryPedidoProdutoqtd_produtoValidate(
  Sender: TField);
begin
	if Sender.AsFloat <= 0 then
  try
    Abort;
  finally
  	MessageDlg('Quantidade deve ser maior que zero', mtError, [mbCancel], 0);
	end;

  { não permitir alterações em produtos faturados/romaneados }
  if qryPedidoProdutoqtd_romaneada.AsFloat > 0 then
  begin
     MessageDlg('Produto Romaneado não pode ser alterado', mtInformation, [mbOk], 0);
     qryPedidoProduto.Cancel;
     Abort;
  end;

  if qryPedidoProdutoqtd_faturada.AsFloat > 0 then
  begin
     MessageDlg('Produto Faturado não pode ser alterado', mtInformation, [mbOk], 0);
     qryPedidoProduto.Cancel;
     Abort;
  end;

  with dmCOM.CaixasMaster(qryPedidoProduto.FieldByName('cod_produto').AsString) do
  begin
    qryPedidoProduto.FieldByName('un_cx_master').AsFloat := Master;
  end;
  
  { calcular embalagens de acordo com a quantidade }
  with dmCOM.CalcEmbalagem(qryPedidoProduto.FieldByName('cod_produto').AsString, qryPedidoProduto.FieldByName('qtd_produto').AsFloat) do
  begin
    qryPedidoProdutoqtd_export_box.AsInteger := QtdExportBox;
    qryPedidoProdutoqtd_inner_box.AsFloat := QtdInnerBox;
    qryPedidoProdutovol_caixas.AsFloat := VolCaixas;
    qryPedidoProdutopes_liquido.AsFloat := PesLiquido;
    qryPedidoProdutopes_bruto.AsFloat := PesBruto;
    qryPedidoProdutoies_caixa_fechada.AsString := CaixaFechada;
  end;

  with qryPedidoProduto do
  begin
    FieldByName('qtd_pendente').AsFloat := FieldByName('qtd_produto').AsFloat -
                                           (FieldByName('qtd_cancelada').AsFloat + FieldByName('qtd_romaneada').AsFloat + FieldByName('qtd_faturada').AsFloat);
    FieldByName('vlr_liquido').AsFloat := FieldByName('qtd_pendente').AsFloat * FieldByName('vlr_unitario').AsFloat;
    FieldByName('vlr_liquido_esp').AsFloat := FieldByName('qtd_pendente').AsFloat * FieldByName('vlr_unitario_esp').AsFloat;
  end;
end;

procedure Tfr_ManPedido.fr_FmGrid1DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
	if (not qryPedidoProduto.IsEmpty) then
    if (qryPedidoProdutoqtd_faturada.AsFloat > 0) and (qryPedidoProdutoqtd_pendente.AsFloat > 0) then
    begin
    	 TDBGrid(Sender).Canvas.Brush.Color := clSkyBlue;
       TDBGrid(Sender).Canvas.Font.Color  := clBlack;
    end else
   	if (qryPedidoProdutoqtd_faturada.AsFloat > 0) then
    begin
    	 TDBGrid(Sender).Canvas.Brush.Color := clYellow;
       TDBGrid(Sender).Canvas.Font.Color  := clBlack;
    end else
    if (qryPedidoProdutoqtd_romaneada.AsFloat > 0) then
    begin                                                                    
    	 TDBGrid(Sender).Canvas.Brush.Color := clTeal;
       TDBGrid(Sender).Canvas.Font.Color  := clBlack;
    end else
    if ((qryPedidoProdutoqtd_cancelada.AsFloat > 0) and (qryPedidoProdutoqtd_pendente.AsFloat = 0)) then
    begin
    	 TDBGrid(Sender).Canvas.Brush.Color  := clRed;
       TDBGrid(Sender).Canvas.Font.Color  := clBlack;
    end;

  TDBGrid(Sender).DefaultDrawColumnCell(Rect, Datacol, Column, State);
end;

procedure Tfr_ManPedido.qryPedidoProdutoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      { Coloca Pedido em edição, para atualizar os campos calculados  }
      if Not(qryPedido.State in [dsInsert, dsEdit]) then
         qryPedido.Edit;

      qryPedido.Post;
      qryPedido.Refresh;
      if Not(pedido_complemento.State in [dsInsert, dsEdit]) then
         pedido_complemento.Edit;
      pedido_complemento.Post;
      pedido_complemento.Refresh;
   end;
   { houve alteração nos preços do produto ? }
   if (FlagAlteraFatura) then
   begin
     if (qryPedidoies_tip_pedido.AsString = 'P') then
     begin
       with spr_cal_romaneio_fatura do
       begin
         ParamByName('cod_empresa').Value := vgCod_Empresa;
         ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
         ParamByName('num_seq_pedido').Value := qryPedidoProdutonum_sequencia.AsInteger;
         ParamByName('vlr_unitario').Value := qryPedidoProdutovlr_unitario.AsFloat;
         ParamByName('vlr_unitario_esp').Value := qryPedidoProdutovlr_unitario_esp.AsFloat;
         ExecProc;
         try
           Transaction.CommitRetaining;
         except
           Transaction.RollbackRetaining;
         end;
       end;
     end;
     FlagAlteraFatura := False;
   end;
end;

procedure Tfr_ManPedido.qryPedidoProdutoAfterOpen(DataSet: TDataSet);
begin
   //DataSet.Last;
end;

procedure Tfr_ManPedido.qryVendedorcnpjGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
	if not Sender.IsNull then
	   Text := FormataCNPJCPF(Sender.AsString);
end;

procedure Tfr_ManPedido.qryPedidoProdutopct_descontoValidate(
  Sender: TField);
begin
	if Sender.AsFloat < 0.000 then
  try
  	Abort;
  finally
		MessageDlg('Valor inválido', mtError, [mbCancel], 0);
  end;
end;

procedure Tfr_ManPedido.mmtxt_observacao2Exit(Sender: TObject);
begin
	FieldRequired(qryPedidoProduto);
end;

procedure Tfr_ManPedido.qryPedidoProdutoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   Accept := DataSet['qtd_cancelada'] = 0;
end;

procedure Tfr_ManPedido.qryPedidoBeforeInsert(DataSet: TDataSet);
begin
   qryPedidocod_cliente.FocusControl;
end;

procedure Tfr_ManPedido.qryPedidoies_tip_freteSetText(Sender: TField;
  const Text: String);
begin
   if not Sender.IsNull then
      Sender.AsInteger := StrToInt(Text[1]);
end;

procedure Tfr_ManPedido.act_F5Execute(Sender: TObject);
begin
   pgcPedido.ActivePage := tbsPedido;
end;

procedure Tfr_ManPedido.act_F6Execute(Sender: TObject);
begin
   pgcPedido.ActivePage := tbsPedidoProduto;
end;

procedure Tfr_ManPedido.clienteAfterScroll(DataSet: TDataSet);
begin
	if DataSet['cod_cliente'] <> Null then
		with cliente_endereco do
   	begin
    	Close;
      ParamByName('cod_cliente').AsString := DataSet['cod_cliente'];
      Open;
   	end;
end;

procedure Tfr_ManPedido.Last_Pedido_Cliente(Cod_Cliente: tpCod_Cliente);
begin
end;

procedure Tfr_ManPedido.clienteAfterClose(DataSet: TDataSet);
begin
   cliente_endereco.Close;
end;

procedure Tfr_ManPedido.qryPedidoies_tip_entregaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
	if Sender.AsString = 'TP' then
  	Text := 'Ped. total - produto parcial'
  else
  if Sender.AsString = 'TT' then
  	Text := 'Ped. total - produto total'
  else
  if Sender.AsString = 'PP' then
   	Text := 'Ped. parcial - produto parcial'
  else
  if Sender.AsString = 'PT' then
  	Text := 'Ped. parcial - produto total';
end;

procedure Tfr_ManPedido.qryPedidoies_tip_entregaSetText(Sender: TField;
  const Text: String);
begin
	if Text = 'Ped. total - produto parcial' then
  	Sender.AsString := 'TP'
  else
  if Text = 'Ped. total - produto total' then
  	Sender.AsString := 'TT'
  else
  if Text = 'Ped. parcial - produto parcial' then
  	Sender.AsString := 'PP'
  else
  if Text = 'Ped. parcial - produto total' then
  	Sender.AsString := 'PT';
end;

procedure Tfr_ManPedido.fr_FmNavigator1ActionList1Execute(
  Action: TBasicAction; var Handled: Boolean);
begin
	if Action = fr_FmNavigator1.acInsert then Handled	:= not Permitir_Acesso(CtInsert, Buscar_Unit(ClassName));
  if Action = fr_FmNavigator1.acEdit then   Handled	:= not Permitir_Acesso(CtEdit, Buscar_Unit(ClassName));
  if Action = fr_FmNavigator1.acDelete then Handled	:= not Permitir_Acesso(CtDelete, Buscar_Unit(ClassName));

  fr_FmNavigator1.ActionList1Execute(Action, Handled);
end;

procedure Tfr_ManPedido.fr_FmNavigator2ActionList1Execute(
  Action: TBasicAction; var Handled: Boolean);
begin
	if Action = fr_FmNavigator2.acInsert then Handled	:= not Permitir_Acesso(CtInsert, Buscar_Unit(ClassName));
  if Action = fr_FmNavigator2.acEdit then   Handled	:= not Permitir_Acesso(CtEdit, Buscar_Unit(ClassName));
  if Action = fr_FmNavigator2.acDelete then Handled	:= not Permitir_Acesso(CtDelete, Buscar_Unit(ClassName));

  fr_FmNavigator2.ActionList1Execute(Action, Handled);
end;

procedure Tfr_ManPedido.qryPedidocod_moedaValidate(Sender: TField);
begin
(*	try
    qryMoeda.DisableControls;
    qryMoeda.First;
    if not qryMoeda.Locate(qryMoedacod_moeda.DisplayName, Sender.AsInteger, []) then
    try
    	Abort;
    finally
    	MessageDlg('Moeda inexistente', mtError, [mbCancel], 0);
    end else
	finally
  	qryMoeda.EnableControls;
  end;
*)
end;

procedure Tfr_ManPedido.edtvlr_freteExit(Sender: TObject);
begin
	FieldRequired(qryPedido, False);
end;

procedure Tfr_ManPedido.FormShow(Sender: TObject);
begin
  set_Value;
end;

procedure Tfr_ManPedido.set_Value;
begin


end;

procedure Tfr_ManPedido.actExcelOrderExecute(Sender: TObject);
begin
  DocGerado := 'PD';
  { Gerar Excel Pedido/Confirmação A/B }
  if (qryPedidoies_preco_esp.AsString = 'S') then
  begin
     GerarPedido('A');
     GerarPedido('B');
  end
  else
     GerarPedido('');

  Application.MessageBox('Order/Proforma Invoice Gerada','Informação', MB_OK+MB_ICONINFORMATION);
end;

procedure Tfr_ManPedido.GerarShipMarks;
Var
  DIR_PLANILHAS, PATH : String;

begin
  { Obrigatório o número do pedido para geração dos documentos }
  if (qryPedidoies_tip_pedido.AsString = 'O') and
     (trim(pedido_complementonum_pedido_cli.AsString) = '') then
  begin
    Application.MessageBox('Informe o número do Pedido do Cliente para gerar um documento', 'Informação', MB_OK+MB_ICONQUESTION);
    Abort;
  end;
  if (qryPedidoies_tip_pedido.AsString = 'P') and
     (trim(pedido_complementonum_pedido_for.AsString) = '') then
  begin
    Application.MessageBox('Informe o número de Confirmação do Pedido para gerar um documento', 'Informação', MB_OK+MB_ICONQUESTION);
    Abort;
  end;

   IdiomaExporter := qryPedidoies_idioma.AsString;

   { Informações do Exportador (fornecedor) }
   with Exportador do
   begin
     Close;
     ParamByName('cod_fornecedor').AsInteger :=  pedido_complementocod_fornecedor.AsInteger;
     Open;
   end;
   { Informações do Importador (cliente) }
   with Importador do
   begin
     Close;
     ParamByName('cod_cliente').AsString := qryPedidocod_cliente.AsString;
     Open;
   end;
   { Diretório principal para geração dos Documentos }
   with dmCOM.parametro_comercial do
   begin
     Close;
     ParamByName('cod_empresa').Value := vgCod_Empresa;
     Open;
     DIR_PLANILHAS := FieldByName('dir_planilhas').AsString;
   end;
   if trim(DIR_PLANILHAS) = '' then
   begin
     Application.MessageBox('Pasta para os documentos não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
     Abort;
   end;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { diretório para planilhas, mais subpasta com código do cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(qryPedidocod_cliente.AsString);
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Diretório Principal \ Cliente \ ORDERS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\ORDERS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Criar a Pasta com o mesmo nome do Número do Pedido }
   ped := trim(pedido_complementonum_pedido_cli.AsString);
   ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   ped := StringReplace(ped, '\', '-', [rfReplaceAll]);

   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'ORDER ' + ped;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Pedido }
   ped := 'SHIPPING MARKS - ORDER ' + trim(pedido_complementonum_pedido_cli.AsString);
   ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   ped := StringReplace(ped, '\', '-', [rfReplaceAll]);
   ped := trim(ped);
   FileName := DIR_PLANILHAS + '\' + trim(ped) + '.xls';

   dmCOM.parametro_comercialmod_plan_shipmarks.SaveToFile(FileName);
   AbrirExcel(FileName);

   { inicializar progress bar }
   Rect := panGauge.ClientRect;
   InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
   Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
   btnShipMarks.Enabled := False;
   Application.ProcessMessages;

   { Página da planilha }
   ExcelWorkSheet.Name := 'Shipping Marks';

   { cabeçalho no excel}
   with ExcelWorkSheet.Range['A1','A1'] do
   begin
     Value := trim(ped);
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
   end;

   {Gerar dados no excel}
   ItensShipMarks;

   { ajustar propriedades para impressão da página de condições }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$C$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$2';
     PrintTitleColumns := '';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := '';
     LeftFooter := '';
     LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.50, GetUserDefaultLCID);
     RightMargin := 0;
     TopMargin := ExcelWorksheet.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
     BottomMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     HeaderMargin := 0;
     FooterMargin := 0;
     PrintHeadings := False;
     PrintGridlines := False;
     PrintComments := xlPrintNoComments;
     CenterHorizontally := False;
     CenterVertically := False;
     Orientation := xlPortrait;
     Draft := False;
     PaperSize := xlPaperA4;
     FirstPageNumber := xlAutomatic;
     Order := xlDownThenOver;
     BlackAndWhite := False;
     Zoom := 90;
   end;

   { Salvar a planilha }
   ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
   FecharExcel2;

   { finalizar progress bar }
   btnShipMarks.Enabled := True;
   Ani.Terminate;
   Application.MessageBox('Shipping Marks Gerada','Informação', MB_OK+MB_ICONINFORMATION);

   AbrirExcel(FileName, True);
end;

procedure Tfr_ManPedido.GerarPedido(Tipo: String);
Var
  DIR_PLANILHAS, PATH : String;
  Linha1, Linha2, LinhaAux, cont, Cont_Caract : Integer;
  Tot : String;

procedure ConditionPage(Pagina, Tipo: String);  {Tipo = C -> Condition Page completa P -> Parte da condition + Remarks para assinaturas }
var
  l : Integer;
  s : String;
  r : Double;
  ind : integer;

begin
   { PÁGINA DAS CONDIÇÕES - CONDITIONS PAGE }
   if (Pagina = 'C') or (Pagina = 'P') then  // Gerar na página de Conditions e Confirmation
   begin
   Linha := 1;

   { Título da página, ORDER NUMBER quando for orçamento, ou PROFORMA INVOICE quando for pedido }
   if qryPedidoies_tip_pedido.AsString = 'O' then
   begin
    with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
    begin
      MergeCells := True;
      if (IdiomaExporter = 'I') then
         s := 'ORDER NUMBER: ' + trim(pedido_complementonum_pedido_cli.AsString)
      else if (IdiomaExporter = 'P') then
         s := 'NÚMERO DO PEDIDO: ' + trim(pedido_complementonum_pedido_cli.AsString)
      else if (IdiomaExporter = 'E') then
         s := 'NÚMERO DE PEDIDO: ' + trim(pedido_complementonum_pedido_cli.AsString);

      FormulaR1C1 := s;
      with Characters[1,Length(s)].Font do
      begin
         Name := 'Arial';
         Bold := True;
      end;
      with Characters[Length(s)+1,30].Font do
      begin
         Name := 'Arial';
         Bold := False;
      end;
    end;
   end
   else begin
    with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
    begin
      MergeCells := True;
      if (IdiomaExporter= 'I') then
         FormulaR1C1 := 'PROFORMA INVOICE NUMBER: ' + trim(pedido_complementonum_pedido_for.AsString)
      else if (IdiomaExporter= 'P') then
         FormulaR1C1 := 'CONFIRMAÇÃO DE VENDA NÚMERO: ' + trim(pedido_complementonum_pedido_for.AsString)
      else if (IdiomaExporter= 'E') then
         FormulaR1C1 := 'NÚMERO DE CONFIRMACIÓN DE VENTAS: ' + trim(pedido_complementonum_pedido_for.AsString);

      with Characters[1,70].Font do
      begin
        Name := 'Arial';
        Bold := True;
      end;
    end;
   end;
   { Formatação do título }
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Name := 'Arial';
     Font.Size := 14;
     if (Tipo = '') then Font.ColorIndex := 0;
     if (Tipo = 'A') then Font.ColorIndex := 0;
     if (Tipo = 'B') then Font.ColorIndex := 5;
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
   end;

   Inc(Linha);
   Inc(Linha);
   LinhaAux := Linha;

   { EXPORTER - Dados do Exportador }
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     if (IdiomaExporter= 'I') then
        Value := 'EXPORTER:'
     else if (IdiomaExporter= 'P') then
        Value := 'EXPORTADOR:'
     else if (IdiomaExporter= 'E') then
        Value := 'EXPORTADOR:';

     Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Font.Name := 'Arial';
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(Linha);
   { Nome do Exportador }
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     Value := Exportadorraz_social.AsString;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   { Endereço Exportador }
   Inc(Linha);
   Endereco := TStringList.Create;
   Endereco.Text := Exportadorendereco.Value;
   for ind := 0 to Endereco.Count -1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       MergeCells := True;     
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       Value2 := s;
       Font.Name := 'Arial';
       Font.Size := 10;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       RowHeight := 12.75 * Int(i);
     end;
     Inc(Linha);
   end;
   FreeAndNil(Endereco);

   with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
   begin
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;                                                      
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   { IMPORTER - Dados do Importador }
   Linha := Linha + 2;
   LinhaAux := Linha;

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     if (IdiomaExporter = 'I') then
        Value := 'IMPORTER:'
     else if (IdiomaExporter = 'P') then
        Value := 'IMPORTADOR:'
     else if (IdiomaExporter = 'E') then
        Value := 'IMPORTADOR:';

     FOnt.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(Linha);
   { Nome do Importador }
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     Value := Importadornom_cliente.AsString;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   { Endereço Importador }
   Inc(Linha);
   Endereco := TStringList.Create;
   //Endereco.Text := Importadorendereco.Value;
   Endereco.Text := cliente_filialendereco.AsString;
   for ind := 0 to Endereco.Count -1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       MergeCells := True;     
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       Value2 := s;
       Font.Name := 'Arial';
       Font.Size := 10;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       RowHeight := 12.75 * Int(i);
     end;
     Inc(Linha);
   end;
   FreeAndNil(Endereco);

   with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
   begin
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   { fim IMPORTER }

   { MANUFACTURER - Dados do Fabricante }
   if qryPedidocod_fabricante.Value > 0 then
   begin
      Linha := Linha + 2;
      LinhaAux := Linha;

      with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        MergeCells := True;      
        if (IdiomaExporter = 'I') then
           Value := 'MANUFACTURER (FACTORY):'
        else if (IdiomaExporter = 'P') then
           Value := 'FABRICANTE:'
        else if (IdiomaExporter = 'E') then
           Value := 'FABRICANTE:';

        FOnt.Name := 'Arial';
        Font.Bold := True;
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
      end;
      Inc(Linha);
      { Nome do Fabricante }
      with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        MergeCells := True;      
        Value := Fabricantesnome.AsString;
        Font.Name := 'Arial';
        Font.Bold := True;
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { Endereço Fabricante }
      Inc(Linha);
      Endereco := TStringList.Create;
      Endereco.Text := Fabricantesdescricao.AsString;
      for ind := 0 to Endereco.Count -1 do
      begin
        with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
        begin
          MergeCells := True;        
          s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
          i := (length(s) / 90);
          i := i + 1;
          Value2 := s;
          Font.Name := 'Arial';
          Font.Size := 10;
          Interior.ColorIndex := 0;
          Borders.LineStyle := xlContinuous;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlTop;
          WrapText := True;
          ShrinkToFit := False;
          RowHeight := 12.75 * Int(i);
        end;
        Inc(Linha);
      end;
      FreeAndNil(Endereco);

      with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
      begin
       with Borders[xlEdgeLeft] do
       begin
           LineStyle := xlContinuous;
           Weight := xlMedium;
           ColorIndex := xlAutomatic;
       end;
       with Borders[xlEdgeTop] do
       begin
           LineStyle := xlContinuous;
           Weight := xlMedium;
           ColorIndex := xlAutomatic;
       end;
       with Borders[xlEdgeBottom] do
       begin
           LineStyle := xlContinuous;
           Weight := xlMedium;
           ColorIndex := xlAutomatic;
       end;
       with Borders[xlEdgeRight] do
       begin
           LineStyle := xlContinuous;
           Weight := xlMedium;
           ColorIndex := xlAutomatic;
       end;
       Borders[xlInsideVertical].LineStyle := xlNone;
       Borders[xlInsideHorizontal].LineStyle := xlNone;
       Borders[xlDiagonalDown].LineStyle := xlNone;
       Borders[xlDiagonalUp].LineStyle := xlNone;
       VerticalAlignment := xlTop;
      end;
   end;
   { fim MANUFACTURER }

   Linha := Linha + 2;
   LinhaAux := Linha;

    if qryPedidoies_tip_pedido.AsString = 'P' then // PROFORMA INVOICE
    begin
      with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
       MergeCells := True;
       if (IdiomaExporter= 'I') then
       begin
          FormulaR1C1 := 'CLIENT''S ORDER NUMBER: ' + trim(pedido_complementonum_pedido_cli.AsString);
          Characters[1, 23].Font.Bold := True;
       end else if (IdiomaExporter= 'P') then
       begin
          FormulaR1C1 := 'NÚMERO DO PEDIDO DO CLIENTE: ' + trim(pedido_complementonum_pedido_cli.AsString);
          Characters[1, 29].Font.Bold := True;
       end else if (IdiomaExporter= 'E') then
       begin
          FormulaR1C1 := 'NÚMERO DE PEDIDO DEL CLIENTE: ' + trim(pedido_complementonum_pedido_cli.AsString);
          Characters[1, 29].Font.Bold := True;
       end;

       Font.Name := 'Arial';
       Font.Size := 10;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
      end;
    end;

    Inc(Linha);
    with ExcelWorksheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
    begin
      MergeCells := True;    
      if (IdiomaExporter= 'I') then
      begin
         if qryPedidoies_tip_pedido.AsString = 'O' then //orçamento
            FormulaR1C1 := 'VALUE OF ORDER :'
         else // confirmação
            FormulaR1C1 := 'VALUE OF THE SC. :';
      end else if (IdiomaExporter= 'P') then
      begin
         if qryPedidoies_tip_pedido.AsString = 'O' then //orçamento
            FormulaR1C1 := 'VALOR DO PEDIDO :'
         else // confirmação
            FormulaR1C1 := 'VALOR DA CONFIRMAÇÃO :';
      end else if (IdiomaExporter= 'E') then
      begin
         if qryPedidoies_tip_pedido.AsString = 'O' then //orçamento
            FormulaR1C1 := 'VALOR DEL PEDIDO :'
         else // confirmação
            FormulaR1C1 := 'VALOR DE CONFIRMACIÓN :';
      end;

     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     Borders[xlEdgeRight].LineStyle := xlNone;
    end;
    with ExcelWorksheet.Range['D'+IntToStr(Linha),'E'+IntToStr(Linha)] do
    begin
      MergeCells := True;
      if (Tipo = 'A') or (Tipo = '') then Value := qryPedidovlr_liquido.AsFloat;
      if (Tipo = 'B') then Value := qryPedidovlr_liquido_esp.AsFloat;
      Font.Name := 'Arial';
      Font.Size := 10;
      Interior.ColorIndex := 0;
      Borders.LineStyle := xlContinuous;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      Borders[xlEdgeRight].LineStyle := xlNone;
      ExcelWorkSheet.Cells.Item[Linha, 04].NumberFormat := '"US$:" #.###.##0,00';
    end;
    with ExcelWorksheet.Range['F'+IntToStr(Linha),'H'+IntToStr(Linha)] do
    begin
     MergeCells := True;    
     FormulaR1C1 := pedido_complementolkcCondicaoVenda.AsString;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := False;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
    end;
    with ExcelWorksheet.Range['I'+IntToStr(Linha),'J'+IntToStr(Linha)] do
    begin
      MergeCells := True;    
      if (IdiomaExporter= 'I') then s := 'DATE: '
      else if (IdiomaExporter= 'P') then s := 'DATA: '
      else if (IdiomaExporter= 'E') then s := 'FECHA: ';

      if qryPedidoies_tip_pedido.AsString = 'O' then { Pedido }
         FormulaR1C1 := s + FormatDateTime('DD/MM/YYYY', qryPedidodat_emissao.AsDateTime)
      else { Confirmação }
         FormulaR1C1 := s + FormatDateTime('DD/MM/YYYY', qryPedidodat_liberacao.AsDateTime);
      with Characters[1,6].Font do
      begin
         Name := 'Arial';
         Bold := True;;
         Size := 10;
         Strikethrough := False;
         Superscript := False;
         Subscript := False;
         OutlineFont := False;
         Shadow := False;
         Underline := xlUnderlineStyleNone;
         ColorIndex := xlAutomatic;
      end;
      with Characters[7,11].Font do
      begin
         Name := 'Arial';
         Bold := False;
         Size := 10;
         Strikethrough := False;
         Superscript := False;
         Subscript := False;
         OutlineFont := False;
         Shadow := False;
         Underline := xlUnderlineStyleNone;
         ColorIndex := xlAutomatic;
      end;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
    end;

    { Mostrar Condições de Pagamentos }
    if (IdiomaExporter= 'I') then s := 'TERMS OF PAYMENT:    '
    else if (IdiomaExporter= 'P') then s := 'TERMOS DE PAGAMENTO: '
    else if (IdiomaExporter= 'E') then s := 'CONDICIONES DE PAGO: ';

    if (qryPedidovlr_condicao.AsFloat > 0) then
      s := s + FormatFloat(' US$ ##0.00',qryPedidovlr_condicao.AsFloat) + ' ' + StringReplace(trim(qryPedidoterms_payment.AsString), #13#10, ' ', [rfReplaceAll])
    else
      s := s + StringReplace(trim(qryPedidoterms_payment.AsString), #13#10, ' ', [rfReplaceAll]);

    Linha := Linha + 1;  { linha inicial dos tipos dos produtos}
    i := Int(length(s) / 96);    { quantas linhas serão ocupadas pelo texto }
    Linha2 := Linha + Round(i);  { última linha do texto                    }

    with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha2)] do
    begin
      MergeCells := True;    
      FormulaR1C1 := s;
      WrapText := True;
      ShrinkToFit := False;

      with Characters[1,21].Font do
      begin
         Name := 'Arial';
         Bold := True;;
         Size := 9;
         Strikethrough := False;
         Superscript := False;
         Subscript := False;
         OutlineFont := False;
         Shadow := False;
         Underline := xlUnderlineStyleNone;
         ColorIndex := xlAutomatic;
      end;
      with Characters[22,Length(s1)].Font do
      begin
         Name := 'Arial';
         Bold := False;
         Size := 9;
         Strikethrough := False;
         Superscript := False;
         Subscript := False;
         OutlineFont := False;
         Shadow := False;
         Underline := xlUnderlineStyleNone;
         ColorIndex := xlAutomatic;
      end;
    end;
   Linha := Linha2;
   with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
   begin
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    with Borders[xlInsideHorizontal] do
    begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
    end;
    end;
    VerticalAlignment := xlTop;
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
   end;
   end; { Pagina = C or P }

   if (Pagina = 'C') then // Gerar apenas para página de Condition
   begin
   Inc(Linha);
   Inc(Linha);
   LinhaAux := Linha;

   if (IdiomaExporter= 'I') then
   begin
      if qryPedidoies_tip_pedido.AsString = 'O' then { orçamento }
         s := 'WE HEREBY SEND TO YOU THIS ORDER INCLUDING THE PRODUCTS MENTIONED BELOW'
      else { pedido }
         s := 'WE HEREBY CONFIRM HAVING SOLD TO YOU THE FOLLOWING GOODS ON THE TERMS AND CONDITIONS AS SPECIFIED BELOW';
   end else if (IdiomaExporter= 'P') then
   begin
      if qryPedidoies_tip_pedido.AsString = 'O' then { orçamento }
         s := 'ESTAMOS ENVIANDO NESSE PEDIDO OS SEGUINTES PRODUTOS ABAIXO MENCIONADOS'
      else { pedido }
         s := 'CONFIRMAMOS A VENDA DAS SEGUINTES MERCADORIAS SOB OS TERMOS E CONDIÇÕES CONFORME ESPECIFICADO ABAIXO';
   end else if (IdiomaExporter= 'E') then
   begin
      if qryPedidoies_tip_pedido.AsString = 'O' then { orçamento }
         s := 'ESTAMOS ENVIANDO EN ESTE PEDIDO LOS SIGUIENTES PRODUCTOS ABAJO MENCIONADOS'
      else { pedido }
         s := 'CONFIRMAMOS LA VENTA DE LAS SIGUIENTES MERCADERÍAS DE ACUERDO A LOS TÉRMINOS Y CONDICIONES ESPECIFICADOS ABAJO';
   end;


   i := Int(length(s) / 96);    { quantas linhas serão ocupadas pelo texto }
   Linha2 := Linha + Round(i);  { última linha do texto                    }

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha2)] do
   begin
     MergeCells := True;
     Value := s;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha2)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   { TIPOS DOS PRODUTOS + NCMS }
   Linha := Linha2 + 2;
   LinhaAux := Linha;
   tncm := TStringList.Create;
   dmCOM.TipoNcmPedido(qryPedidonum_pedido.AsLargeInt, tncm, (clientencm_pedido.Value = 'S'));

   for ind := 0 to tncm.Count -1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       s := tncm[ind];
       i := (length(s) / 105);
       i := i + 1;
       MergeCells := True;       
       Value2 := s;
       Font.Name := 'Arial';
       Font.Size := 8;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       RowHeight := 11.00 * Int(i);
     end;
     Inc(Linha);
   end;
   FreeAndNil(tncm);
   Dec(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   Inc(Linha);
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha+1)] do
   begin
     MergeCells := True;   
     if (IdiomaExporter= 'I') then
     begin
       if qryPedidoies_tip_pedido.AsString = 'O' then { orçamento }
         Value2 := 'ATTACHED TO THIS COVER PAGE WE ARE SENDING DETAILED PAGES WITH FULL DESCRIPTION OF ITEMS, '+
                   'QUANTITY OF EACH ITEM, PRICE THE IMPORTER WANTS TO PAY AND PACKING DETAILS OF EACH ITEM.'
       else { pedido }
            Value2 := 'ATTACHED TO THIS COVER PAGE WE ARE SENDING DETAILED PAGES WITH FULL DESCRIPTION OF ITEMS, '+
                      'QUANTITY CONFIRMED OF EACH ITEM, PRICE CONFIRMED OF EACH ITEM AND PACKING DETAILS OF EACH ITEM.';
     end else if (IdiomaExporter= 'P') then
     begin
       if qryPedidoies_tip_pedido.AsString = 'O' then { orçamento }
         Value2 := 'ANEXO A ESSA PÁGINA ESTAMOS ENVIANDO DESCRIÇÕES DETALHADAS DOS ITENS, QUANTIDADE E PREÇO QUE O IMPORTADOR QUER PAGAR DE CADA ITEM'
       else { pedido }
            Value2 := 'ANEXO A ESSA PÁGINA ESTAMOS ENVIANDO DESCRIÇÕES DETALHADAS DOS ITENS, QUANTIDADE, PREÇOS ' +
                      'CONFIRMADOS E DETALHES DE EMBALAGENS DE CADA ITEM.';
     end else if (IdiomaExporter= 'E') then
     begin
       if qryPedidoies_tip_pedido.AsString = 'O' then { orçamento }
         Value2 := 'ANEXO A ESTA PÁGINA ESTAMOS ENVIANDO DESCRIPCIONES DETALLADAS DE LOS ARTÍCULOS, CANTIDAD Y PRECIO QUE EL IMPORTADOR DESEA PAGAR DE CADA ITEM'
       else { pedido }
            Value2 := 'ANEXO A ESTA PÁGINA ESTAMOS ENVIANDO DESCRIPCIONES DETALLADAS DE LOS ARTÍCULOS, CANTIDAD, PRECIOS ' +
                      'CONFIRMADOS Y DETALLES DE EMBALAJE DE CADA ITEM. ';
     end;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha+1)] do
   begin
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    VerticalAlignment := xlTop;
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
   end;

   Linha := Linha + 3;
   LinhaAux := Linha;

   { PACKAGES INFORMATION }
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
      MergeCells := True;   
      if (IdiomaExporter= 'I') then
      begin
        Value := 'PACKAGES INFORMATION:'
      end else if (IdiomaExporter= 'P') then
      begin
        Value := 'INFORMAÇÕES SOBRE EMBALAGENS:';
      end else if (IdiomaExporter= 'E') then
      begin
        Value := 'INFORMACIONES SOBRE EMBALAJES:';
      end;
      Font.Bold := True;
      Font.Name := 'Arial';
      Font.Size := 10;
      Interior.ColorIndex := 0;
      Borders.LineStyle := xlContinuous;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
   end;

   { TOTAL VOLUME }
   Inc(Linha);
   s := '';
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     if (IdiomaExporter= 'I') then
        s := 'TOTAL VOLUME:'
     else if (IdiomaExporter= 'P') then
        s := 'VOLUME TOTAL:'
     else if (IdiomaExporter= 'E') then
        s := 'VOLUMEN TOTAL:';

     s := s +  FormatFloat(VolumeNumberFormatTotal, Arredonda(pedido_complementovol_geral.AsFloat, -2, rmUp));
     Value2 := s ;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     HorizontalAlignment := xlLeft;
   end;

   { TOTAL GROSS WEIGHT }
   Inc(Linha);
   s := '';
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter= 'I') then
        s := 'TOTAL GROSS WEIGHT:'
     else if (IdiomaExporter= 'P') then
        s := 'PESO BRUTO TOTAL:'
     else if (IdiomaExporter= 'E') then
        s := 'PESO BRUTO TOTAL:';

     s := s + FormatFloat('  #,##0.00 Kg', pedido_complementopes_bru_geral.AsFloat);
     MergeCells := True;     
     Value2 := s ;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     HorizontalAlignment := xlLeft;
   end;

   { TOTAL NET WEIGHT }
   Inc(Linha);
   s := '';
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter= 'I') then
        s := 'TOTAL NET WEIGHT:'
     else if (IdiomaExporter= 'P') then
        s := 'PESO LÍQUIDO TOTAL:'
     else if (IdiomaExporter= 'E') then
        s := 'PESO NETO TOTAL:';

     s := s + FormatFloat('  #,##0.00 Kg', pedido_complementopes_liq_geral.AsFloat);
     MergeCells := True;
     Value2 := s ;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     HorizontalAlignment := xlLeft;
   end;

   { QUANTITY OF CARTONS }
   Inc(Linha);
   s := '';
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
      if (IdiomaExporter= 'I') then
      begin
         s := 'QUANTITY OF CARTONS:'
      end else if (IdiomaExporter= 'P') then
      begin
         s := 'QUANTIDADE DE EMBALAGENS:'
      end else if (IdiomaExporter= 'E') then
      begin
         s := 'CANTIDAD DE EMBALAJES:'
      end;

      if (qryPedidoies_pallets.Value = 'S') then
      begin
         if (pedido_complementocxs_outpallet.Value > 0) then
            s := s + ' ' + FormatFloat(' #,##0', pedido_complementocxs_outpallet.Value) + ' CARTONS AND ';
         s := s + FormatFloat('  #,##0', pedido_complementoqtd_pallets.Value) + ' PALLETS';
      end else
         s := s + FormatFloat('  #,##0', pedido_complementoqtd_caixas.value) + ' CARTONS';

      MergeCells := True;         
      Value2 := s;
      Font.Bold := True;
      Font.Name := 'Arial';
      Font.Size := 10;
      Interior.ColorIndex := 0;
      Borders.LineStyle := xlNone;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;
   end;

  with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;
   end; { Pagina = 'C' }

   if (Pagina = 'C') or (Pagina = 'P') then
   begin
   { início - CONTAINERS }
   Inc(Linha);
   LinhaAux := Linha;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
      MergeCells := True;
      Interior.ColorIndex := 0;
      Borders.LineStyle := xlContinuous;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
   end;

   Inc(Linha);
   s := '';
   with pedido_container do
   begin
     First;
     while Not(EOF) do
     begin
      s := s + trim(pedido_containerqtd_container.AsString)+'x'+trim(pedido_containerlkTipoContainer.AsString);
      Next;
      if Not(EOF) then s := s + ',';
     end;
   end;

  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
  begin
    MergeCells := True;
    if (IdiomaExporter= 'I') then
       FormulaR1C1 := 'QUANTITY AND TYPE OF CONTAINER(S): ' + s
    else if (IdiomaExporter= 'P') then
       FormulaR1C1 := 'QUANTIDADE E TIPO DE CONTAINER(S): ' + s
    else if (IdiomaExporter= 'E') then
       FormulaR1C1 := 'CANTIDAD Y TIPO DE CONTAINER(S): ' + s;

    Characters[1,35].Font.Bold := True;
    Characters[36,20].Font.Bold := False;
    Font.Name := 'Arial';
    Font.Size := 10;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
  end;
  { fim }

  Inc(Linha);

   { início }
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter= 'I') then
        FormulaR1C1 := 'COUNTRY OF ORIGIN: ' + Exportadorpais_origem.AsString
     else if (IdiomaExporter= 'P') then
        FormulaR1C1 := 'PAÍS DE ORIGEM   : ' + Exportadorpais_origem.AsString
     else if (IdiomaExporter= 'E') then
        FormulaR1C1 := 'PAÍS DE ORIGEN   : ' + Exportadorpais_origem.AsString;

     Font.Name := 'Arial';
     Characters[1,19].Font.Bold := True;
     Characters[20,10].Font.Bold := False;
     Font.Name := 'Arial';
     Font.Size := 9;
   end;

  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
  begin
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
  end;
  { fim }


   { início }
   with ExcelWorksheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter= 'I') then
        FormulaR1C1 := 'COUNTRY OF ACQUISITION: ' + Exportadorpais_aquisicao.AsString
     else if (IdiomaExporter= 'P') then
        FormulaR1C1 := 'PAÍS DE ADQUISIÇÃO    : ' + Exportadorpais_aquisicao.AsString
     else if (IdiomaExporter= 'E') then
        FormulaR1C1 := 'PAÍS DE ADQUISICIÓN   : ' + Exportadorpais_aquisicao.AsString;

     Font.Name := 'Arial';
     Characters[1,24].Font.Bold := True;
     Characters[25,10].Font.Bold := False;
     Font.Size := 9;
     Font.Name := 'Arial';
   end;

  with ExcelWorkSheet.Range['D'+IntToStr(Linha),'G'+IntToStr(Linha)] do
  begin
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
  end;
  { fim }

   { início }
   with ExcelWorksheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter= 'I') then
        FormulaR1C1 := 'COUNTRY OF PROCEED : ' + Exportadorpais_procedencia.AsString
     else if (IdiomaExporter= 'P') then
        FormulaR1C1 := 'PAÍS DE PROCEDÊNCIA: ' + Exportadorpais_procedencia.AsString
     else if (IdiomaExporter= 'E') then
        FormulaR1C1 := 'PAÍS DE PROCEDENCIA: ' + Exportadorpais_procedencia.AsString;

     Font.Name := 'Arial';
     Characters[1,20].Font.Bold := True;
     Characters[21,10].Font.Bold := False;
     Font.Size := 9;
     Font.Name := 'Arial';
   end;

  with ExcelWorkSheet.Range['H'+IntToStr(Linha),'J'+IntToStr(Linha)] do
  begin
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
  end;
  { fim }

   Linha := Linha + 1;

   { início }
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter= 'I') then
        FormulaR1C1 := 'PORT OF LOADING:    ' + pedido_complementolkpPortoEmb.AsString
     else if (IdiomaExporter= 'P') then
        FormulaR1C1 := 'PORTO DE EMBARQUE:  ' + pedido_complementolkpPortoEmb.AsString
     else if (IdiomaExporter= 'E') then
        FormulaR1C1 := 'PUERTO DE EMBARQUE: ' + pedido_complementolkpPortoEmb.AsString;

     Name := 'Arial';
     Characters[1,20].Font.Bold := True;
     Characters[21,30].Font.Bold := False;
     Font.Size := 10;
     Font.Name := 'Arial';
   end;

  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
  begin
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
  end;
  { fim }

   { início }
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter= 'I') then
        FormulaR1C1 := 'PLACE OF DELIVERY: ' + pedido_complementolkpPortoDes.AsString
     else if (IdiomaExporter= 'P') then
        FormulaR1C1 := 'LOCAL DE ENTREGA : ' + pedido_complementolkpPortoDes.AsString
     else if (IdiomaExporter= 'E') then
        FormulaR1C1 := 'LUGAR DE ENTREGA : ' + pedido_complementolkpPortoDes.AsString;

     Name := 'Arial';
     Characters[1,19].Font.Bold := True;
     Characters[20,50].Font.Bold := False;
     Font.Size := 10;
     Font.Name := 'Arial';
   end;

  with ExcelWorkSheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
  begin
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;                                              
  end;
  { fim }

   Linha := Linha + 1;

   { Insurance - alterado em 22.09.14 }
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        FormulaR1C1 := 'INSURANCE TO BE EFFECTED BY: ' + dbcInsurance.Text
     else if (IdiomaExporter= 'P') then
        FormulaR1C1 := 'SEGURO EFETUADO POR        : ' + dbcInsurance.Text
     else if (IdiomaExporter= 'E') then
        FormulaR1C1 := 'SEGURO EFECTUADO POR       : ' + dbcInsurance.Text;

     Name := 'Arial';
     Characters[1,29].Font.Bold := True;
     Font.Size := 10;
     Font.Name := 'Arial';
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Linha := Linha + 1;


   { início }
   if (IdiomaExporter= 'I') then
   begin
     if qryPedidodat_entrega.IsNull then
        s := 'ESTIMATED TIME OF DELIVERY:  PLEASE INFORM'
     else
        s := 'ESTIMATED TIME OF DELIVERY:  ' + FormatDateTime('DD/MM/YYYY', qryPedidodat_entrega.AsDateTime)
   end else if (IdiomaExporter= 'P') then
   begin
     if qryPedidodat_entrega.IsNull then
        s := 'DATA ESTIMADA PARA A ENTREGA: POR FAVOR INFORME'
     else
        s := 'DATA ESTIMADA PARA A ENTREGA: ' + FormatDateTime('DD/MM/YYYY', qryPedidodat_entrega.AsDateTime)
   end else if (IdiomaExporter= 'E') then
   begin
     if qryPedidodat_entrega.IsNull then
        s := 'FECHA ESTIMADA PARA LA ENTREGA: POR FAVOR INFORME'
     else
        s := 'FECHA ESTIMADA PARA LA ENTREGA: ' + FormatDateTime('DD/MM/YYYY', qryPedidodat_entrega.AsDateTime)
   end;


   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[1,29].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 10;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[30,13].Font do
   begin
     Name := 'Arial';
     Bold := False;
     Size := 10;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;      

  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
  begin
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
  end;
  { fim }


   Linha := Linha + 1;

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        FormulaR1C1 := 'TOLERANCE : QUANTITY & AMOUNT ALLOWANCE +/- ' + pedido_complementolkpPortoDes.AsString
     else if (IdiomaExporter= 'P') then
        FormulaR1C1 := 'TOLERANCIA: QUANTITY & AMOUNT ALLOWANCE +/- ' + pedido_complementolkpPortoDes.AsString
     else if (IdiomaExporter= 'E') then
        FormulaR1C1 := 'TOLERANCIA: QUANTITY & AMOUNT ALLOWANCE +/- ' + pedido_complementolkpPortoDes.AsString;

     Name := 'Arial';
     Characters[1,11].Font.Bold := True;
     Font.Size := 10;
     Font.Name := 'Arial';
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

  with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlContinuous;
    Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    VerticalAlignment := xlTop;
   end;
   end; { Pagina = 'C' or Pagina = 'P' }


   if (Pagina = 'C') then
   begin
   { início }
   Linha := Linha + 1;
   Linha1 := Linha;

   { SHIPPING MARKS }
   if qryPedidocod_fabricante.Value = 0 then Linha := Linha + 2
                                        else Linha := Linha + 3;
   Linha1 := Linha;

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'SHIPPING MARKS ON PACKAGES'
     else if (IdiomaExporter = 'P') then Value := 'MARCAS NAS CAIXAS'
     else if (IdiomaExporter = 'E') then Value := 'MARCAS EN LAS CAJAS';

     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlCenter;
     ShrinkToFit := False;
   end;
   Inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'SIDE 1 (FRONT) OF THE PACKAGE'
     else if (IdiomaExporter = 'P') then Value := 'LADO 1 (FRONTAL) DAS CAIXAS'
     else if (IdiomaExporter = 'E') then Value := 'PARTE 1 (FRONTAL) DE LAS CAJAS';
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     WrapText := True;
     ShrinkToFit := False;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     if (IdiomaExporter = 'I') then Value := 'SIDE 2 (BACK) OF THE PACKAGE'
     else if (IdiomaExporter = 'P') then Value := 'LADO 2 (ATRÁS) DAS CAIXAS'
     else if (IdiomaExporter = 'E') then Value := 'PARTE 2 (DETRÁS) DE LAS CAJAS';
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     ShrinkToFit := False;
   end;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlContinuous;
    Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    VerticalAlignment := xlTop;
   end;
   inc(Linha);
   Linha1 := Linha;

   { Shipping Marks }

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     Value := Importadornom_cliente.AsString;
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     ShrinkToFit := False;
     WrapText := True;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     if (IdiomaExporter = 'I') then Value := 'NAME OF THE PRODUCT IN ' + dmCOM.IdiomaDescProdutos(IdiomaExporter, Importadoridioma_shipmarks.Value)
     else if (IdiomaExporter = 'P') then Value := 'NOME DO PRODUTO EM ' + dmCOM.IdiomaDescProdutos(IdiomaExporter, Importadoridioma_shipmarks.Value)
     else if (IdiomaExporter = 'E') then Value := 'NOMBRE DEL PRODUCTO EN ' + dmCOM.IdiomaDescProdutos(IdiomaExporter, Importadoridioma_shipmarks.Value);
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     RowHeight := 12.75;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     ShrinkToFit := False;
     WrapText := True;
   end;
   inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value :=  'DESTINATION PORT: ' + trim(pedido_complementolkpPortoDes.AsString)
     else if (IdiomaExporter = 'P') then Value :=  'PORTO DE DESTINO: ' + trim(pedido_complementolkpPortoDes.AsString)
     else if (IdiomaExporter = 'E') then Value :=  'PUERTO DE DESTINO: ' + trim(pedido_complementolkpPortoDes.AsString);
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     ShrinkToFit := False;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'CLIENT´S CODE OF THE PRODUCT IN BOLD LETTERS AND BIG SIZE'
     else if (IdiomaExporter = 'P') then Value := 'CODIGO DO PRODUTO NO CLIENTE EM NEGRITO E TAMANHO GRANDE'
     else if (IdiomaExporter = 'E') then Value := 'EL CÓDIGO DE PRODUCTO EN CLIENTE EN NEGRITA Y TAMAÑO GRANDE';
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     RowHeight := 25.50;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     ShrinkToFit := False;
     WrapText := True;
   end;
   inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'NAME OF THE PRODUCT IN ' + dmCOM.IdiomaDescProdutos(IdiomaExporter, Importadoridioma_shipmarks.Value)
     else if (IdiomaExporter = 'P') then Value := 'NOME DO PRODUTO EM ' + dmCOM.IdiomaDescProdutos(IdiomaExporter, Importadoridioma_shipmarks.Value)
     else if (IdiomaExporter = 'E') then Value := 'NOMBRE DEL PRODUCTO EN ' + dmCOM.IdiomaDescProdutos(IdiomaExporter, Importadoridioma_shipmarks.Value);
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     RowHeight := 12.75;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     ShrinkToFit := False;
     WrapText := True;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     if (IdiomaExporter = 'I') then Value := 'ORDER NUMBER: '
     else if (IdiomaExporter = 'P') then Value := 'NÚMERO DO PEDIDO: '
     else if (IdiomaExporter = 'E') then Value := 'NUMERO DEL PEDIDO:';
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     ShrinkToFit := False;
   end;
   inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     Value := '';
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     RowHeight := 12.75;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     ShrinkToFit := False;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then  Value := 'CARTON NUMBER:'
     else if (IdiomaExporter = 'P') then Value := 'NÚMERO DO VOLUME:'
     else if (IdiomaExporter = 'E') then  Value := 'VOLUMEN NUMERO:';
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     ShrinkToFit := False;
   end;
   inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'CLIENT´S CODE OF THE PRODUCT IN BOLD LETTERS AND BIG SIZE'
     else if (IdiomaExporter = 'P') then Value := 'CODIGO DO PRODUTO NO CLIENTE EM NEGRITO E TAMANHO GRANDE'
     else if (IdiomaExporter = 'E') then Value := 'EL CÓDIGO DE PRODUCTO EN CLIENTE EN NEGRITA Y TAMAÑO GRANDE';
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     RowHeight := 25.50;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     ShrinkToFit := False;
     WrapText := True;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'NET WEIGHT (Kg):'
     else if (IdiomaExporter = 'P') then Value := 'PESO LÍQUIDO (Kg):'
     else if (IdiomaExporter = 'E') then Value := 'PESO NETO (Kg):';
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     ShrinkToFit := False;
   end;
   inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     Value := '';
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     RowHeight := 12.75;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     ShrinkToFit := False;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'GROSS WEIGHT (Kg):'
     else if (IdiomaExporter = 'P') then Value := 'PESO BRUTO (Kg):'
     else if (IdiomaExporter = 'E') then Value := 'PESO BRUTO (Kg):';
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     ShrinkToFit := False;
   end;
   inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'MADE IN ' + Exportadorpais_origem.AsString
     else if (IdiomaExporter = 'P') then Value := 'PRODUZIDO EM ' + Exportadorpais_origem.AsString
     else if (IdiomaExporter = 'E') then Value := 'HECHO EN ' + Exportadorpais_origem.AsString;
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     RowHeight := 12.75;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     ShrinkToFit := False;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then Value := 'QUANTITY OF UNITS:'
     else if (IdiomaExporter = 'P') then Value := 'QUANTIDADE DE UNIDADES:'
     else if (IdiomaExporter = 'E') then Value := 'CANTIDAD DE UNIDADES:';
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     ShrinkToFit := False;
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'E'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;
   with ExcelWorkSheet.Range['F'+IntToStr(Linha1),'J'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;
   // fim Shipping Marks

   Linha := Linha + 2;
   LinhaAux := Linha;
   { INFORMAÇÕES PARA PAGAMENTO }
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        Value2 := 'BANKING INFORMATION FOR THE PAYMENT:'
     else if (IdiomaExporter= 'P') then
        Value2 := 'INFORMAÇÕES BANCÁRIAS PARA PAGAMENTO:'
     else if (IdiomaExporter= 'E') then
        Value2 := 'INFORMACIONES BANCARIAS PARA PAGO:';

     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 12;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Linha := Linha + 1;
   { Informações do Beneficiário }
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        Value2 := 'BENEFICIARY´S INFORMATION:'
     else if (IdiomaExporter= 'P') then
        Value2 := 'BENEFICIÁRIO:'
     else if (IdiomaExporter= 'E') then
        Value2 := 'BENEFICIARIO:';

     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Linha := Linha + 1;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     FormulaR1C1 := Exportadorraz_social.AsString;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Font.Strikethrough := False;
     Font.Superscript := False;
     Font.Subscript := False;
     Font.OutlineFont := False;
     Font.Shadow := False;
     Font.Underline := xlUnderlineStyleNone;
     Font.ColorIndex := xlAutomatic;
     RowHeight := 12.75;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Endereco := TStringList.Create;
   Endereco.Text := Exportadorendereco.Value;
   Inc(Linha);
   for ind := 0 to Endereco.Count -1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       MergeCells := True;
       Value2 := s;
       Font.Name := 'Arial';
       Font.Size := 10;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       RowHeight := 12.75 * Int(i);
     end;
     Inc(Linha);
   end;
   FreeAndNil(Endereco);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     with Borders[xlEdgeBottom] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;
   end;
   { Informações Bancárias }
   Bank := TStringList.Create;
   Bank.Text := Bancotxt_descricao.AsString;
   Inc(Linha);
   for ind := 0 to Bank.Count -1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       s := StringReplace(Trim(Bank[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       MergeCells := True;
       Value2 := s;
       Font.Name := 'Arial';
       Font.Size := 10;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       RowHeight := 12.75 * Int(i);
     end;
     Inc(Linha);
   end;
   FreeAndNil(Bank);

  with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   Linha := Linha + 1;
   { ajustar propriedades para impressão da página de condições }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$J$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$2';
     PrintTitleColumns := '';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := '';
     LeftFooter := '';
     LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.78740157480315, GetUserDefaultLCID);
     RightMargin := 0;
     TopMargin := ExcelWorksheet.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
     BottomMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     HeaderMargin := 0;
     FooterMargin := 0;
     PrintHeadings := False;
     PrintGridlines := False;
     PrintComments := xlPrintNoComments;
     CenterHorizontally := False;
     CenterVertically := False;
     Orientation := xlPortrait;
     Draft := False;
     PaperSize := xlPaperA4;
     FirstPageNumber := xlAutomatic;
     Order := xlDownThenOver;
     BlackAndWhite := False;
     Zoom := 95;
    end;
   end; { Pagina = 'C' }

   if (Pagina = 'P') then // Gerar apenas para Página de Confirmation
   begin
      Linha := Linha + 2;
      LinhaAux := Linha;

      { Remarks }
      with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        MergeCells := True;
        Value2 := 'REMARKS:';
        Font.Name := 'Arial';
        Font.Bold := True;
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlLeft;                 
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 15;
      end;

      Linha := Linha + 1;

      { Linhas de Memo1 para Proforma Invoice }
      for mi := 0 to ChinesTxt.Memo1.Lines.Count - 1 do
      begin
         with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
         begin
          MergeCells := True;
          Value2 := ChinesTxt.Memo1.Lines[mi];
          Font.Bold := False;
          Font.Name := 'Arial';
          Font.Size := 8;
          Interior.ColorIndex := 0;
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlTop;
          WrapText := True;
          ShrinkToFit := False;                                      
          Borders.LineStyle := xlContinuous;
          Rows.RowHeight := 12;
         end;
         Inc(Linha);                                                  
      end;


      Linha := Linha + 3;
      with ExcelWorkSheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
      begin
        MergeCells := True;
        Value2 := 'Confirmed by Buyer (Signature and stamp)';
        Font.Name := 'Arial';
        Font.Bold := False;
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlNone;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12;
      end;
      with ExcelWorkSheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        MergeCells := True;
        Value2 := 'Confirmed by Seller (Signature and stamp)';
        Font.Name := 'Arial';
        Font.Bold := False;
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlNone;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12;
      end;

      Inc(Linha);

      with ExcelWorkSheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
      begin
        MergeCells := True;
        Value2 := ' Confirmado por el Comprador(Firma y sello)';
        Font.Name := 'Arial';
        Font.Bold := False;
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlNone;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12;
      end;
      with ExcelWorkSheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        MergeCells := True;
        Value2 := ' Confirmado por el vendedor (Firma y sello))';
        Font.Name := 'Arial';
        Font.Bold := False;
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlNone;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12;
      end;

      Linha := Linha + 1;

      with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
      begin
       Borders[xlDiagonalDown].LineStyle := xlNone;
       Borders[xlDiagonalUp].LineStyle := xlNone;
       with Borders[xlEdgeLeft] do
       begin
           LineStyle := xlContinuous;
           Weight := xlMedium;
           ColorIndex := xlAutomatic;
       end;
       with Borders[xlEdgeTop] do
       begin
           LineStyle := xlContinuous;
           Weight := xlMedium;
           ColorIndex := xlAutomatic;
       end;
       with Borders[xlEdgeBottom] do
       begin
           LineStyle := xlContinuous;
           Weight := xlMedium;
           ColorIndex := xlAutomatic;
       end;
       with Borders[xlEdgeRight] do
       begin
           LineStyle := xlContinuous;
           Weight := xlMedium;
           ColorIndex := xlAutomatic;
       end;
       Borders[xlInsideVertical].LineStyle := xlNone;
       Borders[xlInsideHorizontal].LineStyle := xlNone;
       VerticalAlignment := xlTop;
      end;

      Linha := Linha + 1;
      { ajustar propriedades para impressão da página de condições }
      ExcelWorksheet.PageSetup.PrintArea := '$A$1:$J$'+IntToStr(Linha);
      with ExcelWorksheet.PageSetup do
      begin
        PrintTitleRows := '$1:$2';
        PrintTitleColumns := '';
        LeftHeader := '';
        CenterHeader := '';
        RightHeader := '';
        LeftFooter := '';
        LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.78740157480315, GetUserDefaultLCID);
        RightMargin := 0;
        TopMargin := ExcelWorksheet.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
        BottomMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
        HeaderMargin := 0;
        FooterMargin := 0;
        PrintHeadings := False;
        PrintGridlines := False;
        PrintComments := xlPrintNoComments;
        CenterHorizontally := False;
        CenterVertically := False;
        Orientation := xlPortrait;
        Draft := False;
        PaperSize := xlPaperA4;
        FirstPageNumber := xlAutomatic;
        Order := xlDownThenOver;
        BlackAndWhite := False;
        Zoom := 95;
       end;

   end;

  { FIM DA PÁGINA DAS CONDIÇÕES - CONDITIONS PAGE }
end;

begin
  Application.CreateForm(TChinesTxt, ChinesTxt);

  { Obrigatório o número do pedido para geração dos documentos }
  if (qryPedidoies_tip_pedido.AsString = 'O') and
     (trim(pedido_complementonum_pedido_cli.AsString) = '') then
  begin
    Application.MessageBox('Informe o número do Pedido do Cliente para gerar um documento', 'Informação', MB_OK+MB_ICONQUESTION);
    Abort;
  end;
  if (qryPedidoies_tip_pedido.AsString = 'P') and
     (trim(pedido_complementonum_pedido_for.AsString) = '') then
  begin
    Application.MessageBox('Informe o número de Confirmação do Pedido para gerar um documento', 'Informação', MB_OK+MB_ICONQUESTION);
    Abort;
  end;

   { Gerar em uma planilha Excel com o Pedido }
   IdiomaExporter:= qryPedidoies_idioma.AsString;

   { Informações do Exportador (fornecedor) }
   with Exportador do
   begin
     Close;
     ParamByName('cod_fornecedor').AsInteger :=  pedido_complementocod_fornecedor.AsInteger;
     Open;
   end;
   { Informações do Importador (cliente) }
   with Importador do
   begin
     Close;
     ParamByName('cod_cliente').AsString := qryPedidocod_cliente.AsString;
     Open;
   end;
   { Obter diretório principal para geração dos Documentos e Modelo de Planilha Excel em Branco }
   with dmCOM.parametro_comercial do
   begin
     Close;
     ParamByName('cod_empresa').Value := vgCod_Empresa;
     Open;
     DIR_PLANILHAS := FieldByName('dir_planilhas').AsString;
   end;
   if trim(DIR_PLANILHAS) = '' then
   begin
     Application.MessageBox('Pasta para os documentos não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
     Abort;
   end;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { diretório para planilhas, mais subpasta com código do cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(qryPedidocod_cliente.AsString);
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Diretório Principal \ Cliente \ ORDERS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\ORDERS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Criar a Pasta com o mesmo nome do Número do Pedido }
   ped := trim(pedido_complementonum_pedido_cli.AsString);
   ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   ped := StringReplace(ped, '\', '-', [rfReplaceAll]);

   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'ORDER ' + ped;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Order }
   if qryPedidoies_tip_pedido.AsString = 'O' then
        ped := 'ORDER ' + trim(pedido_complementonum_pedido_cli.AsString) + Tipo + FormatDateTime(' - DD.MM.YY', DataHoraServidor );
   { Proforma }
   if qryPedidoies_tip_pedido.AsString = 'P' then
        ped := 'ORDER ' + trim(pedido_complementonum_pedido_cli.AsString) +
               ' - PROFORMA INVOICE ' + trim(pedido_complementonum_pedido_for.AsString) +
               Tipo + FormatDateTime(' - DD.MM.YY', DataHoraServidor );

   ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   ped := StringReplace(ped, '\', '-', [rfReplaceAll]);
   ped := trim(ped);

   FileName := DIR_PLANILHAS + '\' + trim(ped) + '.xls';
   { Se planilha já existe, excluir a mesma }
   if FileExists(Filename) then begin
      DeleteFile(FileName);
   end;

   { inicializar progress bar }
   Rect := panGauge.ClientRect;
   InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
   Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
   btnOrderProforma.Enabled := False;
   Application.ProcessMessages;

   { Salvar uma planilha em branco e abrir }
   dmCOM.parametro_comercialmod_plan_excel.SaveToFile(FileName);
   AbrirExcel(FileName);

   { Atenção:                                                                      }
   { Processar primeiro a página de específicações e depois a página de condições  }
   { a fim de obter passar os totais das específicações para a página de condições }

   { Verificar se Pedido tem produtos duplicados }
   with ProdutosDuplicados do
   begin
    Close;
    ParamByName('cod_empresa').AsInteger	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').Value  	   := qryPedidonum_pedido.AsLargeInt;
    Open;
   end;

   { PÁGINA DE SPECIFICATION }
   ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
   ExcelWorksheet.Activate(lcid);
   ExcelWorkSheet.Name := 'Specification';

   {Gerar cabeçalho no excel}
   Linha := 1; // variável p/ referencia de linha
   { Packing Page }
   PedidoHeader(Tipo, 'P');
   PedidoItensPackingList(Tipo);

   { Totais }
   LinhaAux := Linha;
   { TOTAL FOB }
   Linha := Linha + 1;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
     MergeCells := True;   
     Value := 'TOTAL ' + trim(pedido_complementolkcCondicaoVenda.AsString) + ' US$';
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '#.##0,00';
   ExcelWorkSheet.Cells.Item[Linha, 10].Formula := '=ROUND(SUM(J8:J'+IntTostr(LinhaAux-1)+'),2)';
   Tot := '';


   { ADICIONAIS }
   with qryAdicDesc do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select * from "pedido_adic_desc" a                                        ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa                                     ');
     SQL.Add('   and a."num_pedido" = :"num_pedido"                                     ');
     SQL.Add('   and a."ies_tipo" = :ies_tipo                                           ');
     if (Tipo = 'A') or (Tipo = '') then
        SQL.Add('   and a."vlr_adic_desc" > 0                                              ')
     else
        SQL.Add('   and a."vlr_adic_desc_esp" > 0                                          ');
     SQL.Add('union all                                                                 ');
     SQL.Add('select * from "pedido_adic_desc" a                                        ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa                                     ');
     SQL.Add('   and a."num_pedido" = :"num_pedido"                                     ');
     SQL.Add('   and a."ies_tipo" = :ies_tipo                                           ');
     SQL.Add('   and ((a."vlr_adic_desc" = 0 or a."vlr_adic_desc" is null)              ');
     SQL.Add('   and (a."vlr_adic_desc_esp" = 0 or a."vlr_adic_desc_esp" is null))      ');
     SQL.Add('order by 3                                                                ');

     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
     ParamByName('ies_tipo').AsString := 'A';
     Open;
     if Not(IsEmpty) then
     begin
       Tot := '=J'+IntToStr(Linha);
       while Not(EOF) do
       begin
         Linha := Linha + 1;
         ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '#.##0,00';

         if (Tipo = 'A') or (Tipo = '') then
         begin
            if (qryAdicDescvlr_adic_desc.AsFloat > 0) then
               ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1  := qryAdicDescvlr_adic_desc.AsFloat
            else
               ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1  := '';
         end
         else
         begin
            if (qryAdicDescvlr_adic_desc_esp.AsFloat > 0) then
               ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1  := qryAdicDescvlr_adic_desc_esp.AsFloat
            else
               ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1  := '';
         end;

         ExcelWorkSheet.Cells.Item[Linha, 10].VerticalAlignment := xlCenter;
         s := StringReplace(trim(qryAdicDesctxt_descricao.AsString), #13#10, ' ', [rfReplaceAll]);
         i := (length(s) / 95);
         i := i + 1;
         with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
         begin
           MergeCells := True;
           Value2 := s;
           Font.Name := 'Arial';
           Font.Size := 10;
           Font.Bold := True;
           Interior.ColorIndex := 0;
           Borders.LineStyle := xlContinuous;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           WrapText := True;
           ShrinkToFit := False;
           Rows.RowHeight := 12 * i;
         end;
         Tot := Tot + '+J'+IntToStr(Linha);
         Next;
       end;
     end;
   end;
   { DESCONTOS }
   with qryAdicDesc do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select * from "pedido_adic_desc" a                                        ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa                                     ');
     SQL.Add('   and a."num_pedido" = :"num_pedido"                                     ');
     SQL.Add('   and a."ies_tipo" = :ies_tipo                                           ');
     if (Tipo = 'A') or (Tipo = '') then
        SQL.Add('   and a."vlr_adic_desc" > 0                                              ')
     else
        SQL.Add('   and a."vlr_adic_desc_esp" > 0                                          ');
     SQL.Add('union all                                                                 ');
     SQL.Add('select * from "pedido_adic_desc" a                                        ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa                                     ');
     SQL.Add('   and a."num_pedido" = :"num_pedido"                                     ');
     SQL.Add('   and a."ies_tipo" = :ies_tipo                                           ');
     SQL.Add('   and ((a."vlr_adic_desc" = 0 or a."vlr_adic_desc" is null)              ');
     SQL.Add('   and (a."vlr_adic_desc_esp" = 0 or a."vlr_adic_desc_esp" is null))      ');
     SQL.Add('order by 3                                                                ');

     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
     ParamByName('ies_tipo').AsString := 'D';
     Open;
     if Not(IsEmpty) then
     begin
       if (Tot = '') then Tot := '=J'+IntToStr(Linha);
       while Not(EOF) do
       begin
         Linha := Linha + 1;
         ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '#.##0,00';

         if (Tipo = 'A') or (Tipo = '') then
         begin
            if (qryAdicDescvlr_adic_desc.AsFloat > 0) then
               ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1  := qryAdicDescvlr_adic_desc.AsFloat
            else
               ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1  := '';
         end
         else
         begin
            if (qryAdicDescvlr_adic_desc_esp.AsFloat > 0) then
               ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1  := qryAdicDescvlr_adic_desc_esp.AsFloat
            else
               ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1  := '';
         end;

         ExcelWorkSheet.Cells.Item[Linha, 10].VerticalAlignment := xlCenter;
         s := StringReplace(trim(qryAdicDesctxt_descricao.AsString), #13#10, ' ', [rfReplaceAll]);
         i := (length(s) / 95);
         i := i + 1;
         with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
         begin
           MergeCells := True;
           Value2 := s;
           Font.Name := 'Arial';
           Font.Size := 10;
           Font.Bold := True;
           Interior.ColorIndex := 0;
           Borders.LineStyle := xlContinuous;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           WrapText := True;
           ShrinkToFit := False;
           Rows.RowHeight := 12 * i;
         end;
         Tot := Tot + '-I'+IntToStr(Linha);
         Next;
       end;
     end;
   end;
   { FINAL VALUE OF PROFORMA INVOICE }
   if (Tot <> '') then
   begin
     Linha := Linha + 1;
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
     begin
       MergeCells := True;
       if (IdiomaExporter= 'I') then
          Value := 'FINAL VALUE OF THIS CONFIRMATION'
       else if (IdiomaExporter= 'P') then
          Value := 'VALOR FINAL DA CONFIRMAÇÃO'
       else if (IdiomaExporter= 'E') then
          Value := 'VALOR FINAL DE LA CONFIRMACIÓN';

       Font.Name := 'Arial';
       Font.Size := 10;
       Font.Bold := True;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '#.##0,00';
     ExcelWorkSheet.Cells.Item[Linha, 10].Formula := Tot;
     ExcelWorkSheet.Cells.Item[Linha, 10].Font.Name := 'Arial';
     ExcelWorkSheet.Cells.Item[Linha, 10].Font.Size := 10;
   end;

   { TOTAL VOLUME }
   Linha := Linha + 1;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        Value := 'TOTAL VOLUME'
     else if (IdiomaExporter= 'P') then
        Value := 'VOLUME TOTAL'
     else if (IdiomaExporter= 'E') then
        Value := 'VOLUMEM TOTAL';

     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   ExcelWorkSheet.Cells.Item[Linha, 11].NumberFormat := VolumeNumberFormat;
   ExcelWorkSheet.Cells.Item[Linha, 11].Formula := '=ROUND(SUM(K8:K'+IntTostr(LinhaAux-1)+'),' + VolumeDecimaisTotal + ')';
   ExcelWorkSheet.Cells.Item[Linha, 11].Font.Name := 'Arial';
   ExcelWorkSheet.Cells.Item[Linha, 11].Font.Size := 10;

   if (qryPedidoies_pallets.AsString = 'S') then
   begin
     ExcelWorkSheet.Cells.Item[Linha, 23].NumberFormat := VolumeNumberFormat;
     ExcelWorkSheet.Cells.Item[Linha, 23].Formula := '=ROUND(SUM(W8:W'+IntTostr(LinhaAux-1)+'),2)';
     ExcelWorkSheet.Cells.Item[Linha, 23].Font.Name := 'Arial';
     ExcelWorkSheet.Cells.Item[Linha, 23].Font.Size := 10;
   end;
   { TOTAL GROSS WEIGHT  }
   Linha := Linha + 1;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        Value := 'TOTAL GROSS WEIGHT'
     else if (IdiomaExporter= 'P') then
        Value := 'PESO BRUTO TOTAL'
     else if (IdiomaExporter= 'E') then
        Value := 'PESO BRUTO TOTAL';

     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';
   ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-8)+']C:R[-4]C), 2)';
   ExcelWorkSheet.Cells.Item[Linha, 12].Font.Name := 'Arial';
   ExcelWorkSheet.Cells.Item[Linha, 12].Font.Size := 10;

   if (qryPedidoies_pallets.AsString = 'S') then
   begin
     ExcelWorkSheet.Cells.Item[Linha, 21].NumberFormat := '#.##0,00';
     ExcelWorkSheet.Cells.Item[Linha, 21].FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-8)+']C:R[-4]C)';
     ExcelWorkSheet.Cells.Item[Linha, 21].Font.Name := 'Arial';
     ExcelWorkSheet.Cells.Item[Linha, 21].Font.Size := 10;
   end;
   { TOTAL NET WEIGHT  }
   Linha := Linha + 1;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        Value := 'TOTAL NET WEIGHT'
     else if (IdiomaExporter= 'P') then
        Value := 'PESO LÍQUIDO TOTAL'
     else if (IdiomaExporter= 'E') then
        Value := 'PESO NETO TOTAL';

     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   ExcelWorkSheet.Cells.Item[Linha, 13].NumberFormat := '#.##0,00';
   ExcelWorkSheet.Cells.Item[Linha, 13].Formula := '=ROUND(SUM(M8:M'+IntTostr(LinhaAux-1)+'), 2)';
   ExcelWorkSheet.Cells.Item[Linha, 13].Font.Name := 'Arial';
   ExcelWorkSheet.Cells.Item[Linha, 13].Font.Size := 10;
   if (qryPedidoies_pallets.AsString = 'S') then
   begin
     ExcelWorkSheet.Cells.Item[Linha, 22].NumberFormat := '#.##0,00';
     ExcelWorkSheet.Cells.Item[Linha, 22].FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-8)+']C:R[-5]C)';
     ExcelWorkSheet.Cells.Item[Linha, 22].Font.Name := 'Arial';
     ExcelWorkSheet.Cells.Item[Linha, 22].Font.Size := 10;
   end;
   { TOTAL OF CARTONS }
   Linha := Linha + 1;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        Value := 'TOTAL OF CARTONS'
     else if (IdiomaExporter= 'P') then
        Value := 'TOTAL DE VOLUMES'
     else if (IdiomaExporter= 'E') then
        Value := 'TOTAL DE VOLÚMENES';

     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   ExcelWorkSheet.Cells.Item[Linha, 14].NumberFormat := '##.##0';
   ExcelWorkSheet.Cells.Item[Linha, 14].Formula := '=SUM(N8:N'+IntTostr(LinhaAux-1)+')';
   ExcelWorkSheet.Cells.Item[Linha, 14].Font.Name := 'Arial';
   ExcelWorkSheet.Cells.Item[Linha, 14].Font.Size := 10;

   if (qryPedidoies_pallets.AsString = 'S') then
   begin
     ExcelWorkSheet.Cells.Item[Linha, 20].NumberFormat := '##.##0';
     ExcelWorkSheet.Cells.Item[Linha, 20].Formula := '=SUM(T8:T'+IntTostr(LinhaAux-1)+')';
     ExcelWorkSheet.Cells.Item[Linha, 20].Font.Name := 'Arial';
     ExcelWorkSheet.Cells.Item[Linha, 20].Font.Size := 10;
   end;
   { Esconder as colunas }
   if (cbPrecos.Checked) then ExcelWorkSheet.Range['H1','H1'].EntireColumn.Hidden := False
                         else ExcelWorkSheet.Range['H1','H1'].EntireColumn.Hidden := True;
   if (cbImages.Checked) then ExcelWorkSheet.Range['D1','D1'].EntireColumn.Hidden := False
                         else ExcelWorkSheet.Range['D1','D1'].EntireColumn.Hidden := True;


   LinhaAux := LinhaAux + 1;

   if (qryPedidoies_pallets.AsString = 'N') then s := 'S' else s := 'W';

   with ExcelWorkSheet.Range['C' + IntToStr(LinhaAux),s + IntToStr(Linha)] do
   begin
      with Borders[xlInsideHorizontal] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlInsideVertical] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeLeft] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeTop] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeRight] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeBottom] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
   end;
   ExcelWorkSheet.Range['J' + IntToStr(LinhaAux),s + IntToStr(Linha)].HorizontalAlignment := xlCenter;

  { Totais Gerais }
  Linha := Linha + 2;
  LinhaAux := Linha;

   { PACKAGES INFORMATION }
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
      MergeCells := True;
      if (IdiomaExporter= 'I') then
      begin
        Value := 'PACKAGES INFORMATION:'
      end else if (IdiomaExporter= 'P') then
      begin
        Value := 'INFORMAÇÕES SOBRE EMBALAGENS:';
      end else if (IdiomaExporter= 'E') then
      begin
        Value := 'INFORMACIONES SOBRE EMBALAJES:';
      end;
      Font.Bold := True;
      Font.Name := 'Arial';
      Font.Size := 10;
      Interior.ColorIndex := 0;
      Borders.LineStyle := xlContinuous;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
   end;

   { TOTAL VOLUME }
   Inc(Linha);
   s := '';
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        s := 'TOTAL VOLUME:'
     else if (IdiomaExporter= 'P') then
        s := 'VOLUME TOTAL:'
     else if (IdiomaExporter= 'E') then
        s := 'VOLUMEM TOTAL:';

     s := s +  FormatFloat(VolumeNumberFormatTotal, Arredonda(pedido_complementovol_geral.AsFloat, -2, rmUp));
     Value2 := s ;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     HorizontalAlignment := xlLeft;
   end;

   { TOTAL GROSS WEIGHT }
   Inc(Linha);
   s := '';
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        s := 'TOTAL GROSS WEIGHT:'
     else if (IdiomaExporter= 'P') then
        s := 'PESO BRUTO TOTAL:'
     else if (IdiomaExporter= 'E') then
        s := 'PESO BRUTO TOTAL:';

     s := s + FormatFloat('  #,##0.00 Kg', pedido_complementopes_bru_geral.AsFloat);
     Value2 := s ;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     HorizontalAlignment := xlLeft;
   end;

   { TOTAL NET WEIGHT }
   Inc(Linha);
   s := '';
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter= 'I') then
        s := 'TOTAL NET WEIGHT:'
     else if (IdiomaExporter= 'P') then
        s := 'PESO LÍQUIDO TOTAL:'
     else if (IdiomaExporter= 'E') then
        s := 'PESO NETO TOTAL:';

     s := s + FormatFloat('  #,##0.00 Kg', pedido_complementopes_liq_geral.AsFloat);
     Value2 := s ;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     HorizontalAlignment := xlLeft;
   end;

   { QUANTITY OF CARTONS }
   Inc(Linha);
   s := '';
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
      MergeCells := True;
      if (IdiomaExporter= 'I') then
      begin
         s := 'QUANTITY OF CARTONS:'
      end else if (IdiomaExporter= 'P') then
      begin
         s := 'QUANTIDADE DE EMBALAGENS:'
      end else if (IdiomaExporter= 'E') then
      begin
         s := 'CANTIDAD DE EMBALAJES:'
      end;

      if (qryPedidoies_pallets.Value = 'S') then
      begin
         if (pedido_complementocxs_outpallet.Value > 0) then
            s := s + ' ' + FormatFloat(' #,##0', pedido_complementocxs_outpallet.Value) + ' CARTONS AND ';
         s := s + FormatFloat('  #,##0', pedido_complementoqtd_pallets.Value) + ' PALLETS';
      end else
         s := s + FormatFloat('  #,##0', pedido_complementoqtd_caixas.value) + ' CARTONS';

      Value2 := s;
      Font.Bold := True;
      Font.Name := 'Arial';
      Font.Size := 10;
      Interior.ColorIndex := 0;
      Borders.LineStyle := xlNone;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;
   end;

  with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'C'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    with Borders[xlEdgeLeft] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeTop] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
    end;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   { Definir área de impressão }
   if (qryPedidoies_pallets.AsString = 'N') then
   begin
      { ajustar propriedades para impressão da página de Packing }
      ExcelWorksheet.PageSetup.PrintArea := '$A$1:$T$'+IntToStr(Linha);
      with ExcelWorksheet.PageSetup do
      begin
        PrintTitleRows := '$1:$7';
        PrintTitleColumns := '';
        LeftHeader := '';
        CenterHeader := '';
        RightHeader := 'Page &P of &N';
        LeftFooter := '';
        CenterFooter := '';
        RightFooter := '';
        LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
        RightMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
        TopMargin := ExcelWorksheet.Application.InchesToPoints(0.393700787401575, GetUserDefaultLCID);
        BottomMargin := 0;
        HeaderMargin := 0;
        FooterMargin := 0;
        PrintHeadings := False;
        PrintGridlines := False;
        PrintComments := xlPrintNoComments;
        CenterHorizontally := False;
        CenterVertically := False;
        Orientation := xlLandscape;
        Draft := False;
        PaperSize := xlPaperA4;
        FirstPageNumber := xlAutomatic;
        Order := xlDownThenOver;
        BlackAndWhite := False;
        Zoom := 65;
       end;
   end else
   begin
      { ajustar propriedades para impressão da página de Packing }
      ExcelWorksheet.PageSetup.PrintArea := '$A$1:$X$'+IntToStr(Linha);
      with ExcelWorksheet.PageSetup do
      begin
        PrintTitleRows := '$1:$7';
        PrintTitleColumns := '';
        LeftHeader := '';
        CenterHeader := '';
        RightHeader := 'Page &P of &N';
        LeftFooter := '';
        CenterFooter := '';
        RightFooter := '';
        LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
        RightMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
        TopMargin := ExcelWorksheet.Application.InchesToPoints(0.393700787401575, GetUserDefaultLCID);
        BottomMargin := 0;
        HeaderMargin := 0;
        FooterMargin := 0;
        PrintHeadings := False;
        PrintGridlines := False;
        PrintComments := xlPrintNoComments;
        CenterHorizontally := False;
        CenterVertically := False;
        Orientation := xlLandscape;
        Draft := False;
        PaperSize := xlPaperA4;
        FirstPageNumber := xlAutomatic;
        Order := xlDownThenOver;
        BlackAndWhite := False;
        Zoom := 58;
       end;
   end;
   { FIM DA PÁGINA DE SPECIFICATION }

   { Criar a página de CONDITIONS antes da página de SPECIFICATION }
   WkBk.Worksheets.Add(WkBk.Worksheets['Specification'], EmptyParam, 1, EmptyParam, lcid);
   ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
   ExcelWorksheet.Activate(lcid);
   ExcelWorksheet.Name := 'Conditions';

   { Página das Condições para Pedidos e Confirmações }
   ConditionPage('C', Tipo);

   (* Removido em 01.11.2021 - não gerar mais Confirmation page
   { Página CONFIRMATION quando o pedido for confirmado }
   if (qryPedidoies_tip_pedido.AsString = 'P') then
   begin
     { Criar a página de CONFIRMATION antes da página de CONDITIONS }
     WkBk.Worksheets.Add(WkBk.Worksheets['Conditions'], EmptyParam, 1, EmptyParam, lcid);
     ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
     ExcelWorksheet.Activate(lcid);
     ExcelWorksheet.Name := 'Confirmation';
     ConditionPage('P', Tipo);
   end;
   *)

  { Salvar a planilha }
  //ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false, xlUserResolution,False,EmptyParam,0);
  ExcelApplication.ActiveWorkbook.Save(lcid);

  Exportador.Close;
  Importador.Close;

  { finalizar progress bar }
  btnOrderProforma.Enabled := True;
  Ani.Terminate;

  { Fechar planilha e encerrar excel }
  FecharExcel2;
end;

Procedure Tfr_ManPedido.FecharExcel2;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
end;

Procedure Tfr_ManPedido.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then
     Exit;
  ExcelWorkSheet.Disconnect;
  ExcelWorksheet.Free;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  ExcelApplication.Free;
end;

procedure Tfr_ManPedido.AbrirExcel(FileName: String; Visible: boolean = False);
begin
  { Selecionar a planilha e chamar o  Excel }
  if trim(FileName) = '' then Abort;
  if Not(FileExists(FileName)) then Abort;

  try
  lcid := GetUserDefaultLCID;
  WkBk := ExcelApplication.Workbooks.Open(FileName, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                    EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                    EmptyParam, EmptyParam, EmptyParam, EmptyParam, lcid);

  ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
  ExcelWorksheet.Activate(lcid);
  ExcelApplication.Visible[lcid] := Visible;
  ExcelApplication.DisplayAlerts[lcid] := False;
  except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;

procedure Tfr_ManPedido.pedido_complementoBeforeOpen(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := True;
	if not TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).Prepare;
end;

procedure Tfr_ManPedido.pedido_complementoAfterCancel(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      CancelUpdates;
   finally
      Transaction.RollbackRetaining;
   end;

end;

procedure Tfr_ManPedido.pedido_complementoAfterClose(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := False;
	if TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).UnPrepare;

end;

procedure Tfr_ManPedido.pedido_complementoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      qryPedido.Refresh;
   end;

end;

procedure Tfr_ManPedido.pedido_complementoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      qryPedido.Refresh;
   end;

   { atualizar Production List quando houver troca de NumPedidoCli/NumPedidoFor }
   if (FlagPedido) then
   begin
      with spr_troca_pedido_pl do
       begin
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
        ParamByName('num_pedido_cli').Value := pedido_complementonum_pedido_cli.AsString;
        ParamByName('num_pedido_for').Value := pedido_complementonum_pedido_for.AsString;
        ExecProc;
        try
          Transaction.CommitRetaining;
        except
          Transaction.RollbackRetaining;
        end;
      end;
      FlagPedido := False;
   end;
   RecalcularSaldoFatura(qryPedidonum_pedido.AsLargeInt);
end;

procedure Tfr_ManPedido.pedido_complementoAfterOpen(DataSet: TDataSet);
begin
  DataSet.Last;
end;

procedure Tfr_ManPedido.pedido_complementoNewRecord(DataSet: TDataSet);
begin
  pedido_complemento.FieldByName('cod_empresa').AsInteger :=  vgCod_Empresa;
  pedido_complementonum_pedido.AsLargeInt := qryPedidonum_pedido.AsLargeInt;
  { dados do último pedido do cliente }
  if Not(dmCOM.ultimo_pedido_cliente.IsEmpty) then
  begin
    pedido_complementocod_fornecedor.Value  := dmCOM.ultimo_pedido_clientecod_fornecedor.AsInteger;
    pedido_complementocod_porto_emb.Value   := dmCOM.ultimo_pedido_clientecod_porto_emb.AsInteger;
    pedido_complementocod_porto_des.Value   := dmCOM.ultimo_pedido_clientecod_porto_des.AsInteger;
    pedido_complementocod_cond_venda.Value  := dmCOM.ultimo_pedido_clientecod_cond_venda.AsInteger;
    pedido_complementobanco_intermed.Value  := dmCOM.ultimo_pedido_clientebanco_intermed.AsString;
    pedido_complementoswift.Value           := dmCOM.ultimo_pedido_clienteswift.AsString;
  end;
end;

procedure Tfr_ManPedido.dtspedido_complementoStateChange(Sender: TObject);
begin
  if dtspedido_complemento.State in [dsEdit, dsInsert] then
     qryPedido.Edit;
end;

{ Header Pallets }
procedure Tfr_ManPedido.PedidoHeader(Tipo, Pag: String);
begin
   { cabeçalho }
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
   begin
     if qryPedidoies_tip_pedido.AsString = 'O' then
     begin
        if (IdiomaExporter= 'I') then
           Value2 := 'ORDER NUMBER:     ' + trim(pedido_complementonum_pedido_cli.AsString)
        else  if (IdiomaExporter= 'P') then
           Value2 := 'NÚMERO DO PEDIDO: ' + trim(pedido_complementonum_pedido_cli.AsString)
        else  if (IdiomaExporter= 'E') then
           Value2 := 'NÚMERO DE PEDIDO: ' + trim(pedido_complementonum_pedido_cli.AsString);

        Characters[1, 18].Font.Bold := True;
     end
     else begin
        if (IdiomaExporter= 'I') then
           Value2 := 'PROFORMA INVOICE NUMBER:       ' + trim(pedido_complementonum_pedido_for.AsString)
        else if (IdiomaExporter= 'P') then
           Value2 := 'PROFORMA INVOICE NÚMERO:       ' + trim(pedido_complementonum_pedido_for.AsString)
        else if (IdiomaExporter= 'E') then
           Value2 := 'NÚMERO DE CONFIRMACIÓN DE VENTA: ' + trim(pedido_complementonum_pedido_for.AsString);

        Characters[1, 33].Font.Bold := True;
     end;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Font.Name := 'Arial';
     Font.Size := 10;                                                                
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     if (Tipo = '') then Font.ColorIndex := 0;
     if (Tipo = 'A') then Font.ColorIndex := 0;
     if (Tipo = 'B') then Font.ColorIndex := 5;
   end;
   Linha := Linha + 1;
   if qryPedidoies_tip_pedido.AsString = 'P' then  // confirmação
   begin
     with ExcelWorksheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
     begin
      if (IdiomaExporter= 'I') then
         FormulaR1C1 := 'CLIENT''S ORDER NUMBER:       ' + trim(pedido_complementonum_pedido_cli.AsString)
      else if (IdiomaExporter= 'P') then
         FormulaR1C1 := 'NÚMERO PEDIDO DO CLIENTE:     ' + trim(pedido_complementonum_pedido_cli.AsString)
      else if (IdiomaExporter= 'E') then
         FormulaR1C1 := 'NÚMERO DE PEDIDO DEL CLIENTE: ' + trim(pedido_complementonum_pedido_cli.AsString);

      Characters[1, 30].Font.Bold := True;
      MergeCells := True;
      Font.Name := 'Arial';
      Font.Size := 10;
      Interior.ColorIndex := 0;
      Borders.LineStyle := xlContinuous;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
     end;
     Linha := Linha + 1;
   end;
   if (Pag = 'S') then
   begin
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        if (IdiomaExporter= 'I') then
           Value2 := 'SPECIFICATION PAGE'
        else if (IdiomaExporter= 'P') then
           Value2 := 'PÁGINA DAS ESPECIFICAÇÕES'
        else if (IdiomaExporter= 'E') then
           Value2 := 'PÁGINA DE LAS ESPECIFICACIONES';

        Font.Bold := True;
        Font.Name := 'Arial';
        Font.Size := 10;
        MergeCells := True;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
      end;
   end else if (Pag = 'P') then
   begin
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        if (IdiomaExporter= 'I') then
           Value2 := 'PACKAGES PAGE'
        else if (IdiomaExporter= 'P') then
           Value2 := 'PÁGINA DAS ESPECIFICAÇÕES'
        else if (IdiomaExporter= 'E') then
           Value2 := 'PÁGINA DE LAS ESPECIFICACIONES';

        Font.Bold := True;
        Font.Name := 'Arial';
        Font.Size := 10;
        MergeCells := True;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
      end;
   end;
   Linha := Linha + 1;
   { DATE = dat_cadastro <- orçamento, dat_emissao <- pedido }
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
   begin
     if (IdiomaExporter= 'I') then s := 'DATE:  '
     else if (IdiomaExporter= 'P') then s := 'DATA:  '
     else if (IdiomaExporter= 'E') then s := 'FECHA: ';

     if qryPedidoies_tip_pedido.AsString = 'O' then
        Value2 := s + FormatDateTime('DD/MM/YYYY', qryPedidodat_emissao.AsDateTime)
     else
        Value2 := s + FormatDateTime('DD/MM/YYYY', qryPedidodat_liberacao.AsDateTime);
     Characters[1, 7].Font.Bold := True;
     Font.Name := 'Arial';
     Font.Size := 10;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
   end;

   { início cabeçalho dos itens }
   Linha := 6;
   if (Pag = 'P') then
   begin
     with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
     begin
       MergeCells := True;
       Interior.ColorIndex := 14;
     end;
     ExcelWorkSheet.Range['D' + IntToStr(Linha),'J' + IntToStr(Linha)].Interior.ColorIndex := 14;
     with ExcelWorkSheet.Range['K' + IntToStr(Linha),'S' + IntToStr(Linha)] do
     begin
       if      (IdiomaExporter= 'I') then Value := 'PACKAGES INFORMATION'
       else if (IdiomaExporter= 'P') then Value := 'INFORMAÇÃO SOBRE EMBALAGENS'
       else if (IdiomaExporter= 'E') then Value := 'INFORMACIONES SOBRE EMBALAJES';

       MergeCells := True;
       Interior.ColorIndex := 14;
       Font.Name := 'Arial';
       Font.Size := 9;
       Font.Bold := True;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlCenter;
     end;
     if (qryPedidoies_pallets.AsString = 'S') then
     begin
       with ExcelWorkSheet.Range['T' + IntToStr(Linha),'W' + IntToStr(Linha)] do
       begin
         if (IdiomaExporter= 'I') then
            Value := 'PALLETS INFORMATION'
         else if (IdiomaExporter= 'P') then
            Value := 'INFORMAÇÃO SOBRE PALLETS'
         else if (IdiomaExporter= 'E') then
            Value := 'INFORMACIONES SOBRE PALLETS';

         MergeCells := True;
         Font.Name := 'Arial';
         Interior.ColorIndex := 14;
         Font.Size := 9;
         Font.Bold := True;
         Borders.LineStyle := xlContinuous;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
       end;
     end;
     Linha := Linha + 1;
   end;

   { segunda linha cabeçalho dos itens }
   { Cabeçalho dos Produtos }
   if (IdiomaExporter= 'I') then   { Inglês }
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SEQ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'CODE OF THE ITEM';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'PRODUCT DESCRIPTION';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'PRODUCT IMAGE';
      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'QUANTITY';
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'UNIT';
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'PRICE IN US$';
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'ORIGIN OF THE PRICES ACCORDING TO THE PROGRAM';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := '   ';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'TOTAL US$';
      if (Pag = 'P') then
      begin
         ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'TOTAL VOLUME (m³)';
         ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'TOTAL GROSS WEIGHT (Kg)';
         ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'TOTAL NET WEIGHT (Kg)';
         ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'QUANTITY OF CARTONS';
         ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'QUANTITY STANDARD OF UNITS INSIDE MASTER CARTON';
         ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'GROSS WEIGHT PER CARTON (Kg)';
         ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value2 := 'NET WEIGHT PER PIECE (Kg)';
         ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value2 := 'VOLUME CARTON (m³)';
         ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value2 := 'WEIGHT EMPTY BOX (Kg)';
      end;
      if (qryPedidoies_pallets.AsString = 'S') AND (Pag = 'P') then
      begin
        ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value2 := 'PALLETS (Qty)';
        ExcelWorksheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value2 := 'GROSS WEIGHT (Kg)';
        ExcelWorksheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].Value2 := 'NET WEIGHT (Kg)';
        ExcelWorksheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].Value2 := 'VOLUME (M³)';
      end;
   end else if (IdiomaExporter= 'P') then { Português }
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SEQ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'CÓDIGO DO ITEM';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'DESCRIÇÃO DO PRODUTO';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'IMAGEM DO PRODUTO';
      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'QTDE.';
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'UN.';
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'PREÇO EM US$';
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'ORIGEM DOS PREÇOS DE ACORDO COM O PROGRAMA';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := '   ';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'TOTAL EM US$';
      if (Pag = 'P') then
      begin
         ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'VOLUME TOTAL (m³)';
         ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'PESO BRUTO TOTAL (Kg)';
         ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'PESO LÍQUIDO TOTAL (Kg)';
         ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'QTDE. DE VOLUMES';
         ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'QTDES. PADRÃO POR CAIXA MASTER';
         ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'PESO BRUTO DA CAIXA MASTER (Kg)';
         ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value2 := 'PESO UNITÁRIO POR PEÇA (Kg)';
         ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value2 := 'VOLUME CAIXA EXPORTAÇÃO (m³)';
         ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value2 := 'PESO CAIXA VAZIA (Kg)';
      end;
      if (qryPedidoies_pallets.AsString = 'S') AND (Pag = 'P') then
      begin
        ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value2 := 'PALLETS (QTDE.)';
        ExcelWorksheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value2 := 'PESO BRUTO (Kg)';
        ExcelWorksheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].Value2 := 'PESO LÍQUIDO (Kg)';
        ExcelWorksheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].Value2 := 'VOLUME (m³)';
      end;
   end else if (IdiomaExporter= 'E') then { Espanhol }
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SEQ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'CÓDIGO DE ITEM';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'DESCRIPCIÓN DEL PRODUCTO';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'IMAGEM DEL PRODUCTO';
      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'CANT.';
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'UN.';
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'PRECIO EN US$';
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'ORIGEN DE LOS PRECIOS DE ACUERDO CON EL PROGRAMA';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := '   ';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'TOTAL EN US$';
      if (Pag = 'P') then
      begin
         ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'VOLUMEN TOTAL (m³)';
         ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'PESO BRUTO TOTAL (Kg)';
         ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'PESO NETO TOTAL (Kg)';
         ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'CANT. DE VOLÚMENES';
         ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'CANT. STANDARD POR CAJA MASTER';
         ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'PESO BRUTO DE LA CAJA MASTER (Kg)';
         ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value2 := 'PESO UNITÁRIO POR PIEZA (Kg)';
         ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value2 := 'VOLUMEN CAJA EXPORTACION (m³)';
         ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value2 := 'PESO CAJA VAZIA (Kg)';
      end;
      if (qryPedidoies_pallets.AsString = 'S') AND (Pag = 'P') then
      begin
        ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value2 := 'PALLETS (CANT.)';
        ExcelWorksheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value2 := 'PESO BRUTO (Kg)';
        ExcelWorksheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].Value2 := 'PESO NETO (Kg)';
        ExcelWorksheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].Value2 := 'VOLUMEN (m³)';
      end;
   end;

   { Tamanho das colunas }
   ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 03.43;
   ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 14.00;
   ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 48.57;
   ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 14.00;
   ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 08.00;
   ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 05.00;
   ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 10.43;
   ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ColumnWidth := 41.00;
   ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ColumnWidth := 05.00;
   ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].ColumnWidth := 10.43;
   if (Pag = 'P') then
   begin
      ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].ColumnWidth := 09.43;
      ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ColumnWidth := 08.43;
      ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ColumnWidth := 08.43;
      ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].ColumnWidth := 08.14;
      ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].ColumnWidth := 09.00;
      ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].ColumnWidth := 08.57;
      ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].ColumnWidth := 07.43;
      ExcelWorkSheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].ColumnWidth := 09.00;
      ExcelWorkSheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].ColumnWidth := 09.00;
      ExcelWorkSheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].ColumnWidth := 06.71;
   end;
   if (qryPedidoies_pallets.AsString = 'S') AND (Pag = 'P') then
   begin
     ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].ColumnWidth := 07.00;
     ExcelWorkSheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].ColumnWidth := 08.43;
     ExcelWorkSheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].ColumnWidth := 08.43;
     ExcelWorkSheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].ColumnWidth := 06.86;
   end;
   if (qryPedidoies_pallets.AsString = 'S') AND (Pag = 'P') then
   begin
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'W' + IntToStr(Linha)] do
      begin
         Font.Name := 'Arial';
         Font.Bold := True;
         Font.Size := 8;
         Interior.ColorIndex := 14;
         Borders.LineStyle := xlContinuous;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
   end else
   begin
     if (Pag = 'P') then
     begin
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'S' + IntToStr(Linha)] do
      begin
         Font.Name := 'Arial';
         Font.Bold := True;
         Font.Size := 8;
         Interior.ColorIndex := 14;
         Borders.LineStyle := xlContinuous;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
      end else if (Pag = 'S') then
      begin
         with ExcelWorkSheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
         begin
            Font.Name := 'Arial';
            Font.Bold := True;
            Font.Size := 8;
            Interior.ColorIndex := 14;
            Borders.LineStyle := xlContinuous;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
         end;
      end;
   end;
   Linha := Linha + 1; //vai p/ a linha seguinte p/ começar a listar os produtos
end;

procedure Tfr_ManPedido.ItensShipMarks;
Var
  LinhaAux, ind : integer;
  IdiomaImporter : string;
  PesoLiquido, PesoBruto : double;
begin
  IdiomaImporter := Importadoridioma_shipmarks.Value;

  Linha := 23;

  with produtos_xls do
  begin
   ParamByName('cod_empresa').Value := qryPedidocod_empresa.AsInteger;
   ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
   Open;
   Last;
   First;
   While Not(EOF) do
   begin
     Inc(Linha);
     LinhaAux := Linha;

     { COLUNA A }

     { Descrição do Produto }
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
     begin
       Value := trim(ProcurarProduto(FieldByName('cod_produto').AsString,
                     qryPedidocod_cliente.AsString,
                     pedido_complementocod_fornecedor.AsInteger).DenProduto);
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       ColumnWidth := 50;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { Código do Produto }
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
     begin
       NumberFormat := '@';
       if (IdiomaImporter = 'I') then s := 'CODE: '
       else if (IdiomaImporter = 'P') then s := 'CÓDIGO: '
       else if (IdiomaImporter = 'E') then s := 'CÓDIGO: ';
       Value := s + FmtProdutoCliente(qryPedidocod_cliente.AsString, FieldByName('cod_produto').AsString).fmtProduto;
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { Carton Number }
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
     begin
       if (IdiomaImporter = 'I') then s := 'CARTON NUMBER: '
       else if (IdiomaImporter = 'P') then s := 'VOLUME NUM.: '
       else if (IdiomaImporter = 'E') then s := 'VOLUMEN NUM.: ';
       Value := s + FormatFloat('    /#,##0 ', FieldByName('qtd_export_box').AsFloat);
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { Calcular Peso Líquido e Bruto para a Caixa Master}
     PesoLiquido := 0;
     PesoBruto := 0;
     with dmCOM.CalcEmbalagem(FieldByName('cod_produto').AsString, FieldByName('un_cx_master').AsFloat) do
     begin
       PesoLiquido := PesLiquido;
       PesoBruto := PesBruto;
     end;

     { Peso Líquido da Caixa Master }
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
     begin
       if (IdiomaImporter = 'I') then s := 'NET WEIGHT (Kg):'
       else if (IdiomaImporter = 'P') then s := 'PESO LÍQUIDO (Kg):'
       else if (IdiomaImporter = 'E') then s := 'PESO NETO (Kg):';
       Value := s + FormatFloat('  #,##0.00 Kg', PesoLiquido);
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { Peso Bruto Caixa Master }
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
     begin
       if (IdiomaImporter = 'I') then s := 'GROSS WEIGHT (Kg):'
       else if (IdiomaImporter = 'P') then s := 'PESO BRUTO (Kg):'
       else if (IdiomaImporter = 'E') then s := 'PESO BRUTO (Kg):';
       Value := s + FormatFloat('  #,##0.00 Kg', PesoBruto);
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { Quantidade }
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
     begin
       if (IdiomaImporter = 'I') then s := 'QUANTITY: '
       else if (IdiomaImporter = 'P') then s := 'QUANTIDADE: '
       else if (IdiomaImporter = 'E') then s := 'CANTIDAD: ';
       Value := s + FormatFloat('#,##0,0', FieldByName('un_cx_master').AsFloat) + ' ' + FieldByname('sigla_vol_i').AsString;
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { COLUNA C }
     Linha := LinhaAux;

     { Código do Importador - Cliente }
     with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)] do
     begin
      Value := Importadornom_cliente.AsString;
      Font.Name := 'Arial';
      Font.Bold := False;
      Font.Size := 9;
      MergeCells := True;
      Interior.ColorIndex := 0;
      HorizontalAlignment := xlLeft;
      ShrinkToFit := False;
      WrapText := True;
     end;
     inc(Linha);

     { Porto de Destino }
     with ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)] do
     begin
      if (IdiomaImporter = 'I') then s := 'DESTINATION PORT: '
      else if (IdiomaImporter = 'P') then s := 'PORTO DE DESTINO: '
      else if (IdiomaImporter = 'E') then s := 'PUERTO DE DESTINO: ';
      Value := s + trim(pedido_complementolkpPortoDes.AsString);
      Font.Name := 'Arial';
      Font.Bold := False;
      Font.Size := 9;
      MergeCells := True;
      Interior.ColorIndex := 0;
      HorizontalAlignment := xlLeft;
      ShrinkToFit := False;
      WrapText := True;
     end;
     inc(Linha);

     { Descrição do Produto }
     with ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)] do
     begin
       Value := trim(ProcurarProduto(FieldByName('cod_produto').AsString,
                     qryPedidocod_cliente.AsString,
                     pedido_complementocod_fornecedor.AsInteger).DenProduto);
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       ColumnWidth := 50;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { Código do Produto }
     with ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)] do
     begin
       NumberFormat := '@';
       if (IdiomaImporter = 'I') then s := 'CODE: '
       else if (IdiomaImporter = 'P') then s := 'CÓDIGO: '
       else if (IdiomaImporter = 'E') then s := 'CÓDIGO: ';
       Value := s + FmtProdutoCliente(qryPedidocod_cliente.AsString, FieldByName('cod_produto').AsString).fmtProduto;
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { Order Number }
     with ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)] do
     begin
       if (IdiomaImporter = 'I') then s := 'ORDER NO.: '
       else if (IdiomaImporter = 'P') then s := 'PEDIDO: '
       else if (IdiomaImporter = 'E') then s := 'PEDIDO: ';
       Value := s + trim(pedido_complementonum_pedido_cli.AsString);
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);

     { MADE IN ... }
     with ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)] do
     begin
       if (IdiomaExporter = 'I') then s := 'MADE IN '
       else if (IdiomaExporter = 'P') then s := 'PRODUZIDO EM '
       else if (IdiomaExporter = 'E') then s := 'HECHO EN ';
       Value := s + Exportadorpais_origem.AsString;
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;

     { bordas }
     with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'A'+IntToStr(Linha)] do
     begin
      Borders[xlDiagonalDown].LineStyle := xlNone;
      Borders[xlDiagonalUp].LineStyle := xlNone;
      with Borders[xlEdgeLeft] do
      begin
          LineStyle := xlContinuous;
          Weight := xlMedium;
          ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeTop] do
      begin
          LineStyle := xlContinuous;
          Weight := xlMedium;
          ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeBottom] do
      begin
          LineStyle := xlContinuous;
          Weight := xlMedium;
          ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeRight] do
      begin
          LineStyle := xlContinuous;
          Weight := xlMedium;
          ColorIndex := xlAutomatic;
      end;
      Borders[xlInsideVertical].LineStyle := xlNone;
      Borders[xlInsideHorizontal].LineStyle := xlNone;
      VerticalAlignment := xlTop;
     end;
     with ExcelWorkSheet.Range['C'+IntToStr(LinhaAux),'C'+IntToStr(Linha)] do
     begin
      Borders[xlDiagonalDown].LineStyle := xlNone;
      Borders[xlDiagonalUp].LineStyle := xlNone;
      with Borders[xlEdgeLeft] do
      begin
          LineStyle := xlContinuous;
          Weight := xlMedium;
          ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeTop] do
      begin
          LineStyle := xlContinuous;
          Weight := xlMedium;
          ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeBottom] do
      begin
          LineStyle := xlContinuous;
          Weight := xlMedium;
          ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeRight] do
      begin
          LineStyle := xlContinuous;
          Weight := xlMedium;
          ColorIndex := xlAutomatic;                                       
      end;
      Borders[xlInsideVertical].LineStyle := xlNone;
      Borders[xlInsideHorizontal].LineStyle := xlNone;
      VerticalAlignment := xlTop;
     end;
     Inc(Linha);
     Next;
   end;
   Close;
  end;

  { Congelar Painéis }
  ExcelWorkSheet.Range['A23','A23'].Select;
  ExcelApplication.ActiveWindow.FreezePanes := True;
end;


procedure Tfr_ManPedido.PedidoItensPackingList(Tipo: String);
var
  cont, SeqEmbEsp, SeqPallet, LinIniPallet, LinIniEmbEsp, Seq, Altura : Integer;
  Med, EmbEsp, CodProduto, dirImagem, fileImagem : String;
  s,s1,S2 : String;
begin
   { Itens da Packing List }
   Seq := 1; { sequencia para os itens da Packing List, não é a mesma de seq_pkl }
   with produtos_pkl do
   begin
     SQL.Clear;
     SQL.Add('select INVL(a."seq_pallet",0) "seq_pallet", a."seq_emb_esp", a."ies_emb_esp", a."cod_produto",');
     if (Tipo = 'A') or (Tipo = '') then
         SQL.Add('       a."vlr_unitario",                                                                  ')
     else
         SQL.Add('       a."vlr_unitario_esp",                                                              ');
     SQL.Add('MIN(a."seq_pkl") "seq_pkl",                                                                   ');
     SQL.Add('SUM(a."qtd_produto") "qtd_produto",                                                           ');
     SQL.Add('SUM(a."qtd_export_box") "qtd_export_box",                                                     ');
     SQL.Add('SUM(a."vol_caixas") "vol_caixas",                                                             ');
     SQL.Add('SUM(a."pes_bruto") "pes_bruto",                                                               ');
     SQL.Add('SUM(a."pes_liquido") "pes_liquido",                                                           ');
     SQL.Add('SUM(a."qtd_pallet") "qtd_pallet",                                                             ');
     SQL.Add('SUM(a."pes_bruto_pallet") "pes_bruto_pallet",                                                 ');
     SQL.Add('SUM(a."pes_liquido_pallet") "pes_liquido_pallet",                                             ');
     SQL.Add('SUM(a."comprimento_pallet") "comprimento_pallet",                                             ');
     SQL.Add('SUM(a."largura_pallet") "largura_pallet",                                                     ');
     SQL.Add('SUM(a."altura_pallet") "altura_pallet",                                                       ');
     SQL.Add('SUM(a."volume_pallet") "volume_pallet",                                                       ');
     SQL.Add('MAX(e."sigla_i") "sigla_i",                                                                   ');
     SQL.Add('MAX(e."sigla_vol_i") "sigla_vol_i",                                                           ');
     SQL.Add('MAX(d."pes_unitario") "pes_unitario",                                                         ');
     SQL.Add('MAX(d."ncm_cod") "ncm_cod"                                                                    ');
     SQL.Add('from "pedido_produto" a, "produto" d, "medida" e                                              ');
     SQL.Add('where a."cod_empresa" = :cod_empresa                                                          ');
     SQL.Add('  and a."num_pedido" = :num_pedido                                                            ');
     SQL.Add('  and d."cod_empresa" = a."cod_empresa"                                                       ');
     SQL.Add('  and d."cod_produto" = a."cod_produto"                                                       ');
     SQL.Add('  and e."cod_uni_medida" = d."cod_uni_medida"                                                 ');
     SQL.Add('group by 1,2,3,4,5                                                                            ');
     SQL.Add('order by 6                                                                                    ');

     ParamByName('cod_empresa').Value := qryPedidocod_empresa.AsInteger;
     ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
     Open;
     Last;
     First;
     SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
     SeqPallet := FieldByName('seq_pallet').AsInteger;
     LinIniPallet := Linha;
     EmbEsp := FieldByName('ies_emb_esp').AsString;
     if (EmbEsp = 'S') then LinIniEmbEsp := Linha;

     While Not(EOF) do
     begin
       { localizar item no pedido }
       CodProduto := FieldByName('cod_produto').AsString;
       qryPedidoProduto.Locate('cod_produto', CodProduto, [loPartialKey]);

       { procurar dados da embalagem especial }
       with emb_esp_ped do
       begin
         Close;
         ParamByName('cod_empresa').AsInteger	:= qryPedidocod_empresa.AsInteger;
         ParamByName('num_pedido').Value 	:= qryPedidonum_pedido.AsLargeInt;
         ParamByName('seq_emb').AsInteger := SeqEmbEsp;
         Open;
       end;

       Med := '';
       if (EmbEsp = 'N') then
       begin
         with embalagem do
         begin
           Close;
           ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
           ParamByName('cod_produto').AsString := CodProduto;
           ParamByName('qtd_produto').Value := 1;
           Open;
           if Not(IsEmpty) then
           begin
             { Comentários sobre as medidas das caixas }
             Med := FormatFloat('L ##0.0', embalagemcomprimento.AsFloat) + ' x ' +
                    FormatFloat('W ##0.0', embalagemlargura.AsFloat) + ' x ' +
                    FormatFloat('H ##0.0', embalagemaltura.AsFloat) + ' cm, updated on '+
                    FormatDateTime('DD.MM.YY', embalagemdat_cad_dimensoes.AsDateTime) + ', ' +
                    StringReplace(embalagemobservacao.AsString, #13#10, ' ', [rfReplaceAll]);
           end
           else Med := '';
         end;
       end else  // dimensões da caixa especial
           Med := FormatFloat('L ##0.0', emb_esp_pedprofundidade.AsFloat) + ' x ' +
                  FormatFloat('W ##0.0', emb_esp_pedlargura.AsFloat) + ' x ' +
                  FormatFloat('H ##0.0', emb_esp_pedaltura.AsFloat) + ' cm.';

       { A - SEQ - sequencia para os itens no excel }
       ExcelWorkSheet.Cells.Item[Linha, 1].Value := Seq;
       Inc(Seq);
       { B - CODE OF ITEM }
       ExcelWorkSheet.Cells.Item[Linha, 2].NumberFormat := '@';
       ExcelWorkSheet.Cells.Item[Linha, 2].Value := FmtProdutoCliente(qryPedidocod_cliente.AsString, CodProduto).fmtProduto;
       { C - ENGLISH/PORTUGUESE DESCRIPTION }
       { OBTER DESCRIÇÕES DETALHADAS EM INGLÊS E PORTUGUÊS DO PRODUTO, GRUPO E NCM }
        with ProdutoDet(CodProduto, qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger, 'P') do
       begin
         s1 := Ingles;
         s2 := Portugues;

         if s1[Length(s1)] <> '.' then
            s1 := s1 + '.';

         s := s1 + ' ' + S2 + '. ('+ Grupo;

         if (clientencm_pedido.Value = 'S') then
            s := s + ', NCM: ' + NcmDoc;

         s := s + ')';


         with ExcelWorkSheet.Range['B'+IntToStr(Linha),'B'+IntToStr(Linha)] do
         begin
           Font.ColorIndex := CorNcm;
           Font.Bold := True;
         end;

       end;
       { Formatar descrição detalhada dos produtos }
       ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].FormulaR1C1 := s;
       with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[1,Length(s1)].Font do
       begin
         Size := 08;
         Bold := True;
         Name := 'Arial';
       end;

       with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[Length(s1)+1,Length(s)].Font do
       begin
         Size := 08;
         Bold := False;
         Name := 'Arial';
       end;
       ExcelWorkSheet.Cells.Item[Linha, 3].WrapText := True;
       ExcelWorkSheet.Cells.Item[Linha, 3].ShrinkToFit := False;

       // Obter altura da linha
       Altura := ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].RowHeight;

       { D - PRODUCT IMAGE }
       if (cbImages.Checked) then
       begin
         if Altura < 100 then
         begin
            CodProduto := StringReplace(CodProduto, '/', '-', [rfReplaceAll]);
            CodProduto := StringReplace(CodProduto, '\', '-', [rfReplaceAll]);

            fileImagem := dmCOM.GetFileImageProduto(qryPedidocod_cliente.AsString, CodProduto);

            if FileExists(fileImagem) then
               ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].RowHeight := 100;
         end;

         dirImagem := dmCOM.GetPathImageProduto(qryPedidocod_cliente.AsString);
         ExcelWorkSheet.Cells.Item[Linha, 4].FormulaR1C1 := '=GetImage("' + CodProduto + '","' + dirImagem + '")';
       end;

       { E - QUANTITY }
       ExcelWorkSheet.Cells.Item[Linha, 5].NumberFormat := '#.##0';
       ExcelWorkSheet.Cells.Item[Linha, 5].Value := FieldByName('qtd_produto').AsFloat;
       { F - UNIT }
       ExcelWorkSheet.Cells.Item[Linha, 6].Value := FieldByname('sigla_vol_i').AsString;
       { G - PRICE IN US$ }
       ExcelWorkSheet.Cells.Item[Linha, 7].NumberFormat := '#.##0,000000';
       if (Tipo = 'A') or (Tipo = '') then
          ExcelWorkSheet.Cells.Item[Linha, 7].Value := FieldByName('vlr_unitario').AsFloat
       else
          ExcelWorkSheet.Cells.Item[Linha, 7].Value := FieldByName('vlr_unitario_esp').AsFloat;

       if trim(qryPedidoProduto.FieldByName('obs_preco').AsString) <> '' then  { comentários sobre o preço unitário }
       begin
         ExcelWorksheet.Cells.Item[Linha, 7].AddComment(StringReplace(trim(qryPedidoProduto.FieldByName('obs_preco').AsString), #13#10, ' ', [rfReplaceAll]));
         ExcelWorkSheet.Cells.Item[Linha, 7].Comment.Visible := False; // mostrar quando por em foco com o mouse
       end;
       { H - OBSERVAÇÕES SOBRE PREÇOS }
       if (Tipo = 'A') or (Tipo = '') then
       begin
         ExcelWorkSheet.Cells.Item[Linha, 8].Value := StringReplace(trim(qryPedidoProduto.FieldByName('obs_preco').AsString), #13#10, ' ', [rfReplaceAll]);
       end else
       begin
         ExcelWorkSheet.Cells.Item[Linha, 8].Value := StringReplace(trim(qryPedidoProduto.FieldByName('obs_preco_esp').AsString), #13#10, ' ', [rfReplaceAll]);
       end;
       { I - PREÇO POR QUANTIDADE }
       ExcelWorkSheet.Cells.Item[Linha, 9].Value := '/'+FieldByName('sigla_i').AsString;
       { J - TOTAL US$ =ARRED(D*F;2)}
       ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '#.##0,00';
       ExcelWorkSheet.Cells.Item[Linha, 10].FormulaR1C1 := '=ROUND(RC[-5]*RC[-3],2)';
       { K - TOTAL VOLUME =ARRED(M*R;VolumeDecimais) * UNIT unType }
       ExcelWorkSheet.Cells.Item[Linha, 11].NumberFormat := VolumeNumberFormat;

       if (EmbEsp = 'N') then
       begin
         ExcelWorkSheet.Cells.Item[Linha, 11].FormulaR1C1 := '=ROUND(RC[3]*RC[7],'+ VolumeDecimais +')';
         if Med <> '' then
         begin
            ExcelWorksheet.Cells.Item[Linha, 11].AddComment(Med);
            ExcelWorkSheet.Cells.Item[Linha, 11].Comment.Visible := False;
         end;
       end
       else
         if (FieldByName('qtd_export_box').AsInteger > 0) then
         begin
           ExcelWorkSheet.Cells.Item[Linha, 11].Value := emb_esp_pedvol_total.AsFloat;
           if Med <> '' then
           begin
             ExcelWorksheet.Cells.Item[Linha, 11].AddComment(Med);
             ExcelWorkSheet.Cells.Item[Linha, 11].Comment.Visible := False;
           end;
         end;


       { L - TOTAL GROSS WEIGHT - Peso Bruto Total do Item = Peso Bruto Unitário do Item * Quantidade Pedida }
       ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';
       if (EmbEsp = 'N') then
         ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1 := '=ROUND(((RC[4]-(RC[5]*RC[3]))*RC[2])+(RC[-7]*RC[5]),2)'
       else
         if (FieldByName('qtd_export_box').AsInteger > 0) then
            ExcelWorkSheet.Cells.Item[Linha, 12].Value := emb_esp_pedpes_bruto.AsFloat;
       if (EmbEsp = 'N') then
       begin
         ExcelWorksheet.Cells.Item[Linha, 12].AddComment('Gross weight of master carton: ' +
           FormatFloat('##,##0.00 kg',embalagem.FieldByName('pes_bruto_caixa').AsFloat));  { Peso bruto da caixa master }
         ExcelWorkSheet.Cells.Item[Linha, 12].Comment.Visible := False; // mostrar quando por em foco com o mouse
       end;
       { M - TOTAL NET WEIGHT = D*P - peso líquido }
       ExcelWorkSheet.Cells.Item[Linha, 13].NumberFormat := '#.##0,00';
       if (EmbEsp = 'N') then
       begin
         ExcelWorkSheet.Cells.Item[Linha, 13].FormulaR1C1 := '= ROUND(RC[-8] * RC[4],2)';
         ExcelWorksheet.Cells.Item[Linha, 13].AddComment(ProdutoDet(produtos_pkl.FieldByName('cod_produto').AsString, qryPedidocod_cliente.AsString,
                                                         pedido_complementocod_fornecedor.AsInteger).obsPesoProduto);
         ExcelWorkSheet.Cells.Item[Linha, 13].Comment.Visible := False;
       end else
         if (FieldByName('qtd_export_box').AsInteger > 0) then
            ExcelWorkSheet.Cells.Item[Linha, 13].Value := emb_esp_pedpes_liquido.AsFloat;
       { N - QUANTITY OF PACKING =ARRED(D/M;0)}
       ExcelWorkSheet.Cells.Item[Linha, 14].NumberFormat := '#.##0';
       if (EmbEsp = 'N') then
          ExcelWorkSheet.Cells.Item[Linha, 14].FormulaR1C1 := '=ROUNDUP(RC[-9]/RC[1],0)'
       else
         if (FieldByName('qtd_export_box').AsInteger > 0) then
            ExcelWorkSheet.Cells.Item[Linha, 14].Value :=  emb_esp_pedqtd_caixas.AsFloat;
       { O - QUANTITY OF UNITS INSIDE MASTER CARTON  (embalagem.qtd_master) }
       if (EmbEsp = 'N') then
       begin
         ExcelWorkSheet.Cells.Item[Linha, 15].Value := embalagemqtd_master_box.AsFloat;
         ExcelWorkSheet.Cells.Item[Linha, 15].AddComment('Quantity master box: '
                                                         + embalagemqtd_master_box.AsString + ' units updated on '
                                                         + FormatDateTime('DD.MM.YY',embalagemdat_cad_master.AsDateTime) + '; '
                                                         + 'Quantity in inner box: '
                                                         + embalagemqtd_inner_box.AsString  + ' units updated on '
                                                         + FormatDateTime('DD.MM.YY', embalagemdat_cad_master.AsDateTime) + ', '
                                                         + StringReplace(embalagemobs_caixas.AsString, #13#10, ' ', [rfReplaceAll]));
         ExcelWorkSheet.Cells.Item[Linha, 15].Comment.Visible := False;
       end;
       { P - GROSS WEIGHT PER PACKING (Kg) - Peso Bruto da Caixa Master }
       ExcelWorkSheet.Cells.Item[Linha, 16].NumberFormat := '#.##0,00';
       if (EmbEsp = 'N') then
           ExcelWorkSheet.Cells.Item[Linha, 16].Formula := embalagempes_bruto_caixa.AsFloat
       else
         if (FieldByName('qtd_export_box').AsInteger > 0) then
            ExcelWorkSheet.Cells.Item[Linha, 16].Formula := emb_esp_pedpes_bruto_cx.AsFloat;
        { Q - NET WEIGHT PER PIECE (Kg) }
       ExcelWorkSheet.Cells.Item[Linha, 17].NumberFormat := '##0,0000';
       if (EmbEsp = 'N') then
          ExcelWorkSheet.Cells.Item[Linha, 17].Value := embalagempes_unit_prod.AsFloat;
       { R - VOLUME PACKING  - Volume da Master Box ) }
       ExcelWorkSheet.Cells.Item[Linha, 18].NumberFormat := '#.##0,0000';
       if (EmbEsp = 'N') then
          ExcelWorkSheet.Cells.Item[Linha, 18].Value := embalagemvol_master_box.AsFloat;
       { S - Peso da Caixa Vazia }
       ExcelWorkSheet.Cells.Item[Linha, 19].NumberFormat := '#.##0,00';
       if (EmbEsp = 'N') then
          ExcelWorkSheet.Cells.Item[Linha, 19].Value := embalagempes_unit_caixa.AsFloat;

       { Pallets }
       if (qryPedidoies_pallets.AsString = 'S') then
       begin
         if (FieldByName('seq_pallet').AsInteger > 0) and (FieldByName('qtd_pallet').AsInteger > 0) then
         begin
           { T - QUANTITY OF PALLETS }
           ExcelWorkSheet.Cells.Item[Linha, 20].NumberFormat := '#.##0';
           ExcelWorkSheet.Cells.Item[Linha, 20].Value := FieldByName('qtd_pallet').AsInteger;
           ExcelWorkSheet.Cells.Item[Linha, 20].HorizontalAlignment := xlCenter;
           ExcelWorkSheet.Cells.Item[Linha, 20].VerticalAlignment := xlCenter;
           { U - PALLET GROSS WEIGHT }
           ExcelWorkSheet.Cells.Item[Linha, 21].NumberFormat := '#.##0,00';
           ExcelWorkSheet.Cells.Item[Linha, 21].Value := FieldByName('pes_bruto_pallet').AsFloat;
           ExcelWorkSheet.Cells.Item[Linha, 21].HorizontalAlignment := xlCenter;
           ExcelWorkSheet.Cells.Item[Linha, 21].VerticalAlignment := xlCenter;
           { V - PALLET NET WEIGHT }
           ExcelWorkSheet.Cells.Item[Linha, 22].NumberFormat := '#.##0,00';
           ExcelWorkSheet.Cells.Item[Linha, 22].Value := FieldByName('pes_liquido_pallet').AsFloat;
           ExcelWorkSheet.Cells.Item[Linha, 22].HorizontalAlignment := xlCenter;
           ExcelWorkSheet.Cells.Item[Linha, 22].VerticalAlignment := xlCenter;
           { W - PALLET VOLUME }
           ExcelWorkSheet.Cells.Item[Linha, 23].NumberFormat := '#.##0,000';
           ExcelWorkSheet.Cells.Item[Linha, 23].Value := FieldByName('volume_pallet').AsFloat;
           ExcelWorkSheet.Cells.Item[Linha, 23].AddComment(FormatFloat('L ##0.0', FieldByName('comprimento_pallet').AsFloat) + ' x ' +
                                                FormatFloat('W ##0.0', FieldByName('largura_pallet').AsFloat) + ' x ' +
                                                FormatFloat('H ##0.0', FieldByName('altura_pallet').AsFloat) + ' cm.');
           ExcelWorkSheet.Cells.Item[Linha, 23].Comment.Visible := False;
           ExcelWorkSheet.Cells.Item[Linha, 23].HorizontalAlignment := xlCenter;
           ExcelWorkSheet.Cells.Item[Linha, 23].VerticalAlignment := xlCenter;
         end;
       end;
       //alinhamento vertical e horizontal dos dados
       ExcelWorksheet.Range['A' + IntToStr(Linha),'B' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Range['A' + IntToStr(Linha),'B' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
       ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
       ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].VerticalAlignment   := xlTop;
       ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].WrapText            := True;
       ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Orientation         := 0;
       ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].AddIndent           := False;
       ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].IndentLevel         := 0;
       ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ShrinkToFit         := False;
       ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ReadingOrder        := xlContext;
       ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].MergeCells          := False;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'W' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'W' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
       ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].HorizontalAlignment := xlLeft;
       ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].WrapText            := True;

       {bordas desde o cabeçalho até ultima linha}
       if (qryPedidoies_pallets.AsString = 'S') then
       begin
         with ExcelWorkSheet.Range['A' + IntToStr(Linha),'W' + IntToStr(Linha)] do
         begin
             Font.Name := 'Arial';
             Font.Size := 10;
             with Borders[xlInsideVertical] do
             begin
                LineStyle := xlContinuous;
                Weight := xlThin;
                ColorIndex := xlAutomatic;
             end;
             with Borders[xlEdgeTop] do
             begin
                LineStyle := xlContinuous;
                Weight := xlThin;
                ColorIndex := xlAutomatic;
             end;
             with Borders[xlEdgeRight] do
             begin
                LineStyle := xlContinuous;
                Weight := xlThin;
                ColorIndex := xlAutomatic;
             end;
             with Borders[xlEdgeLeft] do
             begin
                LineStyle := xlContinuous;
                Weight := xlThin;
                ColorIndex := xlAutomatic;
             end;
             with Borders[xlEdgeBottom] do
             begin
                LineStyle := xlContinuous;
                Weight := xlThin;
                ColorIndex := xlAutomatic;
             end;
         end;
       end else
       begin
        with ExcelWorkSheet.Range['A' + IntToStr(Linha),'S' + IntToStr(Linha)] do
        begin
            Font.Name := 'Arial';
            Font.Size := 10;
            with Borders[xlInsideVertical] do
            begin
               LineStyle := xlContinuous;
               Weight := xlThin;
               ColorIndex := xlAutomatic;
            end;
            with Borders[xlEdgeTop] do
            begin
               LineStyle := xlContinuous;
               Weight := xlThin;
               ColorIndex := xlAutomatic;
            end;
            with Borders[xlEdgeRight] do
            begin
               LineStyle := xlContinuous;
               Weight := xlThin;
               ColorIndex := xlAutomatic;
            end;
            with Borders[xlEdgeLeft] do
            begin
               LineStyle := xlContinuous;
               Weight := xlThin;
               ColorIndex := xlAutomatic;
            end;
            with Borders[xlEdgeBottom] do
            begin
               LineStyle := xlContinuous;
               Weight := xlThin;
               ColorIndex := xlAutomatic;
            end;
        end;
       end;
       ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Font.Size := 8;
       ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Font.Size := 8;
     Next;
     { mesclar células de embalagens especiais }
     if (produtos_pkl.FieldByName('seq_emb_esp').AsInteger <> SeqEmbEsp) then
     begin
       if (SeqEmbEsp > 0) then
       begin
          with ExcelWorkSheet.Range['K'+IntToStr(LinIniEmbEsp),'K'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['L'+IntToStr(LinIniEmbEsp),'L'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['M'+IntToStr(LinIniEmbEsp),'M'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['N'+IntToStr(LinIniEmbEsp),'N'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['O'+IntToStr(LinIniEmbEsp),'O'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['P'+IntToStr(LinIniEmbEsp),'P'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
       end;
       EmbEsp := FieldByName('ies_emb_esp').AsString;
       SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
       LinIniEmbEsp := Linha + 1;
     end;
     if (produtos_pkl.EOF) then
     begin
       if (SeqEmbEsp > 0) then
       begin
       with ExcelWorkSheet.Range['K'+IntToStr(LinIniEmbEsp),'K'+IntToStr(Linha)] do
       begin
         MergeCells := True;
         Interior.ColorIndex := 0;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
       end;
       with ExcelWorkSheet.Range['L'+IntToStr(LinIniEmbEsp),'L'+IntToStr(Linha)] do
       begin
         MergeCells := True;
         Interior.ColorIndex := 0;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
       end;
       with ExcelWorkSheet.Range['M'+IntToStr(LinIniEmbEsp),'M'+IntToStr(Linha)] do
       begin
         MergeCells := True;
         Interior.ColorIndex := 0;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
       end;
       with ExcelWorkSheet.Range['N'+IntToStr(LinIniEmbEsp),'N'+IntToStr(Linha)] do
       begin
         MergeCells := True;
         Interior.ColorIndex := 0;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
       end;
       with ExcelWorkSheet.Range['O'+IntToStr(LinIniEmbEsp),'O'+IntToStr(Linha)] do
       begin
         MergeCells := True;
         Interior.ColorIndex := 0;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
       end;
       with ExcelWorkSheet.Range['P'+IntToStr(LinIniEmbEsp),'P'+IntToStr(Linha)] do
       begin
         MergeCells := True;
         Interior.ColorIndex := 0;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
       end;
      end;
    end;
    { mesclar células de pallets }
    if (qryPedidoies_pallets.AsString = 'S') then
    begin
      if (produtos_pkl.FieldByname('seq_pallet').AsInteger <> SeqPallet) then
      begin
        if (SeqPallet > 0) then
        begin
           with ExcelWorkSheet.Range['T'+IntToStr(LinIniPallet),'T'+IntToStr(Linha)] do
           begin
             MergeCells := True;
             Interior.ColorIndex := 0;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
             WrapText := True;
             ShrinkToFit := False;
           end;
           with ExcelWorkSheet.Range['U'+IntToStr(LinIniPallet),'U'+IntToStr(Linha)] do
           begin
             MergeCells := True;
             Interior.ColorIndex := 0;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
             WrapText := True;
             ShrinkToFit := False;
           end;
           with ExcelWorkSheet.Range['V'+IntToStr(LinIniPallet),'V'+IntToStr(Linha)] do
           begin
             MergeCells := True;
             Interior.ColorIndex := 0;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
             WrapText := True;
             ShrinkToFit := False;
           end;
           with ExcelWorkSheet.Range['W'+IntToStr(LinIniPallet),'W'+IntToStr(Linha)] do
           begin
             MergeCells := True;
             Interior.ColorIndex := 0;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
             WrapText := True;
             ShrinkToFit := False;
           end;
        end;
        SeqPallet := FieldByName('seq_pallet').AsInteger;
        LinIniPallet := Linha + 1;
      end;
      if (produtos_pkl.EOF) then
      begin
        if (SeqPallet > 0) then
        begin
          with ExcelWorkSheet.Range['T'+IntToStr(LinIniPallet),'T'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['U'+IntToStr(LinIniPallet),'U'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['V'+IntToStr(LinIniPallet),'V'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['W'+IntToStr(LinIniPallet),'W'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
        end;
      end;
    end; // pallets
    Linha := Linha + 1;
   end; { while }
   Close;
   end;
   { Congelar Painéis }
   ExcelWorkSheet.Range['E8','E8'].Select;
   ExcelApplication.ActiveWindow.FreezePanes := True;
end;

procedure Tfr_ManPedido.qryPedidoProdutoBeforePost(DataSet: TDataSet);
begin
  { compartilhado com qryPedidoProduto e PedidoProdutoImp }
 	if pgcPedido.ActivePage = tbsPedidoProduto then
     DataSet.FieldByName('cod_produto').FocusControl;

   DataSet.FieldByName('qtd_pendente').AsFloat := DataSet.FieldByName('qtd_produto').AsFloat -
                                                          (DataSet.FieldByName('qtd_cancelada').AsFloat +
                                                           DataSet.FieldByName('qtd_romaneada').AsFloat +
                                                           DataSet.FieldByName('qtd_faturada').AsFloat);

   DataSet.FieldByName('vlr_liquido').AsFloat := DataSet.FieldByName('qtd_produto').AsFloat *
                                                          DataSet.FieldByName('vlr_unitario').AsFloat;

   DataSet.FieldByName('vlr_liquido_esp').AsFloat := DataSet.FieldByName('qtd_produto').AsFloat *
                                                              DataSet.FieldByName('vlr_unitario_esp').AsFloat;
   { indicar alteração nos preços do produto do pedido }
   if (DataSet.FieldByName('vlr_unitario').Value <> DataSet.FieldByName('vlr_unitario').OldValue) or
      (DataSet.FieldByName('vlr_unitario_esp').Value <> DataSet.FieldByName('vlr_unitario_esp').OldValue) then
   FlagAlteraFatura := True;
end;

procedure Tfr_ManPedido.qryPedidoProdutovlr_unitarioValidate(
  Sender: TField);
begin
  with qryPedidoProduto do
  begin
    FieldByName('qtd_pendente').AsFloat := FieldByName('qtd_produto').AsFloat -
                                           (FieldByName('qtd_cancelada').AsFloat + FieldByName('qtd_romaneada').AsFloat + FieldByName('qtd_faturada').AsFloat);
    FieldByName('vlr_liquido').AsFloat := FieldByName('qtd_pendente').AsFloat * FieldByName('vlr_unitario').AsFloat;
  end;
end;


procedure Tfr_ManPedido.pedido_containerAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManPedido.pedido_containerAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManPedido.pedido_containerNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('cod_empresa').AsInteger := qryPedidocod_empresa.AsInteger;
  DataSet.FieldByname('num_pedido').AsFloat := qryPedidonum_pedido.AsLargeInt;
end;

procedure Tfr_ManPedido.pedido_containerqtd_containerValidate(
  Sender: TField);
begin
  if Sender.Value <= 0 then
  begin
     Application.MessageBox('Quantidade de containers, deve ser maior que zero', 'Erro', MB_ICONERROR+MB_OK);
     Abort;
  end;

  { calcular novos pesos e volume, em função da nova quantidade de containers }
  pedido_containerarea_total.AsFloat := Sender.AsInteger * Containersarea_disp.AsFloat;
  pedido_containerpeso_total.AsFloat := Sender.AsInteger * Containerspeso_maximo.AsFloat;
end;

procedure Tfr_ManPedido.pedido_containercod_containerValidate(
  Sender: TField);
begin
  { calcular novos pesos e volume, em função da nova quantidade de containers }
  pedido_containerarea_total.AsFloat := pedido_containerqtd_container.AsInteger * Containersarea_disp.AsFloat;
  pedido_containerpeso_total.AsFloat := pedido_containerqtd_container.AsInteger * Containerspeso_maximo.AsFloat;
end;

procedure Tfr_ManPedido.JvDBUltimGrid1Enter(Sender: TObject);
begin
	Application.OnMessage := nil;
end;

procedure Tfr_ManPedido.JvDBUltimGrid2Enter(Sender: TObject);
begin
	Application.OnMessage := nil;
end;
                                                                             
procedure Tfr_ManPedido.JvDBUltimGrid2Exit(Sender: TObject);
begin
	Application.OnMessage := fr_Menu.ProcessaMsg;
  if pedido_container.State in [dsEdit, dsInsert] then
     pedido_container.Post;
end;

procedure Tfr_ManPedido.qryPedidoAfterOpen(DataSet: TDataSet);
begin
  dgbBaseComissao.ReadOnly := not(qryPedidoies_preco_esp.Value = 'S');

  { selecionar os produtos da lista do cliente }
	with qryProduto do
	begin
    DisableControls;
    Close;
    ParamByName('cod_empresa').AsSmallInt   := vgCod_Empresa;
    ParamByName('cod_cliente').AsString     := qryPedidocod_cliente.AsString;
    Open;
    EnableControls;
  end;
end;

procedure Tfr_ManPedido.pedido_complementonum_pedido_forValidate(
  Sender: TField);
begin
   if Sender.Text = '' then exit;
   if dmCOM.ChecarPedido(Sender.Text, 'C') then
   begin
     Application.MessageBox('Número de Confirmação de Pedido já existe no sistema', 'Erro', MB_OK+MB_ICONERROR);
     Abort;
   end;
end;

procedure Tfr_ManPedido.pedido_complementonum_pedido_cliValidate(
  Sender: TField);
begin
   if Sender.Text = '' then exit;
   if dmCOM.ChecarPedido(Sender.Text, 'P') then
   begin
     Application.MessageBox('Número do Pedido do Cliente já existe no sistema', 'Erro', MB_OK+MB_ICONERROR);
     Abort;
   end;
end;

procedure Tfr_ManPedido.Panel2Enter(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfr_ManPedido.Panel2Exit(Sender: TObject);
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
end;

procedure Tfr_ManPedido.edBuscaCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    qryPedidoProduto.DisableControls;
    if Des <> Ant then
    begin
       qryPedidoProduto.First;
       Ant := Des;
    end
    else
       qryPedidoProduto.Next;
    while not(qryPedidoProduto.EOF) do
    begin
      s := qryPedidoProduto.FieldByName('cod_produto').AsString;
      if Pos(Des, s) > 0 then
      begin
        qryPedidoProduto.EnableControls;
        Exit;
      end;
      qryPedidoProduto.Next;
    end;
    if (qryPedidoProduto.Eof) then qryPedidoProduto.First;    
    qryPedidoProduto.EnableControls;
  end;

begin

  { busca rápida por código do produto }
  if (Key = VK_RETURN) then
  begin
    if Not(qryPedidoProduto.IsEmpty) then
       Localizar(trim(SemFmtProduto(qryPedidocod_cliente.AsString, edBuscaCodigo.Text)));

    if trim(edBuscaCodigo.Text) <> '' then
    begin
      edBuscaCodigo.SetFocus;
      edBuscaCodigo.SelLength := 0;
      edBuscaCodigo.SelStart := Length(trim(edBuscaCodigo.Text));
    end;
  end;
end;

procedure Tfr_ManPedido.edBuscaDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    qryPedidoProduto.DisableControls;
    if Des <> Ant then
    begin
       qryPedidoProduto.First;
       Ant := Des;
    end
    else
       qryPedidoProduto.Next;
    while not(qryPedidoProduto.EOF) do
    begin
      s := qryPedidoProduto.FieldByName('calDenProduto').AsString;
      if Pos(Des, s) > 0 then
      begin
        qryPedidoProduto.EnableControls;
        Exit;
      end;
      qryPedidoProduto.Next;
    end;
    if (qryPedidoProduto.Eof) then qryPedidoProduto.First;    
    qryPedidoProduto.EnableControls;
  end;

begin
  { buscar pela descrição em português }
  if (Key = VK_RETURN) then
  begin
    if Not(qryPedidoProduto.IsEmpty) then
       Localizar(trim(edBuscaDesc.Text));

    if trim(edBuscaDesc.Text) <> '' then
    begin
      edBuscaDesc.SetFocus;
      edBuscaDesc.SelLength := 0;
      edBuscaDesc.SelStart := Length(trim(edBuscaDesc.Text));
    end;
  end;
end;

procedure Tfr_ManPedido.emb_especial_pedAfterScroll(DataSet: TDataSet);
begin
  if emb_especial_item_ped.State in [dsEdit, dsInsert] then emb_especial_item_ped.Post;
  with emb_especial_item_ped do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64 	:= qryPedidonum_pedido.AsLargeInt;
    ParamByName('seq').AsInteger         := emb_especial_ped.FieldByName('seq').AsInteger;
    Open;
  end;
end;

procedure Tfr_ManPedido.emb_especial_pedAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManPedido.emb_especial_pedAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManPedido.emb_especial_item_pedAfterDelete(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManPedido.emb_especial_item_pedAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally                                     
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManPedido.emb_especial_pedBeforeDelete(DataSet: TDataSet);
begin
  emb_especial_item_ped.First;
  while Not(emb_especial_item_ped.Eof) do
     emb_especial_item_ped.Delete;
end;

procedure Tfr_ManPedido.emb_especial_item_pedcod_produtoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '' then Exit;
  with FmtProdutoCliente(qryPedidocod_cliente.AsString, Sender.AsString) do
  begin
    Text := fmtProduto;
  end;

end;

procedure Tfr_ManPedido.qryPedidoProdutocod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '' then Exit;

  with FmtProdutoCliente(qryPedidocod_cliente.AsString, Sender.AsString) do
  begin
    Text := fmtProduto;
    edtcod_produto.MaxLength := fmtLength;
  end;

end;

procedure Tfr_ManPedido.qryPedidoProdutoCalcFields(DataSet: TDataSet);
begin
  with ProdutoDet(qryPedidoProdutocod_produto.AsString,
                       qryPedidocod_cliente.AsString,
                       pedido_complementocod_fornecedor.AsInteger) do
  begin
    DataSet.FieldByName('calDenProduto').AsString := Portugues;
  end;

end;

procedure Tfr_ManPedido.emb_especial_item_pedCalcFields(DataSet: TDataSet);
begin
  with ProdutoDet(emb_especial_item_pedcod_produto.AsString,
                       qryPedidocod_cliente.AsString,
                       pedido_complementocod_fornecedor.AsInteger) do
       DataSet.FieldByName('calDenProduto').AsString := Portugues;

end;

procedure Tfr_ManPedido.qryPedidoBeforePost(DataSet: TDataSet);
begin
  { não permitir data de confirmação menor que a data de emissão }
  if Not(qryPedidodat_liberacao.IsNull) then
     if dtpDatLiberacao.Date < DateOf(dtpDatEmissao.Date) then
     begin
       Application.MessageBox('A data de confirmação, não pode ser menor que a data de emissão.'#13'Se for necessario, altere também a data de emissão.', 'Informação', MB_OK+MB_ICONINFORMATION);
       pgcPedido.ActivePage := tbsPedido;
       dtpDatLiberacao.SetFocus;
       Abort;
     end;

  { Se a Data de Liberação for colocada em branco, e a situação do pedido for Normal, o Pedido volta para o tipo Order }
  { Pedidos Faturados ou Romaneados não poderão ter sua situação alterada }
  if qryPedidodat_liberacao.IsNull then
     if qryPedidoies_situacao.AsString = 'N' then
        qryPedidoies_tip_pedido.AsString := 'O';

  { data para entrega não pode ser menor que a data de emissão }
  if Not(qryPedidodat_entrega.IsNull) then
     if dtpDatEntrega.Date < DateOf(dtpDatEmissao.Date) then
     begin
       MessageDlg('Data de Entrega não pode ser menor que a data de emissão', mtError, [mbCancel], 0);
       pgcPedido.ActivePage := tbsPedido;
       dtpDatEntrega.SetFocus;
       Abort;
     end;

   { Confirmar o Pedido : ORDER --> CONFIRMATION }
   if (FlagConfirma) and (qryPedidodat_liberacao.Value > 0) then
   begin
     if (pedido_complementonum_pedido_for.AsString = '') then
     begin
      Application.MessageBox('Informe o Número de Confirmação do Pedido', 'Erro', MB_OK+MB_ICONERROR);
      dbeNumPedidoFor.SetFocus;
      Abort;
     end;
     qryPedidoies_tip_pedido.AsString := 'P';
   end;
   { Estornar a confirmação : CONFIRMATION --> ORDER }
   if (FlagConfirma) and (qryPedidodat_liberacao.IsNull) then
   begin
     qryPedidoies_tip_pedido.AsString := 'O';

     { Excluir o Pedido da Production List }
     with spr_excped_prodlist do                                                      
     begin
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
      ExecProc;
      try
        Transaction.CommitRetaining;
      except
        Transaction.RollbackRetaining;
      end;
     end;
   end;
end;


procedure Tfr_ManPedido.ExcluirMarcados(DataSet: TDataSet; Grade: TDBGrid);
var
  i, j: Integer;

begin
  { salvar posição na tabela }
  SavePlace := DataSet.GetBookmark;

  if Grade.SelectedRows.Count > 0 then
    with Grade.DataSource.DataSet do
      for i := 0 to Grade.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(Grade.SelectedRows.Items[i]));
        DataSet.Delete;
      end;
  { confirmar a exclusão na tabela }
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
		Transaction.RollbackRetaining;
   end;
   { posicionar-se no próximo item depois do excluído  }
   try
     DataSet.GotoBookmark(SavePlace);
     DataSet.FreeBookmark(SavePlace);
   except
     SavePlace := nil;
  end;
end;

procedure Tfr_ManPedido.fr_FmNavigator2acDeleteExecute(Sender: TObject);
begin
  { identifica de qual DataSet está sendo chamada a exclusão }
  if TDataSetDelete(Sender).DataSource = dtsPedidoProduto then
     ExcluirMarcados(qryPedidoProduto, fr_FmGrid1.grdGrid);


	with TIBDataSet(qryPedidoProduto) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      { Coloca Pedido em edição, para atualizar os campos calculados  }
      if Not(qryPedido.State in [dsInsert, dsEdit]) then
         qryPedido.Edit;
      qryPedido.Post;
      qryPedido.Refresh;
      if Not(pedido_complemento.State in [dsInsert, dsEdit]) then
         pedido_complemento.Edit;
      pedido_complemento.Post;
      pedido_complemento.Refresh;
   end;

end;

procedure Tfr_ManPedido.JvDBUltimGrid1UserSort(Sender: TJvDBUltimGrid;
  var FieldsToSort: TSortFields; SortString: String; var SortOK: Boolean);
begin
  SortOK := False; // desativar sort
end;

procedure Tfr_ManPedido.pedido_pagamentoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
   RecalcularSaldoFatura(qryPedidonum_pedido.AsLargeInt);
end;

procedure Tfr_ManPedido.RecalcularSaldoFatura(NumPedido: LongInt);
begin
   with spr_calc_saldo_fatura do
   begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
   end;
end;

procedure Tfr_ManPedido.pedido_pagamentoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
   { Totais pagos no Pedido }
   with cby_pedido_pagamento_totais do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido').Value := pedido_pagamentonum_pedido.AsLargeInt;
     Open;
   end;

   { Se houver pagamento na fatura, alterar os valores pagos na fatura }
   if (pedido_pagamentonum_nota_fiscal.AsInteger > 0) then
   begin
     with fatura_pagamento do                                                     
     begin
       Close;
       ParamByName('cod_empresa').Value := vgCod_Empresa;
       ParamByName('num_nota_fiscal').Value := pedido_pagamentonum_nota_fiscal.AsInteger;
       ParamByName('serie').Value := pedido_pagamentoserie.AsString;
       ParamByName('num_sequencia').Value := pedido_pagamentonum_seq_fatpag.AsInteger;
       Open;
       if Not(IsEmpty) then
       begin
         Edit;
         fatura_pagamentovlr_pagamento.Value := pedido_pagamentovlr_pagamento.AsFloat;
         fatura_pagamentovlr_pagamento_esp.Value := pedido_pagamentovlr_pagamento_esp.AsFloat;
         fatura_pagamentodat_pagamento.AsDateTime := pedido_pagamentodat_pagamento.AsDateTime;
         Post;
       end;
       Close;
     end;
   end;
   RecalcularSaldoFatura(qryPedidonum_pedido.AsLargeInt);
end;

procedure Tfr_ManPedido.pedido_pagamentoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('cod_empresa').AsInteger := qryPedidocod_empresa.AsInteger;
  DataSet.FieldByname('num_pedido').AsFloat := qryPedidonum_pedido.AsLargeInt;
  DataSet.FieldByName('num_sequencia').AsInteger := SeqPagamento(qryPedidonum_pedido.AsLargeInt);
end;

procedure Tfr_ManPedido.JvDBUltimGrid3Enter(Sender: TObject);
begin
	Application.OnMessage := nil;
end;

procedure Tfr_ManPedido.JvDBUltimGrid3Exit(Sender: TObject);
begin
	Application.OnMessage := fr_Menu.ProcessaMsg;
  if pedido_pagamento.State in [dsEdit, dsInsert] then
     pedido_pagamento.Post;

end;

procedure Tfr_ManPedido.JvDBUltimGrid3UserSort(Sender: TJvDBUltimGrid;
  var FieldsToSort: TSortFields; SortString: String; var SortOK: Boolean);
begin
  SortOK := False; // desativar sort
end;

function Tfr_ManPedido.SeqAdicDesc(NumPedido: Largeint) : Integer;
begin
  with SeqPedidoAdicDesc do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;
    Open;
    Result := FieldByName('prox_sequencia').AsInteger;
    if Result = 0 then Result := 1;
    Close;
  end;
end;


function Tfr_ManPedido.SeqPagamento(NumPedido: Largeint) : Integer;
begin
  with SeqPedidoPagamento do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;
    Open;
    Result := FieldByName('prox_sequencia').AsInteger;
    if Result = 0 then Result := 1;
    Close;
  end;
end;

procedure Tfr_ManPedido.SpeedButton3Click(Sender: TObject);
begin
  { chamar o form para cadastro de tipos de pagamento }
   try
   	Application.CreateForm(Tfr_CadPagamento1, fr_CadPagamento1);
   finally
   	fr_CadPagamento1.ShowModal;
     Pagamento.Close;
     Pagamento.Open;
   end;
   if fr_CadPagamento1.ModalResult = mrCancel then Abort;
   if fr_cadPagamento1.ModalResult = mrOK then
   begin
     if Not(pedido_pagamento.State in [dsEdit, dsInsert]) then
       pedido_pagamento.Edit;

     pedido_pagamentocod_empresa.Value := vgCod_Empresa;
     pedido_pagamentotxt_pagamento.Value := fr_CadPagamento1.IBDataSetden_pagamento.AsString;
     dbeVlrPagamento.SetFocus;
   end;
end;

procedure Tfr_ManPedido.CondicaoAfterOpen(DataSet: TDataSet);
begin                                                        
  DataSet.Last;
  DataSet.First;
end;

procedure Tfr_ManPedido.PagamentoAfterOpen(DataSet: TDataSet);
begin
  DataSet.Last;
  DataSet.First;
end;

procedure Tfr_ManPedido.pedido_adic_descAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      Transaction.CommitRetaining;
      Refresh;
      { Coloca Pedido em edição, para atualizar os campos calculados  }
      if Not(qryPedido.State in [dsInsert, dsEdit]) then
         qryPedido.Edit;

      qryPedido.Post;
      qryPedido.Refresh;
   end;
   RecalcularSaldoFatura(qryPedidonum_pedido.AsLargeInt);
end;

procedure Tfr_ManPedido.pedido_adic_descAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      { Coloca Pedido em edição, para atualizar os campos calculados  }
      if Not(qryPedido.State in [dsInsert, dsEdit]) then
         qryPedido.Edit;

      qryPedido.Post;
      qryPedido.Refresh;
   end;
   RecalcularSaldoFatura(qryPedidonum_pedido.AsLargeInt);
end;

procedure Tfr_ManPedido.pedido_adic_descNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('cod_empresa').AsInteger := qryPedidocod_empresa.AsInteger;
  DataSet.FieldByname('num_pedido').AsFloat := qryPedidonum_pedido.AsLargeInt;
  DataSet.FieldByName('num_sequencia').AsInteger := SeqAdicDesc(qryPedidonum_pedido.AsLargeInt);
  DataSet.FieldByName('ies_faturado').AsString := 'N';
end;

procedure Tfr_ManPedido.pedido_adic_descCalcFields(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('num_nota_fiscal').AsInteger > 0) then
  begin
    DataSet.FieldByName('num_fatura').AsString := dmCOM.ProcuraFatura(DataSet.FieldByName('num_nota_fiscal').AsInteger, DataSet.FieldByName('Serie').AsString);
  end;
end;

procedure Tfr_ManPedido.pedido_adic_descBeforePost(DataSet: TDataSet);
begin
  if pedido_adic_descvlr_adic_desc.IsNull then pedido_adic_descvlr_adic_desc.AsFloat := 0;
  if pedido_adic_descvlr_adic_desc_esp.IsNull then pedido_adic_descvlr_adic_desc_esp.AsFloat := 0;
end;

procedure Tfr_ManPedido.pedido_pagamentoAfterInsert(DataSet: TDataSet);
begin
  dbmTxtPagamentos.SetFocus;
end;

procedure Tfr_ManPedido.pedido_adic_descAfterInsert(DataSet: TDataSet);
begin
  pgPagDescAdic.ActivePage := tsDescAdic;
  dbmTxtDescricao.SetFocus;
end;

procedure Tfr_ManPedido.actHistPrecosExecute(Sender: TObject);
begin
   { Gerar um Excel com o Histórico de Preços dos Produtos do Pedido }

   { inicializar progress bar }
   Rect := panGauge.ClientRect;
   InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
   Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
   Application.ProcessMessages;
   Screen.Cursor := crHourGlass;

   with dmCOM.ProdutosHistPreco do
   begin
      Close;
      SQL.Clear;
      SQL.Add('select a."cod_produto", b."den_produto", b."den_produto_ing", b."cod_cliente", b."cod_fornecedor" ');
      SQL.Add('  from "pedido_produto" a, "produto" b                                                            ');
      SQL.Add(' where a."cod_empresa" = :cod_empresa                                                             ');
      SQL.Add('   and a."num_pedido" = :num_pedido                                                               ');
      SQL.Add('   and b."cod_empresa" = a."cod_empresa"                                                          ');
      SQL.Add('   and b."cod_produto" = a."cod_produto"                                                          ');
      SQL.Add(' group by 1,2,3,4,5                                                                               ');
      SQL.Add(' order by 1                                                                                       ');

      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
      Open;

      if IsEmpty then
      begin
        Ani.Terminate;
        Screen.Cursor := crDefault;
        Exit;
      end;
   end;

   dmCOM.ExcelHistoricoPrecos(qryPedidocod_cliente.Value, pedido_complementocod_fornecedor.Value, 1, qryPedidonum_pedido.Value);

   { finalizar progress bar }
   Ani.Terminate;
   Screen.Cursor := crDefault;

   dmCOM.AbrirPlanilha(dmCOM.FileName);
end;

procedure Tfr_ManPedido.pedido_adic_descvlr_adic_descValidate(
  Sender: TField);
begin
  if pedido_adic_descvlr_adic_desc.IsNull then pedido_adic_descvlr_adic_desc.AsFloat := 0;
end;

procedure Tfr_ManPedido.pedido_adic_descvlr_adic_desc_espValidate(
  Sender: TField);
begin
  if pedido_adic_descvlr_adic_desc_esp.IsNull then pedido_adic_descvlr_adic_desc_esp.AsFloat := 0;
end;

procedure Tfr_ManPedido.GerarAdicionaisDescontos;
Var
  LinAux : Integer;
  Tbr, Tbe : String;
begin
  Tbr := '=F'+IntToStr(Linha);
  Tbe := '=I'+IntToStr(Linha);                                    
  Linha := Linha + 2;
  LinAux := Linha;
  { criar na planilha Adicionais e Descontos do Pedido }
  with ExcelWorksheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)] do
  begin
    Font.Size := 10;
    Value := 'ADICIONAIS E DESCONTOS DO PEDIDO / ADDITIONAL AND DISCOUNTS';
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
    MergeCells := True;                                                                  
    Font.Bold := True;
    Interior.ColorIndex := 44;
  end;
  Inc(Linha);
  ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value := 'AD';
  with ExcelWorksheet.Range['B' + IntToStr(Linha),'C' + IntToStr(Linha)] do
  begin
    Value := 'DESCRIÇÃO';
    MergeCells := True;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
  end;
  ExcelWorksheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)].Interior.ColorIndex := 40;
  ExcelWorksheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)].Font.Size := 8;
  ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value := 'TIPO';
  ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
  ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value := 'VALOR REAL';
  ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Interior.ColorIndex := 35;
  ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value := 'VALOR ESP';
  ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Interior.ColorIndex := 7;
  Inc(Linha);

  with pedido_adic_desc do
  begin
    Close;
    ParamByName('cod_empresa').AsShort	:= qryPedidocod_empresa.AsInteger;
    ParamByName('num_pedido').AsInt64 	:= qryPedidonum_pedido.AsLargeInt;
    Open;
    while Not(EOF)do
    begin
      { A - Sequencia adc/desc }
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value := FieldByName('num_sequencia').Value;
      { C - Descrição adc/desc }
      with ExcelWorksheet.Range['B' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Value := StringReplace(trim(FieldByName('txt_descricao').AsString), #13#10, ' ', [rfReplaceAll]);
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        MergeCells := True;
        Interior.ColorIndex := 0;
        Rows.RowHeight := 12.75;
      end;
      { D - Tipo (A/D) }
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value := FieldByName('ies_tipo').AsString;
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      { E - Valor Adicional/Desconto Real }
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc').AsFloat;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Interior.ColorIndex := 35;
      { F - Valor Adicional/Desconto Especial }
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc_esp').AsFloat;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Interior.ColorIndex := 7;

      ExcelWorksheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)].Font.Size := 8;

      if (FieldByName('ies_tipo').AsString = 'A') then
      begin
        Tbr := Tbr + '+F'+IntToStr(Linha);
        Tbe := Tbe + '+I'+IntToStr(Linha);
      end;
      if (FieldByName('ies_tipo').AsString = 'D') then
      begin
        Tbr := Tbr + '-F'+IntToStr(Linha);
        Tbe := Tbe + '-I'+IntToStr(Linha);
      end;
      Next;
      Inc(Linha);
    end;
    { TOTAIS LIQUIDO DO PEDIDO }
    with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
    begin
      Value := 'TOTAL LIQUIDO: ';
      HorizontalAlignment := xlRight;
    end;
    if (Tbr <> '') then
    begin
      ExcelWorkSheet.Cells.Item[Linha, 6].NumberFormat := '#.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 6].Formula := Tbr;
      ExcelWorkSheet.Cells.Item[Linha, 6].Interior.ColorIndex := 35;
    end;
    if (Tbe <> '') then
    begin
      ExcelWorkSheet.Cells.Item[Linha, 9].NumberFormat := '#.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 9].Formula := Tbe;
      ExcelWorkSheet.Cells.Item[Linha, 9].Interior.ColorIndex := 7;
    end;

    { Bordas na área ocupada da planilha }
    with ExcelWorkSheet.Range['A'+IntToStr(LinAux),'I' + IntToStr(Linha)] do
    begin
     with Borders[xlInsideVertical] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;
     with Borders[xlInsideHorizontal] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;
     with Borders[xlEdgeTop] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;
     with Borders[xlEdgeRight] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;
     with Borders[xlEdgeLeft] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;
     with Borders[xlEdgeBottom] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;
     Font.Size := 8;
    end;
  end;
end;


procedure Tfr_ManPedido.actExcelGerarExecute(Sender: TObject);
Var
  DIR_PLANILHAS, PED : String;
  s : string;
begin
  { assegurar que os dados serão gravados antes de gerar a planilha de alteração/comissão }
  with TIBDataSet(qryPedidoProduto) do
  try
     ApplyUpdates;
  finally
     Transaction.CommitRetaining;
  end;

  with TIBDataSet(qryPedido) do                            
  try
     ApplyUpdates;
  finally
     Transaction.CommitRetaining;
  end;

  with TIBDataSet(pedido_complemento) do
  try
     ApplyUpdates;
  finally
     Transaction.CommitRetaining;
  end;


  { Gerar/Abrir a planilha de Alteração do Pedido }

  { Indicar se irá gerar as colunas AR até AU para Comissões na planilha }
  case (Sender as TAction).Tag of
    1: fComissao := False;
    2: fComissao := True;
  end;

  { obter modelo de planilha em branco  }
  with dmCOM.parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  if trim(pedido_complementonum_pedido_cli.AsString) = '' then
  begin
    Application.MessageBox('O Número de Pedido não foi informado', 'Informação',MB_ICONINFORMATION+MB_OK);
    dbNumPedidoCli.SetFocus;
    Exit;
  end;
  { Pasta onde será gravada a planilha  }
  DIR_PLANILHAS := trim(dmCOM.parametro_comercialdir_planilhas.AsString);
  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para planilhas do Cliente, não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
   if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { diretório para planilhas, mais subpasta com código do cliente }
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(qryPedidocod_cliente.AsString);
  { se o diretório de planilhas do cliente não existe, tenta criar o diretório }
   if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
     { Diretório Principal \ Cliente \ ORDERS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\ORDERS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
                                                                                    
  { Criar a Pasta com o mesmo nome do Número do Pedido }
  PED := trim(pedido_complementonum_pedido_cli.AsString);
  PED := StringReplace(ped, '/', '-', [rfReplaceAll]);
  PED := StringReplace(ped, '\', '-', [rfReplaceAll]);
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'ORDER ' + PED;
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
        
  if (cbEtdFactory.State = cbUnchecked) then
  begin
     if (fComissao) then FileListaEsp := DIR_PLANILHAS + '\ALTERAÇÃO DO PEDIDO - COMISSAO - ' + trim(PED) + '.xls'
     else  FileListaEsp := DIR_PLANILHAS + '\ALTERAÇÃO DO PEDIDO - ' + trim(PED) + '.xls'

  end
  else
     FileListaEsp := DIR_PLANILHAS + '\ALTERAÇÃO DO PEDIDO - ' + trim(PED) + ' - ETD FACTORY.xls';

  { Verificar se Planilha de Alteração existe }
  { Backup da planilha                        }
  { Excluir a planilha                        }
  { Criar novamente a planilha                }
  if FileExists(FileListaEsp) then begin
     CopyFile(PChar(FileListaEsp), PChar(FileListaEsp + '.BAK'), false);
     DeleteFile(FileListaEsp);
  end;

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  if Not(fComissao) then btnGerar.Enabled := False;
  if    (fComissao) then btnComissoes.Enabled := False;
  Application.ProcessMessages;
  dmCOM.parametro_comercialmod_plan_alt_ped.SaveToFile(FileListaEsp);
  AbrirExcel(FileListaEsp);
  if (cbEtdFactory.State = cbUnchecked) then
     ExcelWorkSheet.Name := 'Alteração Pedido'
  else
     ExcelWorkSheet.Name := 'Alteração Pedido ETD';

  { Gerar a Planilha de Alteração de Pedidos por Sequencia de Packing }
  with ProdutosExcelAlteracao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select a.*                             ');
    SQL.Add('  from "pedido_produto" a              ');
    SQL.Add('where                                  ');
    SQL.Add('  a."cod_empresa"  = :cod_empresa      ');
    SQL.Add('and a."num_pedido" = :num_pedido       ');
    if (cbEtdFactory.State = cbUnchecked) then
       SQL.Add('order by a."seq_pkl"                   ')
    else
       SQL.Add('order by a."etd_factory", a."seq_pkl"');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
    Open;
    First;

    Linha := 1;

    with ExcelWorksheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      if (cbEtdFactory.State = cbUnchecked) then
      begin
         if (fComissao) then Value := 'PLANILHA DE ALTERAÇÃO DO PEDIDO - COMISSÃO'
         else Value := 'PLANILHA DE ALTERAÇÃO DO PEDIDO';
      end
      else
         Value := 'PLANILHA DE ALTERAÇÃO DO PEDIDO - ORDER BY ETD FACTORY ';
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    Inc(Linha);

    with ExcelWorksheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Value := 'PRODUTOS DO PEDIDO: ' + trim(pedido_complementonum_pedido_cli.AsString)
             + '   CONFIRMAÇÃO: ' + trim(pedido_complementonum_pedido_for.AsString)
             + '   CLIENTE: ' + trim(qryPedidocod_cliente.AsString)
             + '   FORNECEDOR: ' + trim(pedido_complementolkpFornecedor.AsString);
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      MergeCells := True;
      Characters[01,19].Font.Bold := True;
    end;

    Linha := 4;

    AtualizarItensExcel(ProdutosExcelAlteracao, Linha);

    { Bordas na área ocupada da planilha }
    with ExcelWorkSheet.Range['A4', 'AU' + IntToStr(Linha)] do
    begin
      with Borders[xlInsideVertical] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlInsideHorizontal] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeTop] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeRight] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeLeft] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeBottom] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
    end;

    GerarAdicionaisDescontos;
  end;

  if (cbProdCliente.Checked) then
     ListarProdutosCliente;

  { Esconder as colunas K, L, M - ETD FACTORY }
  if (cbEtdFactory.State = cbUnchecked) then
     ExcelWorkSheet.Range['K1','M1'].EntireColumn.Hidden := True
  else
     ExcelWorkSheet.Range['K1','M1'].EntireColumn.Hidden := False;

  { Esconder ou não colunas para Pallets }
  if qryPedidoies_pallets.AsString = 'N' then
     ExcelWorksheet.Range['Z' + IntToStr(Linha),'AG' + IntToStr(Linha)].EntireColumn.Hidden := True;

  { Esconder as colunas de Comissões quando for Planilha de alteração }
  ExcelWorkSheet.Range['AR1','AU1'].EntireColumn.Hidden := Not(fComissao);
  ExcelWorksheet.Range['AA1','AA1'].EntireColumn.Hidden := True; // peso pallet vazio

  ExcelApplication.ActiveWorkbook.SaveAs(FileListaEsp,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  s := FileListaEsp;
  FecharExcel2;
  FileListaEsp := s ;

  { finalizar progress bar }
  btnGerar.Enabled := True;
  btnComissoes.Enabled := True;
  Ani.Terminate;

  AbrirExcel(FileListaEsp, True);
end;

procedure Tfr_ManPedido.PedidoProdutoImpAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManPedido.ImportarItens(Sender: TObject);
Var
  Seq, SeqFat, SeqAnt, NumNF, LinAux, LinFat, SeqPkl, SeqEmbEsp, NumeroCX, SeqPallet, qtd_pallet : Integer;
  pes_bruto_pallet, pes_liquido_pallet, comprimento_pallet, largura_pallet, altura_pallet, volume_pallet, peso_pallet_vazio: double;
  PrecoRealPed, PrecoEspPed, PrecoRealFat, PrecoEspFat, QtdPedido, QtdCancelar, QtdPendente, Saldo : Double;
  QtdFatura, VlrRealAd, VlrEspAd, ComC, ComF : Double;
  AlturaCX, LarguraCX, ComprimentoCX, VolumeCX, VolumeTotalCX, PesoCXVazia, PesoBrutoCx, PesoBrutoTotalCx, PesoLiqTotalCx : double;
  s, CodProduto, NumFatura, Serie, obs_preco, obs_preco_esp, obs_ad, TipoAD, etd_obs_cli, etd_obs_for : String;
  ok, okFat, ExcluirItem, Erro, Achou: Boolean;
  Tbr, Tbe, Data, Mesclar : String;
  DataInspecao, EtdFactory : TDate;
begin
  { IMPORTAÇÃO DA PLANILHA DE ALTERAÇÃO DO PEDIDO }

  pgPagDescAdic.ActivePage := tsPagamentos;

  { Selecionar a planilha }
  if trim(FileListaEsp) = '' then
  begin
    if (OpenDialog.Execute) then
       FileListaEsp := OpenDialog.FileName
    else begin
      Application.MessageBox('Operação cancelada', 'Informação', MB_ICONINFORMATION+MB_OK);
      Abort;
    end;
  end;

  AbrirExcel(FileListaEsp); // Abrir a planilha Excel (Normal, Comissao ou ETD)

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  Application.ProcessMessages;

  { LIBERAR QUANTIDADES PENDENTES DOS ITENS DO PEDIDO }
  with qryPedidoProduto do
  begin
    First;
    while Not(EOF) do
    begin
      Edit;
      qryPedidoProdutoqtd_cancelada.AsFloat := 0;
      qryPedidoProdutoqtd_romaneada.AsFloat := 0;
      qryPedidoProdutoqtd_faturada.AsFloat := 0;
      qryPedidoProdutoqtd_pendente.AsFloat := qryPedidoProdutoqtd_produto.AsFloat;
      qryPedidoProdutoseq_pkl.Clear;  // limpar sequencia para packing
      Post;
      Next;
    end;
    First;
  end;                                            

  { Excluir Embalagens Especiais }
  emb_especial_ped.First;
  while Not(emb_especial_ped.Eof) do
    emb_especial_ped.Delete;

  Linha := 4;
  SeqPkl := 1;
  SeqPallet := 0;

  Erro := False; { indica que a planilha foi importada sem erros }

  { COLUNA B - CÓDIGO DO PRODUTO, SERVE COMO TRACKER PARA A LEITURA DA PLANILHA }
  { CÓDIGO DO PRODUTO EM BRANCO, INDICA FIM DE PROCESSAMENTO                    }
  While (trim(ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Text) <> '') do
  begin
    ExcluirItem := False;
    ok := False;
    Mesclar := 'N';

    { A - Sequencia }
    try
      Seq := ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Value2;
    except
      Seq := 0; // indica um item novo em pedido produtos
    end;
    { B - Código do Produto }
    CodProduto := ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Value2;
    CodProduto := SemFmtProduto(qryPedidocod_cliente.AsString, CodProduto);

    with ProcurarProduto(CodProduto, qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger) do
    begin
      if Not(Existe) then
      begin
        inc(Linha);
        Continue;
      end;
      ComC := Comis_c;
      ComF := Comis_f;
    end;

    { D - Quantidade Pedido }
    try
      QtdPedido := ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Value2;
    except
      QtdPedido := 0.00;
    end;
    { E - Preço Real }
    try
      PrecoRealPed := ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)].Value2;
    except
      PrecoRealPed := 0.00;
    end;
    { G - COMENTÁRIO PREÇO REAL }
    obs_preco := ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)].Value;
    { H - Preço Especial }
    try
      PrecoEspPed := ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)].Value2;
    except
      PrecoEspPed := 0.00;
    end;
    { J - COMENTÁRIO PREÇO ESPECIAL }
    obs_preco_esp := ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)].Value;

    { K - ETD FACTORY }
    try
      Data := (ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)].Text);
      Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
      EtdFactory := StrToDate(Data);
    except
      EtdFactory := 0;
    end;

    { L - ETD FACTORY - COMENTÁRIOS DO CLIENTE }
    etd_obs_cli := ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)].Value;

    { M - ETD FACTORY - COMENTÁRIOS DO FORNECEDOR }
    etd_obs_for := ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)].Value;

    { AH - Quantidade a Cancelar }
    try
      QtdCancelar := ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)].Value2;
    except
      QtdCancelar := 0.00;
    end;
    { AI - Quantidade Pendente }
    try
      QtdPendente := ExcelWorksheet.Range['AI'+ inttostr(linha),'AI'+inttostr(linha)].Value2;
    except
      QtdPendente := 0.00;
    end;
    { AJ - Número da Fatura }
    NumFatura := Trim(ExcelWorksheet.Range['AJ'+ inttostr(linha),'AJ'+inttostr(linha)].Value2);
    { AK - Sequencia Item da Fatura}
    try
      SeqFat := ExcelWorksheet.Range['AK'+ inttostr(linha),'AK'+inttostr(linha)].Value2;
    except
      SeqFat := 0;  // indicar que o item será INCLUÍDO na Fatura
    end;
    { AL - Quantidade do Item na Fatura }
    try
      QtdFatura := ExcelWorksheet.Range['AL'+ inttostr(linha),'AL'+inttostr(linha)].Value2;
    except
      QtdFatura := 0.00; // indica que o Item será EXCLUÍDO da fatura
    end;
    { AM - Preço Real na Fatura }
    try
      PrecoRealFat := ExcelWorksheet.Range['AM'+ inttostr(linha),'AM'+inttostr(linha)].Value2;
    except
      PrecoRealFat := 0; // Erro
    end;
    { AO - Preço Especial }
    try
      PrecoEspFat := ExcelWorksheet.Range['AO'+ inttostr(linha),'AO'+inttostr(linha)].Value2;
    except
      PrecoEspFat := 0.00;  // Preço Especial pode ser Zero
    end;
    { AQ - Data da Inspeção }
    try
      Data := (ExcelWorksheet.Range['AQ'+ inttostr(linha),'AQ'+inttostr(linha)].Text);
      Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
      DataInspecao := StrToDate(Data);
    except
      DataInspecao := 0;
    end;

    { Item existe no Pedido ? }
    with PedidoProdutoImp do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').AsInt64  := qryPedidonum_pedido.AsLargeInt;
      ParamByName('num_sequencia').AsInteger := Seq;
      Open;
      { Existe item no pedido ? }
      if Not(IsEmpty) then
      begin { Sim, entrar em edição }
        PedidoProdutoImp.Edit;
      end else
      begin { Não, incluir um novo registro }
        PedidoProdutoImp.Append;
        PedidoProdutoImpseq_pkl.AsInteger := SeqPkl;
        Seq := PedidoProdutoImpnum_sequencia.AsInteger;
        PedidoProdutoImppct_comissao_f.Value := ComF;
        PedidoProdutoImppct_comissao_c.Value := ComC;
      end;
    end;

    { Tratar inicialmente itens como Embalagem Padrão }
    PedidoProdutoImp.FieldByName('ies_emb_esp').AsString := 'N';
    PedidoProdutoImp.FieldByName('seq_emb_esp').Clear;

    with dmCOM.CaixasMaster(CodProduto) do
    begin
     PedidoProdutoImp.FieldByName('un_cx_master').AsFloat := Master;
    end;

    { calcular embalagens de acordo com a quantidade }
    with dmCOM.CalcEmbalagem(CodProduto, QtdPedido) do
    begin
      PedidoProdutoImp.FieldByName('qtd_export_box').AsInteger := QtdExportBox;
      PedidoProdutoImp.FieldByName('qtd_inner_box').AsFloat := QtdInnerBox;
      PedidoProdutoImp.FieldByName('vol_caixas').AsFloat := VolCaixas;
      PedidoProdutoImp.FieldByName('pes_liquido').AsFloat := PesLiquido;
      PedidoProdutoImp.FieldByName('pes_bruto').AsFloat := PesBruto;
      PedidoProdutoImp.FieldByName('ies_caixa_fechada').AsString := CaixaFechada;
    end;

    PedidoProdutoImp.FieldByName('cod_produto').AsString := Trim(CodProduto);
    PedidoProdutoImpseq_pkl.AsInteger := SeqPkl;
    { Qtd Pedido = 0 marcar item do pedido para exclusão }
    if (QtdPedido = 0) then
    begin
       PedidoProdutoImpies_situacao.AsString := 'E';
       QtdFatura := 0;   // zerar qtd faturada para excluir o item da fatura caso exista
       if (Numfatura = '') then
       begin
         PedidoProdutoImp.Post;
         Inc(Linha);
         Continue;
       end else ok := True;
    end else PedidoProdutoImpies_situacao.AsString := 'N';
    { É possível cancelar a quantidade pendente ? Comparar com a Qtd Pendente da Tabela }
    if (QtdCancelar <= PedidoProdutoImpqtd_pendente.AsFloat) then
    begin
      PedidoProdutoImpqtd_cancelada.AsFloat := QtdCancelar;
      ok := True;
    end else
    begin
       ok := False;
       Erro := True;
    end;
    { Qtde Pendente Negativa - esta tentando cancelar mais do que o pendente ? }
    if (QtdPendente < 0) then
    begin
      ok := False;
      Erro := True;
    end;

    { Quantidade Pedido deve ser > 0 }
    if (QtdPedido > 0) then
    begin
        ok := True;
        PedidoProdutoImp.FieldByName('qtd_produto').AsFloat := QtdPedido;
    end else if (PedidoProdutoImpies_situacao.AsString <> 'E') then begin
                                                                      ok := False;
                                                                      Erro := True;
                                                                    end;
    { Preço Real Pedido}
    if (PrecoRealPed = 0) then
    begin
      { obter preço do Produto }
      with dmCOM.PrecoItem(PedidoProdutoImpcod_produto.AsString, qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger) do
      begin
        if (Existe) then
        begin
           PrecoRealPed := PrecoItem;
           { comparar valores atuais com anteriores }
           if (PrecoRealPed > 0) then
           begin
             ok := True;
             PedidoProdutoImpvlr_unitario.AsCurrency := PrecoItem;
             PedidoProdutoImpobs_preco.AsString := ObsPreco;
             PedidoProdutoImpdat_preco.AsDateTime := DataPreco;
             if (fComissao) then
             begin
               PedidoProdutoImppct_comissao_c.AsFloat := Comis_c;
               PedidoProdutoImppct_comissao_f.AsFloat := Comis_f;
             end;
           end;
        end;
      end;
    end else
    { Preco Real Pedido > 0 usar preço da planilha }
    begin
      ok := True;
      PedidoProdutoImp.FieldByName('vlr_unitario').AsFloat := PrecoRealPed;
      PedidoProdutoImpobs_preco.AsString := obs_preco;
      { obter comissões do produto }
      with ProcurarProduto(CodProduto, qryPedidocod_cliente.AsString,
                     pedido_complementocod_fornecedor.AsInteger) do
      begin
        PedidoProdutoImpdat_preco.AsDateTime := qryPedidodat_emissao.AsDateTime;
        if (fComissao) then
        begin
          PedidoProdutoImppct_comissao_c.AsFloat := Comis_c;
          PedidoProdutoImppct_comissao_f.AsFloat := Comis_f;
        end;
      end;
    end;
    { Preço Especial }
    if (PrecoEspPed > 0) then
    begin
       PedidoProdutoImp.FieldByName('vlr_unitario_esp').AsFloat := PrecoEspPed;
       PedidoProdutoImpobs_preco_esp.AsString := obs_preco_esp;
    end
    else
    begin
       PedidoProdutoImp.FieldByName('vlr_unitario_esp').Clear;
       PedidoProdutoImpobs_preco_esp.Clear;
    end;

    PedidoProdutoImpqtd_pendente.AsFloat := QtdPendente;
    PedidoProdutoImpqtd_romaneada.AsFloat := 0;
    PedidoProdutoImpqtd_faturada.AsFloat := QtdFatura;

    Inc(SeqPkl);

    { Tratar comissões importadas da planilha }
    if (fComissao) then
    begin
       if (ExcelWorksheet.Range['AR'+IntToStr(linha), 'AR'+IntToStr(linha)].Text <> '') then
           PedidoProdutoImppct_comissao_f.AsFloat := ExcelWorksheet.Range['AR'+IntToStr(linha), 'AR'+IntToStr(linha)].Value2;

       if (ExcelWorksheet.Range['AT'+IntToStr(linha), 'AT'+IntToStr(linha)].Text <> '') then
           PedidoProdutoImppct_comissao_c.AsFloat := ExcelWorksheet.Range['AT'+IntToStr(linha), 'AT'+IntToStr(linha)].Value2;
    end;

    { EMBALAGEM PADRÃO }
    if (ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].Text <> '') then
    begin
       PedidoProdutoImp.FieldByName('ies_emb_esp').AsString := 'N';
       PedidoProdutoImp.FieldByName('seq_emb_esp').Clear;

       with dmCOM.CaixasMaster(CodProduto) do
       begin
         PedidoProdutoImp.FieldByName('un_cx_master').AsFloat := Master;
       end;

       { calcular embalagens de acordo com a quantidade }
       with dmCOM.CalcEmbalagem(CodProduto, QtdPedido) do
       begin
        PedidoProdutoImp.FieldByName('qtd_export_box').AsInteger := QtdExportBox;
        PedidoProdutoImp.FieldByName('qtd_inner_box').AsFloat := QtdInnerBox;
        PedidoProdutoImp.FieldByName('vol_caixas').AsFloat := VolCaixas;
        PedidoProdutoImp.FieldByName('pes_liquido').AsFloat := PesLiquido;
        PedidoProdutoImp.FieldByName('pes_bruto').AsFloat := PesBruto;
        PedidoProdutoImp.FieldByName('ies_caixa_fechada').AsString := CaixaFechada;
       end;

       PedidoProdutoImp.FieldByName('qtd_pendente').AsFloat := PedidoProdutoImp.FieldByName('qtd_produto').AsFloat -
                                              (PedidoProdutoImp.FieldByName('qtd_cancelada').AsFloat + PedidoProdutoImp.FieldByName('qtd_romaneada').AsFloat
                                               + PedidoProdutoImp.FieldByName('qtd_faturada').AsFloat);
       PedidoProdutoImp.FieldByName('vlr_liquido').AsFloat := PedidoProdutoImp.FieldByName('qtd_produto').AsFloat * PedidoProdutoImp.FieldByName('vlr_unitario').AsFloat;
       PedidoProdutoImp.FieldByName('vlr_liquido_esp').AsFloat := PedidoProdutoImp.FieldByName('qtd_produto').AsFloat * PedidoProdutoImp.FieldByName('vlr_unitario_esp').AsFloat;
    end;

    if (DataInspecao <> 0) then
       PedidoProdutoImpdat_inspecao.Value := DataInspecao
    else
       PedidoProdutoImpdat_inspecao.Clear;

    if (EtdFactory <> 0) then
       PedidoProdutoImpetd_factory.Value := EtdFactory
    else
       PedidoProdutoImpetd_factory.Clear;
    PedidoProdutoImpetd_obs_cli.Value := etd_obs_cli;
    PedidoProdutoImpetd_obs_for.Value := etd_obs_for;


    if (ok) then PedidoProdutoImp.Post
            else PedidoProdutoImp.Cancel;

    { *** EMBALAGEM ESPECIAL *** }
    if (ExcelWorksheet.Range['R'+IntToStr(linha), 'R'+IntToStr(linha)].MergeCells = True) and
       (ExcelWorksheet.Range['R'+IntToStr(linha), 'R'+IntToStr(linha)].Text <> '')  then
    begin
      SeqEmbEsp := SeqEmbEsp + 1;
      { N - TOTAL VOLUME IN M³ - garantir o cálculo do volume }
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
      begin
        NumberFormat := VolumeNumberFormat;
        FormulaR1C1 := '=ROUND(RC[4]*RC[7],' + VolumeDecimais +')';
      end;
      { U - Volume - garantir o cálculo do volume }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
      end;
      { N - VOLUME TOTAL DAS CAIXAS }
      VolumeTotalCX := ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)].Value2;
      { O - PESO BRUTO TOTAL }
      PesoBrutoTotalCx := ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)].Value2;
      { P - TOTAL NET WEIGHT (Kg) }
      PesoLiqTotalCx := ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)].Value2;
      if (ExcelWorksheet.Range['P'+IntToStr(linha), 'P'+IntToStr(linha)].MergeCells = True) then
          Mesclar := 'S'
      else
          Mesclar := 'N';
      { R - SPECIAL CARTONS }
      NumeroCX := ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)].Value2;
      { T - PESO BRUTO DE 1 CAIXA }
      PesoBrutoCx := ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)].Value2;
      { U - VOLUME DA CAIXA }
      VolumeCX := ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)].Value2;
      { V - COMPRIMENTO }
      ComprimentoCX := ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)].Value2;
      { W - LARGURA }
      LarguraCX := ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)].Value2;
      { X - ALTURA }
      AlturaCX := ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)].Value2;

      { Gravar dados da Embalagem Especial }
      with emb_especial_ped do
      begin
         Append;
         FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
         FieldByName('num_pedido').AsFloat := qryPedidonum_pedido.AsLargeInt;
         FieldByName('seq').AsInteger := SeqEmbEsp;
         FieldByName('den_embalagem').AsString := 'CAIXA NUM: ' + IntToStr(SeqEmbEsp);

         FieldByName('qtd_caixas').AsFloat := NumeroCX;        { Quantidade de Packing }
         FieldByName('pes_bruto_cx').AsFloat := PesoBrutoCx;   { Peso Bruto de 1 Caixa }
         FieldByName('pes_bruto').AsFloat := PesoBrutoTotalCx; { Peso Bruto total das Caixas }

         FieldByName('altura').AsFloat := AlturaCX;
         FieldByName('largura').AsFloat := LarguraCX;
         FieldByName('profundidade').AsFloat := ComprimentoCX;
         FieldByName('vol_total').AsFloat := VolumeTotalCx;  { Volume Total das Caixas }
         FieldByName('pes_liquido').AsFloat := PesoLiqTotalCx;
         FieldByName('mesclar').AsString := Mesclar;

         { estes campos serão atualizados depois de ler todos os itens da caixa }
         FieldByName('qtd_produto').AsFloat := 0 ;
         FieldByName('qtd_total').AsFloat := 0;

         Post;
      end;
      { gravar dados da embalagem no pedido }
      with PedidoProdutoImp do
      begin
        Edit;
        FieldByName('vol_caixas').AsFloat := Arredonda(VolumeTotalCx, -3, rmUp);
        FieldByName('qtd_export_box').AsInteger := NumeroCX;
        FieldByName('ies_emb_esp').AsString := 'S';
        FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
        FieldByName('un_cx_master').AsFloat := QtdPedido;
        Post;
      end;
    end;
    { ITENS DA EMBALAGEM ESPECIAL }
    if (ExcelWorksheet.Range['R'+IntToStr(linha), 'R'+IntToStr(linha)].MergeCells = True) or
       (ExcelWorksheet.Range['R'+IntToStr(linha), 'R'+IntToStr(linha)].Text <> '') then
    begin
      { gravar dados do item no pedido }
      with PedidoProdutoImp do
      begin
        Edit;
        if (ExcelWorksheet.Range['R'+IntToStr(linha), 'R'+IntToStr(linha)].Text = '') then
        begin
          FieldByName('vol_caixas').Clear;
          FieldByName('qtd_export_box').Clear;
          FieldByName('pes_liquido').Clear;
          FieldByName('pes_bruto').Clear;
        end;
        FieldByName('ies_emb_esp').AsString := 'S';
        FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
        FieldByName('un_cx_master').AsFloat := QtdPedido;
        Post;
      end;
      { gravar itens da embalagem especial }
      with emb_especial_item_ped do
      begin
        Append;
        FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
        FieldByName('num_pedido').AsFloat := qryPedidonum_pedido.AsLargeInt;
        FieldByName('seq').AsInteger := SeqEmbEsp;
        FieldByName('num_sequencia').AsInteger := Seq; { a mesma sequencia dos itens do pedido }
        FieldByName('cod_produto').AsString := CodProduto;
        FieldByName('qtd_produto').AsFloat := QtdPedido;
        FieldByName('pes_liquido').AsFloat := dmCOM.CalcEmbalagem(CodProduto, QtdPedido).PesLiquido;
        Post;
      end;
    end;

     { ** PACKING INFORMATION ** }
     { Processar Pallets somente se check box estiver marcado }
     if (qryPedidoies_pallets.AsString = 'S') then
     begin
        qtd_pallet := 0;
        pes_bruto_pallet := 0;
        pes_liquido_pallet := 0;
        comprimento_pallet := 0;
        peso_pallet_vazio := 0;
        largura_pallet := 0;
        altura_pallet := 0;
        volume_pallet := 0;
        { Z - PALLETS }
        if (ExcelWorksheet.Range['Z'+IntToStr(linha), 'Z'+IntToStr(linha)].MergeCells = True) and
           (ExcelWorksheet.Range['Z'+IntToStr(linha), 'Z'+IntToStr(linha)].Text <> '') or
           (ExcelWorksheet.Range['Z'+IntToStr(linha), 'Z'+IntToStr(linha)].Text <> '') then
        begin
          { Z - QTD PALLET }
          qtd_pallet := ExcelWorksheet.Range['Z'+IntToStr(linha), 'Z'+IntToStr(linha)].Value2;
          { AA - PESO PALLET VAZIO }
          peso_pallet_vazio := ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].Value2;
          { AB - PESO BRUTO PALLET }
          pes_bruto_pallet := ExcelWorksheet.Range['AB'+IntToStr(linha), 'AB'+IntToStr(linha)].Value2;
          { AC - TOTAL NET WEIGHT OF PALLETS (Kg) - Calculado em spr_pesos_pallets_ped }
          { AD - COMPRIMENTO }
          comprimento_pallet := ExcelWorksheet.Range['AD'+IntToStr(linha), 'AD'+IntToStr(linha)].Value2;
          { AE - LARGURA }
          largura_pallet := ExcelWorksheet.Range['AE'+IntToStr(linha), 'AE'+IntToStr(linha)].Value2;
          { AF - ALTURA }
          altura_pallet := ExcelWorksheet.Range['AF'+IntToStr(linha), 'AF'+IntToStr(linha)].Value2;
          { AG - TOTAL VOLUME (m³) - calulado em spr_pesos_pallets_ped }
          SeqPallet := SeqPallet + 1;
        end;
        PedidoProdutoImp.Edit;
        { Identificar item do Pallet }
        if (ExcelWorksheet.Range['Z'+IntToStr(linha), 'Z'+IntToStr(linha)].MergeCells = True) or
           (ExcelWorksheet.Range['Z'+IntToStr(linha), 'Z'+IntToStr(linha)].Text <> '') then
        begin
          if (SeqPallet > 0) then
             PedidoProdutoImpseq_pallet.AsInteger := SeqPallet
          else
            PedidoProdutoImpseq_pallet.Clear;
        end
        else PedidoProdutoImpseq_pallet.Clear;
        { salvar informações dos pallets nos items do Pedido }
        PedidoProdutoImpqtd_pallet.AsInteger := qtd_pallet;
        PedidoProdutoImpcomprimento_pallet.AsFloat := comprimento_pallet;
        PedidoProdutoImplargura_pallet.AsFloat := largura_pallet;
        PedidoProdutoImpaltura_pallet.AsFloat := altura_pallet;
        PedidoProdutoImpvolume_pallet.AsFloat := volume_pallet;
        PedidoProdutoImppes_pallet_vazio.AsFloat := peso_pallet_vazio;
        PedidoProdutoImppes_bruto_pallet.AsFloat := pes_bruto_pallet;
        PedidoProdutoImp.Post;
     end else
     begin
        PedidoProdutoImp.Edit;
        PedidoProdutoImpseq_pallet.Clear;
        PedidoProdutoImpqtd_pallet.Clear;
        PedidoProdutoImppes_bruto_pallet.Clear;
        PedidoProdutoImppes_liquido_pallet.Clear;
        PedidoProdutoImpcomprimento_pallet.Clear;
        PedidoProdutoImplargura_pallet.Clear;
        PedidoProdutoImpaltura_pallet.Clear;
        PedidoProdutoImpvolume_pallet.Clear;
        PedidoProdutoImppes_pallet_vazio.Clear;
        PedidoProdutoImp.Post;
     end; // (qryPedidoies_pallets.AsString = 'S')

     { C - DESCRIÇÃO DO PRODUTO }
     with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       Value := ProdutoDet(CodProduto, qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger).Portugues;
       WrapText := True;
       ShrinkToFit := False;
       Rows.RowHeight := 12.75;
     end;
     { D - QUANTIDADE }
     with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlTop;
       Value := QtdPedido;
       NumberFormat := '#.##0,0';
       Interior.ColorIndex := 0;
     end;
     { E - PREÇO REAL }
     with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlCenter;
       Value := PedidoProdutoImpvlr_unitario.AsFloat;
       if (PedidoProdutoImpvlr_unitario.AsFloat > 0) then Interior.ColorIndex := 35
                                                     else Interior.ColorIndex := 3;
       NumberFormat := '#.##0,000000';
       WrapText := True;
       ShrinkToFit := False;
     end;
     { F - TOTAL REAL }
     with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlTop;
       FormulaR1C1 := '=ROUND(RC[-2]*RC[-1],2)';
       NumberFormat := '###.##0,00';
       Interior.ColorIndex := 35;
     end;
     { G - COMENTÁRIO PREÇO REAL }
     with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       Interior.ColorIndex := 35;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       Value := StringReplace(trim(PedidoProdutoImpobs_preco.AsString), #13#10, ' ', [rfReplaceAll]);
       WrapText := True;
       ShrinkToFit := False;
       Rows.RowHeight := 12.75;
     end;
     { H - PREÇO ESPECIAL }
     with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       Interior.ColorIndex := 7;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlCenter;
       Value := PedidoProdutoImpvlr_unitario_esp.AsFloat;
       NumberFormat := '#.##0,000000';
       WrapText := True;
       ShrinkToFit := False;
     end;
     { I - TOTAL ESPECIAL }
     with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlTop;
       FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
       NumberFormat := '###.##0,00';
       Interior.ColorIndex := 7;
     end;
     { J - COMENTÁRIO PREÇO ESPECIAL }
     with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       Interior.ColorIndex := 7;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       Value := StringReplace(trim(PedidoProdutoImpobs_preco_esp.AsString), #13#10, ' ', [rfReplaceAll]);
       WrapText := True;
       ShrinkToFit := False;
       Rows.RowHeight := 12.75;
     end;
     { AH - CANCELADA }
     with ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlCenter;
       Value := PedidoProdutoImpqtd_cancelada.AsFloat;
       NumberFormat := '#.##0,0';
       WrapText := True;
       ShrinkToFit := False;
       if (QtdCancelar > PedidoProdutoImpqtd_pendente.AsFloat) then Interior.ColorIndex := 3  // erro
                                                               else Interior.ColorIndex := 0; // ok
     end;
     { AI - PENDENTE }
     with ExcelWorksheet.Range['AI' + IntToStr(Linha),'AI' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlCenter;
       FormulaR1C1 := '=RC[-28]-RC[-1]-RC[3]';
       NumberFormat := '#.##0,0';
       if (QtdPendente < 0) then Interior.ColorIndex := 3 // erro
                            else Interior.ColorIndex := 0; // ok
       WrapText := True;
       ShrinkToFit := False;
     end;
     { Quando não houver fatura ainda, mantém os mesmos preços do item do pedido }
     { AM - PREÇO REAL do item na Fatura }
     with ExcelWorksheet.Range['AM' + IntToStr(Linha),'AM' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlCenter;
       FormulaR1C1 := '=RC[-31]';
       NumberFormat := '#.##0,000000';
       WrapText := True;
       ShrinkToFit := False;
       Interior.ColorIndex := 35;
     end;
     { AO - PREÇO ESPECIAL do item na Fatura }
     with ExcelWorksheet.Range['AO' + IntToStr(Linha),'AO' + IntToStr(Linha)] do
     begin
       Font.Size := 8;
       Interior.ColorIndex := 7;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlCenter;
       FormulaR1C1 := '=RC[-30]';
       NumberFormat := '#.##0,000000';
       WrapText := True;
       ShrinkToFit := False;
     end;

      { PROCESSAR FATURA }
      if (NumFatura <> '') then
      begin
         { procurar fatura ORIGINAL do item do pedido }
         with ItensPedidoFatura do
         begin
           Close;
           ParamByName('cod_empresa').Value := vgCod_Empresa;
           ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
           ParamByName('num_seq_pedido').Value := Seq;
           Open;
           if Not(IsEmpty) then
           begin
              if (trim(NumFatura) <> trim(FieldByName('num_fatura').AsString)) then { comparar Fatura ORIGINAL com do Excel }
              begin
                with nota_fiscal_saida_produto do { posicionar no item da fatura original }
                begin
                  Close;
                  ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
                  ParamByName('num_nota_fiscal').AsInteger := ItensPedidoFaturanum_nota_fiscal.AsInteger;
                  ParamByName('serie').AsString := ItensPedidoFaturaSerie.AsString;
                  ParamByName('num_sequencia').AsInteger := ItensPedidoFaturanum_sequencia.AsInteger;
                  Open;
                  if Not(IsEmpty) then
                  begin
                    Edit;
                    nota_fiscal_saida_produtoies_situacao.AsString := 'E';  { marcar item para exclusão }
                    nota_fiscal_saida_produto.Post;
                  end;
                  nota_fiscal_saida_produto.Close;
                end;
                SeqFat := 0;
              end;
              ItensPedidoFatura.Close;
           end;
         end;
        { Tratar Fatura digitada no Excel }
        { Existe Fatura no sistema ? }
        if dmCOM.ChecarNF(NumFatura, 'F') then
        begin
          okFat := True;
        end else
        begin
          okFat := False;
          ExcelWorksheet.Range['AJ'+ inttostr(linha),'AJ'+inttostr(linha)].Interior.ColorIndex := 3; // erro não encontrou a Fatura
          Inc(Linha);
          Continue;
        end;
        { ok na fatura, procurar no sistema }
        if (okFat) then
        begin
          with dmCOM.ProcuraNF(NumFatura, qryPedidocod_cliente.AsString) do
          begin
            NumNF := NumNotaFiscal;
            Serie := SerieNF;
          end;
        end;
        if (okFat) then
        begin
          { Procurar o Item da Fatura do Produto }
          with nota_fiscal_saida_produto do
          begin
            Close;
            ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
            ParamByName('num_nota_fiscal').AsInteger := NumNF;
            ParamByName('serie').AsString := Serie;
            ParamByName('num_sequencia').AsInteger := SeqFat;
            Open;
            if Not(IsEmpty) then Edit // encontrou, entra em edição
            else
            begin
               if (SeqFat = 0) then // não encontrou, inserir novo item na fatura desde que SeqFat = 0
               begin
                 with ProxSequenciaNF do
                 begin
                   Close;
                   ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
                   ParamByName('num_nota_fiscal').AsInteger := NumNF;
                   ParamByName('serie').AsString := Serie;
                   Open;
                   if (ProxSequenciaNFprox_sequencia.IsNull) then SeqFat := 1
                   else SeqFat := ProxSequenciaNFprox_sequencia.AsInteger;
                 end;
                 nota_fiscal_saida_produto.Append;
                 nota_fiscal_saida_produtoies_emb_esp.AsString := 'N';
               end else // SeqFat > 0 e não encontrou o item na Fatura, mostrar erro
               begin
                 ExcelWorksheet.Range['AJ'+inttostr(linha), 'AL'+inttostr(Linha)].Interior.ColorIndex := 3; // erro
                 Inc(Linha);
                 Continue;
               end;
            end;
            { mover dados para itens da fatura }
            nota_fiscal_saida_produtocod_empresa.AsInteger := vgCod_Empresa;
            nota_fiscal_saida_produtonum_nota_fiscal.AsInteger := NumNF;
            nota_fiscal_saida_produtoserie.AsString := Serie;
            nota_fiscal_saida_produtonum_sequencia.AsInteger := SeqFat;
            nota_fiscal_saida_produtocod_produto.AsString := CodProduto;
            nota_fiscal_saida_produtoqtd_produto.AsFloat := QtdFatura;
            nota_fiscal_saida_produtovlr_unitario.AsFloat := PrecoRealPed;
            if (PrecoEspFat > 0) then
               nota_fiscal_saida_produtovlr_unitario_esp.AsFloat := PrecoEspPed
            else
               nota_fiscal_saida_produtovlr_unitario_esp.Clear;
            nota_fiscal_saida_produtodat_cadastro.AsDateTime := DataHoraServidor;
            nota_fiscal_saida_produtonum_pedido.AsLargeInt := qryPedidonum_pedido.AsLargeInt;
            nota_fiscal_saida_produtonum_seq_pedido.AsInteger := PedidoProdutoImpnum_sequencia.AsInteger;
            nota_fiscal_saida_produtovlr_liquido.AsFloat := nota_fiscal_saida_produtovlr_unitario.AsFloat * nota_fiscal_saida_produtoqtd_produto.AsFloat;
            nota_fiscal_saida_produtovlr_liquido_esp.AsFloat := nota_fiscal_saida_produtovlr_unitario_esp.AsFloat * nota_fiscal_saida_produtoqtd_produto.AsFloat;
            //nota_fiscal_saida_produtoies_emb_esp.AsString := 'N';
            nota_fiscal_saida_produtoobs_preco.AsString := obs_preco;
            nota_fiscal_saida_produtoobs_preco_esp.AsString := obs_preco_esp;
            { comissões }
            if (fComissao) then
            begin
              nota_fiscal_saida_produtopct_comissao_f.Value := PedidoProdutoImppct_comissao_f.AsFloat;
              nota_fiscal_saida_produtopct_comissao_c.Value := PedidoProdutoImppct_comissao_c.AsFloat;
            end;
            { calcular embalagens de acordo com a quantidade Faturada }
            with dmCOM.CalcEmbalagem(CodProduto, QtdFatura) do
            begin
              nota_fiscal_saida_produtoqtd_export_box.AsInteger := QtdExportBox;
              nota_fiscal_saida_produtoqtd_inner_box.AsFloat := QtdInnerBox;
              nota_fiscal_saida_produtovol_caixas.AsFloat := VolCaixas;
              nota_fiscal_saida_produtopes_liquido.AsFloat := PesLiquido;
              nota_fiscal_saida_produtopes_bruto.AsFloat := PesBruto;
              nota_fiscal_saida_produtoies_caixa_fechada.AsString := CaixaFechada;
            end;
            { QtdFatura = 0 - Marcar o item da fatura para exclusão }
            if (QtdFatura = 0) then
            begin
              nota_fiscal_saida_produtoies_situacao.AsString := 'E';
              nota_fiscal_saida_produto.Post;
              if (QtdPedido = 0) then
              begin
                Inc(Linha);
                Continue;
              end;
            end
            else begin
              nota_fiscal_saida_produtoies_situacao.AsString := 'N';
              nota_fiscal_saida_produto.Post;
              ExcelWorksheet.Range['AJ'+inttostr(linha), 'AL'+inttostr(Linha)].Interior.ColorIndex := 6;
            end;

            { AK - Sequencia do Produto na Fatura }
            with ExcelWorksheet.Range['AK' + IntToStr(Linha),'AK' + IntToStr(Linha)] do
            begin
              Font.Size := 8;
              HorizontalAlignment := xlLeft;
              VerticalAlignment := xlTop;
              Value := nota_fiscal_saida_produtonum_sequencia.AsInteger;
              Interior.ColorIndex := 0;
              WrapText := True;
              ShrinkToFit := False;
            end;
            { AM - PREÇO REAL do item na Fatura }
            with ExcelWorksheet.Range['AM' + IntToStr(Linha),'AM' + IntToStr(Linha)] do
            begin
              Font.Size := 8;
              HorizontalAlignment := xlRight;
              VerticalAlignment := xlCenter;
              Value := nota_fiscal_saida_produtovlr_unitario.AsFloat;
              if (nota_fiscal_saida_produtovlr_unitario.AsFloat > 0) then Interior.ColorIndex := 35
                                                                     else Interior.ColorIndex := 3;
              NumberFormat := '#.##0,000000';
              WrapText := True;
              ShrinkToFit := False;
            end;
            { AN - TOTAL REAL ITEM FATURA }
            with ExcelWorksheet.Range['AN' + IntToStr(Linha),'AN' + IntToStr(Linha)] do
            begin
              Font.Size := 8;
              Interior.ColorIndex := 35;
              HorizontalAlignment := xlRight;
              VerticalAlignment := xlCenter;
              FormulaR1C1 := '=ROUND(RC[-2]*RC[-1],2)';
              NumberFormat := '#.##0,00';
              WrapText := True;
              ShrinkToFit := False;
            end;
            { AO - PREÇO ESPECIAL do item na Fatura }
            with ExcelWorksheet.Range['AO' + IntToStr(Linha),'AO' + IntToStr(Linha)] do
            begin
              Font.Size := 8;
              Interior.ColorIndex := 7;
              HorizontalAlignment := xlRight;
              VerticalAlignment := xlCenter;
              Value := nota_fiscal_saida_produtovlr_unitario_esp.AsFloat;
              NumberFormat := '#.##0,000000';
              WrapText := True;
              ShrinkToFit := False;
            end;
            { AP - TOTAL ESPECIAL ITEM FATURA }
            with ExcelWorksheet.Range['AP' + IntToStr(Linha),'AP' + IntToStr(Linha)] do
            begin
              Font.Size := 8;
              Interior.ColorIndex := 7;
              HorizontalAlignment := xlRight;
              VerticalAlignment := xlCenter;
              FormulaR1C1 := '=ROUND(RC[-4]*RC[-1],2)';
              NumberFormat := '#.##0,00';
              WrapText := True;
              ShrinkToFit := False;
            end;
          end;
        end;
      end; { NumFatura <> '' }
      { Fim Processar Fatura }
      Inc(Linha);
  end;
  Inc(Linha);

  { F - TOTAL GERAL REAL PEDIDO }
  with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Interior.ColorIndex := 35;
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlCenter;
    FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
    NumberFormat := '#.##0,00';
    WrapText := True;
    ShrinkToFit := False;
  end;
  { I - TOTAL GERAL ESPECIAL PEDIDO }
  with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Interior.ColorIndex := 7;
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlCenter;
    FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
    NumberFormat := '#.##0,00';
    WrapText := True;
    ShrinkToFit := False;
  end;
  { AN - TOTAL GERAL REAL FATURA }
  with ExcelWorksheet.Range['AN' + IntToStr(Linha),'AN' + IntToStr(Linha)] do
  begin
   Font.Size := 8;
   Interior.ColorIndex := 35;
   HorizontalAlignment := xlRight;
   VerticalAlignment := xlCenter;
   FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
   NumberFormat := '#.##0,00';
   WrapText := True;
   ShrinkToFit := False;
  end;
  { AP - TOTAL GERAL ESPECIAL FATURA }
  with ExcelWorksheet.Range['AP' + IntToStr(Linha),'AP' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Interior.ColorIndex := 7;
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlCenter;
    FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
    NumberFormat := '#.##0,00';
    WrapText := True;
    ShrinkToFit := False;
  end;

  { Bordas na área ocupada da planilha }
  with ExcelWorkSheet.Range['A4','AU' + IntToStr(Linha)] do
  begin
   with Borders[xlInsideVertical] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
   with Borders[xlInsideHorizontal] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
   with Borders[xlEdgeTop] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
   with Borders[xlEdgeRight] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
   with Borders[xlEdgeLeft] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
   with Borders[xlEdgeBottom] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
   Font.Size := 8;
  end;
  { DESCONTOS E ADICIONAIS }
  Tbr := '=F'+IntToStr(Linha);
  Tbe := '=I'+IntToStr(Linha);
  While (trim(ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Text) <> 'AD') do
  begin
    Inc(Linha);
  end;
  Inc(Linha);
  { Ler Descontos e Adicionais da Planilha }
  While (trim(ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Text) <> '') do
  begin
    { A - Sequencia de Adicionais Descontos }
    try
      Seq := ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Value2;
    except
      Seq := 0; // indica um item novo em Adicionais Descontos
    end;
    { B - Descrição do Adicional Desconto }
    obs_ad := ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Value2;
    { D - Tipo A/D }
    TipoAD := ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Value2;
    { F - Valor Real A/D }
    try
      VlrRealAD := ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)].Value2;
    except
      VlrRealAD := 0.00;
    end;
    { I - Valor Especial A/D }
    try
      VlrEspAD := ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)].Value2;
    except
      VlrEspAD := 0.00;
    end;
    { Localizar A/D pela Sequencia }
    if pedido_adic_desc.Locate('num_sequencia', IntToStr(Seq), [loPartialKey]) then pedido_adic_desc.Edit
                                                                               else pedido_adic_desc.Append;
    if (trim(obs_ad) = '')  then
    begin
      if pedido_adic_desc.State in [dsEdit] then pedido_adic_desc.Cancel;
      pedido_adic_desc.Delete;
      Inc(Linha);
      Continue;
    end;

    pedido_adic_descies_tipo.AsString := TipoAD;
    pedido_adic_descvlr_adic_desc.AsFloat := VlrRealAD;
    pedido_adic_descvlr_adic_desc_esp.AsFloat := VlrEspAd;
    pedido_adic_desctxt_descricao.AsString := obs_ad;
    pedido_adic_desc.Post;

    if (pedido_adic_descies_tipo.AsString = 'A') then
    begin
      Tbr := Tbr + '+F'+IntToStr(Linha);
      Tbe := Tbe + '+I'+IntToStr(Linha);
    end;
    if (pedido_adic_descies_tipo.AsString = 'D') then
    begin
      Tbr := Tbr + '-F'+IntToStr(Linha);
      Tbe := Tbe + '-I'+IntToStr(Linha);
    end;

    Inc(Linha);
  end;

  if (Tbr <> '') then
  begin
    ExcelWorkSheet.Cells.Item[Linha, 6].NumberFormat := '#.##0,00';
    ExcelWorkSheet.Cells.Item[Linha, 6].Formula := Tbr;
    ExcelWorkSheet.Cells.Item[Linha, 6].Interior.ColorIndex := 35;
  end;
  if (Tbe <> '') then
  begin
    ExcelWorkSheet.Cells.Item[Linha, 9].NumberFormat := '#.##0,00';
    ExcelWorkSheet.Cells.Item[Linha, 9].Formula := Tbe;
    ExcelWorkSheet.Cells.Item[Linha, 9].Interior.ColorIndex := 7;
  end;

  PedidoProdutoImp.Close;
  qryPedidoProduto.Close;
  qryPedido.Edit;
  qryPedido.Post;

  { atualizar embalagens especias e pallets }
  with spr_emb_esp_ped do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;

  { atualizar Valores Especiais em pedido_produto quando não informados }
  with spr_vlr_esp_ped do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;

  { se não ocorreu erros na importação }
  if not(Erro) then
  begin
    { RECALCULAR PEDIDO E FATURAS DO PEDIDO }
    { Já faz a chamada para spr_pedido_prodlist para atualizar a Production List }
    with spr_pedido_faturas do
    begin
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
      ExecProc;
      try
        Transaction.CommitRetaining;
      except
        Transaction.RollbackRetaining;
      end;
    end;
  end;

  { Salvar a planilha }
  ExcelApplication.ActiveWorkbook.SaveAs(FileListaEsp,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  FecharExcel2;

  { finalizar progress bar }
  Ani.Terminate;

  { reabrir o pedido para atualizar os dados na tela após a importação }
  Open_Pedido(qryPedidonum_pedido.AsLargeInt, qryPedidocod_cliente.AsString);
  Application.MessageBox('Importação completa','Informação', MB_OK+MB_ICONINFORMATION);
  if Not(Erro) then DeleteFile(FileListaEsp);
  actExcelGerarExecute(Sender);
  if (fComissao) then   pgPagDescAdic.ActivePage := tsComissao;
end;
                                                                             

procedure Tfr_ManPedido.actExcelImportarExecute(Sender: TObject);
begin
  ImportarItens(Sender);
end;

procedure Tfr_ManPedido.qryPedidoProdutovlr_unitario_espValidate(                          
  Sender: TField);
begin
  with qryPedidoProduto do
  begin
    FieldByName('qtd_pendente').AsFloat := FieldByName('qtd_produto').AsFloat -
                                           (FieldByName('qtd_cancelada').AsFloat + FieldByName('qtd_romaneada').AsFloat + FieldByName('qtd_faturada').AsFloat);
    FieldByName('vlr_liquido_esp').AsFloat := FieldByName('qtd_pendente').AsFloat * FieldByName('vlr_unitario_esp').AsFloat;
  end;
end;

procedure Tfr_ManPedido.BancoBeforeOpen(DataSet: TDataSet);
begin
  Banco.ParamByName('cod_fornecedor').AsString := pedido_complementocod_fornecedor.AsString;
end;

procedure Tfr_ManPedido.qryPedidoProdutoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try                                                                                
      ApplyUpdates;
   finally                                                         
      Transaction.CommitRetaining;
   end;
   { atualizar embalagens especias e pallets }
   with spr_emb_esp_ped do
   begin                                                               
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
     end;
   end;
   qryPedidoProduto.Refresh;
   emb_especial_ped.Refresh;
end;

procedure Tfr_ManPedido.nota_fiscal_saida_produtoAfterPost(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManPedido.nota_fiscal_saida_produtoAfterDelete(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManPedido.actShipMarksExecute(Sender: TObject);
begin
  DocGerado := 'SM';
  GerarShipMarks;
end;

procedure Tfr_ManPedido.SpeedButton4Click(Sender: TObject);
begin
  { pesquisar Adcionais Descontos Pendentes         }
  { incluir o selecionado em pedido_adic_desc       }
  { excluir o Adicional Desconto Pendente de origem }

  if (pedido_adic_desc.State in [dsEdit]) then Exit;

  if Not (Assigned(frm_PesquisaAdcDesc)) then
     Application.CreateForm(Tfrm_PesquisaAdcDesc, frm_PesquisaAdcDesc);

  frm_PesquisaAdcDesc.Abrir(qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger);
  frm_PesquisaAdcDesc.ShowModal;  
  if (frm_PesquisaAdcDesc.ModalResult = mrOk) then
  begin
    { incluir adicional/desconto pendente selecionado }
    pedido_adic_desc.Append;
    pedido_adic_descies_tipo.Value := frm_PesquisaAdcDesc.adicional_descontoies_tipo.AsString;
    pedido_adic_descvlr_adic_desc.Value := frm_PesquisaAdcDesc.adicional_descontovlr_adic_desc.AsFloat;
    pedido_adic_descvlr_adic_desc_esp.Value := frm_PesquisaAdcDesc.adicional_descontovlr_adic_desc_esp.AsFloat;
    pedido_adic_desctxt_descricao.Value := frm_PesquisaAdcDesc.adicional_descontotxt_descricao.AsString;
    pedido_adic_desc.Post;
    { excluir adicional/desconto pendente selecionado }
    with adicional_desconto do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_sequencia').AsInteger := frm_PesquisaAdcDesc.adicional_descontonum_sequencia.AsInteger;
      Open;
      Delete;
    end;
  end;
end;

procedure Tfr_ManPedido.adicional_descontoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;
end;

procedure Tfr_ManPedido.adicional_descontoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;

end;

procedure Tfr_ManPedido.qryPedidodat_liberacaoChange(Sender: TField);
begin
  FlagConfirma := True;
end;

procedure Tfr_ManPedido.popPedidoClick(Sender: TObject);
Var
  F : String;

begin
  { Quando houver Preços Especiais abrir as duas planilhas ao mesmo tempo, caso existam }
  if (qryPedidoies_preco_esp.AsString = 'S') then
  begin
     { Abrir planilha tipo "B" }
     F := ExcelPedido('B');
     if FileExists(F) then
        AbrirExcel(F, True);

     { Abrir planilha tipo "A" }
     F := ExcelPedido('A')
  end
  else
     F := ExcelPedido(''); // Sem Preços Especiais abre somente uma planilha

  if Not(FileExists(F)) then
  begin
    Application.MessageBox('Planilha Excel não encontrada', 'Informação', MB_OK+MB_ICONINFORMATION);
    Abort;
  end;
  AbrirExcel(F, True);
end;

procedure Tfr_ManPedido.PedidoProdutoImpAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManPedido.actValidarExecute(Sender: TObject);
begin
  { Validar Embalagens Padrões e Recalcular Totais do Pedido }

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnValidar.Enabled := False;
  Application.ProcessMessages;

  { Validar o Pedido }
  with qryPedidoProduto do
  begin
    First;
    while Not(EOF) do
    begin
      Edit;
      { Validar Embalagens Padrões }
      if (qryPedidoProdutoies_emb_esp.AsString = 'N') then
      begin
        with dmCOM.CalcEmbalagem(qryPedidoProduto.FieldByName('cod_produto').AsString, qryPedidoProduto.FieldByName('qtd_produto').AsFloat) do
        begin
          qryPedidoProdutoqtd_export_box.AsInteger := QtdExportBox;
          qryPedidoProdutoqtd_inner_box.AsFloat := QtdInnerBox;
          qryPedidoProdutovol_caixas.AsFloat := VolCaixas;
          qryPedidoProdutopes_liquido.AsFloat := PesLiquido;
          qryPedidoProdutopes_bruto.AsFloat := PesBruto;
          qryPedidoProdutoies_caixa_fechada.AsString := CaixaFechada;
        end;
      end;
      Post;
      Next;
    end;
  end;
  { atualizar embalagens especias e pallets }
  with spr_emb_esp_ped do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;
  { atualizar Valores Especiais em pedido_produto quando não informados }
  with spr_vlr_esp_ped do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;
  { Totais do Pedido }
  qryPedido.Edit;
  qryPedido.Post;

  pedido_complemento.Edit;
  pedido_complemento.Post;

  { finalizar progress bar }
  btnValidar.Enabled := True;
  Ani.Terminate;

  Open_Pedido(qryPedidonum_pedido.AsLargeInt, qryPedidocod_cliente.AsString);

  Application.MessageBox('Validação do Pedido completa', 'Informação', MB_ICONINFORMATION+MB_OK);
end;

procedure Tfr_ManPedido.fatura_pagamentoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManPedido.fatura_pagamentoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManPedido.pedido_pagamentoBeforeDelete(DataSet: TDataSet);
begin
  if (pedido_pagamentonum_nota_fiscal.AsInteger > 0) then
  begin
    with fatura_pagamento do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_nota_fiscal').Value := pedido_pagamentonum_nota_fiscal.AsInteger;
      ParamByName('serie').Value := pedido_pagamentoserie.AsString;
      ParamByName('num_sequencia').Value := pedido_pagamentonum_seq_fatpag.AsInteger;
      Open;
      if Not(IsEmpty) then Delete;
      Close;
    end;
  end;
end;

procedure Tfr_ManPedido.Button1Click(Sender: TObject);
begin
  pedido_container.Append;
end;

procedure Tfr_ManPedido.Button2Click(Sender: TObject);
begin
  if Application.MessageBox('Excluir registro do Container no Pedido ?', 'Atenção', MB_YESNO+MB_ICONQUESTION) = mrNo then Abort;
  pedido_container.Delete;
end;

procedure Tfr_ManPedido.pedido_pagamentodat_pagamentoValidate(
  Sender: TField);
begin
 if (pedido_pagamentodat_pagamento.AsDateTime < qryPedidodat_emissao.AsDateTime) then
 begin
   Application.MessageBox('A data de pagamento não pode ser antes da data de emissão do pedido', 'Erro', MB_ICONERROR+MB_OK);
   dtDatPagamento.SetFocus;
   Abort;
 end;
 if (pedido_pagamentodat_pagamento.AsDateTime < qryPedidodat_liberacao.AsDateTime) then
 begin
   Application.MessageBox('A data de pagamento não pode ser antes da data de confirmação do pedido', 'Erro', MB_ICONERROR+MB_OK);
   dtDatPagamento.SetFocus;
   Abort;
 end;

end;

procedure Tfr_ManPedido.actExcelAbrirExecute(Sender: TObject);
Var
  F : String;
begin
  if (DocGerado = 'PD') then
  begin
     { Abrir as duas planilhas ao mesmo tempo, caso existam }

     if (qryPedidoies_preco_esp.AsString = 'S') then
     begin
        { Abrir planilha tipo "B" }
        F := ExcelPedido('B');
        if FileExists(F) then
           AbrirExcel(F, True);

        { Abrir planilha tipo "A" }
        F := ExcelPedido('A')
     end
     else
        F := ExcelPedido('');

     if Not(FileExists(F)) then
     begin
       Application.MessageBox('Planilha Excel não encontrada', 'Informação', MB_OK+MB_ICONINFORMATION);
       Abort;
     end;
     AbrirExcel(F, True);
  end;
  if (DocGerado = 'SM') then AbrirExcel(FileName, True);
end;


{ Gerar os itens na Planilha de Alteração do Pedido }
procedure Tfr_ManPedido.AtualizarItensExcel(DataSet: TDataSet; Var pLinha: Integer);
Var
  Linha : Integer;
  Mesclar : String;
  fPallet: boolean;
  xlCorPallet, xlVerde, xlAmarelo, xlRoxo, xlVermelho: integer;
  PesLiquidoCx : Double;

  { Gerar Itens na planilha }
  procedure Item(DataSetItem: TDataSet);
  begin
    with DataSetItem do
    begin

      Mesclar := ''; 

      { A - Sequencia do Produto }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := FieldByName('num_sequencia').AsInteger;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { B - Código do Produto }
      with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        NumberFormat := '@';
        Value := FmtProdutoCliente(qryPedidocod_cliente.AsString, FieldByName('cod_produto').AsString).fmtProduto;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { C - Descrição do Produto em Português }
      { OBTER DESCRIÇÕES DETALHADAS EM INGLÊS E PORTUGUÊS DO PRODUTO, GRUPO E NCM }
      with ProdutoDet(FieldByName('cod_produto').AsString, qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger, 'P') do
      begin
        s1 := Ingles;
        s2 := Portugues;

        if s1[Length(s1)] <> '.' then
           s1 := s1 + '.';

        s := s1 + ' ' + S2 + '. ('+ Grupo + ', NCM: ' + Ncm + ')';

        with ExcelWorkSheet.Range['B'+IntToStr(Linha),'B'+IntToStr(Linha)] do
        begin
          Font.ColorIndex := CorNcm;
          Font.Bold := True;
          if Not(Existe) then Interior.ColorIndex := xlVermelho;

        end;
      end;

      with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Font.Bold := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := s;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
        Characters[Length(s1)+1, Length(s1+s2)+3].Font.Bold := True;
        Characters[Length(s1+s2)+3, Length(s)].Font.Bold := False;
      end;
      { D - QUANTIDADE PEDIDO }
      with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        Value := FieldByName('qtd_produto').AsFloat;
        NumberFormat := '#.##0,0';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { E - PREÇO REAL }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 35;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        Value := FieldByName('vlr_unitario').AsFloat;
        NumberFormat := '#.##0,000000';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { F - TOTAL REAL }
      with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 35;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[-2]*RC[-1],2)';
        NumberFormat := '#.##0,00';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { G - COMENTÁRIO PREÇO REAL }
      with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 35;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := StringReplace(trim(FieldByName('obs_preco').AsString), #13#10, ' ', [rfReplaceAll]);
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;
      { H - PREÇO ESPECIAL }
      with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        if (FieldByName('vlr_unitario_esp').AsFloat > 0) and (FieldByName('vlr_unitario').AsFloat <> FieldByName('vlr_unitario_esp').AsFloat) then
            Interior.ColorIndex := 6
        else
            Interior.ColorIndex := 7;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        Value := FieldByName('vlr_unitario_esp').AsFloat;
        NumberFormat := '#.##0,000000';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { I - TOTAL ESPECIAL }
      with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        if (FieldByName('vlr_unitario_esp').AsFloat > 0) and (FieldByName('vlr_unitario').AsFloat <> FieldByName('vlr_unitario_esp').AsFloat) then
            Interior.ColorIndex := 6
        else
            Interior.ColorIndex := 7;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
        NumberFormat := '#.##0,00';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { J - COMENTÁRIO PREÇO ESPECIAL }
      with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 7;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := StringReplace(trim(FieldByName('obs_preco_esp').AsString), #13#10, ' ', [rfReplaceAll]);
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;
      { K - ETD FACTORY }
      with ExcelWorksheet.Range['K' + IntToStr(Linha),'k' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 4;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        if Not(FieldByName('etd_factory').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('etd_factory').AsDateTime)
        else
           Value := '';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { L - ETD FACTORY - COMENTÁRIOS DO CLIENTE }
      with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 4;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := StringReplace(trim(FieldByName('etd_obs_cli').AsString), #13#10, ' ', [rfReplaceAll]);
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;
      { M - ETD FACTORY - COMENTÁRIOS DO FORNECEDOR }
      with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 4;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := StringReplace(trim(FieldByName('etd_obs_for').AsString), #13#10, ' ', [rfReplaceAll]);
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;
      { embalagem especial }
      if (FieldByName('ies_emb_esp').AsString = 'S') then
      begin
        with emb_esp_ped do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger	:= qryPedidocod_empresa.AsInteger;
          ParamByName('num_pedido').Value 	   := qryPedidonum_pedido.AsLargeInt;
          ParamByName('seq_emb').AsInteger     := DataSetItem.FieldByName('seq_emb_esp').AsInteger;
          Open;
          Mesclar := FieldByName('mesclar').AsString;
          PesLiquidoCx := FieldByName('pes_liquido').Value;
        end;
      end;

      { Dados da Embalagem Padrão - chamada para cby_calc_embalagem }
      with emb_padrao do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('cod_produto').Value := DataSetItem.FieldByName('cod_produto').AsString;
        ParamByName('qtd_produto').Value := DataSetItem.FieldByName('qtd_produto').AsFloat;
        Open;
      end;

      { N - TOTAL VOLUME IN M³ }
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
      begin
        NumberFormat := VolumeNumberFormat;
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(RC[3]*RC[7],'+ VolumeDecimais +')'
        else
           FormulaR1C1 := '=ROUND(RC[4]*RC[7],'+ VolumeDecimais +')';
      end;

      { O - TOTAL GROSS WEIGHT (Kg) }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(((RC[5]-(RC[10]*RC[4]))*RC[2])+(RC[-11]*RC[10]),2)'
        else
           FormulaR1C1 := '=ROUND(RC[3]*RC[5],2)';
      end;

      { P - TOTAL NET WEIGHT (Kg) }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (Mesclar = 'S') then Value := PesLiquidoCx
                           else FormulaR1C1 := '=ROUND(RC[-12]*RC[9],2)';
      end;

      { Q - TOTAL QUANTITY OF PACKING }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUNDUP(RC[-13]/RC[2],0)'
        else
           Value := '';

        if (FieldByName('ies_caixa_fechada').AsString = 'N') then
        begin
          Font.ColorIndex := 3;
          Font.Bold := True;
        end else begin
          Font.ColorIndex := 0;
          Font.Bold := False;
        end;
      end;

      { R - SPECIAL CARTONS }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := emb_esp_pedqtd_caixas.AsFloat;
      end;

      { S - QUANTITY OF UNITS INSIDE THE PACKING }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           Value := emb_padraoqtd_master_box.AsFloat;
      end;

      { T - Peso Bruto de 1 Caixa - Gross Weight 1 Packing }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'S') then
            Value := emb_esp_pedpes_bruto_cx.AsFloat
        else
            Value := emb_padraopes_bruto_caixa.AsFloat;
      end;

      { U - Volume }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
      end;

      { V - Comprimento }
      with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'S') then
            Value := emb_esp_pedprofundidade.AsFloat
        else Value := emb_padraocomprimento.AsFloat;
      end;

      { W - Largura }
      with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := emb_esp_pedlargura.AsFloat
        else Value := emb_padraolargura.AsFloat;
      end;

      { X - Altura }
      with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := emb_esp_pedaltura.AsFloat
        else Value := emb_padraoaltura.AsFloat;
      end;

      { Y - NET WEIGHT OF THE PRODUCT (Kg) }
      with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
      begin
        NumberFormat := '##0,0000';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        Value := emb_padraopes_unit_prod.AsFloat;
      end;

      if (FieldByName('seq_pallet').AsInteger > 0) and
         (FieldByName('qtd_pallet').AsInteger >0) then
      begin
        with Pallets do
        begin
          Close;
          ParamByName('cod_empresa').Value := vgCod_Empresa;
          ParamBYName('num_pedido').Value := qryPedidonum_pedido.AsLargeInt;
          ParamByName('seq_pallet').Value := DataSetItem.FieldByName('seq_pallet').AsInteger;
          Open;
          { Z - QUANTITY OF PALLETS }
          with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
          begin
           NumberFormat := '#.##0';
           Font.Size := 8;
           HorizontalAlignment := xlCenter;
           Value := FieldByName('qtd_pallet').AsInteger;
          end;
          { AA - PESO PALLET VAZIO }
          with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
          begin
           NumberFormat := '#.##0,00';
           Font.Size := 8;
           HorizontalAlignment := xlCenter;
           Value := FieldByName('pes_pallet_vazio').AsFloat;
          end;
          { AB - PALLET GROSS WEIGHT }
          with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
          begin
           NumberFormat := '#.##0,00';
           Font.Size := 8;
           HorizontalAlignment := xlCenter;
           Value := FieldByName('pes_bruto_pallet').AsFloat;
          end;
          { AC - PALLET NET WEIGHT }
          with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
          begin
           NumberFormat := '#.##0,00';
           Font.Size := 8;
           HorizontalAlignment := xlCenter;
           Value := FieldByName('pes_liquido_pallet').AsFloat;
          end;
          { AD - COMPRIMENTO DO PALLET }
          with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
          begin
           NumberFormat := '#.##0';
           Font.Size := 8;
           HorizontalAlignment := xlCenter;
           Value := FieldByName('comprimento_pallet').AsFloat;
          end;
          { AE - LARGURA DO PALLET }
          with ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)] do
          begin
           NumberFormat := '#.##0';
           Font.Size := 8;
           HorizontalAlignment := xlCenter;
           Value := FieldByName('largura_pallet').AsFloat;
          end;
          { AF - ALTURA DO PALLET }
          with ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)] do
          begin
           NumberFormat := '#.##0';
           Font.Size := 8;
           HorizontalAlignment := xlCenter;
           Value := FieldByName('altura_pallet').AsFloat;
          end;
          { AG - PALLET VOLUME }
          with ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)] do
          begin
           NumberFormat := '#.##0,000';
           Font.Size := 8;
           HorizontalAlignment := xlCenter;
           FormulaR1C1 := '=ROUND(ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)*RC[-7],3)';
          end;
        end;
      end;
      { AH - CANCELADA }
      with ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Value := ProdutosExcelAlteracao.FieldByName('qtd_cancelada').AsFloat;
        NumberFormat := '#.##0,0';
        WrapText := True;
        ShrinkToFit := False;
        if ProdutosExcelAlteracao.FieldByName('qtd_cancelada').AsFloat > 0
        then Interior.ColorIndex := 3;
      end;
      { AI - PENDENTE }
      with ExcelWorksheet.Range['AI' + IntToStr(Linha),'AI' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        FormulaR1C1 := '=RC[-31]-RC[-1]-RC[3]';
        NumberFormat := '#.##0,0';
        WrapText := True;
        ShrinkToFit := False;
      end;

      { Procurar Itens do Pedido correspondente na Fatura  }
      { Quando Item do Pedido tiver 2 ou mais itens correspondentes na Fatura; ao gerar a Planilha de Alteração do Pedido: }
      { - Copiar a Coluna AE (QTDE FATURADA) para a Coluna D (QTDE PEDIDO);                                                }
      { - Manter as Observações dos Preços Real e Especial do Item                                                         }
      { - Após a importação, novos Itens serão acrescentados ao Pedido e terão apenas 1 Item correspondente na Fatura      }
      with ItensPedidoFatura do
      begin
        Close;
        ParamByName('cod_empresa').Value    := vgCod_Empresa;
        ParamByName('num_pedido').Value     := qryPedidonum_pedido.AsLargeInt;
        ParamByName('num_seq_pedido').Value := DataSetItem.FieldByName('num_sequencia').AsInteger;
        Open;
        while Not(EOF) do
        begin
           { Mostrar Itens correspondentes na Fatura }
           { Podem ocorrer itens de mesma sequencia no Pedido com sequencias diferentes na Fatura }
           { C - Descrição do Produto em Português }
           { OBTER DESCRIÇÕES DETALHADAS EM INGLÊS E PORTUGUÊS DO PRODUTO, GRUPO E NCM }
           with ProdutoDet(FieldByName('cod_produto').AsString, qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger, 'P') do
           begin
             s1 := Ingles;
             s2 := Portugues;
             if s1[Length(s1)] <> '.' then
                s1 := s1 + '.';
              s := s1 + ' ' + S2 + '. ('+Grupo + ', NCM: ' + Ncm + ')';
           end;
           with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Font.Bold := False;
             HorizontalAlignment := xlLeft;
             VerticalAlignment := xlTop;
             Value := s;
             WrapText := True;
             ShrinkToFit := False;
             Rows.RowHeight := 12.75;
             Characters[Length(s1)+1, Length(s1+s2)+3].Font.Bold := True;
             Characters[Length(s1+s2)+3, Length(s)].Font.Bold := False;
           end;
           { B - Código do Produto }
           with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             HorizontalAlignment := xlLeft;
             VerticalAlignment := xlTop;
             NumberFormat := '@';
             Value := FmtProdutoCliente(qryPedidocod_cliente.AsString, DataSetItem.FieldByName('cod_produto').AsString).fmtProduto;
             WrapText := True;
             ShrinkToFit := False;
           end;
           { D - QUANTIDADE PEDIDO }
           with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
             Value := FieldByName('qtd_produto').AsFloat;  { A mesma Quantidade Faturada do Item da Fatura }
             NumberFormat := '#.##0,0';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { E - PREÇO REAL }
           with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Interior.ColorIndex := 35;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlCenter;
             Value := DataSetItem.FieldByName('vlr_unitario').AsFloat;
             NumberFormat := '#.##0,000000';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { F - TOTAL REAL }
           with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Interior.ColorIndex := 35;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlCenter;
             FormulaR1C1 := '=ROUND(RC[-2]*RC[-1],2)';
             NumberFormat := '#.##0,00';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { G - COMENTÁRIO PREÇO REAL }
           with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Interior.ColorIndex := 35;
             HorizontalAlignment := xlLeft;
             VerticalAlignment := xlTop;
             Value := StringReplace(trim(DataSetItem.FieldByName('obs_preco').AsString), #13#10, ' ', [rfReplaceAll]);
             WrapText := True;
             ShrinkToFit := False;
             Rows.RowHeight := 12.75;
           end;
           { H - PREÇO ESPECIAL }
           with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             if (FieldByName('vlr_unitario_esp').AsFloat > 0) and (FieldByName('vlr_unitario').AsFloat <> FieldByName('vlr_unitario_esp').AsFloat) then
                Interior.ColorIndex := 6
             else
                Interior.ColorIndex := 7;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlCenter;
             Value := DataSetItem.FieldByName('vlr_unitario_esp').AsFloat;
             NumberFormat := '#.##0,000000';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { I - TOTAL ESPECIAL }
           with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             if (FieldByName('vlr_unitario_esp').AsFloat > 0) and (FieldByName('vlr_unitario').AsFloat <> FieldByName('vlr_unitario_esp').AsFloat) then
                Interior.ColorIndex := 6
             else
                Interior.ColorIndex := 7;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlCenter;
             FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
             NumberFormat := '#.##0,00';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { J - COMENTÁRIO PREÇO ESPECIAL }
           with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Interior.ColorIndex := 7;
             HorizontalAlignment := xlLeft;
             VerticalAlignment := xlTop;
             Value := StringReplace(trim(DataSetItem.FieldByName('obs_preco_esp').AsString), #13#10, ' ', [rfReplaceAll]);
             WrapText := True;
             ShrinkToFit := False;
             Rows.RowHeight := 12.75;
           end;
           { AH - CANCELADA }
           with ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
             Value := DataSetItem.FieldByName('qtd_cancelada').AsFloat;
             NumberFormat := '#.##0,0';
             WrapText := True;
             ShrinkToFit := False;
             if DataSetItem.FieldByName('qtd_cancelada').AsFloat > 0
             then Interior.ColorIndex := 3;
           end;
           { AI - PENDENTE }
           with ExcelWorksheet.Range['AI' + IntToStr(Linha),'AI' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
             FormulaR1C1 := '=RC[-31]-RC[-1]-RC[3]';
             NumberFormat := '#.##0,0';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { AJ - NÚMERO FATURA }
           with ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)] do
           begin
              Font.Size := 8;
              Interior.ColorIndex := 06;
              HorizontalAlignment := xlCenter;;
              VerticalAlignment := xlCenter;
              NumberFormat := '@';
              Value := trim(FieldByName('num_fatura').AsString);
              WrapText := False;
              ShrinkToFit := False;
           end;
           { AK - SEQUENCIA ITEM NA FATURA }
           with ExcelWorksheet.Range['AK' + IntToStr(Linha),'AK' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Interior.ColorIndex := 06;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlTop;
             Value := FieldByName('num_sequencia').AsInteger;
             WrapText := True;
             ShrinkToFit := False;
           end;
           { AL - QUANTIDADE NA FATURA }
           with ExcelWorksheet.Range['AL' + IntToStr(Linha),'AL' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Interior.ColorIndex := 06;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
             Value := FieldByName('qtd_produto').AsFloat;
             NumberFormat := '#.##0,0';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { AM - PREÇO REAL NA FATURA }
           with ExcelWorksheet.Range['AM' + IntToStr(Linha),'AM' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Interior.ColorIndex := 35;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlCenter;
             Value := DataSetItem.FieldByName('vlr_unitario').AsFloat;
             NumberFormat := '#.##0,000000';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { AN - TOTAL REAL ITEM FATURA }
           with ExcelWorksheet.Range['AN' + IntToStr(Linha),'AN' + IntToStr(Linha)] do
           begin
              Font.Size := 8;
              Interior.ColorIndex := 35;
              HorizontalAlignment := xlRight;
              VerticalAlignment := xlCenter;
              FormulaR1C1 := '=ROUND(RC[-2]*RC[-1],2)';
              NumberFormat := '#.##0,00';
              WrapText := True;
              ShrinkToFit := False;
           end;
           { AO - PREÇO ESPECIAL NA FATURA }
           with ExcelWorksheet.Range['AO' + IntToStr(Linha),'AO' + IntToStr(Linha)] do
           begin
             Font.Size := 8;
             Interior.ColorIndex := 7;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlCenter;
             Value := DataSetItem.FieldByName('vlr_unitario_esp').AsFloat;
             NumberFormat := '#.##0,000000';
             WrapText := True;
             ShrinkToFit := False;
           end;
           { AP - TOTAL ESPECIAL ITEM FATURA }
           with ExcelWorksheet.Range['AP' + IntToStr(Linha),'AP' + IntToStr(Linha)] do
           begin
              Font.Size := 8;
              Interior.ColorIndex := 7;
              HorizontalAlignment := xlRight;
              VerticalAlignment := xlCenter;
              FormulaR1C1 := '=ROUND(RC[-4]*RC[-1],2)';
              NumberFormat := '#.##0,00';
              WrapText := True;
              ShrinkToFit := False;
           end;
           Next;
        end;
      end;

      { Comissões de Fornecedor e Cliente }
      if (fComissao) then
      begin
         {AR - percentual Fornecedor }
         with ExcelWorksheet.Range['AR' + IntToStr(Linha),'AR' + IntToStr(Linha)] do
         begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '0,00';
            if (FieldByName('pct_comissao_f').Value <> null) then Value := FieldByName('pct_comissao_f').Value
                                                             else Value := null;
            WrapText := True;
            ShrinkToFit := False;
            AddComment('Digite um percentual novo para a comissão ou ' + #10#13 + 'deixe em branco para obter a comissão do cadastro de produtos.' + #10#13 + 'Se não houver comissões para o produto, deixe o percentual 0 (Zero)');
            Comment.Shape.Height := 60;
            Comment.Shape.Width := 250;
            Comment.Visible := False;
         end;

         {AS - Valor Comissão do Fornecedor  }
         with ExcelWorksheet.Range['AS' + IntToStr(Linha),'AS' + IntToStr(Linha)] do
         begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '0,00';
            if (qryPedidoies_base_comissao.Value = '1') then FormulaR1C1 := '=ROUND(RC[-39]*RC[-1]/100,2)'
                                                        else FormulaR1C1 := '=ROUND(RC[-36]*RC[-1]/100,2)';
            WrapText := True;
            ShrinkToFit := False;
         end;

         {AT - percentual Cliente }
         with ExcelWorksheet.Range['AT' + IntToStr(Linha),'AT' + IntToStr(Linha)] do
         begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '0,00';
            if (FieldByName('pct_comissao_c').Value <> null) then Value := FieldByName('pct_comissao_c').Value
                                                             else Value := null;
            WrapText := True;
            ShrinkToFit := False;
            AddComment('Digite um percentual novo para a comissão ou ' + #10#13 + 'deixe em branco para obter a comissão do cadastro de produtos.' + #10#13 + 'Se não houver comissões para o produto, deixe o percentual 0 (Zero)');
            Comment.Shape.Height := 60;
            Comment.Shape.Width := 250;
            Comment.Visible := False;
         end;

         {AU - Valor Comissão do Cliente  }
         with ExcelWorksheet.Range['AU' + IntToStr(Linha),'AU' + IntToStr(Linha)] do
         begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '0,00';
            if (qryPedidoies_base_comissao.Value = '1') then FormulaR1C1 := '=ROUND(RC[-38]*RC[-1]/100,2)'
                                                        else FormulaR1C1 := '=ROUND(RC[-41]*RC[-1]/100,2)';
            WrapText := True;
            ShrinkToFit := False;
         end;
      end;

      { formatar linhas dos itens }
      with ExcelWorkSheet.Range['A' + IntToStr(Linha), 'AU' + IntToStr(Linha)] do
      begin
          with Borders[xlInsideVertical] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
          with Borders[xlEdgeTop] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
          with Borders[xlEdgeRight] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
          with Borders[xlEdgeLeft] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
          with Borders[xlEdgeBottom] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
      end;
    end; { with DataSetItem do ... }
    Inc(Linha);
  end;

  procedure EmbalagemEspecial(NumPedido: Int64; Seq_EmbEsp: Integer);
  Var
    LinIniEmbEsp : Integer;
  begin
    { gerar linhas para embalagens especiais }
    with ProdutosEmbEsp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select a.*                              ');
      SQL.Add('  from "pedido_produto" a               ');
      SQL.Add('where                                   ');
      SQL.Add('    a."cod_empresa"  = :cod_empresa     ');
      SQL.Add('and a."num_pedido" = :num_pedido        ');
      SQL.Add('and a."seq_emb_esp" = :seq_emb_esp      ');
      if (cbEtdFactory.State = cbUnchecked) then
         SQL.Add('order by a."seq_pkl"                    ')
      else
         SQL.Add('order by a."etd_factory", a."seq_pkl"   ');

      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_pedido').Value := NumPedido;
      ParamByName('seq_emb_esp').Value := Seq_EmbEsp;
      Open;
      LinIniEmbEsp := Linha;  { salvar linha inicial da embalagem especial }

      While Not(EOF) do
      begin
        Item(ProdutosEmbEsp);
        Next;
      end;

      with ExcelWorkSheet.Range['N'+IntToStr(LinIniEmbEsp),'N'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['O'+IntToStr(LinIniEmbEsp),'O'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      if (Mesclar = 'S') then
      begin
         with ExcelWorkSheet.Range['P'+IntToStr(LinIniEmbEsp),'P'+IntToStr(Linha-1)] do
         begin
           MergeCells := True;
           Interior.ColorIndex := 0;
           HorizontalAlignment := xlCenter;
           VerticalAlignment := xlCenter;
           WrapText := True;
           ShrinkToFit := False;
         end;
      end;
      with ExcelWorkSheet.Range['Q'+IntToStr(LinIniEmbEsp),'Q'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['R'+IntToStr(LinIniEmbEsp),'R'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['S'+IntToStr(LinIniEmbEsp),'S'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['T'+IntToStr(LinIniEmbEsp),'T'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['U'+IntToStr(LinIniEmbEsp),'U'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['V'+IntToStr(LinIniEmbEsp),'V'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['W'+IntToStr(LinIniEmbEsp),'W'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['X'+IntToStr(LinIniEmbEsp),'X'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
    end;
  end;

  procedure Pallets(NumPedido: Int64; Seq_pallet: Integer);
  Var
    LinIniPallet : Integer;
  begin
    { gerar itens com pallets }
    with ProdutosPallets do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select a.*                               ');
      SQL.Add('  from "pedido_produto" a                ');
      SQL.Add('where                                    ');
      SQL.Add('    a."cod_empresa"  = :cod_empresa      ');
      SQL.Add('and a."num_pedido" = :num_pedido         ');
      SQL.Add('and a."seq_pallet" = :seq_pallet         ');
      if (cbEtdFactory.State = cbUnchecked) then
         SQL.Add('order by a."seq_pkl"                     ')
      else
         SQL.Add('order by a."etd_factory", a."seq_pkl"    ');

      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_pedido').Value := NumPedido;
      ParamByName('seq_pallet').Value := Seq_pallet;
      Open;
      LinIniPallet := Linha;  { salvar linha inicial do pallet }

      While Not(EOF) do
      begin
        { Embalagem Padrão dentro do pallet }
        if (FieldByName('ies_emb_esp').AsString = 'N') then Item(ProdutosPallets);

        { Embalagem Especial dentro do pallet }
        if ((FieldByName('ies_emb_esp').AsString = 'S') and (FieldByName('qtd_export_box').AsInteger > 0)) then
           EmbalagemEspecial(FieldByName('num_pedido').AsInteger, FieldByName('seq_emb_esp').AsInteger);

        Next;
      end;

      with ExcelWorkSheet.Range['Z'+IntToStr(LinIniPallet),'Z'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AA'+IntToStr(LinIniPallet),'AA'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AB'+IntToStr(LinIniPallet),'AB'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AC'+IntToStr(LinIniPallet),'AC'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AD'+IntToStr(LinIniPallet),'AD'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AE'+IntToStr(LinIniPallet),'AE'+IntToStr(Linha-1)] do
      begin
       MergeCells := True;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlCenter;
       WrapText := True;
       ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AF'+IntToStr(LinIniPallet),'AF'+IntToStr(Linha-1)] do
      begin
       MergeCells := True;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlCenter;
       WrapText := True;
       ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AG'+IntToStr(LinIniPallet),'AG'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { alternar cores entre as embalagens }
      if (fPallet) then xlCorPallet := xlVerde else xlCorPallet := xlAmarelo;
      fPallet := Not(fPallet);
      with ExcelWorkSheet.Range['A'+IntToStr(LinIniPallet),'AG'+IntToStr(Linha-1)] do
      begin
        Interior.ColorIndex := xlCorPallet;
      end;
    end;
  end;

begin
  { Procedure AtualizarItensExcel }
  if (DataSet.IsEmpty) then Exit;

  fPallet := True; // var para alternar cores nos pallets

  xlCorPallet := 44;  // cor pallets
  xlVerde := 4;
  xlAmarelo := 6;
  xlRoxo := 7;
  xlVermelho := 3;

  Linha := pLinha;

  with DataSet do
  begin
    First;
    while Not(EOF) do
    begin
      { Item Padrão - fora de pallets e de Embalagem Especial }
      if ((FieldByName('seq_pallet').IsNull) and (FieldByName('ies_emb_esp').AsString = 'N')) then Item(DataSet);

      { Embalagem Especial - fora de pallets }
      if ((FieldByName('seq_pallet').IsNull) and (FieldByName('ies_emb_esp').AsString = 'S') and
         (FieldByName('qtd_export_box').AsInteger > 0)) then
         EmbalagemEspecial(FieldByName('num_pedido').AsInteger, FieldByName('seq_emb_esp').AsInteger);

      { Pallets }
      if ((FieldByName('seq_pallet').AsInteger > 0) and (FieldByName('qtd_pallet').AsInteger > 0)) then
         Pallets(FieldByName('num_pedido').AsInteger, FieldByName('seq_pallet').AsInteger);

      Next;
    end;
  end;

  { TOTAIS GERAIS }
  Inc(Linha);
  ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Value := 'TOTAL BRUTO: ';
  { D - QTD PEDIDO }
  with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,0';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=SUM(D'+IntTostr(pLinha)+':D'+IntTostr(Linha-2)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { F - TOTAL REAL US$ }
  with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=ROUND(SUM(F'+IntTostr(pLinha)+':F'+IntTostr(Linha-2)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { I - TOTAL ESPECIAL US$}
  with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=ROUND(SUM(I'+IntTostr(pLinha)+':I'+IntTostr(Linha-2)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { N - VOLUME }
  with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
  begin
    NumberFormat := VolumeNumberFormat;
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=ROUND(SUM(N'+IntTostr(pLinha)+':N'+IntTostr(Linha-2)+'),' + VolumeDecimaisTotal + ')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { O - PESO BRUTO }
  with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=ROUND(SUM(O'+IntTostr(pLinha)+':O'+IntTostr(Linha-2)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { P - PESO LÍQUIDO }
  with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=ROUND(SUM(P'+IntTostr(pLinha)+':P'+IntTostr(Linha-2)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Q - QUANTIDADE DE CAIXAS DE EXPORTAÇÃO - STANDARD }
  with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
  begin
    NumberFormat := '##.##0';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=SUM(Q'+IntTostr(pLinha)+':Q'+IntTostr(Linha-2)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { R - CAIXAS ESPECIAIS }
  with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
  begin
    NumberFormat := '##.##0';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=SUM(R'+IntTostr(pLinha)+':R'+IntTostr(Linha-2)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Totais dos Pallets }
  { Z - QUANTIDADE }
  with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=SUM(Z'+IntTostr(pLinha)+':Z'+IntTostr(Linha-2)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AB - PESO BRUTO }
  with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=SUM(AB'+IntTostr(pLinha)+':AB'+IntTostr(Linha-2)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AC - PESO LÍQUIDO }
  with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=SUM(AC'+IntTostr(pLinha)+':AC'+IntTostr(Linha-2)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AG - VOLUME }
  with ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)] do
  begin
    NumberFormat := VolumeNumberFormat;
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Formula := '=ROUND(SUM(AG'+IntTostr(pLinha)+':AG'+IntTostr(Linha-2)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Faturas }
  { AH - QTD CANCELADA }
  with ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)] do
  begin
    Formula := '=SUM(AH'+IntTostr(pLinha)+':AH'+IntTostr(Linha-2)+')';
    NumberFormat := '#.##0,0';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AI - QTD PENDENTE }
  with ExcelWorksheet.Range['AI'+ inttostr(linha),'AI'+inttostr(linha)] do
  begin
    Formula := '=SUM(AI'+IntTostr(pLinha)+':AI'+IntTostr(Linha-2)+')';
    NumberFormat := '#.##0,0';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AL - QTD FATURADA }
  with ExcelWorksheet.Range['AL'+ inttostr(linha),'AL'+inttostr(linha)] do
  begin
    Formula := '=ROUND(SUM(AL'+IntTostr(pLinha)+':AL'+IntTostr(Linha-2)+'),2)';
    NumberFormat := '#.##0,0';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AN - TOTAL REAL US$ }
  with ExcelWorksheet.Range['AN'+ inttostr(linha),'AN'+inttostr(linha)] do
  begin
    Formula := '=SUM(AN'+IntTostr(pLinha)+':AN'+IntTostr(Linha-2)+')';
    NumberFormat := '#.##0,00';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AP - TOTAL ESPECIAL US$ }
  with ExcelWorksheet.Range['AP'+ inttostr(linha),'AP'+inttostr(linha)] do
  begin
    Formula := '=SUM(AP'+IntTostr(pLinha)+':AP'+IntTostr(Linha-2)+')';
    NumberFormat := '#.##0,00';
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  if (fComissao) then
  begin
     { AS - VALOR DA COMISSÃO FORNECEDORES }
     with ExcelWorksheet.Range['AS'+ inttostr(linha),'AS'+inttostr(linha)] do
     begin
       Formula := '=SUM(AS'+IntTostr(pLinha)+':AS'+IntTostr(Linha-2)+')';
       NumberFormat := '#.##0,00';
       Font.Size := 8;
       HorizontalAlignment := xlCenter;
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
     end;
     { AU - VALOR DA COMISSÃO CLIENTES }
     with ExcelWorksheet.Range['AU'+ inttostr(linha),'AU'+inttostr(linha)] do
     begin
       Formula := '=SUM(AU'+IntTostr(pLinha)+':AU'+IntTostr(Linha-2)+')';
       NumberFormat := '#.##0,00';
       Font.Size := 8;
       HorizontalAlignment := xlCenter;
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
     end;
  end;

  pLinha := Linha;
end;

procedure Tfr_ManPedido.ListarProdutosCliente;
Var
  LinhaAux : Integer;
  Mesclar : String;
  fPallet: boolean;
  xlCorPallet, xlVerde, xlAmarelo, xlRoxo, xlVermelho: integer;
  PesLiquidoCx : Double;

  { Gerar Itens na planilha }
  procedure Item(DataSetItem: TDataSet);
  begin
    with DataSetItem do
    begin
      { A - Sequencia do Produto }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := '';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { B - Código do Produto }
      with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        NumberFormat := '@';
        Value := FmtProdutoCliente(qryPedidocod_cliente.AsString, FieldByName('cod_produto').AsString).fmtProduto;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { C - Descrição do Produto em Português }
      { OBTER DESCRIÇÕES DETALHADAS EM INGLÊS E PORTUGUÊS DO PRODUTO, GRUPO E NCM }
      with ProdutoDet(FieldByName('cod_produto').AsString, qryPedidocod_cliente.AsString, pedido_complementocod_fornecedor.AsInteger, 'P') do
      begin
        s1 := Ingles;
        s2 := Portugues;

        if s1[Length(s1)] <> '.' then
           s1 := s1 + '.';

        s := s1 + ' ' + S2 + '. ('+ Grupo + ', NCM: ' + Ncm + ')';

        with ExcelWorkSheet.Range['B'+IntToStr(Linha),'B'+IntToStr(Linha)] do
        begin
          Font.ColorIndex := CorNcm;
          Font.Bold := True;
          if Not(Existe) then Interior.ColorIndex := xlVermelho;

        end;
      end;

      with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Font.Bold := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := s;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
        Characters[Length(s1)+1, Length(s1+s2)+3].Font.Bold := True;
        Characters[Length(s1+s2)+3, Length(s)].Font.Bold := False;
      end;
      { D - QUANTIDADE PEDIDO }
      with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        Value := '';
        NumberFormat := '#.##0,0';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { E - PREÇO REAL }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 35;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        Value := '';
        NumberFormat := '#.##0,000000';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { F - TOTAL REAL }
      with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 35;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[-2]*RC[-1],2)';
        NumberFormat := '#.##0,00';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { I - TOTAL ESPECIAL }
      with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
        NumberFormat := '#.##0,00';
        WrapText := True;
        ShrinkToFit := False;
      end;

      { Dados da Embalagem Padrão - chamada para cby_calc_embalagem }
      with emb_padrao do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('cod_produto').Value := DataSetItem.FieldByName('cod_produto').AsString;
        ParamByName('qtd_produto').Value := 1;
        Open;
      end;

      { N - TOTAL VOLUME IN M³ }
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
      begin
        NumberFormat := VolumeNumberFormat;
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[3]*RC[7],'+ VolumeDecimais +')'
      end;

      { O - TOTAL GROSS WEIGHT (Kg) }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(((RC[5]-(RC[10]*RC[4]))*RC[2])+(RC[-11]*RC[10]),2)'
      end;

      { P - TOTAL NET WEIGHT (Kg) }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[-12]*RC[9],2)';
      end;

      { Q - TOTAL QUANTITY OF PACKING }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        FormulaR1C1 := '=ROUNDUP(RC[-13]/RC[2],0)';
        Font.ColorIndex := 0;
        Font.Bold := False;
      end;

      { R - SPECIAL CARTONS }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        Value := '';
      end;

      { S - QUANTITY OF UNITS INSIDE THE PACKING }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        Value := emb_padraoqtd_master_box.AsFloat;
      end;

      { T - Peso Bruto de 1 Caixa - Gross Weight 1 Packing }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        Value := emb_padraopes_bruto_caixa.AsFloat;
      end;

      { U - Volume }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
      end;

      { V - Comprimento }
      with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        Value := emb_padraocomprimento.AsFloat;
      end;

      { W - Largura }
      with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        Value := emb_padraolargura.AsFloat;
      end;

      { X - Altura }
      with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        Value := emb_padraoaltura.AsFloat;
      end;

      { Y - NET WEIGHT OF THE PRODUCT (Kg) }
      with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
      begin
        NumberFormat := '##0,0000';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        Value := emb_padraopes_unit_prod.AsFloat;
      end;

      { formatar linhas dos itens }
      with ExcelWorkSheet.Range['A' + IntToStr(Linha), 'Y' + IntToStr(Linha)] do
      begin
          with Borders[xlInsideVertical] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
          with Borders[xlEdgeTop] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
          with Borders[xlEdgeRight] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
          with Borders[xlEdgeLeft] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
          with Borders[xlEdgeBottom] do
          begin
             LineStyle := xlContinuous;
             Weight := xlThin;
             ColorIndex := xlAutomatic;
          end;
      end;
    end; { with DataSetItem do ... }                                
    Inc(Linha);
  end;

begin
   { Listar Produtos disponíves do Cliente }
   Linha := Linha + 2;

    // Cabeçalho dos produtos do cliente/fornecedor
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Value := 'PRODUTOS DO CLIENTE: ' + trim(qryPedidocod_cliente.AsString)
             + '   FORNECEDOR: ' + trim(pedido_complementolkpFornecedor.AsString);
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
      Interior.ColorIndex := 44;
    end;

    with ExcelWorksheet.Range['K' + IntToStr(Linha),'M' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Value := 'ETD FACTORY';
      HorizontalAlignment := xlCenter;
      MergeCells := True;
      Font.Bold := True;
      Interior.ColorIndex := 4;
    end;

    with ExcelWorksheet.Range['N' + IntToStr(Linha),'Y' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Value := 'PACKAGES INFORMATION';
      HorizontalAlignment := xlCenter;
      MergeCells := True;
      Font.Bold := True;
      Interior.ColorIndex := 34;
    end;

    Inc(Linha);
    LinhaAux := Linha;

    ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value := 'SEQ';
    ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 3.00;

    ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value := 'PRODUTO';
    ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 13.00;

    ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value := 'DESCRIÇÃO / DESCRIPTION';
    ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 35.00;

    ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value := 'QTD PEDIDO';
    ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 7.14;

    ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value := 'PREÇO REAL';
    ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 9.86;
    ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value := 'TOTAL REAL';
    ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 8.14;
    ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value := 'COMENTÁRIO PREÇO REAL';
    ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 30.00;

    ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value := 'PREÇO ESP';
    ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ColumnWidth := 9.86;
    ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value := 'TOTAL ESP';
    ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ColumnWidth := 9.43;
    ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value := 'COMENTÁRIO PREÇO ESPECIAL';
    ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].ColumnWidth := 30.00;

    ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value := 'ETD FACTORY';
    ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ColumnWidth := 9.29;
    ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value := 'COMENTÁRIOS DO CLIENTE';
    ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ColumnWidth := 30.00;
    ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value := 'COMENTÁRIO DO FORNECEDOR';
    ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].ColumnWidth := 30.00;

    ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value := 'TOTAL VOLUME IN M³';
    ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value := 'TOTAL GROSS WEIGHT (Kg)';
    ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value := 'TOTAL NET WEIGHT (Kg)';
    ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value := 'TOTAL QTY OF PACKAGES';
    ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value := 'SPECIAL CARTONS';
    ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value := 'QUANTITY STANDARD OF UNITS INSIDE THE CARTON';
    ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value := 'GROSS WEIGHT OF 1 PACKAGE (Kg)';
    ExcelWorksheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value := 'VOLUME OF 1 PACKAGE (m³)';
    ExcelWorksheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].Value := 'L (CM)';
    ExcelWorksheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].Value := 'W (CM)';
    ExcelWorksheet.Range['X' + IntToStr(Linha),'X' + IntToStr(Linha)].Value := 'H (CM)';
    ExcelWorksheet.Range['Y' + IntToStr(Linha),'Y' + IntToStr(Linha)].Value := 'NET WEIGHT OF THE PRODUCT (Kg)';

    ExcelWorksheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)].Interior.ColorIndex := 40;
    ExcelWorksheet.Range['E' + IntToStr(Linha),'G' + IntToStr(Linha)].Interior.ColorIndex := 35;
    ExcelWorksheet.Range['H' + IntToStr(Linha),'J' + IntToStr(Linha)].Interior.ColorIndex := 07;

   { Bordas no cabeçalho }
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'Y' + IntToStr(LinhaAux)] do
   begin
      with Borders[xlInsideVertical] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeTop] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeRight] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeLeft] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeBottom] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      Font.Size := 8;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      Font.Bold := True;
    end;

    Inc(Linha);

    with Produtos do
    begin
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('cod_cliente').AsString := trim(qryPedidocod_cliente.AsString);
      ParamByName('cod_fornecedor').AsInteger := pedido_complementocod_fornecedor.AsInteger;
      Open;
      First;
      while Not(EOF) do
      begin
        Item(Produtos);
        Next;
      end;
    end;
end;

procedure Tfr_ManPedido.actExcelComissaoExecute(Sender: TObject);
begin
  pgPagDescAdic.ActivePage := tsComissao;
  actExcelGerarExecute(Sender);
end;

procedure Tfr_ManPedido.pedido_complementonum_pedido_cliChange(
  Sender: TField);
begin
  FlagPedido := True;
end;

procedure Tfr_ManPedido.pedido_complementonum_pedido_forChange(
  Sender: TField);
begin
  FlagPedido := True;
end;

procedure Tfr_ManPedido.qryPedidodat_entregaChange(Sender: TField);
begin
  FlagEntrega := True;
end;

procedure Tfr_ManPedido.FornecedorBeforeOpen(DataSet: TDataSet);
begin
  Fornecedor.ParamByName('cod_empresa').Value := vgCod_Empresa;
  Fornecedor.ParamByName('login').Value := vgLogin;
end;

procedure Tfr_ManPedido.FabricantesAfterOpen(DataSet: TDataSet);
begin
  DataSet.Last;
  DataSet.First;
end;

end.
