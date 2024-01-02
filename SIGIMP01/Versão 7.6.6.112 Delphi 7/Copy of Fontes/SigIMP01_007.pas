unit SigIMP01_007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, UnGrid, ExtCtrls, ComCtrls, UnNavigator, StdCtrls,
  DBCtrls, IBQuery, ToolWin, Mask, IBSQL, ActnList, UnType,
  Grids, DBGrids, ExcelXP, OleServer, Excel2000, JvExControls, JvComponent,
  JvDBLookup, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit,
  Buttons, IBStoredProc, Menus, DBActns, UnMenuCompl, MaskUtils, Math, VarUtils, UnMenu,
  IBUpdateSQL, AniThread, JvDBGridFooter, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, JvStaticText, JvExStdCtrls, JvDBCombobox;

type
  TNumberStr = string[13];

const
	ctSituacao_Aberta = 'N';
  ctSituacao_Cancelada = 'C';
	ctSituacao_Fechada = 'F';
  Numbers: array[1..19] of TNumberStr = ('one', 'two', 'three', 'four',
    'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
    'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen',
    'nineteen');

  Tenths: array[1..9] of TNumberStr = ('ten', 'twenty', 'thirty', 'forty',
    'fifty', 'sixty', 'seventy', 'eighty', 'ninety');

  ErrorString = 'not in valid range';

  Min = 1.00;
  Max = 4294967295.99;

type
  tpValida_NF = (vdExcluir, vdEditar, vdInserir, vdCancelar, vdFechar, vdImprimir);

  Tfr_ManNF = class(TForm)
    nota_fiscal_saida: TIBDataSet;
    nota_fiscal_saidacod_empresa: TSmallintField;
    nota_fiscal_saidacod_moeda: TSmallintField;
    nota_fiscal_saidaies_situacao: TIBStringField;
    nota_fiscal_saidadat_cadastro: TDateTimeField;
    pnlCabecalho: TPanel;                                                      
    txtcod_cliente: TDBText;
    txtFornecedor: TDBText;
    txtnum_nota_fiscal: TDBText;
    Label7: TLabel;
    Label13: TLabel;
    pgcNF: TPageControl;
    tbsNF: TTabSheet;
    pnlNotaFiscalSaida: TPanel;
    fr_FmNavigator1: Tfr_FmNavigator;
    tbsNF_Produto: TTabSheet;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    Label18: TLabel;
    Label19: TLabel;
    edtqtd_produto2: TDBEdit;
    edtvlr_unitario: TDBEdit;
    nota_fiscal_saidacod_vendedor: TSmallintField;
    nota_fiscal_saidacod_transportadora: TIntegerField;
    dtsNFSaida: TDataSource;
    nota_fiscal_saidanum_nota_fiscal: TIntegerField;
    qryTransportadora: TIBQuery;
    qryTransportadoracod_transportadora: TIntegerField;
    qryTransportadoranom_transportadora: TIBStringField;
    Clientes: TIBQuery;
    dtsCliente: TDataSource;
    nota_fiscal_saidalkNomTransportadora: TIBStringField;
    Label42: TLabel;
    txties_situacao: TDBText;
    nota_fiscal_saida_produto: TIBDataSet;
    nota_fiscal_saida_produtocod_empresa: TSmallintField;
    nota_fiscal_saida_produtonum_nota_fiscal: TIntegerField;
    nota_fiscal_saida_produtonum_sequencia: TSmallintField;
    nota_fiscal_saida_produtocod_produto: TIBStringField;
    nota_fiscal_saida_produtoqtd_produto: TIBBCDField;
    nota_fiscal_saida_produtotxt_observacao: TIBStringField;
    nota_fiscal_saida_produtodat_cadastro: TDateTimeField;
    Label46: TLabel;
    dtsNFSaida_Produto: TDataSource;
    qryProduto: TIBQuery;
    dtsProduto: TDataSource;
    nota_fiscal_saida_produtotexto: TIBStringField;
    nota_fiscal_saidadat_emissao: TDateTimeField;
    edtcod_produto: TDBEdit;
    ToolBar1: TToolBar;
    ActionList1: TActionList;
    btnComercialInvoice: TToolButton;
    actFatura: TAction;
    nota_fiscal_saidaies_tip_frete: TSmallintField;
    nota_fiscal_saidatexto: TIBStringField;
    act_F5: TAction;
    act_F6: TAction;
    nota_fiscal_saidavlr_frete: TIBBCDField;
    nota_fiscal_saidavlr_liquido: TIBBCDField;
    nota_fiscal_saida_produtovlr_liquido: TIBBCDField;
    nota_fiscal_saidaserie: TIBStringField;
    Label39: TLabel;
    edtvlr_liquido2: TDBEdit;
    nota_fiscal_saidacod_cliente: TIBStringField;
    qryTransportadoraies_situacao: TIBStringField;
    nota_fiscal_saida_produtoserie: TIBStringField;
    nf_saida_complemento: TIBDataSet;
    dts_nf_saida_complemento: TDataSource;
    nf_saida_complementocod_empresa: TSmallintField;
    nf_saida_complementonum_nota_fiscal: TIntegerField;
    nf_saida_complementoserie: TIBStringField;
    nf_saida_complementocod_fornecedor: TSmallintField;
    nf_saida_complementocod_porto_emb: TIntegerField;
    nf_saida_complementocod_porto_dest: TIntegerField;
    nf_saida_complementocod_cond_venda: TIntegerField;
    nf_saida_complementoqtd_caixas: TIntegerField;
    nf_saida_complementonum_fatura: TIBStringField;
    fr_FmNavigator2: Tfr_FmNavigator;
    Panel1: TPanel;
    Label17: TLabel;
    Label5: TLabel;
    lpkFornecedor: TDBLookupComboBox;
    condicao_venda: TIBQuery;
    condicao_vendacod_tip_condicao: TSmallintField;
    condicao_vendaden_tip_condicao: TIBStringField;
    condicao_vendaies_situacao: TIBStringField;
    nf_saida_complementolkcCondicaoVenda: TStringField;
    Fornecedor: TIBQuery;
    Fornecedorcod_fornecedor: TSmallintField;
    nf_saida_complementolkpFornecedor: TStringField;
    portos_embarque: TIBQuery;
    portos_embarquecod_porto: TIntegerField;
    portos_embarqueden_porto: TIBStringField;                             
    portos_embarqueies_tipo: TIBStringField;
    portos_desembarque: TIBQuery;
    portos_desembarquecod_porto: TIntegerField;
    portos_desembarqueden_porto: TIBStringField;
    portos_desembarqueies_tipo: TIBStringField;
    nf_saida_complementolkpPortoEmb: TStringField;
    nf_saida_complementolkpPortoDes: TStringField;
    Importador: TIBQuery;
    Exportador: TIBQuery;
    Label4: TLabel;
    dbeNumFatura: TDBEdit;
    dtsnota_fiscal_saida_produto: TDataSource;
    nota_fiscal_saida_produtovlr_unitario: TFloatField;
    ExcelWorksheet: TExcelWorksheet;
    ExcelWorkBook: TExcelWorkbook;
    ExcelApplication: TExcelApplication;
    produtos_xls: TIBQuery;
    ToolButton5: TToolButton;
    nf_saida_complementopes_liquido: TIBBCDField;
    nf_saida_complementopes_bruto: TIBBCDField;
    nf_saida_complementovol_total: TIBBCDField;
    nota_fiscal_saida_produtopes_bruto: TIBBCDField;
    nota_fiscal_saida_produtopes_liquido: TIBBCDField;
    nota_fiscal_saida_produtoqtd_export_box: TIntegerField;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    nota_fiscal_saida_produtovol_caixas: TIBBCDField;
    Label21: TLabel;
    DBEdit7: TDBEdit;
    Label24: TLabel;
    DBEdit8: TDBEdit;
    Label25: TLabel;
    DBEdit9: TDBEdit;
    actPacking: TAction;
    Label28: TLabel;
    edtvlr_liquido: TDBEdit;
    Label2: TLabel;
    btnBillLading: TToolButton;
    actEmbarque: TAction;
    transportadora: TIBQuery;
    NumTipoContainer: TIBQuery;
    NumTipoContainercod_container: TIntegerField;
    NumTipoContainernum_container: TIntegerField;
    NumTipoContainertip_container: TIBStringField;
    cby_nf_saida_complemento: TIBQuery;
    nota_fiscal_saida_produtonum_pedido: TLargeintField;
    nota_fiscal_saida_produtonum_seq_pedido: TSmallintField;
    nf_saida_complementoswift: TIBStringField;
    Label23: TLabel;
    DBMemo2: TDBMemo;
    Label34: TLabel;
    DBMemo3: TDBMemo;
    cby_nf_saida_embalagem: TIBQuery;
    cby_nf_saida_embalagemvol_caixas: TIBBCDField;
    cby_nf_saida_embalagemqtd_export_box: TIntegerField;
    cby_nf_saida_embalagemqtd_inner_box: TIntegerField;
    cby_nf_saida_embalagempes_liquido: TIBBCDField;
    cby_nf_saida_embalagempes_bruto: TIBBCDField;
    nf_container: TIBDataSet;
    nf_containerlkpDenContainer: TStringField;
    nf_containerqtd_container: TSmallintField;
    nf_containerarea_total: TIBBCDField;
    nf_containerpeso_total: TIBBCDField;
    nf_containercod_empresa: TSmallintField;
    nf_containercod_container: TIntegerField;
    ds_nf_container: TDataSource;
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
    nf_containernum_nota_fiscal: TIntegerField;
    nf_containerserie: TIBStringField;
    Label35: TLabel;
    dbeNumRefVolume: TDBEdit;
    Label1: TLabel;
    nota_fiscal_saidaobs_frete: TIBStringField;
    nf_containerlkTipContainer: TStringField;
    tbAbrir: TToolButton;
    embalagem: TIBQuery;
    embalagemcod_empresa: TSmallintField;
    embalagemcod_produto: TIBStringField;
    embalagemaltura: TIBBCDField;
    embalagemlargura: TIBBCDField;
    embalagemprofundidade: TIBBCDField;
    embalagemvolume: TIBBCDField;
    embalagemarea: TIBBCDField;
    embalagemobservacao: TIBStringField;
    embalagemdat_cadastro: TDateTimeField;
    embalagempeso_unitario: TFloatField;
    embalagemdat_cad_dimensoes: TDateField;
    embalagemdat_cad_peso: TDateField;
    embalagemdat_cad_master: TDateField;
    embalagemdat_cad_inner: TDateField;
    embalagemobs_caixas: TIBStringField;
    nota_fiscal_saidacalies_situacao: TStringField;
    Del_nf_produtos: TIBQuery;
    emb_especial_fat: TIBDataSet;
    ds_emb_especial_fat: TDataSource;
    emb_especial_fatseq: TIntegerField;
    emb_especial_fatcod_empresa: TSmallintField;
    emb_especial_fatnum_nota_fiscal: TIntegerField;
    emb_especial_fatserie: TIBStringField;
    emb_especial_fatden_embalagem: TIBStringField;
    emb_especial_fatqtd_total: TIBBCDField;
    emb_especial_fatvol_total: TIBBCDField;
    emb_especial_fatpes_bruto: TIBBCDField;
    emb_especial_fatpes_liquido: TIBBCDField;
    emb_especial_fatqtd_caixas: TIntegerField;
    emb_especial_fatqtd_produto: TIBBCDField;
    emb_especial_item_fat: TIBDataSet;
    ds_emb_especial_item_fat: TDataSource;
    emb_especial_item_fatseq: TIntegerField;
    emb_especial_item_fatcod_empresa: TSmallintField;
    emb_especial_item_fatnum_nota_fiscal: TIntegerField;
    emb_especial_item_fatserie: TIBStringField;
    emb_especial_item_fatnum_sequencia: TSmallintField;
    emb_especial_item_fatcod_produto: TIBStringField;
    emb_especial_item_fatqtd_produto: TIBBCDField;
    emb_especial_item_fatpes_liquido: TIBBCDField;
    emb_especial_fatpes_unitario: TFloatField;
    emb_especial_fataltura: TIBBCDField;
    emb_especial_fatlargura: TIBBCDField;
    emb_especial_fatprofundidade: TIBBCDField;
    nota_fiscal_saida_produtoies_emb_esp: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    grdGrid: TDBGrid;
    DBEdit13: TDBEdit;
    produtos_xlsnum_pedido_cli: TIBStringField;
    produtos_xlscod_produto: TIBStringField;
    produtos_xlsvlr_unitario: TFloatField;
    produtos_xlsnum_sequencia: TSmallintField;
    produtos_xlsnum_pedido_for: TIBStringField;
    produtos_xlsqtd_produto: TIBBCDField;
    produtos_xlssigla_i: TIBStringField;
    produtos_xlssigla_vol_i: TIBStringField;
    Label32: TLabel;
    nota_fiscal_saida_produtocalDenProduto: TStringField;
    emb_especial_item_fatcalDenProduto: TStringField;
    Panel4: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    edBuscaCodigo: TEdit;
    edBuscaDesc: TEdit;
    FaturaPedidos: TIBQuery;
    FaturaPedidosnum_pedido: TLargeintField;
    spr_add_item_pendente: TIBStoredProc;
    PopupMenu2: TPopupMenu;
    AbrirExcelPL: TMenuItem;
    AbrirExeclBL: TMenuItem;
    nota_fiscal_saidadat_liquidacao: TDateField;
    nota_fiscal_saidavlr_bruto: TIBBCDField;
    dsConfirmacoes: TDataSource;
    qryPagamentos: TIBQuery;
    qryPagamentoscod_empresa: TSmallintField;
    qryPagamentosnum_pedido: TLargeintField;
    qryPagamentosnum_sequencia: TSmallintField;
    qryPagamentosvlr_pagamento: TIBBCDField;
    qryPagamentosdat_pagamento: TDateField;
    qryPagamentostxt_pagamento: TMemoField;
    dsPagamentos: TDataSource;
    Label12: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    Label29: TLabel;
    DBEdit2: TDBEdit;
    nf_adic_desc: TIBDataSet;
    dsnf_adic_desc: TDataSource;
    nf_adic_desccod_empresa: TSmallintField;
    nf_adic_descnum_nota_fiscal: TIntegerField;
    nf_adic_descserie: TIBStringField;
    nf_adic_descnum_sequencia: TSmallintField;
    nf_adic_descies_tipo: TIBStringField;
    nf_adic_descvlr_adic_desc: TIBBCDField;
    nf_adic_desctxt_descricao: TMemoField;
    SeqNFAdicDesc: TIBQuery;
    SeqNFAdicDescprox_sequencia: TLargeintField;
    qryAdicDesc: TIBQuery;
    qryAdicDesccod_empresa: TSmallintField;
    qryAdicDescnum_nota_fiscal: TIntegerField;
    qryAdicDescserie: TIBStringField;
    qryAdicDescnum_sequencia: TSmallintField;
    qryAdicDescies_tipo: TIBStringField;
    qryAdicDescvlr_adic_desc: TIBBCDField;
    qryAdicDesctxt_descricao: TMemoField;
    Label30: TLabel;
    nota_fiscal_saidadat_coleta: TDateField;
    nf_containertara: TIBBCDField;
    nota_fiscal_saidaden_destination_exp: TIBStringField;
    nota_fiscal_saidacod_despachante: TSmallintField;
    nota_fiscal_saidacod_tip_embarque: TSmallintField;
    nota_fiscal_saidacod_armador: TSmallintField;
    armadores: TIBQuery;
    armadorescod_armador: TSmallintField;
    armadoresden_armador: TIBStringField;
    nota_fiscal_saidalkcArmador: TStringField;
    despachante: TIBQuery;
    despachantecod_despachante: TSmallintField;
    despachanteden_despachante: TIBStringField;
    nota_fiscal_saidalkcDespachante: TStringField;
    tipo_embarque: TIBQuery;
    tipo_embarquecod_tip_embarque: TSmallintField;
    tipo_embarqueden_tip_embarque: TIBStringField;
    nota_fiscal_saidalkcTipoEmbarque: TStringField;
    fornecedor_contato: TIBQuery;
    fornecedor_contatonom_contato: TIBStringField;
    fornecedor_contatonum_fone: TIBStringField;
    fornecedor_contatoe_mail: TIBStringField;
    nota_fiscal_saidadat_embarque: TDateField;
    Label44: TLabel;
    nf_confirmacoes: TIBDataSet;
    spr_adic_desc_pedidos: TIBQuery;
    spr_adic_desc_pedidosnum_pedido: TLargeintField;
    spr_adic_desc_pedidosnum_pedido_for: TIBStringField;
    spr_adic_desc_pedidosnum_pedido_cli: TIBStringField;
    spr_adic_desc_pedidosies_tipo: TIBStringField;
    spr_adic_desc_pedidosvlr_adic_desc: TIBBCDField;
    spr_adic_desc_pedidosden_adic_desc: TMemoField;
    ds_spr_adic_desc_pedidos: TDataSource;
    nf_adic_descnum_pedido: TLargeintField;
    nf_adic_descnum_seq_pedido: TSmallintField;
    spr_adic_desc_pedidosnum_seq_pedido: TSmallintField;
    pedido_adic_desc: TIBDataSet;
    pedido_adic_desccod_empresa: TSmallintField;
    pedido_adic_descnum_pedido: TLargeintField;
    pedido_adic_descnum_sequencia: TSmallintField;
    pedido_adic_descies_tipo: TIBStringField;
    pedido_adic_descvlr_adic_desc: TIBBCDField;
    pedido_adic_desctxt_descricao: TMemoField;
    pedido_adic_descnum_nota_fiscal: TIntegerField;
    pedido_adic_descserie: TIBStringField;
    pedido_adic_descies_faturado: TIBStringField;
    spr_estornar_item_fatura: TIBStoredProc;
    nf_saida_complementonum_ref_volume: TIBStringField;
    Aux: TIBQuery;
    nf_saida_complementonum_romaneio: TIntegerField;
    nota_fiscal_saida_produtonum_pedido_cli: TIBStringField;
    GroupBox1: TGroupBox;
    mmobs: TDBMemo;
    nota_fiscal_saidatxt_observacao: TMemoField;
    tsBlCombinado: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    btnNovoBl: TBitBtn;
    btnExcluirBL: TBitBtn;
    btnExcelBl: TBitBtn;
    actBLNovo: TAction;
    actBlExcluir: TAction;
    actBlCombinado: TAction;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    sbAdd: TSpeedButton;
    sbRemove: TSpeedButton;
    Label55: TLabel;
    Label57: TLabel;
    edNumFatura: TEdit;
    edNumLote: TEdit;
    Label58: TLabel;
    Bevel1: TBevel;
    btnProcurarFat: TBitBtn;
    actBLProcurar: TAction;
    dbgBlCombinado: TJvDBUltimGrid;
    dbgSelFaturas: TJvDBUltimGrid;
    act_F7: TAction;
    bl_combinado: TIBDataSet;
    dsbl_combinado: TDataSource;
    dssel_faturas: TDataSource;
    bl_combinadonum_nota_fiscal: TIntegerField;
    bl_combinadoserie: TIBStringField;
    bl_combinadoseq_bl: TIntegerField;
    bl_combinadoseq_fatura: TIntegerField;
    Seq_BL: TIBQuery;
    Seq_Fat: TIBQuery;
    Seq_BLseq_bl: TFloatField;
    bl_combinadonum_fatura: TIBStringField;
    bl_combinadonum_ref_volume: TIBStringField;
    Seq_Fatseq_fatura: TFloatField;
    sel_faturas: TIBQuery;
    sel_faturascod_empresa: TSmallintField;
    sel_faturasnum_nota_fiscal: TIntegerField;
    sel_faturasserie: TIBStringField;
    sel_faturascod_cliente: TIBStringField;
    sel_faturasdat_emissao: TDateTimeField;
    sel_faturasies_situacao: TIBStringField;
    sel_faturasvlr_bruto: TIBBCDField;
    sel_faturasvlr_liquido: TIBBCDField;
    sel_faturaspes_bruto: TIBBCDField;
    sel_faturaspes_liquido: TIBBCDField;
    sel_faturasvol_total: TIBBCDField;
    sel_faturasqtd_caixas: TIntegerField;
    sel_faturasnum_ref_volume: TIBStringField;
    sel_faturasnum_fatura: TIBStringField;
    sel_faturascod_fornecedor: TSmallintField;
    sel_faturasraz_social_reduz: TIBStringField;
    up_sel_faturas: TIBUpdateSQL;
    bl_fatura: TIBQuery;
    bl_faturaseq_bl: TIntegerField;
    bl_combinadocod_fornecedor: TSmallintField;
    bl_combinadocod_porto_emb: TIntegerField;
    bl_combinadocod_porto_dest: TIntegerField;
    bl_combinadocod_cond_venda: TIntegerField;
    bl_combinadonum_romaneio: TIntegerField;
    bl_combinadovol_total: TIBBCDField;
    bl_combinadoqtd_caixas: TIntegerField;
    bl_combinadopes_liquido: TIBBCDField;
    bl_combinadopes_bruto: TIBBCDField;
    bl_combinadoswift: TIBStringField;
    bl_combinadoies_situacao: TIBStringField;
    bl_combinadoies_tip_frete: TSmallintField;
    bl_combinadovlr_frete: TIBBCDField;
    bl_combinadodat_emissao: TDateTimeField;
    bl_combinadotexto: TIBStringField;
    bl_combinadocod_cliente: TIBStringField;
    bl_combinadocod_vendedor: TSmallintField;
    bl_combinadocod_moeda: TSmallintField;
    bl_combinadocod_transportadora: TSmallintField;
    bl_combinadodat_cadastro: TDateTimeField;
    bl_combinadovlr_bruto: TIBBCDField;
    bl_combinadovlr_liquido: TIBBCDField;
    bl_combinadoobs_frete: TIBStringField;
    bl_combinadodat_liquidacao: TDateField;
    bl_combinadodat_coleta: TDateField;
    bl_combinadocod_despachante: TSmallintField;
    bl_combinadocod_tip_embarque: TSmallintField;
    bl_combinadocod_armador: TSmallintField;
    bl_combinadoden_destination_exp: TIBStringField;
    bl_combinadodat_embarque: TDateField;
    totais_bl: TIBQuery;
    qryConfirmacoes: TIBQuery;
    qryConfirmacoescod_empresa: TSmallintField;
    qryConfirmacoesnum_nota_fiscal: TIntegerField;
    qryConfirmacoesserie: TIBStringField;
    qryConfirmacoesnum_pedido: TLargeintField;
    qryConfirmacoesnum_pedido_for: TIBStringField;
    qryConfirmacoesnum_pedido_cli: TIBStringField;
    qryConfirmacoesdat_liberacao: TDateField;
    qryConfirmacoesvlr_pedido: TIBBCDField;
    qryConfirmacoesvlr_produtos: TIBBCDField;
    qryConfirmacoesvlr_faturado: TIBBCDField;
    qryConfirmacoesvlr_adicional: TIBBCDField;
    qryConfirmacoesvlr_desconto: TIBBCDField;
    qryConfirmacoesvlr_tot_faturado: TIBBCDField;
    qryConfirmacoesvlr_pagamento: TIBBCDField;
    qryConfirmacoesvlr_saldo: TIBBCDField;
    qryConfirmacoesvlr_saldo_ant: TIBBCDField;
    qryConfirmacoesvlr_pendente: TIBBCDField;
    qryConfirmacoesvlr_condicao: TIBBCDField;
    bl_combinadoden_tip_condicao: TIBStringField;
    bl_combinadoden_despachante: TIBStringField;
    actAbrirBl: TAction;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    spr_saldo_confirmacao: TIBQuery;
    up_nf_confirmacoes: TIBDataSet;
    up_nf_confirmacoescod_empresa: TSmallintField;
    up_nf_confirmacoesnum_nota_fiscal: TIntegerField;
    up_nf_confirmacoesserie: TIBStringField;
    up_nf_confirmacoesnum_pedido: TLargeintField;
    nf_adic_descvlr_adic_desc_esp: TIBBCDField;
    Label60: TLabel;
    DBEdit16: TDBEdit;
    nota_fiscal_saidavlr_bruto_esp: TIBBCDField;
    nota_fiscal_saidavlr_liquido_esp: TIBBCDField;
    nota_fiscal_saidavlr_adicional: TIBBCDField;
    nota_fiscal_saidavlr_desconto: TIBBCDField;
    nota_fiscal_saidavlr_adicional_esp: TIBBCDField;
    nota_fiscal_saidavlr_desconto_esp: TIBBCDField;
    Label71: TLabel;
    DBEdit17: TDBEdit;
    nota_fiscal_saida_produtovlr_unitario_esp: TFloatField;
    nota_fiscal_saida_produtovlr_liquido_esp: TIBBCDField;
    Label76: TLabel;
    DBEdit22: TDBEdit;
    Label77: TLabel;
    DBEdit23: TDBEdit;
    qryPagamentos_esp: TIBQuery;
    SmallintField1: TSmallintField;
    LargeintField1: TLargeintField;
    SmallintField2: TSmallintField;
    DateField1: TDateField;
    MemoField1: TMemoField;
    qryPagamentos_espvlr_pagamento_esp: TIBBCDField;
    dsPagamentos_esp: TDataSource;
    qryAdicDescvlr_adic_desc_esp: TIBBCDField;
    produtos_xlsvlr_unitario_esp: TFloatField;
    spr_adic_desc_pedidosvlr_adic_desc_esp: TIBBCDField;
    nota_fiscal_saidacod_banco: TIntegerField;
    Banco: TIBQuery;
    Bancocod_banco: TSmallintField;
    Banconom_banco: TIBStringField;
    Bancotxt_descricao: TMemoField;
    dsBanco: TDataSource;
    bl_combinadocod_banco: TIntegerField;
    dsContainres: TDataSource;
    actExcelItensAtualizar: TAction;
    actExcelItensImportar: TAction;
    spr_estornar_fatura: TIBStoredProc;
    nota_fiscal_saida_produtoies_situacao: TIBStringField;
    spr_refaturar: TIBStoredProc;
    PendentesEmbarque: TIBQuery;
    PendentesEmbarquenum_pedido: TLargeintField;
    PendentesEmbarquenum_pedido_cli: TIBStringField;
    PendentesEmbarquenum_pedido_for: TIBStringField;
    PendentesEmbarquenum_seq_pedido: TIntegerField;
    PendentesEmbarquecod_produto: TIBStringField;
    PendentesEmbarqueqtd_pendente: TIBBCDField;
    PendentesEmbarquevlr_unitario: TFloatField;
    PendentesEmbarquevlr_unitario_esp: TFloatField;
    PendentesEmbarquevlr_liquido: TIBBCDField;
    PendentesEmbarquevlr_liquido_esp: TIBBCDField;
    PendentesEmbarquevol_caixas: TIBBCDField;
    PendentesEmbarqueqtd_export_box: TIntegerField;
    PendentesEmbarquepes_liquido: TIBBCDField;
    ProxSequencia: TIBQuery;
    ProxSequenciaprox_sequencia: TLargeintField;
    nota_fiscal_saida_produtoobs_preco: TMemoField;
    nota_fiscal_saida_produtoobs_preco_esp: TMemoField;
    PendentesEmbarqueobs_preco: TMemoField;
    PendentesEmbarqueobs_preco_esp: TMemoField;
    pedido_adic_descvlr_adic_desc_esp: TIBBCDField;
    spr_adic_desc_pedidosnum_seq_adcdesc: TIntegerField;
    nf_adic_descnum_seq_adcdesc: TIntegerField;
    adicional_desconto: TIBDataSet;
    adicional_descontocod_empresa: TSmallintField;
    adicional_descontonum_sequencia: TIntegerField;
    adicional_descontocod_cliente: TIBStringField;
    adicional_descontocod_fornecedor: TSmallintField;
    adicional_descontoies_comissao: TIBStringField;
    adicional_descontoies_tipo: TIBStringField;
    adicional_descontovlr_adic_desc: TIBBCDField;
    adicional_descontovlr_adic_desc_esp: TIBBCDField;
    adicional_descontotxt_descricao: TMemoField;
    nota_fiscal_saidadat_bl: TDateField;
    nota_fiscal_saidaies_pallets: TIBStringField;
    nota_fiscal_saida_produtoseq_pallet: TIntegerField;
    produtos_pkl: TIBQuery;
    produtos_pklnum_sequencia: TSmallintField;
    produtos_pklcod_produto: TIBStringField;
    produtos_pklnum_pedido_cli: TIBStringField;
    produtos_pklnum_pedido_for: TIBStringField;
    produtos_pklqtd_produto: TIBBCDField;
    produtos_pklqtd_export_box: TIntegerField;
    produtos_pklvol_caixas: TIBBCDField;
    produtos_pklpes_bruto: TIBBCDField;
    produtos_pklpes_liquido: TIBBCDField;
    produtos_pklseq_emb_esp: TIntegerField;
    produtos_pklies_emb_esp: TIBStringField;
    produtos_pklseq_pallet: TIntegerField;
    produtos_pklqtd_pallet: TIntegerField;
    produtos_pklpes_bruto_pallet: TIBBCDField;
    produtos_pklpes_liquido_pallet: TIBBCDField;
    produtos_pklcomprimento_pallet: TIBBCDField;
    produtos_pkllargura_pallet: TIBBCDField;
    produtos_pklaltura_pallet: TIBBCDField;
    produtos_pklvolume_pallet: TIBBCDField;
    produtos_pklsigla_i: TIBStringField;
    produtos_pklsigla_vol_i: TIBStringField;
    produtos_pklpes_unitario: TFloatField;
    produtos_pkldat_cad_peso: TDateField;
    produtos_pklobs_peso_unitario: TIBStringField;
    emb_esp_fat: TIBQuery;
    produtos_pklseq_pkl: TIntegerField;
    spr_ordem_itemped: TIBStoredProc;
    nota_fiscal_saida_produtoies_conjunto: TIBStringField;
    rgPallets: TDBRadioGroup;
    ProdutosExcelAlteracao: TIBQuery;
    ProdutosExcelAlteracaocod_empresa: TSmallintField;
    ProdutosExcelAlteracaonum_nota_fiscal: TIntegerField;
    ProdutosExcelAlteracaoserie: TIBStringField;
    ProdutosExcelAlteracaonum_sequencia: TSmallintField;
    ProdutosExcelAlteracaocod_produto: TIBStringField;
    ProdutosExcelAlteracaoqtd_produto: TIBBCDField;
    ProdutosExcelAlteracaovlr_unitario: TFloatField;
    ProdutosExcelAlteracaovlr_unitario_esp: TFloatField;
    ProdutosExcelAlteracaotexto: TIBStringField;
    ProdutosExcelAlteracaotxt_observacao: TIBStringField;
    ProdutosExcelAlteracaodat_cadastro: TDateTimeField;
    ProdutosExcelAlteracaonum_pedido: TLargeintField;
    ProdutosExcelAlteracaonum_seq_pedido: TSmallintField;
    ProdutosExcelAlteracaovlr_liquido: TIBBCDField;
    ProdutosExcelAlteracaovlr_liquido_esp: TIBBCDField;
    ProdutosExcelAlteracaoqtd_export_box: TIntegerField;
    ProdutosExcelAlteracaovol_caixas: TIBBCDField;
    ProdutosExcelAlteracaopes_liquido: TIBBCDField;
    ProdutosExcelAlteracaopes_bruto: TIBBCDField;
    ProdutosExcelAlteracaoies_emb_esp: TIBStringField;
    ProdutosExcelAlteracaoies_situacao: TIBStringField;
    ProdutosExcelAlteracaoobs_preco: TMemoField;
    ProdutosExcelAlteracaoobs_preco_esp: TMemoField;
    ProdutosExcelAlteracaoseq_pallet: TIntegerField;
    ProdutosExcelAlteracaoqtd_pallet: TIntegerField;
    ProdutosExcelAlteracaopes_bruto_pallet: TIBBCDField;
    ProdutosExcelAlteracaopes_liquido_pallet: TIBBCDField;
    ProdutosExcelAlteracaocomprimento_pallet: TIBBCDField;
    ProdutosExcelAlteracaolargura_pallet: TIBBCDField;
    ProdutosExcelAlteracaoaltura_pallet: TIBBCDField;
    ProdutosExcelAlteracaovolume_pallet: TIBBCDField;
    ProdutosExcelAlteracaoseq_emb_esp: TIntegerField;
    ProdutosExcelAlteracaoseq_pkl: TIntegerField;
    ProdutosExcelAlteracaoies_conjunto: TIBStringField;
    ProdutosExcelAlteracaocod_prod_fornec: TIBStringField;
    ProdutosExcelAlteracaonum_pedido_cli: TIBStringField;
    ProdutosExcelAlteracaonum_pedido_for: TIBStringField;
    nota_fiscal_saida_produtoqtd_pallet: TIntegerField;
    nota_fiscal_saida_produtopes_bruto_pallet: TIBBCDField;
    nota_fiscal_saida_produtopes_liquido_pallet: TIBBCDField;
    nota_fiscal_saida_produtocomprimento_pallet: TIBBCDField;
    nota_fiscal_saida_produtolargura_pallet: TIBBCDField;
    nota_fiscal_saida_produtoaltura_pallet: TIBBCDField;
    nota_fiscal_saida_produtovolume_pallet: TIBBCDField;
    nota_fiscal_saida_produtoseq_emb_esp: TIntegerField;
    nota_fiscal_saida_produtoseq_pkl: TIntegerField;
    spr_emb_esp_fat: TIBStoredProc;
    produtos_xlsvlr_liquido: TIBBCDField;
    produtos_xlsvlr_liquido_esp: TIBBCDField;
    actValidar: TAction;
    btnValidar: TToolButton;
    excluir_item_emb_esp: TIBSQL;
    btnGerar: TToolButton;
    btnImportarListaEsp: TToolButton;
    panGauge: TPanel;
    btnPackingList: TToolButton;
    cbFaturas: TCheckBox;
    sel_faturasnom_empresa_reduz: TIBStringField;
    panGauge1: TPanel;
    bl_combinadocod_empresa: TSmallintField;
    bl_combinadonom_empresa_reduz: TIBStringField;
    PendentesEmbarquepes_bruto: TIBBCDField;
    ds_spr_saldo_confirmacao: TDataSource;
    fatura_pagamento: TIBDataSet;
    fatura_pagamentocod_empresa: TSmallintField;
    fatura_pagamentonum_nota_fiscal: TIntegerField;
    fatura_pagamentoserie: TIBStringField;
    fatura_pagamentonum_sequencia: TSmallintField;
    fatura_pagamentovlr_pagamento: TIBBCDField;
    fatura_pagamentovlr_pagamento_esp: TIBBCDField;
    fatura_pagamentodat_pagamento: TDateField;
    fatura_pagamentotxt_pagamento: TMemoField;
    ds_fatura_pagamento: TDataSource;
    SeqPagFatura: TIBQuery;
    SeqPagFaturaprox_sequencia: TLargeintField;
    Label86: TLabel;
    fatura_pagamentonum_pedido: TLargeintField;
    fatura_pagamentolkpPedido: TStringField;
    SeqPedidoPagamento: TIBQuery;
    SeqPedidoPagamentoprox_sequencia: TLargeintField;
    pedido_pagamento: TIBDataSet;
    pedido_pagamentocod_empresa: TSmallintField;
    pedido_pagamentonum_pedido: TLargeintField;
    pedido_pagamentonum_sequencia: TSmallintField;
    pedido_pagamentovlr_pagamento: TIBBCDField;
    pedido_pagamentodat_pagamento: TDateField;
    pedido_pagamentotxt_pagamento: TMemoField;
    pedido_pagamentotot_pagamentos: TIBBCDField;
    pedido_pagamentovlr_pagamento_esp: TIBBCDField;
    pedido_pagamentotot_pagamentos_esp: TIBBCDField;
    pedido_pagamentonum_nota_fiscal: TIntegerField;
    pedido_pagamentoserie: TIBStringField;
    pedido_pagamentonum_seq_fatpag: TIntegerField;
    nota_fiscal_saidavlr_pendente: TIBBCDField;
    nota_fiscal_saidavlr_pendente_esp: TIBBCDField;
    nota_fiscal_saidavlr_pago: TIBBCDField;
    nota_fiscal_saidavlr_pago_esp: TIBBCDField;
    nota_fiscal_saidavlr_saldo: TIBBCDField;
    nota_fiscal_saidavlr_saldo_esp: TIBBCDField;
    spr_calc_saldo_fatura: TIBStoredProc;
    nf_saida_complementoqtd_pallets: TIntegerField;
    nf_saida_complementovol_pallets: TIBBCDField;
    nf_saida_complementopes_liq_pallets: TIBBCDField;
    nf_saida_complementopes_bruto_pallets: TIBBCDField;
    adic_desc_terms: TIBQuery;
    adic_desc_termscod_empresa: TSmallintField;
    adic_desc_termsnum_nota_fiscal: TIntegerField;
    adic_desc_termsserie: TIBStringField;
    adic_desc_termsnum_sequencia: TSmallintField;
    adic_desc_termsies_tipo: TIBStringField;
    adic_desc_termsvlr_adic_desc: TIBBCDField;
    adic_desc_termsvlr_adic_desc_esp: TIBBCDField;
    adic_desc_termstxt_descricao: TMemoField;
    adic_desc_termsnum_pedido: TLargeintField;
    adic_desc_termsnum_seq_pedido: TSmallintField;
    adic_desc_termsnum_seq_adcdesc: TIntegerField;
    Label54: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    JvStaticText3: TJvStaticText;
    JvStaticText1: TJvStaticText;
    Label10: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    edtpes_bruto: TDBEdit;
    edtpes_liquido: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    JvStaticText2: TJvStaticText;
    Label94: TLabel;
    Label97: TLabel;
    DBEdit46: TDBEdit;
    DBEdit49: TDBEdit;
    Panel9: TPanel;
    pgConfDescAdic: TPageControl;
    tsBl: TTabSheet;
    Label37: TLabel;
    Label6: TLabel;
    Label27: TLabel;
    Label31: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label36: TLabel;
    Label40: TLabel;
    JvDBUltimGrid2: TJvDBUltimGrid;
    JvDBLookupCombo2: TJvDBLookupCombo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit12: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBLookupCombo6: TJvDBLookupCombo;
    rgTipoFrete: TDBRadioGroup;
    tsPagamentos: TTabSheet;
    Label47: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Panel10: TPanel;
    DBMemo1: TDBMemo;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    lcbConfirmacoes: TJvDBLookupCombo;
    DBNavigator5: TDBNavigator;
    JvDBUltimGrid7: TJvDBUltimGrid;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    TabSheet3: TTabSheet;
    Label53: TLabel;
    Label56: TLabel;
    Label78: TLabel;
    JvDBUltimGrid5: TJvDBUltimGrid;
    DBNavigator2: TDBNavigator;
    DBEdit3: TDBEdit;
    mTerms: TMemo;
    TabSheet5: TTabSheet;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    DBNavigator3: TDBNavigator;
    mTermsEsp: TMemo;
    JvDBUltimGrid6: TJvDBUltimGrid;
    DBEdit26: TDBEdit;
    tsDescAdic: TTabSheet;
    Label41: TLabel;
    sbDescAdic: TSpeedButton;
    Label43: TLabel;
    Label52: TLabel;
    Label59: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    JvDBUltimGrid3: TJvDBUltimGrid;
    dbmTxtDescricao: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit14: TDBEdit;
    dbgDescAdicPedidos: TJvDBUltimGrid;
    DBEdit15: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    nf_confirmacoes_lkp: TIBQuery;
    nf_confirmacoes_lkpnum_pedido: TLargeintField;
    nf_confirmacoes_lkpnum_pedido_cli: TIBStringField;
    ds_nf_confirmacoes_lkp: TDataSource;
    spr_vlr_esp_fat: TIBStoredProc;
    nota_fiscal_saidadat_arquivo: TDateField;
    ProdutosExcelAlteracaoies_caixa_fechada: TIBStringField;
    nota_fiscal_saida_produtoies_caixa_fechada: TIBStringField;
    produtos_pklncm_cod: TIntegerField;
    spr_estornar_romaneio: TIBStoredProc;
    DBEdit50: TDBEdit;
    nota_fiscal_saidaies_preco_esp: TIBStringField;
    DBRadioGroup2: TDBRadioGroup;
    ProdutosFaturaImp: TIBDataSet;
    ProdutosFaturaImpcod_empresa: TSmallintField;
    ProdutosFaturaImpnum_nota_fiscal: TIntegerField;
    ProdutosFaturaImpserie: TIBStringField;
    ProdutosFaturaImpnum_sequencia: TSmallintField;
    ProdutosFaturaImpcod_produto: TIBStringField;
    ProdutosFaturaImpqtd_produto: TIBBCDField;
    ProdutosFaturaImpvlr_unitario: TFloatField;
    ProdutosFaturaImpvlr_unitario_esp: TFloatField;
    ProdutosFaturaImptexto: TIBStringField;
    ProdutosFaturaImptxt_observacao: TIBStringField;
    ProdutosFaturaImpdat_cadastro: TDateTimeField;
    ProdutosFaturaImpnum_pedido: TLargeintField;
    ProdutosFaturaImpnum_seq_pedido: TSmallintField;
    ProdutosFaturaImpvlr_liquido: TIBBCDField;
    ProdutosFaturaImpvlr_liquido_esp: TIBBCDField;
    ProdutosFaturaImpqtd_export_box: TIntegerField;
    ProdutosFaturaImpvol_caixas: TIBBCDField;
    ProdutosFaturaImppes_liquido: TIBBCDField;
    ProdutosFaturaImppes_bruto: TIBBCDField;
    ProdutosFaturaImpies_emb_esp: TIBStringField;
    ProdutosFaturaImpies_situacao: TIBStringField;
    ProdutosFaturaImpobs_preco: TMemoField;
    ProdutosFaturaImpobs_preco_esp: TMemoField;
    ProdutosFaturaImpseq_emb_esp: TIntegerField;
    ProdutosFaturaImpseq_pallet: TIntegerField;
    ProdutosFaturaImpqtd_pallet: TIntegerField;
    ProdutosFaturaImppes_bruto_pallet: TIBBCDField;
    ProdutosFaturaImppes_liquido_pallet: TIBBCDField;
    ProdutosFaturaImpcomprimento_pallet: TIBBCDField;
    ProdutosFaturaImplargura_pallet: TIBBCDField;
    ProdutosFaturaImpaltura_pallet: TIBBCDField;
    ProdutosFaturaImpvolume_pallet: TIBBCDField;
    ProdutosFaturaImpseq_pkl: TIntegerField;
    ProdutosFaturaImpies_conjunto: TIBStringField;
    ProdutosFaturaImpies_caixa_fechada: TIBStringField;
    emb_padrao: TIBQuery;
    emb_especial_fatpes_bruto_cx: TFloatField;
    spr_excfat_prodlist: TIBStoredProc;
    spr_altfat_prodlist: TIBStoredProc;
    bl_combinadoqtd_pallets: TIntegerField;
    bl_combinadovol_pallets: TIBBCDField;
    bl_combinadopes_bruto_pallets: TIBBCDField;
    bl_combinadoies_pallets: TIBStringField;
    PendentesEmbarquepes_bruto_caixa: TFloatField;
    PendentesEmbarquepes_unit_prod: TFloatField;
    PendentesEmbarquecaixa_fechada: TIBStringField;
    PendentesEmbarquealtura: TIBBCDField;
    PendentesEmbarquelargura: TIBBCDField;
    PendentesEmbarquecomprimento: TIBBCDField;
    PendentesEmbarquevol_master_box: TIBBCDField;
    spr_fatura_prodlist: TIBStoredProc;
    nota_fiscal_saida_produtoqtd_inner_box: TIBBCDField;
    PendentesEmbarqueqtd_inner_box: TIBBCDField;
    PendentesEmbarqueun_cx_master: TIBBCDField;
    ProdutosExcelAlteracaoqtd_inner_box: TIBBCDField;
    embalagemqtd_master: TIBBCDField;
    embalagemqtd_inner: TIBBCDField;
    ProdutosFaturaImpqtd_inner_box: TIBBCDField;
    nota_fiscal_saida_produtopes_pallet_vazio: TFloatField;
    ProdutosFaturaImppes_pallet_vazio: TFloatField;
    ProdutosExcelAlteracaopes_pallet_vazio: TFloatField;
    nf_saida_complementovol_geral: TIBBCDField;
    nf_saida_complementocxs_outpallet: TIntegerField;
    nf_saida_complementopes_liq_geral: TIBBCDField;
    nf_saida_complementopes_bru_geral: TIBBCDField;
    bl_combinadovol_geral: TIBBCDField;
    bl_combinadocxs_outpallet: TIntegerField;
    bl_combinadopes_liq_geral: TIBBCDField;
    bl_combinadopes_bru_geral: TIBBCDField;
    emb_esp_fatcod_empresa: TSmallintField;
    emb_esp_fatnum_nota_fiscal: TIntegerField;
    emb_esp_fatserie: TIBStringField;
    emb_esp_fatseq: TIntegerField;
    emb_esp_fatden_embalagem: TIBStringField;
    emb_esp_fatqtd_total: TIBBCDField;
    emb_esp_fatvol_total: TIBBCDField;
    emb_esp_fatpes_bruto: TIBBCDField;
    emb_esp_fatpes_liquido: TIBBCDField;
    emb_esp_fatqtd_caixas: TIntegerField;
    emb_esp_fatqtd_produto: TIBBCDField;
    emb_esp_fatpes_unitario: TFloatField;
    emb_esp_fataltura: TIBBCDField;
    emb_esp_fatlargura: TIBBCDField;
    emb_esp_fatprofundidade: TIBBCDField;
    nota_fiscal_saidadat_pgto_comis_f: TDateField;
    nota_fiscal_saidadat_pgto_comis_c: TDateField;
    nota_fiscal_saida_produtopct_comissao_f: TIBBCDField;
    nota_fiscal_saida_produtopct_comissao_c: TIBBCDField;
    ProdutosExcelAlteracaopct_comissao_f: TIBBCDField;
    ProdutosExcelAlteracaopct_comissao_c: TIBBCDField;
    ProdutosFaturaImppct_comissao_f: TIBBCDField;
    ProdutosFaturaImppct_comissao_c: TIBBCDField;
    btnComissoes: TToolButton;
    actComissoes: TAction;
    dtpDatEntrega: TJvDBDatePickerEdit;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvDBDatePickerEdit5: TJvDBDatePickerEdit;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    dtpDatPagamento: TJvDBDatePickerEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    JvDBUltimGrid4: TJvDBUltimGrid;
    nf_confirmacoescod_empresa: TSmallintField;
    nf_confirmacoesnum_nota_fiscal: TIntegerField;
    nf_confirmacoesserie: TIBStringField;
    nf_confirmacoesnum_pedido: TLargeintField;
    nf_confirmacoesnum_pedido_for: TIBStringField;
    nf_confirmacoesnum_pedido_cli: TIBStringField;
    nf_confirmacoesdat_liberacao: TDateField;
    nf_confirmacoesvlr_pedido: TIBBCDField;
    nf_confirmacoesvlr_faturado: TIBBCDField;
    nf_confirmacoesvlr_pendente: TIBBCDField;
    nf_confirmacoesvlr_tot_faturado: TIBBCDField;
    nf_confirmacoesvlr_pagamento: TIBBCDField;
    nf_confirmacoesvlr_saldo: TIBBCDField;
    nf_confirmacoesvlr_saldo_ant: TIBBCDField;
    nf_confirmacoesvlr_condicao: TIBBCDField;
    nf_confirmacoesvlr_produtos: TIBBCDField;
    nf_confirmacoesvlr_adicional: TIBBCDField;
    nf_confirmacoesvlr_desconto: TIBBCDField;
    nf_confirmacoesvlr_pedido_esp: TIBBCDField;
    nf_confirmacoesvlr_produtos_esp: TIBBCDField;
    nf_confirmacoesvlr_faturado_esp: TIBBCDField;
    nf_confirmacoesvlr_pendente_esp: TIBBCDField;
    nf_confirmacoesvlr_adicional_esp: TIBBCDField;
    nf_confirmacoesvlr_desconto_esp: TIBBCDField;
    nf_confirmacoesvlr_tot_faturado_esp: TIBBCDField;
    nf_confirmacoesvlr_pagamento_esp: TIBBCDField;
    nf_confirmacoesvlr_saldo_esp: TIBBCDField;
    nf_confirmacoesvlr_saldo_ant_esp: TIBBCDField;
    produtos_xlspes_unitario: TFloatField;
    tsComissao: TTabSheet;
    nota_fiscal_saidaies_comissao: TSmallintField;
    nota_fiscal_saidaoverprice_com_c: TIBBCDField;
    nota_fiscal_saidaoverprice_com_f: TIBBCDField;
    dgbComissao: TDBRadioGroup;
    ProdutosExcelAlteracaoies_base_comissao: TIBStringField;
    nota_fiscal_saidaies_insurance: TIBStringField;
    Label101: TLabel;
    dbcInsurance: TJvDBComboBox;
    Button1: TButton;
    Button2: TButton;
    nota_fiscal_saidaies_idioma: TIBStringField;
    JvDBComboBox1: TJvDBComboBox;
    Label83: TLabel;
    nf_confirmacoesies_pago: TIBStringField;
    nota_fiscal_saidaies_material_pack: TIBStringField;
    Exportadorcod_fornecedor: TSmallintField;
    Exportadorraz_social: TIBStringField;
    Exportadorraz_social_reduz: TIBStringField;
    Exportadorpais_origem: TIBStringField;
    Exportadorpais_aquisicao: TIBStringField;
    Exportadorpais_procedencia: TIBStringField;
    transportadoracod_transportadora: TSmallintField;
    transportadoranom_transportadora: TIBStringField;
    transportadoraendereco: TMemoField;
    Fornecedorcod_moeda: TSmallintField;
    Exportadories_idioma: TIBStringField;
    Importadornom_cliente: TIBStringField;
    Importadoridioma_shipmarks: TIBStringField;
    Clientesnom_cliente_reduz: TIBStringField;
    spr_saldo_confirmacaonum_pedido: TLargeintField;
    spr_saldo_confirmacaonum_pedido_for: TIBStringField;
    spr_saldo_confirmacaonum_pedido_cli: TIBStringField;
    spr_saldo_confirmacaodat_liberacao: TDateField;
    spr_saldo_confirmacaovlr_pedido: TIBBCDField;
    spr_saldo_confirmacaovlr_produtos: TIBBCDField;
    spr_saldo_confirmacaovlr_faturado: TIBBCDField;
    spr_saldo_confirmacaovlr_adicional: TIBBCDField;
    spr_saldo_confirmacaovlr_desconto: TIBBCDField;
    spr_saldo_confirmacaovlr_tot_faturado: TIBBCDField;
    spr_saldo_confirmacaovlr_pagamento: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_ant: TIBBCDField;
    spr_saldo_confirmacaovlr_pendente: TIBBCDField;
    spr_saldo_confirmacaovlr_condicao: TIBBCDField;
    spr_saldo_confirmacaovlr_pedido_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_produtos_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_faturado_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_adicional_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_desconto_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_tot_faturado_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_pagamento_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_fat: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_fat_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_ant_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_pendente_esp: TIBBCDField;
    dbgSaldosPedidos: TJvDBUltimGrid;
    Clientesncm_fatura: TIBStringField;
    Clientesncm_pack_list: TIBStringField;
    Clientesncm_bl: TIBStringField;
    cby_nf_saida_complementovol_caixas: TIBBCDField;
    cby_nf_saida_complementoqtd_caixas: TIntegerField;
    cby_nf_saida_complementopes_liquido: TIBBCDField;
    cby_nf_saida_complementopes_bruto: TIBBCDField;
    cby_nf_saida_complementovol_pallets: TIBBCDField;
    cby_nf_saida_complementoqtd_pallets: TIntegerField;
    cby_nf_saida_complementopes_liq_pallets: TIBBCDField;
    cby_nf_saida_complementopes_bruto_pallets: TIBBCDField;
    cby_nf_saida_complementovol_geral: TIBBCDField;
    cby_nf_saida_complementocxs_outpallet: TIntegerField;
    cby_nf_saida_complementopes_liq_geral: TIBBCDField;
    cby_nf_saida_complementopes_bru_geral: TIBBCDField;
    totais_blcxs_outpallet: TIntegerField;
    totais_blpes_liq_geral: TIBBCDField;
    totais_blpes_bru_geral: TIBBCDField;
    totais_blqtd_pallets: TIntegerField;
    totais_blqtd_caixas: TIntegerField;
    totais_blies_pallets: TIBStringField;
    emb_esp_fatpes_bruto_cx: TFloatField;
    embalagempes_bruto_cx: TIBBCDField;
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
    cliente_filial: TIBQuery;
    ds_cliente_filial: TDataSource;
    cliente_filialseq_filial: TIntegerField;
    cliente_filialnome: TIBStringField;
    Label3: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    nota_fiscal_saidaseq_filial: TIntegerField;
    Label33: TLabel;
    dbcFabricante: TDBLookupComboBox;
    Fabricantes: TIBQuery;
    dsFabricantes: TDataSource;
    Fabricantescod_fabricante: TSmallintField;
    Fabricantesnome: TIBStringField;
    nota_fiscal_saidacod_fabricante: TSmallintField;
    nota_fiscal_saidalkpFabricante: TStringField;
    Fabricantesdescricao: TMemoField;
    Label84: TLabel;
    JvDBDatePickerEdit3: TJvDBDatePickerEdit;
    nota_fiscal_saidadat_env_originais: TDateField;
    nota_fiscal_saidadat_rec_originais: TDateField;
    Label85: TLabel;
    JvDBDatePickerEdit4: TJvDBDatePickerEdit;
    nota_fiscal_saidadat_acerto_com: TDateField;
    Label102: TLabel;
    JvDBDatePickerEdit6: TJvDBDatePickerEdit;
    cbImages: TCheckBox;
    qryProdutocod_produto: TIBStringField;
    qryProdutoncm_cod: TIntegerField;
    qryProdutoies_situacao: TIBStringField;
    qryProdutocod_uni_medida: TSmallintField;
    qryProdutoden_uni_medida: TIBStringField;
    qryProdutosigla: TIBStringField;
    Fornecedorraz_social_reduz: TIBStringField;
    emb_esp_fatmesclar: TIBStringField;
    emb_esp_item_fat: TIBQuery;
    emb_esp_item_fatpes_liquido: TIBBCDField;
    emb_especial_fatmesclar: TIBStringField;
    nota_fiscal_saidavlr_comissao_c: TIBBCDField;
    nota_fiscal_saidavlr_comissao_f: TIBBCDField;
    GroupBox4: TGroupBox;
    Label45: TLabel;
    DBEdit11: TDBEdit;
    Label79: TLabel;
    dbeOverPriceFor: TDBEdit;
    Label98: TLabel;
    dtpPgtoComForn: TJvDBDatePickerEdit;
    GroupBox5: TGroupBox;
    Label48: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    DBEdit24: TDBEdit;
    dbeOverPriceCli: TDBEdit;
    dtpPgtoComClie: TJvDBDatePickerEdit;
    nota_fiscal_saidadat_vertratadm: TDateField;
    nota_fiscal_saidadat_verli: TDateField;
    nota_fiscal_saidaies_li: TIBStringField;
    dbies_li: TDBRadioGroup;
    dbVerLi: TJvDBDatePickerEdit;
    lbVerLi: TLabel;
    JvDBDatePickerEdit8: TJvDBDatePickerEdit;
    Label63: TLabel;
    nota_fiscal_saidadat_eda_br: TDateField;
    Label51: TLabel;
    JvDBDatePickerEdit7: TJvDBDatePickerEdit;
    nota_fiscal_saidadat_fotos: TDateField;
    JvDBDatePickerEdit9: TJvDBDatePickerEdit;
    Label64: TLabel;
    nota_fiscal_saidadat_instBL: TDateField;
    Label65: TLabel;
    JvDBDatePickerEdit10: TJvDBDatePickerEdit;
    nota_fiscal_saidadat_mod_doc: TDateField;
    Label66: TLabel;
    JvDBDatePickerEdit11: TJvDBDatePickerEdit;
    Exportadorendereco: TMemoField;
    Importadorendereco: TMemoField;
    cliente_filialendereco: TMemoField;
    totais_blvol_geral: TIBBCDField;
    nota_fiscal_saidadat_env_bl: TDateField;
    nota_fiscal_saidadat_rec_bl: TDateField;
    Label67: TLabel;
    JvDBDatePickerEdit12: TJvDBDatePickerEdit;
    Label68: TLabel;
    JvDBDatePickerEdit13: TJvDBDatePickerEdit;
    nota_fiscal_saidadat_apro_bl: TDateField;
    Label69: TLabel;
    JvDBDatePickerEdit14: TJvDBDatePickerEdit;
    spr_saldo_pagamento: TIBStoredProc;
    Label70: TLabel;
    Label95: TLabel;
    JvDBDatePickerEdit15: TJvDBDatePickerEdit;
    nota_fiscal_saidadat_pl_des: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nota_fiscal_saidaAfterCancel(DataSet: TDataSet);
    procedure nota_fiscal_saidaAfterClose(DataSet: TDataSet);
    procedure nota_fiscal_saidaAfterDelete(DataSet: TDataSet);
    procedure nota_fiscal_saidaAfterPost(DataSet: TDataSet);
    procedure nota_fiscal_saidaBeforeOpen(DataSet: TDataSet);
    procedure nota_fiscal_saidaDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure nota_fiscal_saidaUpdateError(DataSet: TDataSet;
      E: EDatabaseError; UpdateKind: TUpdateKind;
      var UpdateAction: TIBUpdateAction);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure nota_fiscal_saida_produtoBeforeOpen(DataSet: TDataSet);
    procedure nota_fiscal_saida_produtocod_produtoValidate(Sender: TField);
    procedure nota_fiscal_saidacod_transportadoraValidate(Sender: TField);
    procedure nota_fiscal_saidaNewRecord(DataSet: TDataSet);
    procedure nota_fiscal_saidaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure nota_fiscal_saida_produtoBeforeInsert(DataSet: TDataSet);
    procedure nota_fiscal_saidaBeforeDelete(DataSet: TDataSet);
    procedure nota_fiscal_saidaBeforeInsert(DataSet: TDataSet);
    procedure act_F5Execute(Sender: TObject);
    procedure act_F6Execute(Sender: TObject);
    procedure nota_fiscal_saida_produtoAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure nf_saida_complementoBeforeOpen(DataSet: TDataSet);
    procedure nf_saida_complementoAfterCancel(DataSet: TDataSet);
    procedure nf_saida_complementoAfterClose(DataSet: TDataSet);
    procedure nf_saida_complementoAfterDelete(DataSet: TDataSet);
    procedure nf_saida_complementoAfterPost(DataSet: TDataSet);
    procedure dts_nf_saida_complementoStateChange(Sender: TObject);
    procedure nf_saida_complementoNewRecord(DataSet: TDataSet);
    procedure nf_saida_complementoAfterOpen(DataSet: TDataSet);
    // fatura
    procedure actFaturaExecute(Sender: TObject);
    procedure GerarFatura(Tipo: String);
    procedure CommercialInvoiceHeader(Tipo: String);
    procedure CommercialInvoiceItens(Tipo: String);
    procedure AtualizarTotaisNF(NumNF:Integer; Serie: String; Fat: Boolean = True);

    // bill of lading
    procedure actEmbarqueExecute(Sender: TObject);
    procedure GerarBillLading(Tipo: String);

    // packing list
    procedure actPackingExecute(Sender: TObject);
    procedure GerarPackingList(Tipo: String);
    procedure PackingListHeaderCommon(Tipo: string);
    procedure PackingListHeaderItems(bPallets, bCaixas: boolean);
    function  PackingListHeaderPallets: integer;
    function PackingListItens(Pallets: boolean): boolean;
    function SubTotais(bPallets, bCaixas: boolean; Tipo: String; li: integer): integer;
    procedure PackagesInformations(DataSet: TDataSet; bPallets, bCaixas, bBl: boolean; C1, C2: String);

    procedure nota_fiscal_saida_produtocod_prod_fornecGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure nf_containerNewRecord(DataSet: TDataSet);
    procedure nf_containerAfterPost(DataSet: TDataSet);
    procedure nf_containerAfterDelete(DataSet: TDataSet);
    procedure nf_containerqtd_containerValidate(Sender: TField);
    procedure JvDBUltimGrid2Enter(Sender: TObject);
    procedure JvDBUltimGrid2Exit(Sender: TObject);
    procedure nf_containercod_containerValidate(Sender: TField);
    procedure FecharExcel;
    procedure AbrirPlanilha(FileName: String);
    procedure act_F7Execute(Sender: TObject);
    procedure nf_saida_complementonum_faturaValidate(Sender: TField);
    procedure nf_saida_complementonum_ref_volumeValidate(Sender: TField);
    procedure nota_fiscal_saidaCalcFields(DataSet: TDataSet);
    procedure emb_especial_fatAfterScroll(DataSet: TDataSet);
    procedure GroupBox7Enter(Sender: TObject);
    procedure GroupBox7Exit(Sender: TObject);
    procedure emb_especial_fatAfterDelete(DataSet: TDataSet);
    procedure emb_especial_item_fatAfterDelete(DataSet: TDataSet);
    procedure emb_especial_item_fatAfterPost(DataSet: TDataSet);
    procedure emb_especial_fatAfterPost(DataSet: TDataSet);
    procedure emb_especial_fatBeforeDelete(DataSet: TDataSet);
    procedure nota_fiscal_saida_produtocod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure emb_especial_item_fatcod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure nota_fiscal_saida_produtoCalcFields(DataSet: TDataSet);
    procedure emb_especial_item_fatCalcFields(DataSet: TDataSet);
    procedure Panel4Enter(Sender: TObject);
    procedure Panel4Exit(Sender: TObject);
    procedure edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    { retornar o caminho das planilhas excel Commercial Invoice, Packig List e Bill of Lading  }
    function ArquivoExcel(Doc: String; Tipo: String = ''; Msg: Boolean = True): String;
    procedure AbrirExcelPLClick(Sender: TObject);
    procedure AbrirExeclBLClick(Sender: TObject);
    procedure tbAbrirClick(Sender: TObject);
    procedure ExcluirMarcados(DataSet: TDataSet; Grade: TDBGrid);
    procedure fr_FmNavigator2acDeleteExecute(Sender: TObject);
    procedure nf_adic_descAfterDelete(DataSet: TDataSet);
    procedure nf_adic_descAfterPost(DataSet: TDataSet);
    function SeqAdicDesc(Nf: integer; Serie: string) : Integer;
    function SeqPgtoFatura(Nf: Integer; Serie: String) : Integer;
    procedure nf_adic_descNewRecord(DataSet: TDataSet);
    procedure ExportadorAfterOpen(DataSet: TDataSet);
    procedure nf_confirmacoesAfterPost(DataSet: TDataSet);
    procedure dbeCondicaoExit(Sender: TObject);
    procedure nf_confirmacoesAfterDelete(DataSet: TDataSet);
    procedure sbDescAdicClick(Sender: TObject);
    procedure pedido_adic_descAfterPost(DataSet: TDataSet);
    procedure nf_adic_descBeforeDelete(DataSet: TDataSet);
    procedure pedido_adic_descAfterDelete(DataSet: TDataSet);
    procedure JvDBUltimGrid1ShowTitleHint(Sender: TObject; Field: TField;
      var AHint: String; var ATimeOut: Integer);
    procedure JvDBUltimGrid5ShowTitleHint(Sender: TObject; Field: TField;
      var AHint: String; var ATimeOut: Integer);
    procedure dsnf_adic_descDataChange(Sender: TObject; Field: TField);
    procedure nf_adic_descAfterInsert(DataSet: TDataSet);
    function AdicionaisDescontos(Nf: Integer; Serie: String; NumPedido: Largeint): String;
    function AdicionaisDescontosEsp(Nf: Integer; Serie: String; NumPedido: Largeint): String;
    function TermosPagamento: String;
    function TermosPagamentoEspecial: String;
    procedure PendentePgtoReal;
    procedure PendentePgtoEsp;
    procedure nota_fiscal_saida_produtoAfterDelete(DataSet: TDataSet);
    function SeqNotaFiscal(NF: Integer; Serie: String): Integer;
    procedure GroupBox10Enter(Sender: TObject);
    procedure GroupBox10Exit(Sender: TObject);
    procedure bl_combinadoAfterPost(DataSet: TDataSet);
    procedure bl_combinadoAfterDelete(DataSet: TDataSet);
    procedure actBLNovoExecute(Sender: TObject);
    procedure pgcNFChange(Sender: TObject);
    procedure AbrirBlCombinado;
    procedure actBlExcluirExecute(Sender: TObject);
    procedure actBlCombinadoExecute(Sender: TObject);
    procedure actBLProcurarExecute(Sender: TObject);
    function GetSequencia_Fat(SeqBl : Integer): Integer;
    function GetNumBl:Integer;
    procedure AdicionarFaturas(DataSet: TDataSet; Grade: TDBGrid);
    procedure RemoverFaturas(DataSet: TDataSet; Grade: TDBGrid);
    procedure sbAddClick(Sender: TObject);
    procedure sbRemoveClick(Sender: TObject);
    procedure actAbrirBlExecute(Sender: TObject);
    function Lotes: String;
    procedure BancoBeforeOpen(DataSet: TDataSet);
    procedure AbrirExcelCIPRClick(Sender: TObject);
    procedure nota_fiscal_saidaAfterOpen(DataSet: TDataSet);
    procedure actExcelItensAtualizarExecute(Sender: TObject);
    procedure AbrirExcel(FileName: String; Visible: boolean = False);
    procedure FecharExcel2;
    procedure GerarExcelAlteracao;
    procedure GerarOverPriceComissoes;
    procedure GerarAdicionaisDescontos;
    procedure GerarAdicionaisDescontosDisponiveis;
    procedure GerarPendentesEmbarque;
    procedure ImportarExcelAlteracao(Sender: TObject);
    procedure nota_fiscal_saida_produtoBeforePost(DataSet: TDataSet);
    procedure nota_fiscal_saida_produtoBeforeDelete(DataSet: TDataSet);
    procedure actExcelItensImportarExecute(Sender: TObject);
    procedure adicional_descontoAfterDelete(DataSet: TDataSet);
    procedure adicional_descontoAfterPost(DataSet: TDataSet);
    procedure nota_fiscal_saida_produtoqtd_produtoValidate(Sender: TField);
    procedure actValidarExecute(Sender: TObject);
    procedure fatura_pagamentoAfterPost(DataSet: TDataSet);
    procedure fatura_pagamentoAfterDelete(DataSet: TDataSet);
    procedure fatura_pagamentoNewRecord(DataSet: TDataSet);
    function SeqPgtoPedido(NumPedido: Largeint) : Integer;
    procedure pedido_pagamentoAfterDelete(DataSet: TDataSet);
    procedure pedido_pagamentoAfterPost(DataSet: TDataSet);
    procedure pedido_pagamentoNewRecord(DataSet: TDataSet);
    procedure pedido_pagamentoBeforePost(DataSet: TDataSet);
    procedure fatura_pagamentoBeforeDelete(DataSet: TDataSet);
    procedure JvDBUltimGrid4ShowTitleHint(Sender: TObject; Field: TField;
      var AHint: String; var ATimeOut: Integer);
    procedure fatura_pagamentoAfterInsert(DataSet: TDataSet);
    procedure fatura_pagamentoBeforePost(DataSet: TDataSet);
    procedure lcbConfirmacoesClick(Sender: TObject);
    procedure ProdutosFaturaImpAfterPost(DataSet: TDataSet);
    procedure ExcluirFaturaProdList;
    procedure AddFaturaProdList;
    procedure AlterarNumFaturaProdList;
    procedure nf_saida_complementoBeforePost(DataSet: TDataSet);
    procedure actComissoesExecute(Sender: TObject);
    procedure nf_confirmacoesAfterScroll(DataSet: TDataSet);
    procedure dtsNFSaidaDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FornecedorBeforeOpen(DataSet: TDataSet);
    procedure FabricantesAfterOpen(DataSet: TDataSet);
    procedure nota_fiscal_saidadat_emissaoValidate(Sender: TField);
    procedure nota_fiscal_saidadat_embarqueValidate(Sender: TField);
    procedure nota_fiscal_saidaAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
    procedure Open_Filtro;

    procedure Last_NF(Cod_Cliente: tpCod_Cliente);

    procedure set_Value;
    (* This function returns the written equivalent of a number. *)
    function NumToLetters(Number: Real): string;
  public
    { Public declarations }
    procedure Open_NF(Num_NF: Integer; Serie : String; Cod_Cliente: tpCod_Cliente; Origem: byte = 0);
    procedure Insert_NF(Cod_Cliente: tpCod_Cliente);

  end;

const
  xlGreen = 14;
  xlYellow = 6;
  xlBlue = 8;

var
  lcid : Cardinal;
  WkBk : _Workbook;

  FileName, FileListaEsp  : String;
  DocGerado : String;
  fr_ManNF: Tfr_ManNF;
  Linha1, Linha2, LinhaAux, linhaIni_Dados, Linha, cont, Cont_Caract : Integer;
  FlagDollar : Boolean;
  l, Seq: integer;
  Ant, IdiomaExporter : String;

  SavePlace: TBookmark; { salvar a posição na tabela de produtos }
  TelaOrigem : byte;

  tncm, Bank, Endereco : TStringList;

  fComissao : boolean;
  flagEmissao : boolean;
  flagDatEmbarque : boolean;

  vlrAux: Double;

implementation

uses unConnection, SigIMP01_003, SigIMP01_009, SigIMP01_017, SigIMP01_045;

{$R *.dfm}

procedure Tfr_ManNF.AtualizarTotaisNF(NumNF:Integer; Serie: String; Fat: boolean = True);
begin
  { atualizar Valores Especiais em nota_fiscal_saida_produto quando não informados }
  with spr_vlr_esp_fat do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;
   { Atualizar valores em Nota Fiscal Saida - Valores Bruto e Líquido}
   if (Fat) then
   begin
     if Not(nota_fiscal_saida.State in [dsEdit, dsInsert]) then
        nota_fiscal_saida.Edit;
     nota_fiscal_saida.Post;
   end;
   { Atualizar valores totais em nf_saida_complemento }
   with cby_nf_saida_complemento do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_nota_fiscal').AsInteger := NumNF;
     ParamByName('serie').AsString := Serie;
     Open;
   end;
   { chamada a procedure, para evitar campos calculados no banco }
   with nf_saida_complemento do
   begin
     if Not(State in [dsEdit, dsInsert]) then
     begin
       Edit;
       nf_saida_complementovol_total.AsFloat := cby_nf_saida_complementovol_caixas.AsFloat;
       nf_saida_complementoqtd_caixas.AsInteger := cby_nf_saida_complementoqtd_caixas.AsInteger;
       nf_saida_complementopes_liquido.AsFloat := cby_nf_saida_complementopes_liquido.AsFloat;
       nf_saida_complementopes_bruto.AsFloat := cby_nf_saida_complementopes_bruto.AsFloat;
       nf_saida_complementoqtd_pallets.AsInteger := cby_nf_saida_complementoqtd_pallets.AsInteger;
       nf_saida_complementovol_pallets.AsFloat := cby_nf_saida_complementovol_pallets.AsFloat;
       nf_saida_complementopes_liq_pallets.AsFloat := cby_nf_saida_complementopes_liq_pallets.AsFloat;
       nf_saida_complementopes_bruto_pallets.AsFloat := cby_nf_saida_complementopes_bruto_pallets.AsFloat;
       nf_saida_complementovol_geral.Value := cby_nf_saida_complementovol_geral.AsFloat;
       nf_saida_complementocxs_outpallet.Value := cby_nf_saida_complementocxs_outpallet.AsInteger;
       nf_saida_complementopes_liq_geral.Value := cby_nf_saida_complementopes_liq_geral.AsFloat;
       nf_saida_complementopes_bru_geral.Value := cby_nf_saida_complementopes_bru_geral.AsFloat;
       Post;
     end;
   end;
   cby_nf_saida_complemento.Close;
end;


procedure Tfr_ManNF.Open_NF(Num_NF: Integer; Serie: String; Cod_Cliente: tpCod_Cliente; Origem: byte = 0);
begin
  TelaOrigem := Origem;
  { Cliente }
  with Clientes do
  begin
    Close;
    ParamByName('cod_cliente').AsString	:= trim(Cod_Cliente);
    Open;
  end;

  { Fatura }
  with nota_fiscal_saida do
  begin
    Close;
    ParamByName('cod_empresa').AsShort         := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := Num_NF;
    ParamByName('serie').AsString              := Serie;
    Open;
  end;
  { Complemento }
   with nf_saida_complemento do
   begin
     Close;
     ParamByName('cod_empresa').AsShort := vgCod_Empresa;
     ParamByName('num_nota_fiscal').AsInteger := Num_NF;
     ParamByName('serie').AsString := Serie;
     Open;
   end;
   { Produtos }
   with nota_fiscal_saida_produto do
   begin
      Close;
      ParamByName('cod_empresa').AsShort        := vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger	 := Num_NF;
      ParamByName('serie').AsString             := Serie;
      Open;
   end;
  { Container }
  with nf_container do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger       := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := Num_NF;
    ParamByName('serie').AsString              := Serie;
    Open;
  end;
  { Descontos/Adicionais }
  with nf_adic_desc do
  begin
    Close;
    ParamByName('cod_empresa').AsShort         := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := Num_NF;
    ParamByName('serie').AsString              := Serie;
    Open;
  end;

  with nf_Confirmacoes do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger       := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := Num_NF;
    ParamByName('serie').AsString              := Serie;
    Open;
  end;

  with nf_Confirmacoes_lkp do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger       := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := Num_NF;
    ParamByName('serie').AsString              := Serie;
    Open;
  end;

  with spr_adic_desc_pedidos do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger       := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := Num_NF;
    ParamByName('serie').AsString              := Serie;
    Open;
  end;

  with Banco do
  begin
    Close;
    Open;
  end;

  with emb_especial_fat do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    Open;
  end;

  with emb_especial_item_fat do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ParamByName('seq').AsInteger := emb_especial_fatseq.AsInteger;
    Open;
  end;

  with spr_saldo_confirmacao do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    Open;
  end;

  with fatura_pagamento do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    Open;
  end;

  IdiomaExporter := nota_fiscal_saidaies_idioma.AsString;

   { Informações do Exportador (fornecedor) }
   with Exportador do
   begin
     Close;
     ParamByName('cod_fornecedor').AsInteger :=  nf_saida_complementocod_fornecedor.AsInteger;
     Open;
   end;

   with qryPagamentos do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido').Value := nf_Confirmacoesnum_pedido.AsLargeInt;
     ParamByName('dat_pagamento').AsDate := nota_fiscal_saidadat_emissao.AsDateTime;
     Open;
   end;
   with qryPagamentos_esp do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido').Value := nf_Confirmacoesnum_pedido.AsLargeInt;
     ParamByName('dat_pagamento').AsDate := nota_fiscal_saidadat_emissao.AsDateTime;
     Open;
   end;

   with condicao_venda do
   begin
     Close;
     Open;
     Last;
     First;
   end;

   with cliente_filial do
   begin
     Close;
     ParamByName('cod_cliente').AsString	:= trim(Cod_Cliente);
     Open;
   end;

   Fabricantes.Open;

   mTerms.Lines.Clear;
   mTerms.Lines.Add(TermosPagamento);
   mTermsEsp.Lines.Clear;
   mTermsEsp.Lines.Add(TermosPagamentoEspecial);

   lbVerLi.Visible := nota_fiscal_saidaies_li.AsString = 'S';
   dbVerLi.Visible := nota_fiscal_saidaies_li.AsString = 'S';
   lbVerLi.Refresh;
   dbVerLi.Refresh;
end;

procedure Tfr_ManNF.Open_Filtro;
begin
	CriarForm(Tfr_Filtro, fr_Filtro, False, False, True);
end;

procedure Tfr_ManNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (nf_container.State in [dsEdit, dsInsert]) then nf_container.Post;

  if nota_fiscal_saida.State in [dsEdit, dsInsert] then
     nota_fiscal_saida.Post;

  if nota_fiscal_saida_produto.State in [dsEdit, dsInsert] then
     nota_fiscal_saida_produto.Post;

  if nf_saida_complemento.State in [dsEdit, dsInsert] then
     nf_saida_complemento.Post;

  Fabricantes.Close;

  FecharExcel;
  if Assigned(fr_Filtro) then
  begin
     fr_Filtro.Show;
     fr_Filtro.act_FiltrarExecute(nil);
     if TelaOrigem = 1 then fr_Filtro.tbsNF.Show;
     if TelaOrigem = 2 then fr_filtro.tbsPedido.Show;
  end;
  fr_ManNF	:= nil;
  Action   := caFree;
end;

procedure Tfr_ManNF.Insert_NF(Cod_Cliente: tpCod_Cliente);
begin
  Open_NF(0, '', Cod_Cliente);
  if (ExecutarAcao(fr_FmNavigator1.ActionList1,  fr_FmNavigator1.acInsert))
     and (nota_fiscal_saida.State in [dsEdit, dsInsert]) then
  	      nota_fiscal_saidacod_cliente.AsString  := Cod_Cliente;
end;

procedure Tfr_ManNF.nota_fiscal_saidaAfterCancel(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      CancelUpdates;
      nf_saida_complemento.CancelUpdates;
   finally
      Transaction.RollbackRetaining;
   end;
end;

procedure Tfr_ManNF.nota_fiscal_saidaAfterClose(
  DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := False;
	if TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).UnPrepare;
end;

procedure Tfr_ManNF.nota_fiscal_saidaAfterDelete(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      if DataSet <> nota_fiscal_saida then
      	nota_fiscal_saida.Refresh;
      nf_Confirmacoes.Close;
      spr_adic_desc_pedidos.Close;
      qryPagamentos.Close;
      qryPagamentos_esp.Close;
      nf_container.Close;
   end;
   { atualiza totais somente quando houver exclusão em nota_fiscal_saida_produto }
   if DataSet = nota_fiscal_saida_produto then
      AtualizarTotaisNF(DataSet.FieldByName('num_nota_fiscal').AsInteger, DataSet.FieldByName('serie').AsString);
end;
                                                                            
procedure Tfr_ManNF.nota_fiscal_saidaAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;

   if nf_saida_complemento.State in [dsEdit, dsInsert] then
      nf_saida_complemento.Post;

  if flagEmissao then
  begin
     { atualizar nf_confirmações }
     with spr_saldo_pagamento do
     begin
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
       ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
       ExecProc;
       try
         Transaction.CommitRetaining;
       except
         Transaction.RollbackRetaining;
       end;
     end;
     flagEmissao := False;

     spr_saldo_confirmacao.Close;
     spr_saldo_confirmacao.Open;

     nf_confirmacoes.Close;
     nf_confirmacoes.Open;

     nota_fiscal_saida.Refresh;

  end;

  AtualizarTotaisNF(nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString, False);
end;

procedure Tfr_ManNF.nota_fiscal_saidaBeforeOpen(
  DataSet: TDataSet);
begin
  TIBDataSet(DataSet).CachedUpdates := True;
  if not TIBDataSet(DataSet).Prepared then
     	   TIBDataSet(DataSet).Prepare;
                                                                 
  qryTransportadora.Close;
  qryTransportadora.Open;
end;

procedure Tfr_ManNF.nota_fiscal_saidaDeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
	Exception_Cadastro(DataSet, E, Action);
end;

procedure Tfr_ManNF.nota_fiscal_saidaUpdateError(
  DataSet: TDataSet; E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
	Exception_Update(DataSet, E, UpdateKind, UpdateAction);
end;

procedure Tfr_ManNF.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
   if (nota_fiscal_saida_produto.State in [dsEdit, dsInsert]) then
   begin
      if (edtcod_produto.Focused) then
      begin
         if Pesquisar('produto') then
            if AbrirPesquisa then
               nota_fiscal_saida_produtocod_produto.AsString  := Trim(dmConnection.qryPesquisa.FieldByName('campo1').AsString);
      end;
   end else fr_FmNavigator1.acClose.Execute;
end;

procedure Tfr_ManNF.nota_fiscal_saida_produtoBeforeOpen(
  DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := True;
	if not TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).Prepare;
   qryProduto.Active  := False;
   qryProduto.ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
   qryProduto.Active  := True;
end;

procedure Tfr_ManNF.Last_NF(Cod_Cliente: tpCod_Cliente);
begin
end;

procedure Tfr_ManNF.nota_fiscal_saida_produtocod_produtoValidate(
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
       Sender.DataSet.Close;
       Abort;
    finally
       MessageDlg('Produto inativo', mtError, [mbCancel], 0);
    end else
    if qryProdutoies_situacao.AsString = ctSit_Cancelado then
    try
       Sender.DataSet.Close;
       Abort;
    finally
       MessageDlg('Produto cancelado', mtError, [mbCancel], 0);
    end;
	finally
  	qryProduto.EnableControls;
  end;
end;


procedure Tfr_ManNF.nota_fiscal_saidacod_transportadoraValidate(
  Sender: TField);
begin
	try
 	  qryTransportadora.DisableControls;
    qryTransportadora.First;
    if not qryTransportadora.Locate(qryTransportadoracod_transportadora.DisplayName, Sender.AsInteger, []) then
    try
    	Abort;
    finally                                       
    	MessageDlg('Transportadora inexistente', mtError, [mbCancel], 0);
    end else
    if qryTransportadoraies_situacao.AsString = ctSit_Inativo then
    try
       Sender.DataSet.Close;
       Abort;
    finally
       MessageDlg('Transportadora inativa', mtError, [mbCancel], 0);
    end else
    if qryTransportadoraies_situacao.AsString = ctSit_Cancelado then
    try
       Sender.DataSet.Close;
       Abort;
    finally
       MessageDlg('Transportadora cancelada', mtError, [mbCancel], 0);
    end;
	finally
  	qryTransportadora.EnableControls;
  end;
end;

procedure Tfr_ManNF.nota_fiscal_saidaNewRecord(DataSet: TDataSet);
begin
  dmCOM.parametro_comercial.Close;
  dmCOM.parametro_comercial.ParamByName('cod_empresa').Value := vgCod_Empresa;
  dmCOM.parametro_comercial.Open;

  nota_fiscal_saidacod_empresa.AsInteger			  := vgCod_Empresa;
  nota_fiscal_saidacod_vendedor.AsInteger		  := dmCOM.parametro_comercialcod_vendedor.AsInteger;
  nota_fiscal_saidacod_moeda.AsInteger			  := fornecedorcod_moeda.AsInteger;
  nota_fiscal_saidacod_transportadora.AsInteger  := dmCOM.parametro_comercialcod_transportadora.AsInteger;
  nota_fiscal_saidaies_situacao.AsString			  := 'N';
  nota_fiscal_saidaies_tip_frete.AsInteger		  := 1;
  nota_fiscal_saidavlr_frete.AsCurrency			  := 0.000;
  nota_fiscal_saidadat_cadastro.AsDateTime		  := Buscar_DateTime;
  nota_fiscal_saidaserie.AsString                := dmCOM.parametro_comercialserie_nf.AsString;
  nota_fiscal_saidacod_tip_embarque.AsInteger    := dmCOM.parametro_comercialcod_tip_embarque.AsInteger;
  nota_fiscal_saidadat_bl.Clear;
  nota_fiscal_saidaies_material_pack.Value       := '1';
end;

procedure Tfr_ManNF.nota_fiscal_saidaBeforePost(
  DataSet: TDataSet);
begin
  { se estiver inserindo, gera um novo número de fatura }
	if DataSet.State = dsInsert then
  	   nota_fiscal_saidanum_nota_fiscal.AsInteger	:= InsertCode;
  { informada Data de Embarque, excluir a fatura em prod list }
  {  não informada Incluir a Fatura na Prod List              }
  if (flagDatEmbarque) then
  begin
    if nota_fiscal_saidadat_embarque.IsNull  then AddFaturaProdList
                                             else ExcluirFaturaProdList;
    flagDatEmbarque := False;
  end;

end;

procedure Tfr_ManNF.ExcluirFaturaProdList;
begin
  with spr_excfat_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ExecProc;
    try
    Transaction.CommitRetaining;
    except
    Transaction.RollbackRetaining;
    end;                                                                             
  end;
end;                                                                           

procedure Tfr_ManNF.AddFaturaProdList;
begin
  with spr_fatura_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;            
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ExecProc;
    try
    Transaction.CommitRetaining;
    except
    Transaction.RollbackRetaining;
    end;
  end;
end;


procedure Tfr_ManNF.AlterarNumFaturaProdList;
begin
  with spr_altfat_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ParamByName('num_fatura').AsString := trim(nf_saida_complementonum_fatura.AsString);
    ExecProc;
    try
    Transaction.CommitRetaining;
    except
    Transaction.RollbackRetaining;
    end;
  end;
end;

procedure Tfr_ManNF.FormCreate(Sender: TObject);
begin                                                                 
   pgcNF.ActivePage := tbsNF;
   pgConfDescAdic.ActivePage := tsBl;
   DocGerado := '';

   // Formatação de Volumes na tela.
   nf_saida_complementovol_total.DisplayFormat := VolumeNumberFormat_fmt;
   nf_saida_complementovol_geral.DisplayFormat := VolumeNumberFormat_fmt;
   nf_saida_complementovol_pallets.DisplayFormat := VolumeNumberFormat_fmt;
   nota_fiscal_saida_produtovol_caixas.DisplayFormat := VolumeNumberFormat_fmt;

   flagEmissao := False;
   flagDatEmbarque := False;
end;

procedure Tfr_ManNF.nota_fiscal_saida_produtoBeforeInsert(
  DataSet: TDataSet);
begin
  nota_fiscal_saida_produtocod_produto.FocusControl;
end;


procedure Tfr_ManNF.nota_fiscal_saidaBeforeDelete(                  
  DataSet: TDataSet);
begin
  if DataSet = nota_fiscal_saida then
  begin
    Screen.Cursor := crHourGlass;

    { Retorna a Fatura à ProdList }
    AddFaturaProdList;

    { Estornar Saldos dos Produtos em Romaneio e Pedidos  }
    with spr_ordem_itemped do
    begin
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
      ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
      ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;                                        
    end;
    end;
    { excluir produtos da Fatura }
    with Del_nf_produtos do
    begin
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
      ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
      ExecSQL;
    end;

    nota_fiscal_saida_produto.Refresh;
    { Excluir Adicionais/Descontos }
    nf_adic_desc.First;
    while Not(nf_adic_desc.Eof) do
      nf_adic_desc.Delete;
    { Excluir nf_confirmacoes }
    nf_confirmacoes.First;
    while Not(nf_confirmacoes.Eof) do
      nf_confirmacoes.Delete;

    AtualizarTotaisNF(DataSet.FieldByName('num_nota_fiscal').AsInteger, DataSet.FieldByName('serie').AsString);

    nf_container.First;
    while Not(nf_container.Eof) do
      nf_container.Delete;

    with emb_especial_fat do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
      ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
      Open;
    end;

    emb_especial_fat.First;
    while Not(emb_especial_fat.Eof) do
      emb_especial_fat.Delete;
  end;

  if Not(nf_saida_complemento.IsEmpty) then
    nf_saida_complemento.Delete;

  nota_fiscal_saidacod_cliente.FocusControl;
    Screen.Cursor := crDefault;
end;

procedure Tfr_ManNF.nota_fiscal_saidaBeforeInsert(
  DataSet: TDataSet);
begin
   nota_fiscal_saidacod_cliente.FocusControl;
end;

procedure Tfr_ManNF.act_F5Execute(Sender: TObject);
begin
   pgcNF.ActivePage := tbsNF;
end;

procedure Tfr_ManNF.act_F6Execute(Sender: TObject);
begin
   pgcNF.ActivePage := tbsNF_Produto;
end;

procedure Tfr_ManNF.nota_fiscal_saida_produtoAfterPost(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;                          
   finally
      Transaction.CommitRetaining;
      Refresh;
      AtualizarTotaisNF(nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString);
      nota_fiscal_saida.Refresh;
      nf_saida_complemento.Refresh;
   end;
end;

procedure Tfr_ManNF.FormShow(Sender: TObject);
begin
	set_Value;
end;

procedure Tfr_ManNF.set_Value;
begin
  with dmCOM.parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    Open;
  end;

  with portos_embarque do
  begin
    Open;
    Last;
    First;
  end;
  with portos_desembarque do
  begin
    Open;
    Last;
    First;
  end;
end;

procedure Tfr_ManNF.nf_saida_complementoBeforeOpen(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := True;
	if not TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).Prepare;

end;

procedure Tfr_ManNF.nf_saida_complementoAfterCancel(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      CancelUpdates;
   finally
      Transaction.RollbackRetaining;
   end;
end;

procedure Tfr_ManNF.nf_saida_complementoAfterClose(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := False;
	if TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).UnPrepare;

end;

procedure Tfr_ManNF.nf_saida_complementoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      nota_fiscal_saida.Refresh;
   end;

end;

procedure Tfr_ManNF.nf_saida_complementoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally                                      
      Transaction.CommitRetaining;
      Refresh;
      //nota_fiscal_saida.Refresh;
   end;

end;

procedure Tfr_ManNF.dts_nf_saida_complementoStateChange(Sender: TObject);
begin
  if dts_nf_saida_complemento.State in [dsEdit, dsInsert] then
     nota_fiscal_saida.Edit;

end;

procedure Tfr_ManNF.nf_saida_complementoNewRecord(DataSet: TDataSet);
begin
  nf_saida_complementocod_empresa.AsInteger := nota_fiscal_saidacod_empresa.AsInteger;
  nf_saida_complementonum_nota_fiscal.AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
  nf_saida_complementoserie.AsString := nota_fiscal_saidaserie.AsString;
end;

procedure Tfr_ManNF.actFaturaExecute(Sender: TObject);
begin
  DocGerado := 'CI';
  if (nota_fiscal_saidaies_preco_esp.AsString = 'S') then
  begin
     GerarFatura('A');
     GerarFatura('B');
  end
  else
     GerarFatura('');

  Application.MessageBox('Commercial Invoice Gerada','Informação', MB_OK+MB_ICONINFORMATION);
end;

procedure Tfr_ManNF.GerarFatura(Tipo: String);
Var
  i : Real;
  DIR_PLANILHAS, PATH : String;
  s, s1, s2, s3, ped : String;
  cmd : String;
  Tot: String;
  l, ind : Integer;
  Terms : TStringList;
  bPallets, bCaixas: boolean;  
begin
   (* COMMERCIAL INVOICE *)
   { Gerar a Nota Fiscal (Fatura) em Excel }

   { Obrigatório o preenchimento de Número da Fatura e Referência de Volume }
   if trim(nf_saida_complementonum_fatura.AsString) = '' then
   begin
     Application.MessageBox('Informe o Número da Fatura para gerar os documentos', 'Informação', MB_ICONINFORMATION+MB_OK);
     dbeNumFatura.SetFocus;
     Exit;
   end;
   if trim(nf_saida_complementonum_ref_volume.AsString) = '' then
   begin
     Application.MessageBox('Informe o Número do Lote', 'Informação', MB_ICONINFORMATION+MB_OK);
     dbeNumRefVolume.SetFocus;
     Exit;
   end;

   IdiomaExporter := nota_fiscal_saidaies_idioma.AsString;

   { Informações do Exportador (fornecedor) }
   with Exportador do
   begin
     Close;
     ParamByName('cod_fornecedor').AsInteger :=  nf_saida_complementocod_fornecedor.AsInteger;
     Open;
   end;
   { Informações do Importador (cliente) }
   with Importador do
   begin
     Close;
     ParamByName('cod_cliente').AsString := nota_fiscal_saidacod_cliente.AsString;
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
     Application.MessageBox('Pasta para os documentos não definida nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
     Abort;
   end;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Diretório Principal \ Cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(nota_fiscal_saidacod_cliente.AsString);
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Diretório Principal \ Cliente \ LOTS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\LOTS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   Ped := trim(nf_saida_complementonum_ref_volume.AsString);
   Ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   Ped := StringReplace(ped, '\', '-', [rfReplaceAll]);

   { Diretório Principal \ Cliente \ LOTS \LOT + Nº do Lote }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'LOT ' + Ped;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Nome do Arquivo }
   Ped := trim(nf_saida_complementonum_ref_volume.AsString);
   Ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   Ped := StringReplace(ped, '\', '-', [rfReplaceAll]);
   Ped := 'LOT ' + trim(Ped) + Tipo + ' INVOICE' + FormatDateTime(' - DD.MM.YY', DataHoraServidor );
   FileName := DIR_PLANILHAS + '\' + trim(Ped) + '.xls';

   { Se planilha já existe, excluir a mesma }
   if FileExists(Filename) then begin
      DeleteFile(FileName);
   end;

   { salvar nome do arquivo gerado }
   nota_fiscal_saida.Edit;
   nota_fiscal_saidadat_arquivo.Value := DataHoraServidor;
   nota_fiscal_saida.Post;

   { inicializar progress bar }
   Rect := panGauge.ClientRect;
   InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
   Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
   btnComercialInvoice.Enabled := False;
   Application.ProcessMessages;

   { Salvar uma planilha em branco e abrir }
   dmCOM.parametro_comercialmod_plan_excel.SaveToFile(FileName);
   AbrirExcel(FileName);

   { PÁGINA DE SPECIFICATION }
   ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
   ExcelWorksheet.Activate(lcid);
   ExcelWorkSheet.Name := 'Specifications';

   { cabeçalho }
   Linha := 1; // variável p/ referencia de linha no Excel

   CommercialInvoiceHeader(Tipo);

   CommercialInvoiceItens(Tipo);

   { Congelar Painéis }
   ExcelWorkSheet.Range['G'+IntToStr(linhaIni_Dados), 'G'+IntToStr(linhaIni_Dados)].Select;
   ExcelApplication.ActiveWindow.FreezePanes := True;

   if (cbImages.Checked) then ExcelWorkSheet.Range['F1','F1'].EntireColumn.Hidden := False
                         else ExcelWorkSheet.Range['F1','F1'].EntireColumn.Hidden := True;


   { Zerar Totais para Transportar }
   LinhaAux := Linha;

   { Totais }
   { TOTAL FOB }
   Linha := Linha + 1;
   ExcelWorkSheet.Cells.Item[Linha, 05].Value2 := 'TOTAL ' + nf_saida_complementolkcCondicaoVenda.AsString + ' US$';
   ExcelWorkSheet.Cells.Item[Linha, 05].Font.Bold := True;
   ExcelWorkSheet.Cells.Item[Linha, 05].Font.Name := 'Arial';
   ExcelWorkSheet.Cells.Item[Linha, 05].Font.Size := 9;
   ExcelWorkSheet.Range['E'+IntToStr(Linha),'K'+IntToStr(Linha)].MergeCells := True;

   ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';
   ExcelWorkSheet.Cells.Item[Linha, 12].Formula := '=ROUND(SUM(L' + IntToStr(LinhaIni_Dados) + ':L'+IntTostr(LinhaAux-1)+'),2)';
   ExcelWorkSheet.Cells.Item[Linha, 12].Font.Bold := True;
   ExcelWorkSheet.Cells.Item[Linha, 12].Font.Name := 'Arial';
   ExcelWorkSheet.Cells.Item[Linha, 12].Font.Size := 9;

   { CUSTO ADICIONAL }

   { ADICIONAIS }
   with qryAdicDesc do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select * from "nf_adic_desc" a                                       ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa                                ');
     SQL.Add('   and a."num_nota_fiscal" = :"num_nota_fiscal"                      ');
     SQL.Add('   and a."serie" = :serie                                            ');
     SQL.Add('   and a."ies_tipo" = :ies_tipo                                      ');
     if (Tipo = 'A') or (Tipo = '') then
        SQL.Add('   and a."vlr_adic_desc" > 0                                         ')
     else
        SQL.Add('   and a."vlr_adic_desc_esp" > 0                                  ');
     SQL.Add('union all                                                            ');
     SQL.Add('select * from "nf_adic_desc" a                                       ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa                                ');
     SQL.Add('   and a."num_nota_fiscal" = :"num_nota_fiscal"                      ');
     SQL.Add('   and a."serie" = :serie                                            ');
     SQL.Add('   and a."ies_tipo" = :ies_tipo                                      ');
     SQL.Add('   and ((a."vlr_adic_desc" = 0 or a."vlr_adic_desc" is null)         ');
     SQL.Add('   and (a."vlr_adic_desc_esp" = 0 or a."vlr_adic_desc_esp" is null)) ');
     SQL.Add('order by 4                                                           ');

     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
     ParamByName('ies_tipo').AsString := 'A';
     Open;
     if Not(IsEmpty) then
     begin
       Tot := '=L'+IntToStr(Linha);
       while Not(EOF) do
       begin
         Linha := Linha + 1;
         ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';

         if (Tipo = 'A') or (Tipo = '') then
         begin
            if (qryAdicDescvlr_adic_desc.AsFloat > 0) then
               ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1  := qryAdicDescvlr_adic_desc.AsFloat
            else
               ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1  := '';
         end
         else
         begin
            if (qryAdicDescvlr_adic_desc_esp.AsFloat > 0) then
               ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1  := qryAdicDescvlr_adic_desc_esp.AsFloat
            else
               ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1  := '';
         end;

         ExcelWorkSheet.Cells.Item[Linha, 12].VerticalAlignment := xlCenter;
         s := StringReplace(trim(qryAdicDesctxt_descricao.AsString), #13#10, ' ', [rfReplaceAll]);
         i := (length(s) / 95);
         i := i + 1;
         with ExcelWorkSheet.Range['E'+IntToStr(Linha),'J'+IntToStr(Linha)] do
         begin
           Value2 := s;
           MergeCells := True;
           Font.Name := 'Arial';
           Font.Size := 9;
           Font.Bold := True;
           Interior.ColorIndex := 0;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           WrapText := True;
           ShrinkToFit := False;
           Rows.RowHeight := 12 * i;
         end;
         Tot := Tot + '+L'+IntToStr(Linha);
         Next;
       end;
     end;
   end;
   { DESCONTOS }
   with qryAdicDesc do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select * from "nf_adic_desc" a                                       ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa                                ');
     SQL.Add('   and a."num_nota_fiscal" = :"num_nota_fiscal"                      ');
     SQL.Add('   and a."serie" = :serie                                            ');
     SQL.Add('   and a."ies_tipo" = :ies_tipo                                      ');
     if (Tipo = 'A') or (Tipo = '') then
        SQL.Add('   and a."vlr_adic_desc" > 0                                         ')
     else
        SQL.Add('   and a."vlr_adic_desc_esp" > 0                                  ');
     SQL.Add('union all                                                            ');
     SQL.Add('select * from "nf_adic_desc" a                                       ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa                                ');
     SQL.Add('   and a."num_nota_fiscal" = :"num_nota_fiscal"                      ');
     SQL.Add('   and a."serie" = :serie                                            ');
     SQL.Add('   and a."ies_tipo" = :ies_tipo                                      ');
     SQL.Add('   and ((a."vlr_adic_desc" = 0 or a."vlr_adic_desc" is null)         ');
     SQL.Add('   and (a."vlr_adic_desc_esp" = 0 or a."vlr_adic_desc_esp" is null)) ');
     SQL.Add('order by 4                                                           ');

     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
     ParamByName('ies_tipo').AsString := 'D';
     Open;
     if Not(IsEmpty) then
     begin
       if (Tot = '') then Tot := '=L'+IntToStr(Linha);
       while Not(EOF) do
       begin
         Linha := Linha + 1;
         ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';

         if (Tipo = 'A') or (Tipo = '') then
         begin
            if (qryAdicDescvlr_adic_desc.AsFloat > 0) then
               ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1  := qryAdicDescvlr_adic_desc.AsFloat
            else
               ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1  := '';
         end
         else
         begin
            if (qryAdicDescvlr_adic_desc_esp.AsFloat > 0) then
               ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1  := qryAdicDescvlr_adic_desc_esp.AsFloat
            else
               ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1  := '';
         end;

         ExcelWorkSheet.Cells.Item[Linha, 12].VerticalAlignment := xlCenter;
         s := StringReplace(trim(qryAdicDesctxt_descricao.AsString), #13#10, ' ', [rfReplaceAll]);
         i := (length(s) / 95);
         i := i + 1;
         with ExcelWorkSheet.Range['E'+IntToStr(Linha),'J'+IntToStr(Linha)] do
         begin
           Value2 := s;
           MergeCells := True;
           Font.Name := 'Arial';
           Font.Size := 9;
           Font.Bold := True;
           Interior.ColorIndex := 0;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           WrapText := True;
           ShrinkToFit := False;
           Rows.RowHeight := 12 * i;
         end;
         Tot := Tot + '+L'+IntToStr(Linha);
         Next;
       end;
     end;
   end;

   { FINAL VALUE OF C/I }
   if (Tot <> '') then
   begin
     Linha := Linha + 1;

     if (IdiomaExporter = 'I') then s := 'FINAL VALUE OF THIS C/I'
     else if (IdiomaExporter = 'P') then s := 'VALOR FINAL DA FATURA'
     else if (IdiomaExporter = 'E') then s := 'VALOR FINAL DE LA FACTURA';

     ExcelWorkSheet.Cells.Item[Linha, 05].Value2 := s;
     ExcelWorkSheet.Cells.Item[Linha, 05].Font.Bold := True;
     ExcelWorkSheet.Cells.Item[Linha, 05].Font.Name := 'Arial';
          ExcelWorkSheet.Cells.Item[Linha, 05].Font.Size := 9;
     ExcelWorkSheet.Range['E'+IntToStr(Linha),'K'+IntToStr(Linha)].MergeCells := True;

     ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';
     if (Tipo = 'A') or (Tipo = '') then
        ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1 := nota_fiscal_saidavlr_liquido.AsFloat
     else
        ExcelWorkSheet.Cells.Item[Linha, 12].FormulaR1C1 := nota_fiscal_saidavlr_liquido_esp.AsFloat;

     ExcelWorkSheet.Cells.Item[Linha, 12].Font.Name := 'Arial';
     ExcelWorkSheet.Cells.Item[Linha, 12].Font.Size := 9;
   end;

   with ExcelWorksheet.Range['E' + IntToStr(LinhaAux+1),'L' + IntToStr(Linha)] do
   begin
     with Borders[xlEdgeTop] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
     end;
     with Borders[xlEdgeLeft] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
     end;
     with Borders[xlEdgeRight] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
     end;
     with Borders[xlEdgeBottom] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
     end;
   end;

   { ajustar propriedades para impressão da página de Especificações }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$L$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$'+IntToStr(linhaIni_Dados-1);
     //PrintTitleRows := '$1:$9';
     PrintTitleColumns := '';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := 'Page &P of &N';
     LeftFooter := '';
     CenterFooter := '';
     RightFooter := '';
     LeftMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
     RightMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     TopMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
     BottomMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     HeaderMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
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
     Zoom := 75;
    end;

   { FIM DA PÁGINA DAS ESPECIFICAÇÕES - SPECIFICATIONS PAGE }

   { Criar a página de CONDITIONS antes da página de SPECIFICATION }
   WkBk.Worksheets.Add(WkBk.Worksheets['Specifications'], EmptyParam, 1, EmptyParam, lcid);
   ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
   ExcelWorksheet.Activate(lcid);
   ExcelWorksheet.Name := 'Conditions';

   { Título da página, COMMERCIAL INVOICE NUMBER: }
   { Formatação do título }
   Linha := 1;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'COMMERCIAL INVOICE NUMBER: '
     else if (IdiomaExporter = 'P') then s := 'NÚMERO DA FATURA: '
     else if (IdiomaExporter = 'E') then s := ' NÚMERO DE FACTURA: ';
     MergeCells := True;
     Value2 := s + trim(nf_saida_complementonum_fatura.AsString);
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 12;
     if (Tipo = 'A') or (Tipo = '') then Font.ColorIndex := 0;
     if (Tipo = 'B') then Font.ColorIndex := 5;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
   end;

   { Exporter - Dados do Exportador }
   Inc(Linha);
   Inc(Linha);
   LinhaAux := Linha;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        Value := 'EXPORTER:'
     else if (IdiomaExporter = 'P') then
        Value := 'EXPORTADOR:'
     else if (IdiomaExporter = 'E') then
        Value := 'EXPORTADOR:';

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
   Inc(Linha);
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
   Inc(Linha);
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
   if nota_fiscal_saidacod_fabricante.Value > 0 then
   begin
      Inc(Linha);
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

   Inc(Linha);
   Inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'C'+IntToStr(Linha)] do
   begin
    MergeCells := True;
    if (IdiomaExporter = 'I') then
       FormulaR1C1 := 'VALUE OF THE INVOICE: US$ '
    else if (IdiomaExporter = 'P') then
       FormulaR1C1 := 'VALOR DA FATURA: US$ '
    else if (IdiomaExporter = 'E') then
       FormulaR1C1 := 'VALOR DE FACTURA: US$ ';
    Font.Bold := True;
    Font.Name := 'Arial';
    Font.Size := 10;
    Interior.ColorIndex := 0;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
    Characters[22,40].Font.Bold := False;
    Borders.LineStyle := xlContinuous;
    Borders[xlEdgeRight].LineStyle := xlNone;
   end;
   with ExcelWorksheet.Range['D'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
    MergeCells := True;
     if (Tipo = 'A') or (Tipo = '') then
        Value2 := nota_fiscal_saidavlr_liquido.AsFloat
     else
        Value2 := nota_fiscal_saidavlr_liquido_esp.AsFloat;
    NumberFormat := '###.###.##0,00';
    Font.Bold := False;
    Font.Name := 'Arial';
    Font.Size := 10;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    Borders[xlEdgeRight].LineStyle := xlContinuous;
    Borders[xlEdgeLeft].LineStyle := xlNone;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'H'+IntToStr(Linha)] do
   begin
    MergeCells := True;
    FormulaR1C1 := nf_saida_complementolkcCondicaoVenda.AsString;
    Font.Bold := False;
    Font.Name := 'Arial';
    Font.Size := 10;
    Interior.ColorIndex := 0;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
    Borders.LineStyle := xlContinuous;
   end;
   with ExcelWorksheet.Range['I'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then s := 'DATE: '
     else if (IdiomaExporter = 'P') then s := 'DATA: '
     else if (IdiomaExporter = 'E') then s := 'FECHA:';
     FormulaR1C1 := s + FormatDateTime('DD/MM/YYYY', nota_fiscal_saidadat_emissao.AsDateTime);
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
   { TERMS OF PAYMENT - Faturamento respectivo aos Pedidos }
   Terms := TStringList.Create;
   if (IdiomaExporter = 'I') then
      Terms.Add('TERMS OF PAYMENT:')
   else if (IdiomaExporter = 'P') then
      Terms.Add('TERMOS DE PAGAMENTO:')
   else if (IdiomaExporter = 'E') then
      Terms.Add('CONDICIONES DE PAGO:');

   { Números das Confirmações de Pedidos e Data de Liberação }
   vlrAux := 0.0;  // acumular os pendentes de pagamento
   with nf_Confirmacoes do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := nota_fiscal_saidacod_empresa.AsInteger;
     ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
     Open;
     DisableControls;
     s := '';
     First;
     while Not(Eof) do
     begin
        if (Tipo = 'A') or (Tipo = '') then
        begin
           Terms.Add(TermosPagamento);
           PendentePgtoReal;
        end
        else
        begin
           Terms.Add(TermosPagamentoEspecial);
           PendentePgtoEsp;
        end;
        Next;
     end;
     EnableControls;
   end;
   Inc(Linha); { linha inicial das condições de pagamento }
   Inc(Linha);
   LinhaAux := Linha;

   for ind := 0 to Terms.Count - 1 do
   begin
     with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       MergeCells := True;
       FormulaR1C1 := Terms[ind];
       Font.Name := 'Arial';
       if (ind = 0) then
       begin
         Font.Bold := True;
         Font.Size := 10;
         HorizontalAlignment := xlCenter;
       end
       else
       begin
         i := (Length(Terms[ind]) / 108);
         i := i + 1;
         Rows.RowHeight := 14.25 * Int(i);
         Font.Bold := False;
         Font.Size := 08;
         HorizontalAlignment := xlLeft;
       end;
       Font.Strikethrough := False;
       Font.Superscript := False;
       Font.Subscript := False;
       Font.OutlineFont := False;
       Font.Shadow := False;
       Font.Underline := xlUnderlineStyleNone;
       Font.ColorIndex := xlAutomatic;
       Interior.ColorIndex := 0;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Inc(Linha);
   end;
   FreeAndNil(Terms);
   Dec(Linha);
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   if (nf_confirmacoes.RecordCount > 1) and (vlrAux > 0) then
   begin
      Linha := Linha + 1;
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
        MergeCells := True;
        Value2 := 'VALUE PENDING OF PAYMENT IN THIS INVOICE ' + FormatFloat('US$ ###,##0.00', vlrAux);
        Font.Name := 'Arial';
        Font.Size := 10;
        Font.Bold := True;
        Font.Color := clRed;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
      end;
   end;

   Linha := Linha + 1;
   LinhaAux := Linha;

   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        Value2 := 'WE CONFIRM THAT WE HAVE SHIPPED THE PRODUCTS MENTIONED BELOW:'
     else if (IdiomaExporter = 'P') then
        Value2 := 'CONFIRMAMOS QUE EMBARCAMOS OS PRODUTOS MENCIONADOS ABAIXO:'
     else if (IdiomaExporter = 'E') then
        Value2 := 'CONFIRMAMOS QUE EMBARCAMOS LOS PRODUCTOS MENCIONADOS ABAJO:';
     Font.Name := 'Arial';
     Font.Size := 11;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Linha := Linha + 1;
   { TIPOS DE PRODUTOS + NCM }
   tncm := TStringList.Create;
   dmCOM.TipoNcmFatura(nota_fiscal_saidacod_empresa.AsInteger, nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString, tncm, (Clientesncm_fatura.Value = 'S'), 'F');

   { texto para NCM }
   for ind := 0 to tncm.Count - 1 do
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
       Rows.RowHeight := 12.00 * Int(i);
     end;
     Linha := Linha + 1;
   end;
   FreeAndNil(tncm);
   Linha := Linha - 1;

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
        Weight := xlThin;
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
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   Linha1 := Linha + 2;
   Linha2 := Linha + 3;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
   begin
     MergeCells := True;
      if (IdiomaExporter = 'I') then
         Value2 := 'GOODS CORRESPOND EXACTLY TO THOSE INDICATED IN THE PROFORMA INVOICE(S) NUMBER(S)'
      else if (IdiomaExporter = 'P') then
         Value2 := 'AS MERCADORIAS CORRESPONDEM EXATAMENTE A AQUELAS INDICADAS NAS PROFORMAS INVOICES Nº(S)'
      else if (IdiomaExporter = 'E') then
         Value2 := 'LAS MERCADERÍAS CORRESPONDEN EXACTAMENTE A AQUELLAS INDICADAS EN LAS FACTURAS PROFORMAS Nº(S)';
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 24.75;
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
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
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   { Lista de SALES COMFIRMATION  }
   s3 := '';

   with nf_Confirmacoes do { obtém as Proforma Invoices dos Pedidos }
   begin
     First;
     while Not(EOF) do
     begin
       s3 := s3 + Trim(FieldByName('num_pedido_for').AsString) + ' DD '
             + FormatDateTime('ddmmmyyyy',FieldByName('dat_liberacao').Value);
       Next;
       if Not(EOF) then s3 := s3 + ', ';
     end;
     s3 := s3 + '.';
   end;

   { texto para Proforma Invoice }
   Linha1 := Linha1 + 1;
   i := (length(s3) / 110);
   i := i + 1;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
   begin
     MergeCells := True;
     Value2 := s3;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 12.75 * Int(i);
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlEdgeLeft].LineStyle := xlNone;
    Borders[xlEdgeTop].LineStyle := xlNone;
    Borders[xlEdgeBottom].LineStyle := xlNone;
    Borders[xlEdgeRight].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
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
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   Linha := Linha1 + 1;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha+1)] do
   begin
     MergeCells := True;
      if (IdiomaExporter = 'I') then
          Value2 := 'ATTACHED TO THIS COVER PAGE WE ARE SENDING DETAILED PAGES WITH FULL DESCRIPTION OF ITEMS, '+
                    'QUANTITY SHIPPED OF EACH ITEM AND UNIT PRICE OF EACH ITEM AS WELL AS TOTAL VALUES.'
      else if (IdiomaExporter = 'P') then
          Value2 := 'ANEXO A ESTA PÁGINA, ESTAMOS ENVIANDO DESCRIÇÃO COMPLETA, QUANTIDADE EMBARCADA, PREÇO UNITÁRIO E VALORES TOTAIS DE CADA ITEM.'
      else if (IdiomaExporter = 'E') then
          Value2 := 'ANEXO A ESTA PÁGINA, ESTAMOS ENVIANDO DESCRIPCIÓN COMPLETA, CANTIDAD EMBARCADA, PRECIO UNITARIO Y VALORES TOTALES DE CADA ITEM.';
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlEdgeLeft].LineStyle := xlNone;
    Borders[xlEdgeTop].LineStyle := xlNone;
    Borders[xlEdgeBottom].LineStyle := xlNone;
    Borders[xlEdgeRight].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
   end;


   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha+1)] do
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

   Linha := Linha + 2;
   LinhaAux := Linha;

   { indicar se tem ou não pallets }
   bPallets := nota_fiscal_saidaies_pallets.AsString = 'S';
   { indicar se tem caixas fora dos pallets }
   bCaixas := nf_saida_complementocxs_outpallet.AsInteger > 0;

   { PACKAGES INFORMATION }
   PackagesInformations(nf_saida_complemento, bPallets, bCaixas, false, 'A', 'J');

   { início - CONTAINERS }
   Inc(Linha);
   Inc(Linha);
   s := '';

   with nf_container do
   begin
     First;
     while Not(EOF) do
     begin
      s := s + trim(nf_containerqtd_container.AsString)+'x'+trim(nf_containerlkTipContainer.AsString);
      Next;
      if Not(EOF) then s := s + ', ';
     end;
   end;

   if (IdiomaExporter = 'I') then
      s := 'QUANTITY AND TYPE OF CONTAINER(S): ' + s
   else if (IdiomaExporter = 'P') then
      s := 'QUANTIDADE E TIPO DE CONTAINER(S): ' + s
   else if (IdiomaExporter = 'E') then
      s := 'CANTIDAD Y TIPO DE CONTAINER(S): ' + s;
   i := (length(s) / 58);
   i := i + 1;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
   begin
     FormulaR1C1 := s;
     Characters[1,35].Font.Bold := True;
     Characters[36,length(s)].Font.Bold := False;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Strikethrough := False;
     Font.Superscript := False;
     Font.Subscript := False;
     Font.OutlineFont := False;
     Font.Shadow := False;
     Font.Underline := xlUnderlineStyleNone;
     Font.ColorIndex := xlAutomatic;
     Rows.RowHeight := 12.75 * Int(i);
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

  inc(Linha);

   { início }
   if (IdiomaExporter = 'I') then s := 'LOT NUMBER: '
   else if (IdiomaExporter = 'P') then s := 'NÚMERO DE REFERÊNCIA DO VOLUME: '
   else if (IdiomaExporter = 'E') then s := 'NÚMERO DE REFERENCIA DE VOLUMEN: ';

   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementonum_ref_volume.AsString;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[Length(s)+1,25].Font do
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

   { início }
   if (IdiomaExporter = 'I') then s := 'COUNTRY OF ORIGIN: '
   else if (IdiomaExporter = 'P') then s := 'PAÍS DE ORIGEM: '
   else if (IdiomaExporter = 'E') then s := 'PAÍS DE ORIGEN: ';

   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s + Exportadorpais_origem.AsString;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[Length(s)+1,10].Font do
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
   if (IdiomaExporter = 'I') then s := 'COUNTRY OF ACQUISITION: '
   else if (IdiomaExporter = 'P') then s := 'PAÍS DE AQUISIÇÃO: '
   else if (IdiomaExporter = 'E') then s := 'PAÍS DE ADQUISICIÓN: ';

   ExcelWorkSheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)].FormulaR1C1 := s + Exportadorpais_aquisicao.AsString;
   with ExcelWorksheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)].Characters[Length(s)+1,10].Font do
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
   if (IdiomaExporter = 'I') then s := 'COUNTRY OF PROCEED: '
   else if (IdiomaExporter = 'P') then s := 'PAÍS DE PROCEDÊNCIA: '
   else if (IdiomaExporter = 'E') then s := 'PAÍS DE PROCEDENCIA: ';

   ExcelWorkSheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].FormulaR1C1 := s + Exportadorpais_procedencia.AsString;
   with ExcelWorksheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].Characters[Length(s)+1,10].Font do
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
   if (IdiomaExporter = 'I') then s := 'PORT OF LOADING: '
   else if (IdiomaExporter = 'P') then s := 'PORTO DE EMBARQUE: '
   else if (IdiomaExporter = 'E') then s := 'PUERTO DE CARGA: ';

   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementolkpPortoEmb.AsString;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[Length(s)+1,15].Font do
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
   if (IdiomaExporter = 'I') then s := 'PLACE OF DELIVERY: '
   else if (IdiomaExporter = 'P') then s := 'LOCAL DE ENTREGA: '
   else if (IdiomaExporter = 'E') then s := 'LUGAR DE ENTREGA: ';

   ExcelWorkSheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementolkpPortoDes.AsString;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].Characters[Length(s)+1,15].Font do
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

   { Insurance - alterado em 22.09.14 }
   Inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        FormulaR1C1 := 'INSURANCE TO BE EFFECTED BY: ' + dbcInsurance.Text
     else if (IdiomaExporter = 'P') then
        FormulaR1C1 := 'SEGURO EFETUADO POR        : ' + dbcInsurance.Text
     else if (IdiomaExporter = 'E') then
        FormulaR1C1 := 'SEGURO EFECTUADO POR       : ' + dbcInsurance.Text;

     Name := 'Arial';
     Characters[1,29].Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
   end;

  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
  begin
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
  end;


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
    VerticalAlignment := xlTop;
   end;

   Inc(linha);
   LinhaAux := Linha;
   { INFORMAÇÕES PARA PAGAMENTO }
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        Value2 := 'BANKING INFORMATION FOR THE PAYMENT:'
     else if (IdiomaExporter = 'P') then
        Value2 := 'INFORMAÇÕES BANCÁRIAS PARA PAGAMENTO:'
     else if (IdiomaExporter = 'E') then
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
     if (IdiomaExporter = 'I') then
        Value2 := 'BENEFICIARY´S INFORMATION:'
     else if (IdiomaExporter = 'P') then
        Value2 := 'BENEFICIÁRIO:'
     else if (IdiomaExporter = 'E') then
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

   ExcelWorkSheet.Range['C1','C1'].ColumnWidth := 10.14;

   { ajustar propriedades para impressão da página de condições }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$J$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$15';
     PrintTitleColumns := '';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := '';
     LeftFooter := '';
     LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.78740157480315, GetUserDefaultLCID);
     RightMargin := 0;
     TopMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     BottomMargin := 0;
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

  { FIM DA PÁGINA DAS CONDIÇÕES - CONDITIONS PAGE }


  { Salvar a planilha }
  //ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  ExcelApplication.ActiveWorkbook.Save(lcid);

  Exportador.Close;
  Importador.Close;

  { finalizar progress bar }
  btnComercialInvoice.Enabled := True;
  Ani.Terminate;

  { Fechar planilha e encerrar excel }
  FecharExcel2;
end;

Procedure Tfr_ManNF.FecharExcel;
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

Procedure Tfr_ManNF.AbrirPlanilha(FileName: String);
Var
  Caminho : String;
  lcid : Cardinal;
  WkBk : _Workbook;
begin
  Caminho := FileName;
 try
  lcid := GetUserDefaultLCID;
  ExcelApplication.Visible[lcid] := True;
  ExcelApplication.DisplayAlerts[lcid] := False;
  WkBk := ExcelApplication.Workbooks.Open(Caminho, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam, lcid);

  ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
  ExcelWorksheet.Activate(LCID);
 except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
 end;
end;

procedure Tfr_ManNF.nf_saida_complementoAfterOpen(DataSet: TDataSet);
begin
  DataSet.Last;
end;

procedure Tfr_ManNF.actPackingExecute(Sender: TObject);
begin
   DocGerado := 'PL';
   if (nota_fiscal_saidaies_preco_esp.AsString = 'S') then
   begin
      GerarPackingList('A');
      GerarPackingList('B');
   end
   else
      GerarPackingList('');

   Application.MessageBox('Packing List Gerada','Informação', MB_OK+MB_ICONINFORMATION);
end;


function Tfr_ManNF.SubTotais(bPallets, bCaixas: boolean; Tipo: String; li: integer): integer;
begin
   if ((bPallets = true) and (bCaixas = true)) then
   begin
     if (Tipo = 'C') then
        ExcelWorkSheet.Cells.Item[Linha, 08].Value2 := 'TOTAL PACKING INFORMATION OF THE LOOSE CARTONS';
     if (Tipo = 'P') then
        ExcelWorkSheet.Cells.Item[Linha, 08].Value2 := 'TOTAL PACKING INFORMATION OF THE PALLETS';
   end;

   ExcelWorkSheet.Cells.Item[Linha, 08].HorizontalAlignment := xlLeft;
   ExcelWorkSheet.Cells.Item[Linha, 08].Font.Bold := True;

   ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := VolumeNumberFormat;
   ExcelWorkSheet.Cells.Item[Linha, 12].Formula := '=ROUND(SUM(L'+IntTostr(li)+':L'+IntTostr(Linha-1)+'),' + VolumeDecimaisTotal + ')';
   ExcelWorkSheet.Cells.Item[Linha, 12].HorizontalAlignment := xlCenter;

   ExcelWorkSheet.Cells.Item[Linha, 13].NumberFormat := '#.##0,00';
   ExcelWorkSheet.Cells.Item[Linha, 13].Formula := '=ROUND(SUM(M'+IntTostr(li)+':M'+IntTostr(Linha-1)+'),2)';
   ExcelWorkSheet.Cells.Item[Linha, 13].HorizontalAlignment := xlCenter;

   ExcelWorkSheet.Cells.Item[Linha, 15].NumberFormat := '#.##0,00';
   ExcelWorkSheet.Cells.Item[Linha, 15].Formula := '=ROUND(SUM(O'+IntTostr(li)+':O'+IntTostr(Linha-1)+'),2)';
   ExcelWorkSheet.Cells.Item[Linha, 15].HorizontalAlignment := xlCenter;

   ExcelWorkSheet.Cells.Item[Linha, 16].NumberFormat := '#.##0,00';
   ExcelWorkSheet.Cells.Item[Linha, 16].Formula := '=SUM(P'+IntTostr(li)+':P'+IntTostr(Linha-1)+')';
   ExcelWorkSheet.Cells.Item[Linha, 16].HorizontalAlignment := xlCenter;

   if ((bPallets = true) and (Tipo = 'P')) then
   begin
     ExcelWorkSheet.Cells.Item[Linha, 19].NumberFormat := '#.##0,00';
     ExcelWorkSheet.Cells.Item[Linha, 19].HorizontalAlignment := xlCenter;
     ExcelWorkSheet.Cells.Item[Linha, 19].Formula := '=SUM(S'+IntTostr(li)+':S'+IntTostr(Linha-1)+')';

     ExcelWorkSheet.Cells.Item[Linha, 20].NumberFormat := '#.##0,00';
     ExcelWorkSheet.Cells.Item[Linha, 20].HorizontalAlignment := xlCenter;
     ExcelWorkSheet.Cells.Item[Linha, 20].Formula := '=ROUND(SUM(T'+IntTostr(li)+':T'+IntTostr(Linha-1)+'),2)';

     ExcelWorkSheet.Cells.Item[Linha, 21].NumberFormat := '#.##0,00';
     ExcelWorkSheet.Cells.Item[Linha, 21].HorizontalAlignment := xlCenter;
     ExcelWorkSheet.Cells.Item[Linha, 21].Formula := '=ROUND(SUM(U'+IntTostr(li)+':U'+IntTostr(Linha-1)+'),2)';

     ExcelWorkSheet.Cells.Item[Linha, 22].NumberFormat := VolumeNumberFormat;
     ExcelWorkSheet.Cells.Item[Linha, 22].HorizontalAlignment := xlCenter;     
     ExcelWorkSheet.Cells.Item[Linha, 22].Formula := '=ROUND(SUM(V'+IntTostr(li)+':V'+IntTostr(Linha-1)+'),' + VolumeDecimaisTotal +')';
   end;


   if ((bPallets = true) and (bCaixas = true)) then
   begin
     if (Tipo = 'C') then
     begin
       ExcelWorkSheet.Cells.Item[Linha, 08].Interior.ColorIndex := xlYellow;
       ExcelWorkSheet.Cells.Item[Linha, 12].Interior.ColorIndex := xlYellow;
       ExcelWorkSheet.Cells.Item[Linha, 13].Interior.ColorIndex := xlYellow;
       ExcelWorkSheet.Cells.Item[Linha, 15].Interior.ColorIndex := xlYellow;
       ExcelWorkSheet.Cells.Item[Linha, 16].Interior.ColorIndex := xlYellow;
     end;
     if (Tipo = 'P') then
     begin
       ExcelWorkSheet.Cells.Item[Linha, 08].Interior.ColorIndex := xlBlue;
       ExcelWorkSheet.Cells.Item[Linha, 19].Interior.ColorIndex := xlBlue;
       ExcelWorkSheet.Cells.Item[Linha, 20].Interior.ColorIndex := xlBlue;
       ExcelWorkSheet.Cells.Item[Linha, 21].Interior.ColorIndex := xlBlue;
       ExcelWorkSheet.Cells.Item[Linha, 22].Interior.ColorIndex := xlBlue;
     end;
   end;

   Inc(Linha);
   Inc(Linha);
   Result := Linha;
end;

procedure Tfr_ManNf.PackagesInformations(DataSet: TDataSet; bPallets, bCaixas, bBl: boolean; C1, C2: string);
Var
  s : string;
begin
   { PACKAGES INFORMATION - Packing List Page}
   Inc(Linha);
   LinhaAux := Linha;

   with ExcelWorkSheet.Range[C1+IntToStr(Linha),C2+IntToStr(Linha)] do
   begin
      MergeCells := True;
      Value := 'TOTAL PACKAGES INFORMATION';
      Font.Bold := True;
      Font.Name := 'Arial';
      Font.Size := 10;
      Interior.ColorIndex := 0;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
   end;

   { QUANTITY OF CARTONS }
   Inc(Linha);
   s := '';
   with ExcelWorkSheet.Range[C1+IntToStr(Linha),C2+IntToStr(Linha)] do
   begin
      s := 'QUANTITY OF CARTONS:';
      s := s + FormatFloat('  #,##0', DataSet.FieldByName('qtd_caixas').value);
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

   { TOTAL NET WEIGHT }
   if Not(bBl) then
   begin
      Inc(Linha);
      s := '';
      with ExcelWorksheet.Range[C1+IntToStr(Linha),C2+IntToStr(Linha)] do
      begin
        s := 'TOTAL NET WEIGHT:';
        s := s + FormatFloat('  #,##0.00 Kg', DataSet.FieldByName('pes_liq_geral').AsFloat);
        if (bPallets = true) then
           s := s + ' (OF THE' + FormatFloat('  #,##0', DataSet.FieldByName('qtd_caixas').value) + ' CARTONS)';
        MergeCells := True;
        Value2 := s ;
        Font.Name := 'Arial';
        Font.Bold := True;
        Font.Size := 10;
        HorizontalAlignment := xlLeft;
        Borders[xlEdgeLeft].LineStyle := xlNone;
      end;
   end;

   { TOTAL GROSS WEIGHT }
   Inc(Linha);
   s := '';
   with ExcelWorksheet.Range[C1+IntToStr(Linha),C2+IntToStr(Linha)] do
   begin
     MergeCells := True;
     s := 'TOTAL GROSS WEIGHT:';
     s := s + FormatFloat('  #,##0.00 Kg', DataSet.FieldByName('pes_bru_geral').AsFloat);
     if ((bPallets = true) and (bCaixas = false)) then s := s + ' (OF THE PALLETS)';
     if ((bPallets = true) and (bCaixas = true))  then s := s + ' (CARTONS + PALLETS)';
     Value2 := s ;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     HorizontalAlignment := xlLeft;
     Borders[xlEdgeLeft].LineStyle := xlNone;
   end;

   { TOTAL VOLUME }
   Inc(Linha);
   s := '';
   with ExcelWorksheet.Range[C1+IntToStr(Linha),C2+IntToStr(Linha)] do
   begin
     MergeCells := True;
     s := 'TOTAL VOLUME:';
     s := s +  FormatFloat(VolumeNumberFormatTotal, Arredonda(DataSet.FieldByName('vol_geral').AsFloat, -2, rmUp));
     if ((bPallets = true) and (bCaixas = false)) then s := s + ' (OF THE PALLETS)';
     if ((bPallets = true) and (bCaixas = true))  then s := s + ' (CARTONS + PALLETS)';
     Value2 := s ;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     HorizontalAlignment := xlLeft;
     Borders[xlEdgeLeft].LineStyle := xlNone;
   end;

   { QUANTITY OF CARTONS PACKAGES }
   s := '';
   Inc(Linha);
   with ExcelWorkSheet.Range[C1+IntToStr(Linha),C2+IntToStr(Linha)] do
   begin
      s := 'QUANTITY OF PACKAGES:';
      if (bPallets = false) then  s := s + FormatFloat('  #,##0', DataSet.FieldByName('qtd_caixas').value) + ' CARTONS';
      if ((bPallets = true) and (bCaixas = false)) then
         s := s + FormatFloat('  #,##0', DataSet.FieldByName('qtd_pallets').Value) + ' PALLETS';
      if ((bPallets = true) and (bCaixas = true)) then
      begin
        s := s + ' ' + FormatFloat(' #,##0', DataSet.FieldByName('cxs_outpallet').Value) + ' CARTONS AND ';
        s := s + FormatFloat('  #,##0', DataSet.FieldByName('qtd_pallets').Value) + ' PALLETS';
      end;
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

   { Formatar Totais Gerais }
   with ExcelWorksheet.Range[C1 +IntToStr(LinhaAux),C2 + IntToStr(Linha)] do
   begin
     with Borders[xlEdgeTop] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
     end;
     with Borders[xlEdgeLeft] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
     end;
     with Borders[xlEdgeRight] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
     end;
     with Borders[xlEdgeBottom] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
     end;
     Font.Name := 'Arial';
     Font.Size := 10;
   end;
end;

procedure Tfr_ManNF.GerarPackingList(Tipo: String);
Var
  i : Real;
  DIR_PLANILHAS, PATH : String;
  s, s1, s2, s3, ped : String;
  cmd : String;
  ind, li: Integer;
  tncm : TStringList;
  Terms : TStringList;
  bPallets, bCaixas: boolean;
begin
   (*** PACKING LIST ***)
   { Gerar a Packing List (Lista de empaque) em Excel }

   { Obrigatório o preenchimento de Número da Fatura e Referência de Volume }
   if trim(nf_saida_complementonum_fatura.AsString) = '' then
   begin
     Application.MessageBox('Informe o Número da Fatura para gerar os documentos', 'Informação', MB_ICONINFORMATION+MB_OK);
     dbeNumFatura.SetFocus;
     Exit;
   end;
   if trim(nf_saida_complementonum_ref_volume.AsString) = '' then
   begin
     Application.MessageBox('Informe o Número de Referência do Lote', 'Informação', MB_ICONINFORMATION+MB_OK);
     dbeNumRefVolume.SetFocus;
     Exit;
   end;

   IdiomaExporter := nota_fiscal_saidaies_idioma.AsString;

   { Informações do Exportador (fornecedor) }
   with Exportador do
   begin
     Close;
     ParamByName('cod_fornecedor').AsInteger :=  nf_saida_complementocod_fornecedor.AsInteger;
     Open;
   end;
   { Informações do Importador (cliente) }
   with Importador do
   begin
     Close;
     ParamByName('cod_cliente').AsString := nota_fiscal_saidacod_cliente.AsString;
     Open;
   end;
   { Gerar em uma planilha Excel com o Pedido }
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

   { Diretório Principal \ Cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(nota_fiscal_saidacod_cliente.AsString);
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Diretório Principal \ Cliente \ LOTS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\LOTS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   Ped := trim(nf_saida_complementonum_ref_volume.AsString);
   Ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   Ped := StringReplace(ped, '\', '-', [rfReplaceAll]);

   { Diretório Principal \ Cliente \ LOTS \LOT +  Nº do Lote }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'LOT ' + Ped;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Nome do Arquivo }
   Ped := trim(nf_saida_complementonum_ref_volume.AsString);
   Ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   Ped := StringReplace(ped, '\', '-', [rfReplaceAll]);
   Ped := 'LOT ' + trim(Ped) + Tipo + ' PACKING LIST' + FormatDateTime(' - DD.MM.YY', DataHoraServidor );
   FileName := DIR_PLANILHAS + '\' + trim(Ped) + '.xls';

   { Se planilha já existe, excluir a mesma }
   if FileExists(Filename) then begin
      DeleteFile(FileName);
   end;

   { salvar nome do arquivo gerado }
   nota_fiscal_saida.Edit;
   nota_fiscal_saidadat_arquivo.Value := DataHoraServidor;
   nota_fiscal_saida.Post;

   { inicializar progress bar }
   Rect := panGauge.ClientRect;
   InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
   Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
   btnPackingList.Enabled := False;
   Application.ProcessMessages;

   { Salvar uma planilha em branco e abrir }
   dmCOM.parametro_comercialmod_plan_excel.SaveToFile(FileName);
   AbrirExcel(FileName);

   { PÁGINA DE PACKINGS }
   ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
   ExcelWorksheet.Activate(lcid);
   ExcelWorkSheet.Name := 'Packing';

   { cabeçalho }
   Linha := 1; // variável p/ referencia de linha

   { indicar se tem ou não pallets }
   bPallets := nota_fiscal_saidaies_pallets.AsString = 'S';
   { indicar se tem caixas fora dos pallets }
   bCaixas := nf_saida_complementocxs_outpallet.AsInteger > 0;

   { Cabeçalho comum a todas as Packing List }
   PackingListHeaderCommon(Tipo);
   { Cabeçalho dos Itens da Packing List }
   PackingListHeaderItems(bPallets, bCaixas);

   Seq := 1;

   li := LinhaIni_Dados;

   { Caixas fora dos pallets }
   if (PackingListItens(False)) then
      li := SubTotais(bPallets, bCaixas, 'C', li);

   { Caixas dentro dos pallets }
   if (bPallets = true) then
   begin
      if (bCaixas = true) then li := PackingListHeaderPallets;
      PackingListItens(True);
      SubTotais(bPallets, bCaixas, 'P', li);
   end;

   { Congelar Painéis }
   ExcelWorkSheet.Range['J'+IntToStr(linhaIni_Dados), 'J'+IntToStr(linhaIni_Dados)].Select;
   ExcelApplication.ActiveWindow.FreezePanes := True;

   if (cbImages.Checked) then ExcelWorkSheet.Range['I1','I1'].EntireColumn.Hidden := False
                         else ExcelWorkSheet.Range['I1','I1'].EntireColumn.Hidden := True;

   { Esconder/Mostrar colunas de Pallets  }
   if (nota_fiscal_saidaies_pallets.AsString = 'N') then
      ExcelWorksheet.Range['S1','V1'].EntireColumn.Hidden := True;

   ExcelWorksheet.Range['W1','Z1'].EntireColumn.Hidden := True;

   PackagesInformations(nf_saida_complemento, bPallets, bCaixas, false, 'H', 'H');

   if (nota_fiscal_saidaies_pallets.AsString = 'S') then
   begin
      { ajustar propriedades para impressão da página de Especificações }
      ExcelWorksheet.PageSetup.PrintArea := '$A$1:$V$'+IntToStr(Linha+5);
      with ExcelWorksheet.PageSetup do
      begin
        PrintTitleRows := '$1:$'+IntToStr(linhaIni_Dados-1);
        //PrintTitleRows := '$1:$9';
        PrintTitleColumns := '';
        LeftHeader := '';
        CenterHeader := '';
        RightHeader := 'Page &P of &N';
        LeftFooter := '';
        CenterFooter := '';
        RightFooter := '';
        LeftMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.393700787401575, GetUserDefaultLCID);
        RightMargin := 0;
        TopMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
        BottomMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.393700787401575, GetUserDefaultLCID);
        HeaderMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
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
        Zoom := 55;
      end;
   end else
   begin
      { ajustar propriedades para impressão da página de Especificações }
      ExcelWorksheet.PageSetup.PrintArea := '$A$1:$R$'+IntToStr(Linha+5);
      with ExcelWorksheet.PageSetup do
      begin
        PrintTitleRows := '$1:$'+IntToStr(linhaIni_Dados-1);
        //PrintTitleRows := '$1:$9';
        PrintTitleColumns := '';
        LeftHeader := '';
        CenterHeader := '';
        RightHeader := 'Page &P of &N';
        LeftFooter := '';
        CenterFooter := '';
        RightFooter := '';
        LeftMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.393700787401575, GetUserDefaultLCID);
        RightMargin := 0;
        TopMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
        BottomMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.393700787401575, GetUserDefaultLCID);
        HeaderMargin := ExcelWorksheet.Application.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
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
   end;

   { FIM DA PÁGINA PACKINGS }


   { PÁGINA DAS CONDIÇÕES - CONDITIONS PAGE }

   { Criar a página de Condições antes da página de Packing }
   WkBk.Worksheets.Add(WkBk.Worksheets['Packing'], EmptyParam, 1, EmptyParam, lcid);
   ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
   ExcelWorksheet.Activate(lcid);
   ExcelWorksheet.Name := 'Conditions';

   { Título da página, PACKING LIST }
   { Formatação do título }
   Linha := 1;
   LinhaAux := Linha;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        Value2 := 'PACKING LIST '
     else if (IdiomaExporter = 'P') then
        Value2 := 'ROMANEIO DE CARGA '
     else if (IdiomaExporter = 'E') then
        Value2 := 'LISTA DE EMPAQUE ';

     Font.Name := 'Arial';
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Size := 14;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        Value2 := 'FOR THE INVOICE NUMBER: ' + trim(nf_saida_complementonum_fatura.AsString)
     else if (IdiomaExporter = 'P') then
        Value2 := 'PARA A FATURA NÚMERO: ' + trim(nf_saida_complementonum_fatura.AsString)
     else if (IdiomaExporter = 'E') then
        Value2 := 'PARA LA FACTURA NÚMERO: ' + trim(nf_saida_complementonum_fatura.AsString);

     Font.Name := 'Arial';
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Size := 10;
   end;
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    if (Tipo = 'A') or (Tipo = '') then Font.ColorIndex := 0
                                   else Font.ColorIndex := 5;
   end;
   { EXPORTER - Dados do Exportador }
   Inc(Linha);
   Inc(Linha);
   LinhaAux := Linha;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        Value := 'EXPORTER:'
     else if (IdiomaExporter = 'P') then
        Value := 'EXPORTADOR:'
     else if (IdiomaExporter = 'E') then
        Value := 'EXPORTADOR:';

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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
    Font.Name := 'Arial';
    Font.Size := 10;
   end;
   { fim EXPORTER }

   { IMPORTER - Dados do Importador }
   Inc(Linha);
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
   if nota_fiscal_saidacod_fabricante.Value > 0 then
   begin
      Inc(Linha);
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

   Inc(Linha);
   Inc(Linha);
   LinhaAux := Linha;

   if (IdiomaExporter = 'I') then s := 'VALUE OF THE INVOICE: US$ '
   else if (IdiomaExporter = 'P') then s := 'VALOR DA FATURA: US$ '
   else if (IdiomaExporter = 'E') then s := 'VALOR DE FACTURA: US$ ';

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
    MergeCells := True;
    if (Tipo = 'A') or (Tipo = '') then s1 := s + FormatFloat('##,###,##0.00', nota_fiscal_saida.FieldByName('vlr_liquido').AsFloat)
                                   else s1 := s + FormatFloat('##,###,##0.00', nota_fiscal_saida.FieldByName('vlr_liquido_esp').AsFloat);
    FormulaR1C1 := s1;
    Font.Bold := True;
    Characters[Length(s)+1,40].Font.Bold := False;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'H'+IntToStr(Linha)] do
   begin
    MergeCells := True;
    FormulaR1C1 := nf_saida_complementolkcCondicaoVenda.AsString;
    Font.Bold := False;
    Interior.ColorIndex := 0;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
    Borders.LineStyle := xlContinuous;
   end;
   with ExcelWorksheet.Range['I'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     { data de emissão da fatura }
     if (IdiomaExporter = 'I') then s := 'DATE: '
     else if (IdiomaExporter = 'P') then s := 'DATA: '
     else if (IdiomaExporter = 'E') then s := 'FECHA: ';
     MergeCells := True;     
     FormulaR1C1 := s + FormatDateTime('DD/MM/YYYY', nota_fiscal_saidadat_emissao.AsDateTime);
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
     Borders.LineStyle := xlContinuous;
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
    VerticalAlignment := xlTop;
    Font.Name := 'Arial';
    Font.Size := 10;
   end;
   { TERMS OF PAYMENT - Faturamento respectivo aos Pedidos }
   Terms := TStringList.Create;
   if (IdiomaExporter = 'I') then
      Terms.Add('TERMS OF PAYMENT:')
   else if (IdiomaExporter = 'P') then
      Terms.Add('TERMOS DE PAGAMENTO:')
   else if (IdiomaExporter = 'E') then
      Terms.Add('CONDICIONES DE PAGO:');

   { Números das Confirmações de Pedidos e Data de Liberação }
   vlrAux := 0.00; // acumular os pendentes de pagamento
   with nf_Confirmacoes do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := nota_fiscal_saidacod_empresa.AsInteger;
     ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
     Open;
     DisableControls;
     s := '';
     First;
     while Not(Eof) do
     begin
        if (Tipo = 'A') or (Tipo = '') then
        begin
           Terms.Add(TermosPagamento);
           PendentePgtoReal;
        end
        else
        begin
           Terms.Add(TermosPagamentoEspecial);
           PendentePgtoEsp;
        end;
        Next;
     end;
     EnableControls;
   end;                                                            
   Inc(Linha);
   Inc(Linha);
   LinhaAux := Linha;
   for ind := 0 to Terms.Count - 1 do
   begin
     with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       MergeCells := True;
       FormulaR1C1 := Terms[ind];
       Font.Name := 'Arial';
       if (ind = 0) then
       begin
         Font.Bold := True;
         Font.Size := 10;
         HorizontalAlignment := xlCenter;
       end
       else
       begin
         i := (Length(Terms[ind]) / 108);
         i := i + 1;
         Rows.RowHeight := 14.25 * Int(i);
         Font.Bold := False;
         Font.Size := 08;
         HorizontalAlignment := xlLeft;
       end;
       Font.Strikethrough := False;
       Font.Superscript := False;
       Font.Subscript := False;
       Font.OutlineFont := False;
       Font.Shadow := False;
       Font.Underline := xlUnderlineStyleNone;
       Font.ColorIndex := xlAutomatic;
       Interior.ColorIndex := 0;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
     end;
     Linha := Linha + 1;
   end;
   FreeAndNil(Terms);
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
    VerticalAlignment := xlTop;
   end;

   if (nf_confirmacoes.RecordCount > 1) and (vlrAux > 0) then
   begin
      Linha := Linha + 1;
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
        MergeCells := True;
        Value2 := 'VALUE PENDING OF PAYMENT IN THIS INVOICE ' + FormatFloat('US$ ###,##0.00', vlrAux);
        Font.Name := 'Arial';
        Font.Size := 10;
        Font.Bold := True;
        Font.Color := clRed;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
      end;
   end;

   Linha := Linha + 1;
   LinhaAux := Linha;
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        Value2 := 'WE CONFIRM THAT WE HAVE SHIPPED THE PRODUCTS MENTIONED BELOW:'
     else if (IdiomaExporter = 'P') then
        Value2 := 'CONFIRMAMOS QUE EMBARCAMOS OS PRODUTOS MENCIONADOS ABAIXO:'
     else if (IdiomaExporter = 'E') then
        Value2 := 'CONFIRMAMOS QUE EMBARCAMOS LOS PRODUCTOS MENCIONADOS ABAJO:';

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

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
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
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   Linha := Linha + 1;
   { TIPOS DE PRODUTOS + NCM }
   tncm := TStringList.Create;
   dmCOM.TipoNcmFatura(nota_fiscal_saidacod_empresa.AsInteger, nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString, tncm, (Clientesncm_pack_list.Value = 'S'), 'L');

   { texto para NCM }
   for ind := 0 to tncm.Count - 1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       MergeCells := True;
       s := tncm[ind];
       i := (length(s) / 105);
       i := i + 1;
       Value2 := s;
       Font.Name := 'Arial';
       Font.Size := 8;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       RowHeight := 12.00 * Int(i);
     end;
     Linha := Linha + 1;
   end;
   FreeAndNil(tncm);
   Linha := Linha - 1;

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
        Weight := xlThin;
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

   Linha1 := Linha + 2;
   Linha2 := Linha + 3;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
   begin
      MergeCells := True;
      if (IdiomaExporter = 'I') then
         Value2 := 'GOODS CORRESPOND EXACTLY TO THOSE INDICATED IN THE PROFORMA INVOICE(S) NUMBER(S):'
      else if (IdiomaExporter = 'P') then
         Value2 := 'AS MERCADORIAS CORRESPONDEM EXATAMENTE A AQUELAS INDICADAS NAS PROFORMAS INVOICES Nº(S):'
      else if (IdiomaExporter = 'E') then
         Value2 := 'LAS MERCADERÍAS CORRESPONDEN EXACTAMENTE A AQUELLAS INDICADAS EN LAS FACTURAS PROFORMAS Nº(S):';

     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 9;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 24.75;
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
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
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   { Lista de SALES COMFIRMATION  }
   s3 := '';

   with nf_Confirmacoes do { obtém as Proforma Invoices dos Pedidos }
   begin
     First;
     while Not(EOF) do
     begin
       s3 := s3 + Trim(FieldByName('num_pedido_for').AsString) + ' DD '
             + FormatDateTime('ddmmmyyyy',FieldByName('dat_liberacao').Value);
       Next;
       if Not(EOF) then s3 := s3 + ', ';
     end;
     s3 := s3 + '.';
   end;

   { texto para Proforma Invoice }
   Linha1 := Linha1 + 1;
   i := (length(s3) / 110);
   i := i + 1;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
   begin
     MergeCells := True;
     Value2 := s3;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 12.75 * Int(i);
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha1),'J'+IntToStr(Linha1)] do
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
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   Linha := Linha1 + 1;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha+1)] do
   begin
      MergeCells := True;
      if (IdiomaExporter = 'I') then
          Value2 := 'ATTACHED TO THIS COVER PAGE WE ARE SENDING DETAILED PAGES WITH FULL DESCRIPTION OF ITEMS, '+
                    'QUANTITY SHIPPED OF EACH ITEM AND UNIT PRICE OF EACH ITEM AS WELL AS TOTAL VALUES.'
      else if (IdiomaExporter = 'P') then
          Value2 := 'ANEXO A ESTA PÁGINA, ESTAMOS ENVIANDO DESCRIÇÃO COMPLETA, QUANTIDADE EMBARCADA, PREÇO UNITÁRIO E VALORES TOTAIS DE CADA ITEM.'
      else if (IdiomaExporter = 'E') then
          Value2 := 'ANEXO A ESTA PÁGINA, ESTAMOS ENVIANDO DESCRIPCIÓN COMPLETA, CANTIDAD EMBARCADA, PRECIO UNITARIO Y VALORES TOTALES DE CADA ITEM.';

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

   Linha := Linha + 2;
   LinhaAux := Linha;

   { PACKAGES INFORMATION }
   PackagesInformations(nf_saida_complemento, bPallets, bCaixas, false, 'A', 'J');
   { início - CONTAINERS }
   Inc(Linha);
   Inc(Linha);
   s := '';

   with nf_container do
   begin
     First;
     while Not(EOF) do
     begin
      s := s + trim(nf_containerqtd_container.AsString)+'x'+trim(nf_containerlkTipContainer.AsString);
      Next;
      if Not(EOF) then s := s + ', ';
     end;
   end;

   if (IdiomaExporter = 'I') then
      s := 'QUANTITY AND TYPE OF CONTAINER(S): ' + s
   else if (IdiomaExporter = 'P') then
      s := 'QUANTIDADE E TIPO DE CONTAINER(S): ' + s
   else if (IdiomaExporter = 'E') then
      s := 'CANTIDAD Y TIPO DE CONTAINER(S)  : ' + s;

   i := (length(s) / 58);
   i := i + 1;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)] do
   begin
     FormulaR1C1 := s;
     Characters[1,35].Font.Bold := True;
     Characters[36,length(s)].Font.Bold := False;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Strikethrough := False;
     Font.Superscript := False;
     Font.Subscript := False;
     Font.OutlineFont := False;
     Font.Shadow := False;
     Font.Underline := xlUnderlineStyleNone;
     Font.ColorIndex := xlAutomatic;
     RowHeight := 12.75 * Int(i);
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

  inc(Linha);

   { início }
   if (IdiomaExporter = 'I') then s := 'LOT NUMBER: '
   else if (IdiomaExporter = 'P') then s := 'NÚMERO DE REFERÊNCIA DO VOLUME: '
   else if (IdiomaExporter = 'E') then s := 'NÚMERO DE REFERENCIA DE VOLUMEN: ';
   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementonum_ref_volume.AsString;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[Length(s)+1,25].Font do
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

   { início }
   if (IdiomaExporter = 'I') then s := 'COUNTRY OF ORIGIN: '
   else if (IdiomaExporter = 'P') then s := 'PAÍS DE ORIGEM: '
   else if (IdiomaExporter = 'E') then s := 'PAÍS DE ORIGEN: ';
   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s + Exportadorpais_origem.AsString;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[Length(s)+1,10].Font do
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
   if (IdiomaExporter = 'I') then s := 'COUNTRY OF ACQUISITION: '
   else if (IdiomaExporter = 'P') then s := 'PAÍS DE ADQUISIÇÃO: '
   else if (IdiomaExporter = 'E') then s := 'PAÍS DE ADQUISICIÓN: ';
   ExcelWorkSheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)].FormulaR1C1 := s + Exportadorpais_aquisicao.AsString;
   with ExcelWorksheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)].Characters[Length(s)+1,10].Font do
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
   if (IdiomaExporter = 'I') then s := 'COUNTRY OF PROCEED: '
   else if (IdiomaExporter = 'P') then s := 'PAÍS DE PROCEDÊNCIA: '
   else if (IdiomaExporter = 'E') then s := 'PAÍS DE PROCEDENCIA: ';
   ExcelWorkSheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].FormulaR1C1 := s + Exportadorpais_procedencia.AsString;
   with ExcelWorksheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].Characters[Length(s)+1,10].Font do
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
   if (IdiomaExporter = 'I') then s := 'PORT OF LOADING: '
   else if (IdiomaExporter = 'P') then s := 'PORTO DE EMBARQUE: '
   else if (IdiomaExporter = 'E') then s := 'PUERTO DE CARGA: ';
   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementolkpPortoEmb.AsString;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[Length(s)+1,15].Font do
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
   if (IdiomaExporter = 'I') then s := 'PLACE OF DELIVERY: '
   else if (IdiomaExporter = 'P') then s := 'LOCAL DE ENTREGA: '
   else if (IdiomaExporter = 'E') then s := 'LUGAR DE ENTREGA: ';
   ExcelWorkSheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementolkpPortoDes.AsString;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].Characters[1,Length(s)].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].Characters[Length(s)+1,15].Font do
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


   { Insurance - alterado em 22.09.14 }
   Inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     MergeCells := True;
     if (IdiomaExporter = 'I') then
        FormulaR1C1 := 'INSURANCE TO BE EFFECTED BY: ' + dbcInsurance.Text
     else if (IdiomaExporter = 'P') then
        FormulaR1C1 := 'SEGURO EFETUADO POR        : ' + dbcInsurance.Text
     else if (IdiomaExporter = 'E') then
        FormulaR1C1 := 'SEGURO EFECTUADO POR       : ' + dbcInsurance.Text;

     Name := 'Arial';
     Characters[1,29].Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
   end;

  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
  begin
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
  end;


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
    VerticalAlignment := xlTop;
   end;

   { SHIPPING MARKS }
   Linha := Linha + 2;
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
     if (IdiomaExporter = 'I') then s := 'NAME OF THE PRODUCT IN '
     else if (IdiomaExporter = 'P') then s := 'NOME DO PRODUTO EM '
     else if (IdiomaExporter = 'E') then s := 'NOMBRE DEL PRODUCTO EN ';
     Value := s + dmCOM.IdiomaDescProdutos(IdiomaExporter, Importadoridioma_shipmarks.Value);
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
     if (IdiomaExporter = 'I') then s := 'DESTINATION PORT: '
     else if (IdiomaExporter = 'P') then s := 'PORTO DE DESTINO: '
     else if (IdiomaExporter = 'E') then s := 'PUERTO DE DESTINO: ';
     Value := s + trim(nf_saida_complementolkpPortoDes.AsString);
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
     if (IdiomaExporter = 'I') then s := 'NAME OF THE PRODUCT IN '
     else if (IdiomaExporter = 'P') then s := 'NOME DO PRODUTO EM '
     else if (IdiomaExporter = 'E') then s := 'NOMBRE DEL PRODUCTO EN ';
     Value := s + dmCOM.IdiomaDescProdutos(IdiomaExporter, Importadoridioma_shipmarks.Value);
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
     if (IdiomaExporter = 'I') then s := 'MADE IN '
     else if (IdiomaExporter = 'P') then s := 'PRODUZIDO EM '
     else if (IdiomaExporter = 'E') then s := 'HECHO EN ';
     Value := s + Exportadorpais_origem.AsString;
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

   ExcelWorkSheet.Range['C1','C1'].ColumnWidth := 10.14;

   { ajustar propriedades para impressão da página de condições }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$J$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$15';
     PrintTitleColumns := '';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := '';
     LeftFooter := '';
     LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.78740157480315, GetUserDefaultLCID);
     RightMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     TopMargin := ExcelWorksheet.Application.InchesToPoints(0.78740157480315, GetUserDefaultLCID);
     BottomMargin := 0;
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

  { FIM DA PÁGINA DAS CONDIÇÕES - CONDITIONS PAGE }


  { Salvar a planilha }
  //ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  ExcelApplication.ActiveWorkbook.Save(lcid);

  Exportador.Close;
  Importador.Close;

  { finalizar progress bar }
  btnPackingList.Enabled := True;
  Ani.Terminate;

  { Fechar planilha e encerrar excel }
  FecharExcel2;
end;

procedure Tfr_ManNF.actEmbarqueExecute(Sender: TObject);
begin
  IdiomaExporter := nota_fiscal_saidaies_idioma.AsString;

  AbrirBlCombinado;
  if Not(bl_combinado.IsEmpty) then
  begin
    pgcNF.ActivePage := tsBlCombinado;
    actBlCombinadoExecute(nil);
    Exit;
  end;

  DocGerado := 'BL';
  if (nota_fiscal_saidaies_preco_esp.AsString = 'S') then
  begin
     GerarBillLading('A');
     GerarBillLading('B');
  end
  else                                                                                   
     GerarBillLading('');

  Application.MessageBox('Bill of Lading gerado','Informação', MB_OK+MB_ICONINFORMATION);
end;                                                                         

procedure Tfr_ManNF.GerarBillLading(Tipo: String);
Var
  i : Real;
  DIR_PLANILHAS, PATH : String;
  s, s1, s2, s3, ped : String;
  cmd : String;
  Ind : Integer;
  bPallets, bCaixas: boolean;
begin
   Linha := 1;

   { Obrigatório o preenchimento de Número da Fatura e Referência de Volume }
   if trim(nf_saida_complementonum_fatura.AsString) = '' then
   begin
     Application.MessageBox('Informe o Número da Fatura para gerar os documentos', 'Informação', MB_ICONINFORMATION+MB_OK);
     dbeNumFatura.SetFocus;
     Exit;
   end;
   if trim(nf_saida_complementonum_ref_volume.AsString) = '' then
   begin
     Application.MessageBox('Informe o Número de Lote', 'Informação', MB_ICONINFORMATION+MB_OK);
     dbeNumRefVolume.SetFocus;
     Exit;
   end;
   { Gerar o Conhecimento de Embarque em Excel - Bill of Lading }
   (*** CONHECIMENTO DE EMBARQUE ***)

   { Informações do Exportador (fornecedor) }
   with Exportador do
   begin
     Close;
     ParamByName('cod_fornecedor').AsInteger :=  nf_saida_complementocod_fornecedor.AsInteger;
     Open;
   end;
   { Informações do Importador (cliente) }
   with Importador do
   begin
     Close;
     ParamByName('cod_cliente').AsString := nota_fiscal_saidacod_cliente.AsString;
     Open;
   end;
   { Transportadora (Shipping Company) }
   with Transportadora do
   begin
     Close;
     ParamByName('cod_transportadora').AsInteger := nota_fiscal_saidacod_transportadora.AsInteger;
     Open;
   end;

  { Gerar em uma planilha Excel com o Pedido }
  try
   ExcelApplication.Connect;
   //
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

   { Diretório Principal \ Cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(nota_fiscal_saidacod_cliente.AsString);
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Diretório Principal \ Cliente \ LOTS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\LOTS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   Ped := trim(nf_saida_complementonum_ref_volume.AsString);
   Ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   Ped := StringReplace(ped, '\', '-', [rfReplaceAll]);

   { Diretório Principal \ Cliente \ LOTS \LOT + Nº do Lote }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'LOT ' + Ped;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Nome do Arquivo }
   Ped := trim(nf_saida_complementonum_ref_volume.AsString);
   Ped := StringReplace(ped, '/', '-', [rfReplaceAll]);
   Ped := StringReplace(ped, '\', '-', [rfReplaceAll]);
   { data de geração do bl }
   nota_fiscal_saida.Edit;
   nota_fiscal_saidadat_bl.AsDateTime := DataHoraServidor;
   nota_fiscal_saida.Post;
   Ped := 'LOT ' + trim(Ped) + Tipo + ' INSTRUCTIONS FOR BILL OF LOADING' + FormatDateTime(' - DD.MM.YY', DataHoraServidor);
   FileName := DIR_PLANILHAS + '\' + trim(Ped) + '.xls';
   { salvar nome do arquivo gerado }
   nota_fiscal_saida.Edit;
   nota_fiscal_saidadat_arquivo.Value := DataHoraServidor;
   nota_fiscal_saida.Post;

   { inicializar progress bar }
   Rect := panGauge.ClientRect;
   InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
   Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
   btnBillLading.Enabled := False;
   Application.ProcessMessages;

   { Mostra ou Esconde a montagem da planilha }
   ExcelApplication.Visible[0] := False;
   ExcelApplication.DisplayAlerts[0] := False;

   { Bill of Lading - Página Única }
   ExcelWorkbook.ConnectTo(ExcelApplication.Workbooks.Add(xlWBATWorksheet, GetUserDefaultLCID));
   ExcelWorksheet.ConnectTo(ExcelWorkbook.Worksheets[1] as _Worksheet);

   { Página da planilha }
   ExcelWorkSheet.Name := 'Bill of Lading';

   { Título da página, BILL OF LADING }
   { Formatação do título }
   LinhaAux := Linha;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
          if (IdiomaExporter = 'I') then Value2 := 'INSTRUCTIONS FOR THE BILL OF LADING'
     else if (IdiomaExporter = 'P') then Value2 := 'INSTRUÇÕES PARA CONHECIMENTO DE EMBARQUE'
     else if (IdiomaExporter = 'E') then Value2 := 'INSTRUCCIONES PARA CONOCIMIENTO DE EMBARQUE';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Size := 14;                                   
     if (Tipo = 'A') or (Tipo = '') then Font.ColorIndex := 0
                                    else Font.ColorIndex := 5;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
          if (IdiomaExporter = 'I') then Value2 := 'FOR THE INVOICE NUMBER: ' + trim(nf_saida_complementonum_fatura.AsString) +
                                           '   DATE: ' + FormatDateTime('dd.mm.yyyy', nota_fiscal_saidadat_emissao.AsDateTime)
     else if (IdiomaExporter = 'P') then Value2 := 'PARA A FATURA NÚMERO : ' + trim(nf_saida_complementonum_fatura.AsString) +
                                           '   DATA: ' + FormatDateTime('dd.mm.yyyy', nota_fiscal_saidadat_emissao.AsDateTime)
     else if (IdiomaExporter = 'E') then Value2 := 'PARA LA FACTURA NÚMERO: ' + trim(nf_saida_complementonum_fatura.AsString) +
                                           '   FECHA: ' + FormatDateTime('dd.mm.yyyy', nota_fiscal_saidadat_emissao.AsDateTime);
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Size := 10;
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(LinhaAux),'J'+IntToStr(Linha)] do
   begin
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlEdgeLeft].LineStyle := xlNone;
    Borders[xlEdgeTop].LineStyle := xlNone;
    Borders[xlEdgeBottom].LineStyle := xlNone;
    Borders[xlEdgeRight].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    if (Tipo = 'A') or (Tipo = '') then Font.ColorIndex := 0
                                   else Font.ColorIndex := 5;

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
   end;

   { SERVICE/MODALITY }
   Linha := Linha + 2;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
          if (IdiomaExporter = 'I') then Value2 := 'SERVICE/MODALITY : ' + trim(nota_fiscal_saidalkcTipoEmbarque.AsString)
     else if (IdiomaExporter = 'P') then Value2 := 'SERVIÇO/MODALIDADE : ' + trim(nota_fiscal_saidalkcTipoEmbarque.AsString)
     else if (IdiomaExporter = 'E') then Value2 := 'SERVICIO / MODALIDAD : ' + trim(nota_fiscal_saidalkcTipoEmbarque.AsString);
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Bold := True;                                                       
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Size := 10;
   end;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
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
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   { PICK UP DATE }
   if Not(nota_fiscal_saidadat_coleta.IsNull) then
   begin
     Linha := Linha + 2;
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       if (IdiomaExporter = 'I') then Value2 := 'PICK UP DATE : ' + FormatDateTime('dd.mm.yy', nota_fiscal_saidadat_coleta.AsDateTime)
       else if (IdiomaExporter = 'P') then Value2 := 'DATA DA COLETA: ' + FormatDateTime('dd.mm.yy', nota_fiscal_saidadat_coleta.AsDateTime)
       else if (IdiomaExporter = 'E') then Value2 := 'FECHA DE RECOGIDA : ' + FormatDateTime('dd.mm.yy', nota_fiscal_saidadat_coleta.AsDateTime);
       MergeCells := True;
       Font.Name := 'Arial';
       Font.Bold := True;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlNone;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       Font.Size := 10;
     end;

     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
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
      //Borders[xlInsideHorizontal].LineStyle := xlNone;
      VerticalAlignment := xlTop;
     end;
   end;
   { shipper - Dados do Exportador }
   Linha := Linha + 2;
   LinhaAux := Linha;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value := 'SHIPPER:'
     else if (IdiomaExporter = 'P') then Value := 'REMETENTE:'
     else if (IdiomaExporter = 'E') then Value := 'REMITENTE:';
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
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
     MergeCells := True;
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
       Value2 := s;
       MergeCells := True;
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;
   { fim SHIPPER }

   { CONSIGNEE - Dados do Importador }
   Inc(Linha);
   LinhaAux := Linha;

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value := 'CONSIGNEE:'
     else if (IdiomaExporter = 'P') then Value := 'CONSIGNATÁRIO:'
     else if (IdiomaExporter = 'E') then Value := 'CONSIGNATARIO:';

     FOnt.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
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
     Value := Importadornom_cliente.AsString;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
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
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       Value2 := s;
       MergeCells := True;
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
   { fim CONSIGNEE }

   { NOTIFY PARTY - Dados do Importador }
   Inc(Linha);
   LinhaAux := Linha;

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value := 'NOTIFY PARTY:'
     else if (IdiomaExporter = 'P') then Value := 'NOTIFICAR PARTE:'
     else if (IdiomaExporter = 'E') then Value := 'NOTIFICAR PARTE:';

     FOnt.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
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
     Value := Importadornom_cliente.AsString;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
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
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       Value2 := s;
       MergeCells := True;
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
   { fim NOTIFY PARTY }

    { SHIPPING COMPANY AND CONTACT DETAILS - Dados do transportador }
    Linha := Linha + 2;
    LinhaAux := Linha;
    with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
    begin
     if (IdiomaExporter = 'I') then Value2 := 'SHIPPING COMPANY AND CONTACT DETAILS:'
     else if (IdiomaExporter = 'P') then Value2 := 'COMPANIA EMBARCADORA E DETALHES DE CONTATO:'
     else if (IdiomaExporter = 'E') then Value2 := 'COMPAÑÍA EMBARCADORA Y DETALLES DE CONTACTO:';
     MergeCells := True;
     Font.Size := 10;
     Font.Name := 'Arial';
     Font.BOld := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
    end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := transportadoranom_transportadora.AsString;
     MergeCells := True;
     Font.Size := 10;
     Font.Name := 'Arial';
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   { Endereço Transportador }
   Inc(Linha);
   Endereco := TStringList.Create;
   Endereco.Text := transportadoraendereco.Value;
   for ind := 0 to Endereco.Count -1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       Value2 := s;
       MergeCells := True;
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;
   { fim SHIPPING COMPANY AND CONTACT DETAILS }

   { ARMADOR }
   Linha := Linha + 2;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then
     begin
     if Not(nota_fiscal_saidacod_armador.IsNull) then
        Value2 := 'CARRIER (OWNER OF VESSEL):' + trim(nota_fiscal_saidalkcArmador.AsString) + '. IN THE B/L THE CARRIER (OWNER OF THE VESSEL) MUST BE INDICATED. PLEASE INDICATE LIKE THIS: CARRIER''S NAME: (INDICATE HERE)'
     else
        Value2 := 'CARRIER (OWNER OF VESSEL): IN THE B/L THE CARRIER (OWNER OF THE VESSEL) MUST BE INDICATED. PLEASE INDICATE LIKE THIS: CARRIER''S NAME: (INDICATE HERE)';
     end else if (IdiomaExporter = 'P') then
     begin
     if Not(nota_fiscal_saidacod_armador.IsNull) then
        Value2 := 'TRANPORTADOR (PROPRIETÁRIO DO BARCO):' + trim(nota_fiscal_saidalkcArmador.AsString) + '. NO B/L, INDICAR O TRANSPORTADOR (PROPRIETÁRIO DO BARCO). POR FAVOR INDICAR DA SEGUENTE MANEIRA: NOME DO TRANSPORTADOR: (INDIQUE AQUI)'
     else
        Value2 := 'TRANPORTADOR (PROPRIETÁRIO DO BARCO): NO B/L, INDICAR O TRANSPORTADOR (PROPRIETÁRIO DO BARCO). POR FAVOR INDICAR DA SEGUENTE MANEIRA: NOME DO TRANSPORTADOR: (INDIQUE AQUI)';
     end else if (IdiomaExporter = 'E') then
     begin
     if Not(nota_fiscal_saidacod_armador.IsNull) then
        Value2 := 'TRANSPORTISTA (PROPIETARIO DEL BARCO):' + trim(nota_fiscal_saidalkcArmador.AsString) + '. EN EL B/L, EL TRANSPORTISTA ( (PROPIETARIO DEL BARCO) DEBE SER INDICADO. POR FAVOR INDICAR DE LA SIGUIENTE MANERA: NOMBRE DEL TRANSPORTISTA: (INDIQUE AQUÍ)'
     else
        Value2 := 'TRANSPORTISTA (PROPIETARIO DEL BARCO): EN EL B/L, EL TRANSPORTISTA ( (PROPIETARIO DEL BARCO) DEBE SER INDICADO. POR FAVOR INDICAR DE LA SIGUIENTE MANERA: NOMBRE DEL TRANSPORTISTA: (INDIQUE AQUÍ)';
     end;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := False;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     if (IdiomaExporter = 'I') then Characters[1,26].Font.Bold := True
     else if (IdiomaExporter = 'P') then Characters[1,37].Font.Bold := True
     else if (IdiomaExporter = 'E') then Characters[1,37].Font.Bold := True;
     RowHeight := 39.75;
   end;

   Linha := Linha + 2;
   LinhaAux := Linha;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value2 := 'PACKAGE AND FREIGHT INFORMATION TO BE INCLUDED IN THE B/L:'
     else if (IdiomaExporter = 'P') then Value2 := 'INFORMAÇÕES SOBRE FRETE E EMBALAGENS A SEREM INCLUÍDAS NO B/L:'
     else if (IdiomaExporter = 'E') then Value2 := 'INFORMACIÓN DE EMBALAJE Y FLETE A SER INCLUIDA EN EL B/L:';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Inc(Linha);

   { indicar se tem ou não pallets }
   bPallets := nota_fiscal_saidaies_pallets.AsString = 'S';
   { indicar se tem caixas fora dos pallets }
   bCaixas := nf_saida_complementocxs_outpallet.AsInteger > 0;

   { PACKAGES INFORMATION }
   PackagesInformations(nf_saida_complemento, bPallets, bCaixas, true, 'A', 'J');

   { início - CONTAINERS }
   Inc(Linha);
   Inc(Linha);
   s := '';

   with nf_container do
   begin
     First;
     while Not(EOF) do
     begin
      s := s + trim(nf_containerqtd_container.AsString)+'x'+trim(nf_containerlkTipContainer.AsString);
      Next;
      if Not(EOF) then s := s + ', ';
     end;
   end;

        if (IdiomaExporter = 'I') then s := 'QUANTITY AND TYPE OF CONTAINER(S): ' + s
   else if (IdiomaExporter = 'P') then s := 'QUANTIDADE E TIPO DE CONTAINER(S): ' + s
   else if (IdiomaExporter = 'E') then s := 'CANTIDAD Y TIPO DE CONTAINER(S)  : ' + s ;
   i := (length(s) / 105);
   i := i + 1;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     FormulaR1C1 := s;
     Characters[1,35].Font.Bold := True;
     Characters[36,length(s)].Font.Bold := False;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Strikethrough := False;
     Font.Superscript := False;
     Font.Subscript := False;
     Font.OutlineFont := False;
     Font.Shadow := False;
     Font.Underline := xlUnderlineStyleNone;
     Font.ColorIndex := xlAutomatic;
     MergeCells := True;
     RowHeight := 12.75 * Int(i);
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

   Inc(linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value2 := 'THE NUMBER OF THE CONTAINER MUST BE INDICATED IN THE B/L'
     else if (IdiomaExporter = 'P') then Value2 := 'O NÚMERO DE CONTAINERS A SER INDICADO NO B/L'
     else if (IdiomaExporter = 'E') then Value2 := 'EL NÚMERO DE CONTAINER DEBE SER INDICADO EN EL B/L';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value2 := 'THE SEAL NUMBER MUST BE INDICATED IN THE B/L'
     else if (IdiomaExporter = 'P') then Value2 := 'O NÚMERO DO SELO A SER INDICADO NO B/L'
     else if (IdiomaExporter = 'E') then Value2 := 'EL NÚMERO DE SELLO DEBE SER INDICADO EN EL B/L';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(Linha);

   { início }

   if (IdiomaExporter = 'I') then s := 'PORT OF LOADING: '
   else if (IdiomaExporter = 'P') then s := 'PORTO DE EMBARQUE: '
   else if (IdiomaExporter = 'E') then s := 'PUERTO DE CARGA: ';
   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementolkpPortoEmb.AsString;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[1,17].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].Characters[18,15].Font do
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
   if (IdiomaExporter = 'I') then s := 'PLACE OF DELIVERY: '
   else if (IdiomaExporter = 'P') then s := 'LOCAL DE ENTREGA: '
   else if (IdiomaExporter = 'E') then s := 'LUGAR DE ENTREGA: ';
   ExcelWorkSheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementolkpPortoDes.AsString;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].Characters[1,19].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].Characters[20,15].Font do
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

   { Insurance - alterado em 22.09.14 }
   Inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then
        FormulaR1C1 := 'INSURANCE TO BE EFFECTED BY: ' + dbcInsurance.Text
     else if (IdiomaExporter = 'P') then
        FormulaR1C1 := 'SEGURO EFETUADO POR        : ' + dbcInsurance.Text
     else if (IdiomaExporter = 'E') then
        FormulaR1C1 := 'SEGURO EFECTUADO POR       : ' + dbcInsurance.Text;

     Name := 'Arial';
     Characters[1,29].Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
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


  Inc(Linha);

   { início }
   if (IdiomaExporter = 'I') then      s := 'FREIGHT IN NUMBERS: USD '
   else if (IdiomaExporter = 'P') then s := 'FRETE EM NÚMEROS  : USD '
   else if (IdiomaExporter = 'E') then s := 'FLETE EN NÚMEROS  : USD ';
   ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)].FormulaR1C1 := s + FormatFloat('##,##0.00', nota_fiscal_saidavlr_frete.AsFloat);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)].Characters[1,20].Font do
   begin
     Name := 'Arial';
     Bold := True;
     Size := 9;
     Strikethrough := False;
     Superscript := False;
     Subscript := False;
     OutlineFont := False;
     Shadow := False;
     Underline := xlUnderlineStyleNone;
     ColorIndex := xlAutomatic;
   end;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)].Characters[21,25].Font do
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

  Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'FREIGHT: '
     else if (IdiomaExporter = 'P') then s := 'FRETE: '
     else if (IdiomaExporter = 'E') then s := 'FLETE: ';

     if rgTipoFrete.ItemIndex = 0 then
        Value2 := s + 'PRE-PAID'
     else if rgTipoFrete.ItemIndex = 1 then
        Value2 := s + 'COLLECT'
     else if rgTipoFrete.ItemIndex = 2 then
        Value2 := s + trim(nota_fiscal_saidaobs_frete.AsString);

     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 9;
     Font.Bold := True;
     Characters[08,150].Font.Bold := False;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   { DESTINATION EXPENSES }
   if (IdiomaExporter = 'I') then
   begin
     if trim(nota_fiscal_saidaden_destination_exp.AsString) <> '' then
        s := 'DESTINATION EXPENSE: ' + trim(nota_fiscal_saidaden_destination_exp.AsString)
     else
        s := 'DESTINATION EXPENSE: MUST BE INFORMED IN THE ORIGINAL B/L WITHOUT FAIL UNLESS THE SHIPMENT WAS MADE IN CONSOLIDATED CONTAINER';
     end else if (IdiomaExporter = 'P') then
     begin
       if trim(nota_fiscal_saidaden_destination_exp.AsString) <> '' then
          s := 'DESTINO DE DESPESAS: ' + trim(nota_fiscal_saidaden_destination_exp.AsString)
       else
          s := 'DESTINO DE DESPESAS: DEVE SER INFORMADO NO B/L ORIGINAL SEM FALTA, A MENOS QUE O ENVIO TENHA SIDO EFETUADO NUM CONTAINER CONSOLIDADO';
     end else if (IdiomaExporter = 'E') then
     begin
       if trim(nota_fiscal_saidaden_destination_exp.AsString) <> '' then
          s := 'GASTOS DE DESTINO:  ' + trim(nota_fiscal_saidaden_destination_exp.AsString)
       else
          s := 'GASTOS DE DESTINO:   DEBEN SER INFORMADOS EN EL B/L ORIGINAL SIN FALTA A MENOS QUE EL ENVÍO SE HAYA EFECTUADO EN CONTAINER CONSOLIDADO.';
     end;
     Inc(Linha);
     i := (length(s) / 110);
     i := i + 1;

     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       Value2 := s;
       MergeCells := True;
       Font.Name := 'Arial';
       Font.Size := 09;
       Font.Bold := False;
       Characters[01,20].Font.Bold := True;
       Characters[21,Length(s)].Font.Bold := False;
       Interior.ColorIndex := 0;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       Rows.RowHeight := 12.75 * Int(i);
     end;

   { TARE WEIGHT }
   if (IdiomaExporter = 'I') then s := 'TARE WEIGHT(TARA): PLEASE INDICATE IN THE B/L THE TARE WEIGHT(S) OF THE CONTAINER(S). IF THE SHIPMENT IS IN CONSOLIDATED CONTAINER, THERE IS NO NEED TO INDICATE THE TARE WEIGHT IN THE B/L'
   else if (IdiomaExporter = 'P') then s := 'PESO DE TARA (TARA): DEVERÁ SER INFORMADO NO B/L SEM FALTA, A MENOS QUE O ENVIO SEJA EFETUADO EM CONTAINER CONSOLIDADO: '
   else if (IdiomaExporter = 'E') then s := 'PESO DE TARA (TARA): DEBERÁ INDICARSE EN EL B/L SIN FALTA, A MENOS QUE EL ENVIOSE HAYA EFECTUADO EN CONTAINER CONSOLIDADO: ';
   s1 := '';
   with nf_container do
   begin
     First;
     while Not(EOF) do
     begin
      if (nf_containertara.AsFloat > 0) then
         s1 := s1 + trim(nf_containerlkTipContainer.AsString) + ' ' + FormatFloat('##,##0.00 Kg', nf_containertara.AsFloat) + ' EACH';
      Next;
      if Not(EOF) then s1 := s1 + ','
                  else s1 := s1 + '.';
     end;
   end;
   if Length(trim(s1)) > 1 then
      s := s + s1;

   Inc(Linha);
   i := (length(s) / 111);
   i := i + 1;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := s;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Characters[01,18].Font.Bold := True;
     Characters[19,Length(s)].Font.Bold := False;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 12.75 * Int(i);
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
    VerticalAlignment := xlTop;
   end;


   Linha := Linha + 2;
   LinhaAux := Linha;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'PLEASE INDICATE FOLLOWING SENTENCES IN THE FIRST PAGE OF THE B/L IF POSSIBLE, OR OTHERWISE IN A SECOND PAGE (ATTACHMENT) OF THE B/L:'
     else if (IdiomaExporter = 'P') then s := 'POR FAVOR, INDIQUE AS SEGUINTE SENTENÇAS NA PRIMEIRA PÁGINA DO B/L, SE POSSÍVEL OU DE OUTRA MANEIRA NA SEGUNDA PÁGINA (ADJUNTA) DO B/L'
     else if (IdiomaExporter = 'E') then s := 'POR FAVOR INDICAR LAS SIGUIENTES ORACIONES EN LA PRIMERA PÁGINA DEL B/L, SI ES POSIBLE, O DE OTRA MANERA EN LA SEGUNDA PÁGINA (ADJUNTA) DEL B/L:';
     Value2 := s;
     RowHeight := 27.75;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 6;
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
     with Borders[xlEdgeRight] do
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
     //Borders[xlInsideHorizontal].LineStyle := xlNone;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '1) THE NUMBER OF THE INVOICE RELATED TO THIS B/L IS : ' + trim(nf_saida_complementonum_fatura.AsString)
     else if (IdiomaExporter = 'P') then s :=  '1) O NÚMERO DE FATURA RELACIONADO COM ESTE B/L É : ' + trim(nf_saida_complementonum_fatura.AsString)
     else if (IdiomaExporter = 'E') then s :=  '1) EL NÚMERO DE FACTURA RELACIONADO CON ESTE B/L ES : ' + trim(nf_saida_complementonum_fatura.AsString);
     Value2 := s  + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
     else Rows.RowHeight := 25.50;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '2) LOT NUMBER: ' + trim(nf_saida_complementonum_ref_volume.AsString)
     else if (IdiomaExporter = 'P') then s := '2) NÚMERO DE REFERÊNCIA DO VOLUME: ' + trim(nf_saida_complementonum_ref_volume.AsString)
     else if (IdiomaExporter = 'E') then s := '2) NÚMERO DE REFERENCIA DE VOLUMEN: ' + trim(nf_saida_complementonum_ref_volume.AsString);
     Value2 := s  + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
     else Rows.RowHeight := 25.50;
   end;

   Inc(Linha);

   { TIPOS DE PRODUTOS + NCM }
   tncm := TStringList.Create;
   dmCOM.TipoNcmFatura(nota_fiscal_saidacod_empresa.AsInteger, nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString, tncm, (clientesncm_bl.Value = 'S'), 'B');

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (clientesncm_bl.Value = 'S') then
     begin
       if (IdiomaExporter = 'I') then s := '3) PRODUCTS AND NCM NUMBERS'
       else if (IdiomaExporter = 'P') then s := '3) PRODUTOS E NÚMEROS DE NCM'
       else if (IdiomaExporter = 'E') then s := '3) PRODUCTOS Y NÚMEROS DE NCM';
     end else
     begin
       if (IdiomaExporter = 'I') then s := '3) PRODUCTS'
       else if (IdiomaExporter = 'P') then s := '3) PRODUTOS'
       else if (IdiomaExporter = 'E') then s := '3) PRODUCTOS';
     end;
     Value2 := s  + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
     else Rows.RowHeight := 25.50;
   end;

   Inc(Linha);

   { texto para NCM }
   for ind := 0 to tncm.Count - 1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       s := tncm[ind];
       i := (length(s) / 105);
       i := i + 1;
       Value2 := s;
       MergeCells := True;
       Font.Name := 'Arial';
       Font.Size := 8;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlContinuous;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       Rows.RowHeight := 12.75 * Int(i);
     end;
     Inc(Linha);
   end;
   FreeAndNil(tncm);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '4) CLEAN ON BOARD'
     else if (IdiomaExporter = 'P') then s := '4) LIMPO À BORDO'
     else if (IdiomaExporter = 'E') then s := '4) LIMPIO A BORDO';
     Value2 := s;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
     else Rows.RowHeight := 25.50;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := '5) INCOTERMS: ' + trim(nf_saida_complementolkcCondicaoVenda.AsString);
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Font.Bold := False;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 12.75;
   end;


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
      with Borders[xlEdgeRight] do
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
      Borders[xlInsideHorizontal].LineStyle := xlNone;
   end;

   Inc(Linha);
   LinhaAux := Linha;

   s := '';
   s3 := '';

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := 'SPECIAL REMARKS:';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '1) IN CASE WOODEN MATERIAL WAS USED IN THE PACKING THE SHIPPER MUST FUMIGATE THE CONTAINER BEFORE THE '+
               'SHIPMENT AND THE NUMBER OF THE FUMIGATION CERTIFICATE MUST BE MENTIONED IN THE B/L. THE WAY TO INDICATE '+
               'IN THE B/L IS THIS: “THIS CONTAINER WAS FUMIGATED AND THE NUMBER OF THE CERTIFICATE OF FUMIGATION IS '+
               '(HERE THE NUMBER MUST BE PUT). AND OF COURSE IN THIS CASE THE SENTENCE  MENTIONED IN POINT NUMBER 2 '+
               'ABOVE "SHIPPER DECLARES THAT NO WOODEN MATERIAL WAS USED IN THE PACKING IN THIS CONTAINER" CAN NOT BE INDICATED.'
     else if (IdiomaExporter = 'P') then s := 'QUANDO FOR UTILIZADO MATERIAL DE MADEIRA NAS EMBALAGENS, O EMBARCADOR DEVE FUMIGAR OS CONTAINERS ANTES DO ENVIO ' +
                                 'E O NÚMERO DO CERTIFICADO DE FUMIGAÇÃO, DEVE SER MENCIONADO NO B/L.'
     else if (IdiomaExporter = 'E') then s := 'EN CASO DE QUE MATERIAL DE MADERA HAYA SIDO UTILIZADO EN EL EMPAQUE, EL SHIPPER DEBE FUMIGAR EL CONTAINER ' +
                                      'ANTES DEL ENVÍO Y EL NÚMERO DE CERTIFICADO DE FUMIGACIÓN DEBE SER MENCIONADO EN EL B/L. ';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 58.50;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '2) IN CASE THE OWNER OF THE VESSEL REFUSES TO INDICATE "CLEAN ON BOARD", THEN ALSO "SHIPPED ON BOARD" OR ' +
               'SOME OTHER SIMILAR STATEMENT ARE ACCEPTABLE. '
     else if (IdiomaExporter = 'P') then s := 'CASO O PROPRIETÁRIO DO NAVIO NEGUE INDICAR "CLEAN ON BOARD", PODERÁ INDICAR "SHIPPED ON BOARD" ' +
                                 'OU ALGUMA OUTRA DECLARAÇÃO SIMILAR ACEITÁVEL'
     else if (IdiomaExporter = 'E') then s:= 'EN CASO DE QUE EL PROPIETARIO DEL BUQUE SE NIEGUE A INDICAR "CLEAN ON BOARD", ENTONCES TAMBIÉN "SHIPPED ON BOARD"  ' +
                                     'O ALGUNA OTRA DECLARACIÓN SIMILAR SON ACCEPTABLES.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 24.75;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '3) THE SEAL NUMBER ON THE B/L AND THE SEAL NUMBER ON THE CONTAINER MUST BE THE SAME.'
     else if (IdiomaExporter = 'P') then s := 'O NÚMERO DO SELO NO B/L E O NÚMERO NO DO SELO NO CONTAINER, DEVE SER O MESMO'
     else if (IdiomaExporter = 'E') then s := 'EL NÚMERO DE SELLO EN EL B/L Y EL NÚMERO DE SELLO EN EL CONTAINER DEBE SER EL MISMO.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 12.75;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '4) IF THE SHIPPER NOTES THAT THE SEAL SUPPLIED BY SHIPPING COMPANY IS DAMAGED OR BROKEN HE MUST '+
                                         'ASK THE SHIPPING COMPANY FOR REPLACEMENT OF THE SEAL.'
     else if (IdiomaExporter = 'P') then s := 'SE O REMETENTE OBSERVAR QUE O SELLO FORNECIDO PELA EMPRESA EMBARCADORA ESTÁ QUEBRADO OU DETERIORADO, ' +
                                 'DEVE SOLICITAR A COMPANHIA EMBARCADORA A SUBSTITUIÇÃO DO SELO.'
     else if (IdiomaExporter = 'E') then s := 'SI EL REMITENTE OBSERVA QUE EL SELLO SUMINISTRADO POR LA COMPAÑÍA EMBARCADORA ESTÁ DETERIORADO O ROTO, ' +
                                      'DEBE SOLICITAR A LA COMPAÑÍA EMBARCADORA EL REEMPLAZO DEL SELLO.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 25.50;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s  := '5) IF BECAUSE OF AUTHORITY´S INSPECTION IN THE PORT THE SEAL WAS CHANGED IN THE PORT THE NEW SEAL NUMBER '+
                                          'MUST BE MENTIONED IN THE B/L WITHOUT FAIL AND THE CONSIGNEE MUST BE INFORMED ABOUT THIS CHANGE.'
     else if (IdiomaExporter = 'P') then s := 'SE POR MOTIVOS DE INSPEÇÃO DA AUTORIDADE PORTUÁRIA, O SELO FOR TROCADO NO PORTO, O NOVO NÚMERO DO SELO DEVE SER INDICADO NO B/L, SEM FALTA ' +
                                 'E O CONSIGNATÁRIO DEVE SER INFORMADO SOBRE ESTA MODIFICAÇÃO.'
     else if (IdiomaExporter = 'E') then s := 'SI POR CAUSA DE UNA INSPECCIÓN DE AUTORIDAD EN EL PUERTO, EL SELLO FUESE CAMBIADO EN EL PUERTO, ' +
                                      'EL NUEVO NÚMERO DE SELLO DEBE SER INDICADO EN EL B/L SIN FALTA Y EL CONSIGNATARIO DEBE SER INFORMADO SOBRE ESTA MODIFICACIÓN.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 25.50;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '6) THE SHIPPER MUST TAKE A VERY GOOD LOOK OF THE CONTAINER BEFORE THE LOADING. CHECK NOT ONLY '+
                                         'THE INSIDE PART (OIL SPOT, HOLES AND OTHER), BUT ALSO CHECK THE BOTTOM PART, THE SIDES AND '+
                                         'THE CEILING (LOOK FOR HOLES, UNUSUAL REPAIRS AND CRUSHES) AND MUST TAKE CLEAR PICTURES AND '+
                                         'SEND TO US. IF THE CONDITION OF THE CONTAINER WILL BRING SOME RISK TO THE PRODUCTS THE SHIPPER '+
                                         'MUST RETURN THE CONTAINER TO THE SHIPPING COMPANY.'
     else if (IdiomaExporter = 'P') then s := 'O REMETENTE DEVE FAZER UMA BOA INSPEÇÃO DO CONTARINER ANTES DA CARGA. REVISAR NÃO APENAS ' +
                                 'A PARTE INTERIOR (MANCHAS DE ÓLEO, BURACOS E OUTROS), COMO TAMBÉM CHECAR A PARTE INFERIOR, OS LADOS ' +
                                 'E O TETO (BUSCAR BURACOS, REPARAÇÕES MAL FEITAS E GOLPES) E DEVE TIRAR FOTOS NÍTIDAS E ENVIAR-NOS. ' +
                                 'SE O ESTADO DO CONTAINER TOUXER ALGUNS RISCO AOS PRODUTOS, O REMETENTE DEVE RETORNAR O CONTAINER A COMPANHIA EMBARCADORA.'
     else if (IdiomaExporter = 'E') then s := 'EL REMITENTE DEBE LLEVAR A CABO UNA BUENA INSPECCIÓN DEL CONTENEDOR ANTES DE LA CARGA. REVISAR ' +
                                      'NO SOLO LA PARTE INTERIOR (MANCHAS DE ACEITE, AGUJEROS Y OTROS), SINO TAMBIÉN CHEQUEAR LA PARTE ' +
                                      'INFERIOR, LOS LADOS Y EL TECHO (BUSCAR AGUJEROS, REPARACIONES INUSUALES Y GOLPES) Y DEBEN TOMAR ' +
                                      'IMÁGENES CLARAS Y ENVIAR A NOSOTROS.SI EL ESTADO DEL CONTENEDOR TRAERÁ ALGÚN RIESGO A LOS PRODUCTOS, ' +
                                      'EL REMITENTE DEBE RETORNAR EL CONTENEDOR A LA COMPAÑÍA EMBARCADORA.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 47.25;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '7) THE ORIGINALS MUST BE SIGNED BY HAND. THE STAMP OF THE SHIPPING COMPANY IS NOT ENOUGH. THE SIGNATURE MUST '+
                                         'BE MADE BY HAND WITH A BLUE PEN. '
     else if (IdiomaExporter = 'P') then s := 'OS ORIGINAIS DEVEM ESTAR ASSINADOS A MÃO. O SELO DA COMPANHIA EMBARCADO NÃO É SUFICIENTE. ' +
                                 'A ASSINATURA A MÃO, DEVE SER FEITA COM CANETA DE TINTA AZUL.'
     else if (IdiomaExporter = 'E') then s := 'LOS ORIGINALES DEBEN ESTAR FIRMADOS A MANO. EL SELLO DE LA COMPAÑÍA EMBARCADORA NO ES SUFICIENTE. ' +
                                      'LA FIRMA SE DEBE HACER A MANO CON UNA PLUMA AZUL.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 24.75;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '8) IF THE SHIPPING COMPANY REFUSES TO FOLLOW SOME INSTRUCTIONS IN THIS PAGE THE SHIPPER MUST '+
                                         'INFORM US WITHOUT DELAY SO THAT WE CAN DISCUSS THE PROBLEM WITH THEIR AGENT IN BRAZIL.'
     else if (IdiomaExporter = 'P') then s := 'SE A COMPANHIA EMBARCADORA SE NEGAR A SEGUIR ALGUMAS DAS INSTRUIÇÕES DESTA PÁGINA, O REMETENTE ' +
                                 'DEVE NOS INFORMAR COM URGÊNCIA, PARA QUE POSSAMOS DISCUTIR O PROBLEMA COM SEU AGENTE NO BRASIL.'
     else if (IdiomaExporter = 'E') then s := 'SI LA COMPAÑÍA EMBARCADORA SE NIEGA A SEGUIR ALGUNAS INSTRUCCIONES DE ESTA PÁGINA, EL REMITENTE ' +
                                      'DEBE INFORMARNOS SIN DEMORA PARA QUE PODAMOS DISCUTIR EL PROBLEMA CON SU AGENTE EN BRAZIL.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 25.50;
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

   { ajustar propriedades para impressão do Conhecimento de Embarque }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$J$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$2';
     PrintTitleColumns := '';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := '';
     LeftFooter := '';
     LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
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
     Orientation := xlPortrait;
     Draft := False;
     PaperSize := xlPaperA4;
     FirstPageNumber := xlAutomatic;
     Order := xlDownThenOver;
     BlackAndWhite := False;
     Zoom := 95;
    end;

  { Salvar a planilha }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);

  Exportador.Close;
  Importador.Close;
  Transportadora.Close;

  { finalizar progress bar }
  btnComercialInvoice.Enabled := True;
  Ani.Terminate;
  btnBillLading.Enabled := True;  

 finally
   { Fechar planilha e encerrar excel }
   ExcelApplication.Quit;
   ExcelApplication.Disconnect;
 end;                                                                 
end;

procedure Tfr_ManNF.CommercialInvoiceHeader(Tipo: String);
Var
 s : String;
 i  : Real;
 ind : integer;
begin
   { Issuer - Dados do Exportador }
   LinhaAux := Linha;
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      if (IdiomaExporter = 'I') then
         Value2 := 'ISSUER :'
      else if (IdiomaExporter = 'P') then
         Value2 := 'EMISSOR:'
      else if (IdiomaExporter = 'E') then
         Value2 := 'EMISOR :';

      MergeCells := True;
    end;
    inc(Linha);
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Value2 := Exportadorraz_social.AsString;
      MergeCells := True;
    end;
    Endereco := TStringList.Create;
    Endereco.Text := Exportadorendereco.Value;
    Inc(Linha);
    for ind := 0 to Endereco.Count -1 do
    begin
      with ExcelWorkSheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
      begin
        s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
        i := (length(s) / 90);
        i := i + 1;
        Value2 := s;
        MergeCells := True;
        Font.Name := 'Arial';
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlNone;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        RowHeight := 15.75 * Int(i);
      end;
      Inc(Linha);
    end;
    FreeAndNil(Endereco);

    with ExcelWorksheet.Range['F1','L1'] do
    begin
      Value2 := Exportadorraz_social_reduz.AsString;
      MergeCells := True;
    end;

    with ExcelWorksheet.Range['F2','L' + IntToStr(Linha-2)] do
    begin
      Value2 := ' ';
      MergeCells := True;
    end;

    Dec(Linha);

    with ExcelWorksheet.Range['F' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      if (IdiomaExporter = 'I') then
          Value2 := 'COMMERCIAL INVOICE'
      else if (IdiomaExporter = 'P') then
          Value2 := 'FATURA COMERCIAL'
      else if (IdiomaExporter = 'E') then
          Value2 := 'FACTURA COMERCIAL';

      MergeCells := True;
    end;

   { Formatação do cabeçalho }
    with ExcelWorkSheet.Range['A' + IntToStr(LinhaAux),'L' + IntToStr(Linha)] do
    begin
      Font.Name := 'Arial';
      Font.Bold := True;
      Font.Size := 12;
      Font.ColorIndex := 50;
      Borders.LineStyle := xlNone;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Orientation := 0;
      AddIndent := False;
      IndentLevel := 0;
      ShrinkToFit := False;
      ReadingOrder := xlContext;

      With Borders[xlEdgeLeft] do
      begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
      end;

      With Borders[xlEdgeTop] do
      begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
      end;
      With Borders[xlEdgeBottom] do
      begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
      end;
      With Borders[xlEdgeRight] do
      begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
      end;
      with Borders[xlInsideVertical] do
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
    with ExcelWorksheet.Range['A1','E1'] do
    begin
      HorizontalAlignment := xlLeft;
    end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'L' + IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then
        Value2 := 'COMMERCIAL INVOICE NUMBER: '+ trim(nf_saida_complementonum_fatura.AsString)+' - SPECIFICATION PAGE'
     else if (IdiomaExporter = 'P') then
        Value2 := 'NÚMERO DA FATURA: '+ trim(nf_saida_complementonum_fatura.AsString)+' - PÁGINA DAS ESPECIFICAÇÕES'
     else if (IdiomaExporter = 'E') then
        Value2 := 'NÚMERO DE FACTURA: '+ trim(nf_saida_complementonum_fatura.AsString)+' - PÁGINA DE LAS ESPECIFICACIONES';


     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     if (Tipo = 'A') or (Tipo = '') then Font.ColorIndex := 0;
     if (Tipo = 'B') then Font.ColorIndex := 5;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders[xlEdgeBottom].LineStyle := xlContinuous;
     Borders[xlEdgeLeft].LineStyle := xlContinuous;
     Borders[xlEdgeTop].LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Linha := Linha + 1;

   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'L' + IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'DATE: '
     else if (IdiomaExporter = 'P') then s := 'DATA: '
     else if (IdiomaExporter = 'E') then s := 'FECHA: ';

     Value2 := s + FormatDateTime('DD/MM/YYYY', nota_fiscal_saidadat_emissao.AsDateTime);

     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders[xlEdgeBottom].LineStyle := xlContinuous;
     Borders[xlEdgeLeft].LineStyle := xlContinuous;
     Borders[xlEdgeTop].LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Borders[xlEdgeRight].LineStyle := xlContinuous;

   Linha := Linha + 1;

   with ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
   begin
     Value2 := nf_saida_complementolkcCondicaoVenda.AsString;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 9;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;                 
   end;

   Linha := Linha + 1;

   { Cabeçalho dos Produtos }
   if (IdiomaExporter = 'I') then
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SEQ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'ORDER NUMBER';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'SALES CONTRACT';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'CODE';
      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'PRODUCT DESCRIPTION';
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'PRODUCT IMAGE';
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'QUANTITY';
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'UNIT';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'INDIVIDUAL PRICE US$';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'TOTAL US$';
      //ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'NET WEIGHT OF EACH PIECE (Kg)';
   end else if (IdiomaExporter = 'P') then
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SEQ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'NÚMERO DO PEDIDO';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'CONTRATO DE VENDA';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'CÓDIGO DO PRODUTO';
      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'DESCRIÇÃO DO PRODUTO';
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'IMAGEM DO PRODUTO';
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'QTDE';
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'UN';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'PREÇO UNITÁRIO US$';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'TOTAL US$';
      //ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'PESO UNITÁRIO (Kg)';
   end else if (IdiomaExporter = 'E') then
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SEQ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'NÚMERO DE PEDIDO';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'CONTRATO DE VENTA';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'CÓDIGO DE PRODUCTO';
      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'DESCRIPCIÓN DEL PRODUCTO';
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'IMAGEM DEL PRODUCTO';
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'CANT.';
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'UN';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'PRECIO UNITARIO US$';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'TOTAL US$';
      //ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'PESO UNITARIO (Kg)';
   end;


   { Tamanho das colunas }
   ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 03.71;
   ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 15.43;
   ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 15.43;
   ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 14.43;
   ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 64.00;
   ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 14.00;
   ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 08.70;
   ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ColumnWidth := 08.00;
   ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ColumnWidth := 12.71;
   ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].ColumnWidth := 05.84;
   ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ColumnWidth := 04.14;
   ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ColumnWidth := 10.86;
   { formatação cabeçalho dos items }
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'L' + IntToStr(Linha)] do
   begin
      Font.Bold := True;
      Font.Size := 9;
      Font.Name := 'Arial';
      Interior.Pattern := xlSolid;
      Interior.ColorIndex := 14;
      Borders.LineStyle := xlContinuous;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
   end;

    Linha := Linha + 1;

    LinhaIni_Dados := Linha;

   { Fim cabeçalho }

end;

procedure Tfr_ManNF.CommercialInvoiceItens(Tipo: String);                     
var
  Seq, Altura : Integer;
  s,s1,s2, CodProduto, dirImagem, fileImagem : String;
begin
   { Commercial Invoice Itens }
   with produtos_xls do
   begin
     ParamByName('cod_empresa').Value     := nota_fiscal_saidacod_empresa.AsInteger ;
     ParamByName('num_nota_fiscal').Value := nota_fiscal_saidanum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString        := nota_fiscal_saidaserie.AsString;
     Open;
     Last;
     First;
     Seq := 1;
     While Not(EOF) do                                           
     begin
       { A - SEQ }
       ExcelWorkSheet.Cells.Item[Linha, 1].Value :=  Seq; { sequencia para o documento, não é a mesma da tabela }
       ExcelWorkSheet.Cells.Item[Linha, 1].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 1].VerticalAlignment := xlCenter;
       Inc(Seq);
       { B - ORDER NUMBER }
       ExcelWorkSheet.Cells.Item[Linha, 2].Value := trim(FieldByName('num_pedido_cli').AsString);
       ExcelWorkSheet.Cells.Item[Linha, 2].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 2].VerticalAlignment := xlCenter;
       { C - SALES CONTRACT }
       ExcelWorkSheet.Cells.Item[Linha, 3].Value := trim(FieldByName('num_pedido_for').AsString);
       ExcelWorkSheet.Cells.Item[Linha, 3].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 3].VerticalAlignment := xlCenter;
       { D - CODE OF ITEM }
       { Formata o Código do Produto no Cliente, conforme a máscara definida na tabela do cliente }
       ExcelWorkSheet.Cells.Item[Linha, 4].NumberFormat := '@';
       ExcelWorkSheet.Cells.Item[Linha, 4].Value := FmtProdutoCliente(nota_fiscal_saida.FieldByName('cod_cliente').AsString, FieldByName('cod_produto').AsString).fmtProduto;
       ExcelWorkSheet.Cells.Item[Linha, 4].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 4].VerticalAlignment := xlCenter;
       CodProduto := FieldByName('cod_produto').AsString;
       { E - PRODUCT (ENGLISH DESCRIPTION) }
       { OBTER DESCRIÇÕES DETALHADAS EM INGLÊS E PORTUGUÊS DO PRODUTO, GRUPO E NCM }
       with ProdutoDet(FieldByName('cod_produto').AsString, nota_fiscal_saidacod_cliente.AsString, nf_saida_complementocod_fornecedor.AsInteger, 'F') do
       begin
         s1 := Ingles;
         s2 := Portugues;

         if s1[Length(s1)] <> '.' then
            s1 := s1 + '.';

         s := s1 + ' ' + S2 + '. ('+ Grupo;

         if (Clientesncm_fatura.Value = 'S') then
            s := s + ', NCM: ' + NcmDoc;

         s := s + ')';


         with ExcelWorkSheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)] do
         begin
           Font.ColorIndex := CorNcm;
           Font.Bold := True;
         end;
       end;

       { Formatar descrição detalhada dos produtos }
       ExcelWorkSheet.Range['E'+IntToStr(Linha),'E'+IntToStr(Linha)].FormulaR1C1 := s;
       with ExcelWorksheet.Range['E'+IntToStr(Linha),'E'+IntToStr(Linha)].Characters[1,Length(s1)].Font do
       begin
         Size := 10;
         Bold := True;
         Name := 'Arial';
       end;

       with ExcelWorksheet.Range['E'+IntToStr(Linha),'E'+IntToStr(Linha)].Characters[Length(s1)+1,Length(s)].Font do
       begin
         Size := 10;
         Bold := False;
         Name := 'Arial';
       end;
       ExcelWorkSheet.Cells.Item[Linha, 5].WrapText := True;
       ExcelWorkSheet.Cells.Item[Linha, 5].ShrinkToFit := False;

       // Obter altura da linha
       Altura := ExcelWorkSheet.Range['E'+IntToStr(Linha),'E'+IntToStr(Linha)].RowHeight;

       { F - PRODUCT IMAGE }
       if (cbImages.Checked) then
       begin
         if Altura < 100 then
         begin
            CodProduto := StringReplace(CodProduto, '/', '-', [rfReplaceAll]);
            CodProduto := StringReplace(CodProduto, '\', '-', [rfReplaceAll]);

            fileImagem := dmCOM.GetFileImageProduto(nota_fiscal_saida.FieldByName('cod_cliente').AsString, CodProduto);

            { Altura padrão para a linha de descrição dos produtos, quando houver imagens }
            if FileExists(fileImagem) then
               ExcelWorkSheet.Range['E'+IntToStr(Linha),'E'+IntToStr(Linha)].RowHeight := 100;
         end;

         dirImagem := dmCOM.GetPathImageProduto(nota_fiscal_saida.FieldByName('cod_cliente').AsString);
         ExcelWorkSheet.Cells.Item[Linha, 6].FormulaR1C1 := '=GetImage("' + CodProduto + '","' + dirImagem + '")';
       end;
       { G - QUANTITY }
       ExcelWorkSheet.Cells.Item[Linha, 7].NumberFormat := '#.##0';
       ExcelWorkSheet.Cells.Item[Linha, 7].Value := FieldByName('qtd_produto').AsFloat;
       ExcelWorkSheet.Cells.Item[Linha, 7].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 7].VerticalAlignment := xlCenter;
       { H - UNIT }
       ExcelWorkSheet.Cells.Item[Linha, 8].Value := FieldByname('sigla_vol_i').AsString;
       ExcelWorkSheet.Cells.Item[Linha, 8].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 8].VerticalAlignment := xlCenter;
       { I - INDIVIDUAL PRICE US$ }
       ExcelWorkSheet.Cells.Item[Linha, 9].NumberFormat := '#.##0,000000';
       if (Tipo = 'A') or (Tipo = '') then
          ExcelWorkSheet.Cells.Item[Linha, 9].Value := FieldByName('vlr_unitario').AsFloat
       else
          ExcelWorkSheet.Cells.Item[Linha, 9].Value := FieldByName('vlr_unitario_esp').AsFloat;
       ExcelWorkSheet.Cells.Item[Linha, 9].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 9].VerticalAlignment := xlCenter;
       { J - PREÇO POR QUANTIDADE }
       ExcelWorkSheet.Cells.Item[Linha, 10].Value := '/'+FieldByName('sigla_i').AsString;
       ExcelWorkSheet.Cells.Item[Linha, 10].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 10].VerticalAlignment := xlCenter;
       { K - TIPO MOEDA }
       ExcelWorkSheet.Cells.Item[Linha, 11].Value := 'USD';
       ExcelWorkSheet.Cells.Item[Linha, 11].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 11].VerticalAlignment := xlCenter;
       { L - TOTAL US$ =ARRED(F*H;2)}
       ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';
       { 26.05.20 - retirada a fórmula do Excel por problemas com arredondamento }
       //ExcelWorkSheet.Cells.Item[Linha, 11].fORMULAr1c1 := '=ROUND(RC[-5]*RC[-3],2)';
       if (Tipo = 'A') or (Tipo = '') then
          ExcelWorkSheet.Cells.Item[Linha, 12].Value := FieldByName('vlr_liquido').AsFloat
       else
          ExcelWorkSheet.Cells.Item[Linha, 12].Value := FieldByName('vlr_liquido_esp').AsFloat;
       ExcelWorkSheet.Cells.Item[Linha, 12].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Cells.Item[Linha, 12].VerticalAlignment := xlCenter;
       //alinhamento vertical e horizontal dos dados
       ExcelWorksheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)].VerticalAlignment := xlCenter;
       ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].VerticalAlignment   := xlTop;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].WrapText            := True;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Orientation         := 0;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].AddIndent           := False;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].IndentLevel         := 0;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ShrinkToFit         := False;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ReadingOrder        := xlContext;
       ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].MergeCells          := False;
       ExcelWorksheet.Range['G' + IntToStr(Linha),'L' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
       ExcelWorksheet.Range['G' + IntToStr(Linha),'L' + IntToStr(Linha)].VerticalAlignment := xlCenter;
       //ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].VerticalAlignment := xlCenter;
       {bordas desde o cabeçalho até ultima linha}
       with ExcelWorkSheet.Range['A' + IntToStr(Linha),'L' + IntToStr(Linha)] do
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

       Linha := Linha + 1;
       Next;
     end;
     Close;
   end;
end;


procedure Tfr_ManNF.PackingListHeaderCommon(Tipo: String);
Var
  s : string;
  i : Real;
  ind : integer;
begin
   { Issuer - Dados do Exportador }
   LinhaAux := Linha;
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)] do
    begin
      if (IdiomaExporter = 'I') then
         Value2 := 'ISSUER :'
      else if (IdiomaExporter = 'P') then
         Value2 := 'EMISSOR:'
      else if (IdiomaExporter = 'E') then
         Value2 := 'EMISOR:';

      MergeCells := True;
    end;
    Inc(Linha);
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)] do
    begin
      Value2 := Exportadorraz_social.AsString;
      MergeCells := True;
    end;
    Endereco := TStringList.Create;
    Endereco.Text := Exportadorendereco.Value;
    Inc(Linha);
    for ind := 0 to Endereco.Count -1 do
    begin
      with ExcelWorkSheet.Range['A'+IntToStr(Linha),'I'+IntToStr(Linha)] do
      begin
        s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
        i := (length(s) / 90);
        i := i + 1;
        Value2 := s;
        MergeCells := True;
        Font.Name := 'Arial';
        Font.Size := 10;
        Interior.ColorIndex := 0;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        RowHeight := 15.75 * Int(i);
      end;
      Inc(Linha);
    end;
    FreeAndNil(Endereco);

    { Nome do Fornecedor }
    with ExcelWorksheet.Range['J1','R1'] do
    begin
      Value2 := Exportadorraz_social_reduz.AsString;
      MergeCells := True;
    end;

    with ExcelWorksheet.Range['J2','R' + IntToStr(Linha-2)] do
    begin
      Value2 := ' ';
      MergeCells := True;
    end;

    Dec(Linha);

    with ExcelWorksheet.Range['J' + IntToStr(Linha),'R' + IntToStr(Linha)] do
    begin
      if (IdiomaExporter = 'I') then
         Value2 := 'PACKING LIST'
      else if (IdiomaExporter = 'P') then
         Value2 := 'ROMANEIO DE CARGA'
      else if (IdiomaExporter = 'E') then
         Value2 := 'LISTA DE EMPAQUE';

      MergeCells := True;
    end;

   { Formatação do cabeçalho }
    with ExcelWorkSheet.Range['A' + IntToStr(LinhaAux),'R' + IntToStr(Linha)] do
    begin
      Font.Name := 'Arial';
      Font.Bold := True;
      Font.Size := 12;
      Font.ColorIndex := 50;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlTop;
      WrapText := True;
      Orientation := 0;
      AddIndent := False;
      IndentLevel := 0;
      ShrinkToFit := False;
      ReadingOrder := xlContext;

      Borders[xlDiagonalUp].LineStyle := xlNone;
      With Borders[xlEdgeLeft] do
      begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
      end;

      With Borders[xlEdgeTop] do
      begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
      end;
      With Borders[xlEdgeBottom] do
      begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
      end;
      With Borders[xlEdgeRight] do
      begin
        LineStyle := xlContinuous;
        Weight := xlMedium;
        ColorIndex := xlAutomatic;
      end;
      with Borders[xlInsideVertical] do
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

   ExcelWorksheet.Range['A1','I1'].HorizontalAlignment := xlLeft;

   Inc(Linha);
   LinhaAux := Linha;

   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'R' + IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then
        Value2 := 'PACKING LIST FOR THE INVOICE NUMBER '+ trim(nf_saida_complementonum_fatura.AsString)+' - SPECIFICATION PAGE'
     else if (IdiomaExporter = 'P') then
        Value2 := 'ROMANEIO DE CARGA DA FATURA NÚMERO '+ trim(nf_saida_complementonum_fatura.AsString)+' - PÁGINA DAS ESPECIFICAÇÕES'
     else if (IdiomaExporter = 'E') then
        Value2 := 'LISTA DE EMPAQUE DE LA FACTURA NÚMERO '+ trim(nf_saida_complementonum_fatura.AsString)+' - PÁGINA DE LAS ESPECIFICACIONES';

     Font.Bold := True;
     Font.Size := 9;
     if (Tipo = 'A') or (Tipo = '') then Font.ColorIndex := 0
                                    else Font.ColorIndex := 5;
     Font.Name := 'Arial';
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders[xlEdgeBottom].LineStyle := xlContinuous;
     Borders[xlEdgeLeft].LineStyle := xlContinuous;
     Borders[xlEdgeTop].LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Linha := Linha + 1;

   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'R' + IntToStr(Linha)] do
   begin
     { data de emissão da fatura }
     if (IdiomaExporter = 'I') then s := 'DATE: '
     else if (IdiomaExporter = 'P') then s := 'DATA: '
     else if (IdiomaExporter = 'E') then s := 'FECHA: ';
     Value2 := s + FormatDateTime('DD/MM/YYYY', nota_fiscal_saidadat_emissao.AsDateTime);
     Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders[xlEdgeBottom].LineStyle := xlContinuous;
     Borders[xlEdgeLeft].LineStyle := xlContinuous;
     Borders[xlEdgeTop].LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   Linha := Linha + 1;
   { condição de venda }
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'R' + IntToStr(Linha)] do
   begin
     Value2 := nf_saida_complementolkcCondicaoVenda.AsString;
     Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlCenter;
     WrapText := True;
     ShrinkToFit := False;
   end;

   { Formatação do cabeçalho inferior }
   with ExcelWorkSheet.Range['A' + IntToStr(LinhaAux),'R' + IntToStr(Linha)] do
   begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 12;
     Font.ColorIndex := 50;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     Orientation := 0;
     AddIndent := False;
     IndentLevel := 0;
     ShrinkToFit := False;
     ReadingOrder := xlContext;

     Borders[xlDiagonalUp].LineStyle := xlNone;
     With Borders[xlEdgeLeft] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
     end;
     With Borders[xlEdgeTop] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
     end;
     With Borders[xlEdgeBottom] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
     end;
     With Borders[xlEdgeRight] do
     begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
     end;
     with Borders[xlInsideVertical] do
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

   Linha := Linha + 1;
   ExcelWorkSheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)].Interior.ColorIndex := xlGreen;
end;

function Tfr_ManNF.PackingListHeaderPallets: integer;
begin
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)] do
   begin
     MergeCells := True;
     Value := 'PACKING INFORMATION OF THE PALLETS';
     Interior.ColorIndex := xlBlue;
     Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlCenter;
   end;

   with ExcelWorkSheet.Range['S' + IntToStr(Linha),'V' + IntToStr(Linha)] do
   begin
     MergeCells := True;
     Value := 'PACKING INFORMATION OF THE PALLETS';
     Interior.ColorIndex := xlBlue;
     Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlCenter;
   end;

   Inc(Linha);

   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)] do
   begin
     MergeCells := True;
     Interior.ColorIndex := xlBlue;
   end;

   ExcelWorkSheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value2 := 'PALLETS (QTY)';
   ExcelWorkSheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value2 := 'GROSS WEIGHT (Kg)';
   ExcelWorkSheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value2 := 'NET WEIGHT (Kg)';
   ExcelWorkSheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].Value2 := 'VOLUME (m³)';

   with ExcelWorkSheet.Range['S' + IntToStr(Linha),'V' + IntToStr(Linha)] do
   begin
      Font.Bold := True;
      Font.Size := 9;
      Font.Name := 'Arial';
      Interior.Pattern := xlSolid;
      Interior.ColorIndex := xlBlue;
      Borders.LineStyle := xlContinuous;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
   end;
   Inc(Linha);
   Result := Linha;
end;


procedure Tfr_ManNF.PackingListHeaderItems(bPallets, bCaixas: boolean);
Var
  s : string;
begin
   if ((bPallets = true) and (bCaixas = true)) then
   begin
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)] do
      begin
        s := 'PACKING INFORMATION OF THE LOOSE CARTONS';
        Value := s;
        Interior.ColorIndex := xlYellow;
        Font.Bold := True;
        Font.Size := 9;
        Font.Name := 'Arial';
        MergeCells := True;
        Borders.LineStyle := xlContinuous;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlCenter;
      end;
   end;

   with ExcelWorkSheet.Range['J' + IntToStr(Linha),'R' + IntToStr(Linha)] do
   begin
     if (bPallets = false) then
     begin
        if (IdiomaExporter = 'I') then s := 'PACKAGES INFORMATION'
        else if (IdiomaExporter = 'P') then s := 'INFORMAÇÕES SOBRE EMBALAGENS'
        else if (IdiomaExporter = 'E') then s := 'INFORMACIONES SOBRE EMBALAJES';
        Interior.ColorIndex := xlGreen;
     end;

     if ((bPallets = true) and (bCaixas = false)) then
     begin
        if (IdiomaExporter = 'I') then s := 'PACKING INFORMATION OF THE CARTONS'
        else if (IdiomaExporter = 'P') then s := 'INFORMAÇÕES SOBRE EMBALAGENS'
        else if (IdiomaExporter = 'E') then s := 'INFORMACIONES SOBRE EMBALAJES';
        Interior.ColorIndex := xlYellow;
     end;

     if ((bPallets = true) and (bCaixas = true)) then
     begin
        if (IdiomaExporter = 'I') then s := 'PACKING INFORMATION OF THE LOOSE CARTONS'
        else if (IdiomaExporter = 'P') then s := 'INFORMAÇÕES SOBRE EMBALAGENS'
        else if (IdiomaExporter = 'E') then s := 'INFORMACIONES SOBRE EMBALAJES';
        Interior.ColorIndex := xlYellow;
     end;

     Value := s;
     Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
     MergeCells := True;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlCenter;
   end;

   if ((bPallets = true) and (bCaixas = false))  then
   begin
      with ExcelWorkSheet.Range['S' + IntToStr(Linha),'V' + IntToStr(Linha)] do
      begin
         if      (IdiomaExporter = 'I') then Value := 'PACKING INFORMATION OF THE PALLETS'
         else if (IdiomaExporter = 'P') then Value := 'INFORMAÇÕES SOBRE PALLETS'
         else if (IdiomaExporter = 'E') then Value := 'INFORMACIONES SOBRE PALLETS';
         Interior.ColorIndex := xlBlue;
         Font.Name := 'Arial';
         Font.Bold := True;
         Font.Size := 9;
         MergeCells := True;
         Borders.LineStyle := xlContinuous;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
      end;
   end;

   Linha := Linha + 1;

   { Cabeçalho dos Produtos }
   if (IdiomaExporter = 'I') then
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'ORDER NUMBER';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'SALES CONTRACT NUMBER';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'CODE ITEM';
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'G' + IntToStr(Linha)] do
      begin
         Value2 := 'VOLUME NO.';
         MergeCells := True;
      end;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'DESCRIPTION OF THE PRODUCT';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'PRODUCT IMAGE';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'QUANTITY';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'UNIT';
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'TOTAL VOLUME IN M³';
      ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'TOTAL GROSS WEIGHT (Kg)';
      ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'NET WEIGHT OF EACH PIECE (Kg)';
      ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'TOTAL NET WEIGHT (Kg)';
      ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'TOTAL QUANTITY OF CARTONS';
      ExcelWorkSheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value2 := 'STANDARD QUANTITY OF UNITS INSIDE THE CARTON';
      ExcelWorkSheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value2 := 'GROSS WEIGHT OF 1 PACKAGE (Kg)';
      { PALLETS }
      if ((bPallets = true) and (bCaixas = false)) then
      begin
        ExcelWorkSheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value2 := 'PALLETS (QTY)';
        ExcelWorkSheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value2 := 'GROSS WEIGHT (Kg)';
        ExcelWorkSheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value2 := 'NET WEIGHT (Kg)';
        ExcelWorkSheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].Value2 := 'VOLUME (m³)';
      end;
      ExcelWorkSheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].Value2 := 'VOLUME OF 1 PACKAGE (m³)';
      ExcelWorkSheet.Range['X' + IntToStr(Linha),'X' + IntToStr(Linha)].Value2 := 'L(cm)';
      ExcelWorkSheet.Range['Y' + IntToStr(Linha),'Y' + IntToStr(Linha)].Value2 := 'W(cm)';
      ExcelWorkSheet.Range['Z' + IntToStr(Linha),'Z' + IntToStr(Linha)].Value2 := 'H(cm)';
   end else if (IdiomaExporter = 'P') then
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'NÚMERO PEDIDO';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'NÚMERO CONTRATO DE VENDA';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'CÓDIGO PRODUTO';
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'G' + IntToStr(Linha)] do
      begin
         Value2 := 'VOLUME NUM.';
         MergeCells := True;
      end;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'DESCRIÇÃO DO PRODUTO';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'IMAGEM DO PRODUTO';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'QTDE';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'UN';
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'VOLUME TOTAL EM m³';
      ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'PESO BRUTO TOTAL (Kg)';
      ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'PESO UNITÁRIO POR PEÇA (Kg)';
      ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'PESO LÍQUIDO TOTAL (Kg)';
      if (bPallets = true)
      then ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'QTDE TOTAL DE CAIXAS DE EXPORTAÇÃO'
      else ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'QTDE TOTAL DE EMBALAGENS';
      if (bPallets = true)
      then ExcelWorkSheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value2 := 'QTDES. PADRÃO POR CAIXA MASTER'
      else ExcelWorkSheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value2 := 'UNIDADES PADRÃO DENTRO DA EMBALAGEM';
      ExcelWorkSheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value2 := 'PESO BRUTO DE UMA CAIXA (Kg)';
      { PALLETS }
      if ((bPallets = true) and (bCaixas = false)) then
      begin
        ExcelWorkSheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value2 := 'PALLETS (QTDE)';
        ExcelWorkSheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value2 := 'PESO BRUTO (Kg)';
        ExcelWorkSheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value2 := 'PESO LÍQUIDO (Kg)';
        ExcelWorkSheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value2 := 'VOLUME (m³)';
      end;
      ExcelWorkSheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].Value2 := 'VOLUME DE 1 CAIXA (m³)';
      ExcelWorkSheet.Range['X' + IntToStr(Linha),'X' + IntToStr(Linha)].Value2 := 'C(cm)';
      ExcelWorkSheet.Range['Y' + IntToStr(Linha),'Y' + IntToStr(Linha)].Value2 := 'L(cm)';
      ExcelWorkSheet.Range['Z' + IntToStr(Linha),'Z' + IntToStr(Linha)].Value2 := 'A(cm)';
   end else if (IdiomaExporter = 'E') then
   begin
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := ' ';
      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'NÚMERO DE PEDIDO';
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'NÚMERO DE CONTRATO DE VENTA';
      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'CÓDIGO PRODUCTO';
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'G' + IntToStr(Linha)] do
      begin
         Value2 := 'VOLUMEN NO.';
         MergeCells := True;
      end;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'DESCRIPCIÓN DEL PRODUCTO';
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'IMAGEM DEL PRODUCTO';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'CANT.';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'UN';
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'VOLUMEN TOTAL EM m³';
      ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'PESO BRUTO TOTAL (Kg)';
      ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'PESO UNITARIO POR PIEZA (Kg)';
      ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'PESO NETO TOTAL (Kg)';
      if (bPallets = true)
      then ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'CANT. TOTAL DE CAJAS DE EXPORTACION'
      else ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'CANT. TOTAL DE EMBALAJES';
      if (bPallets = true)
      then ExcelWorkSheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value2 := 'CANT. STANDARD POR CAJA MASTER'
      else ExcelWorkSheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value2 := 'UNIDAD STANDARD DENTRO DEL EMBALAJE';
      ExcelWorkSheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value2 := 'PESO BRUTO DE UNA CAJA (Kg)';
      { PALLETS }
      if ((bPallets = true) and (bCaixas = false)) then
      begin
        ExcelWorkSheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value2 := 'PALLETS (QTDE)';
        ExcelWorkSheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value2 := 'PESO BRUTO (Kg)';
        ExcelWorkSheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value2 := 'PESO NETO (Kg)';
        ExcelWorkSheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].Value2 := 'VOLUMEN (m³)';
      end;
      ExcelWorkSheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].Value2 := 'VOLUMEN DE 1 CAJA (m³)';
      ExcelWorkSheet.Range['X' + IntToStr(Linha),'X' + IntToStr(Linha)].Value2 := 'C(cm)';
      ExcelWorkSheet.Range['Y' + IntToStr(Linha),'Y' + IntToStr(Linha)].Value2 := 'L(cm)';
      ExcelWorkSheet.Range['Z' + IntToStr(Linha),'Z' + IntToStr(Linha)].Value2 := 'A(cm)';
   end;

   { Tamanho das colunas }
   ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 03.45;
   ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 13.43;
   ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 13.43;
   ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 14.00;
   ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 04.29;
   ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 00.67;
   ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 04.29;
   ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ColumnWidth := 70.00;
   ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ColumnWidth := 14.00;
   ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].ColumnWidth := 08.43;
   ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ColumnWidth := 05.86;
   ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ColumnWidth := 07.14;
   ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].ColumnWidth := 09.14;
   ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].ColumnWidth := 07.57;
   ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].ColumnWidth := 09.14;
   ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].ColumnWidth := 09.00;
   ExcelWorkSheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].ColumnWidth := 11.71;
   ExcelWorkSheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].ColumnWidth := 10.00;

   ExcelWorkSheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].ColumnWidth := 07.71;
   ExcelWorkSheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].ColumnWidth := 09.14;
   ExcelWorkSheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].ColumnWidth := 09.14;
   ExcelWorkSheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].ColumnWidth := 07.14;


   ExcelWorkSheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].ColumnWidth := 08.00;
   ExcelWorkSheet.Range['X' + IntToStr(Linha),'X' + IntToStr(Linha)].ColumnWidth := 05.57;
   ExcelWorkSheet.Range['Y' + IntToStr(Linha),'Y' + IntToStr(Linha)].ColumnWidth := 05.57;
   ExcelWorkSheet.Range['Z' + IntToStr(Linha),'Z' + IntToStr(Linha)].ColumnWidth := 05.57;

   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'Z' + IntToStr(Linha)] do
   begin
      Font.Bold := True;
      Font.Size := 9;
      Font.Name := 'Arial';
      Interior.Pattern := xlSolid;
      Interior.ColorIndex := xlGreen;
      Borders.LineStyle := xlContinuous;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
   end;

   if ((bPallets = true) and (bCaixas = true)) then
      ExcelWorkSheet.Range['S' + IntToStr(Linha),'V' + IntToStr(Linha)].Interior.ColorIndex := xlAutomatic;

   Linha := Linha + 1;
   LinhaIni_Dados := Linha;
end;


function Tfr_ManNF.PackingListItens(Pallets: boolean): boolean;
var
  cont, SeqEmbEsp, SeqPallet, LinIniPallet, LinIniEmbEsp, Altura : Integer;
  s,s1,s2, EmbEsp, CodProduto, dirImagem, fileImagem : String;
  Med  : String;
begin
   { Produtos da Fatura - selecionar todos os produtos da fatura, inclusive com embalagens especiais }
   with produtos_pkl do
   begin
     SQL.Clear;
     SQL.Add('select                                                                                                    ');
     SQL.Add('   a."seq_pkl", a."num_sequencia", a."cod_produto", f."num_pedido_cli", f."num_pedido_for",               ');
     SQL.Add('   a."qtd_produto", a."qtd_export_box", a."vol_caixas", a."pes_bruto", a."pes_liquido",                   ');
     SQL.Add('   a."seq_emb_esp", a."ies_emb_esp",                                                                      ');
     SQL.Add('   a."seq_pallet", a."qtd_pallet", a."pes_bruto_pallet", a."pes_liquido_pallet",                          ');
     SQL.Add('   a."comprimento_pallet", a."largura_pallet", a."altura_pallet", a."volume_pallet",                      ');
     SQL.Add('   e."sigla_i", e."sigla_vol_i", d."pes_unitario", d."ncm_cod", d."dat_cad_peso", d."obs_peso_unitario"   ');
     SQL.Add('from "nota_fiscal_saida_produto" a, "produto" d, "medida" e, "pedido_complemento" f                       ');
     SQL.Add('where a."cod_empresa" = :cod_empresa                                                                      ');
     SQL.Add('  and a."num_nota_fiscal" = :num_nota_fiscal                                                              ');
     SQL.Add('  and a."serie" = :serie                                                                                  ');
     if not(Pallets) then
        SQL.Add('  and a."seq_pallet" is null                                                                              ')
     else
        SQL.Add('  and a."seq_pallet" is not null                                                                          ');
     SQL.Add('  and d."cod_empresa" = a."cod_empresa"                                                                   ');
     SQL.Add('  and d."cod_produto" = a."cod_produto"                                                                   ');
     SQL.Add('  and e."cod_uni_medida" = d."cod_uni_medida"                                                             ');
     SQL.Add('  and f."cod_empresa" = a."cod_empresa"                                                                   ');
     SQL.Add('  and f."num_pedido" = a."num_pedido"                                                                     ');
     SQL.Add('order by "seq_pkl"                                                                                        ');

     ParamByName('cod_empresa').Value     := nota_fiscal_saidacod_empresa.AsInteger ;
     ParamByName('num_nota_fiscal').Value := nota_fiscal_saidanum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString        := nota_fiscal_saidaserie.AsString;
     Open;

     Result := Not(isEmpty);

     Last;
     First;

     SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
     SeqPallet := FieldByName('seq_pallet').AsInteger;
     LinIniPallet := Linha;
     EmbEsp := FieldByName('ies_emb_esp').AsString;
     if (EmbEsp = 'S') then LinIniEmbEsp := Linha;

     { inicio da leitura dos items  }
     While Not(EOF) do
     begin
       { selecionar embalagens especiais pela sequencia da embalagem }
       with emb_esp_fat do
       begin
         Close;
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
         ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
         ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
         ParamByName('seq_emb').AsInteger := SeqEmbEsp;
         Open;
       end;

       Med := '';
       if (EmbEsp = 'N') then  // item normal
       begin
         with embalagem do
         begin
           Close;
           ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
           ParamByName('cod_produto').AsString := produtos_pkl.FieldByname('cod_produto').AsString;
           Open;
           if Not(IsEmpty) then
           begin
             { Comentários sobre as medidas das caixas - dimensões da embalagem do produto }
             Med := FormatFloat('L ##0.0', embalagemprofundidade.AsFloat) + ' x ' +
                    FormatFloat('W ##0.0', embalagemlargura.AsFloat) + ' x ' +
                    FormatFloat('H ##0.0', embalagemaltura.AsFloat) + ' cm, updated on '+
                    FormatDateTime('DD.MM.YY', embalagemdat_cad_dimensoes.AsDateTime) + ', ' +
                    StringReplace(embalagemobservacao.AsString, #13#10, ' ', [rfReplaceAll]);
           end;
         end;
       end else  // dimensões da caixa especial
         Med := FormatFloat('L ##0.0', emb_esp_fatprofundidade.AsFloat) + ' x ' +
                FormatFloat('W ##0.0', emb_esp_fatlargura.AsFloat) + ' x ' +
                FormatFloat('H ##0.0', emb_esp_fataltura.AsFloat) + ' cm.';



       { A - SEQ }
       with ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)] do
       begin
          Value := Seq;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { B - ORDER NUMBER }
       with ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)] do
       begin
          Value := trim(FieldByName('num_pedido_cli').AsString);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { C - SALES CONTRACT NUMBER }
       with ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)] do
       begin
          Value := trim(FieldByName('num_pedido_for').AsString);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { D - CODE OF ITEM }
       with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
       begin
          NumberFormat := '@';
          Value := FmtProdutoCliente(nota_fiscal_saida.FieldByName('cod_cliente').AsString, FieldByName('cod_produto').AsString).fmtProduto;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       CodProduto := FieldByName('cod_produto').AsString;

       { E - CARTON NUMBER INITIAL }
       with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
       begin
          if ((EmbEsp = 'N') or ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0))) then
             Value := 1;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { F - TRACE }
       with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
       begin
          if ((EmbEsp = 'N') or ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0))) then
             Value := '-';
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { G - CARTON NUMBER FINAL }
       with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
       begin
          if ((EmbEsp = 'N') or ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0))) then
             Value := FieldByName('qtd_export_box').AsInteger;

          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { H - OBTER DESCRIÇÕES DETALHADAS EM INGLÊS E PORTUGUÊS DO PRODUTO, GRUPO E NCM }
       with ProdutoDet(FieldByName('cod_produto').AsString, nota_fiscal_saidacod_cliente.AsString, nf_saida_complementocod_fornecedor.AsInteger, 'L') do
       begin
         s1 := Ingles;
         s2 := Portugues;

         if s1[Length(s1)] <> '.' then
            s1 := s1 + '.';

         s := s1 + ' ' + S2 + '. ('+ Grupo;

         if (Clientesncm_pack_list.Value = 'S') then
            s := s + ', NCM: ' + NcmDoc;

         s := s + ')';


         with ExcelWorkSheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)] do
         begin
           Font.ColorIndex := CorNcm;
           Font.Bold := True;
         end;

       end;

       ExcelWorkSheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].FormulaR1C1 := s;
       with ExcelWorksheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].Characters[1,Length(s1)].Font do
       begin
         Name := 'Arial';
         Bold := True;
         Size := 08;
         Strikethrough := False;
         Superscript := False;
         Subscript := False;
         OutlineFont := False;
         Shadow := False;
         Underline := xlUnderlineStyleNone;
         ColorIndex := xlAutomatic;
       end;

       with ExcelWorksheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].Characters[Length(s1)+1,Length(s)].Font do
       begin
         Name := 'Arial';
         Bold := False;
         Size := 08;
         Strikethrough := False;
         Superscript := False;
         Subscript := False;
         OutlineFont := False;
         Shadow := False;
         Underline := xlUnderlineStyleNone;
         ColorIndex := xlAutomatic;
       end;

       // Obter altura da linha
       Altura := ExcelWorkSheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].RowHeight;

       { I - PRODUCT IMAGE }
       if (cbImages.Checked) then
       begin
         if Altura < 100 then
         begin
            CodProduto := FieldByName('cod_produto').AsString;
            CodProduto := StringReplace(CodProduto, '/', '-', [rfReplaceAll]);
            CodProduto := StringReplace(CodProduto, '\', '-', [rfReplaceAll]);

            fileImagem := dmCOM.GetFileImageProduto(nota_fiscal_saida.FieldByName('cod_cliente').AsString, CodProduto);

            { Altura padrão para a linha de descrição dos produtos, quando houver imagens }
            if FileExists(fileImagem) then
               ExcelWorkSheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)].RowHeight := 100;
         end;

         dirImagem := dmCOM.GetPathImageProduto(nota_fiscal_saida.FieldByName('cod_cliente').AsString);
         ExcelWorkSheet.Cells.Item[Linha, 9].FormulaR1C1 := '=GetImage("' + CodProduto + '","' + dirImagem + '")';
       end;

       { J - QUANTITY }
       with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
       begin
          NumberFormat := '#.##0';
          Value := FieldByName('qtd_produto').AsFloat;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { K - UNIT }
       with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
       begin
          if ((EmbEsp = 'N') or ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0))) then
             Value := FieldByname('sigla_vol_i').AsString;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { L - TOTAL VOLUME IN m³ }
       with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
       begin
          NumberFormat := VolumeNumberFormat;

          if ((EmbEsp = 'N') or ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0))) then
          begin
             FormulaR1C1 := '=ROUND(RC[4]*RC[11],' + VolumeDecimais + ')';
            if Med <> '' then
            begin
              AddComment(Med);
              Comment.Visible := False; // mostrar quando por em foco com o mouse
            end;
          end;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { M - TOTAL GROSS WEIGHT (Kg) }
       with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
       begin
          NumberFormat := '##0,00';

          if (EmbEsp = 'N') then
          begin
            FormulaR1C1 := '=ROUND(((RC[5]-(RC[1]*RC[4]))*RC[3])+(RC[-3]*RC[1]),2)';
            AddComment('Gross weight of master carton: ' + FormatFloat('##,##0.00 kg',embalagem.FieldByName('pes_bruto_cx').AsFloat));
            Comment.Visible := False;
           end
          else if ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0)) then
                  Value := emb_esp_fatpes_bruto.AsFloat;
       end;

       { N - NET WEIGHT OF EACH PIECE (Kg) }
       with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
       begin
          NumberFormat := '##0,0000';
          if (EmbEsp = 'N' ) then Value := produtos_pkl.FieldByName('pes_unitario').AsFloat;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { O - TOTAL NET WEIGHT }
       with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
       begin
          NumberFormat := '#.##0,00';
          if (EmbEsp = 'N') then begin
             FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
             AddComment('Net weight of the piece: ' + FormatFloat('##0.0000', produtos_pkl.FieldByName('pes_unitario').AsFloat) + ' Kg updated on ' +
                                                      FormatDateTime('DD.MM.YY', produtos_pkl.FieldByName('dat_cad_peso').AsDateTime) +  ', ' +
                                                      StringReplace(produtos_pkl.FieldByName('obs_peso_unitario').AsString, #13#10, ' ', [rfReplaceAll]));
             Comment.Visible := False;
          end
          else if ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0)) then
                  Value := emb_esp_fatpes_liquido.AsFloat;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { P - TOTAL QUANTITY OF CARTONS }
       with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
       begin
          NumberFormat := '#.##0';
          if ((EmbEsp = 'N') or ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0))) then
             Value := FieldByName('qtd_export_box').AsFloat;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       { Q - QUANTITY OF UNITS INSIDE THE CARTON }
       if (EmbEsp = 'N') then
       begin
         with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,0';
            Value := embalagemqtd_master.AsFloat;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            AddComment('Quantity master box: ' + embalagemqtd_master.AsString + ' units updated on '
                                               + FormatDateTime('DD.MM.YY',embalagemdat_cad_master.AsDateTime) + '; '
                                               + 'Quantity in inner box: '
                                               + embalagemqtd_inner.AsString  + ' units updated on '
                                               + FormatDateTime('DD.MM.YY', embalagemdat_cad_master.AsDateTime) + ', '
                                               + StringReplace(embalagemobs_caixas.AsString, #13#10, ' ', [rfReplaceAll]));
            Comment.Visible := False; // mostrar quando por em foco com o mouse
         end;
       end;

       { R - GROSS WEIGHT OF 1 PACKAGES (Kg) }
       with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
       begin
          NumberFormat := '##0,00';
          if (EmbEsp = 'N') then Value := embalagem.FieldByName('pes_bruto_cx').AsFloat
          else if  ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0)) then
                    Value := emb_esp_fatpes_bruto_cx.AsFloat;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
       end;

       if (nota_fiscal_saidaies_pallets.AsString = 'S') then
       begin
         if ((produtos_pklseq_pallet.AsInteger > 0) and (produtos_pklqtd_pallet.AsInteger > 0)) then
         begin
          { S - QUANTITY OF PALLETS }
          with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
          begin
             NumberFormat := '#.##0';
             Value := FieldByName('qtd_pallet').AsInteger;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
          end;
          { T - PALLET GROSS WEIGHT }
          with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
          begin
             NumberFormat := '#.##0,00';
             Value := FieldByName('pes_bruto_pallet').AsFloat;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
          end;
          { U - PALLET NET WEIGHT }
          with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
          begin
             NumberFormat := '#.##0,00';
             Value := FieldByName('pes_liquido_pallet').AsFloat;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
          end;
          { V - PALLET VOLUME }
          with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
          begin
             NumberFormat := '#.##0,000';
             Value := FieldByName('volume_pallet').AsFloat;
             AddComment(FormatFloat('L ##0.0', FieldByName('comprimento_pallet').AsFloat) + ' x ' +
                         FormatFloat('W ##0.0', FieldByName('largura_pallet').AsFloat) + ' x ' +
                         FormatFloat('H ##0.0', FieldByName('altura_pallet').AsFloat) + ' cm.');
             Comment.Visible := False;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlCenter;
          end;
         end;
       end;
       { W - VOLUME OF 1 PACKAGE (m³) }
       with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
       begin
         NumberFormat := '#.##0,0000';
         if ((EmbEsp = 'N') or ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0))) then
            FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
       end;
       { X - Comprimento }
       with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
       begin
         NumberFormat := '#.##0,0';
         if (EmbEsp = 'N') then Value := embalagemprofundidade.AsFloat
         else if ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0)) then
                 Value := emb_esp_fatprofundidade.AsFloat;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
       end;
       { Y - Largura }
       with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
       begin
         NumberFormat := '#.##0,0';
         if (EmbEsp = 'N') then Value := embalagemlargura.AsFloat
         else if ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0)) then
                 Value := emb_esp_fatlargura.AsFloat;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
       end;
       { Z - Altura }
       with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
       begin
         NumberFormat := '#.##0,0';
         if (EmbEsp = 'N') then Value := embalagemaltura.AsFloat
         else if ((EmbEsp = 'S') and (FieldByName('qtd_export_box').AsInteger > 0)) then
                 Value := emb_esp_fataltura.AsFloat;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
       end;

       //alinhamento vertical e horizontal dos dados
       ExcelWorksheet.Range['A' + IntToStr(Linha),'G' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
       ExcelWorkSheet.Range['A' + IntToStr(Linha),'G' + IntToStr(Linha)].VerticalAlignment := xlCenter;
       ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].HorizontalAlignment := xlJustify;
       ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].VerticalAlignment := xlTop;
       ExcelWorksheet.Range['I' + IntToStr(Linha),'Z' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
       ExcelWorksheet.Range['I' + IntToStr(Linha),'Z' + IntToStr(Linha)].VerticalAlignment := xlCenter;

      { bordas na linha do item }
       with ExcelWorkSheet.Range['A' + IntToStr(Linha),'Z' + IntToStr(Linha)] do
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
       ExcelWorksheet.Range['E' + IntToStr(Linha),'G' + IntToStr(Linha+2)].Borders[xlInsideVertical].LineStyle := xlNone;
       Next;
       { mesclar células de embalagens especiais }
       if (produtos_pkl.FieldByName('seq_emb_esp').AsInteger <> SeqEmbEsp) then
       begin
         if (SeqEmbEsp > 0) then
         begin
            with ExcelWorkSheet.Range['E'+IntToStr(LinIniEmbEsp),'E'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['F'+IntToStr(LinIniEmbEsp),'F'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['G'+IntToStr(LinIniEmbEsp),'G'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
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
            with ExcelWorkSheet.Range['Q'+IntToStr(LinIniEmbEsp),'Q'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['R'+IntToStr(LinIniEmbEsp),'R'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            { Formatar as colunas dos Pallets, para o caso da emb esp não estar no pallet }
            with ExcelWorkSheet.Range['S'+IntToStr(LinIniEmbEsp),'S'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['T'+IntToStr(LinIniEmbEsp),'T'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['U'+IntToStr(LinIniEmbEsp),'U'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['V'+IntToStr(LinIniEmbEsp),'V'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['W'+IntToStr(LinIniEmbEsp),'W'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['X'+IntToStr(LinIniEmbEsp),'X'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['Y'+IntToStr(LinIniEmbEsp),'Y'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['Z'+IntToStr(LinIniEmbEsp),'Z'+IntToStr(Linha)] do
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
            with ExcelWorkSheet.Range['E'+IntToStr(LinIniEmbEsp),'E'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['F'+IntToStr(LinIniEmbEsp),'F'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['G'+IntToStr(LinIniEmbEsp),'G'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
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
            with ExcelWorkSheet.Range['Q'+IntToStr(LinIniEmbEsp),'Q'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['R'+IntToStr(LinIniEmbEsp),'R'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            { Formatar as colunas dos Pallets, para o caso da emb esp não estar no pallet }
            with ExcelWorkSheet.Range['S'+IntToStr(LinIniEmbEsp),'S'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['T'+IntToStr(LinIniEmbEsp),'T'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['U'+IntToStr(LinIniEmbEsp),'U'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['V'+IntToStr(LinIniEmbEsp),'V'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['W'+IntToStr(LinIniEmbEsp),'W'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['X'+IntToStr(LinIniEmbEsp),'X'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['Y'+IntToStr(LinIniEmbEsp),'Y'+IntToStr(Linha)] do
            begin
              MergeCells := True;
              Interior.ColorIndex := 0;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              WrapText := True;
              ShrinkToFit := False;
            end;
            with ExcelWorkSheet.Range['Z'+IntToStr(LinIniEmbEsp),'Z'+IntToStr(Linha)] do
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
       { meclar células de pallets }
       if (nota_fiscal_saidaies_pallets.AsString = 'S') then
       begin
          if (produtos_pkl.FieldByname('seq_pallet').AsInteger <> SeqPallet) then
          begin
           if (SeqPallet > 0) then
           begin
             with ExcelWorkSheet.Range['S'+IntToStr(LinIniPallet),'S'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 0;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
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
           end;
           SeqPallet := FieldByName('seq_pallet').AsInteger;
           LinIniPallet := Linha + 1;
          end;
          if (produtos_pkl.EOF) then
          begin
           if (SeqPallet > 0) then
           begin
             with ExcelWorkSheet.Range['S'+IntToStr(LinIniPallet),'S'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 0;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
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
           end;
          end;
       end;
       Linha := Linha + 1;
       Inc(Seq);
     end;  { while NOT(EOF) produtos_pkl }
     Close;
   end;
end;


function Tfr_ManNF.NumToLetters(Number: Real): string;

  function RecurseNumber(N: LongWord): string;
  begin
    {Inc(Calls);} //Use to keep track of the number of recursive calls
    case N of
      1..19:
        Result := Numbers[N];
      20..99:
        Result := Tenths[N div 10] + ' ' + RecurseNumber(N mod 10);
      100..999:
        Result := Numbers[N div 100] + ' hundred ' + RecurseNumber(N mod 100);
      1000..999999:
        Result := RecurseNumber(N div 1000) + ' thousand ' +
          RecurseNumber(N mod 1000);
      1000000..999999999: Result := RecurseNumber(N div 1000000) + ' million '
        + RecurseNumber(N mod 1000000);
      1000000000..4294967295: Result := RecurseNumber(N div 1000000000) +
        ' billion ' + RecurseNumber(N mod 1000000000);
    end; {Case N of}
  end; {RecurseNumber}

begin
  {Calls := 0;} //Use to keep track of the number of recursive calls
  if (Number >= Min) and (Number <= Max) then
    begin
      Result := RecurseNumber(Round(Int(Number)));
      if FlagDollar then
         Result := Result + ' DOLLARS';
      {Added for cents in a currency value}
      if not(Frac(Number) = 0.00) then
        Result := Result +  ' AND ' + IntToStr(Round(Frac(Number) * 100)) +
          ' CENTS';
    end
  else
    raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',
      [Number, Min, Max]);
end;{NumToLetters}


procedure Tfr_ManNF.nota_fiscal_saida_produtocod_prod_fornecGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  { Formata o Código do Produto no fornecedor, conforme a máscara }
  { definida na tabela fornecedor                                 }
  { Obtém desta tabela também o tamanho do campo para o Código    }
  { do Produto no fornecedor                                      }
  if Sender.AsString = '' then Exit;
  with FmtProdutoFornecedor(nf_saida_complementocod_fornecedor.AsInteger, Sender.AsString) do
  begin
    Text := fmtProduto;
  end;
end;

procedure Tfr_ManNF.nf_containerNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('cod_empresa').AsInteger := nota_fiscal_saidacod_empresa.AsInteger;
  DataSet.FieldByname('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
  DataSet.FieldByName('serie').AsString  := nota_fiscal_saidaserie.AsString;
end;

procedure Tfr_ManNF.nf_containerAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManNF.nf_containerAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManNF.nf_containerqtd_containerValidate(Sender: TField);
begin
  if Sender.Value <= 0 then
  begin
     Application.MessageBox('Quantidade de containers, deve ser maior que zero', 'Erro', MB_ICONERROR+MB_OK);
     Abort;
  end;

  { calcular novos pesos e volume, em função da nova quantidade de containers }
  nf_containerarea_total.AsFloat := Sender.AsInteger * Containersarea_disp.AsFloat;
  nf_containerpeso_total.AsFloat := Sender.AsInteger * Containerspeso_maximo.AsFloat;
end;
                                                                             
procedure Tfr_ManNF.JvDBUltimGrid2Enter(Sender: TObject);
begin
	Application.OnMessage := nil;
end;

procedure Tfr_ManNF.JvDBUltimGrid2Exit(Sender: TObject);
begin
	Application.OnMessage := fr_Menu.ProcessaMsg;
  if nf_container.State in [dsEdit, dsInsert] then
     nf_container.Post;
end;

procedure Tfr_ManNF.nf_containercod_containerValidate(Sender: TField);
begin
  { calcular novos pesos e volume, em função da nova quantidade de containers }
  nf_containerarea_total.AsFloat := nf_containerqtd_container.AsInteger  * Containersarea_disp.AsFloat;
  nf_containerpeso_total.AsFloat := nf_containerqtd_container.AsInteger * Containerspeso_maximo.AsFloat;
end;

procedure Tfr_ManNF.act_F7Execute(Sender: TObject);
begin
  pgcNF.ActivePage := tsBlCombinado;
  AbrirBlCombinado;
end;

procedure Tfr_ManNF.nf_saida_complementonum_faturaValidate(Sender: TField);
begin
   if Sender.Text = '' then exit;
   if dmCOM.ChecarNF(Sender.Text, 'F') then
   begin
     Application.MessageBox('Número de Fatura já existe no sistema', 'Erro', MB_OK+MB_ICONERROR);
     Abort;
   end;
end;

procedure Tfr_ManNF.nf_saida_complementonum_ref_volumeValidate(
  Sender: TField);
begin
   if Sender.Text = '' then exit;
   if dmCOM.ChecarNF(Sender.Text, 'V') then                         
   begin
     Application.MessageBox('Número de Referência de Volume já existe no sistema', 'Erro', MB_OK+MB_ICONERROR);
     Abort;
   end;
end;

procedure Tfr_ManNF.nota_fiscal_saidaCalcFields(DataSet: TDataSet);
begin
    if nota_fiscal_saidaies_situacao.AsString = 'N' then
      DataSet.FieldByName('calies_situacao').AsString := 'Aberta'
    else
    if nota_fiscal_saidaies_situacao.AsString = 'F' then
      DataSet.FieldByName('calies_situacao').AsString := 'Fechada'
    else
    if nota_fiscal_saidaies_situacao.AsString = 'C' then
      DataSet.FieldByName('calies_situacao').AsString := 'Cancelada'
    else
    if nota_fiscal_saidaies_situacao.AsString = 'S' then
      DataSet.FieldByName('calies_situacao').AsString := 'Simulação'
    else
    if nota_fiscal_saidaies_situacao.AsString = 'L' then
      DataSet.FieldByName('calies_situacao').AsString := 'Liquidada'
end;

procedure Tfr_ManNF.emb_especial_fatAfterScroll(DataSet: TDataSet);
begin
  if emb_especial_item_fat.State in [dsEdit, dsInsert] then Exit;
  with emb_especial_item_fat do
  begin
   Close;
   ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
   ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
   ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
   ParamByName('seq').AsInteger := emb_especial_fatseq.AsInteger;
   Open;
  end;
end;


procedure Tfr_ManNF.GroupBox7Enter(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfr_ManNF.GroupBox7Exit(Sender: TObject);                   
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
end;

procedure Tfr_ManNF.emb_especial_item_fatAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManNF.emb_especial_item_fatAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManNF.emb_especial_fatAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;


procedure Tfr_ManNF.emb_especial_fatAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManNF.emb_especial_fatBeforeDelete(DataSet: TDataSet);
begin
  emb_especial_item_fat.First;
  while Not(emb_especial_item_fat.Eof) do
    emb_especial_item_fat.Delete;
end;

procedure Tfr_ManNF.nota_fiscal_saida_produtocod_produtoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  { Formata o Código do Produto no Cliente, conforme a máscara }
  { definida na tabela dos clientes                            }
  { Obtém desta tabela também o tamanho do campo para o Código }
  { do Produto no Cliente                                      }
  if Sender.AsString = '' then Exit;
  with FmtProdutoCliente(nota_fiscal_saidacod_cliente.AsString, Sender.AsString) do
  begin
    Text := fmtProduto;
  end;

end;

procedure Tfr_ManNF.emb_especial_item_fatcod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  { Formata o Código do Produto no Cliente, conforme a máscara }
  { definida na tabela de clientes                             }
  { Obtém desta tabela também o tamanho do campo para o Código }
  { do Produto no Cliente                                      }
  if Sender.AsString = '' then Exit;
  with FmtProdutoCliente(nota_fiscal_saidacod_cliente.AsString, Sender.AsString) do
  begin
    Text := fmtProduto;
  end;

end;

procedure Tfr_ManNF.nota_fiscal_saida_produtoCalcFields(DataSet: TDataSet);
begin
   with ProdutoDet(DataSet.FieldByName('cod_produto').AsString, nota_fiscal_saidacod_cliente.AsString,
                        nf_saida_complementocod_fornecedor.AsInteger) do
        DataSet.FieldByName('calDenProduto').AsString := Portugues;
end;

procedure Tfr_ManNF.emb_especial_item_fatCalcFields(DataSet: TDataSet);
begin
   with ProdutoDet(DataSet.FieldByName('cod_produto').AsString, nota_fiscal_saidacod_cliente.AsString,
                        nf_saida_complementocod_fornecedor.AsInteger) do
        DataSet.FieldByName('calDenProduto').AsString := Portugues;
end;

procedure Tfr_ManNF.Panel4Enter(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfr_ManNF.Panel4Exit(Sender: TObject);
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
end;

procedure Tfr_ManNF.edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    nota_fiscal_saida_produto.DisableControls;
    if Des <> Ant then
    begin
       nota_fiscal_saida_produto.First;
       Ant := Des;
    end
    else
       nota_fiscal_saida_produto.Next;
    while not(nota_fiscal_saida_produto.EOF) do
    begin
      s := nota_fiscal_saida_produto.FieldByName('cod_produto').AsString;
      if Pos(Des, s) > 0 then
      begin
        nota_fiscal_saida_produto.EnableControls;
        Exit;
      end;
      nota_fiscal_saida_produto.Next;
    end;
    if (nota_fiscal_saida_produto.Eof) then nota_fiscal_saida_produto.First;    
    nota_fiscal_saida_produto.EnableControls;
  end;

begin

  { busca rápida por código do produto }
  if (Key = VK_RETURN) then
  begin
    if Not(nota_fiscal_saida_produto.IsEmpty) then
       Localizar(trim(SemFmtProduto(nota_fiscal_saidacod_cliente.AsString, edBuscaCodigo.Text)));

    if trim(edBuscaCodigo.Text) <> '' then
    begin
      edBuscaCodigo.SetFocus;
      edBuscaCodigo.SelLength := 0;
      edBuscaCodigo.SelStart := Length(trim(edBuscaCodigo.Text));
    end;
  end;
end;

procedure Tfr_ManNF.edBuscaDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    nota_fiscal_saida_produto.DisableControls;
    if Des <> Ant then
    begin
       nota_fiscal_saida_produto.First;
       Ant := Des;
    end
    else
       nota_fiscal_saida_produto.Next;
    while not(nota_fiscal_saida_produto.EOF) do
    begin
      s := nota_fiscal_saida_produto.FieldByName('calDenProduto').AsString;
      if Pos(Des, s) > 0 then
      begin
        nota_fiscal_saida_produto.EnableControls;
        Exit;
      end;
      nota_fiscal_saida_produto.Next;
    end;
    if (nota_fiscal_saida_produto.Eof) then nota_fiscal_saida_produto.First;    
    nota_fiscal_saida_produto.EnableControls;
  end;

begin
  { buscar pela descrição em português }
  if (Key = VK_RETURN) then
  begin
    if Not(nota_fiscal_saida_produto.IsEmpty) then
       Localizar(trim(edBuscaDesc.Text));

    if trim(edBuscaDesc.Text) <> '' then
    begin
      edBuscaDesc.SetFocus;
      edBuscaDesc.SelLength := 0;
      edBuscaDesc.SelStart := Length(trim(edBuscaDesc.Text));
    end;
  end;
end;

procedure Tfr_ManNF.AbrirExcelPLClick(Sender: TObject);
Var
  F : String;
begin
  { Abre os dois tipos de planihas se existirem }
  try
  if (nota_fiscal_saidaies_preco_esp.AsString = 'S') then
  begin
     F := ArquivoExcel('PACKING LIST', 'B', False);
     AbrirPlanilha(F);

     AbrirPlanilha(ArquivoExcel('PACKING LIST', 'A'))
  end
  else
     AbrirPlanilha(ArquivoExcel('PACKING LIST', ''));
  except
  end;
end;

procedure Tfr_ManNF.AbrirExeclBLClick(Sender: TObject);
Var
  F : String;
begin
  { Abre os dois tipos de planihas se existirem }
  if Not(bl_combinado.IsEmpty) then
     AbrirPlanilha(ArquivoExcel('BLC', '', False));


  if (bl_combinado.IsEmpty) then
  begin
    { Abre os dois tipos de planihas se existirem }
    try
    if (nota_fiscal_saidaies_preco_esp.AsString = 'S') then
    begin
       F := ArquivoExcel('INSTRUCTIONS FOR BILL OF LOADING', 'B', False);
       AbrirPlanilha(F);

       AbrirPlanilha(ArquivoExcel('INSTRUCTIONS FOR BILL OF LOADING', 'A'))
    end
    else
       AbrirPlanilha(ArquivoExcel('INSTRUCTIONS FOR BILL OF LOADING', ''));

    except
    end;

  end;

end;

procedure Tfr_ManNF.AbrirExcelCIPRClick(Sender: TObject);
Var
  F : String;
begin
  { Abre os dois tipos de planihas se existirem }
  try
  if (nota_fiscal_saidaies_preco_esp.AsString = 'S') then
  begin
     F := ArquivoExcel('INVOICE', 'B', False);
     AbrirPlanilha(F);

     AbrirPlanilha(ArquivoExcel('INVOICE', 'A'))
  end
  else
     AbrirPlanilha(ArquivoExcel('INVOICE', ''));
  except
  end;
end;


function Tfr_ManNF.ArquivoExcel(Doc: String; Tipo: String = ''; Msg: Boolean = True): String ;
Var
  DIR_PLANILHAS : String;
  Fat, FileName : String;

begin
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
   { Diretório Principal \ Cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(nota_fiscal_saidacod_cliente.AsString);
   { Diretório Principal \ Cliente \ LOTS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\LOTS';
   Fat := trim(nf_saida_complementonum_ref_volume.AsString);
   Fat := StringReplace(Fat, '/', '-', [rfReplaceAll]);
   Fat := StringReplace(Fat, '\', '-', [rfReplaceAll]);
   { Diretório Principal \ Cliente \ LOTS \LOT + Nº do Lote }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'LOT ' + Fat;
   { Nome do Arquivo }
   if (Doc = 'BLC') then
      FileName := DIR_PLANILHAS + '\' + Lotes + '.xls'
   else if (Doc = 'INSTRUCTIONS FOR BILL OF LOADING') then
   begin
      Fat := 'LOT ' + trim(Fat) + Tipo + ' ' + Doc + FormatDateTime(' - DD.MM.YY', nota_fiscal_saidadat_arquivo.AsDateTime);
      FileName := DIR_PLANILHAS + '\' + trim(Fat) + '.xls';
   end
   else
   begin
      Fat := 'LOT ' + trim(Fat) + Tipo + ' ' + Doc + FormatDateTime(' - DD.MM.YY', nota_fiscal_saidadat_arquivo.AsDateTime);
      FileName := DIR_PLANILHAS + '\' + trim(Fat) + '.xls';
   end;

   if Not(FileExists(FileName)) then
   begin
     if Msg then
        Application.MessageBox('Planilha Excel não encontrada', 'Informação', MB_OK+MB_ICONINFORMATION);
     Result := '';
     Abort;
   end;
   Result := FileName;
end;

procedure Tfr_ManNF.tbAbrirClick(Sender: TObject);
begin                                                                         
    if (DocGerado = 'CI') then AbrirExcelCIPRClick(nil);
    if (DocGerado = 'PL') then AbrirExcelPLClick(nil);
    if (DocGerado = 'BL') then AbrirExeclBLClick(nil);
    if (DocGerado = 'BLC') then AbrirPlanilha(ArquivoExcel('BLC'));
end;

procedure Tfr_ManNF.ExcluirMarcados(DataSet: TDataSet; Grade: TDBGrid);
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

procedure Tfr_ManNF.fr_FmNavigator2acDeleteExecute(Sender: TObject);
begin
  { identifica de qual DataSet está sendo chamada a exclusão }
  if TDataSetDelete(Sender).DataSource = dtsNFSaida_Produto then
     ExcluirMarcados(nota_fiscal_saida_produto, grdGrid);

	with TIBDataSet(nota_fiscal_saida_produto) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
    	 nota_fiscal_saida.Refresh;
   end;
   { atualiza totais na fatura }
   AtualizarTotaisNF(nota_fiscal_saida.FieldByName('num_nota_fiscal').AsInteger, nota_fiscal_saida.FieldByName('serie').AsString);
end;

procedure Tfr_ManNF.nf_adic_descAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      nf_confirmacoes.Close;
      nf_confirmacoes.Open;
      { Atualizar valores em Nota Fiscal Saida }
      if Not(nota_fiscal_saida.State in [dsEdit, dsInsert]) then
         nota_fiscal_saida.Edit;
      nota_fiscal_saida.Post;
   end;
end;

procedure Tfr_ManNF.nf_adic_descAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      { Atualizar valores em Nota Fiscal Saida }
      if Not(nota_fiscal_saida.State in [dsEdit, dsInsert]) then
         nota_fiscal_saida.Edit;
      nota_fiscal_saida.Post;
      end;
end;

function Tfr_ManNF.SeqAdicDesc(Nf: integer; Serie: string) : Integer;
begin
  with SeqNFAdicDesc do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := Nf;
    ParamByName('serie').AsString := Serie;
    Open;
    Result := FieldByName('prox_sequencia').AsInteger;
    if Result = 0 then Result := 1;
    Close;
  end;
end;

function Tfr_ManNF.SeqPgtoFatura(Nf: integer; Serie: string) : Integer;
begin
  with SeqPagFatura do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := Nf;
    ParamByName('serie').AsString := Serie;
    Open;
    Result := FieldByName('prox_sequencia').AsInteger;
    if Result = 0 then Result := 1;
    Close;
  end;
end;

procedure Tfr_ManNF.nf_adic_descNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
  DataSet.FieldByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
  DataSet.FieldByName('serie').AsString := nota_fiscal_saidaserie.AsString;
  DataSet.FieldByName('num_sequencia').AsInteger := SeqAdicDesc(nota_fiscal_saidanum_nota_fiscal.AsInteger,nota_fiscal_saidaserie.AsString);
end;

procedure Tfr_ManNF.ExportadorAfterOpen(DataSet: TDataSet);
begin
  with fornecedor_contato do
  begin
    Close;
    ParamByName('cod_fornecedor').AsInteger := nf_saida_complementocod_fornecedor.AsInteger;
    ParamByName('cod_cliente').AsString     := nota_fiscal_saidacod_cliente.AsString;
    Open;
  end;
end;

procedure Tfr_ManNF.nf_confirmacoesAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;
end;

procedure Tfr_ManNF.dbeCondicaoExit(Sender: TObject);
begin
  if (nf_confirmacoes.State in [dsEdit]) then nf_confirmacoes.Post;
end;

procedure Tfr_ManNF.nf_confirmacoesAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;
end;

procedure Tfr_ManNF.sbDescAdicClick(Sender: TObject);
var
  i, j: Integer;
  s: string;

begin
  { Transferir os Descontos/Adicionais selecionados das Confirmações para a Fatura }
  if dbgDescAdicPedidos.SelectedRows.Count > 0 then
  begin
    with dbgDescAdicPedidos.DataSource.DataSet do
      for i:=0 to dbgDescAdicPedidos.SelectedRows.Count-1 do
      begin
        GotoBookmark(pointer(dbgDescAdicPedidos.SelectedRows.Items[i]));
        { marcar como faturado adicional desconto dos pedidos }
        if (spr_adic_desc_pedidosnum_pedido.AsLargeInt > 0) then
        begin
          nf_adic_desc.Insert;
          nf_adic_descies_tipo.AsString := spr_adic_desc_pedidosies_tipo.AsString;
          nf_adic_descvlr_adic_desc.AsFloat := spr_adic_desc_pedidosvlr_adic_desc.AsFloat;
          nf_adic_descvlr_adic_desc_esp.AsFloat := spr_adic_desc_pedidosvlr_adic_desc_esp.AsFloat;
          nf_adic_desctxt_descricao.AsString := spr_adic_desc_pedidosden_adic_desc.AsString;
          nf_adic_descnum_pedido.AsLargeInt := spr_adic_desc_pedidosnum_pedido.AsLargeInt;
          nf_adic_descnum_seq_pedido.AsInteger := spr_adic_desc_pedidosnum_seq_pedido.AsInteger;
          nf_adic_desc.Post;
          with pedido_adic_desc do
          begin
            Close;
            ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
            ParamByName('num_pedido').Value := spr_adic_desc_pedidosnum_pedido.AsLargeInt;
            ParamByName('num_sequencia').AsInteger := spr_adic_desc_pedidosnum_seq_pedido.AsInteger;
            Open;
            Edit;
            pedido_adic_descnum_nota_fiscal.AsInteger :=  nota_fiscal_saidanum_nota_fiscal.AsInteger;
            pedido_adic_descserie.AsString := nota_fiscal_saidaserie.AsString;
            pedido_adic_descies_faturado.AsString := 'S';
            Post;
          end;
        end;
        { excluir adicional desconto pendentes }
        if (spr_adic_desc_pedidosnum_seq_adcdesc.AsInteger > 0) then
        begin
          nf_adic_desc.Insert;
          nf_adic_descies_tipo.AsString := spr_adic_desc_pedidosies_tipo.AsString;
          nf_adic_descvlr_adic_desc.AsFloat := spr_adic_desc_pedidosvlr_adic_desc.AsFloat;
          nf_adic_descvlr_adic_desc_esp.AsFloat := spr_adic_desc_pedidosvlr_adic_desc_esp.AsFloat;
          nf_adic_desctxt_descricao.AsString := spr_adic_desc_pedidosden_adic_desc.AsString;
          nf_adic_descnum_seq_adcdesc.AsInteger := spr_adic_desc_pedidosnum_seq_adcdesc.AsInteger;
          nf_adic_desc.Post;
          with adicional_desconto do
          begin
            Close;
            ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
            ParamByName('num_sequencia').AsInteger := spr_adic_desc_pedidosnum_seq_adcdesc.AsInteger;
            Open;
            if Not(IsEmpty) then Delete;
            Close;
          end;
        end;
      end;
      pedido_adic_desc.Close;
      nf_adic_desc.Close;
      nf_adic_desc.Open;
      spr_adic_desc_pedidos.Close;
      spr_adic_desc_pedidos.Open;
      nf_confirmacoes.Close;
      nf_confirmacoes.Open;
  end;
end;

procedure Tfr_ManNF.pedido_adic_descAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;
end;

procedure Tfr_ManNF.nf_adic_descBeforeDelete(DataSet: TDataSet);
begin
  { marcar como não faturado o adicional desconto dos pedidos }
  if (nf_adic_descnum_pedido.AsLargeInt > 0) then
  begin
    with pedido_adic_desc do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').Value := nf_adic_descnum_pedido.AsLargeInt;
      ParamByName('num_sequencia').AsInteger := nf_adic_descnum_seq_pedido.AsInteger;
      Open;
      if Not(IsEmpty) then
      begin
        Edit;
        pedido_adic_descnum_nota_fiscal.Clear;
        pedido_adic_descserie.AsString := ' ';
        pedido_adic_descies_faturado.AsString := 'N';
        Post;
      end;
      Close;
    end;
  end;
  { retornar o adicional desconto para pendentes }
  if (nf_adic_descnum_seq_adcdesc.AsInteger > 0) then
  begin
    with adicional_desconto do                                          
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_sequencia').AsInteger := nf_adic_descnum_seq_adcdesc.AsInteger;
      Open;
      if (IsEmpty) then Append
                   else Edit;
      adicional_descontocod_empresa.AsInteger := vgCod_Empresa;
      adicional_descontonum_sequencia.AsInteger := nf_adic_descnum_seq_adcdesc.AsInteger;
      adicional_descontocod_cliente.AsString := nota_fiscal_saidacod_cliente.AsString;
      adicional_descontocod_fornecedor.AsInteger := nf_saida_complementocod_fornecedor.AsInteger;
      adicional_descontoies_comissao.AsString := 'N';
      adicional_descontoies_tipo.AsString := nf_adic_descies_tipo.AsString;
      adicional_descontovlr_adic_desc.AsFloat := nf_adic_descvlr_adic_desc.AsFloat;
      adicional_descontovlr_adic_desc_esp.AsFloat := nf_adic_descvlr_adic_desc_esp.AsFloat;
      adicional_descontotxt_descricao.AsString := nf_adic_desctxt_descricao.AsString;
      Post;
      Close;
    end;
  end;
  spr_adic_desc_pedidos.Close;
  spr_adic_desc_pedidos.Open;
end;

procedure Tfr_ManNF.pedido_adic_descAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;
end;

procedure Tfr_ManNF.JvDBUltimGrid1ShowTitleHint(Sender: TObject;
  Field: TField; var AHint: String; var ATimeOut: Integer);
begin
  ATimeOut := 30000;

  if Field.FieldName = 'num_pedido_for' then AHint := 'Número da Confirmação do Pedido (Proforma Invoice).'
  else
  if Field.FieldName = 'num_pedido_cli' then AHint := 'Número do Pedido do Cliente (Order).'
  else
  if Field.FieldName = 'vlr_pedido' then AHint := 'Valor Total do Pedido.'
  else
  if Field.FieldName = 'vlr_pagamento' then AHint := 'Total de pagamentos efetuados no pedido até o momento.'
  else
  if Field.FieldName = 'vlr_tot_faturado' then AHint := 'Total do Faturamento do pedido até o momento,' +#13+ 'com Adicionais/Descontos faturados.'
  else
  if Field.FieldName = 'vlr_produtos' then AHint := 'Valor Total dos Itens do Pedido incluídos nesta Fatura.'
  else
  if Field.FieldName = 'vlr_faturado' then AHint := 'Valor dos Produtos com Adicionais/Descontos incluídos nesta Fatura'
  else
  if Field.FieldName = 'vlr_adicional' then AHint := 'Valor de Custo Adicional incluído nesta Fatura.' + #13 + ' Este valor poderá ser adicionado na aba Descontos e Adicional.'
  else
  if Field.FieldName = 'vlr_desconto' then AHint := 'Valor de Desconto incluíndo nesta Fatura.' + #13 + ' Este valor poderá ser adicionado na aba Descontos e Adicionais.'
  else
  if Field.FieldName = 'vlr_saldo' then AHint := 'Saldo de pagamento do pedido, representa a diferença entre todo o faturado deste pedido(Vlr Faturado), e tudo o que o cliente já pagou até o momento(Vlr Pagamento).' + #13 + 'O Saldo quando negativo(-), indica saldo devedor, caso seja maior ou igual a zero(0), indica um saldo credor.';
end;

procedure Tfr_ManNF.JvDBUltimGrid5ShowTitleHint(Sender: TObject;
  Field: TField; var AHint: String; var ATimeOut: Integer);
begin
  AtimeOut := 30000;

  if Field.FieldName = 'dat_pagamento' then AHint := 'Data do Pagamento Efetuado no Pedido.'
  else
  if Field.FieldName = 'vlr_pagamento' then AHint := 'Valor do Pagamento Efetuado no Pedido.'
  else
  if Field.FieldName = 'txt_pagamento' then AHint := 'Descrição sobre o Pagamento Efetuado no Pedido';               
end;

procedure Tfr_ManNF.dsnf_adic_descDataChange(Sender: TObject;
  Field: TField);
begin
  nf_adic_descvlr_adic_desc.ReadOnly :=  nf_adic_descnum_pedido.AsLargeInt > 0;
  nf_adic_descies_tipo.ReadOnly :=  nf_adic_descnum_pedido.AsLargeInt > 0;
end;

procedure Tfr_ManNF.nf_adic_descAfterInsert(DataSet: TDataSet);
begin
  pgConfDescAdic.ActivePage := tsDescAdic;
  dbmTxtDescricao.SetFocus;
end;

function Tfr_ManNf.AdicionaisDescontos(Nf: Integer; Serie: String; NumPedido: Largeint): String;
Var
  s : String;
begin
  { Retornar texto com os Adicionais e Descontos incluídos na Fatura referente ao Pedido }
  s := '';
  with adic_desc_terms do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_nota_fiscal').Value := Nf;
    ParamByName('serie').Value := Serie;
    ParamByName('num_pedido').Value := NumPedido;
    Open;
    while Not(EOF) do
    begin
      if (adic_desc_termsvlr_adic_desc.AsFloat > 0) then
      begin
        if (adic_desc_termsies_tipo.AsString = 'A') then
            s := s + 'PLUS ' + StringReplace(trim(adic_desc_termstxt_descricao.AsString), #13#10, ' ', [rfReplaceAll]) + ' ' + FormatFloat('US$ ##,##0.00', adic_desc_termsvlr_adic_desc.AsFloat);
        if (adic_desc_termsies_tipo.AsString = 'D') then
            s := s + 'LESS ' + StringReplace(trim(adic_desc_termstxt_descricao.AsString), #13#10, ' ', [rfReplaceAll]) + ' ' + FormatFloat('US$ ##,##0.00', adic_desc_termsvlr_adic_desc.AsFloat);
      end;
      Next;
      if Not(EOF) then s := s + ', ' else s := s + ' ';
    end;
    Close;
  end;
  Result := s;                      
end;                                     

function Tfr_ManNf.AdicionaisDescontosEsp(Nf: Integer; Serie: String; NumPedido: Largeint): String;
Var
  s : String;
begin
  { Retornar texto com os Adicionais e Descontos incluídos na Fatura referente ao Pedido }
  s := '';
  with adic_desc_terms do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_nota_fiscal').Value := Nf;
    ParamByName('serie').Value := Serie;
    ParamByName('num_pedido').Value := NumPedido;
    Open;
    while Not(EOF) do                                              
    begin
      if (adic_desc_termsvlr_adic_desc_esp.AsFloat > 0) then
      begin
        if (adic_desc_termsies_tipo.AsString = 'A') then
            s := s + 'PLUS ' + StringReplace(trim(adic_desc_termstxt_descricao.AsString), #13#10, ' ', [rfReplaceAll]) + ' ' + FormatFloat('US$ ##,##0.00', adic_desc_termsvlr_adic_desc_esp.AsFloat);
        if (adic_desc_termsies_tipo.AsString = 'D') then
            s := s + 'LESS ' + StringReplace(trim(adic_desc_termstxt_descricao.AsString), #13#10, ' ', [rfReplaceAll]) + ' ' + FormatFloat('US$ ##,##0.00', adic_desc_termsvlr_adic_desc_esp.AsFloat);
      end;
      Next;
      if Not(EOF) then s := s + ', ' else s := s + ' ';
    end;
    Close;
  end;
  Result := s;
end;


{ Acumular os pendentes de pagamentos Real dos pedidos da fatura. }
procedure Tfr_ManNF.PendentePgtoReal;
begin
     if (nf_confirmacoesvlr_faturado.AsFloat > 0) then
     begin
       { Saldo Credor }
       if (nf_confirmacoesvlr_saldo_ant.AsFloat > 0) then
       begin
         { pagamento efetuado e saldo devedor }
         if (nf_confirmacoesvlr_saldo.AsFloat < 0) then
         begin
           if nf_confirmacoesies_pago.AsString = 'N' then vlrAux := vlrAux + nf_confirmacoesvlr_saldo.AsFloat*-1;
         end;
       end
       { Saldo Devedor }
       else
       if (nf_confirmacoesvlr_saldo.AsFloat < 0) then
       begin
         if nf_confirmacoesies_pago.AsString = 'N' then vlrAux := vlrAux + nf_confirmacoesvlr_faturado.AsFloat;
       end;
     end;
end;

{ Acumular os pendentes de pagamentos Especial dos pedidos da fatura. }
procedure Tfr_ManNF.PendentePgtoEsp;
begin
     if (nf_confirmacoesvlr_faturado_esp.AsFloat > 0) then
     begin
       { Saldo Credor }
       if (nf_confirmacoesvlr_saldo_ant_esp.AsFloat > 0) then
       begin
         { pagamento efetuado e saldo devedor }
         if (nf_confirmacoesvlr_saldo_esp.AsFloat < 0) then
         begin
           if nf_confirmacoesies_pago.AsString = 'N' then vlrAux := vlrAux + nf_confirmacoesvlr_saldo_esp.AsFloat*-1;
         end;
       end
       { Saldo Devedor }
       else
       if (nf_confirmacoesvlr_saldo_esp.AsFloat < 0) then
       begin
         if nf_confirmacoesies_pago.AsString = 'N' then vlrAux := vlrAux + nf_confirmacoesvlr_faturado_esp.AsFloat;
       end;
     end;
end;


{ Mostrar individualmente, os termos de pagamento por Pedido/Confirmação }
function Tfr_ManNF.TermosPagamento: String;
Var
    s, d : String;
begin
  if (IdiomaExporter = 'I') then
  begin
     { TERMS OF PAYMENT - Faturamento respectivo aos Pedidos }
     { Valor Faturado  }
     s := '';
     try
     if (nf_confirmacoesvlr_faturado.AsFloat > 0) then
     begin
       s :=   'THE TOTAL AMOUNT SHIPPED OF THE ITEMS OF THE ORDER NUMBER ' + trim(nf_confirmacoesnum_pedido_cli.AsString)
            + '/PROFORMA INVOICE NUMBER ' + trim(nf_confirmacoesnum_pedido_for.AsString)
            + ' IS ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_produtos.AsFloat) + '; ';
          d := AdicionaisDescontos(nf_confirmacoesnum_nota_fiscal.AsInteger, nf_confirmacoesserie.AsString, nf_confirmacoesnum_pedido.AsLargeInt);
       if (d <> '') then
          s := s + d + 'EQUAL ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado.AsFloat) + '; ';
       { Saldo Credor }
       if (nf_confirmacoesvlr_saldo_ant.AsFloat > 0) then
       begin
         if (nf_confirmacoesvlr_saldo_ant.AsFloat > nf_confirmacoesvlr_faturado.AsFloat) then { pagamento adiantado }
            s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado.AsFloat) + ' ALREADY COLLECTED FROM THE IMPORTER'
         else
            s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_saldo_ant.AsFloat) + ' ALREADY COLLECTED FROM THE IMPORTER';
         { pagamento efetuado e saldo devedor }
         if (nf_confirmacoesvlr_saldo.AsFloat < 0) then
         begin
           s := s + ' AND ' + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_saldo.AsFloat*-1);
           if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'BEFORE SHIPMENT.'
                                                     else s := s + 'PENDING OF PAYMENT.';
         end
         else s := s + '.';
       end
       { Saldo Devedor }
       else
       if (nf_confirmacoesvlr_saldo.AsFloat < 0) then
       begin
         s := s + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_faturado.AsFloat);
         if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'BEFORE SHIPMENT.'
                                                   else s := s + 'PENDING OF PAYMENT.';

       end;
     end;
     finally
      Result := s;
     end;
  end else
  if (IdiomaExporter = 'P') then
  begin
     { TERMOS DE PAGAMENTO EM PORTUGUÊS - Faturamento respectivo aos Pedidos }
     { Valor Faturado  }
     s := '';
     try
     if (nf_confirmacoesvlr_faturado.AsFloat > 0) then
     begin
       s :=   'O VALOR TOTAL EMBARCADO DOS ITENS DESTE PEDIDO ' + trim(nf_confirmacoesnum_pedido_cli.AsString)
            + '/PROFORMA INVOICE NÚMERO ' + trim(nf_confirmacoesnum_pedido_for.AsString)
            + ' É ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_produtos.AsFloat) + '; ';
          d := AdicionaisDescontos(nf_confirmacoesnum_nota_fiscal.AsInteger, nf_confirmacoesserie.AsString, nf_confirmacoesnum_pedido.AsLargeInt);
       if (d <> '') then
          s := s + d + 'IGUAL ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado.AsFloat) + '; ';
          { Saldo Credor }
       if (nf_confirmacoesvlr_saldo_ant.AsFloat > 0) then
       begin
         if (nf_confirmacoesvlr_saldo_ant.AsFloat > nf_confirmacoesvlr_faturado.AsFloat) then { pagamento adiantado }
            s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado.AsFloat) + ' JÁ RECOLHIDO DO IMPORTADOR'
         else
            s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_saldo_ant.AsFloat) + ' JÁ RECOLHIDO DO IMPORTADOR';
         { pagamento efetuado e saldo devedor }
         if (nf_confirmacoesvlr_saldo.AsFloat < 0) then
         begin
           s := s + ' E ' + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_saldo.AsFloat*-1);
           if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'ANTES DO EMBARQUE.'
                                                     else s := s + 'PENDENTE DE PAGAMENTO.';
         end
         else s := s + '.';
       end
       { Saldo Devedor }
       else
       if (nf_confirmacoesvlr_saldo.AsFloat < 0) then
       begin
         s := s + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_faturado.AsFloat);
         if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'ANTES DO EMBARQUE.'
                                                   else s := s + 'PENDENTE DE PAGAMENTO.';

       end;
     end;
     finally
      Result := s;
     end;
  end;
  if (IdiomaExporter = 'E') then
  begin
     { TERMOS DE PAGAMENTO EM ESPANHOL - Faturamento respectivo aos Pedidos }
     { Valor Faturado  }
     s := '';
     try
     if (nf_confirmacoesvlr_faturado.AsFloat > 0) then
     begin
       s :=   'EL VALOR TOTAL EMBARCADO DE LOS ITEMS DE ESTE PEDIDO ' + trim(nf_confirmacoesnum_pedido_cli.AsString)
            + '/PROFORMA FACTURA NÚMERO ' + trim(nf_confirmacoesnum_pedido_for.AsString)
            + ' ES ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_produtos.AsFloat) + '; ';
          d := AdicionaisDescontos(nf_confirmacoesnum_nota_fiscal.AsInteger, nf_confirmacoesserie.AsString, nf_confirmacoesnum_pedido.AsLargeInt);
       if (d <> '') then
          s := s + d + 'IGUAL ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado.AsFloat) + '; ';
          { Saldo Credor }
       if (nf_confirmacoesvlr_saldo_ant.AsFloat > 0) then
       begin
         if (nf_confirmacoesvlr_saldo_ant.AsFloat > nf_confirmacoesvlr_faturado.AsFloat) then { pagamento adiantado }
            s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado.AsFloat) + ' YA RECOGIDO EL IMPORTAR'
         else
            s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_saldo_ant.AsFloat) + ' YA RECOGIDO EL IMPORTAR';
         { pagamento efetuado e saldo devedor }
         if (nf_confirmacoesvlr_saldo.AsFloat < 0) then
         begin
           s := s + ' E' + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_saldo.AsFloat*-1);
           if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'ANTES DO EMBARQUE.'
                                                     else s := s + 'PENDIENTES DE PAGO.';
         end
         else s := s + '.';
       end
       { Saldo Devedor }
       else
       if (nf_confirmacoesvlr_saldo.AsFloat < 0) then
       begin
         s := s + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_faturado.AsFloat);
         if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'ANTES DO EMBARQUE.'
                                                   else s := s + 'PENDIENTES DE PAGO.';

       end;
     end;
     finally
      Result := s;
     end;
  end;
end;

{ Mostrar individualmente, os termos de pagamento por Pedido/Confirmação }
function Tfr_ManNF.TermosPagamentoEspecial: String;
Var
    s, d : String;
begin
  if (IdiomaExporter = 'I') then
  begin
      { TERMS OF PAYMENT - Faturamento respectivo aos Pedidos }
      { Valor Faturado  }
      s := '';
      try
      if (nf_confirmacoesvlr_faturado_esp.AsFloat > 0) then
      begin
        s :=   'THE TOTAL AMOUNT SHIPPED OF THE ITEMS OF THE ORDER NUMBER ' + trim(nf_confirmacoesnum_pedido_cli.AsString)
             + '/PROFORMA INVOICE NUMBER ' + trim(nf_confirmacoesnum_pedido_for.AsString)
             + ' IS ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_produtos_esp.AsFloat) + '; ';

        d := AdicionaisDescontosEsp(nf_confirmacoesnum_nota_fiscal.AsInteger, nf_confirmacoesserie.AsString, nf_confirmacoesnum_pedido.AsLargeInt);
        if (d <> '') then
           s := s + d + 'EQUAL ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado_esp.AsFloat) + '; ';
        { Saldo Credor }
        if (nf_confirmacoesvlr_saldo_ant_esp.AsFloat > 0) then
        begin
          if (nf_confirmacoesvlr_saldo_ant_esp.AsFloat > nf_confirmacoesvlr_faturado_esp.AsFloat) then { pagamento adiantado }
             s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado_esp.AsFloat) + ' ALREADY COLLECTED FROM THE IMPORTER'
          else
             s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_saldo_ant_esp.AsFloat) + ' ALREADY COLLECTED FROM THE IMPORTER';
          { pagamento efetuado e saldo devedor }
          if (nf_confirmacoesvlr_saldo_esp.AsFloat < 0) then
          begin
            s := s + ' AND ' + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_saldo_esp.AsFloat*-1);
            if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'BEFORE SHIPMENT.'
                                                      else s := s + 'PENDING OF PAYMENT.';
          end
          else s := s + '.';
        end
        { Saldo Devedor }
        else
        if (nf_confirmacoesvlr_saldo_esp.AsFloat < 0) then
        begin
          s := s + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_faturado_esp.AsFloat);
          if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'BEFORE SHIPMENT.'
                                                    else s := s + 'PENDING OF PAYMENT.';

        end;
      end;
      finally
       Result := s;
      end;                                                          
  end else
  if (IdiomaExporter = 'P') then
  begin
     { TERMOS DE PAGAMENTO EM PORTUGUÊS - Faturamento respectivo aos Pedidos }
     { Valor Faturado  }
     s := '';
     try
     if (nf_confirmacoesvlr_faturado_esp.AsFloat > 0) then
     begin
       s :=   'O VALOR TOTAL EMBARCADO DOS ITENS DESTE PEDIDO ' + trim(nf_confirmacoesnum_pedido_cli.AsString)
            + '/PROFORMA INVOICE NÚMERO ' + trim(nf_confirmacoesnum_pedido_for.AsString)
            + ' É ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_produtos_esp.AsFloat) + '; ';
          d := AdicionaisDescontos(nf_confirmacoesnum_nota_fiscal.AsInteger, nf_confirmacoesserie.AsString, nf_confirmacoesnum_pedido.AsLargeInt);
       if (d <> '') then
          s := s + d + 'IGUAL ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado_esp.AsFloat) + '; ';
          { Saldo Credor }
       if (nf_confirmacoesvlr_saldo_ant_esp.AsFloat > 0) then
       begin
         if (nf_confirmacoesvlr_saldo_ant_esp.AsFloat > nf_confirmacoesvlr_faturado_esp.AsFloat) then { pagamento adiantado }
            s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado_esp.AsFloat) + ' JÁ RECOLHIDO DO IMPORTADOR'
         else
            s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_saldo_ant_esp.AsFloat) + ' JÁ RECOLHIDO DO IMPORTADOR';
         { pagamento efetuado e saldo devedor }
         if (nf_confirmacoesvlr_saldo_esp.AsFloat < 0) then
         begin
           s := s + ' E ' + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_saldo_esp.AsFloat*-1);
           if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'ANTES DO EMBARQUE.'
                                                     else s := s + 'PENDENTE DE PAGAMENTO.';
         end
         else s := s + '.';
       end
       { Saldo Devedor }
       else
       if (nf_confirmacoesvlr_saldo_esp.AsFloat < 0) then
       begin
         s := s + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_faturado_esp.AsFloat);
         if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'ANTES DO EMBARQUE.'
                                                   else s := s + 'PENDENTE DE PAGAMENTO.';

       end;
     end;
     finally
      Result := s;
     end;
  end;
  if (IdiomaExporter = 'E') then
  begin
      { TERMS OF PAYMENT - Faturamento respectivo aos Pedidos }
      { Valor Faturado  }
      s := '';
      try
      if (nf_confirmacoesvlr_faturado_esp.AsFloat > 0) then
      begin
        s :=   'EL VALOR TOTAL EMBARCADO DE LOS ITEMS DE ESTE PEDIDO ' + trim(nf_confirmacoesnum_pedido_cli.AsString)
             + '/PROFORMA FACTURA NÚMERO ' + trim(nf_confirmacoesnum_pedido_for.AsString)
             + ' ES ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_produtos_esp.AsFloat) + ', ';

        d := AdicionaisDescontosEsp(nf_confirmacoesnum_nota_fiscal.AsInteger, nf_confirmacoesserie.AsString, nf_confirmacoesnum_pedido.AsLargeInt);
        if (d <> '') then
           s := s + d + 'IGUAL ' + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado_esp.AsFloat) + ', ';
        { Saldo Credor }
        if (nf_confirmacoesvlr_saldo_ant_esp.AsFloat > 0) then
        begin
          if (nf_confirmacoesvlr_saldo_ant_esp.AsFloat > nf_confirmacoesvlr_faturado_esp.AsFloat) then { pagamento adiantado }
             s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_faturado_esp.AsFloat) + ' YA RECOGIDO EL IMPORTAR'
          else
             s := s + FormatFloat('US$ ###,##0.00', nf_confirmacoesvlr_saldo_ant_esp.AsFloat) + ' YA RECOGIDO EL IMPORTAR';
          { pagamento efetuado e saldo devedor }
          if (nf_confirmacoesvlr_saldo_esp.AsFloat < 0) then
          begin
            s := s + ' E ' + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_saldo_esp.AsFloat*-1);
            if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'ANTES DO EMBARQUE.'
                                                      else s := s + 'PENDIENTES DE PAGO.';

          end
          else s := s + '.';
        end
        { Saldo Devedor }
        else
        if (nf_confirmacoesvlr_saldo_esp.AsFloat < 0) then
        begin
          s := s + FormatFloat('US$ ###,##0.00 ', nf_confirmacoesvlr_faturado_esp.AsFloat);
          if nf_confirmacoesies_pago.AsString = 'S' then s := s + 'ANTES DO EMBARQUE.'
                                                    else s := s + 'PENDIENTES DE PAGO.';

        end;
      end;
      finally
       Result := s;
      end;
  end;
end;

procedure Tfr_ManNF.nota_fiscal_saida_produtoAfterDelete(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
      nota_fiscal_saida.Refresh;
      nf_saida_complemento.Refresh;
   end;
   with nf_confirmacoes do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger       := vgCod_Empresa;
     ParamByName('num_nota_fiscal').AsInteger   := Nota_Fiscal_Saidanum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString              := Nota_Fiscal_Saidaserie.AsString;
     Open;
     while Not(EOF) do
     begin
       if (nf_confirmacoesvlr_pedido.AsFloat = 0) then nf_confirmacoes.Delete;
       Next;
     end;
     nf_confirmacoes.Open;
   end;
   { atualizar embalagens especias e pallets }
   with spr_emb_esp_fat do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
     ExecProc;
     try
       Transaction.CommitRetaining;
     except
       Transaction.RollbackRetaining;
     end;
   end;
   AtualizarTotaisNF(DataSet.FieldByName('num_nota_fiscal').AsInteger, DataSet.FieldByName('serie').AsString);
end;


function Tfr_ManNF.SeqNotaFiscal(NF: Integer; Serie: String): Integer;
begin
  with Aux do
  begin
    SQL.Clear;
    SQL.Text := 'select MAX(a."num_sequencia") + 1 "prox_sequencia"'+
                '  from "nota_fiscal_saida_produto" a              '+
                ' where a."cod_empresa" = :cod_empresa             '+
                '   and a."num_nota_fiscal" = :num_nota_fiscal     '+
                '   and a."serie" = :serie                         ';
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := NF;
    ParamByName('serie').AsString := Serie;
    Open;
    if FieldByName('prox_sequencia').IsNull then Result := 1
    else  Result := FieldByName('prox_sequencia').AsInteger;
    Close;
  end;
end;

procedure Tfr_ManNF.GroupBox10Enter(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfr_ManNF.GroupBox10Exit(Sender: TObject);
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
end;


procedure Tfr_ManNF.bl_combinadoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure Tfr_ManNF.bl_combinadoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;


function Tfr_ManNf.GetSequencia_Fat(SeqBl : Integer): Integer;
begin
  with seq_fat do
  begin
    Close;
    ParamByName('seq_bl').Value := SeqBl;
    Open;
    Result := FieldByName('seq_fatura').AsInteger;
    Close;
  end;
end;


procedure Tfr_ManNF.actBLNovoExecute(Sender: TObject);
Var
  bl : integer;

{ buscar a próxima sequencia do b/l combinado - a sequencia é única, independente da empresa }
function GetSequencia_BL: Integer;
begin
  with seq_bl do
  begin
    Close;
    Open;
    Result := FieldByName('seq_bl').AsInteger;
    Close;
  end;                                                                    
end;

begin
  bl := GetSequencia_BL; // obter a sequencia do novo BL combinado

  { Iniciar um novo b/l combinado, iniciando com a fatura corrente }
  with bl_combinado do
  begin
    Close;
    ParamByName('seq_bl').AsInteger := bl;
    Open;
    Insert;
    bl_combinadocod_empresa.AsInteger := nota_fiscal_saidacod_empresa.AsInteger;
    bl_combinadonum_nota_fiscal.AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    bl_combinadoserie.AsString := nota_fiscal_saidaserie.AsString;
    bl_combinadoseq_bl.AsInteger := bl;
    bl_combinadoseq_fatura.AsInteger := 1;
    Post;
  end;
  btnNovoBl.Enabled := False;
  btnExcluirBL.Enabled := True;
  btnProcurarFat.Enabled := True;
  btnExcelBl.Enabled := True;

  sbAdd.Enabled := True;
  sbRemove.Enabled := True;

  btnProcurarFat.Click;
end;

function Tfr_ManNF.GetNumBl:Integer;
begin
  { Retorna a sequencia do B/L da Fatura corrente }
  with bl_fatura do
  begin
    Close;
    ParamByName('cod_empresa').Value := nota_fiscal_saidacod_empresa.AsInteger;
    ParamByName('num_nota_fiscal').Value := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').Value := nota_fiscal_saidaserie.AsString;
    Open;
    Result := FieldByName('seq_bl').AsInteger;
    Close;
  end;
end;

procedure Tfr_ManNf.AbrirBlCombinado;
begin
  with bl_combinado do
  begin
    Close;
    ParamByName('seq_bl').Value := GetNumBl;
    Open;
  end;
  btnNovoBl.Enabled := bl_combinado.IsEmpty;
  btnExcluirBL.Enabled := Not(bl_combinado.IsEmpty);
  btnProcurarFat.Enabled := Not(bl_combinado.IsEmpty);
  btnExcelBl.Enabled := Not(bl_combinado.IsEmpty);
  sbAdd.Enabled := Not(bl_combinado.IsEmpty);
  sbRemove.Enabled := Not(bl_combinado.IsEmpty);
end;


procedure Tfr_ManNF.pgcNFChange(Sender: TObject);
begin
   if pgcNF.ActivePage = tsBlCombinado then
      AbrirBlCombinado;
end;                                                           

procedure Tfr_ManNF.actBlExcluirExecute(Sender: TObject);
begin
  { Excluir as faturas do b/l combinado }
  bl_combinado.First;
  while Not(bl_combinado.Eof) do
    bl_combinado.Delete;                                                       

  AbrirBlCombinado;
  sel_faturas.Close;                                                         
end;

function Tfr_ManNF.Lotes: String;
Var
  s : String;
begin
  with bl_combinado do
  begin
    First;
    s := 'LOTS ';                                    
    while Not(EOF) do
    begin
      s := s + trim(FieldByName('num_ref_volume').AsString);
      Next;
      if Not(EOF) then s := s + '+'
                  else s := s + ' INSTRUCTIONS FOR BILL OF LOADING' + FormatDateTime(' DD.MM.YY', nota_fiscal_saidadat_arquivo.AsDateTime);
    end;
    First;
  end;
  s := StringReplace(s, '/', '-', [rfReplaceAll]);
  s := StringReplace(s, '\', '-', [rfReplaceAll]);
  Result := s;
end;
                                                           
procedure Tfr_ManNF.actBlCombinadoExecute(Sender: TObject);
Var                                                                      
  i : Real;                                                 
  DIR_PLANILHAS, PATH : String;
  s, s1, s2, s3, Fat : String;                                         
  cmd : String;
  Ind : Integer;
  bPallets, bCaixas: boolean;
  { gerar a planilha excel do B/L combinado das faturas incluídas }
begin
   IdiomaExporter := nota_fiscal_saidaies_idioma.AsString;
   AbrirBlCombinado;
   if bl_combinado.IsEmpty then
   begin
     Application.MessageBox('B/L combinado inexistente', 'Informação', MB_ICONINFORMATION+MB_OK);
     Exit;
   end;
   with totais_bl do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('seq_bl').AsInteger := GetNumBl;
     Open;
   end;

   Linha := 1;

   { Obrigatório o preenchimento de Número da Fatura e Referência de Volume }
   if trim(nf_saida_complementonum_fatura.AsString) = '' then
   begin
     Application.MessageBox('Informe o Número da Fatura para gerar os documentos', 'Informação', MB_ICONINFORMATION+MB_OK);
     dbeNumFatura.SetFocus;
     Exit;
   end;
   if trim(nf_saida_complementonum_ref_volume.AsString) = '' then
   begin
     Application.MessageBox('Informe n Número de Lote', 'Informação', MB_ICONINFORMATION+MB_OK);
     dbeNumRefVolume.SetFocus;
     Exit;
   end;

   (*** INSTRUÇÕES PARA CONHECIMENTO DE EMBARQUE COMBINADO ***)
   { OK Transportadora (Shipping Company) }
   with Transportadora do
   begin
     Close;
     ParamByName('cod_transportadora').AsInteger := nota_fiscal_saidacod_transportadora.AsInteger;
     Open;
   end;
   { Informações do Importador (cliente) }
   with Importador do
   begin
     Close;
     ParamByName('cod_cliente').AsString := nota_fiscal_saidacod_cliente.AsString;
     Open;
   end;

  { Gerar em uma planilha Excel com o Pedido }
  try
   ExcelApplication.Connect;
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

   { Diretório Principal \ Cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(nota_fiscal_saidacod_cliente.AsString);
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Diretório Principal \ Cliente \ LOTS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\LOTS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   Fat := trim(nf_saida_complementonum_ref_volume.AsString);
   Fat := StringReplace(Fat, '/', '-', [rfReplaceAll]);
   Fat := StringReplace(Fat, '\', '-', [rfReplaceAll]);
                                                                                                     
   { Diretório Principal \ Cliente \ LOTS \LOT +  Nº do Lote }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'LOT ' + Fat;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Nome do Arquivo }
   FileName := DIR_PLANILHAS + '\' + Lotes + '.xls';

   { salvar nome do arquivo gerado }
   nota_fiscal_saida.Edit;
   nota_fiscal_saidadat_bl.AsDateTime := DataHoraServidor;
   nota_fiscal_saidadat_arquivo.Value := DataHoraServidor;
   nota_fiscal_saida.Post;

   DocGerado := 'BLC';

   { inicializar progress bar }
   Rect := panGauge1.ClientRect;
   InflateRect(Rect, - panGauge1.BevelWidth, - panGauge1.BevelWidth);
   Ani := TAnimationThread.Create(panGauge1, Rect, panGauge1.color, clBlue, 25);
   btnExcelBl.Enabled := False;
   Application.ProcessMessages;

   { Mostra ou Esconde a montagem da planilha }
   ExcelApplication.Visible[0] := false;
   ExcelApplication.DisplayAlerts[0] := False;

   { Bill of Lading - Página Única }
   ExcelWorkbook.ConnectTo(ExcelApplication.Workbooks.Add(xlWBATWorksheet, GetUserDefaultLCID));
   ExcelWorksheet.ConnectTo(ExcelWorkbook.Worksheets[1] as _Worksheet);

   { Página da planilha }
   ExcelWorkSheet.Name := 'Bill of Lading';

   { Título da página, BILL OF LADING }
   { Formatação do título }
   LinhaAux := Linha;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'INSTRUCTIONS FOR THE BILL OF LADING'
     else if (IdiomaExporter = 'P') then s := 'INSTRUÇÕES PARA CONHECIMENTO DE EMBARQUE'
     else if (IdiomaExporter = 'E') then s := 'INSTRUCCIONES PARA CONOCIMIENTO DE EMBARQUE';
     Value2 := s;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Size := 14;
   end;

   if (IdiomaExporter = 'I') then s := 'FOR THE INVOICES: '
   else if (IdiomaExporter = 'P') then s := 'PARA A FATURA NÚMERO : '
   else if (IdiomaExporter = 'E') then s := 'PARA LA FACTURA NÚMERO: ';

   with bl_combinado do
   begin
     First;
     while Not(EOF) do
     begin
      s := s + trim(bl_combinadonum_fatura.AsString);
      Next;
      if Not(EOF) then s := s + ' AND ';
     end;
     s := s + '.   DATE: ' + FormatDateTime('dd.mm.yyyy', nota_fiscal_saidadat_emissao.AsDateTime);
   end;
   i := (length(s) / 90);
   i := i + 1;

   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := s;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Bold := False;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Size := 10;
     Rows.RowHeight := 12.75 * Int(i);
   end;
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
   end;

   { SERVICE/MODALITY }
   Linha := Linha + 2;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'SERVICE/MODALITY : ' + trim(nota_fiscal_saidalkcTipoEmbarque.AsString)
     else if (IdiomaExporter = 'P') then s := 'SERVIÇO/MODALIDADE : ' + trim(nota_fiscal_saidalkcTipoEmbarque.AsString)
     else if (IdiomaExporter = 'E') then s := 'SERVICIO / MODALIDAD : ' + trim(nota_fiscal_saidalkcTipoEmbarque.AsString);
     Value2 := s;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlNone;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Font.Size := 10;
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    //Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;

   { PICK UP DATE }
   if Not(nota_fiscal_saidadat_coleta.IsNull) then
   begin
     Linha := Linha + 2;
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       if (IdiomaExporter = 'I') then s := 'PICK UP DATE : ' + FormatDateTime('dd.mm.yy', nota_fiscal_saidadat_coleta.AsDateTime)
       else if (IdiomaExporter = 'P') then s := 'DATA DA COLETA: ' + FormatDateTime('dd.mm.yy', nota_fiscal_saidadat_coleta.AsDateTime)
       else if (IdiomaExporter = 'E') then s := 'FECHA DE RECOGIDA : ' + FormatDateTime('dd.mm.yy', nota_fiscal_saidadat_coleta.AsDateTime);
       Value2 := s;
       MergeCells := True;
       Font.Name := 'Arial';
       Font.Bold := True;
       Interior.ColorIndex := 0;
       Borders.LineStyle := xlNone;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       Font.Size := 10;
     end;

     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
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
      //Borders[xlInsideHorizontal].LineStyle := xlNone;
      VerticalAlignment := xlTop;
     end;
   end;
   { shipper - Dados do Exportador (fornecedor) }
   Linha := Linha + 2;
   LinhaAux := Linha;

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'SHIPPER(S):'
     else if (IdiomaExporter = 'P') then s := 'REMETENTE(S):'
     else if (IdiomaExporter = 'E') then s := 'REMITENTE(S):';
     Value := s;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   IdiomaExporter := nota_fiscal_saidaies_idioma.AsString;

   with bl_combinado do
   begin
     First;
     while Not(EOF) do
     begin
      with Exportador do
      begin
        Close;
        ParamByName('cod_fornecedor').AsInteger :=  bl_combinadocod_fornecedor.AsInteger;
        Open;
      end;
      with fornecedor_contato do
      begin
        Close;
        ParamByName('cod_fornecedor').AsInteger := bl_combinadocod_fornecedor.AsInteger;
        ParamByName('cod_cliente').AsString     := bl_combinadocod_cliente.AsString;
        Open;
      end;
      Inc(Linha);
      LinhaAux := Linha;
      with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        Value2 := Exportadorraz_social.AsString;
        Font.Name := 'Arial';
        Font.Bold := True;
        Font.Size := 10;
        MergeCells := True;
        Interior.ColorIndex := 0;
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
          Value2 := s;
          MergeCells := True;
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
       { fim SHIPPER }
       Next;
      end;
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
        VerticalAlignment := xlTop;
      end;
     end;

   { CONSIGNEE - Dados do Importador }
   Inc(Linha);
   LinhaAux := Linha;

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'CONSIGNEE:'
     else if (IdiomaExporter = 'P') then s := 'CONSIGNATÁRIO:'
     else if (IdiomaExporter = 'E') then s := 'CONSIGNATARIO:';
     Value := s;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
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
     Value := Importadornom_cliente.AsString;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
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
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       Value2 := s;
       MergeCells := True;
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
   { fim CONSIGNEE }

   { NOTIFY PARTY - Dados do Importador }
   Inc(Linha);
   LinhaAux := Linha;

   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'NOTIFY PARTY:'
     else if (IdiomaExporter = 'P') then s := 'NOTIFICAR PARTE:'
     else if (IdiomaExporter = 'E') then s := 'NOTIFICAR PARTE:';
     Value := s;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
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
     Value := Importadornom_cliente.AsString;
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 10;
     MergeCells := True;
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
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       Value2 := s;
       MergeCells := True;
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
   { fim NOTIFY PARTY }

    { SHIPPING COMPANY AND CONTACT DETAILS - Dados do transportador }
    Linha := Linha + 2;
    LinhaAux := Linha;
    with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
    begin
     if (IdiomaExporter = 'I') then s := 'SHIPPING COMPANY AND CONTACT DETAILS:'
     else if (IdiomaExporter = 'P') then s := 'COMPANIA EMBARCADORA E DETALHES DE CONTATO:'
     else if (IdiomaExporter = 'E') then s := 'COMPAÑÍA EMBARCADORA Y DETALLES DE CONTACTO:';
     Value2 := s;
     MergeCells := True;
     Font.Size := 10;
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
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := transportadoranom_transportadora.AsString;
     MergeCells := True;
     Font.Size := 10;
     Font.Name := 'Arial';
     Font.Bold := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;                                                     
   { Endereço Transportador }
   Inc(Linha);
   Endereco := TStringList.Create;
   Endereco.Text := transportadoraendereco.Value;
   for ind := 0 to Endereco.Count -1 do
   begin
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       s := StringReplace(Trim(Endereco[ind]), #13#10#09, ' ', [rfReplaceAll]);
       i := (length(s) / 90);
       i := i + 1;
       Value2 := s;
       MergeCells := True;
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
    Borders[xlDiagonalDown].LineStyle := xlNone;
    Borders[xlDiagonalUp].LineStyle := xlNone;
    Borders[xlInsideVertical].LineStyle := xlNone;
    Borders[xlInsideHorizontal].LineStyle := xlNone;
    VerticalAlignment := xlTop;
   end;
   { fim SHIPPING COMPANY AND CONTACT DETAILS }

   { CARRIER (OWNER OF VESSEL) - ARMADOR }
   Linha := Linha + 2;

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then
     begin
     if Not(nota_fiscal_saidacod_armador.IsNull) then
        Value2 := 'CARRIER (OWNER OF VESSEL):' + trim(nota_fiscal_saidalkcArmador.AsString) + '. IN THE B/L THE CARRIER (OWNER OF THE VESSEL) MUST BE INDICATED. PLEASE INDICATE LIKE THIS: CARRIER''S NAME: (INDICATE HERE)'
     else
        Value2 := 'CARRIER (OWNER OF VESSEL): IN THE B/L THE CARRIER (OWNER OF THE VESSEL) MUST BE INDICATED. PLEASE INDICATE LIKE THIS: CARRIER''S NAME: (INDICATE HERE)';
     end else if (IdiomaExporter = 'P') then
     begin
     if Not(nota_fiscal_saidacod_armador.IsNull) then
        Value2 := 'TRANPORTADOR (PROPRIETÁRIO DO BARCO):' + trim(nota_fiscal_saidalkcArmador.AsString) + '. NO B/L, INDICAR O TRANSPORTADOR (PROPRIETÁRIO DO BARCO). POR FAVOR INDICAR DA SEGUENTE MANEIRA: NOME DO TRANSPORTADOR: (INDIQUE AQUI)'
     else
        Value2 := 'TRANPORTADOR (PROPRIETÁRIO DO BARCO): NO B/L, INDICAR O TRANSPORTADOR (PROPRIETÁRIO DO BARCO). POR FAVOR INDICAR DA SEGUENTE MANEIRA: NOME DO TRANSPORTADOR: (INDIQUE AQUI)';
     end else if (IdiomaExporter = 'E') then
     begin
     if Not(nota_fiscal_saidacod_armador.IsNull) then
        Value2 := 'TRANSPORTISTA (PROPIETARIO DEL BARCO):' + trim(nota_fiscal_saidalkcArmador.AsString) + '. EN EL B/L, EL TRANSPORTISTA ( (PROPIETARIO DEL BARCO) DEBE SER INDICADO. POR FAVOR INDICAR DE LA SIGUIENTE MANERA: NOMBRE DEL TRANSPORTISTA: (INDIQUE AQUÍ)'
     else
        Value2 := 'TRANSPORTISTA (PROPIETARIO DEL BARCO): EN EL B/L, EL TRANSPORTISTA ( (PROPIETARIO DEL BARCO) DEBE SER INDICADO. POR FAVOR INDICAR DE LA SIGUIENTE MANERA: NOMBRE DEL TRANSPORTISTA: (INDIQUE AQUÍ)';
     end;

     MergeCells := True;
     Font.Name := 'Arial';
     Font.Bold := False;
     Font.Size := 10;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Characters[1,26].Font.Bold := True;
     RowHeight := 50.25;
   end;

   { TOTAIS DO BL COMBINADO }
   Linha := Linha + 2;
   LinhaAux := Linha;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value2 := 'PACKAGE AND FREIGHT INFORMATION TO BE INCLUDED IN THE B/L:'
     else if (IdiomaExporter = 'P') then Value2 := 'INFORMAÇÕES SOBRE FRETE E EMBALAGENS A SEREM INCLUÍDAS NO B/L:'
     else if (IdiomaExporter = 'E') then Value2 := 'INFORMACIÓN DE EMBALAJE Y FLETE A SER INCLUIDA EN EL B/L:';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(Linha);

   { indicar se tem ou não pallets }
   bPallets := totais_blies_pallets.AsString = 'S';
   { indicar se tem caixas fora dos pallets }
   bCaixas := totais_blcxs_outpallet.AsInteger > 0;

   { PACKAGES INFORMATION }
   PackagesInformations(totais_bl, bPallets, bCaixas, true, 'A', 'J');

   /// TOTAIS DO BL COMBINADO

   Inc(linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
      MergeCells := True;
   end;

   Inc(Linha);

   s := '';
   with nf_container do
   begin
     First;
     while Not(EOF) do
     begin
      s := s + trim(nf_containerqtd_container.AsString)+'x'+trim(nf_containerlkTipContainer.AsString);
      Next;
      if Not(EOF) then s := s + ', ';
     end;
   end;
   if (IdiomaExporter = 'I') then s := 'QUANTITY AND TYPE OF CONTAINER(S): ' + s
   else if (IdiomaExporter = 'P') then s := 'QUANTIDADE E TIPO DE CONTAINER(S): ' + s
   else if (IdiomaExporter = 'E') then s := 'CANTIDAD Y TIPO DE CONTAINER(S)  : ' + s;
   i := (length(s1) / 105);
   i := i + 1;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := s;
     Characters[1,35].Font.Bold := True;
     Characters[36,Length(s1)].Font.Bold := False;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Strikethrough := False;
     Font.Superscript := False;
     Font.Subscript := False;
     Font.OutlineFont := False;
     Font.Shadow := False;
     Font.Underline := xlUnderlineStyleNone;
     Font.ColorIndex := xlAutomatic;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     RowHeight := 12.75 * Int(i);
   end;

   Inc(linha);

   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value2 := 'THE NUMBER OF THE CONTAINER MUST BE INDICATED IN THE B/L'
     else if (IdiomaExporter = 'P') then Value2 := 'O NÚMERO DE CONTAINERS A SER INDICADO NO B/L'
     else if (IdiomaExporter = 'E') then Value2 := 'EL NÚMERO DE CONTAINER DEBE SER INDICADO EN EL B/L';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then Value2 := 'THE SEAL NUMBER MUST BE INDICATED IN THE B/L'
     else if (IdiomaExporter = 'P') then Value2 := 'O NÚMERO DO SELO A SER INDICADO NO B/L'
     else if (IdiomaExporter = 'E') then Value2 := 'EL NÚMERO DE SELLO DEBE SER INDICADO EN EL B/L';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 9;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(Linha);
   if (IdiomaExporter = 'I') then s := 'PORT OF LOADING: '
   else if (IdiomaExporter = 'P') then s := 'PORTO DE EMBARQUE: '
   else if (IdiomaExporter = 'E') then s := 'PUERTO DE CARGA: ';
   ExcelWorkSheet.Range['A'+IntToStr(Linha),'A'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementolkpPortoEmb.AsString;
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'E'+IntToStr(Linha)] do
   begin
     Characters[1,17].Font.Bold := True;
     Characters[18,15].Font.Bold := False;
     Font.Name := 'Arial';
     Font.Size := 9;
     Font.Strikethrough := False;
     Font.Superscript := False;
     Font.Subscript := False;
     Font.OutlineFont := False;
     Font.Shadow := False;
     Font.Underline := xlUnderlineStyleNone;
     Font.ColorIndex := xlAutomatic;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   if (IdiomaExporter = 'I') then      s := 'PLACE OF DELIVERY: '
   else if (IdiomaExporter = 'P') then s := 'LOCAL DE ENTREGA: '
   else if (IdiomaExporter = 'E') then s := 'LUGAR DE ENTREGA: ';
   ExcelWorkSheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)].FormulaR1C1 := s + nf_saida_complementolkpPortoDes.AsString;
   with ExcelWorksheet.Range['F'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Characters[1,18].Font.Bold := True;
     Characters[19,15].Font.Bold := False;
     Font.Name := 'Arial';
     Font.Size := 9;
     Font.Strikethrough := False;
     Font.Superscript := False;
     Font.Subscript := False;
     Font.OutlineFont := False;
     Font.Shadow := False;
     Font.Underline := xlUnderlineStyleNone;
     Font.ColorIndex := xlAutomatic;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   { Insurance - alterado em 22.09.14 }
   Inc(Linha);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then
        FormulaR1C1 := 'INSURANCE TO BE EFFECTED BY: ' + dbcInsurance.Text
     else if (IdiomaExporter = 'P') then
        FormulaR1C1 := 'SEGURO EFETUADO POR        : ' + dbcInsurance.Text
     else if (IdiomaExporter = 'E') then
        FormulaR1C1 := 'SEGURO EFECTUADA POR       : ' + dbcInsurance.Text;

     Name := 'Arial';
     Characters[1,29].Font.Bold := True;
     Font.Size := 9;
     Font.Name := 'Arial';
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

   Inc(Linha);
   if (IdiomaExporter = 'I') then s := 'FREIGHT IN NUMBERS: USD '
   else if (IdiomaExporter = 'P') then s := 'FRETE EM NÚMEROS: USD '
   else if (IdiomaExporter = 'E') then s := 'FLETE EN NÚMEROS: USD ';
   ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)].FormulaR1C1 := s + FormatFloat('##,##0.00', nota_fiscal_saidavlr_frete.AsFloat);
   with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Characters[1,20].Font.Bold := True;
     Characters[21,25].Font.Bold := False;
     Font.Name := 'Arial';
     Font.Size := 9;
     Font.Strikethrough := False;
     Font.Superscript := False;
     Font.Subscript := False;
     Font.OutlineFont := False;
     Font.Shadow := False;
     Font.Underline := xlUnderlineStyleNone;
     Font.ColorIndex := xlAutomatic;
     MergeCells := True;
     Interior.ColorIndex := 0;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'FREIGHT: '
     else if (IdiomaExporter = 'P') then s := 'FRETE: '
     else if (IdiomaExporter = 'E') then s := 'FLETE: ';

     if rgTipoFrete.ItemIndex = 0 then
        Value2 := s + 'PRE-PAID'
     else if rgTipoFrete.ItemIndex = 1 then
        Value2 := s + 'COLLECT'
     else if rgTipoFrete.ItemIndex = 2 then
        Value2 := s + trim(nota_fiscal_saidaobs_frete.AsString);

     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 9;
     Characters[01,08].Font.Bold := True;
     Characters[09,100].Font.Bold := False;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;

   { DESTINATION EXPENSES }
     if (IdiomaExporter = 'I') then
     begin
     if trim(nota_fiscal_saidaden_destination_exp.AsString) <> '' then
        s := 'DESTINATION EXPENSE: ' + trim(nota_fiscal_saidaden_destination_exp.AsString)
     else
        s := 'DESTINATION EXPENSE: MUST BE INFORMED IN THE ORIGINAL B/L WITHOUT FAIL UNLESS THE SHIPMENT WAS MADE IN CONSOLIDATED CONTAINER';
     end else if (IdiomaExporter = 'P') then
     begin
       if trim(nota_fiscal_saidaden_destination_exp.AsString) <> '' then
          s := 'DESTINO DE DESPESAS: ' + trim(nota_fiscal_saidaden_destination_exp.AsString)
       else
          s := 'DESTINO DE DESPESAS: DEVE SER INFORMADO NO B/L ORIGINAL SEM FALTA, A MENOS QUE O ENVIO TENHA SIDO EFETUADO NUM CONTAINER CONSOLIDADO';
     end else if (IdiomaExporter = 'E') then
     begin
       if trim(nota_fiscal_saidaden_destination_exp.AsString) <> '' then
          s := 'GASTOS DE DESTINO:  ' + trim(nota_fiscal_saidaden_destination_exp.AsString)
       else
          s := 'GASTOS DE DESTINO:   DEBEN SER INFORMADOS EN EL B/L ORIGINAL SIN FALTA A MENOS QUE EL ENVÍO SE HAYA EFECTUADO EN CONTAINER CONSOLIDADO.';
     end;

     Inc(Linha);
     i := (length(s) / 110);
     i := i + 1;

     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
     begin
       Value2 := s;
       MergeCells := True;
       Font.Name := 'Arial';
       Font.Size := 09;
       Font.Bold := False;
       Characters[01,20].Font.Bold := True;
       Characters[21,Length(s)].Font.Bold := False;
       Interior.ColorIndex := 0;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       WrapText := True;
       ShrinkToFit := False;
       Rows.RowHeight := 12.75 * Int(i);
     end;

   { TARE WEIGHT }
   if (IdiomaExporter = 'I') then s := 'TARE WEIGHT(TARA): PLEASE INDICATE IN THE B/L THE TARE WEIGHT(S) OF THE CONTAINER(S). IF THE SHIPMENT IS IN CONSOLIDATED CONTAINER, THERE IS NO NEED TO INDICATE THE TARE WEIGHT IN THE B/L'
   else if (IdiomaExporter = 'P') then s := 'PESO DE TARA (TARA): DEVERÁ SER INFORMADO NO B/L SEM FALTA, A MENOS QUE O ENVIO SEJA EFETUADO EM CONTAINER CONSOLIDADO: '
   else if (IdiomaExporter = 'E') then s := 'PESO DE TARA (TARA): DEBERÁ INDICARSE EN EL B/L SIN FALTA, A MENOS QUE EL ENVIOSE HAYA EFECTUADO EN CONTAINER CONSOLIDADO: ';

   Inc(Linha);
   i := (length(s) / 111);
   i := i + 1;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := s;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Characters[01,12].Font.Bold := True;
     Characters[13,Length(s)].Font.Bold := False;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 12.75 * Int(i);
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
    VerticalAlignment := xlTop;
   end;

   Linha := Linha + 2;
   LinhaAux := Linha;
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := 'PLEASE INDICATE FOLLOWING SENTENCES IN THE FIRST PAGE OF THE B/L IF POSSIBLE, OR OTHERWISE IN A SECOND PAGE (ATTACHMENT) OF THE B/L:'
     else if (IdiomaExporter = 'P') then s := 'POR FAVOR, INDIQUE AS SEGUINTE SENTENÇAS NA PRIMEIRA PÁGINA DO B/L, SE POSSÍVEL OU DE OUTRA MANEIRA NA SEGUNDA PÁGINA (ADJUNTA) DO B/L'
     else if (IdiomaExporter = 'E') then s := 'POR FAVOR INDICAR LAS SIGUIENTES ORACIONES EN LA PRIMERA PÁGINA DEL B/L, SI ES POSIBLE, O DE OTRA MANERA EN LA SEGUNDA PÁGINA (ADJUNTA) DEL B/L:';
     Value2 := s;
     RowHeight := 27.75;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 6;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 25.50;
   end;

   with bl_combinado do
   begin
     First;
     while Not(EOF) do
     begin
       with Exportador do
       begin
         Close;
         ParamByName('cod_fornecedor').AsInteger :=  bl_combinadocod_fornecedor.AsInteger;
         Open;
       end;
       Inc(Linha);
       LinhaAux := Linha;
       with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
       begin
         if (IdiomaExporter = 'I') then s := 'SHIPPER: '
         else if (IdiomaExporter = 'P') then s := 'REMETENTE: '
         else if (IdiomaExporter = 'E') then s := 'REMITENTE: ';
         Value2 := s + trim(Exportadorraz_social.AsString);
         MergeCells := True;
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

       Inc(linha);

       with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
       begin
         if (IdiomaExporter = 'I') then s := '1) THE NUMBER OF THE INVOICE RELATED TO THIS B/L IS : ' + trim(bl_combinadonum_fatura.AsString)
         else if (IdiomaExporter = 'P') then s :=  'O NÚMERO DE FATURA RELACIONADO COM ESTE B/L É : ' + trim(bl_combinadonum_fatura.AsString)
         else if (IdiomaExporter = 'E') then s :=  'EL NÚMERO DE FACTURA RELACIONADO CON ESTE B/L ES : ' + trim(bl_combinadonum_fatura.AsString);
         Value2 := s + #10;
         MergeCells := True;
         Font.Name := 'Arial';
         Font.Size := 8;
         Interior.ColorIndex := 0;
         HorizontalAlignment := xlLeft;
         VerticalAlignment := xlTop;
         WrapText := True;
         ShrinkToFit := False;
         if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
         else Rows.RowHeight := 25.50;
       end;
       Inc(Linha);
       with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
       begin
         if (IdiomaExporter = 'I') then s := '2) LOT NUMBER: ' + trim(bl_combinadonum_ref_volume.AsString)
         else if (IdiomaExporter = 'P') then s := 'NÚMERO DE REFERÊNCIA DO VOLUME: ' + trim(bl_combinadonum_ref_volume.AsString)
         else if (IdiomaExporter = 'E') then s := 'NÚMERO DE REFERENCIA DE VOLUMEN: ' + trim(bl_combinadonum_ref_volume.AsString);
         Value2 := s + #10;
         MergeCells := True;
         Font.Name := 'Arial';
         Font.Size := 8;
         Interior.ColorIndex := 0;
         HorizontalAlignment := xlLeft;
         VerticalAlignment := xlTop;
         WrapText := True;
         ShrinkToFit := False;
         if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
         else Rows.RowHeight := 25.50;
       end;

       Inc(Linha);
       { TIPOS DE PRODUTOS + NCM }
       tncm := TStringList.Create;
       dmCOM.TipoNcmFatura(bl_combinadocod_empresa.AsInteger, bl_combinadonum_nota_fiscal.AsInteger, bl_combinadoserie.AsString, tncm, (Clientesncm_bl.Value = 'S'), 'B');

       with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
       begin
         if (clientesncm_bl.Value = 'S') then
         begin
           if (IdiomaExporter = 'I') then s := '3) PRODUCTS AND NCM NUMBERS'
           else if (IdiomaExporter = 'P') then s := 'PRODUTOS E NÚMEROS DE NCM'
           else if (IdiomaExporter = 'E') then s := 'PRODUCTOS Y NÚMEROS DE NCM';
         end else
         begin
           if (IdiomaExporter = 'I') then s := '3) PRODUCTS'
           else if (IdiomaExporter = 'P') then s := 'PRODUTOS'
           else if (IdiomaExporter = 'E') then s := 'PRODUCTOS';
         end;
         Value2 := s + #10;
         MergeCells := True;
         Font.Name := 'Arial';
         Font.Size := 8;
         Interior.ColorIndex := 0;
         Borders.LineStyle := xlContinuous;
         HorizontalAlignment := xlLeft;
         VerticalAlignment := xlTop;
         WrapText := True;
         ShrinkToFit := False;
         RowHeight := 10;
         if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
         else Rows.RowHeight := 25.50;
       end;

       Inc(Linha);
       { texto para NCM }
       for ind := 0 to tncm.Count - 1 do
       begin
         with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
         begin
           s := tncm[ind];
           i := (length(s) / 105);
           i := i + 1;
           Value2 := s;
           MergeCells := True;
           Font.Name := 'Arial';
           Font.Size := 8;
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
       FreeAndNil(tncm);

      with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        if (IdiomaExporter = 'I') then s := '4) CLEAN ON BOARD'
        else if (IdiomaExporter = 'P') then s := '4) LIMPO À BORDO'
        else if (IdiomaExporter = 'E') then s := '4) LIMPIO A BORDO';
        Value2 := s;
        MergeCells := True;
        Font.Name := 'Arial';
        Font.Size := 8;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
        else Rows.RowHeight := 25.50;
      end;

      Inc(Linha);

      with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        Value2 := '5) INCOTERMS: ' + trim(nf_saida_complementolkcCondicaoVenda.AsString);
        MergeCells := True;
        Font.Name := 'Arial';
        Font.Size := 8;
        Font.Bold := False;
        Interior.ColorIndex := 0;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;

       Inc(Linha);
       with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
       begin
         if (IdiomaExporter = 'I') then s := 'PACKAGE INFORMATION FOR PRODUCTS OF ' + trim(Exportadorraz_social.AsString)
         else if (IdiomaExporter = 'P') then s := 'INFORMAÇÕES SOBRE EMBALAGENS DOS PRODUTOS DE ' + trim(Exportadorraz_social.AsString)
         else if (IdiomaExporter = 'E') then s := 'INFORMACIONES SOBRE EMBALAJES DEL PRODUTOS DE ' + trim(Exportadorraz_social.AsString);
         Value2 := s;
         MergeCells := True;
         Font.Name := 'Arial';
         Font.Size := 8;
         Font.Underline := xlUnderlineStyleSingle;
         Interior.ColorIndex := 0;
         Borders.LineStyle := xlContinuous;
         HorizontalAlignment := xlLeft;
         VerticalAlignment := xlTop;
         WrapText := True;
         ShrinkToFit := False;
         if (IdiomaExporter = 'I') then Rows.RowHeight := 12.75
         else Rows.RowHeight := 25.50;
       end;

      { TOTAL VOLUME }
      Inc(Linha);
      s := '';
      with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        if (IdiomaExporter = 'I') then
           s := 'TOTAL VOLUME:'
        else if (IdiomaExporter = 'P') then
           s := 'VOLUME TOTAL:'
        else if (IdiomaExporter = 'E') then
           s := 'VOLUMEN TOTAL:';

        s := s +  FormatFloat(VolumeNumberFormatTotal, Arredonda(bl_combinadovol_geral.AsFloat, -2, rmUp));
        Value2 := s ;
        MergeCells := True;
        Font.Name := 'Arial';
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        Borders[xlEdgeLeft].LineStyle := xlNone;
        RowHeight := 12.75;
      end;

      { TOTAL GROSS WEIGHT }
      Inc(Linha);
      s := '';
      with ExcelWorksheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
        if (IdiomaExporter = 'I') then
           s := 'TOTAL GROSS WEIGHT:'
        else if (IdiomaExporter = 'P') then
           s := 'PESO BRUTO TOTAL:'
        else if (IdiomaExporter = 'E') then
           s := 'PESO BRUTO TOTAL:';

        s := s + FormatFloat('  #,##0.00 Kg', bl_combinadopes_bru_geral.AsFloat);
        Value2 := s ;
        MergeCells := True;
        Font.Name := 'Arial';
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        Borders[xlEdgeLeft].LineStyle := xlNone;
        RowHeight := 12.75;
      end;

      { QUANTITY OF CARTONS }
      Inc(Linha);
      s := '';
      with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
      begin
         if (IdiomaExporter = 'I') then
         begin
            s := 'QUANTITY OF CARTONS:'
         end else if (IdiomaExporter = 'P') then
         begin
            s := 'QUANTIDADE DE EMBALAGENS:'
         end else if (IdiomaExporter = 'E') then
         begin
            s := 'CANTIDAD DE EMBALAJES:'
         end;

         if (bl_combinadoies_pallets.Value = 'S') then
         begin
            if (bl_combinadocxs_outpallet.Value > 0) then
               s := s + ' ' + FormatFloat(' #,##0', bl_combinadocxs_outpallet.Value) + ' CARTONS AND ';
            s := s + FormatFloat('  #,##0', bl_combinadoqtd_pallets.Value) + ' PALLETS';
         end else
            s := s + FormatFloat('  #,##0', bl_combinadoqtd_caixas.value) + ' CARTONS';

         Value2 := s;
         Font.Name := 'Arial';
         Font.Size := 8;
         MergeCells := True;
         Interior.ColorIndex := 0;
         Borders.LineStyle := xlNone;
         HorizontalAlignment := xlLeft;
         VerticalAlignment := xlTop;
         WrapText := True;
         ShrinkToFit := False;
         RowHeight := 12.75;
      end;
      Next;
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
    end;
   end;

   Inc(Linha);
   LinhaAux := Linha;

   s := '';
   s3 := '';


   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     Value2 := 'SPECIAL REMARKS:';
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 10;
     Font.Bold := True;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '1) IN CASE WOODEN MATERIAL WAS USED IN THE PACKING THE SHIPPER MUST FUMIGATE THE CONTAINER BEFORE THE '+
                                         'SHIPMENT AND THE NUMBER OF THE FUMIGATION CERTIFICATE MUST BE MENTIONED IN THE B/L. THE WAY TO INDICATE '+
                                         'IN THE B/L IS THIS: “THIS CONTAINER WAS FUMIGATED AND THE NUMBER OF THE CERTIFICATE OF FUMIGATION IS '+
                                         '(HERE THE NUMBER MUST BE PUT). AND OF COURSE IN THIS CASE THE SENTENCE  MENTIONED IN POINT NUMBER 2 '+
                                         'ABOVE "SHIPPER DECLARES THAT NO WOODEN MATERIAL WAS USED IN THE PACKING IN THIS CONTAINER" CAN NOT BE INDICATED.'
     else if (IdiomaExporter = 'P') then s := 'QUANDO FOR UTILIZADO MATERIAL DE MADEIRA NAS EMBALAGENS, O EMBARCADOR DEVE FUMIGAR OS CONTAINERS ANTES DO ENVIO ' +
                                              'E O NÚMERO DO CERTIFICADO DE FUMIGAÇÃO, DEVE SER MENCIONADO NO B/L.'
     else if (IdiomaExporter = 'E') then s := 'EN CASO DE QUE MATERIAL DE MADERA HAYA SIDO UTILIZADO EN EL EMPAQUE, EL SHIPPER DEBE FUMIGAR EL CONTAINER ' +
                                              'ANTES DEL ENVÍO Y EL NÚMERO DE CERTIFICADO DE FUMIGACIÓN DEBE SER MENCIONADO EN EL B/L. ';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 58.50;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '2) IN CASE THE OWNER OF THE VESSEL REFUSES TO INDICATE "CLEAN ON BOARD", THEN ALSO "SHIPPED ON BOARD" OR ' +
                                         'SOME OTHER SIMILAR STATEMENT ARE ACCEPTABLE. '
     else if (IdiomaExporter = 'P') then s := 'CASO O PROPRIETÁRIO DO NAVIO NEGUE INDICAR "CLEAN ON BOARD", PODERÁ INDICAR "SHIPPED ON BOARD" ' +
                                              'OU ALGUMA OUTRA DECLARAÇÃO SIMILAR ACEITÁVEL'
     else if (IdiomaExporter = 'E') then s:= 'EN CASO DE QUE EL PROPIETARIO DEL BUQUE SE NIEGUE A INDICAR "CLEAN ON BOARD", ENTONCES TAMBIÉN "SHIPPED ON BOARD"  ' +
                                             'O ALGUNA OTRA DECLARACIÓN SIMILAR SON ACCEPTABLES.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 24.75;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '3) THE SEAL NUMBER ON THE B/L AND THE SEAL NUMBER ON THE CONTAINER MUST BE THE SAME.'
     else if (IdiomaExporter = 'P') then s := 'O NÚMERO DO SELO NO B/L E O NÚMERO NO DO SELO NO CONTAINER, DEVE SER O MESMO'
     else if (IdiomaExporter = 'E') then s:= 'EL NÚMERO DE SELLO EN EL B/L Y EL NÚMERO DE SELLO EN EL CONTAINER DEBE SER EL MISMO.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 12.75;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '4) IF THE SHIPPER NOTES THAT THE SEAL SUPPLIED BY SHIPPING COMPANY IS DAMAGED OR BROKEN HE MUST '+
                                         'ASK THE SHIPPING COMPANY FOR REPLACEMENT OF THE SEAL.'
     else if (IdiomaExporter = 'P') then s := 'SE O REMETENTE OBSERVAR QUE O SELLO FORNECIDO PELA EMPRESA EMBARCADORA ESTÁ QUEBRADO OU DETERIORADO, ' +
                                         'DEVE SOLICITAR A COMPANHIA EMBARCADORA A SUBSTITUIÇÃO DO SELO.'
     else if (IdiomaExporter = 'E') then s := 'SI EL REMITENTE OBSERVA QUE EL SELLO SUMINISTRADO POR LA COMPAÑÍA EMBARCADORA ESTÁ DETERIORADO O ROTO, ' +
                                              'DEBE SOLICITAR A LA COMPAÑÍA EMBARCADORA EL REEMPLAZO DEL SELLO.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 25.50;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s  := '5) IF BECAUSE OF AUTHORITY´S INSPECTION IN THE PORT THE SEAL WAS CHANGED IN THE PORT THE NEW SEAL NUMBER '+
                                          'MUST BE MENTIONED IN THE B/L WITHOUT FAIL AND THE CONSIGNEE MUST BE INFORMED ABOUT THIS CHANGE.'
     else if (IdiomaExporter = 'P') then s := 'SE POR MOTIVOS DE INSPEÇÃO DA AUTORIDADE PORTUÁRIA, O SELO FOR TROCADO NO PORTO, O NOVO NÚMERO DO SELO DEVE SER INDICADO NO B/L, SEM FALTA ' +
                                 'E O CONSIGNATÁRIO DEVE SER INFORMADO SOBRE ESTA MODIFICAÇÃO.'
     else if (IdiomaExporter = 'E') then s := 'SI POR CAUSA DE UNA INSPECCIÓN DE AUTORIDAD EN EL PUERTO, EL SELLO FUESE CAMBIADO EN EL PUERTO, ' +
                                      'EL NUEVO NÚMERO DE SELLO DEBE SER INDICADO EN EL B/L SIN FALTA Y EL CONSIGNATARIO DEBE SER INFORMADO SOBRE ESTA MODIFICACIÓN.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 25.50;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '6) THE SHIPPER MUST TAKE A VERY GOOD LOOK OF THE CONTAINER BEFORE THE LOADING. CHECK NOT ONLY '+
                                         'THE INSIDE PART (OIL SPOT, HOLES AND OTHER), BUT ALSO CHECK THE BOTTOM PART, THE SIDES AND '+
                                         'THE CEILING (LOOK FOR HOLES, UNUSUAL REPAIRS AND CRUSHES) AND MUST TAKE CLEAR PICTURES AND '+
                                         'SEND TO US. IF THE CONDITION OF THE CONTAINER WILL BRING SOME RISK TO THE PRODUCTS THE SHIPPER '+
                                         'MUST RETURN THE CONTAINER TO THE SHIPPING COMPANY.'
     else if (IdiomaExporter = 'P') then s := 'O REMETENTE DEVE FAZER UMA BOA INSPEÇÃO DO CONTARINER ANTES DA CARGA. REVISAR NÃO APENAS ' +
                                              'A PARTE INTERIOR (MANCHAS DE ÓLEO, BURACOS E OUTROS), COMO TAMBÉM CHECAR A PARTE INFERIOR, OS LADOS ' +
                                              'E O TETO (BUSCAR BURACOS, REPARAÇÕES MAL FEITAS E GOLPES) E DEVE TIRAR FOTOS NÍTIDAS E ENVIAR-NOS. ' +
                                              'SE O ESTADO DO CONTAINER TOUXER ALGUNS RISCO AOS PRODUTOS, O REMETENTE DEVE RETORNAR O CONTAINER A COMPANHIA EMBARCADORA.'
     else if (IdiomaExporter = 'E') then s := 'EL REMITENTE DEBE LLEVAR A CABO UNA BUENA INSPECCIÓN DEL CONTENEDOR ANTES DE LA CARGA. REVISAR ' +
                                              'NO SOLO LA PARTE INTERIOR (MANCHAS DE ACEITE, AGUJEROS Y OTROS), SINO TAMBIÉN CHEQUEAR LA PARTE ' +
                                              'INFERIOR, LOS LADOS Y EL TECHO (BUSCAR AGUJEROS, REPARACIONES INUSUALES Y GOLPES) Y DEBEN TOMAR ' +
                                              'IMÁGENES CLARAS Y ENVIAR A NOSOTROS.SI EL ESTADO DEL CONTENEDOR TRAERÁ ALGÚN RIESGO A LOS PRODUCTOS, ' +
                                              'EL REMITENTE DEBE RETORNAR EL CONTENEDOR A LA COMPAÑÍA EMBARCADORA.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 47.25;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '7) THE ORIGINALS MUST BE SIGNED BY HAND. THE STAMP OF THE SHIPPING COMPANY IS NOT ENOUGH. THE SIGNATURE MUST '+
                                         'BE MADE BY HAND WITH A BLUE PEN. '
     else if (IdiomaExporter = 'P') then s := 'OS ORIGINAIS DEVEM ESTAR ASSINADOS A MÃO. O SELO DA COMPANHIA EMBARCADO NÃO É SUFICIENTE. ' +
                                              'A ASSINATURA A MÃO, DEVE SER FEITA COM CANETA DE TINTA AZUL.'
     else if (IdiomaExporter = 'E') then s := 'LOS ORIGINALES DEBEN ESTAR FIRMADOS A MANO. EL SELLO DE LA COMPAÑÍA EMBARCADORA NO ES SUFICIENTE. ' +
                                              'LA FIRMA SE DEBE HACER A MANO CON UNA PLUMA AZUL.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 24.75;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A'+IntToStr(Linha),'J'+IntToStr(Linha)] do
   begin
     if (IdiomaExporter = 'I') then s := '8) IF THE SHIPPING COMPANY REFUSES TO FOLLOW SOME INSTRUCTIONS IN THIS PAGE THE SHIPPER MUST '+
                                         'INFORM US WITHOUT DELAY SO THAT WE CAN DISCUSS THE PROBLEM WITH THEIR AGENT IN BRAZIL.'
     else if (IdiomaExporter = 'P') then s := 'SE A COMPANHIA EMBARCADORA SE NEGAR A SEGUIR ALGUMAS DAS INSTRUIÇÕES DESTA PÁGINA, O REMETENTE ' +
                                              'DEVE NOS INFORMAR COM URGÊNCIA, PARA QUE POSSAMOS DISCUTIR O PROBLEMA COM SEU AGENTE NO BRASIL.'
     else if (IdiomaExporter = 'E') then s := 'SI LA COMPAÑÍA EMBARCADORA SE NIEGA A SEGUIR ALGUNAS INSTRUCCIONES DE ESTA PÁGINA, EL REMITENTE ' +
                                              'DEBE INFORMARNOS SIN DEMORA PARA QUE PODAMOS DISCUTIR EL PROBLEMA CON SU AGENTE EN BRAZIL.';
     Value2 := s + #10;
     MergeCells := True;
     Font.Name := 'Arial';
     Font.Size := 8;
     Interior.ColorIndex := 0;
     HorizontalAlignment := xlLeft;
     VerticalAlignment := xlTop;
     WrapText := True;
     ShrinkToFit := False;
     Rows.RowHeight := 25.50;
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
   { ajustar propriedades para impressão do Conhecimento de Embarque }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$J$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$2';
     PrintTitleColumns := '';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := '';
     LeftFooter := '';
     LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
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
     Orientation := xlPortrait;
     Draft := False;
     PaperSize := xlPaperA4;
     FirstPageNumber := xlAutomatic;
     Order := xlDownThenOver;
     BlackAndWhite := False;
     Zoom := 95;
    end;

  { Salvar a planilha }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);

  Exportador.Close;
  Importador.Close;
  Transportadora.Close;

  { finalizar progress bar }
  btnExcelBl.Enabled := True;
  Ani.Terminate;

 finally
   { Fechar planilha e encerrar excel }
   ExcelApplication.Quit;
   ExcelApplication.Disconnect;
 end;
 AbrirPlanilha(ArquivoExcel('BLC'));
end;

procedure Tfr_ManNF.actBLProcurarExecute(Sender: TObject);
begin
 { selecionar fatura para inclusão no b/l }
 with sel_faturas do
 begin
   Close;
   SQL.Clear;
   SQL.Add('select a."cod_empresa", a."num_nota_fiscal", a."serie", a."cod_cliente",              ');
   SQL.Add('       a."dat_emissao", a."ies_situacao", a."vlr_bruto", a."vlr_liquido",             ');
   SQL.Add('  b."pes_bruto", b."pes_liquido", b."vol_total", b."qtd_caixas", b."num_ref_volume",  ');
   SQL.Add('  b."num_fatura", c."cod_fornecedor", c."raz_social_reduz", e."nom_empresa_reduz"     ');
   SQL.Add('  from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c, "empresa" e   ');
   SQL.Add(' where                                                                                ');
   if Not(cbFaturas.Checked) then                                                                         
   begin
     SQL.Add('       a."cod_empresa" = :cod_empresa                                                 ');
     SQL.Add('   and a."cod_cliente" = :cod_cliente                                                 ');
   end else
     SQL.Add('       a."cod_cliente" = :cod_cliente                                                 ');
   SQL.Add('     and e."cod_empresa" = a."cod_empresa"                                              ');
   if trim(edNumFatura.Text) <> '' then
   begin
      SQL.Add('   and b."num_fatura" like :num_fatura ');
      ParamByName('num_fatura').AsString := trim(edNumFatura.Text) + '%';
   end;
   if trim(edNumLote.Text) <> '' then
   begin
     SQL.Add('   and b."num_ref_volume" like :num_ref_volume ');
     ParamByName('num_ref_volume').AsString := trim(edNumLote.Text) + '%';
   end;
   SQL.Add('   and b."cod_empresa"      = a."cod_empresa"                                         ');
   SQL.Add('   and b."num_nota_fiscal"  = a."num_nota_fiscal"                                     ');
   SQL.Add('   and b."serie"            = a."serie"                                               ');
   SQL.Add('   and c."cod_fornecedor"   = b."cod_fornecedor"                                      ');
   SQL.Add('   and not exists (select * from "bl_combinado" d                                     ');
   SQL.Add('                    where d."cod_empresa" = a."cod_empresa"                           ');
   SQL.Add('                      and d."num_nota_fiscal" = a."num_nota_fiscal"                   ');
   SQL.Add('                      and d."serie" = a."serie")                                      ');
   SQL.Add('order by e."nom_empresa_reduz", a."dat_emissao" desc, a."num_nota_fiscal" desc        ');
   if Not(cbFaturas.Checked) then
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
   ParamByName('cod_cliente').AsString := nota_fiscal_saidacod_cliente.AsString;
   Open;
 end;
end;

procedure Tfr_ManNF.AdicionarFaturas(DataSet: TDataSet; Grade: TDBGrid);
var
  i, j: Integer;
  SavePlace: TBookmark;
  bl : Integer;

begin
  bl := bl_combinadoseq_bl.AsInteger;
  { salvar posição na tabela }
  SavePlace := DataSet.GetBookmark;

  if Grade.SelectedRows.Count > 0 then
    with Grade.DataSource.DataSet do
      for i := 0 to Grade.SelectedRows.Count-1 do         
      begin
        GotoBookmark(Pointer(Grade.SelectedRows.Items[i]));
                                                                                      
        { incluir na lista do B/L combinado }
        with bl_combinado do
        begin
          Insert;
          FieldByName('cod_empresa').AsInteger := sel_faturascod_empresa.AsInteger;
          FieldByName('num_nota_fiscal').AsInteger := sel_faturasnum_nota_fiscal.AsInteger;
          FieldByName('serie').AsString := sel_faturasserie.AsString;
          FieldByName('seq_bl').AsInteger := bl;
          FieldByName('seq_fatura').AsInteger := GetSequencia_Fat(bl);
          Post;
        end;

        DataSet.Delete;
      end;
   { posicionar-se no próximo item depois do excluído  }
   try
     DataSet.GotoBookmark(SavePlace);
     DataSet.FreeBookmark(SavePlace);
   except
     SavePlace := nil;
   end;
end;

procedure Tfr_ManNF.RemoverFaturas(DataSet: TDataSet; Grade: TDBGrid);
var
  i, j: Integer;
  SavePlace: TBookmark;

begin
  sel_faturas.Close;
  { salvar posição na tabela }                                      
  SavePlace := DataSet.GetBookmark;

  if Grade.SelectedRows.Count > 0 then
    with Grade.DataSource.DataSet do
      for i := 0 to Grade.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(Grade.SelectedRows.Items[i]));
        DataSet.Delete;
      end;
   { posicionar-se no próximo item depois do excluído  }
   try
     DataSet.GotoBookmark(SavePlace);
     DataSet.FreeBookmark(SavePlace);                          
   except
     SavePlace := nil;
   end;
   Sel_faturas.Open;
end;

procedure Tfr_ManNF.sbAddClick(Sender: TObject);
begin
  AdicionarFaturas(sel_faturas, dbgSelFaturas);
  AbrirBlCombinado;
end;

procedure Tfr_ManNF.sbRemoveClick(Sender: TObject);
begin
  RemoverFaturas(bl_combinado, dbgBlCombinado);

  sel_faturas.Active := Not(bl_combinado.IsEmpty);

  btnNovoBl.Enabled := bl_combinado.IsEmpty;
  btnExcluirBL.Enabled := Not(bl_combinado.IsEmpty);
  btnProcurarFat.Enabled := Not(bl_combinado.IsEmpty);
  btnExcelBl.Enabled := Not(bl_combinado.IsEmpty);
  sbAdd.Enabled := Not(bl_combinado.IsEmpty);
  sbRemove.Enabled := Not(bl_combinado.IsEmpty);
end;

procedure Tfr_ManNF.actAbrirBlExecute(Sender: TObject);
begin
  AbrirPlanilha(ArquivoExcel('BLC'));
end;

procedure Tfr_ManNF.BancoBeforeOpen(DataSet: TDataSet);
begin
  Banco.ParamByName('cod_fornecedor').AsString := nf_saida_complementocod_fornecedor.AsString;
end;

procedure Tfr_ManNF.nota_fiscal_saidaAfterOpen(DataSet: TDataSet);
begin
  AbrirBlCombinado;
end;                                                                                          

procedure Tfr_ManNF.actExcelItensAtualizarExecute(Sender: TObject);
Var
  DIR_PLANILHAS, FAT : String;
  s : string;

begin
  { assegurar que os dados serão gravados antes de gerar a planilha de alteração/comissão }
  with TIBDataSet(nota_fiscal_saida_produto) do
  try
     ApplyUpdates;
  finally
     Transaction.CommitRetaining;
  end;

  with TIBDataSet(nota_fiscal_saida) do
  try
     ApplyUpdates;
  finally
     Transaction.CommitRetaining;
  end;

  with TIBDataSet(nf_saida_complemento) do
  try
     ApplyUpdates;
  finally
     Transaction.CommitRetaining;
  end;

  { Gerar a planilha Excel para alterações na Fatura }

  { Gerar colunas para Comissões ? }
  case (Sender as TAction).Tag of
    1: fComissao := False;
    2: fComissao := True;
  end;

  if trim(nf_saida_complementonum_ref_volume.AsString) = '' then
  begin
    Application.MessageBox('O Número do Lote não foi informado', 'Informação',MB_ICONINFORMATION+MB_OK);
    dbeNumRefVolume.SetFocus;
    Exit;
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
     Application.MessageBox('Pasta para os documentos não definida nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
     Abort;
   end;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Diretório Principal \ Cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(nota_fiscal_saidacod_cliente.AsString);
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { Diretório Principal \ Cliente \ LOTS }
   DIR_PLANILHAS := DIR_PLANILHAS + '\LOTS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   FAT := trim(nf_saida_complementonum_ref_volume.AsString);
   FAT := StringReplace(FAT, '/', '-', [rfReplaceAll]);
   FAT := StringReplace(FAT, '\', '-', [rfReplaceAll]);                    

   { Diretório Principal \ Cliente \ LOTS \LOT + Nº do Lote }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'LOT ' + FAT;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
   { Planilha de Alteração da Fatura }
   if (fComissao) then  FileListaEsp := DIR_PLANILHAS + '\ALTERAÇÃO DA FATURA - COMISSAO ' + trim('LOT ' + trim(FAT)) + '.xls'
   else FileListaEsp := DIR_PLANILHAS + '\ALTERAÇÃO DA FATURA-' + trim('LOT ' + trim(FAT)) + '.xls';

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

   dmCOM.parametro_comercialmod_plan_alt_fat.SaveToFile(FileListaEsp);
   AbrirExcel(FileListaEsp);
   ExcelWorkSheet.Name := 'Alteração Fatura';
   //ExcelWorkSheet.Cells.Item[01, 01].Value := vgCod_Empresa; { somente para evitar um bug na abertura da planilha - puta que pariu }

   GerarExcelAlteracao;
   GerarOverPriceComissoes;
   GerarAdicionaisDescontos;
   GerarAdicionaisDescontosDisponiveis;
   GerarPendentesEmbarque;

   { congelar painéis }
   ExcelWorkSheet.Range['G4','G4'].Select;
   ExcelApplication.ActiveWindow.FreezePanes := True;
   ExcelApplication.ActiveWorkbook.SaveAs(FileListaEsp,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
   s := FileListaEsp;
   FecharExcel2;
   { finalizar progress bar }
   btnGerar.Enabled := True;
   btnComissoes.Enabled := True;
   Ani.Terminate;
   FileListaEsp := s ;
   AbrirPlanilha(FileListaEsp);
   btnImportarListaEsp.Enabled := True;
end;

procedure Tfr_ManNF.AbrirExcel(FileName: String; Visible: boolean = False);
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

Procedure Tfr_ManNF.FecharExcel2;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
end;

procedure Tfr_ManNF.GerarOverPriceComissoes;
Var
  LinAux : integer;
  Tof, Toc : String;
begin
  if Not(fComissao) then Exit;
  Tof := '=AH'+IntToStr(Linha);
  Toc := '=AJ'+IntToStr(Linha);
  Inc(Linha);
  LinAux := Linha;

  with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Value := 'OVERPRICE COMISSÕES';
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
    MergeCells := True;
    Font.Bold := False;
    Interior.ColorIndex := 0;
  end;
  { AH - OVERPRICE COMISSÃO FORNECEDOR }
  ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)].Value := nota_fiscal_saidaoverprice_com_f.AsFloat;
  ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)].NumberFormat := '#.##0,00';
  ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)].Interior.ColorIndex := 0;
  ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
  { AJ - OVERPRICE COMISSÃO FORNECEDOR }
  ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)].Value := nota_fiscal_saidaoverprice_com_c.AsFloat;
  ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)].NumberFormat := '#.##0,00';
  ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)].Interior.ColorIndex := 0;
  ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)].HorizontalAlignment := xlCenter;

  Tof := Tof + '+AH'+IntToStr(Linha);
  Toc := Toc + '+AJ'+IntToStr(Linha);

  inc(Linha);

  with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Value := 'TOTAL COMISSÕES';
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
    MergeCells := True;
    Font.Bold := False;
    Interior.ColorIndex := 0;
  end;

  { AH - TOTAL COMISSÃO FORNECEDOR }
  ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)].Formula := Tof;
  ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)].NumberFormat := '#.##0,00';
  ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)].Interior.ColorIndex := 0;
  ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
  { AJ - TOTAL COMISSÃO CLIENTE }
  ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)].Formula := Toc;
  ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)].NumberFormat := '#.##0,00';
  ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)].Interior.ColorIndex := 0;
  ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)].HorizontalAlignment := xlCenter;

  { Bordas na área ocupada da planilha }
  with ExcelWorkSheet.Range['A'+IntToStr(LinAux),'AJ' + IntToStr(Linha)] do
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


procedure Tfr_ManNF.GerarAdicionaisDescontos;
Var
  LinAux : Integer;
  Tbr, Tbe : String;
begin
  Tbr := '=H'+IntToStr(Linha);
  Tbe := '=K'+IntToStr(Linha);
  Inc(Linha);
  LinAux := Linha;
  { criar na planilha Adicionais e Descontos da Fatura }
  with ExcelWorksheet.Range['A' + IntToStr(Linha),'K' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Value := 'ADICIONAIS E DESCONTOS DA FATURA / ADDITIONAL AND DISCOUNTS';
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
  ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value := 'PEDIDO';
  ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value := 'SEQ';
  with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
  begin
    Value := 'DESCRIÇÃO';
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
  end;
  ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value := 'TIPO';
  ExcelWorksheet.Range['A' + IntToStr(Linha),'K' + IntToStr(Linha)].Interior.ColorIndex := 40;
  ExcelWorksheet.Range['A' + IntToStr(Linha),'K' + IntToStr(Linha)].Font.Size := 8;
  ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value := 'VALOR REAL';
  ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Interior.ColorIndex := 35;
  ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value := 'VALOR ESP';
  ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Interior.ColorIndex := 7;
  Inc(Linha);

  with nf_adic_desc do
  begin
    Close;
    ParamByName('cod_empresa').AsShort         := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString              := nota_fiscal_saidaserie.AsString;
    Open;
    while Not(EOF)do
    begin
      { A - Sequencia adc/desc }
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value := FieldByName('num_sequencia').Value;
      { B - Número do Pedido de Origem do A/D }
      if Not(FieldByName('num_pedido').IsNull) then
         ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value := dmCOM.ProcuraPedido(FieldByName('num_pedido').Value).NumPedidoCli;
      { C - Sequencia A/D no Pedido }
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value := FieldByName('num_seq_pedido').Value;
      { E - Descrição adc/desc }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Value := StringReplace(trim(FieldByName('txt_descricao').AsString), #13#10, ' ', [rfReplaceAll]);
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Interior.ColorIndex := 0;
        Rows.RowHeight := 12.75;
      end;
      { F - Tipo (A/D) }
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value := FieldByName('ies_tipo').AsString;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      { H - Valor Adicional/Desconto Real }
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc').AsFloat;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Interior.ColorIndex := 35;
      { K - Valor Adicional/Desconto Especial }
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc_esp').AsFloat;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Interior.ColorIndex := 7;

      ExcelWorksheet.Range['A' + IntToStr(Linha),'K' + IntToStr(Linha)].Font.Size := 8;

      if (FieldByName('ies_tipo').AsString = 'A') then
      begin
        Tbr := Tbr + '+H'+IntToStr(Linha);
        Tbe := Tbe + '+K'+IntToStr(Linha);
      end;
      if (FieldByName('ies_tipo').AsString = 'D') then
      begin
        Tbr := Tbr + '-H'+IntToStr(Linha);
        Tbe := Tbe + '-K'+IntToStr(Linha);
      end;
      Next;
      Inc(Linha);
    end;
    { TOTAIS LIQUIDO DA FATURA }
    with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Value := 'TOTAL LIQUIDO: ';
      HorizontalAlignment := xlRight;
    end;
    if (Tbr <> '') then
    begin
      ExcelWorkSheet.Cells.Item[Linha, 8].NumberFormat := '#.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 8].Formula := Tbr;
      ExcelWorkSheet.Cells.Item[Linha, 8].Interior.ColorIndex := 35;
    end;
    if (Tbe <> '') then
    begin
      ExcelWorkSheet.Cells.Item[Linha, 11].NumberFormat := '#.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 11].Formula := Tbe;
      ExcelWorkSheet.Cells.Item[Linha, 11].Interior.ColorIndex := 7;
    end;

    { Bordas na área ocupada da planilha }
    with ExcelWorkSheet.Range['A'+IntToStr(LinAux),'K' + IntToStr(Linha)] do
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

procedure Tfr_ManNF.GerarAdicionaisDescontosDisponiveis;
Var
  LinAux : Integer;
begin
  Linha := Linha + 5;
  LinAux := Linha;
  { criar na planilha Adicionais e Descontos Disponíveis }
  with ExcelWorksheet.Range['A' + IntToStr(Linha),'K' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Value := 'ADICIONAIS E DESCONTOS DISPONÍVEIS *** ';
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
  ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value := 'PEDIDO';
  ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value := 'SEQ';
  with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
  begin
    Value := 'DESCRIÇÃO';
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
  end;
  ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value := 'TIPO';
  ExcelWorksheet.Range['A' + IntToStr(Linha),'K' + IntToStr(Linha)].Interior.ColorIndex := 40;
  ExcelWorksheet.Range['A' + IntToStr(Linha),'K' + IntToStr(Linha)].Font.Size := 8;
  ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value := 'VALOR REAL';
  ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Interior.ColorIndex := 35;
  ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value := 'VALOR ESP';
  ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Interior.ColorIndex := 7;
  Inc(Linha);

  with spr_adic_desc_pedidos do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger       := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString              := nota_fiscal_saidaserie.AsString;
    Open;
    while Not(EOF)do
    begin
      { A - Sequencia adc/desc }
      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value := '';
      { B - Número do Pedido de Origem do A/D }
      if Not(FieldByName('num_pedido').IsNull) then
         ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value := FieldByName('num_pedido_cli').AsString;
      { C - Sequencia A/D no Pedido }
      if Not(FieldByName('num_seq_pedido').IsNull) then
         ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value := FieldByName('num_seq_pedido').Value
      else
         ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value := FieldByName('num_seq_adcdesc').Value;
      { E - Descrição adc/desc }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Value := StringReplace(trim(FieldByName('den_adic_desc').AsString), #13#10, ' ', [rfReplaceAll]);
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Interior.ColorIndex := 0;
        Rows.RowHeight := 12.75;
      end;
      { F - Tipo (A/D) }
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value := FieldByName('ies_tipo').AsString;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      { H - Valor Adicional/Desconto Real }
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc').AsFloat;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Interior.ColorIndex := 35;
      { K - Valor Adicional/Desconto Especial }
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc_esp').AsFloat;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Interior.ColorIndex := 7;
      ExcelWorksheet.Range['A' + IntToStr(Linha),'K' + IntToStr(Linha)].Font.Size := 8;
      Next;
      Inc(Linha);
    end;

    { Bordas na área ocupada da planilha }
    with ExcelWorkSheet.Range['A'+IntToStr(LinAux),'K' + IntToStr(Linha)] do
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

procedure Tfr_ManNF.GerarExcelAlteracao;
Var
  LinAux, SeqEmbEsp, LinIniEmbEsp, SeqPallet, LinIniPallet : Integer;
  fPallet : boolean;
  xlCorPallet, xlVermelho : integer;
  s, s1, s2, mesclar : String;
  PesLiquidoCx : Double;
begin
  xlVermelho := 3;
  { Gerar a planilha de alteração da Fatura }
  with ProdutosExcelAlteracao do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    Open;
    First;

    Linha := 1;

    with ExcelWorksheet.Range['A' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      if (fComissao) then Value := 'PLANILHA DE ALTERAÇÃO DA FATURA - COMISSÃO'
      else Value := 'PLANILHA DE ALTERAÇÃO DA FATURA';
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    Inc(Linha);

    fPallet := True; // var para altenar cores nos pallets

    with ExcelWorksheet.Range['A' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Value := 'PRODUTOS DA FATURA: ' + trim(nf_saida_complementonum_fatura.AsString)
               + '   LOTE: ' + trim(nf_saida_complementonum_ref_volume.AsString)
               + '   CLIENTE: ' + trim(nota_fiscal_saidacod_cliente.AsString)
               + '   FORNECEDOR: ' + trim(nf_saida_complementolkpFornecedor.AsString);
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      MergeCells := True;
      Characters[01,19].Font.Bold := True;
    end;
    ExcelWorksheet.Range['A' + IntToStr(Linha),'L' + IntToStr(Linha)].Interior.ColorIndex := 44;

    Linha := 4;

    { inicializar sequencias embalagens e pallets }
    SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
    if (SeqEmbEsp > 0) then LinIniEmbEsp := Linha
                       else LinIniEmbEsp := 0;
    SeqPallet := FieldByName('seq_pallet').AsInteger;
    if (SeqPallet > 0) then LinIniPallet := Linha
                       else LinIniPallet := 0;
    { Leitura dos Itens da Fatura }
    while Not(EOF) do
    begin

      Mesclar := '';

      { A - Sequencia do Produto na Fatura }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := FieldByName('num_sequencia').AsInteger;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { B - Número do Pedido do Cliente }
      with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        NumberFormat := '@';
        Value := trim(FieldByName('num_pedido_cli').AsString);
        WrapText := True;
        ShrinkToFit := False;
      end;
      { C - Sequencia do Produto no Pedido }
      with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := FieldByName('num_seq_pedido').AsInteger;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { D - Código do Produto }
      with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        NumberFormat := '@';
        Value := FmtProdutoCliente(nota_fiscal_saida.FieldByName('cod_cliente').AsString, FieldByName('cod_produto').AsString).fmtProduto;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { E - Descrição do Produto em Português/Inglês + NCM }
      with ProdutoDet(FieldByName('cod_produto').AsString, nota_fiscal_saidacod_cliente.AsString, nf_saida_complementocod_fornecedor.AsInteger) do
      begin
        s1 := Ingles;
        s2 := Portugues;

        if s1[Length(s1)] <> '.' then
           s1 := s1 + '.';

        s := s1 + ' ' + S2 + '. ('+Grupo + ', NCM: ' + Ncm + ')';

        with ExcelWorkSheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)] do
        begin
          Font.ColorIndex := CorNcm;
          Font.Bold := True;
          if Not(Existe) then Interior.ColorIndex := xlVermelho;
        end;

      end;
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := s;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
        Characters[Length(s1)+1, Length(s1+s2)+3].Font.Bold := True;
        Characters[Length(s1+s2)+3, Length(s)].Font.Bold := False;
      end;
      { F - QUANTIDADE }
      with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Value := FieldByName('qtd_produto').AsFloat;
        NumberFormat := '#.##0,0';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { G - PREÇO REAL }
      with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
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
      { H - TOTAL REAL }
      with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
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
      { I - COMENTÁRIO PREÇO REAL }
      with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
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
      { J - PREÇO ESPECIAL }
      with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        if (FieldByName('vlr_unitario_esp').AsFloat > 0) and (FieldByName('vlr_unitario').AsFloat <> FieldByName('vlr_unitario_esp').AsFloat) then
            Interior.ColorIndex := 6
        else
            Interior.ColorIndex := 7;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        if FieldByName('vlr_unitario_esp').AsFloat > 0 then
        begin
            Value := FieldByName('vlr_unitario_esp').AsFloat;
        end;
        NumberFormat := '#.##0,000000';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { K - TOTAL ESPECIAL }
      with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
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
      { L - COMENTÁRIO PREÇO ESPECIAL }
      with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
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

      { Embalagem Especial }
      if (FieldByName('ies_emb_esp').AsString = 'S') then
      begin
         with emb_esp_fat do
         begin
           Close;
           ParamByName('cod_empresa').AsInteger	:= vgCod_Empresa;
           ParamByName('num_nota_fiscal').AsInteger 	:= nota_fiscal_saidanum_nota_fiscal.AsInteger;
           ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
           ParamByName('seq_emb').AsInteger := SeqEmbEsp;
           Open;
           Mesclar := FieldByName('mesclar').AsString;
           PesLiquidoCx := FieldByName('pes_liquido').Value;
          end;
      end;

      { Embalagem Padrão - chamada para cby_calc_embalagem }
      with emb_padrao do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('cod_produto').Value := ProdutosExcelAlteracao.FieldByName('cod_produto').AsString;
        ParamByName('qtd_produto').Value := ProdutosExcelAlteracao.FieldByName('qtd_produto').AsFloat;
        Open;
      end;

      { M - TOTAL VOLUME IN M³ }
      with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
      begin
        NumberFormat := VolumeNumberFormat;
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(RC[3]*RC[7],' + VolumeDecimais + ')'
        else
           FormulaR1C1 := '=ROUND(RC[4]*RC[7],' + VolumeDecimais + ')';
      end;

      { N - TOTAL GROSS WEIGHT (Kg) }
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(((RC[5]-(RC[10]*RC[4]))*RC[2])+(RC[-8]*RC[10]),2)'
        else
           FormulaR1C1 := '=ROUND(RC[3]*RC[5],2)';
      end;

      { O - TOTAL NET WEIGHT (Kg) }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (Mesclar = 'S') then Value := PesLiquidoCx
                           else FormulaR1C1 := '=ROUND(RC[-9]*RC[9],2)';

      end;

      { P - TOTAL QUANTITY OF CARTONS }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUNDUP(RC[-10]/RC[2],0)'
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

      { Q - SPECIAL CARTONS }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := emb_esp_fatqtd_caixas.AsFloat;
      end;

      { R - QUANTITY OF UNITS INSIDE THE CARTON }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           Value := emb_padraoqtd_master_box.AsFloat;
      end;

      { S - Peso Bruto de 1 Caixa - Gross Weight 1 Packing }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
            Value := emb_esp_fatpes_bruto_cx.AsFloat
        else
            Value := emb_padraopes_bruto_caixa.AsFloat;
      end;

      { T - Volume }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
      end;

      { U - Comprimento }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
            Value := emb_esp_fatprofundidade.AsFloat
        else Value := emb_padraocomprimento.AsFloat;
      end;

      { V - Largura }
      with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := emb_esp_fatlargura.AsFloat
        else Value := emb_padraolargura.AsFloat;
      end;

      { W - Altura }
      with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := emb_esp_fataltura.AsFloat
        else Value := emb_padraoaltura.AsFloat;
      end;

      { X - NET WEIGHT OF THE PRODUCT (Kg) }
      with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
      begin
        NumberFormat := '##0,0000';
        Value :=  emb_padraopes_unit_prod.AsFloat;
      end;

      if ((FieldByName('seq_pallet').AsInteger > 0) and (FieldByName('qtd_pallet').AsInteger > 0)) then
      begin
        { Y - QUANTITY OF PALLETS }
        with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
         Value := FieldByName('qtd_pallet').AsInteger;
        end;
        { Z - PESO PALLET VAZIO }
        with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,00';
         Value := FieldByName('pes_pallet_vazio').AsFloat;
        end;
        { AA - PALLET GROSS WEIGHT }
        with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,00';
         Value := FieldByName('pes_bruto_pallet').AsFloat;
        end;
        { AB - PALLET NET WEIGHT }
        with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,00';
         Value := FieldByName('pes_liquido_pallet').AsFloat;
        end;
        { AC - COMPRIMENTO DO PALLET }
        with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
         Value := FieldByName('comprimento_pallet').AsFloat;
        end;
        { AD - LARGURA DO PALLET }
        with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
         Value := FieldByName('largura_pallet').AsFloat;
        end;
        { AE - ALTURA DO PALLET }
        with ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
         Value := FieldByName('altura_pallet').AsFloat;
        end;
        { AF - PALLET VOLUME }
        with ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,000';
         FormulaR1C1 := '=ROUND(ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)*RC[-7],3)';
        end;
      end;

      { Comissões de Fornecedor e Cliente }
      if (fComissao) then
      begin
         {AH - percentual Fornecedor }
         with ExcelWorksheet.Range['AG' + IntToStr(Linha),'AG' + IntToStr(Linha)] do
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

         {AH - Valor Comissão do Fornecedor  }
         with ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
         begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '0,00';
            if (FieldByName('ies_base_comissao').Value = '1') then FormulaR1C1 := '=ROUND(RC[-26]*RC[-1]/100,2)'
                                                              else FormulaR1C1 := '=ROUND(RC[-23]*RC[-1]/100,2)';
            WrapText := True;
            ShrinkToFit := False;
         end;

         {AI - percentual Cliente }
         with ExcelWorksheet.Range['AI' + IntToStr(Linha),'AI' + IntToStr(Linha)] do
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

         {AJ - Valor Comissão do Cliente  }
         with ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)] do
         begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '0,00';
            if (FieldByName('ies_base_comissao').Value = '1') then FormulaR1C1 := '=ROUND(RC[-25]*RC[-1]/100,2)'
                                                              else FormulaR1C1 := '=ROUND(RC[-28]*RC[-1]/100,2)';
            WrapText := True;
            ShrinkToFit := False;
         end;
      end;
      Next;

      { mesclar células de embalagens especiais }
      if (FieldByName('seq_emb_esp').AsInteger <> SeqEmbEsp) or (EOF) then
      begin
       if (SeqEmbEsp > 0) then
       begin
          with ExcelWorkSheet.Range['M'+IntToStr(LinIniEmbEsp),'M'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            //HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['N'+IntToStr(LinIniEmbEsp),'N'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            //HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          if (emb_esp_fat.FieldByName('mesclar').AsString = 'S') then
          begin
             with ExcelWorkSheet.Range['O'+IntToStr(LinIniEmbEsp),'O'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 0;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
          end;
          with ExcelWorkSheet.Range['P'+IntToStr(LinIniEmbEsp),'P'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['Q'+IntToStr(LinIniEmbEsp),'Q'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['R'+IntToStr(LinIniEmbEsp),'R'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['S'+IntToStr(LinIniEmbEsp),'S'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['T'+IntToStr(LinIniEmbEsp),'T'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['U'+IntToStr(LinIniEmbEsp),'U'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['V'+IntToStr(LinIniEmbEsp),'V'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
          with ExcelWorkSheet.Range['W'+IntToStr(LinIniEmbEsp),'W'+IntToStr(Linha)] do
          begin
            MergeCells := True;
            Interior.ColorIndex := 0;
            VerticalAlignment := xlCenter;
            WrapText := True;
            ShrinkToFit := False;
          end;
       end;
       SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
       LinIniEmbEsp := Linha + 1;
      end;
      { mesclar células de pallets }
      if (nota_fiscal_saidaies_pallets.AsString = 'S') then
      begin
          if (FieldByname('seq_pallet').AsInteger <> SeqPallet) or (EOF) then
          begin
            if (SeqPallet > 0) then
            begin
               with ExcelWorkSheet.Range['Y'+IntToStr(LinIniPallet),'Y'+IntToStr(Linha)] do
               begin
                 MergeCells := True;
                 Interior.ColorIndex := 0;
                 HorizontalAlignment := xlCenter;
                 VerticalAlignment := xlCenter;
                 WrapText := True;
                 ShrinkToFit := False;
               end;
               with ExcelWorkSheet.Range['Z'+IntToStr(LinIniPallet),'Z'+IntToStr(Linha)] do
               begin
                 MergeCells := True;
                 Interior.ColorIndex := 0;
                 HorizontalAlignment := xlCenter;
                 VerticalAlignment := xlCenter;
                 WrapText := True;
                 ShrinkToFit := False;
               end;
               with ExcelWorkSheet.Range['AA'+IntToStr(LinIniPallet),'AA'+IntToStr(Linha)] do
               begin
                 MergeCells := True;
                 Interior.ColorIndex := 0;
                 HorizontalAlignment := xlCenter;
                 VerticalAlignment := xlCenter;
                 WrapText := True;
                 ShrinkToFit := False;
               end;
               with ExcelWorkSheet.Range['AB'+IntToStr(LinIniPallet),'AB'+IntToStr(Linha)] do
               begin
                 MergeCells := True;
                 Interior.ColorIndex := 0;
                 HorizontalAlignment := xlCenter;
                 VerticalAlignment := xlCenter;
                 WrapText := True;
                 ShrinkToFit := False;
               end;
               with ExcelWorkSheet.Range['AC'+IntToStr(LinIniPallet),'AC'+IntToStr(Linha)] do
               begin
                 MergeCells := True;
                 Interior.ColorIndex := 0;
                 HorizontalAlignment := xlCenter;
                 VerticalAlignment := xlCenter;
                 WrapText := True;
                 ShrinkToFit := False;
               end;
               with ExcelWorkSheet.Range['AD'+IntToStr(LinIniPallet),'AD'+IntToStr(Linha)] do
               begin
                 MergeCells := True;
                 Interior.ColorIndex := 0;
                 HorizontalAlignment := xlCenter;
                 VerticalAlignment := xlCenter;
                 WrapText := True;
                 ShrinkToFit := False;
               end;
               with ExcelWorkSheet.Range['AE'+IntToStr(LinIniPallet),'AE'+IntToStr(Linha)] do
               begin
                MergeCells := True;
                Interior.ColorIndex := 0;
                HorizontalAlignment := xlCenter;
                VerticalAlignment := xlCenter;
                WrapText := True;
                ShrinkToFit := False;
               end;
               with ExcelWorkSheet.Range['AF'+IntToStr(LinIniPallet),'AF'+IntToStr(Linha)] do
               begin
                MergeCells := True;
                Interior.ColorIndex := 0;
                HorizontalAlignment := xlCenter;
                VerticalAlignment := xlCenter;
                WrapText := True;
                ShrinkToFit := False;
               end;
               { Cores para os Pallets }
               if (fPallet) then xlCorPallet := 4 else xlCorPallet := 6;
               fPallet := Not(fPallet);
               with ExcelWorkSheet.Range['A'+IntToStr(LinIniPallet),'I'+IntToStr(Linha)] do
               begin
                 Interior.ColorIndex := xlCorPallet;
               end;
               with ExcelWorkSheet.Range['M'+IntToStr(LinIniPallet),'AF'+IntToStr(Linha)] do
               begin
                 Interior.ColorIndex := xlCorPallet;
               end;

               end;
               SeqPallet := FieldByName('seq_pallet').AsInteger;
               LinIniPallet := Linha + 1;
               end;
      end; { ies_pallet = 'S' }

      Inc(Linha);

    end;
    { TOTAIS }
    Inc(Linha);
    with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Value := 'TOTAL BRUTO: ';
      HorizontalAlignment := xlRight;
    end;
    { F - QUANTIDADE }
    with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 0;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '#.##0,0';
      WrapText := True;
      ShrinkToFit := False;
    end;
    { H - TOTAL GERAL REAL PEDIDO }
    with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
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
    { K - TOTAL GERAL ESPECIAL PEDIDO }
    with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
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

    { M - TOTAL VOLUME }
    with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),' + VolumeDecimaisTotal + ')';
      NumberFormat := VolumeNumberFormat;
    end;

    { N - TOTAL PESO BRUTO }
    with ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      //FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),2)';
      NumberFormat := '#.##0,00';
    end;

    { O - TOTAL PESO LÍQUIDO }
    with ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),2)';
      NumberFormat := '#.##0,00';
    end;

    { P - TOTAL DE CAIXAS }
    with ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '##.##0';
    end;

    { Q - SPECIAL CARTONS }
    with ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '##.##0';
    end;

    with ExcelWorksheet.Range['M' + IntToStr(Linha),'Y' + IntToStr(Linha)] do
    begin
      Interior.ColorIndex := 34;
    end;

    { PALLETS }
    if (nota_fiscal_saidaies_pallets.AsString = 'S') then
    begin
       { Y - QUANTIDADE TOTAL DE PALLETS }
       with ExcelWorksheet.Range['Y' + IntToStr(Linha),'Y' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
         NumberFormat := '##.##0';
       end;
       { AA - TOTAL PESO BRUTO PALLETS }
       with ExcelWorksheet.Range['AA' + IntToStr(Linha),'AA' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
         //FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),0)';
         NumberFormat := '#.##0,00';
       end;
       { AB - TOTAL PESO LÍQUIDO PALLETS }
       with ExcelWorksheet.Range['AB' + IntToStr(Linha),'AB' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
         //FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),0)';
         NumberFormat := '#.##0,00';
       end;
       { AF - TOTAL VOLUME PALLETS }
       with ExcelWorksheet.Range['AF' + IntToStr(Linha),'AF' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),2)';
         NumberFormat := '#.##0,00';
       end;
       with ExcelWorksheet.Range['Y' + IntToStr(Linha),'AF' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         Interior.ColorIndex := 45;
       end;
    end;

    if (fComissao) then
    begin
       { AH - TOTAL COMISSAO FORNECEDOR }
       with ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         //Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),2)';
         NumberFormat := '#.##0,00';
       end;
       { AJ - TOTAL COMISSAO CLIENTE }
       with ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AJ' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         //Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),2)';
         NumberFormat := '#.##0,00';
       end;
    end;
    Close;
  end;
  { Bordas na área ocupada da planilha }
  with ExcelWorkSheet.Range['A4', 'AJ' + IntToStr(Linha)] do
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

  { centralizar células }
  with ExcelWorksheet.Range['M4', 'AJ' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlCenter;
  end;

  { Esconder ou não colunas para Pallets }
  if nota_fiscal_saidaies_pallets.AsString = 'N' then
     ExcelWorksheet.Range['Y' + IntToStr(Linha),'AJ' + IntToStr(Linha)].EntireColumn.Hidden := True;

  { Esconder as colunas de Comissões quando for Planilha de alteração }
  ExcelWorkSheet.Range['AG1','AJ1'].EntireColumn.Hidden := Not(fComissao);
  ExcelWorkSheet.Range['Z1','Z1'].EntireColumn.Hidden := True; // peso pallet vazio
end;

procedure Tfr_ManNF.GerarPendentesEmbarque;
begin
  { gerar anexada a planilha de manutenção, uma relação de itens pendentes de embarque }

  { Itens Pendentes de Embarque }
  with PendentesEmbarque do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').Value     := nota_fiscal_saidacod_cliente.AsString;
    ParamByName('cod_fornecedor').Value  := nf_saida_complementocod_fornecedor.AsInteger;
    Open;

    Linha := Linha + 5;

    with ExcelWorksheet.Range['A' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Value := 'PRODUTOS PENDENTES DE EMBARQUE: ' + trim(nota_fiscal_saidacod_cliente.AsString) + ' / ' + trim(nf_saida_complementolkpFornecedor.AsString);
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;                                                                          
      MergeCells := True;
      Characters[01,31].Font.Bold := True;
    end;
    with ExcelWorksheet.Range['M' + IntToStr(Linha),'X' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Value := 'PACKAGES';
      HorizontalAlignment := xlCenter;
      MergeCells := True;
      Font.Bold := True;
      Interior.ColorIndex := 34;
    end;
    ExcelWorksheet.Range['A' + IntToStr(Linha),'L' + IntToStr(Linha)].Interior.ColorIndex := 44;

    Inc(Linha);
    LinhaAux := Linha;
    
    ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value := 'SEQ';
    ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 3.00;

    ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value := 'PEDIDO';
    ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 13.00;

    ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value := 'SEQ';
    ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 3.00;

    ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value := 'PRODUTO';
    ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 13.00;

    ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value := 'DESCRIÇÃO';
    ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 48.00;

    ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value := 'QUANTIDADE';
    ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 9.71;

    ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value := 'PREÇO REAL';
    ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 9.14;
    ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value := 'TOTAL REAL';
    ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ColumnWidth := 9.43;
    ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value := 'COMENTÁRIO PREÇO REAL';
    ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ColumnWidth := 30.00;

    ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value := 'PREÇO ESP';
    ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].ColumnWidth := 9.14;
    ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value := 'TOTAL ESP';
    ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ColumnWidth := 9.43;
    ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value := 'COMENTÁRIO PREÇO ESPECIAL';
    ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ColumnWidth := 30.00;

    ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value := 'TOTAL VOLUME IN M³';
    ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value := 'TOTAL GROSS WEIGHT (Kg)';
    ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value := 'TOTAL NET WEIGHT (Kg)';
    ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value := 'TOTAL QTY OF PACKAGES';
    ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)].Value := 'SPECIAL CARTONS';
    ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)].Value := 'QUANTITY STANDARD OF UNITS INSIDE THE CARTON';
    ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)].Value := 'GROSS WEIGHT OF 1 PACKAGE (Kg)';
    ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)].Value := 'VOLUME OF 1 PACKAGE (m³)';
    ExcelWorksheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)].Value := 'L (CM)';
    ExcelWorksheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)].Value := 'W (CM)';
    ExcelWorksheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)].Value := 'H (CM)';
    ExcelWorksheet.Range['X' + IntToStr(Linha),'X' + IntToStr(Linha)].Value := 'NET WEIGHT OF THE PRODUCT (Kg)';

    ExcelWorksheet.Range['A' + IntToStr(Linha),'F' + IntToStr(Linha)].Interior.ColorIndex := 40;
    ExcelWorksheet.Range['G' + IntToStr(Linha),'I' + IntToStr(Linha)].Interior.ColorIndex := 35;
    ExcelWorksheet.Range['J' + IntToStr(Linha),'L' + IntToStr(Linha)].Interior.ColorIndex := 07;

   { Bordas no cabeçalho }
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'Y' + IntToStr(Linha)] do
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


    { OCULTAR SEQUENCIA DOS PROUTO NA FATURA E NO PEDIDO }
    //ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].EntireColumn.Hidden := True;
    //ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].EntireColumn.Hidden := True;

    Inc(Linha);
    First;
    while Not(EOF) do
    begin
      { B - Número do Pedido do Cliente }
      with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        NumberFormat := '@';
        Value := trim(FieldByName('num_pedido_cli').AsString);
        WrapText := True;
        ShrinkToFit := False;
      end;
      { C - Sequencia do Produto no Pedido }
      with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := FieldByName('num_seq_pedido').AsInteger;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { D - Código do Produto }
      with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        NumberFormat := '@';
        Value := FmtProdutoCliente(nota_fiscal_saida.FieldByName('cod_cliente').AsString, FieldByName('cod_produto').AsString).fmtProduto;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { E - Descrição do Produto em Português }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;

        with ProdutoDet(FieldByName('cod_produto').AsString, nota_fiscal_saidacod_cliente.AsString, nf_saida_complementocod_fornecedor.AsInteger) do
             Value := Portugues;

        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;
      { F - QUANTIDADE PENDENTE }
      with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Value := FieldByName('qtd_pendente').AsFloat;
        NumberFormat := '#.##0,0';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { G - PREÇO REAL }
      with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
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
      { H - TOTAL REAL }
      with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
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
      { I - COMENTÁRIO PREÇO REAL }
      with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
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

      { J - PREÇO ESPECIAL }
      with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 7;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        if FieldByName('vlr_unitario_esp').AsFloat > 0 then
        begin
            Value := FieldByName('vlr_unitario_esp').AsFloat;
        end;
        NumberFormat := '#.##0,000000';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { K - TOTAL ESPECIAL }
      with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 7;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
        NumberFormat := '#.##0,00';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { L - COMENTÁRIO PREÇO ESPECIAL }
      with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
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
      { M - TOTAL VOLUME IN M³ }
      with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
      begin
        NumberFormat := VolumeNumberFormat;
        FormulaR1C1 := '=ROUND(RC[3]*RC[7],' + VolumeDecimais + ')';
        HorizontalAlignment := xlCenter;
      end;
      { N - TOTAL GROSS WEIGHT (Kg) }
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        FormulaR1C1 := '=ROUND(((RC[5]-(RC[10]*RC[4]))*RC[2])+(RC[-8]*RC[10]),2)';
        HorizontalAlignment := xlCenter;
      end;
      { O - TOTAL NET WEIGHT (Kg) }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        FormulaR1C1 := '=ROUND(RC[-9]*RC[9],2)';
        HorizontalAlignment := xlCenter;
      end;
      { P - TOTAL QUANTITY OF CARTON }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        FormulaR1C1 := '=ROUNDUP(RC[-10]/RC[2],0)';
        HorizontalAlignment := xlCenter;
        if (FieldByName('caixa_fechada').AsString = 'N') then
        begin
          Font.ColorIndex := 3;
          Font.Bold := True;
        end else begin
          Font.ColorIndex := 0;
          Font.Bold := False;
        end;
      end;
      { R - QUANTITY OF UNITS INSIDE THE PACKAGE }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('un_cx_master').AsFloat;
        HorizontalAlignment := xlCenter;
      end;
      { S - Peso Bruto de 1 Caixa - Gross Weight 1 Package }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Value := FieldByName('pes_bruto_caixa').AsFloat;
        HorizontalAlignment := xlCenter;
      end;
      { T - Volume }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
        HorizontalAlignment := xlCenter;
      end;

      { U - Comprimento }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('comprimento').AsFloat;
        HorizontalAlignment := xlCenter;
      end;

      { V - Largura }
      with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('largura').AsFloat;
        HorizontalAlignment := xlCenter;
      end;

      { W - Altura }
      with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('altura').AsFloat;
        HorizontalAlignment := xlCenter;
      end;
      { X - NET WEIGHT OF THE PRODUCT (Kg) }
      with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
      begin
        NumberFormat := '##0,0000';
        Value :=  FieldByName('pes_unit_prod').AsFloat;
        HorizontalAlignment := xlCenter;
      end;

      Inc(Linha);
      Next;
    end;
    Close;
  end;
  { bordas desde o cabeçalho }
  with ExcelWorkSheet.Range['A' + IntToStr(LinhaAux),'Y' + IntToStr(Linha)] do
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

procedure Tfr_ManNF.ImportarExcelAlteracao(Sender: TObject);
Var
  Linha : Integer;
  SeqPed, SeqFat, SeqPkl, SeqEmbEsp, NumeroCX, SeqPallet, qtd_pallet : Integer;
  pes_bruto_pallet, pes_liquido_pallet, comprimento_pallet, largura_pallet, altura_pallet, volume_pallet, peso_pallet_vazio: double;
  AlturaCX, LarguraCX, ComprimentoCX, VolumeCX, VolumeTotalCx, PesoCXVazia, PesoBrutoCx, PesoBrutoTotalCx, PesoLiqTotalCx : double;
  Preco, PrecoEsp, Qtde, VlrRealAd, VlrEspAd, ComF, ComC : Double;
  s, CodProduto, Pedido, ObsPreco, ObsPrecoEsp, obs_ad, TipoAD : String;
  ok: Boolean;
  NumPedido: Int64;
  Tbr, Tbe, Mesclar : String;

begin
  pgConfDescAdic.ActivePage := tsBl;

  { Estornar Fatura }
  if Not(FileExists(FileListaEsp)) then Exit;
     AbrirExcel(FileListaEsp);
  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnImportarListaEsp.Enabled := False;
  Application.ProcessMessages;

  { Estornar quantidades faturadas nos pedidos }
  with spr_estornar_fatura do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;

  { Excluir Embalagens Especiais }
  emb_especial_fat.First;
  while Not(emb_especial_fat.Eof) do
    emb_especial_fat.Delete;

  Linha := 4;
  SeqPkl := 1;
  SeqPallet := 0;

  { Iniciar Leitura do Excel de Alteração - Tracker é o Código do Produto }
  While (trim(ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Text) <> '') do
  begin
    ok := False;
    { A - Sequencia FATURA }
    try
      SeqFat := ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Value2;
    except
      SeqFat := 0;
    end;
    { B - Pedido do Cliente }
    Pedido := trim(ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Value2);
    { verificar se Número da Confirmação Existe }
    with dmCOM.GetPedido(Pedido, 'P') do
    begin
      if (Existe) then
      begin
        NumPedido := Numero;
        ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Interior.ColorIndex := 0;
      end else
      begin
        ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Interior.ColorIndex := 3;
        Inc(Linha);
        Continue;
      end;
    end;
    { C - Sequencia PEDIDO }
    try
      SeqPed := ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Value2;
    except
      SeqPed := 0;
    end;                                                                    
    { D - Código do Produto }
    CodProduto := trim(ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Value2);
    CodProduto := SemFmtProduto(nota_fiscal_saidacod_cliente.AsString, CodProduto);

    with ProcurarProduto(CodProduto, nota_fiscal_saidacod_cliente.AsString, nf_saida_complementocod_fornecedor.AsInteger) do
    begin
      if Not(Existe) then
      begin
        inc(Linha);
        Continue;
      end;
      ComF := Comis_f;
      ComC := Comis_c;
    end;

    { F - Quantidade }
    try
      Qtde := ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)].Value2;
    except
      Qtde := 0.00;
    end;
    { G - Preço Real }
    try
      Preco := ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)].Value2;
    except
      Preco := 0;
    end;
    { I - Comentário Preço Real }
    ObsPreco := ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)].Value;

    { J - Preço Especial }
    try
      PrecoEsp := ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)].Value2;
    except
      PrecoEsp := 0.00;
    end;
    { L - Comentário Preço Especial }
    ObsPrecoEsp := ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)].Value;

    { Procurar Item da Fatura }
    with ProdutosFaturaImp do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
      ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
      ParamByName('num_sequencia').AsInteger := SeqFat;
      Open;
      { Verificar se existe item na fatura }
      if Not(IsEmpty) then
      begin { se existe posicionar no item }
         ProdutosFaturaImp.Edit;
      end
      else
      begin { não existe incluir um novo item }
         ProdutosFaturaImp.Append;
         ProdutosFaturaImpcod_empresa.AsInteger := vgCod_Empresa;
         ProdutosFaturaImpnum_nota_fiscal.AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
         ProdutosFaturaImpserie.AsString := nota_fiscal_saidaserie.AsString;
         SeqFat := SeqNotaFiscal(nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString);
         ProdutosFaturaImpnum_sequencia.AsInteger := SeqFat;
         ProdutosFaturaImpcod_produto.AsString := CodProduto;
         ProdutosFaturaImpdat_cadastro.AsDateTime := nota_fiscal_saidadat_emissao.AsDateTime;
         ProdutosFaturaImppct_comissao_f.Value := ComF;
         ProdutosFaturaImppct_comissao_c.Value := ComC;
      end;

      if (Preco = 0) then
      begin
        { obter preço do Produto }
        with dmCOM.PrecoItem(CodProduto, nota_fiscal_saidacod_cliente.AsString, nf_saida_complementocod_fornecedor.AsInteger) do
        begin
          if (Existe) then
          begin
             Preco := PrecoItem;
             { comparar valores atuais com anteriores }
             if (Preco > 0) then
             begin
               ok := True;
               ProdutosFaturaImpvlr_unitario.AsFloat := PrecoItem;
               if (fComissao) then
               begin
                 ProdutosFaturaImppct_comissao_f.Value := Comis_f;
                 ProdutosFaturaImppct_comissao_c.Value := Comis_c;
               end;
             end;
          end;
        end;
      end else
      { Preco > 0 usar preço da planilha }
      begin
        ok := True;
        ProdutosFaturaImpvlr_unitario.AsFloat := Preco;
        if (fComissao) then
        begin
          { obter comissões do produto }
          with dmCOM.PrecoItem(CodProduto, nota_fiscal_saidacod_cliente.AsString, nf_saida_complementocod_fornecedor.AsInteger) do
          begin
            ProdutosFaturaImppct_comissao_f.Value := Comis_f;
            ProdutosFaturaImppct_comissao_c.Value := Comis_c;
          end;
        end;
      end;
      if (PrecoEsp > 0) then
      begin
         ProdutosFaturaImpvlr_unitario_esp.AsFloat := PrecoEsp;
         ok := True;
      end
      else
         ProdutosFaturaImpvlr_unitario_esp.Clear;

      if (trim(ObsPreco) <> '') then ProdutosFaturaImpobs_preco.AsString := ObsPreco;
      if (trim(ObsPrecoEsp) <> '') then ProdutosFaturaImpobs_preco_esp.AsString := ObsPrecoEsp;

      ProdutosFaturaImpqtd_produto.AsFloat := Qtde;
      ProdutosFaturaImpseq_pkl.AsInteger := SeqPkl;

      ProdutosFaturaImpnum_pedido.AsLargeInt := NumPedido;
      ProdutosFaturaImpnum_seq_pedido.AsInteger := SeqPed;

      { Qtde = 0, marcar item para exclusão }
      if (Qtde = 0) then
      begin
        ProdutosFaturaImpies_situacao.AsString := 'E';
        ok := True;
        ProdutosFaturaImp.Post;
        Inc(Linha);
        Continue;
      end;
      { Qtde > 0, registrar na fatura }
      { OBS.: Não há necessidade de checar a quantidade pendente no pedido, pois a quantidade faturada        }
      {       será levada ao pedido, SOMENTE SE A QUANTIDADE FATURADA FOR MAIOR QUE O SALDO PENDENTE,         }
      {       deixando assim a quantidade pedida = qtde faturada e o saldo pendente ZERADO - Nova regra que   }
      {       atribui um único item do pedido a um único item da fatura                                       }
      {       ESTE PROCESSO SERÁ EXECUTADO PELA PROCEDURE spr_faturar chamada no final desta procedure        }

      { Para Embalagens Normais, caso não seja informada a Qtde de Caixas (col P), }
      { calcular o número de caixas conforme a quantidade pedida do produto.       }
      { se for Embalagem Especial, ignorar este processo.                          }
      if (ExcelWorksheet.Range['P'+IntToStr(linha), 'P'+IntToStr(linha)].Text <> '') or
         ((ExcelWorksheet.Range['P'+IntToStr(linha), 'P'+IntToStr(linha)].Text = '') and
          (ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].Text = '')) then
      begin
         ProdutosFaturaImpies_emb_esp.AsString := 'N';

         with dmCOM.CalcEmbalagem(CodProduto, Qtde) do
         begin
           ProdutosFaturaImpqtd_export_box.AsFloat := QtdExportBox;
           ProdutosFaturaImpqtd_inner_box.AsFloat := QtdInnerBox;
           ProdutosFaturaImpvol_caixas.AsFloat := VolCaixas;
           ProdutosFaturaImppes_bruto.AsFloat := PesBruto;
           ProdutosFaturaImppes_liquido.AsFloat := PesLiquido;
           ProdutosFaturaImpies_caixa_fechada.AsString := CaixaFechada;
         end;
         ProdutosFaturaImpvlr_liquido.AsFloat := ProdutosFaturaImpqtd_produto.AsFloat * ProdutosFaturaImpvlr_unitario.AsFloat;
         ProdutosFaturaImpvlr_liquido_esp.AsFloat := ProdutosFaturaImpqtd_produto.AsFloat * ProdutosFaturaImpvlr_unitario_esp.AsFloat;
         ok := True;
         ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Interior.ColorIndex := 0;
      end;

      { *** EMBALAGEM ESPECIAL *** }
      if (ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].MergeCells = True) and
         (ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].Text <> '') or
         (ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].Text <> '') then
      begin
         SeqEmbEsp := SeqEmbEsp + 1;
         { M - TOTAL VOLUME IN M³ - garantir cálculo do Volume Total das Caixas }
         with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
         begin
           NumberFormat := VolumeNumberFormat;
           FormulaR1C1 := '=ROUND(RC[4]*RC[7],' + VolumeDecimais + ')';
         end;
         { T - Volume - garantir cálculo do Volume da Caixa}
         with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
         begin
           NumberFormat := '#.##0,0000';
           FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
         end;

         { M - VOLUME TOTAL DAS CAIXAS }
         VolumeTotalCx := ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)].Value2;
         { N - PESO BRUTO TOTAL DAS CAIXAS}
         PesoBrutoTotalCx := ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)].Value2;
         { O - TOTAL NET WEIGHT (Kg) }
         PesoLiqTotalCx := ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)].Value2;
         if (ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].MergeCells = True) then
            Mesclar := 'S'
         else
            Mesclar := 'N';
         { Q - NÚMERO DE CAIXAS ESPECIAIS }
         NumeroCX := ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)].Value2;
         { S - PESO BRUTO DE 1 CAIXA }
         PesoBrutoCx := ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)].Value2;
         { T - VOLUME DA CAIXA }
         VolumeCX := ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)].Value2;
         { U - COMPRIMENTO }
         ComprimentoCX := ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)].Value2;
         { V - LARGURA }
         LarguraCX := ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)].Value2;
         { W - ALTURA }
         AlturaCX := ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)].Value2;

         { Gravar dados da Embalagem Especial }                                                              
         with emb_especial_fat do                                                   
         begin
            Append;
            FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
            FieldByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
            FieldByName('serie').AsString := nota_fiscal_saidaserie.AsString;
            FieldByName('seq').AsInteger := SeqEmbEsp;

            FieldByName('den_embalagem').AsString := 'CAIXA NUM: ' + IntToStr(SeqEmbEsp);

            FieldByName('qtd_caixas').AsFloat := NumeroCX;        { Quantidade de Packages }
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
         { gravar dados da embalagem em Itens da Fatura }
         ProdutosFaturaImp.FieldByName('vol_caixas').AsFloat := Arredonda(VolumeTotalCx, -3);
         ProdutosFaturaImp.FieldByName('qtd_export_box').AsInteger := NumeroCX;
         ProdutosFaturaImp.FieldByName('ies_emb_esp').AsString := 'S';
         ProdutosFaturaImp.FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
      end;
      { ITENS DA EMBALAGEM ESPECIAL }
      if (ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].MergeCells = True) or
         (ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].Text <> '') then
      begin
         { gravar dados do item em Itens da Fatura }
         if (ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].Text = '') then
         begin
           ProdutosFaturaImp.FieldByName('vol_caixas').Clear;
           ProdutosFaturaImp.FieldByName('qtd_export_box').Clear;
           ProdutosFaturaImp.FieldByName('pes_liquido').Clear;
           ProdutosFaturaImp.FieldByName('pes_bruto').Clear;
         end;
         ProdutosFaturaImp.FieldByName('ies_emb_esp').AsString := 'S';
         ProdutosFaturaImp.FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
         { gravar itens da embalagem especial }
         with emb_especial_item_fat do
         begin
           Append;
           FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
           FieldByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
           FieldByName('serie').AsString := nota_fiscal_saidaserie.AsString;
           FieldByName('seq').AsInteger := SeqEmbEsp;
           FieldByName('num_sequencia').AsInteger := SeqFat; { a mesma sequencia dos itens da fatura }
           FieldByName('cod_produto').AsString := CodProduto;
           FieldByName('qtd_produto').AsFloat := Qtde;
           FieldByName('pes_liquido').AsFloat := dmCOM.CalcEmbalagem(CodProduto, Qtde).PesLiquido;
           Post;
         end;
      end;

      { ** PALLETS PACKAGES ** }
      if (nota_fiscal_saidaies_pallets.AsString = 'S') then
      begin
        qtd_pallet := 0;
        pes_bruto_pallet := 0;
        pes_liquido_pallet := 0;
        comprimento_pallet := 0;
        peso_pallet_vazio := 0;
        largura_pallet := 0;
        altura_pallet := 0;
        volume_pallet := 0;
        { Identificar início do Pallet }
        if (ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].MergeCells = True) and
           (ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].Text <> '') or
           (ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].Text <> '') then
        begin
          { Y - QTD PALLET }
          qtd_pallet := ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].Value2;
          { Z - PESO PALLET VAZIO }
          peso_pallet_vazio := ExcelWorksheet.Range['Z'+IntToStr(linha), 'Z'+IntToStr(linha)].Value2;
          { AA - PESO BRUTO PALLET }
          pes_bruto_pallet := ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].Value2;
          { AC - COMPRIMENTO (L) }
          comprimento_pallet := ExcelWorksheet.Range['AC'+IntToStr(linha), 'AC'+IntToStr(linha)].Value2;
          { AD - LARGURA (W) }
          largura_pallet := ExcelWorksheet.Range['AD'+IntToStr(linha), 'AD'+IntToStr(linha)].Value2;
          { AE - ALTURA (H) }
          altura_pallet := ExcelWorksheet.Range['AE'+IntToStr(linha), 'AE'+IntToStr(linha)].Value2;
          { Volume e Pesos Liquido e Bruto dos Pallets serão calculados pela procedure spr_pesos_pallets_fat }
          SeqPallet := SeqPallet + 1;
        end;

        { Identificar item do Pallet }
        if (ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].MergeCells = True) or
           (ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].Text <> '') then
        begin
          if (SeqPallet > 0) then
             ProdutosFaturaImpseq_pallet.AsInteger := SeqPallet
          else
            ProdutosFaturaImpseq_pallet.Clear;
        end
        else ProdutosFaturaImpseq_pallet.Clear;
        { salvar informações dos pallets nos items da Fatura }
        ProdutosFaturaImpqtd_pallet.AsInteger := qtd_pallet;
        ProdutosFaturaImpcomprimento_pallet.AsFloat := comprimento_pallet;
        ProdutosFaturaImplargura_pallet.AsFloat := largura_pallet;
        ProdutosFaturaImpaltura_pallet.AsFloat := altura_pallet;
        ProdutosFaturaImpvolume_pallet.AsFloat := volume_pallet;
        ProdutosFaturaImppes_pallet_vazio.AsFloat := peso_pallet_vazio;
        ProdutosFaturaImppes_bruto_pallet.AsFloat := pes_bruto_pallet;
      end else
      begin
        ProdutosFaturaImpseq_pallet.Clear;
        ProdutosFaturaImpqtd_pallet.Clear;
        ProdutosFaturaImppes_bruto_pallet.Clear;
        ProdutosFaturaImppes_liquido_pallet.Clear;            
        ProdutosFaturaImpcomprimento_pallet.Clear;
        ProdutosFaturaImplargura_pallet.Clear;
        ProdutosFaturaImpaltura_pallet.Clear;
        ProdutosFaturaImpvolume_pallet.Clear;
        ProdutosFaturaImppes_pallet_vazio.Clear;
      end;

      { Tratar comissões importadas da planilha }
      if (fComissao) then
      begin
         if (ExcelWorksheet.Range['AG'+IntToStr(linha), 'AG'+IntToStr(linha)].Text <> '') then
             ProdutosFaturaImppct_comissao_f.AsFloat := ExcelWorksheet.Range['AG'+IntToStr(linha), 'AG'+IntToStr(linha)].Value2;

         if (ExcelWorksheet.Range['AI'+IntToStr(linha), 'AI'+IntToStr(linha)].Text <> '') then
             ProdutosFaturaImppct_comissao_c.AsFloat := ExcelWorksheet.Range['AI'+IntToStr(linha), 'AI'+IntToStr(linha)].Value2;
      end;
      { ATUALIZAR PLANILHA EXCEL }

      { A - Sequencia do Produto na Fatura }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       Value := SeqFat;
       WrapText := True;
       ShrinkToFit := False;
      end;
      { B - PEDIDO DO CLIENTE }
      with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       NumberFormat := '@';
       Value := Pedido;
       WrapText := True;
       ShrinkToFit := False;
      end;
      { C - Sequencia do Produto no Pedido }
      with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       Value := SeqPed;
       WrapText := True;
       ShrinkToFit := False;
      end;
      { D - CÓDIGO DO PRODUTO }
      with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       NumberFormat := '@';
       Value := FmtProdutoCliente(nota_fiscal_saida.FieldByName('cod_cliente').AsString, ProdutosFaturaImpcod_produto.AsString).fmtProduto;
       WrapText := True;
       ShrinkToFit := False;
       Interior.ColorIndex := 0;
      end;
      { E - DESCRIÇÃO DO PRODUTO }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       Value := ProdutoDet(CodProduto, nota_fiscal_saidacod_cliente.AsString, nf_saida_complementocod_fornecedor.AsInteger).Portugues;
       WrapText := True;
       ShrinkToFit := False;
       Rows.RowHeight := 12.75;
      end;
      { F - QUANTIDADE }
      with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlTop;
       Value := ProdutosFaturaImpqtd_produto.AsFloat;
       NumberFormat := '#.##0,0';
      end;
      { G - PREÇO REAL }
      with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlCenter;
       Value := ProdutosFaturaImpvlr_unitario.AsFloat;
       if (ProdutosFaturaImpvlr_unitario.AsFloat > 0) then Interior.ColorIndex := 35
                                                      else Interior.ColorIndex := 3;
       NumberFormat := '#.##0,000000';
       WrapText := True;
       ShrinkToFit := False;
      end;
      { H - TOTAL REAL }
      with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlTop;
       FormulaR1C1 := '=ROUND(RC[-2]*RC[-1],2)';
       NumberFormat := '###.##0,00';
       Interior.ColorIndex := 35;
      end;
      { J - PREÇO ESPECIAL }
      with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
       Font.Size := 9;
       Interior.ColorIndex := 7;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlCenter;
       Value := ProdutosFaturaImpvlr_unitario_esp.AsFloat;
       NumberFormat := '#.##0,000000';
       WrapText := True;
       ShrinkToFit := False;
      end;
      { K - TOTAL ESPECIAL }
      with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
      begin
       Font.Size := 8;
       HorizontalAlignment := xlRight;
       VerticalAlignment := xlTop;
       FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
       NumberFormat := '###.##0,00';
       Interior.ColorIndex := 7;
      end;
      end;
      ProdutosFaturaImpies_conjunto.AsString := 'N';

      Inc(Linha);
      Inc(SeqPkl);

      if (ok) then ProdutosFaturaImp.Post
              else ProdutosFaturaImp.Cancel;
  end;
  Inc(Linha);
  { H - SOMATÓRIA DO TOTAL REAL }
  with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
  begin
   Font.Size := 8;
   HorizontalAlignment := xlRight;
   VerticalAlignment := xlTop;
   FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-3)+']C:R[-2]C)';
   NumberFormat := '###.##0,00';
   Interior.ColorIndex := 35;
  end;
  { K - SOMATÓRIA DO TOTAL ESPECIAL }
  with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
  begin
   Font.Size := 8;
   HorizontalAlignment := xlRight;
   VerticalAlignment := xlTop;
   FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-3)+']C:R[-2]C)';
   NumberFormat := '###.##0,00';
   Interior.ColorIndex := 7;
  end;
  { Fim da Importação dos Itens da Fatura }

  { DESCONTOS E ADICIONAIS }
  Tbr := '=H'+IntToStr(Linha);
  Tbe := '=K'+IntToStr(Linha);
  While (trim(ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Text) <> 'AD') do
  begin
    Inc(Linha);
  end;
  Inc(Linha);
  { Ler Descontos e Adicionais da Planilha }
  While (trim(ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)].Text) <> '') do
  begin
    { A - Sequencia de Adicionais Descontos da Fatura }
    try
      SeqFat := ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Value2;
    except
      SeqFat := 0; // indica um item novo em Adicionais Descontos
    end;
    { B - Número do Pedido }
    s := trim(ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Value);
    if (s <> '') then NumPedido := dmCOM.GetPedido(s, 'P').Numero
                 else NumPedido := 0;
    { C - Sequencia de Adicionais Descontos do Pedido - quando adicional/desconto pendente indica o número de sequencia }
    try
      SeqPed := ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Value2;
    except
      SeqPed := 0; // indica um item novo em Adicionais Descontos
    end;
    { E - Descrição do Adicional Desconto }
    obs_ad := ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)].Value2;
    { F - Tipo A/D }
    TipoAD := ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)].Value2;
    { H - Valor Real A/D }
    try
      VlrRealAD := ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)].Value2;
    except
      VlrRealAD := 0.00;
    end;
    { K - Valor Especial A/D }
    try
      VlrEspAD := ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)].Value2;
    except
      VlrEspAD := 0.00;
    end;
    { Localizar A/D pela Sequencia }
    if nf_adic_desc.Locate('num_sequencia', IntToStr(SeqFat), [loPartialKey]) then nf_adic_desc.Edit
                                                                              else nf_adic_desc.Append;
    if (trim(obs_ad) = '')  then
    begin
      if nf_adic_desc.State in [dsEdit] then nf_adic_desc.Cancel;
      nf_adic_desc.Delete;
      Inc(Linha);
      Continue;
    end;

    nf_adic_descies_tipo.AsString := TipoAD;
    nf_adic_descvlr_adic_desc.AsFloat := VlrRealAD;
    nf_adic_descvlr_adic_desc_esp.AsFloat := VlrEspAd;
    nf_adic_desctxt_descricao.AsString := obs_ad;
    if (NumPedido > 0) then
    begin
      nf_adic_descnum_pedido.AsLargeInt := NumPedido;
      nf_adic_descnum_seq_pedido.AsInteger := SeqPed;
      nf_adic_descnum_seq_adcdesc.Clear;
      with pedido_adic_desc do
      begin
        Close;
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('num_pedido').Value := NumPedido;
        ParamByName('num_sequencia').AsInteger := SeqPed;
        Open;
        Edit;
        pedido_adic_descnum_nota_fiscal.AsInteger :=  nota_fiscal_saidanum_nota_fiscal.AsInteger;
        pedido_adic_descserie.AsString := nota_fiscal_saidaserie.AsString;
        pedido_adic_descies_faturado.AsString := 'S';
        Post;
      end;
    end
    else
    begin  { NumPedido = 0 }
      nf_adic_descnum_pedido.Clear;
      nf_adic_descnum_seq_pedido.Clear;
      if (SeqPed > 0) then
      begin
        nf_adic_descnum_seq_adcdesc.AsInteger := SeqPed;
        with adicional_desconto do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_sequencia').AsInteger := SeqPed;
          Open;
          if Not(IsEmpty) then Delete;
          Close;
        end;
      end;
    end;

    nf_adic_desc.Post;

    if (nf_adic_descies_tipo.AsString = 'A') then
    begin
      Tbr := Tbr + '+H'+IntToStr(Linha);
      Tbe := Tbe + '+K'+IntToStr(Linha);
    end;
    if (nf_adic_descies_tipo.AsString = 'D') then
    begin
      Tbr := Tbr + '-H'+IntToStr(Linha);
      Tbe := Tbe + '-K'+IntToStr(Linha);
    end;

    Inc(Linha);
  end;

  if (Tbr <> '') then
  begin
    ExcelWorkSheet.Cells.Item[Linha, 8].NumberFormat := '#.##0,00';
    ExcelWorkSheet.Cells.Item[Linha, 8].Formula := Tbr;
    ExcelWorkSheet.Cells.Item[Linha, 8].Interior.ColorIndex := 35;
  end;
  if (Tbe <> '') then
  begin
    ExcelWorkSheet.Cells.Item[Linha, 11].NumberFormat := '#.##0,00';
    ExcelWorkSheet.Cells.Item[Linha, 11].Formula := Tbe;
    ExcelWorkSheet.Cells.Item[Linha, 11].Interior.ColorIndex := 7;
  end;

  { atualizar embalagens especias e pallets }
  with spr_emb_esp_fat do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := trim(nota_fiscal_saidaserie.AsString);
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;

  { Atualizar totais na fatura }
  AtualizarTotaisNF(nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString);

  { Faturar }
  with spr_refaturar do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;
  ProdutosFaturaImp.Close;
  nota_fiscal_saida.Close;
  ProdutosFaturaImp.Close;
  nota_fiscal_saida_produto.Close;
  nf_saida_complemento.Close;

  nota_fiscal_saida.Open;
  nf_saida_complemento.Open;
  nota_fiscal_saida_produto.Open;

  spr_adic_desc_pedidos.Close;
  spr_adic_desc_pedidos.Open;

  spr_saldo_confirmacao.Close;
  spr_saldo_confirmacao.Open;

  nf_confirmacoes.Close;
  nf_confirmacoes.Open;

  { Salvar a planilha }
  ExcelApplication.ActiveWorkbook.SaveAs(FileListaEsp,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  FecharExcel2;

  { finalizar progress bar }
  btnImportarListaEsp.Enabled := True;
  Ani.Terminate;
  Application.MessageBox('Importação completa','Informação', MB_OK+MB_ICONINFORMATION);

  DeleteFile(FileListaEsp);
  actExcelItensAtualizarExecute(Sender);
  if (fComissao) then   pgConfDescAdic.ActivePage := tsComissao;
  lbVerLi.Visible := nota_fiscal_saidaies_li.AsString = 'S';
  dbVerLi.Visible := nota_fiscal_saidaies_li.AsString = 'S';
end;


procedure Tfr_ManNF.nota_fiscal_saida_produtoBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('vlr_liquido').AsFloat := DataSet.FieldByName('vlr_unitario').AsFloat * DataSet.FieldByName('qtd_produto').AsFloat;
  DataSet.FieldByName('vlr_liquido_esp').AsFloat := DataSet.FieldByName('vlr_unitario_esp').AsFloat * DataSet.FieldByName('qtd_produto').AsFloat;
end;

procedure Tfr_ManNF.nota_fiscal_saida_produtoBeforeDelete(
  DataSet: TDataSet);
begin
  { não permitir excluir o item header da embalagem especial }
  if ((nota_fiscal_saida_produtoies_emb_esp.AsString = 'S') and
      (nota_fiscal_saida_produtoqtd_export_box.Value > 0)) then
      begin
          Application.MessageBox('Não é permitido excluir o primeiro item da embalagem especial.' + #13#10 +
                                 'Utlize a planilha de Alteração da Fatura. ','Informação', MB_OK+MB_ICONINFORMATION);
          Abort;
      end;

  { Estornar qtd faturada em "pedido_produto" }
  { Ajustar Saldo Pendente                   }
  { Excluir item do romaneio                 }
  with spr_estornar_item_fatura do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ParamByName('num_seq_nf').AsInteger := nota_fiscal_saida_produtonum_sequencia.AsInteger;
    ExecProc;
  end;
                                                                 
  { excluir item de embalagem especial }
  if (nota_fiscal_saida_produtoies_emb_esp.AsString = 'S') then
  begin
    with excluir_item_emb_esp do
    begin                                                
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
      ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
      ParamByName('seq').AsInteger := nota_fiscal_saida_produtoseq_emb_esp.AsInteger;
      ParamByName('num_sequencia').AsInteger := nota_fiscal_saida_produtonum_sequencia.AsInteger;
      ExecQuery;
    end
  end;
end;

procedure Tfr_ManNF.actExcelItensImportarExecute(Sender: TObject);
begin
  ImportarExcelAlteracao(Sender);
end;

procedure Tfr_ManNF.adicional_descontoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;
end;

procedure Tfr_ManNF.adicional_descontoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;
end;

procedure Tfr_ManNF.nota_fiscal_saida_produtoqtd_produtoValidate(
  Sender: TField);
begin
  { calcular embalagens de acordo com a quantidade }
  with dmCOM.CalcEmbalagem(nota_fiscal_saida_produto.FieldByName('cod_produto').AsString, nota_fiscal_saida_produto.FieldByName('qtd_produto').AsFloat) do
  begin
    nota_fiscal_saida_produtoqtd_export_box.AsInteger := QtdExportBox;
    nota_fiscal_saida_produtoqtd_inner_box.AsFloat := QtdInnerBox;
    nota_fiscal_saida_produtovol_caixas.AsFloat := VolCaixas;
    nota_fiscal_saida_produtopes_liquido.AsFloat := PesLiquido;
    nota_fiscal_saida_produtopes_bruto.AsFloat := PesBruto;
    if (nota_fiscal_saida_produtoies_emb_esp.AsString = 'N') then
       nota_fiscal_saida_produtoies_caixa_fechada.AsString := CaixaFechada
    else nota_fiscal_saida_produtoies_caixa_fechada.AsString := '';
  end;
end;

procedure Tfr_ManNF.actValidarExecute(Sender: TObject);
begin                                                                          
  { Validar Embalagens Padrões e Recalcular Totais da Fatura }

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnValidar.Enabled := False;
  Application.ProcessMessages;

  { Validar a Fatura }
  with nota_fiscal_saida_produto do
  begin
    First;
    while Not(EOF) do
    begin
      Edit;                                                                      
      { Validar Embalagens }
      if (nota_fiscal_saida_produtoies_emb_esp.AsString = 'N') then
      begin
        with dmCOM.CalcEmbalagem(nota_fiscal_saida_produto.FieldByName('cod_produto').AsString, nota_fiscal_saida_produto.FieldByName('qtd_produto').AsFloat) do
        begin
          nota_fiscal_saida_produtoqtd_export_box.AsInteger := QtdExportBox;
          nota_fiscal_saida_produtoqtd_inner_box.AsFloat := QtdInnerBox;
          nota_fiscal_saida_produtovol_caixas.AsFloat := VolCaixas;
          nota_fiscal_saida_produtopes_liquido.AsFloat := PesLiquido;
          nota_fiscal_saida_produtopes_bruto.AsFloat := PesBruto;
          nota_fiscal_saida_produtoies_caixa_fechada.AsString := CaixaFechada;
        end;
      end;
      Post;
      Next;
    end;
  end;
  { atualizar embalagens especias e pallets }
  with spr_emb_esp_fat do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := nota_fiscal_saidaserie.AsString;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;                                                      
  end;
  { Atualizar totais na fatura }
  AtualizarTotaisNF(nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString);

  { finalizar progress bar }
  btnValidar.Enabled := True;
  Ani.Terminate;

  Open_NF(nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString, nota_fiscal_saidacod_cliente.AsString);

  Application.MessageBox('Validação da Fatura completa', 'Informação', MB_ICONINFORMATION+MB_OK);

end;

procedure Tfr_ManNF.fatura_pagamentoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
   if (fatura_pagamentonum_pedido.AsLargeInt > 0) then
   begin
      { Registrar em Pagamentos do Pedido }
      with pedido_pagamento do
      begin
        Close;
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('num_pedido').AsLong := fatura_pagamentonum_pedido.AsLargeInt;
        ParamByName('num_nota_fiscal').AsInteger := fatura_pagamentonum_nota_fiscal.AsInteger;
        ParamByName('serie').AsString := fatura_pagamentoserie.AsString;
        ParamByName('num_seq_fatpag').AsInteger := fatura_pagamentonum_sequencia.AsInteger;
        Open;
        if (IsEmpty) then Append
                     else Edit;
        Post;
      end;
      
      with spr_calc_saldo_fatura do
      begin                                                            
       ParamByName('cod_empresa').Value := vgCod_Empresa;
       ParamByName('num_pedido').Value := fatura_pagamentonum_pedido.AsLargeInt;
       ExecProc;
       try
         Transaction.CommitRetaining;
       except
         Transaction.RollbackRetaining;
       end;
      end;
   end;
   { atualizar totais na fatura }
   AtualizarTotaisNF(nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString, False);
   //nota_fiscal_saida.Edit;
   //nota_fiscal_saida.Post;
   nota_fiscal_saida.Refresh;
end;

procedure Tfr_ManNF.fatura_pagamentoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

   { atualizar totais na fatura }
   AtualizarTotaisNF(nota_fiscal_saidanum_nota_fiscal.AsInteger, nota_fiscal_saidaserie.AsString, False);
   nota_fiscal_saida.Edit;
   nota_fiscal_saidadat_liquidacao.Clear;  // limpar a data de liquidação da fatura
   nota_fiscal_saida.Post;
   nota_fiscal_saida.Refresh;
end;                                                             

procedure Tfr_ManNF.fatura_pagamentoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
  DataSet.FieldByName('num_nota_fiscal').AsInteger := nota_fiscal_saidanum_nota_fiscal.AsInteger;
  DataSet.FieldByName('serie').AsString := nota_fiscal_saidaserie.AsString;
  DataSet.FieldByName('num_sequencia').AsInteger := SeqPgtoFatura(nota_fiscal_saidanum_nota_fiscal.AsInteger,nota_fiscal_saidaserie.AsString);
  { defaults para um novo pagamento }
  DataSet.FieldByName('dat_pagamento').AsDateTime := DataHoraServidor;
  DataSet.FieldByName('txt_pagamento').AsString := 'BALANCE PAYMENT'; // or PAYMENT OF BALANCE
end;

function Tfr_ManNF.SeqPgtoPedido(NumPedido: Largeint) : Integer;
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

procedure Tfr_ManNF.pedido_pagamentoAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManNF.pedido_pagamentoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_ManNF.pedido_pagamentoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('num_sequencia').AsInteger := SeqPgtoPedido(fatura_pagamentonum_pedido.AsLargeInt);
end;

procedure Tfr_ManNF.pedido_pagamentoBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
  DataSet.FieldByName('num_pedido').Value := fatura_pagamentonum_pedido.AsLargeInt;
  DataSet.FieldByName('num_nota_fiscal').AsInteger := fatura_pagamentonum_nota_fiscal.AsInteger;
  DataSet.FieldByName('serie').AsString := fatura_pagamentoserie.AsString;
  DataSet.FieldByName('num_seq_fatpag').AsInteger := fatura_pagamentonum_sequencia.AsInteger;
  DataSet.FieldByName('dat_pagamento').AsDateTime := fatura_pagamentodat_pagamento.AsDateTime;
  DataSet.FieldByName('vlr_pagamento').AsFloat := fatura_pagamentovlr_pagamento.AsFloat;
  DataSet.FieldByName('vlr_pagamento_esp').AsFloat := fatura_pagamentovlr_pagamento_esp.AsFloat;
  DataSet.FieldByName('txt_pagamento').AsString := fatura_pagamentotxt_pagamento.AsString;

end;                                                                                               

procedure Tfr_ManNF.fatura_pagamentoBeforeDelete(DataSet: TDataSet);                                                  
begin
   { Registrar em Pagamentos do Pedido }
   with pedido_pagamento do
   begin                                                                                          
     Close;
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido').AsLong := fatura_pagamentonum_pedido.AsLargeInt;
     ParamByName('num_nota_fiscal').AsInteger := fatura_pagamentonum_nota_fiscal.AsInteger;
     ParamByName('serie').AsString := fatura_pagamentoserie.AsString;
     ParamByName('num_seq_fatpag').AsInteger := fatura_pagamentonum_sequencia.AsInteger;
     Open;
     if Not(IsEmpty) then Delete;
   end;
end;

procedure Tfr_ManNF.JvDBUltimGrid4ShowTitleHint(Sender: TObject;
  Field: TField; var AHint: String; var ATimeOut: Integer);
begin
  ATimeOut := 30000;

  if Field.FieldName = 'num_pedido_for' then AHint := 'Número da Confirmação do Pedido (Proforma Invoice).'
  else
  if Field.FieldName = 'num_pedido_cli' then AHint := 'Número do Pedido do Cliente (Order).'
  else
  if Field.FieldName = 'vlr_pedido_esp' then AHint := 'Valor Total do Pedido.'
  else
  if Field.FieldName = 'vlr_pagamento_esp' then AHint := 'Total de pagamentos efetuados no pedido até o momento.'
  else
  if Field.FieldName = 'vlr_tot_faturado_esp' then AHint := 'Total do Faturamento do pedido até o momento,' +#13+ 'com Adicionais/Descontos faturados.'
  else
  if Field.FieldName = 'vlr_produtos_esp' then AHint := 'Valor Total dos Itens do Pedido incluídos nesta Fatura.'
  else
  if Field.FieldName = 'vlr_faturado_esp' then AHint := 'Valor dos Produtos com Adicionais/Descontos incluídos nesta Fatura'
  else
  if Field.FieldName = 'vlr_adicional_esp' then AHint := 'Valor de Custo Adicional incluído nesta Fatura.' + #13 + ' Este valor poderá ser adicionado na aba Descontos e Adicional.'
  else
  if Field.FieldName = 'vlr_desconto_esp' then AHint := 'Valor de Desconto incluíndo nesta Fatura.' + #13 + ' Este valor poderá ser adicionado na aba Descontos e Adicionais.'
  else
  if Field.FieldName = 'vlr_saldo_esp' then AHint := 'Saldo de pagamento do pedido, representa a diferença entre todo o faturado deste pedido(Vlr Faturado), e tudo o que o cliente já pagou até o momento(Vlr Pagamento).' + #13 + 'O Saldo quando negativo(-), indica saldo devedor, caso seja maior ou igual a zero(0), indica um saldo credor.';
end;

procedure Tfr_ManNF.fatura_pagamentoAfterInsert(DataSet: TDataSet);
begin
  dtpDatPagamento.SetFocus;
end;

procedure Tfr_ManNF.fatura_pagamentoBeforePost(DataSet: TDataSet);
Var
  DatPagamento : TDate;
  Desc : String;
begin
  { Verificar se é para lançar todos os pagamentos dos saldos dos pedidos }
  if (fatura_pagamentonum_pedido.AsLargeInt = -1) then
  begin
    fatura_pagamento.DisableControls;
    DatPagamento := fatura_pagamentodat_pagamento.AsDateTime;
    Desc := fatura_pagamentotxt_pagamento.AsString;
    DataSet.Cancel;
    spr_saldo_confirmacao.First;
    while Not(spr_saldo_confirmacao.Eof) do
    begin
      if ((spr_saldo_confirmacaovlr_saldo_fat.AsFloat > 0) or (spr_saldo_confirmacaovlr_saldo_fat_esp.AsFloat > 0)) then
      begin
        fatura_pagamento.Insert;
        fatura_pagamentodat_pagamento.Value := DatPagamento;
        fatura_pagamentotxt_pagamento.Value := Desc;
        fatura_pagamentovlr_pagamento.Value := spr_saldo_confirmacaovlr_saldo_fat.AsFloat;
        fatura_pagamentovlr_pagamento_esp.Value := spr_saldo_confirmacaovlr_saldo_fat_esp.AsFloat;
        fatura_pagamentonum_pedido.Value := spr_saldo_confirmacaonum_pedido.AsLargeInt;
        fatura_pagamento.Post;
      end;
      spr_saldo_confirmacao.Next;
    end;
    fatura_pagamento.EnableControls;
    Abort;
  end;
end;

procedure Tfr_ManNF.lcbConfirmacoesClick(Sender: TObject);
begin
  lcbConfirmacoes.Enabled := False;
  if (fatura_pagamentonum_pedido.AsLargeInt = -1) then fatura_pagamento.Post;
end;

procedure Tfr_ManNF.ProdutosFaturaImpAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
   end;

end;

procedure Tfr_ManNF.nf_saida_complementoBeforePost(DataSet: TDataSet);
begin
  if nf_saida_complementonum_fatura.Value <> nf_saida_complementonum_fatura.OldValue then AlterarNumFaturaProdList;
end;


procedure Tfr_ManNF.actComissoesExecute(Sender: TObject);
begin
  pgConfDescAdic.ActivePage := tsComissao;
  actExcelItensAtualizarExecute(Sender);
end;

procedure Tfr_ManNF.nf_confirmacoesAfterScroll(DataSet: TDataSet);
begin
   mTerms.Lines.Clear;
   mTerms.Lines.Add(TermosPagamento);
   mTermsEsp.Lines.Clear;
   mTermsEsp.Lines.Add(TermosPagamentoEspecial);
end;

procedure Tfr_ManNF.dtsNFSaidaDataChange(Sender: TObject; Field: TField);
begin
  if (nota_fiscal_saidaies_comissao.Value = 0) then
  begin
    dtpPgtoComForn.Enabled := False;
    dtpPgtoComClie.Enabled := False;
    dbeOverPriceFor.Enabled := False;
    dbeOverPriceCli.Enabled := False;
  end else if (nota_fiscal_saidaies_comissao.Value = 1) then
  begin
    dtpPgtoComForn.Enabled := True;                                         
    dtpPgtoComClie.Enabled := False;
    dbeOverPriceFor.Enabled := True;
    dbeOverPriceCli.Enabled := False;
  end else if (nota_fiscal_saidaies_comissao.Value = 2) then
  begin
    dtpPgtoComForn.Enabled := False;
    dtpPgtoComClie.Enabled := True;                                    
    dbeOverPriceFor.Enabled := False;
    dbeOverPriceCli.Enabled := True;
  end else if (nota_fiscal_saidaies_comissao.Value = 3) then
  begin
    dtpPgtoComForn.Enabled := True;
    dtpPgtoComClie.Enabled := True;
    dbeOverPriceFor.Enabled := True;
    dbeOverPriceCli.Enabled := True;
  end;
end;

procedure Tfr_ManNF.Button1Click(Sender: TObject);
begin
  nf_container.Append;
end;

procedure Tfr_ManNF.Button2Click(Sender: TObject);
begin
  if Application.MessageBox('Excluir registro de Container na Fatura ?', 'Atenção', MB_YESNO+MB_ICONQUESTION) = mrNo then Abort;
  nf_container.Delete;
end;

procedure Tfr_ManNF.FornecedorBeforeOpen(DataSet: TDataSet);
begin
  Fornecedor.ParamByName('cod_empresa').Value := vgCod_Empresa;
  Fornecedor.ParamByName('login').Value := vgLogin;
end;

procedure Tfr_ManNF.FabricantesAfterOpen(DataSet: TDataSet);
begin
  DataSet.Last;
  DataSet.First;
end;

procedure Tfr_ManNF.nota_fiscal_saidadat_emissaoValidate(Sender: TField);
begin
   flagEmissao := True;
end;

procedure Tfr_ManNF.nota_fiscal_saidadat_embarqueValidate(Sender: TField);
begin
   flagDatEmbarque := True;
end;

procedure Tfr_ManNF.nota_fiscal_saidaAfterScroll(DataSet: TDataSet);
begin
  lcbConfirmacoes.Enabled := (fatura_pagamento.IsEmpty) and (nota_fiscal_saidadat_liquidacao.IsNull);
end;

end.
