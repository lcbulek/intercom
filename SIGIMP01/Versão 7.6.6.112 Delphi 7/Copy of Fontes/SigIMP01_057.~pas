unit SigImp01_057;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCadGrade, IBQuery, DB, IBCustomDataSet, ActnList, Grids,
  DBGrids, unNavigator, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask,
  DBCtrls, Buttons, ExcelXP, OleServer, IBSQL, DateUtils, Excel2000,
  IBStoredProc, SigIMP01_045, JvExControls, JvComponent, JvDBLookup,
  Math, Menus, DBActns, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker, AniThread, JvStaticText, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, unType;

type
  TfrmImportarPedidoCliente = class(Tfr_CadGrade)
    Panel4: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    edBuscaCodigo: TEdit;
    edBuscaDesc: TEdit;
    Panel2: TPanel;                             
    Label1: TLabel;
    Label2: TLabel;                                                                       
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;                               
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dbcCliente: TDBLookupComboBox;
    dbNumPedidoCli: TDBEdit;
    dbeSituacao: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    ExcelApplication: TExcelApplication;
    Clientes: TIBQuery;
    Clientescod_cliente: TIBStringField;
    Clientesnom_cliente_reduz: TIBStringField;
    dsClientes: TDataSource;
    cby_imp_ped_cli: TIBQuery;
    ExcelWorksheet: TExcelWorksheet;
    parametro_cliente: TIBQuery;
    parametro_clientecod_cliente: TIBStringField;
    parametro_clientemas_cod_produto: TIBStringField;
    OpenDialog: TOpenDialog;
    Fornecedores: TIBQuery;
    dsFornecedores: TDataSource;
    parametro_comercial: TIBDataSet;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialcod_vendedor: TSmallintField;
    parametro_comercialcod_transportadora: TSmallintField;
    parametro_comercialserie_nf: TIBStringField;
    parametro_comercialdias_atualiza: TSmallintField;
    parametro_comercialano_pedido: TIntegerField;
    parametro_comercialprox_num_pedido: TIntegerField;
    parametro_comercialdias_entrega: TSmallintField;
    imp_ped_cli: TIBDataSet;
    imp_ped_clicod_empresa: TSmallintField;
    imp_ped_clicod_cliente: TIBStringField;
    imp_ped_clinum_pedido_cli: TIBStringField;
    imp_ped_clicod_fornecedor: TSmallintField;
    imp_ped_cliies_situacao: TIBStringField;
    imp_ped_clidat_cadastro: TDateTimeField;
    imp_ped_clivlr_liquido: TIBBCDField;
    imp_ped_clivol_caixas: TIBBCDField;
    imp_ped_cliqtd_caixas: TIntegerField;
    imp_ped_clipes_liquido: TIBBCDField;
    imp_ped_clipes_bruto: TIBBCDField;
    imp_ped_clinum_lista: TSmallintField;
    imp_ped_cli_prod: TIBDataSet;
    imp_ped_cli_prodcod_empresa: TSmallintField;
    imp_ped_cli_prodcod_cliente: TIBStringField;
    imp_ped_cli_prodnum_pedido_cli: TIBStringField;
    imp_ped_cli_prodseq: TSmallintField;
    imp_ped_cli_prodcod_produto: TIBStringField;
    imp_ped_cli_prodqtde: TIBBCDField;
    imp_ped_cli_prodpreco: TFloatField;
    imp_ped_cli_prodies_situacao: TIBStringField;
    imp_ped_cli_proddat_cadastro: TDateTimeField;
    imp_ped_cli_prodcalSituacao: TStringField;
    imp_ped_cli_prodvlr_liquido: TIBBCDField;
    imp_ped_cli_prodvol_caixas: TIBBCDField;
    imp_ped_cli_prodqtd_caixas: TIntegerField;
    imp_ped_cli_prodpes_liquido: TIBBCDField;
    imp_ped_cli_prodpes_bruto: TIBBCDField;
    imp_ped_cli_prodies_emb_esp: TIBStringField;
    imp_ped_cli_prodies_status: TIBStringField;
    Pedido: TIBDataSet;
    Pedidocod_empresa: TSmallintField;
    Pedidonum_pedido: TLargeintField;
    Pedidoies_situacao: TIBStringField;
    Pedidoies_tip_pedido: TIBStringField;
    Pedidoies_tip_frete: TSmallintField;
    Pedidodat_emissao: TDateTimeField;
    Pedidodat_entrega: TDateField;
    Pedidodat_liberacao: TDateField;
    Pedidodat_faturamento: TDateField;
    Pedidologin: TIBStringField;
    Pedidovlr_frete: TIBBCDField;
    Pedidocod_cliente: TIBStringField;
    Pedidocod_vendedor: TSmallintField;
    Pedidonum_lista: TSmallintField;
    Pedidocod_moeda: TSmallintField;
    Pedidodat_cadastro: TDateTimeField;
    Pedidovlr_bruto: TIBBCDField;
    Pedidovlr_liquido: TIBBCDField;
    pedido_produto: TIBDataSet;
    pedido_produtocod_empresa: TSmallintField;
    pedido_produtonum_pedido: TLargeintField;
    pedido_produtonum_sequencia: TSmallintField;
    pedido_produtocod_produto: TIBStringField;
    pedido_produtoqtd_produto: TIBBCDField;
    pedido_produtoqtd_cancelada: TIBBCDField;
    pedido_produtoqtd_romaneada: TIBBCDField;
    pedido_produtoqtd_faturada: TIBBCDField;
    pedido_produtodat_cadastro: TDateTimeField;
    pedido_produtoqtd_pendente: TIBBCDField;
    pedido_produtovlr_liquido: TIBBCDField;
    pedido_produtovlr_unitario: TFloatField;
    pedido_produtoqtd_export_box: TIntegerField;
    pedido_produtovol_caixas: TIBBCDField;
    pedido_produtopes_liquido: TIBBCDField;
    pedido_produtopes_bruto: TIBBCDField;
    pedido_produtodat_preco: TDateField;
    pedido_complemento: TIBDataSet;
    pedido_complementocod_empresa: TSmallintField;
    pedido_complementonum_pedido: TLargeintField;
    pedido_complementonum_pedido_cli: TIBStringField;
    pedido_complementonum_pedido_for: TIBStringField;
    pedido_complementocod_container: TIntegerField;
    pedido_complementocod_fornecedor: TIntegerField;
    pedido_complementocod_porto_emb: TIntegerField;
    pedido_complementocod_porto_des: TIntegerField;
    pedido_complementocod_cond_venda: TIntegerField;
    pedido_complementonum_container: TIntegerField;
    pedido_complementovol_total: TIBBCDField;
    pedido_complementoqtd_caixas: TIntegerField;
    pedido_complementopes_liquido: TIBBCDField;
    pedido_complementopes_bruto: TIBBCDField;
    pedido_complementonum_ref_volume: TIBStringField;
    pedido_complementobanco_intermed: TIBStringField;
    pedido_complementoswift: TIBStringField;
    Sequencia: TIBQuery;
    Sequenciaseq: TLargeintField;
    delete_pedido: TIBSQL;
    delete_itens: TIBSQL;
    delete_complemento: TIBSQL;
    sql_situacao_importado: TIBSQL;
    sql_situacao_erro: TIBSQL;
    up_imp_ped_cli_prod: TIBSQL;
    Banco: TIBQuery;
    emb_especial_imp: TIBDataSet;
    emb_especial_impcod_empresa: TSmallintField;
    emb_especial_impnum_pedido_cli: TIBStringField;
    emb_especial_impseq: TIntegerField;
    emb_especial_impden_embalagem: TIBStringField;
    emb_especial_impqtd_total: TIBBCDField;
    emb_especial_impvol_total: TIBBCDField;
    emb_especial_imppes_bruto: TIBBCDField;
    emb_especial_imppes_liquido: TIBBCDField;
    emb_especial_impqtd_caixas: TIntegerField;
    emb_especial_impqtd_produto: TIBBCDField;
    emb_especial_imppes_unitario: TFloatField;
    emb_especial_impaltura: TIBBCDField;
    emb_especial_implargura: TIBBCDField;
    emb_especial_impprofundidade: TIBBCDField;
    emb_especial_item_imp: TIBDataSet;
    emb_especial_item_impcod_empresa: TSmallintField;
    emb_especial_item_impnum_pedido_cli: TIBStringField;
    emb_especial_item_impseq: TIntegerField;
    emb_especial_item_impnum_sequencia: TSmallintField;
    emb_especial_item_impcod_produto: TIBStringField;
    emb_especial_item_impqtd_produto: TIBBCDField;
    emb_especial_item_imppes_liquido: TIBBCDField;
    ds_emb_especial_imp: TDataSource;
    ds_emb_especial_item_imp: TDataSource;
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetnum_pedido_cli: TIBStringField;
    IBDataSetcod_cliente: TIBStringField;
    IBDataSetcod_fornecedor: TSmallintField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSetcalSituacao: TStringField;
    IBDataSetdat_cadastro: TDateTimeField;
    IBDataSetvlr_liquido: TIBBCDField;
    IBDataSetvol_caixas: TIBBCDField;
    IBDataSetqtd_caixas: TIntegerField;
    IBDataSetpes_liquido: TIBBCDField;
    IBDataSetpes_bruto: TIBBCDField;
    IBDataSetnum_lista: TSmallintField;
    IBDataSetGradecod_empresa: TSmallintField;
    IBDataSetGradenum_pedido_cli: TIBStringField;
    IBDataSetGradecod_cliente: TIBStringField;
    IBDataSetGradeseq: TSmallintField;
    IBDataSetGradecod_produto: TIBStringField;
    IBDataSetGradeqtde: TIBBCDField;
    IBDataSetGradepreco: TFloatField;
    IBDataSetGradeies_situacao: TIBStringField;
    IBDataSetGradecalSituacao: TStringField;
    IBDataSetGradeies_status: TIBStringField;
    IBDataSetGradevlr_liquido: TIBBCDField;
    IBDataSetGradevol_caixas: TIBBCDField;
    IBDataSetGradeqtd_caixas: TIntegerField;
    IBDataSetGradepes_liquido: TIBBCDField;
    IBDataSetGradepes_bruto: TIBBCDField;
    IBDataSetGradedat_cadastro: TDateTimeField;
    IBDataSetGradeies_emb_esp: TIBStringField;
    pedido_produtoies_emb_esp: TIBStringField;
    emb_especial_ped: TIBDataSet;
    emb_especial_item_ped: TIBDataSet;
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
    emb_especial_item_pedcod_empresa: TSmallintField;
    emb_especial_item_pednum_pedido: TLargeintField;
    emb_especial_item_pedseq: TIntegerField;
    emb_especial_item_pednum_sequencia: TSmallintField;
    emb_especial_item_pedcod_produto: TIBStringField;
    emb_especial_item_pedqtd_produto: TIBBCDField;
    emb_especial_item_pedpes_liquido: TIBBCDField;
    Label22: TLabel;
    dbeNumPedido: TDBEdit;
    IBDataSetnum_pedido: TIntegerField;
    imp_ped_clinum_pedido: TIntegerField;
    pedido_produtoobs_preco: TMemoField;
    actFiltrar: TAction;
    Panel6: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SpeedButton1: TSpeedButton;
    dbeCodProduto: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    TabSheet3: TTabSheet;
    Panel10: TPanel;
    Label12: TLabel;
    Label18: TLabel;
    edBuscaCodigo1: TEdit;
    edBuscaDesc1: TEdit;
    Panel11: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBGradeErros: TJvDBUltimGrid;
    IBDataSetGradeErros: TIBDataSet;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBBCDField1: TIBBCDField;
    FloatField1: TFloatField;
    IBStringField4: TIBStringField;
    StringField2: TStringField;
    IBStringField5: TIBStringField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IntegerField1: TIntegerField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    DateTimeField1: TDateTimeField;
    IBStringField6: TIBStringField;
    dsIBDataSetGradeErros: TDataSource;
    actNovo: TAction;
    parametro_comercialies_modelo: TIntegerField;
    parametro_comercialmod_pedido_imp: TBlobField;
    IBDataSetGradeDescricao: TStringField;
    IBDataSetGradeErrosDescricao: TStringField;
    emb_especial_item_impDescricao: TStringField;
    PopupMenu: TPopupMenu;
    mnuConfCaixas: TMenuItem;
    IBDataSetGradeErroscod_produto: TIBStringField;
    pedido_produtopct_comissao_f: TIBBCDField;
    pedido_produtopct_comissao_c: TIBBCDField;
    imp_ped_cli_prodpct_comissao_f: TIBBCDField;
    imp_ped_cli_prodpct_comissao_c: TIBBCDField;
    IBDataSetGradeErrospct_comissao_f: TIBBCDField;
    IBDataSetGradeErrospct_comissao_c: TIBBCDField;
    IBDataSetGradepct_comissao_f: TIBBCDField;
    IBDataSetGradepct_comissao_c: TIBBCDField;
    Pedidotxt_observacao: TMemoField;
    pedido_produtotexto: TMemoField;
    pedido_produtotxt_observacao: TMemoField;
    actExcluirPedido: TAction;
    QrAux2: TIBQuery;
    parametro_comercialdir_planilhas: TIBStringField;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    actConfCaixas: TAction;
    btnConfCaixas: TBitBtn;
    Fornecedoresraz_social_reduz: TIBStringField;
    Fornecedorescod_fornecedor: TSmallintField;
    IBDataSetlkpFornecedor: TStringField;
    dbcFornecedor: TDBLookupComboBox;
    Produtos: TIBQuery;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto_detpor: TMemoField;
    Produtosden_produto: TIBStringField;
    IBDataSetGradepreco_esp: TFloatField;
    IBDataSetGradevlr_liquido_esp: TIBBCDField;
    IBDataSetGradeErrospreco_esp: TFloatField;
    IBDataSetGradeErrosvlr_liquido_esp: TIBBCDField;
    IBDataSetvlr_liquido_esp: TIBBCDField;
    imp_ped_clivlr_liquido_esp: TIBBCDField;
    imp_ped_cli_prodpreco_esp: TFloatField;
    imp_ped_cli_prodvlr_liquido_esp: TIBBCDField;
    Label27: TLabel;
    DBEdit2: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    actGerarExcel: TAction;
    actImportarExcel: TAction;
    parametro_comercialmod_plan_excel: TBlobField;
    Pedidovlr_liquido_esp: TIBBCDField;
    pedido_produtovlr_unitario_esp: TFloatField;
    pedido_produtovlr_liquido_esp: TIBBCDField;
    Pedidovlr_bruto_esp: TIBBCDField;
    actConfAllCaixas: TAction;
    ConfirmarTodasasCaixas1: TMenuItem;
    btnConfAllCaixas: TBitBtn;
    Bancocod_banco: TSmallintField;
    Pedidocod_banco: TIntegerField;
    imp_ped_cli_proddat_preco: TDateField;
    imp_ped_cli_prodobs_preco: TMemoField;
    IBDataSetGradedat_preco: TDateField;
    IBDataSetGradeobs_preco: TMemoField;
    IBDataSetGradeErrosdat_preco: TDateField;
    IBDataSetGradeErrosobs_preco: TMemoField;
    actAtualizarExcel: TAction;
    pedido_produtodat_inspecao: TDateField;
    imp_ped_cliies_pallets: TIBStringField;
    imp_ped_cli_prodseq_emb_esp: TIntegerField;
    imp_ped_cli_prodseq_pallet: TIntegerField;
    imp_ped_cli_prodqtd_pallet: TIntegerField;
    imp_ped_cli_prodpes_bruto_pallet: TIBBCDField;
    imp_ped_cli_prodpes_liquido_pallet: TIBBCDField;
    imp_ped_cli_prodcomprimento_pallet: TIBBCDField;
    imp_ped_cli_prodlargura_pallet: TIBBCDField;
    imp_ped_cli_prodaltura_pallet: TIBBCDField;
    imp_ped_cli_prodvolume_pallet: TIBBCDField;
    IBDataSeties_pallets: TIBStringField;
    IBDataSetGradeseq_emb_esp: TIntegerField;
    IBDataSetGradeseq_pallet: TIntegerField;
    IBDataSetGradeqtd_pallet: TIntegerField;
    IBDataSetGradepes_bruto_pallet: TIBBCDField;
    IBDataSetGradepes_liquido_pallet: TIBBCDField;
    IBDataSetGradecomprimento_pallet: TIBBCDField;
    IBDataSetGradelargura_pallet: TIBBCDField;
    IBDataSetGradealtura_pallet: TIBBCDField;
    IBDataSetGradevolume_pallet: TIBBCDField;
    DBRadioGroup1: TDBRadioGroup;
    IBDataSetGradeErrosseq_emb_esp: TIntegerField;
    pedido_produtoseq_emb_esp: TIntegerField;
    pedido_produtoseq_pallet: TIntegerField;
    pedido_produtoqtd_pallet: TIntegerField;
    pedido_produtopes_bruto_pallet: TIBBCDField;
    pedido_produtopes_liquido_pallet: TIBBCDField;
    pedido_produtocomprimento_pallet: TIBBCDField;
    pedido_produtolargura_pallet: TIBBCDField;
    pedido_produtoaltura_pallet: TIBBCDField;
    pedido_produtovolume_pallet: TIBBCDField;
    Pedidoies_pallets: TIBStringField;
    imp_ped_cli_prodseq_pkl: TIntegerField;
    IBDataSetGradeseq_pkl: TIntegerField;
    pedido_produtoseq_pkl: TIntegerField;
    TotalPesoPallets: TIBQuery;
    TotalPesoPalletspes_liquido_pallet: TIBBCDField;
    AtualizarPallets: TIBSQL;
    imp_ped_cli_prodobs_preco_esp: TMemoField;
    IBDataSetGradeobs_preco_esp: TMemoField;
    emb_esp_imp: TIBQuery;
    emb_esp_impcod_empresa: TSmallintField;
    emb_esp_impnum_pedido_cli: TIBStringField;
    emb_esp_impseq: TIntegerField;
    emb_esp_impden_embalagem: TIBStringField;
    emb_esp_impqtd_total: TIBBCDField;
    emb_esp_impvol_total: TIBBCDField;
    emb_esp_imppes_bruto: TIBBCDField;
    emb_esp_imppes_liquido: TIBBCDField;
    emb_esp_impqtd_caixas: TIntegerField;
    emb_esp_impqtd_produto: TIBBCDField;
    emb_esp_imppes_unitario: TFloatField;
    emb_esp_impaltura: TIBBCDField;
    emb_esp_implargura: TIBBCDField;
    emb_esp_impprofundidade: TIBBCDField;
    spr_emb_esp_imp: TIBStoredProc;
    pedido_produtoobs_preco_esp: TMemoField;
    Panel12: TPanel;
    btnFiltrar: TBitBtn;
    btnNovo: TBitBtn;
    btnExcluirPed: TBitBtn;
    btnValidar: TBitBtn;
    btnGerar: TBitBtn;
    btnImportar: TBitBtn;
    cbModelo: TCheckBox;
    btnPedido: TBitBtn;
    panGauge: TPanel;
    emb_esp_item_imp: TIBQuery;
    emb_esp_imppes_bruto_cx: TFloatField;
    emb_especial_imppes_bruto_cx: TFloatField;
    emb_especial_pedpes_bruto_cx: TFloatField;
    IBDataSetqtd_pallets: TIntegerField;
    IBDataSetvol_pallets: TIBBCDField;
    IBDataSetpes_liq_pallets: TIBBCDField;
    IBDataSetpes_bruto_pallets: TIBBCDField;
    Label30: TLabel;
    DBEdit5: TDBEdit;
    Label31: TLabel;
    DBEdit21: TDBEdit;
    Label32: TLabel;
    DBEdit22: TDBEdit;
    Label35: TLabel;
    DBEdit23: TDBEdit;
    JvStaticText1: TJvStaticText;
    JvStaticText2: TJvStaticText;
    pedido_complementoqtd_pallets: TIntegerField;
    pedido_complementovol_pallets: TIBBCDField;
    pedido_complementopes_liq_pallets: TIBBCDField;
    pedido_complementopes_bruto_pallets: TIBBCDField;
    imp_ped_cliqtd_pallets: TIntegerField;
    imp_ped_clivol_pallets: TIBBCDField;
    imp_ped_clipes_liq_pallets: TIBBCDField;
    imp_ped_clipes_bruto_pallets: TIBBCDField;
    JvStaticText3: TJvStaticText;
    spr_vlr_esp_imp: TIBStoredProc;
    IBDataSeties_preco_esp: TIBStringField;
    Pedidoies_preco_esp: TIBStringField;
    ies_preco_esp: TDBRadioGroup;
    imp_ped_cli_produn_cx_master: TIBBCDField;
    pedido_produtoqtd_inner_box: TIBBCDField;
    pedido_produtoun_cx_master: TIBBCDField;
    IBDataSetGradeun_cx_master: TIBBCDField;
    IBDataSetGradeErrosun_cx_master: TIBBCDField;
    emb_padrao: TIBQuery;
    Produtospes_unitario: TFloatField;
    IBDataSetGradeies_caixa_fechada: TIBStringField;
    IBDataSetGradeErrosies_caixa_fechada: TIBStringField;
    imp_ped_cli_prodies_caixa_fechada: TIBStringField;
    pedido_produtoies_caixa_fechada: TIBStringField;
    IBDataSetGradepes_pallet_vazio: TFloatField;
    imp_ped_cli_prodpes_pallet_vazio: TFloatField;
    pedido_produtopes_pallet_vazio: TFloatField;
    imp_ped_clivol_geral: TIBBCDField;
    imp_ped_clicxs_outpallet: TIntegerField;
    imp_ped_clipes_liq_geral: TIBBCDField;
    imp_ped_clipes_bru_geral: TIBBCDField;
    IBDataSetGradeErrosobs_preco_esp: TMemoField;
    ies_comissao: TDBRadioGroup;
    IBDataSeties_comissao: TSmallintField;
    IBDataSeties_base_comissao: TIBStringField;
    ies_base_comissao: TDBRadioGroup;
    Pedidoies_comissao: TSmallintField;
    Pedidoies_base_comissao: TIBStringField;
    Pedidoies_idioma: TIBStringField;
    Fornecedoresies_idioma: TIBStringField;
    parametro_comercialies_base_comissao: TIBStringField;
    Fornecedorescod_moeda: TSmallintField;
    Pedidoterms_payment: TIBStringField;
    dtpDataEmissao: TJvDBDatePickerEdit;
    cby_imp_ped_clivol_caixas: TIBBCDField;
    cby_imp_ped_cliqtd_caixas: TIntegerField;
    cby_imp_ped_clipes_liquido: TIBBCDField;
    cby_imp_ped_clipes_bruto: TIBBCDField;
    cby_imp_ped_clivol_pallets: TIBBCDField;
    cby_imp_ped_cliqtd_pallets: TIntegerField;
    cby_imp_ped_clipes_liq_pallets: TIBBCDField;
    cby_imp_ped_clipes_bruto_pallets: TIBBCDField;
    cby_imp_ped_clivol_geral: TIBBCDField;
    cby_imp_ped_clicxs_outpallet: TIntegerField;
    cby_imp_ped_clipes_liq_geral: TIBBCDField;
    cby_imp_ped_clipes_bru_geral: TIBBCDField;
    cby_imp_ped_clivlr_liquido: TIBBCDField;
    cby_imp_ped_clivlr_liquido_esp: TIBBCDField;
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
    Pedidoseq_filial: TIntegerField;
    Label24: TLabel;
    dbcFabricante: TDBLookupComboBox;
    Fabricantes: TIBQuery;
    dsFabricantes: TDataSource;
    Fabricantescod_fabricante: TSmallintField;
    Fabricantesnome: TIBStringField;
    IBDataSetcod_fabricante: TSmallintField;
    IBDataSetlkpFabricante: TStringField;
    emb_esp_impmesclar: TIBStringField;
    emb_especial_impmesclar: TIBStringField;
    emb_especial_pedmesclar: TIBStringField;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure Validar(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);

    procedure IBDataSetGradeNewRecord(DataSet: TDataSet);
    procedure IBDataSetGradeBeforePost(DataSet: TDataSet);
    procedure IBDataSetGradeAfterPost(DataSet: TDataSet);

    procedure IBDataSetAfterScroll(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetCalcFields(DataSet: TDataSet);
    procedure IBDataSetGradeCalcFields(DataSet: TDataSet);
    procedure DBGradeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);

    procedure PedidoNewRecord(DataSet: TDataSet);

    procedure pedido_complementoAfterClose(DataSet: TDataSet);
    procedure pedido_complementoAfterCancel(DataSet: TDataSet);
    procedure pedido_complementoAfterDelete(DataSet: TDataSet);
    procedure pedido_complementoAfterPost(DataSet: TDataSet);
    procedure pedido_complementoBeforeOpen(DataSet: TDataSet);
    procedure pedido_complementoNewRecord(DataSet: TDataSet);

    procedure dbeSituacaoChange(Sender: TObject);

    procedure imp_ped_cli_prodNewRecord(DataSet: TDataSet);
    procedure imp_ped_cli_prodAfterPost(DataSet: TDataSet);
    procedure imp_ped_cliAfterDelete(DataSet: TDataSet);
    procedure imp_ped_cli_prodAfterDelete(DataSet: TDataSet);
    procedure imp_ped_cliAfterPost(DataSet: TDataSet);
    procedure imp_ped_cliAfterScroll(DataSet: TDataSet);

    procedure dsIBDataSetDataChange(Sender: TObject; Field: TField);
    procedure IBDataSetAfterPost(DataSet: TDataSet);

    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure ClientesAfterOpen(DataSet: TDataSet);
    procedure FornecedoresAfterOpen(DataSet: TDataSet);
    procedure Panel4Enter(Sender: TObject);
    procedure Panel4Exit(Sender: TObject);
    procedure edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure emb_especial_impAfterDelete(DataSet: TDataSet);
    procedure emb_especial_impAfterPost(DataSet: TDataSet);
    procedure emb_especial_item_impAfterPost(DataSet: TDataSet);
    procedure emb_especial_item_impAfterDelete(DataSet: TDataSet);
    procedure emb_especial_impAfterScroll(DataSet: TDataSet);
    procedure pedido_produtoAfterPost(DataSet: TDataSet);
    procedure PedidoAfterPost(DataSet: TDataSet);
    procedure PedidoAfterDelete(DataSet: TDataSet);
    procedure pedido_produtoAfterDelete(DataSet: TDataSet);
    procedure emb_especial_impBeforeDelete(DataSet: TDataSet);
    procedure emb_especial_pedAfterPost(DataSet: TDataSet);
    procedure emb_especial_item_pedAfterPost(DataSet: TDataSet);
    procedure IBDataSetnum_pedidoValidate(Sender: TField);
    procedure emb_especial_item_impcod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DBEdit14Exit(Sender: TObject);
    procedure IBDataSetGradecod_produtoValidate(Sender: TField);
    procedure IBDataSetAfterDelete(DataSet: TDataSet);
    procedure edBuscaCodigo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaDesc1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actNovoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IBDataSetGradecod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure emb_especial_item_impCalcFields(DataSet: TDataSet);
    procedure fr_FmNavigator1acDeleteExecute(Sender: TObject);
    procedure DBGradeShowCellHint(Sender: TObject; Field: TField;
      var AHint: String; var ATimeOut: Integer);
    procedure DBGradeErrosShowCellHint(Sender: TObject; Field: TField;
      var AHint: String; var ATimeOut: Integer);
    procedure actExcluirPedidoExecute(Sender: TObject);
    procedure DBGradeErrosEnter(Sender: TObject);
    procedure IBDataSetGradeAfterDelete(DataSet: TDataSet);
    procedure IBDataSetGradeErrosAfterDelete(DataSet: TDataSet);
    procedure actConfCaixasExecute(Sender: TObject);
    procedure IBDataSetGradeErrosAfterScroll(DataSet: TDataSet);
    procedure dbcClienteClick(Sender: TObject);
    procedure GerarModeloProdutos(Flag: boolean);
    procedure GerarExcelAlteracao;
    procedure actGerarExcelExecute(Sender: TObject);
    procedure actImportarExcelExecute(Sender: TObject);
    procedure actConfAllCaixasExecute(Sender: TObject);
    function GetPlanilha: String;
    procedure IBDataSetnum_pedido_cliValidate(Sender: TField);
    procedure fr_FmNavigator1acPostExecute(Sender: TObject);
    procedure FabricantesAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
    function GetSequencia(CodCliente, NumPedido: String): Integer;
    procedure AbrirExcel(Caminho: String; Visible: boolean = false);
    Procedure AbrirPlanilha(Caminho: String; Visivel: boolean = True);
    procedure FecharExcel(FecharTabelas: boolean = True);
    procedure FecharPlanilha;

    procedure GravarPedido;
    procedure GravarItens;
    procedure GravarEmbalagemEspecial;

    procedure DeletePedido(CodEmpresa : Integer; NumPedido: Int64);
    procedure AbrirImpPedCli(Situacao, NumPedidoCli: String);
    procedure ExcluirMarcados(DataSet: TDataSet; Grade: TDBGrid);
  public
    { Public declarations }
    procedure Novo;
    procedure Abrir;

  protected
    procedure Set_Value;
  end;

var
  frmImportarPedidoCliente: TfrmImportarPedidoCliente;

  gCodEmpresa, gCodFornecedor: Integer;
  gCodCliente, gNumPedido : String;

  FlagInsert : boolean;
  Erro : boolean;

  Ant, FileName, FileListaEsp: String;

  SavePlace: TBookmark; { salvar a posição na tabela de produtos }

  DataEmissao : TDate;

implementation

uses unConnection, unCad, SigIMP01_006, unMenuCompl, UnPesquisaProduto,
  SigIMP01_061;

{$R *.dfm}


function TfrmImportarPedidoCliente.GetPlanilha: String;
Var
  DIR_PLANILHAS, PED : String;

begin
  with parametro_cliente do
  begin
    Close;
    ParamByName('cod_cliente').AsString := IBDataSetcod_cliente.AsString;
    Open;
  end;
  { Pasta onde será gravada a planilha  }
  DIR_PLANILHAS := trim(parametro_comercialdir_planilhas.AsString);
  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para planilhas do Cliente, não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
   if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { diretório para planilhas, mais subpasta com código do cliente }
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(IBDataSetcod_cliente.AsString);
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
  PED := trim(IBDataSetnum_pedido_cli.AsString);
  PED := StringReplace(ped, '/', '-', [rfReplaceAll]);
  PED := StringReplace(ped, '\', '-', [rfReplaceAll]);
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'ORDER ' + PED;
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);
  Result := DIR_PLANILHAS + '\IMPORTAÇÃO DO PEDIDO.' + trim(PED) + '.xls';
end;

procedure TfrmImportarPedidoCliente.Abrir;
begin
  Button1.Visible := True;
  Button1.Click;
end;

procedure TfrmImportarPedidoCliente.Novo;
begin
  AbrirImpPedCli('N', '');
  Button1.Visible := False;
end;

procedure TfrmImportarPedidoCliente.AbrirImpPedCli(Situacao, NumPedidoCli: String);
begin
  with IBDataSet do
  begin
    { Novo Pedido para importação}
    if Situacao = 'N' then
    begin
      Close;
      Fornecedores.Close;
      Fornecedores.ParamByName('cod_empresa').Clear;
      Fornecedores.ParamByName('cod_cliente').Clear;
      Fornecedores.Open;
      IBDataSetGrade.Close;
      IBDataSetGradeErros.Close;
      btnFiltrar.Enabled := True;
      SelectSQL.Clear;
      SelectSQL.Add('select * from "imp_ped_cli" ');
      SelectSQL.Add('where 1=2                   ');
      Open;
      FlagInsert := false;
      Exit;
    end;
    { reabrir um pedido importado/gerado/validado }
    if Situacao <> 'I' then
    begin
      btnFiltrar.Enabled := False;
      gCodCliente := IBDataSetcod_cliente.AsString;
      gCodFornecedor := IBDataSetcod_fornecedor.AsInteger;
      gNumPedido := NumPedidoCli;
      Cancel;
      Close;
      SelectSQL.Clear;
      SelectSQL.Add('select * from "imp_ped_cli"                ');
      SelectSQL.Add('where "cod_empresa" = :cod_empresa         ');
      SelectSQL.Add('  and "cod_cliente" = :cod_cliente         ');
      SelectSQL.Add('  and "cod_fornecedor" = :cod_fornecedor   ');
      SelectSQL.Add('  and "num_pedido_cli" = :num_pedido_cli   ');
      SelectSQL.Add('order by "dat_cadastro" desc               ');
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('cod_cliente').AsString := gCodCliente;
      ParamByName('cod_fornecedor').AsInteger := gCodFornecedor;
      ParamByName('num_pedido_cli').AsString := gNumPedido;
      Open;
    end;
  end;
  FlagInsert := false;
end;

procedure TfrmImportarPedidoCliente.Set_Value;
begin

end;

function TfrmImportarPedidoCliente.GetSequencia(CodCliente, NumPedido: String): Integer;
begin
  { nova sequencia para itens do pedido cliente (imp_ped_cli_prod) }
  with sequencia do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := CodCliente;
    ParamByName('num_pedido_cli').AsString := NumPedido;
    Open;
    if FieldByName('seq').Value = null then Result := 1
                                       else Result := FieldByName('seq').AsInteger;
    Close;
  end;
end;

procedure TfrmImportarPedidoCliente.AbrirExcel(Caminho: String; Visible: boolean = false);
Var
  lcid : Cardinal;
  WkBk : _Workbook;

begin
  { Selecionar a planilha e abrir o Excel }
  if trim(Caminho) = '' then
  begin
    if (OpenDialog.Execute) then
       Caminho := OpenDialog.FileName
    else begin
      Application.MessageBox('Operação cancelada', 'Informação', MB_ICONINFORMATION+MB_OK);
      FecharExcel;
      Abort;
    end;
  end;
  FileName := Caminho;

  try
  lcid := GetUserDefaultLCID;
  WkBk := ExcelApplication.Workbooks.Open(Caminho, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam, lcid);

  ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
  ExcelWorksheet.Activate(LCID);
  ExcelApplication.Visible[lcid] := Visible;
  ExcelApplication.DisplayAlerts[lcid] := False;
  except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;

Procedure TfrmImportarPedidoCliente.AbrirPlanilha(Caminho: String; Visivel: boolean = True);
Var
  lcid : Cardinal;
  WkBk : _Workbook;
begin
 try
  lcid := GetUserDefaultLCID;
  ExcelApplication1.Visible[lcid] := Visible;
  ExcelApplication1.DisplayAlerts[lcid] := False;
  WkBk := ExcelApplication1.Workbooks.Open(Caminho, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam, lcid);

  ExcelWorksheet1.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
  ExcelWorksheet1.Activate(LCID);
 except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Cancel;
    if imp_ped_cli.State in [dsEdit, dsInsert] then imp_ped_cli.Cancel;
    ExcelWorkSheet1.Disconnect;
    ExcelApplication1.Quit;
    ExcelApplication1.Disconnect;
    FileName := '';
    Abort;
 end;
end;

Procedure TfrmImportarPedidoCliente.FecharExcel(FecharTabelas: boolean = True);
begin
  if FecharTabelas then
  begin
    if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Cancel;
    if imp_ped_cli.State in [dsEdit, dsInsert] then imp_ped_cli.Cancel;
  end;

  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  FileName := '';
end;

Procedure TfrmImportarPedidoCliente.FecharPlanilha;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication1)) then Exit;
  ExcelWorkSheet1.Disconnect;
  ExcelApplication1.Quit;
  ExcelApplication1.Disconnect;
end;

procedure TfrmImportarPedidoCliente.FormShow(Sender: TObject);
begin
  inherited;
  Panel1Enter(nil);
  Clientes.ParamByName('login').Value := vgLogin;
  Clientes.Open;
  Fornecedores.Open;
  Fabricantes.Open;
  dbcCliente.SetFocus;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmImportarPedidoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
  IBDataSetGrade.Close;
  IBDataSetGradeErros.Close;
  IBDataSet.Close;
  Clientes.Close;
  Fornecedores.Close;
  Fabricantes.Close;
  FecharExcel;
  Action := caFree;
  frmImportarPedidoCliente := nil;
end;

procedure TfrmImportarPedidoCliente.IBDataSetGradeNewRecord(
  DataSet: TDataSet);
begin
  { montar chave primária para reg.filho }
  with DataSet do
  begin
     FieldByName('cod_empresa').AsInteger := IBDataSet.FieldByName('cod_empresa').AsInteger;
     FieldByName('cod_cliente').AsString := IBdataSet.FieldByName('cod_cliente').AsString;
     FieldByName('num_pedido_cli').AsString := IBDataSet.FieldByName('num_pedido_cli').AsString;
     FieldByName('seq').AsInteger := GetSequencia(IBDataSetcod_cliente.AsString, IBDataSetnum_pedido_cli.AsString);
     FieldByName('ies_situacao').AsString := 'I';
     FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
     FieldByName('ies_emb_esp').AsString := 'N';
  end;
end;

procedure TfrmImportarPedidoCliente.IBDataSetAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if IBDataSetcod_cliente.IsNull then Exit;
  { obter parâmetros do cliente }
  with parametro_cliente do
  begin
    Close;
    ParamByName('cod_cliente').AsString := IBDataSet.FieldByName('cod_cliente').AsString;
    Open;
  end;
  { Selecionar novos filhos }
  if FlagInsert then Exit;
  with IBDataSetGrade do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger   := IBDataSet.FieldByName('cod_empresa').AsInteger;
    ParamByName('cod_cliente').AsString    := IBDataSet.FieldByName('cod_cliente').AsString;
    ParamByName('num_pedido_cli').AsString := IBDataSet.FieldByName('num_pedido_cli').AsString;
    Open;
    FlagInsert := False;
  end;
  with IBDataSetGradeErros do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger   := IBDataSet.FieldByName('cod_empresa').AsInteger;
    ParamByName('cod_cliente').AsString    := IBDataSet.FieldByName('cod_cliente').AsString;
    ParamByName('num_pedido_cli').AsString := IBDataSet.FieldByName('num_pedido_cli').AsString;
    Open;
    FlagInsert := False;
  end;
  { Embalagens Especiais e Itens das Embalagens Especiais }
  with emb_especial_imp do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido_cli').AsString := IBDataSetnum_pedido_cli.AsString;
    Open;
  end;
  with emb_especial_item_imp do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido_cli').AsString := IBDataSetnum_pedido_cli.AsString;
    ParamByName('seq').AsInteger := emb_especial_impseq.AsInteger;
    Open;
  end;
end;

procedure TfrmImportarPedidoCliente.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
  IBDataSet.FieldByName('num_lista').AsInteger := 0; { 22.06.16 - não usar mais listas de preços }
  IBDataSet.FieldByName('ies_pallets').AsString := 'N';
  IBDataSet.FieldByName('dat_cadastro').AsDateTime := DataHoraServidor;
  IBDataSet.FieldByName('ies_base_comissao').Value := parametro_comercialies_base_comissao.Value;
end;

procedure TfrmImportarPedidoCliente.IBDataSetCalcFields(DataSet: TDataSet);
Var
  s : String;
begin
  inherited;
  s := '';
  if IBDataSet.FieldByName('ies_situacao').AsString = 'I' then s := 'Importado';
  if IBDataSet.FieldByName('ies_situacao').AsString = 'E' then s := 'Erro';
  if IBDataSet.FieldByName('ies_situacao').AsString = 'G' then s := 'Gerado';
  IBDataSet.FieldByName('calSituacao').AsString := s;
  { Hablitar botões conforme a situação do Pedido }
  btnPedido.Enabled   := IBDataSet.FieldByName('ies_situacao').AsString = 'I';
  try
    btnValidar.Enabled := IBDataSet.FieldByName('ies_situacao').AsString[1] in ['E','I'];
  except
  end;
end;

procedure TfrmImportarPedidoCliente.IBDataSetGradeCalcFields(
  DataSet: TDataSet);
Var
  s : String;
begin
  inherited;
  s := '';
  if DataSet.FieldByName('ies_situacao').AsString = 'I' then s := 'Importado';
  if DataSet.FieldByName('ies_situacao').AsString = 'C' then s := 'Importado';
  if DataSet.FieldByName('ies_situacao').AsString = 'G' then s := 'Gerado';
  if DataSet.FieldByName('ies_situacao').AsString = 'E' then s := 'Erro';
  if DataSet.FieldByName('ies_situacao').AsString = 'X' then s := 'Caixa';
  if DataSet.FieldByName('ies_situacao').AsString = 'P' then s := 'Produto';
  DataSet.FieldByName('calSituacao').AsString                  := s;

  with ProdutoDet(DataSet.FieldByName('cod_produto').AsString,
                  IBDataSet.FieldByName('cod_cliente').AsString,
                  IBDataSet.FieldByName('cod_fornecedor').AsInteger) do
       DataSet.FieldByName('Descricao').AsString := Portugues;

end;


procedure TfrmImportarPedidoCliente.DBGradeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if TDBGrid(Sender).DataSource.DataSet.IsEmpty then exit;

  if (Column.Field.FieldName = 'Descricao') then
  begin
    if TDBGrid(Sender).DataSource.DataSet.FieldByName('Descricao').IsNull then
    begin
      TDBGrid(Sender).Canvas.Brush.Color:= clRed;
      TDBGrid(Sender).Canvas.Font.Color:= clWindowText;
    end;
  end;

  { Alerta sobre Quantidade menor ou igual a zero }
  if (Column.Field.FieldName = 'qtde') then
  begin
    if (TDBGrid(Sender).DataSource.DataSet.FieldByName('qtde').AsFloat <= 0) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color:= clRed;
      TDBGrid(Sender).Canvas.Font.Color:= clWindowText;
    end;
  end;
  { Alerta sobre Quantidade de Caixas Master = 0 }
  if (Column.Field.FieldName = 'qtd_caixas') then
  begin
    if (TDBGrid(Sender).DataSource.DataSet.FieldByName('qtd_caixas').AsInteger = 0) and
       (TDBGrid(Sender).DataSource.DataSet.FieldByName('ies_emb_esp').AsString = 'N') then
    begin
      TDBGrid(Sender).Canvas.Brush.Color:= clRed;
      TDBGrid(Sender).Canvas.Font.Color:= clWindowText;
    end;
  end;
  { Alerta sobre quantidade de caixas não cheia }
  if (Column.Field.FieldName = 'qtd_caixas') then
  begin
    if (TDBGrid(Sender).DataSource.DataSet.FieldByName('ies_situacao').AsString = 'X') and
       (TDBGrid(Sender).DataSource.DataSet.FieldByName('ies_emb_esp').AsString = 'N') then
    begin
      TDBGrid(Sender).Canvas.Brush.Color:= clYellow;
      TDBGrid(Sender).Canvas.Font.Color:= clWindowText;
    end;
  end;
  { Alerta sobre Preço menor ou igual a zero (não encontrado)}
  if (Column.Field.FieldName = 'preco') then
  begin
    if (TDBGrid(Sender).DataSource.DataSet.FieldByName('preco').AsFloat <= 0) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color:= clMoneyGreen;
      TDBGrid(Sender).Canvas.Font.Color:= clWindowText;
    end;
  end;
  TDBGrid(Sender).Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmImportarPedidoCliente.Validar(Sender: TObject);
Var
  CodCliente, NumPedido : String;
begin
  inherited;
  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnValidar.Enabled := False;
  Application.ProcessMessages;

  Erro := False;
  FlagInsert := False;

  if IBDataSet.State in [dsInsert, dsEdit] then IBDataSet.Post;

  with imp_ped_cli do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Text := ' select * from "imp_ped_cli"                 '+
                      '  where "cod_empresa" = :cod_empresa         '+
                      '    and "cod_cliente" = :cod_cliente         '+
                      '    and "num_pedido_cli" =  :num_pedido_cli  ';
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := IBDataSetcod_cliente.AsString;
    ParamByName('num_pedido_cli').AsString := IBDataSetnum_pedido_cli.AsString;
    Open;
    CodCliente := trim(IBDataSetcod_cliente.AsString);
    NumPedido := trim(IBDataSetnum_pedido_cli.AsString);
  end;

  with imp_ped_cli_prod do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := CodCliente;
    ParamByName('num_pedido_cli').AsString := NumPedido;
    Open;
    First;
    while NOT(EOF) do
    begin
      Edit;
      Post; { Validação dos campos, colocado em imp_ped_cli_prod.BeforePost }
      Next;
    end;
  end;

  { atualizar embalagens especias e pallets }
  with spr_emb_esp_imp do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := CodCliente;
    ParamByName('num_pedido_cli').AsString := NumPedido;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;

  if imp_ped_cli.State in [dsEdit, dsInsert] then imp_ped_cli.post;

  with cby_imp_ped_cli do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := CodCliente;
    ParamByName('num_pedido_cli').AsString := NumPedido;
    Open;

    imp_ped_cli.Edit;
    imp_ped_cli.FieldByName('vlr_liquido').AsFloat := FieldByName('vlr_liquido').AsFloat;
    imp_ped_cli.FieldByName('vlr_liquido_esp').AsFloat := FieldByName('vlr_liquido_esp').AsFloat;

    imp_ped_cli.FieldByName('vol_caixas').AsFloat  := FieldByName('vol_caixas').AsFloat;
    imp_ped_cli.FieldByName('qtd_caixas').AsInteger := FieldByName('qtd_caixas').AsInteger;
    imp_ped_cli.FieldByName('pes_liquido').AsFloat := FieldByName('pes_liquido').AsFloat;
    imp_ped_cli.FieldByName('pes_bruto').AsFloat := FieldByName('pes_bruto').AsFloat;

    imp_ped_cli.FieldByName('vol_pallets').AsFloat  := FieldByName('vol_pallets').AsFloat;
    imp_ped_cli.FieldByName('qtd_pallets').AsInteger := FieldByName('qtd_pallets').AsInteger;
    imp_ped_cli.FieldByName('pes_liq_pallets').AsFloat := FieldByName('pes_liq_pallets').AsFloat;
    imp_ped_cli.FieldByName('pes_bruto_pallets').AsFloat := FieldByName('pes_bruto_pallets').AsFloat;

    imp_ped_cli.FieldByName('vol_geral').Value := FieldByName('vol_geral').AsFloat;
    imp_ped_cli.FieldByName('cxs_outpallet').Value := FieldByName('cxs_outpallet').AsInteger;
    imp_ped_cli.FieldByName('pes_liq_geral').Value := FieldByName('pes_liq_geral').AsFloat;
    imp_ped_cli.FieldByName('pes_bru_geral').Value := FieldByName('pes_bru_geral').AsFloat;

    imp_ped_cli.post;
    Close;
  end;


  { atualizar Valores Especiais em imp_ped_cli_prod quando não informados }
  with spr_vlr_esp_imp do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := trim(imp_ped_clicod_cliente.AsString);
    ParamByName('num_pedido_cli').AsString := trim(imp_ped_clinum_pedido_cli.AsString);
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;

  { atualizar SITUAÇÃO do pedido do cliente em imp_ped_cli}
  { Mudar a situação do Pedido (Header) }
  with sql_situacao_importado do  // importado sem erros
  begin
    ParamByName('cod_empresa').AsInteger := IBDataSet.FieldByName('cod_empresa').AsInteger;
    ParamByName('cod_cliente').AsString  := IBDataSet.FieldByName('cod_cliente').AsString;
    ParamByName('num_pedido_cli').AsString  := IBDataSet.FieldByName('num_pedido_cli').AsString;
    ExecQuery;
  end;
  with sql_situacao_erro do // importado com erros
  begin
    ParamByName('cod_empresa').AsInteger := IBDataSet.FieldByName('cod_empresa').AsInteger;
    ParamByName('cod_cliente').AsString  := IBDataSet.FieldByName('cod_cliente').AsString;
    ParamByName('num_pedido_cli').AsString  := IBDataSet.FieldByName('num_pedido_cli').AsString;

    ExecQuery;
  end;
  { Refresh nas tabelas }
  FlagInsert := False;
  imp_ped_cli.Close;
  imp_ped_cli.Open;
  IBDataSet.Close;
  IBDataSet.Open;

  { finalizar progress bar }
  btnValidar.Enabled := True;
  Ani.Terminate;

  if TBitBtn(Sender).Name = 'btnValidar' then
     Application.MessageBox('Validação completa','Informação', MB_OK+MB_ICONINFORMATION);

  //AbrirImpPedCli('I', NumPedido);

  if Erro then
  begin
    PageControl1.ActivePageIndex := 1;
    btnPedido.Enabled := False;
  end else
  begin
    PageControl1.ActivePageIndex := 0;
    btnPedido.Enabled := True;
  end;
end;

{ GERAÇÃO DO PEDIDO }
procedure TfrmImportarPedidoCliente.btnPedidoClick(Sender: TObject);
begin
  inherited;
  { Verificar se Pedido já existe no sistema }
  if dmCOM.ChecarPedido(trim(IBDataSetnum_pedido_cli.AsString), 'P') then
  begin
     Application.MessageBox('Número de Pedido do Cliente já existe no sistema', 'Erro', MB_OK+MB_ICONERROR);
     Abort;
  end;

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnPedido.Enabled := False;
  Application.ProcessMessages;
                                                                                      
  { Geração do Pedido no SIG }
  GravarPedido;
  GravarItens;
  GravarEmbalagemEspecial;

  { Colocar Pedido em edição, para atualizar os campos calculados  }
  if Not(Pedido.State in [dsInsert, dsEdit]) then
     Pedido.Edit;
  Pedido.Post;
  Pedido.Refresh;
  if Not(pedido_complemento.State in [dsInsert, dsEdit]) then
     pedido_complemento.Edit;
  pedido_complemento.Post;
  pedido_complemento.Refresh;

  { Atualizar flag situacao em imp_ped_cli, para "Gerado" }
  if Not(IBDataSet.State in [dsEdit, dsInsert]) then
     IBDataSet.Edit;
  IBDataSet.FieldByName('ies_situacao').AsString := 'G';
  IBDataSet.Post;

  { finalizar progress bar }
  btnPedido.Enabled := True;
  Ani.Terminate;

  //AbrirImpPedCli('I', IBDataSetnum_pedido_cli.AsString);
  if Application.MessageBox(PChar('Número do pedido gerado: ' + Pedido.FieldByName('num_pedido').AsString+#13#13+
                               'Deseja ir para a tela de manutenção de pedidos ?'),
                               'Informação', MB_YESNO+MB_ICONEXCLAMATION) = IDYES then
  begin
    CriarForm(Tfr_ManPedido, fr_ManPedido, False, False);
    fr_ManPedido.Open_Pedido(Pedidonum_pedido.AsLargeInt, Pedidocod_cliente.AsString);
    Close;
  end;

end;

procedure TfrmImportarPedidoCliente.DeletePedido(CodEmpresa : Integer; NumPedido: Int64);
begin
  { Excluir pedidos com problemas na geração }
  with delete_complemento do
  begin
    ParamByName('cod_empresa').AsInteger := CodEmpresa;
    ParamByName('num_pedido').AsInt64 := NumPedido;
    ExecQuery;
  end;

  with delete_itens do
  begin
    ParamByName('cod_empresa').AsInteger := CodEmpresa;
    ParamByName('num_pedido').AsInt64 := NumPedido;
    ExecQuery;
  end;

  with delete_pedido do
  begin
    ParamByName('cod_empresa').AsInteger := CodEmpresa;
    ParamByName('num_pedido').AsInt64 := NumPedido;
    ExecQuery;  
  end;

end;

procedure TfrmImportarPedidoCliente.GravarPedido;
begin
  { Gravar cabeçalho do pedido }
  with Pedido do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').AsInt64    := 0;  { número do pedido será gerado pelo processo }
    Open;
    Insert;
    try
      Post;
    except
      Application.MessageBox('Problemas na geração do pedido', 'Erro', MB_ICONERROR+MB_OK);
      Transaction.RollbackRetaining;
      Abort;
    end;
  end;

  { Gravar complementos do pedido }
  with pedido_complemento do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').AsInt64    := Pedidonum_pedido.AsLargeInt;
    Open;
    Insert;
    try
      Post;
    except
      Application.MessageBox('Problemas na geração do complemento do pedido', 'Erro', MB_ICONERROR+MB_OK);
      Transaction.RollbackRetaining;
      Abort;
    end;
  end;
end;


procedure TfrmImportarPedidoCliente.GravarItens;
begin
  { Gravar itens do pedido }
  with pedido_produto do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').AsInt64 := Pedidonum_pedido.AsLargeInt;
    ParamByName('num_sequencia').AsInteger := 0;
    Open;
  end;
  { IBDataSetGrade ----> PedidoProduto }
  with IBDataSetGrade do
  begin
    First;
    while Not(IBDataSetGrade.Eof) do
    begin
      pedido_produto.Append;

      pedido_produtocod_empresa.AsInteger := Pedidocod_empresa.AsInteger;
      pedido_produtonum_pedido.AsLargeInt := Pedidonum_pedido.AsLargeInt;
      pedido_produtonum_sequencia.AsInteger := FieldByName('seq').AsInteger;
      pedido_produtoseq_pkl.AsInteger       := FieldByName('seq_pkl').AsInteger;
      pedido_produtocod_produto.AsString := FieldByName('cod_produto').AsString;
      pedido_produtoqtd_produto.AsFloat := FieldByName('qtde').AsFloat;
      pedido_produtovlr_unitario_esp.AsFloat := FieldByName('preco_esp').AsFloat;
      pedido_produtoobs_preco_esp.AsString := FieldByName('obs_preco_esp').AsString;
      pedido_produtovlr_unitario.AsFloat := FieldByName('preco').AsFloat;
      pedido_produtodat_preco.AsDateTime := FieldByName('dat_preco').AsDateTime;                            
      pedido_produtoobs_preco.AsString := FieldByName('obs_preco').AsString;
      pedido_produtopct_comissao_c.Value := FieldByName('pct_comissao_c').AsFloat;
      pedido_produtopct_comissao_f.Value := FieldByName('pct_comissao_f').AsFloat;
      pedido_produtoqtd_cancelada.AsFloat := 0.00;
      pedido_produtoqtd_faturada.AsFloat := 0.00;
      pedido_produtoqtd_romaneada.AsFloat := 0.00;
      pedido_produtodat_inspecao.Clear;
      pedido_produtodat_cadastro.AsDateTime := Buscar_DateTime;
      pedido_produtoqtd_inner_box.AsFloat := 0;                                                                                       
      pedido_produtoies_emb_esp.AsString := FieldByName('ies_emb_esp').AsString;
      pedido_produtoun_cx_master.AsFloat := FieldByName('un_cx_master').AsFloat;
      pedido_produtoies_caixa_fechada.AsString := FieldByName('ies_caixa_fechada').AsString;

      if FieldByName('pes_liquido').IsNull then
         pedido_produtopes_liquido.Clear
      else
         pedido_produtopes_liquido.AsFloat := FieldByName('pes_liquido').AsFloat;

      if FieldByName('pes_bruto').IsNull then
         pedido_produtopes_bruto.Clear
      else
         pedido_produtopes_bruto.Value := FieldByName('pes_bruto').AsFloat;

      if FieldByName('vol_caixas').IsNull then
         pedido_produtovol_caixas.Clear
      else
         pedido_produtovol_caixas.Value := FieldByName('vol_caixas').AsFloat;

      if FieldByName('qtd_caixas').IsNull then
         pedido_produtoqtd_export_box.Clear
      else
         pedido_produtoqtd_export_box.Value := FieldByName('qtd_caixas').AsInteger;

      { pallets }
      if (FieldByName('ies_emb_esp').AsString = 'S') then
         pedido_produtoseq_emb_esp.AsInteger := FieldByName('seq_emb_esp').AsInteger
      else
         pedido_produtoseq_emb_esp.Clear;
      if (IBDataSeties_pallets.AsString = 'S') and Not(FieldByName('seq_pallet').IsNull) then
      begin
        pedido_produtoseq_pallet.AsInteger := FieldByName('seq_pallet').AsInteger;
        pedido_produtoqtd_pallet.AsInteger := FieldByName('qtd_pallet').AsInteger;
        pedido_produtopes_bruto_pallet.AsFloat := FieldByName('pes_bruto_pallet').AsFloat;
        pedido_produtopes_liquido_pallet.AsFloat := FieldByName('pes_liquido_pallet').AsFloat;
        pedido_produtocomprimento_pallet.AsFloat := FieldByName('comprimento_pallet').AsFloat;
        pedido_produtolargura_pallet.AsFloat := FieldByName('largura_pallet').AsFloat;
        pedido_produtoaltura_pallet.AsFloat := FieldByName('altura_pallet').AsFloat;
        pedido_produtovolume_pallet.AsFloat := FieldByName('volume_pallet').AsFloat;
        pedido_produtopes_pallet_vazio.AsFloat := FieldByName('pes_pallet_vazio').AsFloat;
      end else
      begin
        pedido_produtoseq_pallet.Clear;
        pedido_produtoqtd_pallet.Clear;
        pedido_produtopes_bruto_pallet.Clear;
        pedido_produtopes_liquido_pallet.Clear;
        pedido_produtocomprimento_pallet.Clear;
        pedido_produtolargura_pallet.Clear;
        pedido_produtoaltura_pallet.Clear;
        pedido_produtovolume_pallet.Clear;
      end;

      try
        pedido_produto.Post;
      except
        Application.MessageBox('Problemas na geração do itens do pedido', 'Erro', MB_ICONERROR+MB_OK);
        Transaction.RollbackRetaining;
        DeletePedido(Pedidocod_empresa.AsInteger,Pedidonum_pedido.AsLargeInt);
        Abort;
      end;

      pedido_produto.Edit;
      pedido_produto.Post;

      Next;
    end;
  end;
end;

procedure TfrmImportarPedidoCliente.PedidoNewRecord(DataSet: TDataSet);
begin
  inherited;
  { Número do Pedido Informado ou gerado automáticamente }
  if IBDataSetnum_pedido.Value > 0 then
     Pedidonum_pedido.AsLargeInt   := IBDataSetnum_pedido.Value
  else
	   Pedidonum_pedido.AsLargeInt   := dmCOM.GerarNumPedido;

  { abrir parâmetros comercial }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
  { Banco }
  with Banco do
  begin
    Close;
    ParamByName('cod_fornecedor').AsInteger := IBDataSetcod_fornecedor.AsInteger;
    Open;
  end;

  with dmCOM.ultimo_pedido_cliente do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString  := Clientescod_cliente.AsString;
    ParamByName('cod_fornecedor').AsInteger := IBDataSetcod_fornecedor.AsInteger;
    Open;
    if IsEmpty then { cliente não tem pedido ainda, obtem dados default de parametro comercial }
    begin
      Pedidocod_empresa.AsInteger         := vgCod_Empresa;
      Pedidocod_vendedor.AsInteger        := parametro_comercialcod_vendedor.AsInteger;
      Pedidonum_lista.AsInteger           := 0; { 22.06.16 - não usar mais listas de preços }
      Pedidocod_moeda.AsInteger           := Fornecedorescod_moeda.AsInteger;
      Pedidoies_situacao.AsString         := 'N'; { Normal }
      Pedidodat_cadastro.AsDateTime       := Buscar_DateTime;
      Pedidodat_emissao.AsDateTime        := IBDataSetdat_cadastro.AsDateTime;
      Pedidoies_tip_pedido.AsString       := 'O';  { Orçamento }
      Pedidologin.AsString                := vgLogin;
      Pedidovlr_frete.AsCurrency		    := 0.000;
      Pedidocod_cliente.AsString          := IBDataSet.FieldByName('cod_cliente').AsString;
      Pedidocod_banco.AsInteger           := Bancocod_banco.AsInteger;
      Pedidoseq_filial.Value              := 0;
    end { obter dados do último pedido do cliente }
    else begin
      Pedidocod_empresa.AsInteger         := vgCod_Empresa;
      Pedidocod_vendedor.AsInteger        := dmCOM.ultimo_pedido_clientecod_vendedor.AsInteger;
      Pedidonum_lista.AsInteger           := 0; { 22.06.16 - não usar mais listas de preços }
      Pedidocod_moeda.AsInteger           := dmCOM.ultimo_pedido_clientecod_moeda.AsInteger;
      Pedidoies_situacao.AsString         := 'N'; { Normal }
      Pedidodat_cadastro.AsDateTime       := Buscar_DateTime;
      Pedidodat_emissao.AsDateTime        := IBDataSetdat_cadastro.AsDateTime;
      Pedidoies_tip_pedido.AsString       := 'O';  { Orçamento }
      Pedidologin.AsString                := vgLogin;
      Pedidovlr_frete.AsCurrency		    := 0.000;
      Pedidocod_cliente.AsString          := IBDataSet.FieldByName('cod_cliente').AsString;
      Pedidocod_banco.AsInteger           := Bancocod_banco.AsInteger;
      Pedidoterms_payment.Value           := dmCOM.ultimo_pedido_clienteterms_payment.AsString;
      Pedidoseq_filial.Value              := dmCOM.ultimo_pedido_clienteseq_filial.AsInteger;
    end;
  end;
  Pedidoies_pallets.AsString := IBDataSeties_pallets.AsString;
  Pedidoies_preco_esp.AsString := IBDataSeties_preco_esp.Value;
  Pedidoies_comissao.AsInteger := IBDataSeties_comissao.Value;
  Pedidoies_base_comissao.AsString := IBDataSeties_base_comissao.Value;
  Pedidoies_idioma.AsString := Fornecedoresies_idioma.Value;
end;

procedure TfrmImportarPedidoCliente.IBDataSetBeforeDelete(
  DataSet: TDataSet);
begin
   Screen.Cursor := crHourGlass;

  emb_especial_imp.Last;                                             
  while (emb_especial_imp.RecordCount >0) do
    emb_especial_imp.Delete;

   with QrAux do
   begin
     Close;
     SQL.Clear;
     SQL.Add('delete from "imp_ped_cli_prod" a            ');
     SQL.Add(' where a."cod_empresa" = :cod_empresa       ');
     SQL.Add('   and a."num_pedido_cli" = :num_pedido_cli ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_pedido_cli').AsString := IBDataSetnum_pedido_cli.AsString;
     ExecSQL;
   end;

   IBDataSetGrade.Refresh;
   Screen.Cursor := crDefault;
end;

procedure TfrmImportarPedidoCliente.pedido_complementoAfterClose(
  DataSet: TDataSet);
begin
  inherited;
	TIBDataSet(DataSet).CachedUpdates := False;
	if TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).UnPrepare;

end;

procedure TfrmImportarPedidoCliente.pedido_complementoAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      CancelUpdates;
      Transaction.RollbackRetaining;
   except
   end;

end;

procedure TfrmImportarPedidoCliente.pedido_complementoAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
		Transaction.RollbackRetaining;
   end;

end;

procedure TfrmImportarPedidoCliente.pedido_complementoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;

end;

procedure TfrmImportarPedidoCliente.pedido_complementoBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
	TIBDataSet(DataSet).CachedUpdates := True;
	if not TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).Prepare;                               

end;

procedure TfrmImportarPedidoCliente.pedido_complementoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  pedido_complemento.FieldByName('cod_empresa').AsInteger :=  vgCod_Empresa;
  pedido_complementonum_pedido.AsLargeInt := Pedidonum_pedido.AsLargeInt;
  pedido_complemento.FieldByName('num_pedido_cli').AsString := IBDataSetnum_pedido_cli.AsString;
  pedido_complemento.FieldByName('cod_fornecedor').AsInteger := IBDataSetcod_fornecedor.AsInteger;

  if Not(dmCOM.ultimo_pedido_cliente.IsEmpty) then
  begin
    pedido_complementocod_porto_emb.Value := dmCOM.ultimo_pedido_clientecod_porto_emb.AsInteger;
    pedido_complementocod_porto_des.Value := dmCOM.ultimo_pedido_clientecod_porto_des.AsInteger;
    pedido_complementocod_cond_venda.Value := dmCOM.ultimo_pedido_clientecod_cond_venda.AsInteger;
    pedido_complementobanco_intermed.Value := dmCOM.ultimo_pedido_clientebanco_intermed.AsString;
    pedido_complementoswift.Value := dmCOM.ultimo_pedido_clienteswift.AsString;
  end;

end;


procedure TfrmImportarPedidoCliente.IBDataSetGradeBeforePost(
  DataSet: TDataSet);
Var
  Preco : Double;
  r, x : real;
  CodFornecedor : Integer;
  CodCliente : String;
begin
  inherited;
    FlagInsert := True;
    with DataSet do
    begin
      if DataSet = IBDataSetGrade then
      begin
         CodCliente := IBDataSetcod_cliente.AsString;
         CodFornecedor := IBDataSetcod_fornecedor.AsInteger;
      end;
      if DataSet = IBDataSetGradeErros then
      begin
         CodCliente := IBDataSetcod_cliente.AsString;
         CodFornecedor := IBDataSetcod_fornecedor.AsInteger;
      end;
      if DataSet = imp_ped_cli_prod then
      begin
         CodCliente := imp_ped_clicod_cliente.AsString;
         CodFornecedor := imp_ped_clicod_fornecedor.AsInteger;
      end;
      { Obter o preço unitário do Produto e Percentuais de Comissão de Fornecedor e Cliente }
      Preco := 0.00;

      { Usar o preço digitado na planilha ou o procurar o preço automaticamente }
      if (DataSet.FieldByName('preco').AsFloat > 0) then Preco := DataSet.FieldByName('preco').AsFloat;

      if (DataSet.FieldByName('preco').AsFloat = 0) then
      begin
        with dmCOM.PrecoItem(FieldByName('cod_produto').AsString, CodCliente, CodFornecedor) do
        begin
        if (Existe) then
        begin
           Preco := PrecoItem;
           DataSet.FieldByName('preco').AsFloat := PrecoItem;
           DataSet.FieldByName('dat_preco').AsDateTime := DataPreco;
           DataSet.FieldByName('obs_preco').AsString := ObsPreco;
           DataSet.FieldByName('pct_comissao_f').AsFloat := Comis_f;
           DataSet.FieldByName('pct_comissao_c').AsFloat := Comis_c;
        end;
      end;
      end;

      { Atualizar Observação Preço Esp, se for branco fazer = Obs Preço Real }
      if (DataSet.FieldByName('obs_preco_esp').IsNull) then
      begin
        DataSet.FieldByName('obs_preco_esp').Value := DataSet.FieldByName('obs_preco').AsString;                  
      end;

      { Cálcular para Embalagens Padrões }
      if DataSet.FieldByName('ies_emb_esp').AsString = 'N' then
      begin
         with dmCOM.CalcEmbalagem(DataSet.FieldByName('cod_produto').AsString, DataSet.FieldByName('qtde').AsFloat) do
         begin
            DataSet.FieldByName('vol_caixas').AsFloat := VolCaixas;
            DataSet.FieldByName('qtd_caixas').AsInteger := QtdExportBox;
            DataSet.FieldByName('vol_caixas').AsFloat := VolCaixas;
            DataSet.FieldByName('pes_liquido').AsFloat := PesLiquido;
            DataSet.FieldByName('pes_bruto').AsFloat := PesBruto;
            DataSet.FieldByName('ies_caixa_fechada').AsString := CaixaFechada;
            DataSet.FieldByName('seq_emb_esp').Clear;
         end;
        { Unidades dentro de 1 caixas master }
        with dmCOM.CaixasMaster(DataSet.FieldByName('cod_produto').AsString) do
        begin
          DataSet.FieldByName('un_cx_master').AsFloat := Master;
        end;
      end;

      { Se não encontrou produto, indicar erro na importação e não é necessário realizar as outras validações }
      if (FieldByName('ies_situacao').AsString = 'P') then
      begin
        Erro := true;
        //Exit;
      end;

      {Outros flags para situação: ies_situacao = E=Erro I-Sem erros X-Caixa não fechada}

      { Validar Quantidade  }
      if FieldByName('qtde').AsFloat <= 0.00 then
         FieldByName('ies_situacao').AsString := 'E'
      else                                                                   
      { Preço inválido }                                                                          
      if Preco <= 0.00 then
         FieldByName('ies_situacao').AsString := 'E'
      else
      { Quantidade de Caixas válida }
      if (FieldByName('qtd_caixas').AsFloat = 0.00) and (DataSet.FieldByName('ies_emb_esp').AsString = 'N') then
         FieldByName('ies_situacao').AsString := 'E'
      else
      { faz a validação de caixas fechadas, apenas se não for confirmado na grade }
      if (FieldByName('ies_situacao').AsString <> 'C') then
      begin
        { Alerta sobre Caixa não fechada }
        if (DataSet.FieldByName('ies_caixa_fechada').AsString = 'N') and (DataSet.FieldByName('ies_emb_esp').AsString = 'N') then
           FieldByName('ies_situacao').AsString := 'X'
        else
          FieldByName('ies_situacao').AsString := 'I'; { sem erros }
      end;
      { setar flag geral de erro para indicar que ocorreu um erro }
      if (FieldByName('ies_situacao').AsString <> 'I')
      and (FieldByName('ies_situacao').AsString <> 'C') then
         Erro := True;
   end;
   DataSet.FieldByName('vlr_liquido').AsFloat := DataSet.FieldByName('qtde').AsFloat * DataSet.FieldByName('preco').AsFloat;
   DataSet.FieldByName('vlr_liquido_esp').AsFloat := DataSet.FieldByName('qtde').AsFloat * DataSet.FieldByName('preco_esp').AsFloat;   
   { percentuais de comissão }
   
end;
                                                              
procedure TfrmImportarPedidoCliente.IBDataSetGradeAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  with IBDataSet do
  begin
    if Not(State in [dsEdit, dsInsert]) then
       Edit;
    Post;
  end;
  btnPedido.Enabled := False;
end;

procedure TfrmImportarPedidoCliente.dbeSituacaoChange(Sender: TObject);
begin
  inherited;
  if IBDataSet.FieldByName('ies_situacao').AsString <> 'E'
     then dbeSituacao.Font.Color := clBlue
     else dbeSituacao.Font.Color := clRed;
end;

procedure TfrmImportarPedidoCliente.imp_ped_cli_prodNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  { montar chave primária para reg.filho }
  with DataSet do
  begin
     FieldByName('cod_empresa').AsInteger := imp_ped_cli.FieldByName('cod_empresa').AsInteger;
     FieldByName('cod_cliente').AsString := imp_ped_cli.FieldByName('cod_cliente').AsString;
     FieldByName('num_pedido_cli').AsString := imp_ped_cli.FieldByName('num_pedido_cli').AsString;
     FieldByName('ies_situacao').AsString := 'I';
     FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
  end;
end;

procedure TfrmImportarPedidoCliente.imp_ped_cli_prodAfterPost(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;
end;

procedure TfrmImportarPedidoCliente.imp_ped_cliAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
		Transaction.RollbackRetaining;
   end;

end;

procedure TfrmImportarPedidoCliente.imp_ped_cli_prodAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
      imp_ped_cli.Edit;
      imp_ped_cli.Post;
   except
		Transaction.RollbackRetaining;
   end;
end;

procedure TfrmImportarPedidoCliente.imp_ped_cliAfterPost(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;
  { atualizar SITUAÇÃO do pedido do cliente em imp_ped_cli}
  { Mudar a situação do Pedido (Header) }
  with sql_situacao_importado do  // importado sem erros
  begin
    ParamByName('cod_empresa').AsInteger := DataSet.FieldByName('cod_empresa').AsInteger;
    ParamByName('cod_cliente').AsString  := DataSet.FieldByName('cod_cliente').AsString;
    ParamByName('num_pedido_cli').AsString  := DataSet.FieldByName('num_pedido_cli').AsString;
    ExecQuery;
  end;
  with sql_situacao_erro do // importado com erros
  begin
    ParamByName('cod_empresa').AsInteger := DataSet.FieldByName('cod_empresa').AsInteger;
    ParamByName('cod_cliente').AsString  := DataSet.FieldByName('cod_cliente').AsString;
    ParamByName('num_pedido_cli').AsString  := DataSet.FieldByName('num_pedido_cli').AsString;

    ExecQuery;
  end;
end;

procedure TfrmImportarPedidoCliente.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if IBDataSet.IsEmpty then IBDataSetGrade.Close;
end;

procedure TfrmImportarPedidoCliente.imp_ped_cliAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  with imp_ped_cli_prod do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := imp_ped_clicod_empresa.AsInteger;
    ParamByName('cod_cliente').AsString := imp_ped_clicod_cliente.AsString;
    ParamByName('num_pedido_cli').AsString := imp_ped_clinum_pedido_cli.AsString;
    Open;
  end;
end;

procedure TfrmImportarPedidoCliente.dsIBDataSetDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  { Hablitar botões conforme a situação do Pedido }
  btnPedido.Enabled   := IBDataSet.FieldByName('ies_situacao').AsString = 'I';
  if (IBDataSet.FieldByName('ies_situacao').AsString = 'E') or
     (IBDataSet.FieldByName('ies_situacao').AsString = 'I') then
     btnValidar.Enabled := True
  else
     btnValidar.Enabled := False;
  { Permitir Importar Lista de Preços Especiais, se o Pedido ainda não foi gerado }
  btnGerar.Enabled := IBDataSeties_situacao.AsString <> 'G';
  btnImportar.Enabled := IBDataSeties_situacao.AsString <> 'G';
  { Habilitar Group Box Base Comissões se houver Preços Especiais }
  //ies_base_comissao.ReadOnly := Not(IBDataSeties_preco_esp.AsString = 'S');
end;

procedure TfrmImportarPedidoCliente.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
  FlagInsert := False;
end;

procedure TfrmImportarPedidoCliente.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
  { chamar a tela de Filtro de Pedidos Importados }
  if IBDataSet.State in [dsEdit, dsInsert] then Exit;

  if Not(Assigned(frm_PesquisaPedImportados)) then
     Application.CreateForm(Tfrm_PesquisaPedImportados, frm_PesquisaPedImportados);
     frm_PesquisaPedImportados.ShowModal;
     if (frm_PesquisaPedImportados.ModalResult = mrOk) then
     begin
       { selecionar fornecedores do cliente }
       with Fornecedores do
       begin
         Close;
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
         ParamByName('cod_cliente').AsString := trim(frm_PesquisaPedImportados.Pedidoscod_cliente.AsString);
         Open;
       end;

       with IBDataSet do
       begin
         Close;
         SelectSQL.Clear;
         SelectSQL.Add('select * from "imp_ped_cli" a               ');
         SelectSQL.Add(' where a."cod_empresa" = :cod_empresa       ');
         SelectSQL.Add('   and a."cod_cliente" = :cod_cliente       ');
         SelectSQL.Add('   and a."num_pedido_cli" = :num_pedido_cli ');
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
         ParamByName('cod_cliente').AsString := frm_PesquisaPedImportados.Pedidoscod_cliente.AsString;
         ParamByName('num_pedido_cli').AsString := frm_PesquisaPedImportados.Pedidosnum_pedido_cli.AsString;
         Open;
       end;
     end;

  { Embalagens Especiais e Itens das Embalagens Especiais }
  emb_especial_imp.Active := True;
  emb_especial_item_imp.Active := True;

end;

{ deveria ser usado para chamar a pesquisa de produtos
	if IBDataSetGrade.State in [dsBrowse] then
  begin
    if (dbeCodProduto.Focused) or (DBGrade.Focused) then
    begin
      if Not(Assigned(fr_PesquisaProduto)) then
         Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);
      fr_PesquisaProduto.ShowModal;
      if (fr_PesquisaProduto.ModalResult = mrOk) then
      begin
      	with IBDataSetGrade do
        	try
            DisableControls;
            First;
            Locate('cod_produto', fr_PesquisaProduto.qryProduto.FieldByName('cod_produto').AsVariant, []);
          finally
          	EnableControls;
          end;
      end;
    end;
	end else
	if IBDataSetGrade.State in [dsInsert, dsEdit] then
    if (dbeCodProduto.Focused) or (DBGrade.Focused) then
    begin
      if Not(Assigned(fr_PesquisaProduto)) then
         Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);
      fr_PesquisaProduto.ShowModal;
      if (fr_PesquisaProduto.ModalResult = mrOk) then
      begin
        	with IBDataSet do
           begin
             IBDataSetGradecod_produto.AsString  := fr_PesquisaProduto.qryProdutocod_produto.AsString;
           end;
      end;
    end;
}


procedure TfrmImportarPedidoCliente.ClientesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Clientes.Last;
  Clientes.First;
end;

procedure TfrmImportarPedidoCliente.FornecedoresAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  Fornecedores.Last;
  Fornecedores.First;
end;

procedure TfrmImportarPedidoCliente.Panel4Enter(Sender: TObject);
begin
  inherited;
  Application.OnMessage := nil;
end;

procedure TfrmImportarPedidoCliente.Panel4Exit(Sender: TObject);
begin
  inherited;
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
end;

procedure TfrmImportarPedidoCliente.edBuscaCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    IBDataSetGrade.DisableControls;
    if Des <> Ant then
    begin
       IBDataSetGrade.First;
       Ant := Des;
    end
    else
       IBDataSetGrade.Next;
    while not(IBDataSetGrade.EOF) do
    begin
      s := IBDataSetGrade.FieldByName('cod_produto').AsString;
      if Pos(Des, s) > 0 then
      begin
        IBDataSetGrade.EnableControls;
        Exit;
      end;
      IBDataSetGrade.Next;
    end;
    if (IBDataSetGrade.Eof) then IBDataSetGrade.First;
    IBDataSetGrade.EnableControls;
  end;

begin

  { busca rápida por código do produto }
  if (Key = VK_RETURN) then
  begin
    if Not(IBDataSetGrade.IsEmpty) then
       Localizar(trim(SemFmtProduto(IBDataSetcod_cliente.AsString, edBuscaCodigo.Text)));

    if trim(edBuscaCodigo.Text) <> '' then
    begin
      edBuscaCodigo.SetFocus;
      edBuscaCodigo.SelLength := 0;
      edBuscaCodigo.SelStart := Length(trim(edBuscaCodigo.Text));
    end;
  end;
end;

procedure TfrmImportarPedidoCliente.edBuscaDescKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    IBDataSetGrade.DisableControls;
    if Des <> Ant then
    begin
       IBDataSetGrade.First;
       Ant := Des;
    end
    else
       IBDataSetGrade.Next;
    while not(IBDataSetGrade.EOF) do
    begin
      s := IBDataSetGrade.FieldByName('Descricao').AsString;
      if Pos(Des, s) > 0 then
      begin
        IBDataSetGrade.EnableControls;
        Exit;
      end;
      IBDataSetGrade.Next;
    end;
    if (IBDataSetGrade.Eof) then IBDataSetGrade.First;    
    IBDataSetGrade.EnableControls;
  end;

begin
  { buscar pela descrição em português }
  if (Key = VK_RETURN) then
  begin
    if Not(IBDataSetGrade.IsEmpty) then
       Localizar(trim(edBuscaDesc.Text));

    if trim(edBuscaDesc.Text) <> '' then
    begin
      edBuscaDesc.SetFocus;
      edBuscaDesc.SelLength := 0;
      edBuscaDesc.SelStart := Length(trim(edBuscaDesc.Text));
    end;
  end;
end;

procedure TfrmImportarPedidoCliente.emb_especial_impAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  with TIBDataSet(DataSet) do
   try
    ApplyUpdates;
   finally
    Transaction.CommitRetaining;
    Refresh;
   end;
end;

procedure TfrmImportarPedidoCliente.emb_especial_impAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  with TIBDataSet(DataSet) do
   try
    ApplyUpdates;
   finally
    Transaction.CommitRetaining;
    Refresh;
   end;

end;

procedure TfrmImportarPedidoCliente.emb_especial_item_impAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  with TIBDataSet(DataSet) do
   try
    ApplyUpdates;
   finally
    Transaction.CommitRetaining;
    Refresh;
   end;

end;

procedure TfrmImportarPedidoCliente.emb_especial_item_impAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  with TIBDataSet(DataSet) do
   try
    ApplyUpdates;
   finally
    Transaction.CommitRetaining;
    Refresh;
   end;

end;

procedure TfrmImportarPedidoCliente.emb_especial_impAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if emb_especial_item_imp.State in [dsEdit, dsInsert] then Exit;
  with emb_especial_item_imp do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido_cli').AsString := emb_especial_impnum_pedido_cli.AsString;
    ParamByName('seq').AsInteger := emb_especial_impseq.AsInteger;
    Open;
  end;

end;

procedure TfrmImportarPedidoCliente.pedido_produtoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;

end;

procedure TfrmImportarPedidoCliente.PedidoAfterPost(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;

end;

procedure TfrmImportarPedidoCliente.PedidoAfterDelete(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;

end;

procedure TfrmImportarPedidoCliente.pedido_produtoAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;

end;

procedure TfrmImportarPedidoCliente.emb_especial_impBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  emb_especial_item_imp.Last;
  while (emb_especial_item_imp.RecordCount >0) do
    emb_especial_item_imp.Delete;
end;

procedure TfrmImportarPedidoCliente.GravarEmbalagemEspecial;
begin

  if emb_especial_imp.IsEmpty then Exit;

  with emb_especial_imp do
  begin
    First;
    emb_especial_ped.Open;
    while Not(EOF) do
    begin
      emb_especial_ped.Append;
      emb_especial_pedcod_empresa.Value := FieldByName('cod_empresa').Value;
      emb_especial_pednum_pedido.Value := Pedidonum_pedido.AsLargeInt;
      emb_especial_pedseq.Value := FieldByName('seq').Value;
      emb_especial_pedden_embalagem.Value := FieldByName('den_embalagem').Value;
      emb_especial_pedqtd_total.Value := FieldByName('qtd_total').Value;
      emb_especial_pedvol_total.Value := FieldByName('vol_total').Value;
      emb_especial_pedpes_bruto.Value := FieldByName('pes_bruto').Value;
      emb_especial_pedpes_liquido.Value := FieldByName('pes_liquido').Value;
      emb_especial_pedqtd_caixas.value := FieldByName('qtd_caixas').Value;
      emb_especial_pedqtd_produto.Value := FieldByName('qtd_produto').Value;
      emb_especial_pedpes_unitario.Value := FieldByName('pes_unitario').Value;
      emb_especial_pedaltura.Value := FieldByName('altura').Value;
      emb_especial_pedlargura.Value := FieldByName('largura').Value;
      emb_especial_pedprofundidade.Value := FieldByName('profundidade').Value;
      emb_especial_pedpes_bruto_cx.Value := FieldByName('pes_bruto_cx').Value;
      emb_especial_pedmesclar.Value := FieldByName('mesclar').Value;
      emb_especial_ped.Post;

      with emb_especial_item_imp do                                                               
      begin
        First;
        emb_especial_item_ped.Open;
        while Not(EOF) do                                                            
        begin
          emb_especial_item_ped.Append;
          emb_especial_item_pedcod_empresa.Value := FieldByName('cod_empresa').Value;
          emb_especial_item_pednum_pedido.Value := Pedidonum_pedido.AsLargeInt;
          emb_especial_item_pedseq.Value := FieldByName('seq').Value;
          emb_especial_item_pednum_sequencia.Value := FieldByName('num_sequencia').Value;
          emb_especial_item_pedcod_produto.Value := FieldByName('cod_produto').Value;
          emb_especial_item_pedqtd_produto.Value := FieldByName('qtd_produto').Value;
          emb_especial_item_pedpes_liquido.Value := FieldByName('pes_liquido').Value;
          emb_especial_item_ped.Post;
          Next;
        end;
      end;

      Next;
    end;
  end;

  emb_especial_item_ped.Close;
  emb_especial_ped.Close;
end;

procedure TfrmImportarPedidoCliente.emb_especial_pedAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  with TIBDataSet(DataSet) do
   try
    ApplyUpdates;
   finally
    Transaction.CommitRetaining;
    Refresh;
   end;
end;

procedure TfrmImportarPedidoCliente.emb_especial_item_pedAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  with TIBDataSet(DataSet) do
   try
    ApplyUpdates;
   finally
    Transaction.CommitRetaining;
    Refresh;
   end;
end;

procedure TfrmImportarPedidoCliente.IBDataSetnum_pedidoValidate(
  Sender: TField);
begin
  inherited;
  if Sender.Text = '' then Exit;

  if Not(dmCOM.ProcuraPedido(Sender.AsInteger).Existe) then
  begin
    Application.MessageBox('Já existe um Pedido da Intercom cadastrado com este número', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    dbeNumPedido.SetFocus;
    Abort;
  end;

end;

procedure TfrmImportarPedidoCliente.emb_especial_item_impcod_produtoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '' then Exit;

  with FmtProdutoCliente(IBDataSetcod_cliente.AsString, UpperCase(Sender.AsString)) do
  begin
    Text := fmtProduto;
    Sender.DisplayWidth := fmtLength;
  end;                                                                 
                                                           
end;                                                                           

procedure TfrmImportarPedidoCliente.DBEdit14Exit(Sender: TObject);
begin
  inherited;
  if IBDataSetGrade.State in [dsEdit, dsInsert] then IBDataSetGrade.Post;
end;

procedure TfrmImportarPedidoCliente.IBDataSetGradecod_produtoValidate(
  Sender: TField);
begin
  inherited;
  { checar se Produto pertence ao Cliente e ao Fornecedor do Pedido }

  with ProcurarProduto(Sender.AsString,
                       IBDataSet.FieldByName('cod_cliente').AsString,
                       IBDataSet.FieldByName('cod_fornecedor').AsInteger) do
  begin
    if Not(Existe) then
    begin
      Application.MessageBox(PChar('Produto não encontrado' + IBDataSetcod_cliente.AsString) , 'Erro', MB_ICONERROR+MB_OK);
      Abort;
    end;
    if Cliente <> IBDataSetcod_cliente.AsString  then
    begin
      Application.MessageBox(PChar('Produto não pertence ao Cliente ' + IBDataSetcod_cliente.AsString) , 'Erro', MB_ICONERROR+MB_OK);
      Abort;
    end;
    if Fornecedor <> IBDataSetcod_fornecedor.AsInteger then
    begin
      Application.MessageBox(PChar('Produto não pertence ao Fornecedor ' + Fornecedoresraz_social_reduz.AsString) , 'Erro', MB_ICONERROR+MB_OK);
      Abort;
    end;
  end;
end;

procedure TfrmImportarPedidoCliente.IBDataSetAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  { hablitar botões Filtrar e Importar após uma exclusão }
  btnFiltrar.Enabled := True;
  btnValidar.Enabled := False;
  btnPedido.Enabled := False;
end;

procedure TfrmImportarPedidoCliente.edBuscaCodigo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    IBDataSetGradeErros.DisableControls;
    if Des <> Ant then
    begin
       IBDataSetGradeErros.First;
       Ant := Des;
    end
    else
       IBDataSetGradeErros.Next;
    while not(IBDataSetGradeErros.EOF) do
    begin
      s := IBDataSetGradeErros.FieldByName('cod_produto').AsString;
      if Pos(Des, s) > 0 then
      begin
        IBDataSetGradeErros.EnableControls;
        Exit;
      end;
      IBDataSetGradeErros.Next;
    end;
    if (IBDataSetGradeErros.Eof) then IBDataSetGradeErros.First;
    IBDataSetGradeErros.EnableControls;
  end;

begin

  { busca rápida por código do produto }
  if (Key = VK_RETURN) then
  begin
    if Not(IBDataSetGradeErros.IsEmpty) then
       Localizar(trim(SemFmtProduto(IBDataSetcod_cliente.AsString, edBuscaCodigo1.Text)));

    if trim(edBuscaCodigo.Text) <> '' then
    begin
      edBuscaCodigo1.SetFocus;
      edBuscaCodigo1.SelLength := 0;
      edBuscaCodigo1.SelStart := Length(trim(edBuscaCodigo1.Text));
    end;
  end;
end;

procedure TfrmImportarPedidoCliente.edBuscaDesc1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    IBDataSetGradeErros.DisableControls;
    if Des <> Ant then
    begin
       IBDataSetGradeErros.First;
       Ant := Des;
    end
    else
       IBDataSetGradeErros.Next;
    while not(IBDataSetGradeErros.EOF) do
    begin
      s := IBDataSetGradeErros.FieldByName('Descricao').AsString;
      if Pos(Des, s) > 0 then
      begin
        IBDataSetGradeErros.EnableControls;
        Exit;
      end;
      IBDataSetGradeErros.Next;
    end;
    if (IBDataSetGradeErros.Eof) then IBDataSetGradeErros.First;    
    IBDataSetGradeErros.EnableControls;
  end;

begin
  inherited;
  { buscar pela descrição em português }
  if (Key = VK_RETURN) then
  begin
    if Not(IBDataSetGradeErros.IsEmpty) then
       Localizar(trim(edBuscaDesc1.Text));

    if trim(edBuscaDesc1.Text) <> '' then
    begin
      edBuscaDesc1.SetFocus;
      edBuscaDesc1.SelLength := 0;
      edBuscaDesc1.SelStart := Length(trim(edBuscaDesc1.Text));
    end;
  end;
end;

procedure TfrmImportarPedidoCliente.actNovoExecute(Sender: TObject);
begin
  inherited;
  FileName := '';                                                 
  FileListaEsp := '';
  FecharExcel;
  FecharPlanilha;
  AbrirImpPedCli('N', '');
end;

procedure TfrmImportarPedidoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  FileName := '';
  FileListaEsp := '';
  { abrir parâmetros comercial }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
  //    // Formatação de Volumes na tela.
  IBDataSetvol_caixas.DisplayFormat := VolumeNumberFormat_fmt;
  IBDataSetvol_pallets.DisplayFormat := VolumeNumberFormat_fmt;
end;

procedure TfrmImportarPedidoCliente.IBDataSetGradecod_produtoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '' then Exit;

  with FmtProdutoCliente(IBDataSetcod_cliente.AsString, UpperCase(Sender.AsString)) do
  begin
    Text := fmtProduto;
    Sender.DisplayWidth := fmtLength;
  end;
end;

procedure TfrmImportarPedidoCliente.emb_especial_item_impCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  with ProdutoDet(emb_especial_item_impcod_produto.AsString,
                       IBDataSet.FieldByName('cod_cliente').AsString,
                       IBDataSet.FieldByName('cod_fornecedor').AsInteger) do
       DataSet.FieldByName('descricao').AsString := Portugues;
end;

procedure TfrmImportarPedidoCliente.ExcluirMarcados(DataSet: TDataSet; Grade: TDBGrid);
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
      IBDataSet.Edit;
      IBDataSet.Post;
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

procedure TfrmImportarPedidoCliente.fr_FmNavigator1acDeleteExecute(
  Sender: TObject);
begin
  { identifica de qual DataSet está sendo chamada a exclusão }
  if TDataSetDelete(Sender).DataSource = dsIBDataSet then
     IBDataSet.Delete;


  if TDataSetDelete(Sender).DataSource = dsIBDataSetGrade then
     ExcluirMarcados(IBDataSetGrade, DBGrade);

  if TDataSetDelete(Sender).DataSource = dsIBDataSetGradeErros then
     ExcluirMarcados(IBDataSetGradeErros, DBGradeErros);
end;

procedure TfrmImportarPedidoCliente.DBGradeShowCellHint(Sender: TObject;
  Field: TField; var AHint: String; var ATimeOut: Integer);
begin
  inherited;
  if Field.FieldName = 'Descricao' then
  begin
    with ProdutoDet(IBDataSetGradecod_produto.AsString, IBDataSetCod_Cliente.AsString, IBDataSetcod_fornecedor.AsInteger) do
    begin
      AHint := Portugues + #13#13 + Ingles;
    end;
  end;
end;

procedure TfrmImportarPedidoCliente.DBGradeErrosShowCellHint(
  Sender: TObject; Field: TField; var AHint: String;
  var ATimeOut: Integer);
begin
  inherited;
  if Field.FieldName = 'Descricao' then
  begin
    with ProdutoDet(IBDataSetGradeErroscod_produto.AsString, IBDataSetCod_Cliente.AsString, IBDataSetcod_fornecedor.AsInteger) do
    begin
      AHint := Portugues + #13#13 + Ingles;
    end;
  end;
end;                                                            

procedure TfrmImportarPedidoCliente.actExcluirPedidoExecute(
  Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir excluir o pedido importado ?', 'Exclusão', MB_YESNO+MB_ICONEXCLAMATION) = mrNO
  then Abort;
  IBDataSet.Delete;
end;

procedure TfrmImportarPedidoCliente.DBGradeErrosEnter(Sender: TObject);
begin
  inherited;
  ChangeDataSource(dsIBDataSetGradeErros);
end;

procedure TfrmImportarPedidoCliente.IBDataSetGradeAfterDelete(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;
end;

procedure TfrmImportarPedidoCliente.IBDataSetGradeErrosAfterDelete(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;
end;

procedure TfrmImportarPedidoCliente.actConfCaixasExecute(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Confirma a quantidade de caixas para o produto ? ', 'Caixas', MB_ICONQUESTION+MB_YESNO) = IDYES then
  begin
    IBDataSetGradeErros.Edit;
    IBDataSetGradeErros.FieldByName('ies_situacao').AsString := 'C';
    IBDataSetGradeErros.Post;
  end else
  begin
    IBDataSetGradeErros.Edit;
    IBDataSetGradeErros.FieldByName('ies_situacao').AsString := 'X';
    IBDataSetGradeErros.Post;
  end;
  Validar(Sender);
end;

procedure TfrmImportarPedidoCliente.IBDataSetGradeErrosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  btnConfCaixas.Enabled := DataSet.FieldByName('ies_situacao').AsString = 'X';
  btnConfAllCaixas.Enabled := btnConfCaixas.Enabled;
end;

procedure TfrmImportarPedidoCliente.dbcClienteClick(Sender: TObject);
begin
  inherited;
  { selecionar fornecedores do cliente }
  with Fornecedores do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := trim(Clientescod_cliente.AsString);
    Open;
  end;
end;

procedure TfrmImportarPedidoCliente.GerarExcelAlteracao;
Var
  Linha, LinAux, SeqEmbEsp, LinIniEmbEsp, SeqPallet, LinIniPallet : Integer;
  fPallet : boolean;
  xlCorPallet : integer;
  s, s1, s2, Mesclar : String;
  corErro : integer;
  PesLiquidoCx : Double;
begin
  { Gerar a planilha de Importação do Pedido para alterações }

  corErro := 0;

  { Itens do pedido importado }
  with imp_ped_cli_prod do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Text := 'select * from "imp_ped_cli_prod"          '+
                      ' where "cod_empresa" = :cod_empresa       '+
                      '   and "cod_cliente" = :cod_cliente       '+
                      '   and "num_pedido_cli" = :num_pedido_cli '+
                      'order by "seq_pkl"                        ';

    ParamByName('cod_empresa').AsInteger := IBDataSetcod_empresa.AsInteger;
    ParamByName('cod_cliente').AsString := IBDataSetcod_cliente.AsString;
    ParamByName('num_pedido_cli').AsString := IBDataSetnum_pedido_cli.AsString;
    Open;
    First;

    fPallet := True; // var para altenar cores nos pallets

    with ExcelWorksheet.Range['A1','C1'] do
    begin
      Font.Size := 10;
      Value := 'IMPORTAÇÃO DO PEDIDO';
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      Font.Bold := True;
      MergeCells := True;
      Interior.ColorIndex := 44;
    end;

    with ExcelWorksheet.Range['A2','J2'] do
    begin
      Font.Size := 9;
      Value := 'PEDIDO: ' + trim(imp_ped_cli_prodnum_pedido_cli.AsString) + '    CLIENTE: ' + trim(IBDataSetcod_cliente.AsString) + '     FORNECEDOR: ' + trim(IBDataSetlkpFornecedor.AsString);
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      Font.Bold := True;
      MergeCells := True;
      Interior.ColorIndex := 44;
    end;

    Linha := 4;

    { Ocultar colunas para Pallets quando não houver }
    if (IBDataSeties_pallets.AsString = 'N') then ExcelWorksheet.Range['W1','AD1'].EntireColumn.Hidden := True;

    { inicializar sequencias embalagens e pallets }
    SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
    if (SeqEmbEsp > 0) then LinIniEmbEsp := Linha
                       else LinIniEmbEsp := 0;
    SeqPallet := FieldByName('seq_pallet').AsInteger;
    if (SeqPallet > 0) then LinIniPallet := Linha
                       else LinIniPallet := 0;

    { Leitura dos Itens do Pedido Importado }
    while Not(EOF) do
    begin
      { A - Sequencia do Produto }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := imp_ped_cli_prodseq.AsInteger;
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
        Value := FmtProdutoCliente(IBDataSetcod_cliente.AsString, imp_ped_cli_prodcod_produto.AsString).fmtProduto;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { C - Descrição do Produto em Português }
      { OBTER DESCRIÇÕES DETALHADAS EM INGLÊS E PORTUGUÊS DO PRODUTO, GRUPO E NCM }
      with ProdutoDet(FieldByName('cod_produto').AsString, IBDataSetCod_Cliente.AsString, IBDataSetcod_fornecedor.AsInteger) do
      begin
        s1 := Ingles;
        s2 := Portugues;

        if Not(Existe) then corErro := 3
                       else corErro := 0;

        if (s1 = '') then s1 := '*** PRODUTO NÃO ENCONTRADO ***.';
        if (s2 = '') then s2 := ' ';

        if s1[Length(s1)] <> '.' then
           s1 := s1 + '.';

        s := s1 + ' ' + S2 + '. ('+Grupo + ', NCM: ' + Ncm + ')';

        with ExcelWorkSheet.Range['B'+IntToStr(Linha),'B'+IntToStr(Linha)] do
        begin
          Font.ColorIndex := CorNcm;
          Font.Bold := True;
          Interior.ColorIndex := corErro;
          corErro := 0;
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
        Value := imp_ped_cli_prodqtde.AsFloat;
        NumberFormat := '#.##0,0';
        WrapText := True;
        ShrinkToFit := False;
        if (imp_ped_cli_prodqtde.Value <= 0) then corErro := 3
                                             else corErro := 0;
        Interior.ColorIndex := corErro;
      end;
      { E - PREÇO REAL }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 35;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        Value := imp_ped_cli_prodpreco.AsFloat;
        NumberFormat := '#.##0,000000';
        WrapText := True;
        ShrinkToFit := False;
        if (imp_ped_cli_prodpreco.Value <= 0) then corErro := 3
                                              else corErro := 0;
        Interior.ColorIndex := corErro;
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
        Value := StringReplace(trim(imp_ped_cli_prodobs_preco.AsString), #13#10, ' ', [rfReplaceAll]);
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;
      { H - PREÇO ESPECIAL }
      with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        if (imp_ped_cli_prodpreco_esp.AsFloat > 0) and (imp_ped_cli_prodpreco.AsFloat <> imp_ped_cli_prodpreco_esp.AsFloat) then
            Interior.ColorIndex := 6
        else
            Interior.ColorIndex := 7;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        Value := imp_ped_cli_prodpreco_esp.AsFloat;
        NumberFormat := '#.##0,000000';
        WrapText := True;
        ShrinkToFit := False;
      end;
      { I - TOTAL ESPECIAL }
      with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
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
      { J - COMENTÁRIO PREÇO ESPECIAL }
      with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 7;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := StringReplace(trim(imp_ped_cli_prodobs_preco_esp.AsString), #13#10, ' ', [rfReplaceAll]);
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;

      { Dados da Embalagem Padrão }
      with emb_padrao do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('cod_produto').Value := imp_ped_cli_prodcod_produto.AsString;
        ParamByName('qtd_produto').Value := imp_ped_cli_prodqtde.AsFloat;
        Open;
      end;

      { Dados da embalagem especial }
      if (FieldByName('ies_emb_esp').AsString = 'S') then
      begin
         with emb_esp_imp do
         begin
            Close;
            ParamByName('cod_empresa').AsInteger	:= vgCod_Empresa;
            ParamByName('num_pedido_cli').AsString := trim(imp_ped_cli_prodnum_pedido_cli.AsString);
            ParamByName('seq').AsInteger := SeqEmbEsp;
            Open;
            Mesclar := FieldByName('mesclar').AsString;;
            PesLiquidoCx := FieldByName('pes_liquido').Value;
         end;
      end;

      { K - TOTAL VOLUME IN M³ }
      with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
      begin
        NumberFormat := VolumeNumberFormat;
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(RC[3]*RC[7],' + VolumeDecimais + ')'
        else
           FormulaR1C1 := '=ROUND(RC[4]*RC[7],' + VolumeDecimais + ')';
      end;

      { L - TOTAL GROSS WEIGHT (Kg) }
      with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(((RC[5]-(RC[10]*RC[4]))*RC[2])+(RC[-8]*RC[10]),2)'
        else
           FormulaR1C1 := '=ROUND(RC[3]*RC[5],2)';
      end;

      { M - TOTAL NET WEIGHT (Kg) }
      with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (Mesclar = 'S') then Value := PesLiquidoCx
                           else FormulaR1C1 := '=ROUND(RC[-9]*RC[9],2)';
      end;

      { N - TOTAL QUANTITY OF PACKINGS }
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
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

      { O - SPECIAL CARTONS }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';                                                  
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := imp_ped_cli_prodqtd_caixas.AsInteger;
      end;

      { P - QUANTITY OF UNITS INSIDE THE PACKING }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           Value := emb_padraoqtd_master_box.AsFloat;
      end;

      { Q - Peso Bruto de 1 Caixa - Gross Weight 1 Packing }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
            Value :=   emb_esp_imppes_bruto_cx.AsFloat
        else
            Value := emb_padraopes_bruto_caixa.AsFloat;
      end;

      { R - Volume }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
      end;

      { S - Comprimento }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
            Value := emb_esp_impprofundidade.AsFloat
        else Value := emb_padraocomprimento.AsFloat;
      end;

      { T - Largura }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := emb_esp_implargura.AsFloat
        else Value := emb_padraolargura.AsFloat;
      end;

      { U - Altura }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := emb_esp_impaltura.AsFloat
        else Value := emb_padraoaltura.AsFloat;
      end;

      { V - NET WEIGHT OF THE PRODUCT (Kg) }
      with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
      begin
        NumberFormat := '##0,0000';
        Value := emb_padraopes_unit_prod.AsFloat;
        if (emb_padraopes_unit_prod.Value <= 0) then corErro := 3
                                                else corErro := 0;
        Interior.ColorIndex := corErro;
      end;

      { PALLETS }
      if (FieldByName('seq_pallet').AsInteger > 0) then
      begin
        { W - QUANTITY OF PALLETS }
        with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
         Value := FieldByName('qtd_pallet').AsInteger;
        end;
        { X - PESO PALLET VAZIO }
        with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,00';
         Value := FieldByName('pes_pallet_vazio').AsFloat;
        end;
        { Y - PALLET GROSS WEIGHT }
        with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,00';
         Value := FieldByName('pes_bruto_pallet').AsFloat;
        end;
        { Z - PALLET NET WEIGHT }
        with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,00';
         Value := FieldByName('pes_liquido_pallet').AsFloat;
        end;
        { AA - COMPRIMENTO DO PALLET }
        with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
         Value := FieldByName('comprimento_pallet').AsFloat;
        end;
        { AB - LARGURA DO PALLET }
        with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
         Value := FieldByName('largura_pallet').AsFloat;
        end;
        { AC - ALTURA DO PALLET }
        with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
         Value := FieldByName('altura_pallet').AsFloat;
        end;
        { AD - PALLET VOLUME }
        with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,000';
         FormulaR1C1 := '=ROUND(ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)*RC[-7],3)';
        end;
      end;

      {AE - percentual Fornecedor }
      with ExcelWorksheet.Range['AE' + IntToStr(Linha),'AE' + IntToStr(Linha)] do
      begin
         Font.Size := 9;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         NumberFormat := '0,00';
         if (FieldByName('pct_comissao_f').Value <> null) then Value := FieldByName('pct_comissao_f').Value
                                                          else Value := null;
         WrapText := True;
         ShrinkToFit := False;
      end;

      {AF - Valor Comissão do Fornecedor  }
      with ExcelWorksheet.Range['AF' + IntToStr(Linha),'AF' + IntToStr(Linha)] do
      begin
         Font.Size := 9;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         NumberFormat := '0,00';
         if (IBDataSeties_base_comissao.Value = '1') then FormulaR1C1 := '=ROUND(RC[-26]*RC[-1]/100,2)'
                                                     else FormulaR1C1 := '=ROUND(RC[-23]*RC[-1]/100,2)';
         WrapText := True;
         ShrinkToFit := False;
      end;

      {AG - percentual Cliente }
      with ExcelWorksheet.Range['AG' + IntToStr(Linha),'AG' + IntToStr(Linha)] do
      begin
         Font.Size := 9;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         NumberFormat := '0,00';
         if (FieldByName('pct_comissao_c').Value <> null) then Value := FieldByName('pct_comissao_c').Value
                                                          else Value := null;
         WrapText := True;
         ShrinkToFit := False;
      end;

      {AH - Valor Comissão do Cliente  }
      with ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
      begin
         Font.Size := 9;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         NumberFormat := '0,00';
         if (IBDataSeties_base_comissao.Value = '1') then FormulaR1C1 := '=ROUND(RC[-25]*RC[-1]/100,2)'
                                                     else FormulaR1C1 := '=ROUND(RC[-28]*RC[-1]/100,2)';
         WrapText := True;
         ShrinkToFit := False;
      end;

      with ExcelWorksheet.Range['K' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := 0;
      end;

      Next;

      { mesclar células de embalagens especiais }
      if (FieldByName('seq_emb_esp').AsInteger <> SeqEmbEsp) or (EOF) then
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
          if (Mesclar = 'S') then
          begin
             with ExcelWorkSheet.Range['M'+IntToStr(LinIniEmbEsp),'M'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 0;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
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
       end;
       SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
       LinIniEmbEsp := Linha + 1;
      end;
      { mesclar células de pallets }
      if (IBDataSeties_pallets.AsString = 'S') then
      begin
          if (FieldByname('seq_pallet').AsInteger <> SeqPallet) or (EOF) then
          begin
            if (SeqPallet > 0) then
            begin
               with ExcelWorkSheet.Range['W'+IntToStr(LinIniPallet),'W'+IntToStr(Linha)] do
               begin
                 MergeCells := True;
                 Interior.ColorIndex := 0;
                 HorizontalAlignment := xlCenter;
                 VerticalAlignment := xlCenter;
                 WrapText := True;
                 ShrinkToFit := False;
               end;
               with ExcelWorkSheet.Range['X'+IntToStr(LinIniPallet),'X'+IntToStr(Linha)] do
               begin
                 MergeCells := True;
                 Interior.ColorIndex := 0;
                 HorizontalAlignment := xlCenter;
                 VerticalAlignment := xlCenter;
                 WrapText := True;
                 ShrinkToFit := False;
               end;
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
               { alternar cores entre as embalagens }
               if (fPallet) then xlCorPallet := 4 else xlCorPallet := 6;
               fPallet := Not(fPallet);
               with ExcelWorkSheet.Range['A'+IntToStr(LinIniPallet),'AD'+IntToStr(Linha)] do
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
    with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
    begin
      Value := 'TOTAL BRUTO: ';
      HorizontalAlignment := xlRight;
    end;

    { D - quantidades dos produtos }
    with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '#.##0,0';
      WrapText := True;
      ShrinkToFit := False;
    end;
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

    { K - TOTAL VOLUME }
    with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),' + VolumeDecimaisTotal + ')';
      NumberFormat := VolumeNumberFormat;
    end;

    { L - TOTAL PESO BRUTO }
    with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '#.##0,00';
    end;

    { M - TOTAL PESO LÍQUIDO }
    with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '#.##0,00';
    end;

    { N - PACKINGS }
    with ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '##.##0';
    end;

    { O - SPECIAL CARTONS }
    with ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '##.##0';
    end;

    { AF - VALOR DA COMISSÃO FORNECEDOR }
    with ExcelWorksheet.Range['AF' + IntToStr(Linha),'AF' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '#.##0,00';
      WrapText := True;
      ShrinkToFit := False;
    end;

    { AH - VALOR DA COMISSÃO CLIENTE }
    with ExcelWorksheet.Range['AH' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlCenter;
      FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
      NumberFormat := '#.##0,00';
      WrapText := True;
      ShrinkToFit := False;
    end;

    { cor para os totais }
    with ExcelWorksheet.Range['K' + IntToStr(Linha),'V' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Interior.ColorIndex := 34;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
    end;
    with ExcelWorksheet.Range['AE' + IntToStr(Linha),'AH' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
    end;
    { PALLETS }
    if (IBDataSeties_pallets.AsString = 'S') then
    begin
       { W - QUANTIDADE TOTAL DE PALLETS }
       with ExcelWorksheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
         NumberFormat := '##.##0';
       end;
       { Y - TOTAL PESO BRUTO PALLETS }
       with ExcelWorksheet.Range['Y' + IntToStr(Linha),'Y' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
         NumberFormat := '#.##0,00';
       end;
       { Z - TOTAL PESO LÍQUIDO PALLETS }
       with ExcelWorksheet.Range['Z' + IntToStr(Linha),'Z' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C)';
         NumberFormat := '#.##0,00';
       end;
       { AD - TOTAL VOLUME PALLETS }
       with ExcelWorksheet.Range['AD' + IntToStr(Linha),'AD' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         FormulaR1C1 := '=ROUND(SUM(R[-'+IntToStr(Linha-4)+']C:R[-2]C),2)';
         NumberFormat := '#.##0,00';
       end;
       { cor para os totais }
       with ExcelWorksheet.Range['W' + IntToStr(Linha),'AD' + IntToStr(Linha)] do
       begin
         Font.Size := 8;
         Interior.ColorIndex := 45;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
       end;
    end;
    Close;
  end;
  { Bordas na área ocupada da planilha }
  //if (IBDataSeties_pallets.AsString = 'S') then s := 'AH' else s := 'AD';
  with ExcelWorkSheet.Range['A4', 'AH' + IntToStr(Linha)] do
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
  { congelar painéis }
  ExcelWorkSheet.Range['D4','D4'].Select;
  ExcelApplication.ActiveWindow.FreezePanes := True;
  ExcelWorksheet.Range['X1','X1'].EntireColumn.Hidden := True;
end;

procedure TfrmImportarPedidoCliente.actGerarExcelExecute(
  Sender: TObject);
Var
  DIR_PLANILHAS, PED : String;
  s : string;
begin
  { Gerar Planilha Excel de Importação }

  { obter modelo de planilha em branco  }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  if trim(IBDataSetnum_pedido_cli.AsString) = '' then
  begin
    Application.MessageBox('O Número de Pedido não foi informado', 'Informação',MB_ICONINFORMATION+MB_OK);
    dbNumPedidoCli.SetFocus;
    Exit;
  end;
  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnGerar.Enabled := False;                                                                   
  Application.ProcessMessages;

  FileListaEsp := GetPlanilha;

  { cópia da planinha anterior }
  if FileExists(FileListaEsp) then begin                                                                           
     CopyFile(PChar(FileListaEsp), PChar(FileListaEsp + '.BAK'), false);
     DeleteFile(FileListaEsp);
  end;

  { Modelo de Planilha para Importação de Pedido }
  parametro_comercialmod_pedido_imp.SaveToFile(FileListaEsp);
  AbrirExcel(FileListaEsp);
  ExcelWorkSheet.Name := 'Pedido';
  ExcelWorkSheet.Cells.Item[01, 01].Value := vgCod_Empresa; { evitar bug na abertura }

  { Gerar a planilha para importação do pedido }
  if (IBDataSetGrade.IsEmpty) and (IBDataSetGradeErros.IsEmpty) then
     GerarModeloProdutos(cbModelo.Checked) // gera excel com produtos do cliente
  else
     GerarExcelAlteracao; // gerar excel com itens do pedido já importado

  ExcelApplication.ActiveWorkbook.SaveAs(FileListaEsp, xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  s := FileListaEsp;
  FecharExcel(False);
  Sleep(5000);   // tempo para garantir a gravação da planilha no HD
  FileListaEsp := s ;
  AbrirPlanilha(FileListaEsp, True);
  { finalizar progress bar }
  btnGerar.Enabled := True;
  Ani.Terminate;
end;

{ LER ITENS DO EXCEL DE ALTERAÇÃO }
procedure TfrmImportarPedidoCliente.actImportarExcelExecute(
  Sender: TObject);
Var
  Linha : Integer;
  Seq, SeqEmbEsp, SeqPkl, NumeroCX, LinIniEmbEsp, LinIniPallet, SeqPallet, qtd_pallet: Integer;
  PrecoEsp, PrecoReal, Qtde: Double;
  AlturaCX, LarguraCX, ComprimentoCX, VolumeCX, VolumeTotalCX, PesoCXVazia, PesoBrutoTotalCx, PesoBrutoCx : double;
  pes_bruto_pallet, pes_liquido_pallet, comprimento_pallet, largura_pallet, altura_pallet, volume_pallet, peso_pallet_vazio, PesoLiqTotalCx: double;
  s, CodProduto, obs_preco_real, obs_preco_esp, Mesclar : String;
begin
  inherited;
  AbrirExcel(FileListaEsp);

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnImportar.Enabled := False;
  Application.ProcessMessages;

  FileListaEsp := FileName;
  IBDataSetAfterScroll(IBDataSet);

  IBDataSetGrade.First;
  while Not(IBDataSetGrade.Eof) do                                 
    IBDataSetGrade.Delete;
  IBDataSetGradeErros.First;
  while Not(IBDataSetGradeErros.Eof) do
    IBDataSetGradeErros.Delete;
  { Excluir Embalagens Especiais }
  emb_especial_imp.First;
  while Not(emb_especial_imp.Eof) do
    emb_especial_imp.Delete;
  { salvar Número do Pedido do Cliente, para reabrir o pedido ao final do processo }
  gNumPedido := trim(IBDataSetnum_pedido_cli.AsString);

  Linha := 4;
  Seq := 1;
  SeqEmbEsp := 0;
  LinIniEmbEsp := 0;                                                  
  AlturaCX := 0;
  LarguraCX := 0;
  ComprimentoCX := 0;
  VolumeCX := 0;
  NumeroCX := 0;                           
  PesoCXVazia := 0;
  { Inicio da leitura da planilha }
  While (trim(ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Text) <> '') do
  begin
    { B - Código do Produto }
    CodProduto := ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Value2;
    CodProduto := SemFmtProduto(IBDataSetcod_cliente.AsString, CodProduto);

    { D - Quantidade }
    try
      Qtde := ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Value2;
    except
      Qtde := 0.00;
    end;

    if (Qtde = 0) then
    begin
      Inc(Linha);
      Continue;
    end;
    { E - Preço Real }
    try
      PrecoReal := ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)].Value2;
      obs_preco_real := trim(ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)].Value2);
    except
      PrecoReal := 0.00;
    end;
    { H - Preço Especial }
    try
      PrecoEsp := ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)].Value2;
      obs_preco_esp := ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)].Value2;
    except
      PrecoEsp := 0.00;
    end;

    { K - TOTAL VOLUME IN M³ - garantir o cálculo do Volume Total das caixas }
    with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
    begin
      NumberFormat := VolumeNumberFormat;
      FormulaR1C1 := '=ROUND(RC[3]*RC[7],' + VolumeDecimaisTotal + ')'; // para itens embalagem standard
    end;

    { R - Volume - garantir o cálculo do Volume da Caixa na planilha }
    with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
    begin
      NumberFormat := '#.##0,0000';
      FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
    end;

    with imp_ped_cli_prod do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('cod_cliente').AsString := IBDataSetcod_cliente.AsString;
      ParamByName('num_pedido_cli').AsString := IBDataSetnum_pedido_cli.AsString;
      Open;
      { inclusão do item }
      Append;
      with ProcurarProduto(CodProduto, IBDataSetcod_cliente.AsString, IBDataSetcod_fornecedor.AsInteger) do
      begin
        if Not(Existe) then FieldByName('ies_situacao').AsString := 'P'
                       else FieldByName('ies_situacao').AsString := 'I';
      end;
      FieldByName('cod_produto').AsString := Trim(CodProduto);
      FieldByName('seq').AsInteger := Seq;
      FieldByName('seq_pkl').AsInteger := Seq;
      FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
      FieldByName('cod_cliente').AsString := IBDataSet.FieldByName('cod_cliente').AsString;
      FieldByName('num_pedido_cli').AsString := IBDataSet.FieldByName('num_pedido_cli').AsString;
      FieldByname('ies_status').AsString := 'A';
      FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
      FieldByName('qtde').AsFloat := Qtde;

      { Como default identificar item com embalagem normal  }
      FieldByName('ies_emb_esp').AsString := 'N';
      FieldByName('seq_emb_esp').Clear;

      { Verificar Preço Real }
      if (PrecoReal = 0) then
      begin
         { não informado o Preço Real do Produto, obter o preço automático }
         with dmCOM.PrecoItem(imp_ped_cli_prod.FieldByName('cod_produto').AsString, IBDataSetcod_cliente.AsString,
                              IBDataSetcod_fornecedor.AsInteger) do
         begin
         if (Existe) then
         begin
            FieldByName('preco').AsFloat := PrecoItem;
            FieldByName('vlr_liquido').AsFloat := FieldByName('qtde').AsFloat * FieldByName('preco').AsFloat;
            FieldByName('dat_preco').AsDateTime := DataPreco;
            FieldByName('obs_preco').AsString := ObsPreco;
            FieldByName('pct_comissao_f').AsFloat := Comis_f;
            FieldByName('pct_comissao_c').AsFloat := Comis_c;
          end
         end;
      end else
      begin
        { utilizar o preço da planilha }
        FieldByName('preco').AsFloat := PrecoReal;
        FieldByName('vlr_liquido').AsFloat := FieldByName('qtde').AsFloat * FieldByName('preco').AsFloat;
        FieldByName('obs_preco').AsString := obs_preco_real;
        { obter as comissões do produto }
        with ProcurarProduto(imp_ped_cli_prodcod_produto.AsString,
                             IBDataSet.FieldByName('cod_cliente').AsString,
                             IBDataSet.FieldByName('cod_fornecedor').AsInteger) do
        begin
          FieldByName('pct_comissao_f').AsFloat := Comis_f;
          FieldByName('pct_comissao_c').AsFloat := Comis_c;
        end;
      end;
      { Tratar comissões importadas da planilha }
      if (ExcelWorksheet.Range['AE'+IntToStr(linha), 'AE'+IntToStr(linha)].Text <> '') then
          FieldByName('pct_comissao_f').AsFloat := ExcelWorksheet.Range['AE'+IntToStr(linha), 'AE'+IntToStr(linha)].Value2;

      if (ExcelWorksheet.Range['AG'+IntToStr(linha), 'AG'+IntToStr(linha)].Text <> '') then
          FieldByName('pct_comissao_c').AsFloat := ExcelWorksheet.Range['AG'+IntToStr(linha), 'AG'+IntToStr(linha)].Value2;


      { Obter Preço Especial }
      FieldByName('preco_esp').AsFloat := PrecoEsp;
      FieldByName('obs_preco_esp').AsString := obs_preco_esp;
      FieldByName('vlr_liquido_esp').AsFloat := FieldByName('qtde').AsFloat * FieldByName('preco_esp').AsFloat;

      Post; // imp_ped_cli_prod

      { Assume que é 1 caixa quando usuário deixou em branco }
      if (ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].MergeCells = True) and
         (ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].Text = '') then
      begin
         NumeroCX := 1;
         ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].Value := 1;
      end;

      { EMBALAGEM ESPECIAL }
      if (ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].MergeCells = True) and
         (ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].Text <> '') or
         (ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].Text <> '') then
      begin
        SeqEmbEsp := SeqEmbEsp + 1;
        { K - TOTAL VOLUME IN M³ - garantir o cálculo do Volume Total das caixas }
        with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
        begin
          NumberFormat := VolumeNumberFormat;
          FormulaR1C1 := '=ROUND(RC[4]*RC[7],' + VolumeDecimais + ')'; // Itens Embalagem Especial
        end;
        { K - VOLUME TOTAL DAS CAIXAS }
        VolumeTotalCX := ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)].Value2;
        { L - PESO BRUTO TOTAL }
        PesoBrutoTotalCx := ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)].Value2;
        { M - TOTAL NET WEIGHT (Kg) }
        PesoLiqTotalCx := ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)].Value2;
        if (ExcelWorksheet.Range['M'+IntToStr(linha), 'M'+IntToStr(linha)].MergeCells = True) then
            Mesclar := 'S'
        else
            Mesclar := 'N';
        { O - SPECIAL CARTONS }
        NumeroCX := ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)].Value2;
        if (NumeroCX = 0) then NumeroCX := 1; 
        { Q - PESO BRUTO DE 1 CAIXA }
        PesoBrutoCx := ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)].Value2;
        { R - VOLUME DA CAIXA }
        VolumeCX := ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)].Value2;
        { S - COMPRIMENTO }
        ComprimentoCX := ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)].Value2;
        { T - LARGURA }
        LarguraCX := ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)].Value2;
        { U - ALTURA }
        AlturaCX := ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)].Value2;

        { Gravar dados da Embalagem Especial }
        with emb_especial_imp do
        begin
           Append;
           FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
           FieldByName('num_pedido_cli').AsString := IBDataSet.FieldByName('num_pedido_cli').AsString;
           FieldByName('seq').AsInteger := SeqEmbEsp;
           FieldByName('den_embalagem').AsString := 'CAIXA NUM: ' + IntToStr(SeqEmbEsp);

           FieldByName('qtd_caixas').AsInteger := NumeroCX;
           FieldByName('pes_bruto_cx').AsFloat := PesoBrutoCx;   { Peso Bruto de 1 Caixa }
           FieldByName('pes_bruto').AsFloat := PesoBrutoTotalCx; { peso bruto total da caixa }

           FieldByName('altura').AsFloat := AlturaCX;
           FieldByName('largura').AsFloat := LarguraCX;
           FieldByName('profundidade').AsFloat := ComprimentoCX;    
           FieldByName('vol_total').AsFloat := VolumeTotalCX;
           FieldByName('pes_liquido').AsFloat := PesoLiqTotalCx;
           FieldByName('mesclar').AsString := Mesclar;

           { estes campos serão atualizados depois de ler todos os itens da caixa pela procedure Validar }
           FieldByName('qtd_produto').AsFloat := 0 ;
           FieldByName('qtd_total').AsFloat := 0;
           Post;
        end;
        { gravar dados da embalagem no pedido }
        with imp_ped_cli_prod do
        begin
          Edit;
          FieldByName('vol_caixas').AsFloat := Arredonda(VolumeCX, -3);
          FieldByName('qtd_caixas').AsInteger := NumeroCX;
          FieldByName('ies_emb_esp').AsString := 'S';
          FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
          FieldByName('un_cx_master').AsFloat := Qtde;
          Post;
        end;
      end;
      { Item da Embalagem Especial }
      if ((ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].MergeCells = True) or
         (ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].Text <> '')) and
         (NumeroCX > 0) then
      begin
        { gravar dados do item no pedido }
        with imp_ped_cli_prod do
        begin
          Edit;
          if (ExcelWorksheet.Range['O'+IntToStr(linha), 'O'+IntToStr(linha)].Text = '') then
          begin
            FieldByName('vol_caixas').Clear;
            FieldByName('qtd_caixas').Clear;
            FieldByName('pes_liquido').Clear;
            FieldByName('pes_bruto').Clear;
          end;
          FieldByName('ies_emb_esp').AsString := 'S';
          FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
          FieldByName('un_cx_master').AsFloat := Qtde;
          Post;
        end;
        { gravar itens da embalagem especial }
        with emb_especial_item_imp do
        begin
          Append;
          FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
          FieldByName('num_pedido_cli').AsString := IBDataSet.FieldByName('num_pedido_cli').AsString;
          FieldByName('seq').AsInteger := SeqEmbEsp;
          FieldByName('num_sequencia').AsInteger := Seq; { a mesma sequencia dos itens do pedido }
          FieldByName('cod_produto').AsString := CodProduto;
          FieldByName('qtd_produto').AsFloat := Qtde;
          FieldByName('pes_liquido').AsFloat := dmCOM.CalcEmbalagem(CodProduto, Qtde).PesLiquido;
          Post;
        end;
      end;
     { PALLETS PACKAGES }
     { Processar Pallets somente se check box estiver marcado }
     if (IBDataSeties_pallets.AsString = 'S') then
     begin
        qtd_pallet := 0;
        pes_bruto_pallet := 0;   { o cálculo dos pesos do pallet, é feito na VALIDAÇÃO }
        pes_liquido_pallet := 0;
        comprimento_pallet := 0;
        peso_pallet_vazio := 0;
        largura_pallet := 0;
        altura_pallet := 0;
        volume_pallet := 0;
        { Identificar início do Pallet }
        if (ExcelWorksheet.Range['W'+IntToStr(linha), 'W'+IntToStr(linha)].MergeCells = True) and
           (ExcelWorksheet.Range['W'+IntToStr(linha), 'W'+IntToStr(linha)].Text <> '') or
           (ExcelWorksheet.Range['W'+IntToStr(linha), 'W'+IntToStr(linha)].Text <> '') then
        begin
          { W - QTD PALLET }
          qtd_pallet := ExcelWorksheet.Range['W'+IntToStr(linha), 'W'+IntToStr(linha)].Value2;
          { X - PESO PALLET VAZIO }
          peso_pallet_vazio := ExcelWorksheet.Range['X'+IntToStr(linha), 'X'+IntToStr(linha)].Value2;
          { Y - PESO BRUTO PALLET }
          pes_bruto_pallet := ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].Value2;
          { AA - COMPRIMENTO }
          comprimento_pallet := ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].Value2;
          { AB - LARGURA }
          largura_pallet := ExcelWorksheet.Range['AB'+IntToStr(linha), 'AB'+IntToStr(linha)].Value2;
          { AC - ALTURA }
          altura_pallet := ExcelWorksheet.Range['AC'+IntToStr(linha), 'AC'+IntToStr(linha)].Value2;
          { Volume e Pesos Líquido e Bruto dos Pallets será calculado na procedure spr_pesos_pallets_ped }
          SeqPallet := SeqPallet + 1;
        end;
        imp_ped_cli_prod.Edit;
        { Identificar item do Pallet }
        if (ExcelWorksheet.Range['W'+IntToStr(linha), 'W'+IntToStr(linha)].MergeCells = True) or
           (ExcelWorksheet.Range['W'+IntToStr(linha), 'W'+IntToStr(linha)].Text <> '') then
        begin
          if (SeqPallet > 0) then
             imp_ped_cli_prodseq_pallet.AsInteger := SeqPallet
          else
            imp_ped_cli_prodseq_pallet.Clear;
        end
        else imp_ped_cli_prodseq_pallet.Clear;
        { salvar informações dos pallets nos items importados }
        imp_ped_cli_prodqtd_pallet.AsInteger := qtd_pallet;
        imp_ped_cli_prodcomprimento_pallet.AsFloat := comprimento_pallet;
        imp_ped_cli_prodlargura_pallet.AsFloat := largura_pallet;
        imp_ped_cli_prodaltura_pallet.AsFloat := altura_pallet;
        imp_ped_cli_prodvolume_pallet.AsFloat := volume_pallet;
        imp_ped_cli_prodpes_pallet_vazio.AsFloat := peso_pallet_vazio;
        imp_ped_cli_prodpes_bruto_pallet.AsFloat := pes_bruto_pallet;
        imp_ped_cli_prod.Post;
     end else
     begin
        imp_ped_cli_prod.Edit;
        imp_ped_cli_prodseq_pallet.Clear;
        imp_ped_cli_prodqtd_pallet.Clear;
        imp_ped_cli_prodpes_bruto_pallet.Clear;
        imp_ped_cli_prodpes_liquido_pallet.Clear;
        imp_ped_cli_prodcomprimento_pallet.Clear;
        imp_ped_cli_prodlargura_pallet.Clear;
        imp_ped_cli_prodaltura_pallet.Clear;
        imp_ped_cli_prodvolume_pallet.Clear;
        imp_ped_cli_prodpes_pallet_vazio.Clear;
        imp_ped_cli_prod.Post;
     end; // pallets

    Inc(Linha);
    Inc(Seq);
  end;
  end;  { fim da leitura da planilha }

  imp_ped_cli_prod.Close;
  { atualizar totais no cabeçalho do pedido }
  if imp_ped_cli.Active then
  begin
    imp_ped_cli.Edit;
    imp_ped_cli.Post;
  end;
  if IBDataSet.Active then
  begin
    IBDataSet.Edit;
    IBDataSet.Post;
  end;

  { finalizar progress bar }
  btnImportar.Enabled := True;
  Ani.Terminate;

  Validar(Sender);

  with IBDataSet do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('select * from "imp_ped_cli"                ');
    SelectSQL.Add('where "cod_empresa" = :cod_empresa         ');
    SelectSQL.Add('  and "num_pedido_cli" = :num_pedido_cli   ');
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido_cli').AsString := gNumPedido;
    Open;
    Refresh;
  end;
  IBDataSetAfterScroll(IBDataSet);

  { Salvar a planilha }
  ExcelApplication.ActiveWorkbook.SaveAs(FileListaEsp,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  s := FileName;
  FecharExcel(False);
  FileName := s;

  { mostra grade de produtos com erros ou sem erros }
  if Not(IBDataSetGradeErros.IsEmpty) then
  begin
    PageControl1.ActivePageIndex := 1;
    btnPedido.Enabled := False;
    Application.MessageBox('Houve erros na importação.'+#13#10+'A planilha será mostrada na tela. '+#13#10+
    'As células com erros estão na cor vermelha.'+#13#10 +
    'Aguarde a geração e abertura da planilha Excel.'   , 'Erro', MB_ICONERROR+MB_OK);
    { se houver erros, gerar e abrir a planilha }
    DeleteFile(FileListaEsp);
    Sleep(5000);   // tempo para garantir a gravação da planilha no HD
    actGerarExcelExecute(nil);
  end else
  begin
    PageControl1.ActivePageIndex := 0;          
    btnPedido.Enabled := True;
    //Application.MessageBox('A importação foi efetuada sem erros.'+#13#10+'Aguarde a geração e abertura da planilha Excel.', 'Informação', MB_ICONINFORMATION+MB_OK);
    Application.MessageBox('A importação foi efetuada sem erros.', 'Informação', MB_ICONINFORMATION+MB_OK);
  end;
end;

procedure TfrmImportarPedidoCliente.actConfAllCaixasExecute(
  Sender: TObject);
begin
  inherited;
  with IBDataSetGradeErros do
  begin
    First;
    while Not(EOF) do
    begin
      Edit;
      FieldByName('ies_situacao').AsString := 'C';
      Post;
      Next;
    end;
    First;
  end;
  Validar(Sender);
end;

procedure TfrmImportarPedidoCliente.GerarModeloProdutos(Flag: Boolean);
Var
  s : String;
  Linha, xlCorPallet : integer;
begin
  { Gerar a planilha de alteração de itens }
  { abrir o pedido importado }
  with Produtos do
  begin
    Close;
    { Gera modelo de planilha excel de importação, com ou sem produtos do cliente }
    if (Flag) then
    begin
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('cod_cliente').AsString := trim(Clientescod_cliente.AsString);
      ParamByName('cod_fornecedor').AsInteger := Fornecedorescod_fornecedor.AsInteger;
    end else
    begin
      ParamByName('cod_empresa').Clear;
      ParamByName('cod_cliente').Clear;
      ParamByName('cod_fornecedor').Clear;
    end;
    Open;
    First;

    ExcelWorksheet.Range['A1','AH1'].Interior.ColorIndex := 44;

    with ExcelWorksheet.Range['A1','C1'] do
    begin
      Font.Size := 10;
      Value := 'IMPORTAÇÃO DO PEDIDO';
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;                               
      Font.Bold := True;
      MergeCells := True;
      Interior.ColorIndex := 44;
    end;

    with ExcelWorksheet.Range['A2','J2'] do
    begin
      Font.Size := 8;
      Value := 'PEDIDO: ' + trim(IBDataSetnum_pedido_cli.AsString) + '    CLIENTE: ' + trim(IBDataSetcod_cliente.AsString) + '     FORNECEDOR: ' + trim(IBDataSetlkpFornecedor.AsString);
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      MergeCells := True;
      Characters[01,19].Font.Bold := True;
      Interior.ColorIndex := 44;
    end;

    Linha := 4;

    { Leitura dos Produtos do Cliente }
    while Not(EOF) do
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
        Value := FmtProdutoCliente(IBDataSetcod_cliente.AsString, Produtoscod_produto.AsString).fmtProduto;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { C - Descrição do Produto em Português }
      with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := ProdutoDet(produtoscod_produto.AsString, IBDataSetCod_Cliente.AsString, IBDataSetcod_fornecedor.AsInteger).Portugues;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;
      { D - QUANTIDADE PEDIDO }
      with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        NumberFormat := '#.##0,0';
      end;
      { E - PREÇO REAL }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 35;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        NumberFormat := '#.##0,000000';
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
      end;
      { G - COMENTÁRIO PREÇO REAL }
      with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 35;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
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
        NumberFormat := '#.##0,000000';
      end;
      { I - TOTAL ESPECIAL }
      with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 7;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
        NumberFormat := '#.##0,00';
      end;
      { J - COMENTÁRIO PREÇO ESPECIAL }
      with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Interior.ColorIndex := 7;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Rows.RowHeight := 12.75;
      end;

      { Packages Informations }

      { Dados da Embalagem Padrão }
      with emb_padrao do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('cod_produto').Value := Produtoscod_produto.AsString;
        ParamByName('qtd_produto').Value := 1; // Quantidade somente para obter os dados padrões do produto
        Open;
      end;


      { K - TOTAL VOLUME }
      with ExcelWorksheet.Range['K'+ inttostr(linha),'L'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
      end;
      { L - TOTAL PESO BRUTO }
      with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
      end;
      { M - TOTAL PESO LÍQUIDO }
      with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
      begin
        NumberFormat := '##.##0';
      end;
      { N - PACKINGS }                                                                                
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
      end;
      { O - SPECIAL CARTONS }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        NumberFormat := '##.##0';
      end;
      { P - QUANTITY OF UNITS INSIDE THE PACKING }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := emb_padraoqtd_master_box.AsFloat;
      end;
      { Q - Peso Bruto de 1 Caixa - Gross Weight 1 Packing }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Value := emb_padraopes_bruto_caixa.AsFloat;
      end;
      { R - Volume }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
      end;
      { S - Comprimento }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := emb_padraocomprimento.AsFloat;
      end;
      { T - Largura }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := emb_padraolargura.AsFloat;
      end;
      { U - Altura }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := emb_padraoaltura.AsFloat;
      end;
      { V - NET WEIGHT OF THE PRODUCT (Kg) }
      with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
      begin
        NumberFormat := '##0,0000';
        Value := Produtospes_unitario.AsFloat;
      end;
      { Colunas para PALLETS }
      if (IBDataSeties_pallets.AsString = 'S') then
      begin
        { W - QUANTITY OF PALLETS }
        with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
        end;
        { X - PESO PALLET VAZIO }
        with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
        begin
         NumberFormat := '#0,00';
        end;
        { Y - PALLET GROSS WEIGHT }
        with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,00';
        end;
        { Z - PALLET NET WEIGHT }
        with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,00';
        end;
        { AA - COMPRIMENTO DO PALLET }
        with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
        end;
        { AB - LARGURA DO PALLET }
        with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
        end;
        { AC - ALTURA DO PALLET }
        with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0';
        end;
        { AD - PALLET VOLUME }
        with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
        begin
         NumberFormat := '#.##0,000';
         FormulaR1C1 := '=ROUND(ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)*RC[-7],3)';
        end;
      end;
      Next;
      Inc(Linha);
    end;
  end;
  { Bordas na área ocupada da planilha }
  with ExcelWorkSheet.Range['A4', 'AH' + IntToStr(Linha)] do
  begin
    with Borders[xlInsideVertical] do
    begin
       LineStyle := xlContinuous;
       Weight := xlThin;
       ColorIndex := xlAutomatic;
    end;
    if (Linha > 4) then
    begin
       with Borders[xlInsideHorizontal] do
       begin
          LineStyle := xlContinuous;
          Weight := xlThin;
          ColorIndex := xlAutomatic;
       end;
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
   { congelar painéis }
   ExcelWorkSheet.Range['D4','D4'].Select;
   ExcelApplication.ActiveWindow.FreezePanes := True;
   ExcelWorksheet.Range['X1','X1'].EntireColumn.Hidden := True;   
end;

procedure TfrmImportarPedidoCliente.IBDataSetnum_pedido_cliValidate(
  Sender: TField);
begin
  inherited;
  if dmCOM.ChecarPedido(trim(IBDataSetnum_pedido_cli.AsString), 'I') then
  begin
     Application.MessageBox('Já existe um Pedido Importado com esse número.', 'Erro', MB_OK+MB_ICONERROR);
     Abort;
  end;
end;

procedure TfrmImportarPedidoCliente.fr_FmNavigator1acPostExecute(
  Sender: TObject);
begin
  inherited;
  if TDataSetDelete(Sender).DataSource = dsIBDataSet then
     IBDataSet.Post;

end;

procedure TfrmImportarPedidoCliente.FabricantesAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Last;
  DataSet.First;
end;


end.

