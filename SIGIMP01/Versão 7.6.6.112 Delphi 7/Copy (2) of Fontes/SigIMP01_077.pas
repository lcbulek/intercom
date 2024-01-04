unit SigIMP01_077;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls, ComCtrls,
  ToolWin, Buttons, ActnList, IBSQL, DBCtrls, ExtCtrls, Mask, Math,
  IBStoredProc, JvDBGrid, JvComponent, JvDBLookup, Excel2000, OleServer,
  AniThread, JvxCheckListBox, JvExControls, JvExDBGrids, JvDBUltimGrid,
  DBGridCheck, JvExStdCtrls, JvDBCombobox, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, Menus;

type
  Tnf = record
          Numero : Integer;
          Serie  : String;
        end;

  TfrmProdList = class(TForm)
    ActionList1: TActionList;
    Prod_List: TIBDataSet;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;                                           
    OpenDialog: TOpenDialog;
    QrAux: TIBQuery;
    actFaturar: TAction;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialies_modelo: TIntegerField;
    parametro_comercialmod_romaneio: TBlobField;
    actAbrir: TAction;
    parametro_comercialcod_tip_embarque: TSmallintField;
    parametro_comercialdir_planilhas: TIBStringField;
    ProdutoEmb: TIBDataSet;
    EmbalagemEmb: TIBDataSet;
    Embalagem_Hist: TIBDataSet;
    Panel1: TPanel;
    Clientes: TIBQuery;
    ds_Clientes: TDataSource;
    Fornecedores: TIBQuery;
    ds_Fornecedores: TDataSource;
    Label1: TLabel;
    dbcClientes: TJvDBLookupCombo;
    Label9: TLabel;
    dbcFornecedores: TJvDBLookupCombo;
    Panel2: TPanel;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    pedido_produto: TIBDataSet;
    panGauge: TPanel;
    parametro_comercialmod_ship_list: TBlobField;
    parametro_comercialdias_inspecao: TSmallintField;
    ProxSequencia: TIBQuery;
    ProxSequenciaprox_sequencia: TLargeintField;
    spr_calc_pedido: TIBStoredProc;
    parametro_comercialult_num_prod_list: TIntegerField;
    prod_list_itens: TIBDataSet;
    spr_excluir_prl: TIBStoredProc;
    ItensProdList: TIBQuery;
    spr_check_result: TIBQuery;
    spr_check_resultFLAG: TIBStringField;
    dsFaturasNovasPrl: TDataSource;
    spr_romanear: TIBStoredProc;
    qryRomaneio: TIBQuery;
    qryRomaneionum_romaneio: TIntegerField;
    qryRomaneioies_situacao: TIBStringField;
    spr_faturar: TIBStoredProc;
    FaturasNovasPrl: TIBDataSet;
    FaturasNovasPrlnum_fatura: TIBStringField;
    FaturasNovasPrlvlr_liquido: TIBBCDField;
    FaturasNovasPrlcal_vlr_liquido: TIBBCDField;
    FaturasNovasPrlvlr_liquido_esp: TIBBCDField;
    FaturasNovasPrlcal_vlr_liquido_esp: TIBBCDField;
    FaturasNovasPrlvol_total: TIBBCDField;
    FaturasNovasPrlcal_vol_total: TIBBCDField;
    FaturasNovasPrlpes_bruto: TIBBCDField;
    FaturasNovasPrlcal_pes_bruto: TIBBCDField;
    FaturasNovasPrlpes_liquido: TIBBCDField;
    FaturasNovasPrlcal_pes_liquido: TIBBCDField;
    FaturasNovasPrlqtd_caixas: TLargeintField;
    FaturasNovasPrlcal_qtd_caixas: TLargeintField;
    FaturasNovasPrlies_faturar: TIBStringField;
    FaturasNovasPrlFlag: TStringField;
    sqlMarcarFaturadas: TIBSQL;
    spr_additens_prodlist: TIBStoredProc;
    spr_vlr_esp_prodlist: TIBStoredProc;
    spr_pesos_pallets_prodlist: TIBStoredProc;
    pedido_produtocod_empresa: TSmallintField;
    pedido_produtonum_pedido: TLargeintField;
    pedido_produtonum_sequencia: TSmallintField;
    pedido_produtoqtd_produto: TIBBCDField;
    pedido_produtoqtd_cancelada: TIBBCDField;
    pedido_produtoqtd_romaneada: TIBBCDField;
    pedido_produtoqtd_faturada: TIBBCDField;
    pedido_produtoqtd_pendente: TIBBCDField;
    pedido_produtoqtd_saldo: TIBBCDField;
    pedido_produtoqtd_export_box: TIntegerField;
    pedido_produtovol_caixas: TIBBCDField;
    pedido_produtopes_liquido: TIBBCDField;
    pedido_produtopes_bruto: TIBBCDField;
    pedido_produtoies_caixa_fechada: TIBStringField;
    pedido_produtovlr_unitario: TFloatField;
    pedido_produtovlr_unitario_esp: TFloatField;
    pedido_produtovlr_liquido: TIBBCDField;
    pedido_produtovlr_liquido_esp: TIBBCDField;
    pedido_produtoies_result_inspecao: TIBStringField;
    pedido_produtotxt_status_producao: TMemoField;
    pedido_produtodat_inspecao: TDateField;
    pedido_produtoobs_preco: TMemoField;
    spr_additens_pedido: TIBStoredProc;
    pedido_produtoqtd_romanear: TIBBCDField;
    prod_list_itenscod_empresa: TSmallintField;
    prod_list_itensnum_prod_list: TIntegerField;
    prod_list_itensnum_sequencia: TIntegerField;
    prod_list_itensnum_fatura: TIBStringField;
    prod_list_itensnum_pedido: TLargeintField;
    prod_list_itensnum_seq_pedido: TSmallintField;
    prod_list_itensnum_pedido_for: TIBStringField;
    prod_list_itensnum_pedido_cli: TIBStringField;
    prod_list_itensdat_emissao: TDateTimeField;
    prod_list_itenscod_produto: TIBStringField;
    prod_list_itenstxt_status_producao: TMemoField;
    prod_list_itensdat_inspecao: TDateField;
    prod_list_itensies_result_inspecao: TIBStringField;
    prod_list_itensqtd_romanear: TIBBCDField;
    prod_list_itensqtd_confirmada: TIBBCDField;
    prod_list_itensqtd_pendente: TIBBCDField;
    prod_list_itensqtd_embarcada: TIBBCDField;
    prod_list_itenspreco_real: TFloatField;
    prod_list_itensvlr_liquido: TIBBCDField;
    prod_list_itenspreco_esp: TFloatField;
    prod_list_itensvlr_liquido_esp: TIBBCDField;
    prod_list_itensvol_total: TIBBCDField;
    prod_list_itenspes_bruto: TIBBCDField;
    prod_list_itenspes_liquido: TIBBCDField;
    prod_list_itensqtd_caixas: TIntegerField;
    prod_list_itenspes_bruto_cx: TFloatField;
    prod_list_itensaltura_cx: TIBBCDField;
    prod_list_itenslargura_cx: TIBBCDField;
    prod_list_itenscomprimento_cx: TIBBCDField;
    prod_list_itensvolume_caixa: TIBBCDField;
    prod_list_itensies_caixa_fechada: TIBStringField;
    prod_list_itensseq_pallet: TIntegerField;
    prod_list_itensqtd_pallet: TIntegerField;
    prod_list_itenspes_bruto_pallet: TIBBCDField;
    prod_list_itenspes_liquido_pallet: TIBBCDField;
    prod_list_itenscomprimento_pallet: TIBBCDField;
    prod_list_itenslargura_pallet: TIBBCDField;
    prod_list_itensaltura_pallet: TIBBCDField;
    prod_list_itensvolume_pallet: TIBBCDField;
    prod_list_itensies_emb_esp: TIBStringField;
    prod_list_itensseq_emb_esp: TIntegerField;
    prod_list_itensies_erros: TIntegerField;
    prod_list_itensies_cadastro: TIBStringField;
    prod_list_itenscal_preco_real: TFloatField;
    prod_list_itenscal_vlr_liquido: TIBBCDField;
    prod_list_itenscal_preco_esp: TFloatField;
    prod_list_itenscal_vlr_liquido_esp: TIBBCDField;
    prod_list_itenscal_vol_total: TIBBCDField;
    prod_list_itenscal_pes_bruto: TIBBCDField;
    prod_list_itenscal_qtd_caixas: TIntegerField;
    prod_list_itenscal_volume_caixa: TIBBCDField;
    ProdListEmbEsp: TIBQuery;
    ProdListPallets: TIBQuery;
    Saldos: TIBQuery;
    Saldosqtd_confirmada: TIBBCDField;
    Saldosqtd_embarcada: TIBBCDField;
    Saldosqtd_pendente: TIBBCDField;
    Saldosqtd_romanear: TIBBCDField;
    Saldosqtd_saldo: TIBBCDField;
    spr_agrupar_prod_list: TIBStoredProc;
    Faturas: TIBQuery;
    Faturasnum_nota_fiscal: TIntegerField;
    Faturasserie: TIBStringField;
    Faturasdat_embarque: TDateField;
    prod_list_itensies_sit_fat: TIBStringField;
    FaturasTodasPrl: TIBQuery;
    FaturasTodasPrlnum_fatura: TIBStringField;
    FaturasTodasPrlvlr_liquido: TIBBCDField;
    FaturasTodasPrlcal_vlr_liquido: TIBBCDField;
    FaturasTodasPrlvlr_liquido_esp: TIBBCDField;
    FaturasTodasPrlcal_vlr_liquido_esp: TIBBCDField;
    FaturasTodasPrlvol_total: TIBBCDField;
    FaturasTodasPrlcal_vol_total: TIBBCDField;
    FaturasTodasPrlpes_bruto: TIBBCDField;
    FaturasTodasPrlcal_pes_bruto: TIBBCDField;
    FaturasTodasPrlpes_liquido: TIBBCDField;
    FaturasTodasPrlcal_pes_liquido: TIBBCDField;
    FaturasTodasPrlqtd_caixas: TLargeintField;
    FaturasTodasPrlcal_qtd_caixas: TLargeintField;
    qryNotaFiscal: TIBQuery;
    qryNotaFiscalnum_nota_fiscal: TIntegerField;
    prod_list_itensnum_nota_fiscal: TIntegerField;
    prod_list_itensnum_seq_nf: TSmallintField;
    qryNotaFiscalProdutos: TIBQuery;
    Prod_Listcod_empresa: TSmallintField;
    Prod_Listcod_cliente: TIBStringField;
    Prod_Listcod_fornecedor: TSmallintField;
    Prod_Listnum_prod_list: TIntegerField;
    Prod_Listies_gerar: TIBStringField;
    qryNumProdList: TIBQuery;
    qryNumProdListnum_prod_list: TIntegerField;
    actGerar: TAction;
    ProdListGrupos: TIBQuery;
    spr_itensped_prodlist: TIBStoredProc;
    sqlDesagrupar: TIBSQL;
    Prod_Listies_pallets: TIBStringField;
    Produto_Fatura: TIBQuery;
    Produto_Faturaqtd_produto: TIBBCDField;
    spr_prodlist_fatura: TIBStoredProc;
    Fornecedorescod_fornecedor: TSmallintField;
    Fornecedoresraz_social: TIBStringField;
    Clientescod_cliente: TIBStringField;
    Clientesnom_cliente_reduz: TIBStringField;
    Fornecedoresraz_social_reduz: TIBStringField;
    pgProdList: TPageControl;
    tsItensProdList: TTabSheet;
    tsFaturas: TTabSheet;
    Label2: TLabel;
    dbgFaturas: TDBGridCheck;
    ds_prod_list_itens: TDataSource;
    dbgProdListItens: TJvDBUltimGrid;
    pcDados: TPageControl;
    tsItems: TTabSheet;
    tsCartons: TTabSheet;
    prod_list_itenscalden_produto_ing: TStringField;
    prod_list_itensun_med: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    dbeqtd_romanear: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    DBEdit21: TDBEdit;
    dbcCadastro: TDBCheckBox;
    tsPallets: TTabSheet;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    emb_esp: TIBDataSet;
    ds_emb_esp: TDataSource;
    emb_espcod_empresa: TSmallintField;
    emb_espnum_prod_list: TIntegerField;
    emb_espnum_sequencia: TIntegerField;
    emb_espseq_emb_esp: TIntegerField;
    emb_espies_emb_esp: TIBStringField;
    emb_espqtd_caixas: TIntegerField;
    emb_esppes_bruto_cx: TFloatField;
    emb_esppes_bruto: TIBBCDField;
    emb_espaltura_cx: TIBBCDField;
    emb_esplargura_cx: TIBBCDField;
    emb_espcomprimento_cx: TIBBCDField;
    emb_espvolume_caixa: TIBBCDField;
    emb_espvol_total: TIBBCDField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dbgEmbEsp: TJvDBUltimGrid;
    Panel3: TPanel;
    Panel5: TPanel;
    Label36: TLabel;
    dbeQtdCaixas: TDBEdit;
    Label37: TLabel;
    DBEdit31: TDBEdit;
    Label38: TLabel;
    DBEdit32: TDBEdit;
    Label40: TLabel;
    DBEdit34: TDBEdit;
    Label41: TLabel;
    DBEdit35: TDBEdit;
    Label42: TLabel;
    DBEdit36: TDBEdit;
    Label43: TLabel;
    DBEdit37: TDBEdit;
    Label44: TLabel;
    DBEdit38: TDBEdit;
    emb_esp_itens: TIBDataSet;
    ds_emb_esp_itens: TDataSource;
    emb_espnum_fatura: TIBStringField;
    Label45: TLabel;
    DBEdit39: TDBEdit;
    emb_esp_itenscod_empresa: TSmallintField;
    emb_esp_itensnum_prod_list: TIntegerField;
    emb_esp_itensnum_sequencia: TIntegerField;
    emb_esp_itensnum_pedido_for: TIBStringField;
    emb_esp_itensnum_pedido_cli: TIBStringField;
    emb_esp_itenscod_produto: TIBStringField;
    emb_esp_itensqtd_romanear: TIBBCDField;
    dbgEmbEspItens: TJvDBUltimGrid;
    emb_esp_itenscal_den_produto_ing: TStringField;
    emb_esp_itensun_med: TStringField;
    Panel7: TPanel;
    prod_list_itenscal_result_inspecao: TStringField;
    spr_additem_pedido: TIBStoredProc;
    spr_additem_prodlist: TIBStoredProc;
    DBMemo2: TDBMemo;
    DBCheckBox2: TDBCheckBox;
    prod_list_itensies_pallet: TIBStringField;
    DBCheckBox3: TDBCheckBox;
    prod_list_itensdat_upd_etd: TDateField;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    Label46: TLabel;
    prod_list_itensdat_ini_producao: TDateField;
    spr_calc_prodlist: TIBStoredProc;
    btnAddEmbEsp: TBitBtn;
    btnDelEmbEsp: TBitBtn;
    btnConfirmEmbEsp: TBitBtn;
    btnCancelEmbEsp: TBitBtn;
    btnConfirm: TBitBtn;
    btnCancel: TBitBtn;
    emb_esp_itenspes_liquido: TIBBCDField;
    ProxSeqEmbEsp: TIBQuery;
    ProxSeqEmbEspseq_emb_esp: TLargeintField;
    emb_esp_itensies_emb_esp: TIBStringField;
    emb_esp_itensseq_emb_esp: TIntegerField;
    emb_esp_itensqtd_caixas: TIntegerField;
    emb_esp_itenspes_bruto_cx: TFloatField;
    emb_esp_itenspes_bruto: TIBBCDField;
    emb_esp_itensaltura_cx: TIBBCDField;
    emb_esp_itenslargura_cx: TIBBCDField;
    emb_esp_itenscomprimento_cx: TIBBCDField;
    emb_esp_itensvolume_caixa: TIBBCDField;
    emb_esp_itensvol_total: TIBBCDField;
    emb_esp_itensnum_fatura: TIBStringField;
    btnAddEmbEspItem: TBitBtn;
    btnDelEmbEspItem: TBitBtn;
    btnConfirmEmbEspItem: TBitBtn;
    btnCancelEmbEspItem: TBitBtn;
    EmbalagemEmbcod_empresa: TSmallintField;
    EmbalagemEmbcod_produto: TIBStringField;
    EmbalagemEmbpeso_unitario: TFloatField;
    EmbalagemEmbaltura: TIBBCDField;
    EmbalagemEmblargura: TIBBCDField;
    EmbalagemEmbprofundidade: TIBBCDField;
    EmbalagemEmbvolume: TIBBCDField;
    EmbalagemEmbarea: TIBBCDField;
    EmbalagemEmbqtd_master: TIBBCDField;
    EmbalagemEmbqtd_inner: TIBBCDField;
    EmbalagemEmbobservacao: TIBStringField;
    EmbalagemEmbdat_cadastro: TDateTimeField;
    EmbalagemEmbdat_cad_dimensoes: TDateField;
    EmbalagemEmbdat_cad_peso: TDateField;
    EmbalagemEmbdat_cad_master: TDateField;
    EmbalagemEmbdat_cad_inner: TDateField;
    EmbalagemEmbobs_caixas: TIBStringField;
    Embalagem_Histsequencia: TIntegerField;
    Embalagem_Histcod_empresa: TSmallintField;
    Embalagem_Histcod_produto: TIBStringField;
    Embalagem_Histpeso_unitario: TFloatField;
    Embalagem_Histaltura: TIBBCDField;
    Embalagem_Histlargura: TIBBCDField;
    Embalagem_Histprofundidade: TIBBCDField;
    Embalagem_Histvolume: TIBBCDField;
    Embalagem_Histarea: TIBBCDField;
    Embalagem_Histqtd_master: TIBBCDField;
    Embalagem_Histqtd_inner: TIBBCDField;
    Embalagem_Histobservacao: TIBStringField;
    Embalagem_Histdat_cadastro: TDateTimeField;
    Embalagem_Histdat_cad_dimensoes: TDateField;
    Embalagem_Histdat_cad_peso: TDateField;
    Embalagem_Histdat_cad_master: TDateField;
    Embalagem_Histdat_cad_inner: TDateField;
    Embalagem_Histobs_caixas: TIBStringField;
    prod_list_itensun_master: TIBBCDField;
    pedido_produtoqtd_inner_box: TIBBCDField;
    prod_list_itensgrupo: TSmallintField;
    prod_list_itensseq_grupo: TSmallintField;
    prod_list_itensetd_factory: TDateField;
    prod_list_itenspes_unitario: TFloatField;
    prod_list_itenscal_pes_liquido: TIBBCDField;
    prod_list_itenspes_pallet_vazio: TFloatField;
    btnSave: TBitBtn;
    btnOpen: TBitBtn;
    emb_esp_itensies_caixa_fechada: TIBStringField;
    rgPallets: TDBRadioGroup;
    ds_prod_list: TDataSource;
    Prod_Listies_plan_default: TSmallintField;
    rgPlanilha: TDBRadioGroup;
    ProdutoEmbcod_empresa: TSmallintField;
    ProdutoEmbcod_produto: TIBStringField;
    ProdutoEmbpes_unitario: TFloatField;
    ProdutoEmbobs_peso_unitario: TIBStringField;
    ProdutoEmbdat_cad_peso: TDateField;
    EmbalagemEmbpes_bruto_cx: TFloatField;
    Embalagem_Histpes_bruto_cx: TFloatField;
    GroupBox3: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit23: TDBEdit;
    dbeUn_Master: TDBEdit;
    dbePes_Bruto_Cx: TDBEdit;
    DBEdit25: TDBEdit;
    dbeComprimento_Cx: TDBEdit;
    dbeLargura_Cx: TDBEdit;
    dbeAltura_Cx: TDBEdit;
    dbePes_unitario: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function ProcuraCliente(CodCliente: String): boolean;
    function ProcuraFornecedor(NomReduz: String): Integer;
    procedure FormCreate(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure Prod_ListAfterPost(DataSet: TDataSet);
    procedure ProdutoEmbAfterPost(DataSet: TDataSet);
    procedure EmbalagemEmbAfterPost(DataSet: TDataSet);
    procedure EmbalagemEmbBeforePost(DataSet: TDataSet);
    procedure Embalagem_HistAfterPost(DataSet: TDataSet);
    procedure Embalagem_HistNewRecord(DataSet: TDataSet);
    procedure ProdutoEmbAfterOpen(DataSet: TDataSet);
    procedure dbcClientesChange(Sender: TObject);
    procedure pedido_produtoAfterPost(DataSet: TDataSet);
    procedure prod_list_itensAfterPost(DataSet: TDataSet);
    procedure prod_list_itensAfterDelete(DataSet: TDataSet);
    function PrecoPedidoProduto(NumPedido: Int64; NumSeq: Integer): String;
    procedure FaturasNovasPrlCalcFields(DataSet: TDataSet);
    procedure dbcFornecedoresChange(Sender: TObject);

    function ProxNumProdList: Integer;
    function GetNumProdList(Cliente: String; Fornecedor: Integer): Integer;
    function GetSitFatura(NumFatura: String): String;
    function ExisteItemNf(NumFatura: String; SeqItem: Integer): Boolean;
    function GetDirBaseCliente(Criar: Boolean = False): String;
    function GetDirBaseFornecedor(Criar: Boolean = False): String;
    function GetDirBaseETD(Criar: Boolean = False): String;

    procedure AbrirExcel(Var Caminho: String);
    procedure FecharExcel(FecharTabelas: boolean = True);
    Procedure AbrirPlanilha(Var Caminho: String);

    procedure actFaturarExecute(Sender: TObject);
    procedure ExcluirProdList;

    procedure LerHeader;

    procedure AtualizarPlanilhaCliente(Gerar: Boolean = False);
    procedure AtualizarPlanilhaFornecedor(Gerar: Boolean = False);
    procedure AtualizarPlanilhaETD(Gerar: Boolean = False);

    procedure AtualizarItensExcel(DataSet: TDataSet; Var pLinha: Integer; pNumFatura: String; fGrupo: Boolean = True);
    procedure actGerarExecute(Sender: TObject);

    procedure AtualizarProductionList;
    procedure prod_list_itensCalcFields(DataSet: TDataSet);
    procedure prod_list_itensqtd_romanearValidate(Sender: TField);
    procedure emb_espAfterScroll(DataSet: TDataSet);
    procedure emb_espAfterPost(DataSet: TDataSet);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure emb_esp_itensAfterPost(DataSet: TDataSet);
    procedure prod_list_itenscomprimento_cxValidate(Sender: TField);
    procedure btnAddEmbEspClick(Sender: TObject);
    procedure emb_espqtd_caixasValidate(Sender: TField);
    procedure btnDelEmbEspClick(Sender: TObject);
    procedure btnConfirmEmbEspClick(Sender: TObject);
    procedure btnCancelEmbEspClick(Sender: TObject);
    procedure btnAddEmbEspItemClick(Sender: TObject);
    procedure btnDelEmbEspItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    procedure AddItemEmbEsp(DataSet: TDataSet; Grade: TDBGrid; SeqEmbEsp: Integer; Caixa: boolean);
  public
    { Public declarations }
    NumProdList, Numromaneio: Integer;
  end;

var
  frmProdList: TfrmProdList;
  Erro : Boolean; { indica ERRO na importação da Planilha }
  FileName: String;

implementation

uses unConnection, unMenuCompl, ConvUtils, SigIMP01_045, DateUtils;

{$R *.dfm}

procedure TfrmProdList.dbcFornecedoresChange(Sender: TObject);
begin
  { Fechar Tabelas }
  Prod_List_Itens.Close;
  Prod_List.Close;

  { Selecionar Clientes a partir do Fornecedor indicado }
  with Clientes do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_fornecedor').AsInteger := Fornecedorescod_fornecedor.AsInteger;
    Open;
  end;
  FileName := '';
  dbcClientes.ClearValue;
end;

procedure TfrmProdList.dbcClientesChange(Sender: TObject);
begin
  { Atualizar e Abrir a Production List Itens, para Edição, correspondente ao Fornecedor/Cliente indicados }
  AtualizarProductionList;
  { Abrir Production List Itens }
  with prod_list_itens do
  begin                                                                                             
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    Open;
  end;
  with emb_esp do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := Prod_Listnum_prod_list.AsInteger;
    Open;
  end;
  with emb_esp_itens do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := Prod_Listnum_prod_list.AsInteger;
    ParamByName('seq_emb_esp').Value := emb_espseq_emb_esp.AsInteger;
    Open;
  end;
  pgProdList.TabIndex := 0;
  pcDados.TabIndex := 0;
  dbeqtd_romanear.SetFocus;
end;


procedure TfrmProdList.FormClose(Sender: TObject;
  var Action: TCloseAction);                                                           
begin
  pcDados.ActivePage := tsItems;
  btnConfirmClick(nil);
  Clientes.Close;
  Fornecedores.Close;
  parametro_comercial.Close;
  Action := caFree;
  frmProdList := nil;
end;

procedure TfrmProdList.ExcluirProdList;
begin
  { Excluir Production List e Embalagens especiais }
  with spr_excluir_prl do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;                   
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;
end;

function TfrmProdList.ProxNumProdList: Integer;
begin
  with qryNumProdList do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    Open;
    if FieldByName('num_prod_list').IsNull then Result := 1          
    else Result := FieldByName('num_prod_list').AsInteger + 1;
  end;
end;

function TfrmProdList.GetNumProdList(Cliente: String; Fornecedor: Integer): Integer;
begin
  { Retornar o Número da Prod List do Cliente/Fornecedor }
  with Prod_List do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_cliente').Value := Clientescod_cliente.AsString;
    ParamByName('cod_fornecedor').Value := Fornecedorescod_fornecedor.AsInteger;
    Open;
    if (IsEmpty) then  { Se Prod_List não existe, criar }
    begin
      Append;
      FieldByName('cod_empresa').Value := vgCod_Empresa;
      FieldByName('cod_cliente').Value := Clientescod_cliente.AsString;
      FieldByName('cod_fornecedor').Value := Fornecedorescod_fornecedor.AsInteger;
      FieldByName('num_prod_list').Value := ProxNumProdList;
      FieldByName('ies_pallets').Value := 'N';
      FieldByName('ies_gerar').Clear; // não mais utilizado na versão manual
      FieldByName('ies_plan_default').Value := 1;
      Post;
    end;
    Result := FieldByName('num_prod_list').AsInteger;
  end;
end;


function TfrmProdList.GetSitFatura(NumFatura: String): String;
begin
  { Return: Null - não informada, N - não encontrou, F - Faturada, E - Embarcada }

  if (trim(NumFatura) = '') then { fatura não informada no Excel}
  begin
    Result := '';
    Exit;
  end;

  with Faturas do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_fatura').Value := NumFatura;
    Open;

    if IsEmpty then
    begin
      Result := 'N'; { Fatura Não encontrada }
      Close;
      Exit;
    end;

    if Not(IsEmpty) then
    begin
      if FieldByName('dat_embarque').IsNull then Result := 'F'  { Encontrou Fatura Faturada (gerada) }
                                            else Result := 'E'; { Encontrou Fatura Embarcada }
    end;
    Close;
  end;
end;

function TfrmProdList.ExisteItemNf(NumFatura: String; SeqItem: Integer): Boolean;
begin
  with qryNotaFiscalProdutos do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_fatura').Value := NumFatura;
    ParamByName('num_sequencia').Value := SeqItem;
    Open;
    Result := Not(IsEmpty);
    Close;
  end;
end;

function TfrmProdList.ProcuraCliente(CodCliente: String): boolean;
begin
  with QrAux do
  begin
    Close;
    SQL.Text := 'select "cod_cliente"               '+
                '  from "cliente"                   '+
                ' where "cod_cliente" = :cod_cliente'+
                '   and "ies_situacao" = ''A''      ';
    ParamByName('cod_cliente').AsString := CodCliente;
    Open;
    Result := Not(IsEmpty);
    Close;
  end;
end;

function TfrmProdList.ProcuraFornecedor(NomReduz : String): Integer;
begin
  with QrAux do
  begin
    Close;
    SQL.Text := 'select "cod_fornecedor"                       '+
                'from "fornecedor"                             '+
                'where "raz_social_reduz" = :raz_social_reduz  '+
                '  and "ies_situacao" = ''A''                  ';
    ParamByName('raz_social_reduz').AsString := NomReduz;
    Open;
    Result := FieldByName('cod_fornecedor').AsInteger;
    Close;
  end;
end;

procedure TfrmProdList.AbrirExcel(Var Caminho: String);
Var
  lcid : Cardinal;
  WkBk : _Workbook;

begin
  { Selecionar a planilha e chamar o  Excel }
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

  try
    lcid := GetUserDefaultLCID;
    WkBk := ExcelApplication.Workbooks.Open(Caminho, EmptyParam, EmptyParam, EmptyParam, EmptyParam,                      
                                                     EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                     EmptyParam, EmptyParam, EmptyParam, EmptyParam, lcid);

    ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
    ExcelWorksheet.Activate(LCID);
    ExcelApplication.Visible[lcid] := False;
    ExcelApplication.DisplayAlerts[lcid] := False;
  except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;

Procedure TfrmProdList.FecharExcel(FecharTabelas: boolean = True);
begin
  if FecharTabelas then
  begin
    if prod_list_itens.State in [dsEdit, dsInsert] then prod_list_itens.Cancel;
  end;
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;


{ Ler cabeçalho da planilha excel                                }
{ Deve estar no seguinte formato                                 }
{+--+------------+-------------+---------------------------------}
{|  |  A         |   B         | Descrição                       }
{+--+------------+-------------+---------------------------------}
{|1 | Empresa    | 1           | Código da empresa               }
{|2 | Cliente    | OVD         | Código do cliente               }
{|3 | Fornecedor | 1           | Código do Fornecedor            }
{|4 | Fatura     | 2007SM1468A |                                 }
{|5 |            |             | linha em branco                 }
{|6 |            |             | Cabeçalho                       }
{|7 |            |             | linhas dos itens                }
{+--+------------+-------------+---------------------------------}
procedure TfrmProdList.LerHeader;
Var
  gCodEmpresa, gCodFornecedor: Integer;
  gCodCliente, NomeFornecedor: String;
begin
  { C1 - Empresa }
   try
     gCodEmpresa := StrToInt(ExcelWorksheet.Range['C1','C1'].Text);
   except
     Application.MessageBox('Código da empresa inválido', 'Erro', MB_ICONERROR+MB_OK);
     FecharExcel;
     Abort;
   end;
   if (gCodEmpresa <> vgCod_Empresa) then
   begin
     Application.MessageBox('Empresa na planilha diferente da empresa logada', 'Erro', MB_ICONERROR+MB_OK);
     FecharExcel;
     Abort;
   end;

  { C2 - Cliente }
  gCodCliente := Trim(ExcelWorksheet.Range['C2','C2'].Text);
  if Not(ProcuraCliente(gCodCliente)) then
  begin
    Application.MessageBox('Cliente não encontrado', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
  if trim(gCodCliente) <> trim(clientescod_cliente.AsString) then
  begin
    Application.MessageBox('Cliente na Planilha não é o mesmo cliente do Romaneio', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;

  { C3 - Fornecedor }
  NomeFornecedor := trim(ExcelWorksheet.Range['C3','C3'].Text);
  if trim(NomeFornecedor) = '' then
  begin
    Application.MessageBox('Código do fornecedor inválido', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;

  gCodFornecedor := ProcuraFornecedor(NomeFornecedor);               

  if gCodFornecedor=0 then
  begin
    Application.MessageBox('Fornecedor não encontrado', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;

  if gCodFornecedor <> Fornecedorescod_fornecedor.AsInteger then
  begin
    Application.MessageBox('Fornecedor na Planilha não é o mesmo selecionado na tela', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;

procedure TfrmProdList.actFaturarExecute(Sender: TObject);
Var
  Seq, i, NumNf  : Integer;
  QtdRomanear : double;
  FileBackup : String;
begin
  { ROMANEAR e FATURAR }

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;

  with FaturasNovasPrl do
  begin
    First;
    while Not(EOF) do
    begin
      { Romanear e Faturar apenas os selecionados }
      if (FaturasNovasPrlies_faturar.AsString = 'S') then                  
      begin
        { Procedure para incluir o Romaneio }
        with spr_romanear do
        begin
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_prod_list').AsInteger := NumProdList;
          ParamByName('cod_cliente').AsString := trim(Clientescod_cliente.AsString);
          ParamByName('num_fatura').AsString := trim(FaturasNovasPrlnum_fatura.AsString);
          ParamByName('num_romaneio').AsInteger := 0; { gerar um novo romaneio }
          ExecProc;
          try
           Transaction.CommitRetaining;
          except
           Transaction.RollbackRetaining;
          end;
        end;

        { retornar número do Romaneio inserido pela procedure }
        with qryRomaneio do
        begin                                                          
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('cod_cliente').AsString := trim(Clientescod_cliente.AsString);
          ParamByName('num_fatura').AsString := trim(FaturasNovasPrlnum_fatura.AsString);
          Open;
          Numromaneio := FieldByName('num_romaneio').AsInteger;
          Close;
        end;

        { Procedure para Faturar }
        if (Numromaneio > 0) then
        begin
          with spr_faturar do
          begin
            ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
            ParamByName('num_romaneio').AsInteger := Numromaneio;
            ParamByName('num_nota_fiscal').AsInteger := 0; { gerar uma nova nota fiscal saida }
            ParamByName('serie').Value := '1';
            ExecProc;
            try
             Transaction.CommitRetaining;                                
            except
             Transaction.RollbackRetaining;
            end;
          end;
          { retornar num NF }
          NumNf := dmCOM.ProcuraNF(trim(FaturasNovasPrlnum_fatura.AsString), Clientescod_cliente.AsString).NumNotaFiscal;
        end;

        { Marcar Fatura como Faturada em Prod List }
        with sqlMarcarFaturadas do
        begin
          ParamByName('cod_empresa').Value := vgCod_Empresa;
          ParamByname('num_prod_list').Value := NumProdList;
          ParamByName('num_fatura').Value := FaturasNovasPrlnum_fatura.AsString;
          ParamByName('num_nota_fiscal').Value := NumNf;
          ExecQuery;
          try
           Transaction.CommitRetaining;
          except
           Transaction.RollbackRetaining;
          end;
        end;
      end;
      Next; // próxima fatura
    end;
  end;                                                          

  FaturasNovasPrl.Close;
  FaturasNovasPrl.Open;

  { Desagrupar os itens em Prod List }
  with sqlDesagrupar do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByname('num_prod_list').Value := NumProdList;
    ExecQuery;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  AtualizarPlanilhaCliente;
  AtualizarPlanilhaETD;

  { Agrupar Produtos na Production List para FORNECEDOR }
  with spr_agrupar_prod_list do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('tipo').AsString := 'F';
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;
  AtualizarPlanilhaFornecedor;

  actFaturar.Enabled := Not(FaturasNovasPrl.IsEmpty);

  Screen.Cursor := crDefault;
  Ani.Terminate;
  Application.MessageBox('Faturamento Executado', 'Informação', MB_OK+MB_ICONINFORMATION);
end;

Procedure TfrmProdList.AbrirPlanilha(Var Caminho: String);
Var
  lcid : Cardinal;
  WkBk : _Workbook;
begin
  { Selecionar a planilha e chamar o  Excel }
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

procedure TfrmProdList.FormCreate(Sender: TObject);
begin
  FileName := '';
  NumProdList := 0;
  Numromaneio := 0;
  Clientes.Open;
  Fornecedores.Open;
  { parâmetro comercial da empresa }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
  pgProdList.TabIndex := 0;
  pcDados.TabIndex := 0;
end;

procedure TfrmProdList.actAbrirExecute(Sender: TObject);
begin
  if (dbcFornecedores.Value = '0') then
  begin
    Application.MessageBox('Chose a Supplier', 'Error', MB_OK);
    dbcFornecedores.SetFocus;
    Exit;
  end;

  if (dbcClientes.Value = '0') then
  begin
    Application.MessageBox('Chose a Client', 'Error', MB_OK);
    dbcClientes.SetFocus;
    Exit;
  end;

  if (rgPlanilha.ItemIndex = -1) then
  begin
    Application.MessageBox('Chose Open Excel Supplier or Client to Open Worksheet', 'Error', MB_OK);
    rgPlanilha.SetFocus;
    Exit;
  end;

  { obter a última planilha processada }
  case (rgPlanilha.ItemIndex) of
    0 : FileName := GetDirBaseFornecedor;
    1 : FileName := GetDirBaseCliente;
    2 : FileName := GetDirBaseETD;
  end;

  FecharExcel(False);
  AbrirPlanilha(FileName);
end;

procedure TfrmProdList.Prod_ListAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

function TfrmProdList.GetDirBaseCliente(Criar: Boolean = False): String;
Var
  DIR_PLANILHAS, s, Planilha: String;
begin
  { Pasta onde será gravada a planilha de Shipping List  }
  DIR_PLANILHAS := parametro_comercialdir_planilhas.AsString;

  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para os documentos não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;

  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { diretório da Planilha, mais subpasta com código do cliente }
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(clientescod_cliente.AsString);
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\PRODUCTION LISTS CLIENT';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  s := trim(Clientescod_cliente.AsString) + '-' + trim(Fornecedoresraz_social_reduz.AsString);
  s := StringReplace(s, '/', '-', [rfReplaceAll]);
  s := StringReplace(s, '\', '-', [rfReplaceAll]);

  Planilha := DIR_PLANILHAS + '\' + trim(s) + '-PROD.LIST.CLIENT.xls';

  { não encontrou planilha no HD, gerar uma nova planilha atualizada }
  if Not(FileExists(Planilha)) or (Criar) then
  begin
    parametro_comercialmod_ship_list.SaveToFile(Planilha);
    AbrirExcel(Planilha);
    { preencher campos default e salvar planilha }
    ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
    ExcelWorksheet.Cells.Item[02, 03].Value := clientescod_cliente.AsString;
    ExcelWorksheet.Cells.Item[03, 03].Value := Fornecedoresraz_social_reduz.AsString;
    ExcelWorksheet.Cells.Item[07, 01].Value := ' ';
    ExcelApplication.ActiveWorkbook.SaveAs(Planilha,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);    
  end
  else AbrirExcel(Planilha);

  Result := Planilha;
end;

function TfrmProdList.GetDirBaseFornecedor(Criar: Boolean = False): String;
Var
  DIR_PLANILHAS, s, Planilha: String;
begin
  { Pasta onde será gravada a planilha de Shipping List  }
  DIR_PLANILHAS := parametro_comercialdir_planilhas.AsString;

  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para os documentos não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;

  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { diretório da Planilha, mais subpasta com código do cliente }
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(clientescod_cliente.AsString);
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\PRODUCTION LISTS SUPPLIER';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  s := trim(Clientescod_cliente.AsString) + '-' + trim(Fornecedoresraz_social_reduz.AsString);
  s := StringReplace(s, '/', '-', [rfReplaceAll]);
  s := StringReplace(s, '\', '-', [rfReplaceAll]);

  Planilha := DIR_PLANILHAS + '\' + trim(s) + '-PROD.LIST.SUPPLIER.xls';

  { não encontrou planilha no HD, gerar uma nova planilha atualizada }
  if Not(FileExists(Planilha)) or (Criar) then
  begin
    parametro_comercialmod_ship_list.SaveToFile(Planilha);
    AbrirExcel(Planilha);
    { preencher campos default e salvar planilha }
    ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
    ExcelWorksheet.Cells.Item[02, 03].Value := clientescod_cliente.AsString;
    ExcelWorksheet.Cells.Item[03, 03].Value := Fornecedoresraz_social_reduz.AsString;
    ExcelWorksheet.Cells.Item[07, 01].Value := ' ';
    ExcelApplication.ActiveWorkbook.SaveAs(Planilha,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  end
  else AbrirExcel(Planilha);

  Result := Planilha;
end;

function TfrmProdList.GetDirBaseETD(Criar: Boolean = False): String;
Var
  DIR_PLANILHAS, s, Planilha: String;
begin
  { Pasta onde será gravada a planilha de Shipping List  }
  DIR_PLANILHAS := parametro_comercialdir_planilhas.AsString;

  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para os documentos não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;

  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { diretório da Planilha, mais subpasta com código do cliente }
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(clientescod_cliente.AsString);
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\PRODUCTION LISTS ETD';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  s := trim(Clientescod_cliente.AsString) + '-' + trim(Fornecedoresraz_social_reduz.AsString);
  s := StringReplace(s, '/', '-', [rfReplaceAll]);
  s := StringReplace(s, '\', '-', [rfReplaceAll]);

  Planilha := DIR_PLANILHAS + '\' + trim(s) + '-PROD.LIST.ETD.xls';

  { não encontrou planilha no HD, gerar uma nova planilha atualizada }
  if Not(FileExists(Planilha)) or (Criar) then
  begin
    parametro_comercialmod_ship_list.SaveToFile(Planilha);
    AbrirExcel(Planilha);
    { preencher campos default e salvar planilha }
    ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
    ExcelWorksheet.Cells.Item[02, 03].Value := clientescod_cliente.AsString;
    ExcelWorksheet.Cells.Item[03, 03].Value := Fornecedoresraz_social_reduz.AsString;
    ExcelWorksheet.Cells.Item[07, 01].Value := ' ';
    ExcelApplication.ActiveWorkbook.SaveAs(Planilha,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  end
  else AbrirExcel(Planilha);

  Result := Planilha;
end;

procedure TfrmProdList.ProdutoEmbAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure TfrmProdList.EmbalagemEmbAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure TfrmProdList.EmbalagemEmbBeforePost(DataSet: TDataSet);
begin
  { Atualizar o Histrórico de Embalagens, quando for uma alteração cadastral }
  if DataSet.State = dsEdit then
  begin
    Embalagem_Hist.Append;
    Embalagem_Hist.Post;
    Embalagem_Hist.Close;
  end;
end;

procedure TfrmProdList.Embalagem_HistAfterPost(DataSet: TDataSet);
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

procedure TfrmProdList.Embalagem_HistNewRecord(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByname('sequencia').AsInteger := InsertCode('embalagem_hist', 'sequencia', True);
    FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
    FieldByName('cod_produto').AsString := EmbalagemEmb.FieldByName('cod_Produto').AsString;
    FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
    FieldByname('dat_cad_dimensoes').Value := EmbalagemEmb.FieldByname('dat_cad_dimensoes').OldValue;
    FieldByname('dat_cad_peso').Value := EmbalagemEmb.FieldByname('dat_cad_peso').OldValue;
    FieldByname('dat_cad_master').Value := EmbalagemEmb.FieldByname('dat_cad_master').OldValue;          
    FieldByname('dat_cad_inner').Value := EmbalagemEmb.FieldByname('dat_cad_inner').OldValue;
    FieldByName('altura').Value := EmbalagemEmb.FieldByName('altura').OldValue;
    FieldByName('largura').Value := EmbalagemEmb.FieldByName('largura').OldValue;
    FieldByName('profundidade').Value := EmbalagemEmb.FieldByName('profundidade').OldValue;
    FieldByName('peso_unitario').Value := EmbalagemEmb.FieldByName('peso_unitario').OldValue;
    FieldByName('volume').Value := EmbalagemEmb.FieldByName('volume').OldValue;
    FieldByName('area').Value := EmbalagemEmb.FieldByName('area').OldValue;
    FieldByName('qtd_master').Value := EmbalagemEmb.FieldByName('qtd_master').OldValue;
    FieldByName('qtd_inner').Value := EmbalagemEmb.FieldByName('qtd_inner').OldValue;

    if EmbalagemEmb.FieldByName('observacao').OldValue = null then
       FieldByName('observacao').AsString := ''
    else
       FieldByName('observacao').AsString := EmbalagemEmb.FieldByName('observacao').OldValue;

    if EmbalagemEmb.FieldByName('obs_caixas').OldValue = null then
       FieldByName('obs_caixas').AsString := ''
    else
       FieldByName('obs_caixas').AsString := EmbalagemEmb.FieldByName('obs_caixas').OldValue;

  end;

end;

procedure TfrmProdList.ProdutoEmbAfterOpen(DataSet: TDataSet);
begin
  { histórico da embalagens }
  with Embalagem_Hist do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := DataSet.FieldByName('cod_Produto').AsString;
    Open;
  end;
end;

procedure TfrmProdList.pedido_produtoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure TfrmProdList.AtualizarPlanilhaCliente(Gerar: Boolean = False);
Var
  Linha, LinhaFim : Integer;
  FileOrigem, FileBackup : String;
begin
  FecharExcel;

  FileName := GetDirBaseCliente(Gerar); { reabrir a planilha do Cliente }

  { preencher campos default e salvar planilha }
  ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
  ExcelWorksheet.Cells.Item[02, 03].Value := clientescod_cliente.AsString;
  ExcelWorksheet.Cells.Item[03, 03].Value := Fornecedoresraz_social_reduz.AsString;
  ExcelWorksheet.Cells.Item[07, 01].Value := ' ';

  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  { Limpar todas as linhas da planilha a partir da 7ª }
  with ExcelWorksheet.Range['A7','AY' + IntToStr(LinhaFim)] do
  begin
    Clear;
    Interior.ColorIndex := 0;
    ClearContents;
    Font.Size := 8;
    Font.Name := 'Arial';
    RowHeight := 11.25;
  end;

  Linha := 7;

  { selecionar todas as Faturas da planilha }
  with FaturasTodasPrl do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
  end;

  { itens organizados para a fatura }
  while Not(FaturasTodasPrl.Eof) do
  begin
    with ItensProdList do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from "prod_list_itens"          ');
      SQL.Add('where "cod_empresa" = :cod_empresa       ');
      SQL.Add('  and "num_prod_list" = :num_prod_list   ');
      SQL.Add('  and "num_fatura" = :num_fatura         ');
      SQL.Add('order by "num_sequencia"                 ');

      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_prod_list').Value := NumProdList;
      ParamByName('num_fatura').Value := trim(FaturasTodasPrlnum_fatura.AsString);
      Open;
      AtualizarItensExcel(ItensProdList, Linha, FaturasTodasPrlnum_fatura.AsString, False);
    end;
    FaturasTodasPrl.Next;
  end;

  { Itens que passaram na inspeção (P, F/P) }
  with ItensProdList do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from "prod_list_itens"                                          ');
    SQL.Add(' where "cod_empresa" = :cod_empresa                                      ');
    SQL.Add('   and "num_prod_list" = :num_prod_list                                  ');
    SQL.Add('   and "num_fatura" is null                                              ');
    SQL.Add('   and "ies_result_inspecao" in (''1'',''2'')                            ');
    SQL.Add(' order by "dat_emissao",  "num_pedido", "num_sequencia"                  ');

    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
    AtualizarItensExcel(ItensProdList, Linha, '');
  end;

  { Itens que falharam ou não foram inspecionados (F, null) }
  with ItensProdList do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from "prod_list_itens"                                          ');
    SQL.Add(' where "cod_empresa" = :cod_empresa                                      ');
    SQL.Add('   and "num_prod_list" = :num_prod_list                                  ');
    SQL.Add('   and "num_fatura" is null                                              ');
    SQL.Add('   and ("ies_result_inspecao" is null or "ies_result_inspecao" = ''0'')  ');
    SQL.Add(' order by "dat_emissao",  "num_pedido", "num_sequencia"                  ');

    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
    AtualizarItensExcel(ItensProdList, Linha, '');
  end;

  FaturasTodasPrl.Close;
  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  { Mudar fonte a partir da linha 7 até o fim }
  with ExcelWorksheet.Range['A7','AY' + IntToStr(LinhaFim)] do
  begin
    Font.Size := 8;
    Font.Name := 'Arial';
  end;
  { Mostrar/Esconder colunas para Pallets Packages }
  with ExcelWorksheet.Range['AI' + IntToStr(Linha),'AP' + IntToStr(Linha)] do
  begin
    if (rgPallets.ItemIndex = 0) then EntireColumn.Hidden := False
    else EntireColumn.Hidden := True;
  end;
  ExcelWorkSheet.Range['E7','E7'].Select;
  ExcelApplication.ActiveWindow.FreezePanes := True;

  { obter a pasta correta para guardar a planilha }
  FileOrigem := FileName;
  FileBackup := FileName + '.BAK';
  { Salvar a planilha na pasta do cliente subpasta PRODUCTION LISTS }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  CopyFile(PChar(FileName), PChar(FileBackup), false);

  FecharExcel;
end;

procedure TfrmProdList.AtualizarPlanilhaFornecedor(Gerar: Boolean = False);
Var
  Linha, LinhaFim : Integer;
  FileOrigem, FileBackup : String;
begin
  FecharExcel;

  FileName := GetDirBaseFornecedor(Gerar); { reabrir a planilha do Fornecedor }

  { preencher campos default e salvar planilha }
  ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
  ExcelWorksheet.Cells.Item[02, 03].Value := clientescod_cliente.AsString;
  ExcelWorksheet.Cells.Item[03, 03].Value := Fornecedoresraz_social_reduz.AsString;
  ExcelWorkSheet.Cells.Item[04, 01].Value := ' ';
  ExcelWorkSheet.Cells.Item[04, 03].Value := ' ';
  ExcelWorksheet.Cells.Item[07, 01].Value := ' ';

  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  { Limpar todas as linhas da planilha a partir da 7ª }
  with ExcelWorksheet.Range['A7','AY' + IntToStr(LinhaFim)] do
  begin
    Clear;
    Interior.ColorIndex := 0;
    ClearContents;
    Font.Size := 8;
    Font.Name := 'Arial';
    RowHeight := 11.25;
  end;

  Linha := 7;

  { Selecionar todas as Faturas da Planilha }
  with FaturasTodasPrl do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
  end;

  { Itens da Production List na mesma ordem da planilha do fornecedor }
  with ItensProdList do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from "prod_list_itens"                               ');
    SQL.Add(' where "cod_empresa" = :cod_empresa                           ');
    SQL.Add('   and "num_prod_list" = :num_prod_list                       ');
    SQL.Add(' order by "dat_emissao",  "num_pedido", "num_seq_pedido"      ');

    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
    AtualizarItensExcel(ItensProdList, Linha, '');
  end;

  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  { Mudar fonte a partir da linha 7 até o fim }
  with ExcelWorksheet.Range['A7','AY' + IntToStr(LinhaFim)] do
  begin
    Font.Size := 8;
    Font.Name := 'Arial';
  end;
  { Mostrar/Esconder colunas para Pallets Packages }
  with ExcelWorksheet.Range['AI' + IntToStr(Linha),'AP' + IntToStr(Linha)] do
  begin
    if (rgPallets.ItemIndex = 0) then EntireColumn.Hidden := False
    else EntireColumn.Hidden := True;
  end;
  ExcelWorkSheet.Range['E7','E7'].Select;
  ExcelApplication.ActiveWindow.FreezePanes := True;

  { obter a pasta correta para guardar a planilha }
  FileOrigem := FileName;
  FileBackup := FileName + '.BAK';
  { Salvar a planilha na pasta do cliente subpasta PRODUCTION LISTS FORNECEDOR}
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  CopyFile(PChar(FileName), PChar(FileBackup), false);

  FecharExcel;
end;

procedure TfrmProdList.AtualizarPlanilhaETD(Gerar: Boolean = False);
Var
  Linha, LinhaFim : Integer;
  FileOrigem, FileBackup : String;
begin
  FecharExcel;

  FileName := GetDirBaseETD(Gerar); { reabrir a planilha ETD }

  { preencher campos default e salvar planilha }
  ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
  ExcelWorksheet.Cells.Item[02, 03].Value := clientescod_cliente.AsString;
  ExcelWorksheet.Cells.Item[03, 03].Value := Fornecedoresraz_social_reduz.AsString;
  ExcelWorkSheet.Cells.Item[04, 01].Value := ' ';
  ExcelWorkSheet.Cells.Item[04, 03].Value := ' ';
  ExcelWorksheet.Cells.Item[07, 01].Value := ' ';

  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  { Limpar todas as linhas da planilha a partir da 7ª }
  with ExcelWorksheet.Range['A7','AY' + IntToStr(LinhaFim)] do
  begin
    Clear;
    Interior.ColorIndex := 0;
    ClearContents;
    Font.Size := 8;
    Font.Name := 'Arial';
    RowHeight := 11.25;
  end;

  Linha := 7;

  { Selecionar todas as Faturas da Planilha }
  with FaturasTodasPrl do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
  end;

  { Itens da Production List na mesma ordem da planilha do fornecedor }
  with ItensProdList do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from "prod_list_itens"                          ');
    SQL.Add(' where "cod_empresa" = :cod_empresa                      ');
    SQL.Add('   and "num_prod_list" = :num_prod_list                  ');
    SQL.Add(' order by "dat_emissao", "num_pedido", "dat_upd_etd"     ');

    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
    AtualizarItensExcel(ItensProdList, Linha, '', False);
  end;

  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  { Mudar fonte a partir da linha 7 até o fim }
  with ExcelWorksheet.Range['A7','AY' + IntToStr(LinhaFim)] do
  begin
    Font.Size := 8;
    Font.Name := 'Arial';
  end;
  { Mostrar/Esconder colunas para Pallets Packages }
  with ExcelWorksheet.Range['AI' + IntToStr(Linha),'AP' + IntToStr(Linha)] do
  begin
    if (rgPallets.ItemIndex = 0) then EntireColumn.Hidden := False
    else EntireColumn.Hidden := True;
  end;
  ExcelWorkSheet.Range['E7','E7'].Select;
  ExcelApplication.ActiveWindow.FreezePanes := True;

  { obter a pasta correta para guardar a planilha }
  FileOrigem := FileName;
  FileBackup := FileName + '.BAK';
  { Salvar a planilha na pasta do cliente subpasta PRODUCTION LISTS ETD}
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  CopyFile(PChar(FileName), PChar(FileBackup), false);

  FecharExcel;
end;

procedure TfrmProdList.AtualizarItensExcel(DataSet: TDataSet; Var pLinha: Integer; pNumFatura: String; fGrupo: boolean = true);
Var
  UN_I : String;
  s, msgVolume, msgPesoBruto, msgPesoLiquido, msgQtdCaixas : String;
  Linha : Integer;
  QtdMaster : Double;
  i : real;
  SeqEmbEsp, SeqPallet : Integer;
  fPallet: boolean;
  xlCorPallet, xlCorCalculos, xlCorErros, xlVerde, xlAmarelo, xlRoxo, xlCorFaturas : integer;

  { Gerar linhas para os items da Prod List }
  procedure Item(DataSetItem: TDataSet);
  begin
    with DataSetItem do
    begin
      { A - SEQUENCIA DO ITEM NO PEDIDO }
      with ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)] do
      begin
        Value := FieldByName('num_seq_pedido').AsInteger;
        HorizontalAlignment := xlCenter;
        if GetBit(FieldByName('ies_erros').AsInteger,0) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { B - ORDER }
      with ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)] do
      begin
        Value := trim(FieldByName('num_pedido_cli').AsString);
        ColumnWidth := 9.22;
        HorizontalAlignment := xlCenter;
        if GetBit(FieldByName('ies_erros').AsInteger,1) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { C - CONFIRMATION }
      with ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)] do
      begin
        Value := trim(FieldByName('num_pedido_for').AsString);
        HorizontalAlignment := xlCenter;
        ColumnWidth := 10.78;
        if GetBit(FieldByName('ies_erros').AsInteger,2) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { D - PRODUTO }
      with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
      begin
        NumberFormat := '@';
        Value := FmtProdutoCliente(Clientescod_cliente.AsString, FieldByName('cod_produto').AsString).fmtProduto;
        if GetBit(FieldByName('ies_erros').AsInteger,3) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { Obter Quantidades Confirmada, Embarcada e Pendente dos Produtos }
      { Somente para atualizar a planilha                               }
      with Saldos do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('num_pedido').Value  := DataSetItem.FieldByName('num_pedido').Value;
        ParamByName('cod_produto').Value := DataSetItem.FieldByName('cod_produto').Value;
        ParamByName('num_seq_pedido').Value := DataSetItem.FieldByName('num_seq_pedido').Value;
        Open;
        { E - QUANTITY CONFIRMED IN THE PROFORMA }
        with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
        begin
          NumberFormat := '#.##0,0';
          Value := Saldos.FieldByName('qtd_confirmada').AsFloat;
          Interior.ColorIndex := xlVerde;
        end;
        { F - QUANTITY ALREADY  SHIPPED }
        with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
        begin
          NumberFormat := '#.##0,0';
          { quantidade já faturada (embarcada) }
          Value := Saldos.FieldByName('qtd_embarcada').AsFloat;
          Interior.ColorIndex := xlVerde;
        end;
        { G - QUANTITY PENDING OF SHIPMENT }
        with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
        begin
          NumberFormat := '#.##0,0';
          { saldo pendente após o último faturamento }
          Value := Saldos.FieldByName('qtd_pendente').AsFloat;
          Interior.ColorIndex := xlVerde;
        end;
        Close;
      end;
      { H - PRODUTO DESCRIÇÃO }
      with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
      begin
        with ProdutoDet(FieldByName('cod_produto').AsString, Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger) do
        begin
          Value := Ingles;
          UN_I := Un;
          msgVolume := obsMedidas;
          msgPesoBruto := obsPesoMaster;
          msgPesoLiquido := obsPesoProduto;
          msgQtdCaixas := obsQtdMaster;
          ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Font.ColorIndex := CorNcm;
        end;
        WrapText := True;
        ShrinkToFit := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment   := xlTop;
        Interior.ColorIndex := xlVerde;
      end;

      { I - DATE OF BEGINNING OF PRODUCTION - Data de Confirmação do Pedido }
      with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
      begin
        if Not(FieldByName('dat_ini_producao').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('dat_ini_producao').AsDateTime)
        else Value := '';
        Interior.ColorIndex := xlVerde;
      end;
      { J - ETD FACTORY - Data estimada para a produção }
      with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
      begin
        if Not(FieldByName('etd_factory').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('etd_factory').AsDateTime)
        else Value := '';
        Interior.ColorIndex := xlVerde;
      end;
      { K - UPDATED ETD FACTORY }
      with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
      begin
        if Not(FieldByName('dat_upd_etd').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('dat_upd_etd').AsDateTime)
        else Value := '';
        Interior.ColorIndex := xlAmarelo;
      end;                                                                               
      { L - STATUS OF PRODUCTION }
      with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
      begin
        s := trim(StringReplace(FieldByName('txt_status_producao').AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
        i := (length(s) / 80);
        i := i + 1;
        Value := s;
        WrapText := True;                                                                        
        ShrinkToFit := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment   := xlTop;
        //RowHeight := 11.25 * i;
        Interior.ColorIndex := xlAmarelo;
      end;
      { M - DATE OF INSPECTION }
      with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
      begin
        if Not(FieldByName('dat_inspecao').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('dat_inspecao').AsDateTime)
        else Value := ' ';
        Interior.ColorIndex := xlAmarelo;
      end;
      { N - RESULT OF INSPECTION }
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
      begin
        Value :=  SetResultInspecao(FieldByName('ies_result_inspecao').AsString);
        Interior.ColorIndex := xlAmarelo;
      end;
      { O - QUANTITY SUGGESTED FOR THE NEXT SHIPMENT }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('qtd_romanear').AsFloat;
        if (GetBit(FieldByName('ies_erros').AsInteger,4) = 1) or
           (GetBit(FieldByName('ies_erros').AsInteger,5) = 1) or
           (GetBit(FieldByName('ies_erros').AsInteger,6) = 1) then
           Interior.ColorIndex := xlCorErros
        else                                                              
           Interior.ColorIndex := xlAmarelo;
      end;
      { P - INVOICE NUMER }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        Value := trim(FieldByName('num_fatura').AsString);
        if (FieldByName('ies_sit_fat').AsString = 'F') then
           Interior.ColorIndex := xlCorFaturas
        else
           Interior.ColorIndex := xlAmarelo;
      end;
      { Q - SEQ. INVOICE ITEM }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        if (FieldByName('num_seq_nf').AsInteger > 0) then
           Value := FieldByName('num_seq_nf').AsInteger
        else Value := '';
        if (FieldByName('ies_sit_fat').AsString = 'F') then
           Interior.ColorIndex := xlCorFaturas
        else
           Interior.ColorIndex := xlVerde;
      end;
      { R - UNIT (UNIDADE DE MEDIDA) }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        Value := UN_I;
        Interior.ColorIndex := xlVerde;
      end;
      { S - PRICE IN US$ }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000000';
        Value := FieldByName('preco_real').AsFloat;
        if GetBit(FieldByName('ies_erros').AsInteger,7) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { T - TOTAL US$ }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
        Font.ColorIndex := 0;
        Interior.ColorIndex := xlVerde;
      end;
      { U - PRICE IN US$ - Preço especial }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000000';
        Value := FieldByName('preco_esp').AsFloat;
        Font.ColorIndex := 0;
        { marcar preços especiais diferentes dos reais }
        if (FieldByName('preco_esp').AsFloat > 0) and
           (FieldByName('preco_real').AsFloat <> FieldByName('preco_esp').AsFloat) then
             Interior.ColorIndex := xlAmarelo
          else
             Interior.ColorIndex := xlRoxo;
        if GetBit(FieldByName('ies_erros').AsInteger,8) = 1 then
           Interior.ColorIndex := xlCorErros;
      end;
      { V - TOTAL US$ - Total Preço Especial}
      with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        FormulaR1C1 := '=ROUND(RC[-7]*RC[-1],2)';
        Font.ColorIndex := 0;
        if (FieldByName('preco_esp').AsFloat > 0) and
           (FieldByName('preco_real').AsFloat <> FieldByName('preco_esp').AsFloat) then
             Interior.ColorIndex := xlAmarelo
          else
             Interior.ColorIndex := xlRoxo;
      end;
      { W - TOTAL VOLUME IN M³ }
      with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(RC[3]*RC[7],3)'
        else
           FormulaR1C1 := '=ROUND(RC[4]*RC[7],3)';
        Interior.ColorIndex := xlVerde;
      end;
      { X - TOTAL GROSS WEIGHT (Kg) }
      with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(((RC[5]-(RC[10]/1000*RC[4]))*RC[2])+(RC[-9]*RC[10]/1000),2)'
        else
           FormulaR1C1 := '=ROUND(RC[3]*RC[5],2)';
        Interior.ColorIndex := xlVerde;
      end;
      { Y - TOTAL NET WEIGHT (Kg) }
      with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        FormulaR1C1 := '=ROUND(RC[-10]*RC[9]/1000,2)';
        Interior.ColorIndex := xlVerde;
      end;
      { Z - TOTAL QUANTITY OF PACKINGS }
      with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUNDUP(RC[-11]/RC[2],0)'
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
        Interior.ColorIndex := xlVerde;
      end;
      { AA - SPECIAL CARTONS }
      with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := FieldByName('qtd_caixas').AsFloat;
        Interior.ColorIndex := xlAmarelo;
      end;
      { AB - QUANTITY OF UNITS INSIDE THE PACKING }
      with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           Value := FieldByName('un_master').AsFloat;
        Interior.ColorIndex := xlAmarelo;
      end;
      { AC - Peso Bruto de 1 Caixa - Gross Weight 1 PACKING }
      with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Value := FieldByName('pes_bruto_cx').AsFloat;
        Interior.ColorIndex := xlAmarelo;
      end;
      { AD - Volume }
      with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
        Interior.ColorIndex := xlVerde;
      end;
      { AE - Comprimento }
      with ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('comprimento_cx').AsFloat;
        Interior.ColorIndex := xlAmarelo;
      end;
      { AF - Largura }
      with ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('largura_cx').AsFloat;
        Interior.ColorIndex := xlAmarelo;
      end;
      { AG - Altura }
      with ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('altura_cx').AsFloat;
        Interior.ColorIndex := xlAmarelo;
      end;
      { AH - NET WEIGHT OF THE PRODUCT (GRAMS) }
      with ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Value := FieldByName('pes_unitario').AsFloat;  // Peso Unitário em Gramas
        Interior.ColorIndex := xlAmarelo;
      end;
      { AI - QUANTITY OF PALLETS }
      with ExcelWorksheet.Range['AI'+ inttostr(linha),'AI'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('qtd_pallet').AsInteger > 0) then
           Value := FieldByName('qtd_pallet').AsInteger
        else Value := '';
        Interior.ColorIndex := xlCorPallet;
      end;
      { AJ - PESO PALLET VAZIO }
      with ExcelWorksheet.Range['AJ'+ inttostr(linha),'AJ'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('pes_pallet_vazio').AsFloat > 0) then
           Value := FieldByName('pes_pallet_vazio').AsFloat
        else Value := '';
        Interior.ColorIndex := xlCorPallet;
      end;
      { AK - PALLET GROSS WEIGHT }
      with ExcelWorksheet.Range['AK'+ inttostr(linha),'AK'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('pes_bruto_pallet').AsFloat > 0) then
           Value := FieldByName('pes_bruto_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { AL - PALLET NET WEIGHT }
      with ExcelWorksheet.Range['AL'+ inttostr(linha),'AL'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('pes_liquido_pallet').AsFloat > 0) then
           Value := FieldByName('pes_liquido_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { AM - COMPRIMENTO DO PALLET }
      with ExcelWorksheet.Range['AM'+ inttostr(linha),'AM'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('comprimento_pallet').AsFloat > 0) then
           Value := FieldByName('comprimento_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { AN - LARGURA DO PALLET }
      with ExcelWorksheet.Range['AN'+ inttostr(linha),'AN'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('largura_pallet').AsFloat > 0) then
           Value := FieldByName('largura_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { AO - ALTURA DO PALLET }
      with ExcelWorksheet.Range['AO'+ inttostr(linha),'AO'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('altura_pallet').AsFloat > 0) then
           Value := FieldByName('altura_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { AP - PALLET VOLUME }
      with ExcelWorksheet.Range['AP'+ inttostr(linha),'AP'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000';
        FormulaR1C1 := '=ROUND(ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)*RC[-7],3)';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;

      { INFORMAÇÕES CALCULADAS PELO PROGRAMA }

      { AQ - TOTAL US$ }
      with ExcelWorksheet.Range['AQ'+ inttostr(linha),'AQ'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_vlr_liquido').IsNull) then
        begin
          Value := FieldByName('cal_vlr_liquido').AsFloat;
          if (FieldByName('vlr_liquido').AsFloat <> FieldByName('cal_vlr_liquido').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          ClearComments;
          AddComment(PrecoPedidoProduto(FieldByName('num_pedido').Value, FieldByName('num_seq_pedido').AsInteger));
          Comment.Visible := False;
        end else Value := null;
      end;
      { AR - TOTAL US$(*) }
      with ExcelWorksheet.Range['AR'+ inttostr(linha),'AR'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_vlr_liquido_esp').IsNull) then
        begin
          Value := FieldByName('cal_vlr_liquido_esp').AsFloat;
          if (FieldByName('vlr_liquido_esp').AsFloat <> FieldByName('cal_vlr_liquido_esp').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          end else Value := null;
      end;
      { AS - TOTAL VOLUME }
      with ExcelWorksheet.Range['AS'+ inttostr(linha),'AS'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_vol_total').IsNull) then
        begin
          Value := FieldByName('cal_vol_total').AsFloat;
          if (FieldByName('vol_total').AsFloat <> FieldByName('cal_vol_total').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          if (msgVolume <> '') and (FieldByName('ies_emb_esp').AsString = 'N') then
          begin
            ClearComments;
            AddComment(msgVolume);
            Comment.Visible := False;
          end;
          end else Value := null;
      end;
      { AT - TOTAL GROSS WEIGHT }
      with ExcelWorksheet.Range['AT'+ inttostr(linha),'AT'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_pes_bruto').IsNull) then
        begin
          Value := FieldByName('cal_pes_bruto').AsFloat;
          if (FieldByName('pes_bruto').AsFloat <> FieldByName('cal_pes_bruto').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          if (msgPesoBruto <> '') and (FieldByName('ies_emb_esp').AsString = 'N')  then
          begin
            ClearComments;
            AddComment(msgPesoBruto);
            Comment.Visible := False;
          end;
        end else Value := null;
      end;
      { AU - TOTAL NET WEIGHT }
      with ExcelWorksheet.Range['AU'+ inttostr(linha),'AU'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_pes_liquido').IsNull) then
        begin
          Value := FieldByName('cal_pes_liquido').AsFloat;
          if (FieldByName('pes_liquido').AsFloat <> FieldByName('cal_pes_liquido').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          if (msgPesoLiquido <> '') then
          begin
            ClearComments;
            AddComment(msgPesoLiquido);
            Comment.Visible := False;
          end;
        end else Value := null;
      end;
      { AV - TOTAL QUANTITY OF PACKINGS }
      with ExcelWorksheet.Range['AV'+ inttostr(linha),'AV'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_qtd_caixas').IsNull) then
        begin
          Value := FieldByName('cal_qtd_caixas').AsFloat;
          if (FieldByName('qtd_caixas').AsFloat <> FieldByName('cal_qtd_caixas').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          if (msgQtdCaixas <> '') and (FieldByName('ies_emb_esp').AsString = 'N')  then
          begin
            ClearComments;
            AddComment(msgQtdCaixas);
            Comment.Visible := False;
          end;
        end else Value := null;
      end;
      { AW - VOLUME OF 1 PACKING }
      with ExcelWorksheet.Range['AW'+ inttostr(linha),'AW'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_volume_caixa').IsNull) then
        begin
          Value := FieldByName('cal_volume_caixa').AsFloat;
          if (FieldByName('volume_caixa').AsFloat <> FieldByName('cal_volume_caixa').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
        end else Value := null;
      end;
      { AX - PRICE IN US$ }
      with ExcelWorksheet.Range['AX'+ inttostr(linha),'AX'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000000';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_preco_real').IsNull) then
        begin
          Value := FieldByName('cal_preco_real').AsFloat;
          if (FieldByName('preco_real').AsFloat <> FieldByName('cal_preco_real').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
        end else Value := null;
      end;
      { AY - PRICE IN US$(*) }
      with ExcelWorksheet.Range['AY'+ inttostr(linha),'AY'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000000';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_preco_esp').IsNull) then
        begin
          Value := FieldByName('cal_preco_esp').AsFloat;
          if (FieldByName('preco_esp').AsFloat <> FieldByName('cal_preco_esp').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
        end else Value := null;
      end;
      { centralizar as células }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'AY' + IntToStr(Linha)] do
      begin
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
      end;
      { Descrição do Produto }
      with ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
      begin
        WrapText := True;                                                                                
        ShrinkToFit := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment   := xlTop;
        RowHeight := 11.25;
        Orientation         := 0;
        AddIndent           := False;
        IndentLevel         := 0;
        ReadingOrder        := xlContext;
        MergeCells          := False;
      end;
      { Status da Produção }
      with ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
      begin
        WrapText := True;
        ShrinkToFit := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment   := xlTop;
        RowHeight := 11.25;
        Orientation         := 0;
        AddIndent           := False;
        IndentLevel         := 0;
        ReadingOrder        := xlContext;
        MergeCells          := False;
      end;
      {bordas desde o cabeçalho até ultima linha}
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'AY' + IntToStr(Linha)] do
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

  procedure Grupos(Num_ProdList, NumGrupo: Integer);
  begin
    { gerar linhas para Grupos de Produtos Iguais }
    with ProdListGrupos do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_prod_list').Value := Num_ProdList;
      ParamByName('grupo').Value := NumGrupo;
      Open;
      While Not(EOF) do
      begin                                                               
        Item(ProdListGrupos);
        Next;
      end;
    end;
  end;

  procedure EmbalagemEspecial(Num_ProdList, Seq_EmbEsp: Integer);
  Var
    LinIniEmbEsp : Integer;
  begin
    { gerar linhas para embalagens especiais }                             
    with ProdListEmbEsp do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_prod_list').Value := Num_ProdList;
      ParamByName('seq_emb_esp').Value := Seq_EmbEsp;
      Open;
      LinIniEmbEsp := Linha;  { salvar linha inicial da embalagem especial }
      While Not(EOF) do
      begin
        Item(ProdListEmbEsp);
        Next;
      end;
      with ExcelWorkSheet.Range['W'+IntToStr(LinIniEmbEsp),'W'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlVerde;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['X'+IntToStr(LinIniEmbEsp),'X'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlVerde;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['Z'+IntToStr(LinIniEmbEsp),'Z'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlVerde;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AA'+IntToStr(LinIniEmbEsp),'AA'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AB'+IntToStr(LinIniEmbEsp),'AB'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AC'+IntToStr(LinIniEmbEsp),'AC'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AD'+IntToStr(LinIniEmbEsp),'AD'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlVerde;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AE'+IntToStr(LinIniEmbEsp),'AE'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AF'+IntToStr(LinIniEmbEsp),'AF'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AG'+IntToStr(LinIniEmbEsp),'AG'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { embalagens nos pallets }
      with ExcelWorkSheet.Range['AK'+IntToStr(LinIniEmbEsp),'AK'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AL'+IntToStr(LinIniEmbEsp),'AL'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AP'+IntToStr(LinIniEmbEsp),'AP'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { campos calculados pelo sistema }
      with ExcelWorkSheet.Range['AS'+IntToStr(LinIniEmbEsp),'AS'+IntToStr(Linha-1)] do
      begin
         MergeCells := True;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AT'+IntToStr(LinIniEmbEsp),'AT'+IntToStr(Linha-1)] do
      begin
         MergeCells := True;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AV'+IntToStr(LinIniEmbEsp),'AV'+IntToStr(Linha-1)] do
      begin
         MergeCells := True;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AW'+IntToStr(LinIniEmbEsp),'AW'+IntToStr(Linha-1)] do
      begin
         MergeCells := True;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
    end;
  end;

  procedure Pallets(Num_ProdList, Seq_pallet: Integer);
  Var
    LinIniPallet : Integer;
  begin
    { gerar itens com pallets }
    with ProdListPallets do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_prod_list').Value := Num_ProdList;
      ParamByName('seq_pallet').Value := Seq_pallet;
      Open;
      LinIniPallet := Linha;  { salvar linha inicial do pallet }
      While Not(EOF) do
      begin
        { Embalagem Padrão dentro do pallet }
        if (FieldByName('ies_emb_esp').AsString = 'N') then Item(ProdListPallets);

        { Embalagem Especial dentro do pallet }
        if ((FieldByName('ies_emb_esp').AsString = 'S') and (FieldByName('qtd_caixas').AsInteger > 0)) then
           EmbalagemEspecial(FieldByName('num_prod_list').AsInteger, FieldByName('seq_emb_esp').AsInteger);

        Next;
      end;
      with ExcelWorkSheet.Range['AI'+IntToStr(LinIniPallet),'AI'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AJ'+IntToStr(LinIniPallet),'AJ'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AK'+IntToStr(LinIniPallet),'AK'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AL'+IntToStr(LinIniPallet),'AL'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AM'+IntToStr(LinIniPallet),'AM'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AN'+IntToStr(LinIniPallet),'AN'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AO'+IntToStr(LinIniPallet),'AO'+IntToStr(Linha-1)] do
      begin
       MergeCells := True;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlCenter;
       WrapText := True;
       ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AP'+IntToStr(LinIniPallet),'AP'+IntToStr(Linha-1)] do
      begin
       MergeCells := True;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlCenter;
       WrapText := True;
       ShrinkToFit := False;
      end;
      { alternar cores entre as embalagens }
      if (fPallet) then xlCorPallet := 44 else xlCorPallet := 45;
      fPallet := Not(fPallet);
      with ExcelWorkSheet.Range['AI'+IntToStr(LinIniPallet),'AP'+IntToStr(Linha-1)] do
      begin
        Interior.ColorIndex := xlCorPallet;
      end;
    end;
  end;

begin
  { Procedure AtualizarItensExcel }
  if (DataSet.IsEmpty) then Exit;

  fPallet := True; // var para alternar cores nos pallets

  xlCorPallet := 44; // cor pallets
  xlCorCalculos := 0; // cor de preenchimento para colunas calculados
  xlCorErros := 3; // cor dos erros (vermelha)
  xlVerde := 4;
  xlAmarelo := 6;
  xlRoxo := 7;
  xlCorFaturas := 8;

  Linha := pLinha;

  { move para a planilha o Número da Fatura }
  if (pLinha = 7) then
  begin
    ExcelWorkSheet.Cells.Item[4, 3].Value := trim(pNumFatura);
  end
  else
  begin
    if (trim(pNumFatura) <> '') then
    begin
      with ExcelWorksheet.Range['A'+ inttostr(linha-1),'B'+inttostr(linha-1)] do
      begin
        Value := 'INVOICE';
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        Font.FontStyle := 'Arial';
        Font.Size := 8;
      end;
      with ExcelWorksheet.Range['C'+ inttostr(linha-1),'D'+inttostr(linha-1)] do
      begin
        Value := trim(pNumFatura);
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
      end;
    end;
  end;                                              

  with DataSet do
  begin
    First;
    while Not(EOF) do
    begin
      { Item Padrão - fora de pallets e de Grupos }
      if (fGrupo) then
      begin
        if ((FieldByName('seq_pallet').IsNull) and
            (FieldByName('ies_emb_esp').AsString = 'N') and
            (FieldByName('grupo').IsNull))
        then Item(DataSet);
      end else
      begin
        if ((FieldByName('seq_pallet').IsNull) and (FieldByName('ies_emb_esp').AsString = 'N')) then Item(DataSet);
      end;
      { Item de Grupo }
      if (fGrupo) then
      begin
        if ((FieldByName('seq_pallet').IsNull) and
            (FieldByName('ies_emb_esp').AsString = 'N') and
            (FieldByName('grupo').AsInteger > 0) and (FieldByName('seq_grupo').AsInteger = 1))
        then Grupos(FieldByName('num_prod_list').AsInteger,FieldByName('grupo').AsInteger);
      end;

      { Embalagem Especial - fora de pallets }
      if ((FieldByName('seq_pallet').IsNull) and (FieldByName('ies_emb_esp').AsString = 'S') and
         (FieldByName('qtd_caixas').AsInteger > 0)) then
         EmbalagemEspecial(FieldByName('num_prod_list').AsInteger, FieldByName('seq_emb_esp').AsInteger);

      { Pallets }
      if ((FieldByName('seq_pallet').AsInteger > 0) and (FieldByName('qtd_pallet').AsInteger > 0)) then
         Pallets(FieldByName('num_prod_list').AsInteger, FieldByName('seq_pallet').AsInteger);

      Next;
    end;
  end;

  { TOTAIS GERAIS }
  Inc(Linha);
  ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)].Value := 'TOTAL : ';

  { T - TOTAL US$ }
  with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(T'+IntTostr(pLinha)+':T'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { V - TOTAL US$ ESPECIAL }
  with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(V'+IntTostr(pLinha)+':V'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { W - VOLUME }
  with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(W'+IntTostr(pLinha)+':W'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { X - PESO BRUTO }
  with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(X'+IntTostr(pLinha)+':X'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Y - PESO LÍQUIDO }
  with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(Y'+IntTostr(pLinha)+':Y'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Z - QUANTIDADE DE CAIXAS DE EXPORTAÇÃO - STANDARD }
  with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(Z'+IntTostr(pLinha)+':Z'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AA - CAIXAS ESPECIAIS }
  with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(AA'+IntTostr(pLinha)+':AA'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Totais dos Pallets }
  { AI - QUANTIDADE }
  with ExcelWorksheet.Range['AI'+ inttostr(linha),'AI'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0';
    Formula := '=SUM(AI'+IntTostr(pLinha)+':AI'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AK - PESO BRUTO }
  with ExcelWorksheet.Range['AK'+ inttostr(linha),'AK'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(AK'+IntTostr(pLinha)+':AK'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AL - PESO LÍQUIDO }
  with ExcelWorksheet.Range['AL'+ inttostr(linha),'AL'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(AL'+IntTostr(pLinha)+':AL'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { AP - VOLUME }
  with ExcelWorksheet.Range['AP'+ inttostr(linha),'AP'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(AP'+IntTostr(pLinha)+':AP'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Totais Calculados pelo sistema }
  { AQ - TOTAL US$ - REAL }
  with ExcelWorksheet.Range['AQ'+ inttostr(linha),'AQ'+inttostr(linha)] do
  begin
    Formula := '=SUM(AQ'+IntTostr(pLinha)+':AQ'+IntTostr(Linha-1)+')';
    NumberFormat := '#.##0,00';
    if (FaturasTodasPrlvlr_liquido.AsFloat <> FaturasTodasPrlcal_vlr_liquido.AsFloat) then
    begin
      Font.ColorIndex := xlCorErros;
      Font.Bold := True;
    end else begin
      Font.ColorIndex := 0;
      Font.Bold := False;
    end;
  end;
  { AR - TOTAL US$ - ESPECIAL }
  with ExcelWorksheet.Range['AR'+ inttostr(linha),'AR'+inttostr(linha)] do
  begin
    Formula := '=SUM(AR'+IntTostr(pLinha)+':AR'+IntTostr(Linha-1)+')';
    NumberFormat := '#.##0,00';
    if (FaturasTodasPrlvlr_liquido_esp.AsFloat <> FaturasTodasPrlcal_vlr_liquido_esp.AsFloat) then
    begin
      Font.ColorIndex := xlCorErros;
      Font.Bold := True;
    end else begin
      Font.ColorIndex := 0;
      Font.Bold := False;
    end;
  end;
  { AS - TOTAL VOLUME IN M³ }
  with ExcelWorksheet.Range['AS'+ inttostr(linha),'AS'+inttostr(linha)] do
  begin
    Formula := '=ROUND(SUM(AS'+IntTostr(pLinha)+':AS'+IntTostr(Linha-1)+'),2)';
    NumberFormat := '#.##0,00';
    if (FaturasTodasPrlvol_total.AsFloat <> FaturasTodasPrlcal_vol_total.AsFloat) then
    begin
      Font.ColorIndex := xlCorErros;
      Font.Bold := True;
    end else begin
      Font.ColorIndex := 0;
      Font.Bold := False;
    end;
  end;
  { AT - TOTAL GROSS WEIGHT }
  with ExcelWorksheet.Range['AT'+ inttostr(linha),'AT'+inttostr(linha)] do
  begin
    Formula := '=SUM(AT'+IntTostr(pLinha)+':AT'+IntTostr(Linha-1)+')';
    NumberFormat := '#.##0,00';
    if (FaturasTodasPrlpes_bruto.AsFloat <> FaturasTodasPrlcal_pes_bruto.AsFloat) then
    begin
      Font.ColorIndex := xlCorErros;
      Font.Bold := True;
    end else begin
      Font.ColorIndex := 0;
      Font.Bold := False;
    end;
  end;
  { AU - TOTAL NET WEIGHT }
  with ExcelWorksheet.Range['AU'+ inttostr(linha),'AU'+inttostr(linha)] do
  begin
    Formula := '=SUM(AU'+IntTostr(pLinha)+':AU'+IntTostr(Linha-1)+')';
    NumberFormat := '#.##0,00';
    if (FaturasTodasPrlpes_liquido.AsFloat <> FaturasTodasPrlcal_pes_liquido.AsFloat) then
    begin
      Font.ColorIndex := xlCorErros;
      Font.Bold := True;
    end else begin
      Font.ColorIndex := 0;
      Font.Bold := False;
    end;
  end;
  { AV - TOTAL QUANTITY OF PACKINGS }
  with ExcelWorksheet.Range['AV'+ inttostr(linha),'AV'+inttostr(linha)] do
  begin
    Formula := '=SUM(AV'+IntTostr(pLinha)+':AV'+IntTostr(Linha-1)+')';
    NumberFormat := '#.##0,00';
    if (FaturasTodasPrlqtd_caixas.AsFloat <> FaturasTodasPrlcal_qtd_caixas.AsFloat) then
    begin
      Font.ColorIndex := xlCorErros;
      Font.Bold := True;
    end else begin
      Font.ColorIndex := 0;
      Font.Bold := False;
    end;
  end;

  pLinha := Linha + 3;
end;

procedure TfrmProdList.prod_list_itensAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

   { ATUALIZAR PEDIDOS "spr_additem_pedido"       }
   { Incluir Itens no Pedido com SALDO pendente   }
   { Atualizar Itens de Origem                    }
   { Recalcular Itens e Pedidos                   }
   with spr_additem_pedido do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_prod_list').AsInteger := prod_list_itensnum_prod_list.AsInteger;
     ParamByName('num_seq_prl').AsInteger := prod_list_itensnum_sequencia.AsInteger; // número da sequencia em Prod_List_itens
     ExecProc;
     try
      Transaction.CommitRetaining;
     except
      Transaction.RollbackRetaining;
     end;
   end;

   { ATUALIZAR PRODUCTION LIST "spr_additem_prodlist" }
   { Incluir novos itens do Pedido na Prod List Itens }
   with spr_additem_prodlist do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;                                      
     ParamByName('num_prod_list').AsInteger := prod_list_itensnum_prod_list.AsInteger;
     ParamByName('num_pedido').Value := prod_list_itensnum_pedido.AsLargeInt;
     ExecProc;
     try
      Transaction.CommitRetaining;
     except
      Transaction.RollbackRetaining;
     end;
   end;

end;

procedure TfrmProdList.prod_list_itensAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

function TfrmProdList.PrecoPedidoProduto(NumPedido: Int64; NumSeq: Integer): String;
begin
  with Pedido_Produto do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;
    ParamByName('num_sequencia').Value := NumSeq;
    Open;
    Result := 'Price of product: '+FormatFloat('#,##0.0000', FieldByName('vlr_unitario').AsFloat) + ' ' + FieldByName('obs_preco').AsString;
    Close;
  end;
end;

procedure TfrmProdList.FaturasNovasPrlCalcFields(DataSet: TDataSet);
begin
   { Indicar se existem itens pertencentes a uma fatura, importados da production list, }
   { que não passaram na inspeção ou não foram inspecionados.                           }
   with spr_check_result do
   begin
     Close;
     ParamByName('cod_empresa').Value := vgCod_Empresa;
     ParamByName('num_prod_list').Value := NumProdList;
     ParamByName('num_fatura').Value := FaturasNovasPrlnum_fatura.AsString;
     Open;
     FaturasNovasPrlFlag.Value := spr_check_resultFLAG.AsString;
   end;
end;

procedure TfrmProdList.AtualizarProductionList;
begin
  if (dbcFornecedores.Value = '0') then
  begin
    Application.MessageBox('Chose a Supplier', 'Erro', MB_OK);
    dbcFornecedores.SetFocus;
    Exit;
  end;

  if (dbcClientes.Value = '0') then
  begin
    Application.MessageBox('Chose a Client', 'Erro', MB_OK);
    dbcClientes.SetFocus;
    Exit;
  end;

  { obter o número da prod list ou criar uma nova para fornecedor/cliente }
  NumProdList := GetNumProdList(Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger);
  frmProdList.Caption := 'Production List #' + IntToStr(NumProdList);

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;

  { ATUALIZAR PRODUCTION LIST                          }
  { Incluir novos itens dos pedidos na Prod List Itens }
  with spr_additens_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('cod_cliente').AsString := trim(Clientescod_cliente.AsString);
    ParamByName('cod_fornecedor').AsInteger := Fornecedorescod_fornecedor.AsInteger;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { calcular production list }
  with spr_calc_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { atualizar Preços Especiais }
  with spr_vlr_esp_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { atualizar Pesos dos Pallets e emb especiais }
  with spr_pesos_pallets_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { Desagrupar os itens em Prod List }
  with sqlDesagrupar do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByname('num_prod_list').Value := NumProdList;
    ExecQuery;
    try                                                                              
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { Agrupar Produtos na Production List para FORNECEDOR }
  with spr_agrupar_prod_list do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('tipo').AsString := 'F';
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { finalizar progress bar }
  Screen.Cursor := crDefault;  
  Ani.Terminate;
end;


procedure TfrmProdList.actGerarExecute(Sender: TObject);
begin
  { Atualizar e Calcular a Production List Selecionada
    Gerar as três planilhas Cliente, Fornecedor e ETD somente para documentação }
  if (dbcFornecedores.Value = '0') then
  begin
    Application.MessageBox('Chose a Supplier', 'Error', MB_OK);
    dbcFornecedores.SetFocus;
    Exit;
  end;

  if (dbcClientes.Value = '0') then
  begin
    Application.MessageBox('Chose a Client', 'Error', MB_OK);
    dbcClientes.SetFocus;
    Exit;
  end;

  if (rgPlanilha.ItemIndex = -1) then
  begin
    Application.MessageBox('Choose Client, Supplier or ETD to open the worksheet after saving', 'Error', MB_OK);
    rgPlanilha.SetFocus;
    Exit;
  end;

  NumProdList := GetNumProdList(Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger);
  frmProdList.Caption := 'Production List #' + IntToStr(NumProdList);

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;

  { ATUALIZAR PRODUCTION LIST                          }
  { Incluir novos itens dos pedidos na Prod List Itens }
  with spr_additens_prodlist do
  begin                                                                                        
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('cod_cliente').AsString := trim(Clientescod_cliente.AsString);
    ParamByName('cod_fornecedor').AsInteger := Fornecedorescod_fornecedor.AsInteger;
    ExecProc;
    try                                                                                        
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { calcular production list }
  with spr_calc_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { atualizar Preços Especiais }
  with spr_vlr_esp_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { atualizar Pesos dos Pallets e emb especiais }
  with spr_pesos_pallets_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  { Itens preparados para faturar com número de invoice na planilha }
  { somente para mostrar na grade e permitir faturar                }
  with FaturasNovasPrl do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
  end;

  { Desagrupar os itens em Prod List }
  with sqlDesagrupar do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByname('num_prod_list').Value := NumProdList;
    ExecQuery;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  AtualizarPlanilhaCliente(True);

  AtualizarPlanilhaETD(True);

  { Agrupar Produtos na Production List para FORNECEDOR }
  with spr_agrupar_prod_list do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('tipo').AsString := 'F';
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;                                                                    
  end;

  AtualizarPlanilhaFornecedor(True);

  { finalizar progress bar }
  Ani.Terminate;

  Application.MessageBox('Done', 'Information', MB_OK+MB_ICONINFORMATION);


  actAbrirExecute(nil);
end;

procedure TfrmProdList.prod_list_itensCalcFields(DataSet: TDataSet);
Var
  s : String;
begin
  { Descrição e Unidade de Medida do Produto em Inglês + Português}
  with ProdutoDet(DataSet.FieldByName('cod_produto').AsString, Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger) do
  begin
    s := Ingles + '. ' + Portugues;
    s := trim(StringReplace(s, #$94, #$22, [rfReplaceAll, rfIgnoreCase]));
    s := trim(StringReplace(s, #$93, #$22, [rfReplaceAll, rfIgnoreCase]));
    DataSet.FieldByName('cal_den_produto').AsString := s;
    DataSet.FieldByName('un_med').AsString := Un;
  end;                                                                                           

  if (DataSet = prod_list_itens) then
  begin
         if (DataSet.FieldByName('ies_result_inspecao').AsString = '2') then DataSet.FieldByName('cal_result_inspecao').AsString := 'P'
    else if (DataSet.FieldByName('ies_result_inspecao').AsString = '0') then DataSet.FieldByName('cal_result_inspecao').AsString := 'F'
    else if (DataSet.FieldByName('ies_result_inspecao').AsString = '1') then DataSet.FieldByName('cal_result_inspecao').AsString := 'F/P'
    else if (DataSet.FieldByName('ies_result_inspecao').AsString = '')  then DataSet.FieldByName('cal_result_inspecao').AsString := '';
  end;

end;
                                                                                          
procedure TfrmProdList.prod_list_itensqtd_romanearValidate(Sender: TField);
Var
  iSitFatura : String;
  QtdSaldo : Double;
begin
    { Validar Qtde a Romanear }

    { Status da Fatura: Null-não informada, N-não encontrou, F-Faturada, E-Embarcada }
    iSitFatura := GetSitFatura(prod_list_itensnum_fatura.AsString);

    { Saldo Pendente do Item no Pedido }
    with Pedido_Produto do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_pedido').Value := prod_list_itensnum_pedido.AsLargeInt;                           
      ParamByName('num_sequencia').Value := prod_list_itensnum_seq_pedido.AsInteger;
      Open;
      QtdSaldo := FieldByName('qtd_pendente').AsFloat;
    end;                                                                                           

    { Para Fatura Existente obter a Qtde Faturada como Saldo }
    if (iSitFatura = 'F') then
    begin
      { para item existente na Fatura, obter Qtde Faturada }
      if (prod_list_itensnum_seq_nf.AsInteger > 0) then
      begin
        with Produto_Fatura do
        begin
          Close;
          ParamByName('cod_empresa').Value := vgCod_Empresa;
          ParamByName('num_nota_fiscal').AsInteger := prod_list_itensnum_nota_fiscal.AsInteger;
          ParamByName('serie').AsString := '1';
          ParamByName('num_sequencia').AsInteger := prod_list_itensnum_seq_nf.AsInteger;
          Open;
          QtdSaldo := FieldByName('qtd_produto').AsFloat;
        end;
      end
      else QtdSaldo := prod_list_itensqtd_romanear.AsFloat; { para Item novo na Fatura }
    end;

    { Não permitir Qtde Romanear maior que Saldo Disponivel ou Qtde Faturada }
    if (prod_list_itensqtd_romanear.AsFloat > QtdSaldo) then
    begin
      Application.MessageBox('Quantidade a Embarcar maior que Saldo Disponível', 'Erro', MB_OK+MB_ICONERROR);
      Abort;
    end;

    { Atualizar Saldo Virtual somente quando não houver Fatura gerada }
    if ((iSitFatura = 'N') or (iSitFatura = '')) then
    begin
      with Pedido_Produto do
      begin
        if Not(IsEmpty) then
        begin
          Edit;
          FieldByName('qtd_romanear').Value := prod_list_itensqtd_romanear.AsFloat;
          FieldByName('qtd_saldo').Value := FieldByName('qtd_pendente').AsFloat - FieldByName('qtd_romanear').AsFloat;
          Post;
        end;
      end;
    end;

    { Recalcular valores para nova Qtd a Romanear }                                                             

    { Valores Liquidos Real e Especial }
    prod_list_itensvlr_liquido.Value :=  prod_list_itensqtd_romanear.AsFloat * prod_list_itenspreco_real.AsFloat;
    prod_list_itensvlr_liquido_esp.Value := prod_list_itensqtd_romanear.AsFloat * prod_list_itenspreco_esp.AsFloat;

    { Embalagem Padrão }
    if (prod_list_itensies_emb_esp.Value = 'N') then
    begin
      with dmCOM.CalcEmbalagem(prod_list_itenscod_produto.AsString, prod_list_itensqtd_romanear.AsFloat) do
      begin
        prod_list_itensqtd_caixas.Value := QtdExportBox;
        prod_list_itensvol_total.Value := VolCaixas;
        prod_list_itenspes_bruto.Value := PesBruto;
        prod_list_itenspes_liquido.Value := PesLiquido;
        prod_list_itenspes_bruto_cx.AsFloat := PesBrutoCxMaster;
        prod_list_itensies_caixa_fechada.Value := CaixaFechada;
        prod_list_itensun_master.AsFloat := QtdMasterBox;
        prod_list_itensvolume_caixa.Value := VolMasterBox;
        prod_list_itensaltura_cx.AsFloat := Altura;
        prod_list_itenslargura_cx.AsFloat := Largura;
        prod_list_itenscomprimento_cx.AsFloat := Comprimento;
      end;
    end;

    { Embalagem Especial }
    if (prod_list_itensies_emb_esp.Value = 'S') then
    begin
      prod_list_itensies_caixa_fechada.Value := 'S';

      with dmCOM.CalcEmbalagem(prod_list_itenscod_produto.AsString, prod_list_itensqtd_romanear.AsFloat) do
      begin
        prod_list_itenspes_liquido.Value := PesLiquido;
      end;

    end;

    { CALCULAR CAMPOS PARA COMPARAÇÕES - somente para mostrar na planilha Excel }
    prod_list_itenscal_preco_real.Value := Pedido_Produtovlr_unitario.AsFloat;
    prod_list_itenscal_vlr_liquido.Value :=  prod_list_itensqtd_romanear.AsFloat * Pedido_Produtovlr_unitario.AsFloat;
    prod_list_itenscal_preco_esp.Value := Pedido_Produtovlr_unitario_esp.AsFloat;
    prod_list_itenscal_vlr_liquido_esp.Value := prod_list_itensqtd_romanear.AsFloat * pedido_produtovlr_unitario_esp.AsFloat;

    { calcular embalagens PADRÕES }
    if (prod_list_itensies_emb_esp.Value = 'N') then
    begin
      with dmCOM.CalcEmbalagem(prod_list_itenscod_produto.AsString, prod_list_itensqtd_romanear.AsFloat) do
      begin
        prod_list_itenscal_qtd_caixas.Value := QtdExportBox;
        prod_list_itenscal_vol_total.Value := VolCaixas;
        prod_list_itenscal_pes_bruto.Value := PesBruto;
        prod_list_itenscal_pes_liquido.Value := PesLiquido;
        prod_list_itensies_caixa_fechada.Value := CaixaFechada;
        prod_list_itensvolume_caixa.Value := VolMasterBox;
      end;
    end;

    { EMBALAGEM ESPECIAL }
    if (prod_list_itensies_emb_esp.Value = 'S') then
    begin
      prod_list_itensies_caixa_fechada.Value := 'S';
      with dmCOM.CalcEmbalagem(prod_list_itenscod_produto.AsString, prod_list_itensqtd_romanear.AsFloat) do
      begin
        prod_list_itenscal_pes_liquido.Value := PesLiquido;
      end;
      if (prod_list_itensseq_emb_esp.Value > 0) and
         (prod_list_itensqtd_caixas.Value > 0) then
      begin
        prod_list_itenscal_qtd_caixas.Value := prod_list_itensqtd_caixas.AsInteger;
        prod_list_itenscal_vol_total.Value := prod_list_itensvol_total.AsFloat;
        prod_list_itenscal_pes_bruto.Value := prod_list_itenspes_bruto.AsFloat;
        prod_list_itenscal_volume_caixa.Value := prod_list_itensvolume_caixa.AsFloat;
      end;
    end;
end;

procedure TfrmProdList.emb_espAfterScroll(DataSet: TDataSet);
begin
  with emb_esp_itens do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := Prod_Listnum_prod_list.AsInteger;
    ParamByName('seq_emb_esp').Value := emb_espseq_emb_esp.AsInteger;
    Open;
  end;
end;

procedure TfrmProdList.emb_espAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;             
      Refresh;
   end;
   { atribuir aos itens da embalagem especial, o número da fatura informado }
   with emb_esp_itens do
   begin
     First;
     while Not(EOF) do
     begin
       Edit;
       FieldByName('num_fatura').AsString := emb_espnum_fatura.AsString;
       Post;
       Next;
     end;
   end;
   prod_list_itens.Close;
   prod_list_itens.Open;
end;

procedure TfrmProdList.btnConfirmClick(Sender: TObject);
begin
  { salvar prod list e prod list itens }
  if (prod_list.State in [dsEdit]) then Prod_List.Post;

  if (prod_list_itens.State in [dsEdit]) then  // refresh em prod_list_itens
  begin
    prod_list_itens.Post;
    prod_list_itens.Close;
    prod_list_itens.Open;
  end;
  { salvar embalagens especiais e itens de embalagens especiais }
  if (emb_esp_itens.State in [dsEdit, dsInsert]) then emb_esp_itens.Post;
  if (emb_esp.State in [dsEdit, dsInsert]) then emb_esp.Post;

  { salvar pallets }


  emb_esp.Close;
  emb_esp.Open;
  dbeqtd_romanear.SetFocus;
end;

procedure TfrmProdList.btnCancelClick(Sender: TObject);
begin
  if (prod_list.State in [dsEdit, dsInsert]) then
     prod_list.Cancel;

  if (prod_list_itens.State in [dsEdit, dsInsert]) then
     prod_list_itens.Cancel;

  if (emb_esp_itens.State in [dsEdit, dsInsert]) then
     emb_esp_itens.Cancel;

  if (emb_esp.State in [dsEdit, dsInsert]) then
     emb_esp.Cancel;   

end;

procedure TfrmProdList.emb_esp_itensAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do                                                                  
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure TfrmProdList.prod_list_itenscomprimento_cxValidate(
  Sender: TField);
begin
   { Recalcular Volume quando dimensões forem alteradas }
   if (prod_list_itensaltura_cx.AsFloat > 0) and
      (prod_list_itenslargura_cx.AsFloat > 0) and
      (prod_list_itenscomprimento_cx.AsFloat > 0) then
   begin
     prod_list_itensvolume_caixa.AsFloat := (prod_list_itensaltura_cx.AsFloat * prod_list_itenslargura_cx.AsFloat * prod_list_itenscomprimento_cx.AsFloat) / 1000000;
     prod_list_itensvol_total.AsFloat := prod_list_itensvolume_caixa.AsFloat * prod_list_itensqtd_caixas.AsInteger;
   end;
end;


procedure TfrmProdList.AddItemEmbEsp(DataSet: TDataSet; Grade: TDBGrid; SeqEmbEsp: Integer; Caixa: Boolean);
var
  i: Integer;
  SavePlace: TBookmark; { salvar a posição do DataSet }
  NumFatura: String;
begin
  { Adicionar Itens a Embalagem Especial }

  { salvar posição na tabela }
  SavePlace := DataSet.GetBookmark;

  if Grade.SelectedRows.Count > 0 then
    with Grade.DataSource.DataSet do
      for i := 0 to Grade.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(Grade.SelectedRows.Items[i]));

        { obter o número de fatura do 1º item da seleção }
        if (i=0) then NumFatura := DataSet.FieldByName('num_fatura').AsString;
        { adicionando itens, obter o número da fatura da embalagem }
        if (Caixa = false) then NumFatura := emb_espnum_fatura.AsString;

        { adicionar apenas itens que não pertençam a uma embalagem especial e }
        { tenham o mesmo número de fatura mesmo que seja em branco            }
        if (DataSet.FieldByName('ies_emb_esp').AsString = 'N') and
           (DataSet.FieldByName('num_fatura').AsString = NumFatura)  then
        begin
          DataSet.Edit;
          DataSet.FieldByName('ies_emb_esp').AsString := 'S';
          DataSet.FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
          DataSet.FieldByName('ies_caixa_fechada').Clear;
          DataSet.FieldByName('qtd_caixas').Clear;
          DataSet.FieldByName('vol_total').Clear;
          DataSet.FieldByName('pes_bruto').Clear;
          DataSet.FieldByName('un_master').Clear;
          DataSet.FieldByName('pes_bruto_cx').Clear;
          DataSet.FieldByName('altura_cx').Clear;
          DataSet.FieldByName('largura_cx').Clear;
          DataSet.FieldByName('comprimento_cx').Clear;
          DataSet.FieldByName('volume_caixa').Clear;
          DataSet.FieldByName('un_master').Clear;
          DataSet.FieldByName('ies_caixa_fechada').Clear;

          DataSet.Post;
        end;
      end;

   DataSet.Close;
   DataSet.Open;

   { retornar a mesma posição após processar  }
   try
     DataSet.GotoBookmark(SavePlace);
     DataSet.FreeBookmark(SavePlace);
   except
     SavePlace := nil;
   end;
   Grade.SelectedRows.Clear;

   { Marcar o Item Header da Embalagem Especial }
   with emb_esp_itens do
   begin
     Close;
     ParamByName('cod_empresa').Value := vgCod_Empresa;
     ParamByName('num_prod_list').Value := Prod_Listnum_prod_list.AsInteger;
     ParamByName('seq_emb_esp').Value := SeqEmbEsp;
     Open;
     First;
     if (Caixa) then
     begin
        Edit;
        FieldByName('qtd_caixas').Value := 1;
        FieldByName('ies_caixa_fechada').Value := 'S';
        Post;
     end;
     Close;
   end;
end;


procedure TfrmProdList.btnAddEmbEspClick(Sender: TObject);
Var
  SeqEmbEsp : Integer;
begin
  { Incluir uma Nova Embalagem Especial na Production List }

  { Obter a próxima sequencia da Embalagem Especial }
  with ProxSeqEmbEsp do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := prod_list_itensnum_prod_list.AsInteger;
    Open;
    if (ProxSeqEmbEspseq_emb_esp.IsNull) then SeqEmbEsp := 1
                                         else SeqEmbEsp := ProxSeqEmbEspseq_emb_esp.AsInteger;
    Close;
  end;
  { Adicionar Itens a Embalagem Especial }
  AddItemEmbEsp(prod_list_itens, dbgProdListItens, SeqEmbEsp, True);
  { refresh tabelas }
  emb_esp.Close;
  emb_esp.Open;
  emb_esp.Locate('seq_emb_esp', SeqEmbEsp, [loPartialKey]);
  dbeQtdCaixas.SetFocus;
  prod_list_itens.Close;
  prod_list_itens.Open;
end;

procedure TfrmProdList.btnAddEmbEspItemClick(Sender: TObject);
Var
  SeqEmbEsp : Integer;
begin
  { Incluir Itens na Embalagem Especial já existente }

  { Apenas uma linha deverá estar selecionada }
  if dbgEmbEsp.SelectedRows.Count = 0 then Exit;
  if dbgEmbEsp.SelectedRows.Count > 1 then
  begin
    Application.MessageBox('Select only one line in Special Cartons grid', 'Erro', MB_OK);
    Exit;
  end;

  emb_esp.GotoBookmark(Pointer(dbgEmbEsp.SelectedRows.Items[0]));

  SeqEmbEsp := emb_espseq_emb_esp.AsInteger;

  { Adicionar Itens a Embalagem Especial }
  AddItemEmbEsp(prod_list_itens, dbgProdListItens, SeqEmbEsp, False);

  { refresh tabelas }
  emb_esp.Edit;
  emb_esp.Post;
  emb_esp.Close;
  emb_esp.Open;
  emb_esp.Locate('seq_emb_esp', SeqEmbEsp, [loPartialKey]);
  dbeQtdCaixas.SetFocus;
end;



procedure TfrmProdList.emb_espqtd_caixasValidate(Sender: TField);
begin
  emb_esppes_bruto.Value := emb_espqtd_caixas.AsInteger * emb_esppes_bruto_cx.AsFloat;
  emb_espvolume_caixa.Value := (emb_espaltura_cx.AsFloat * emb_esplargura_cx.AsFloat * emb_espcomprimento_cx.AsFloat) / 1000000 ;
  emb_espvol_total.Value := emb_espvolume_caixa.AsFloat * emb_espqtd_caixas.AsInteger;
end;

procedure TfrmProdList.btnDelEmbEspClick(Sender: TObject);
var
  i: Integer;
begin
  { Excluir a Embalagem Especial }
  if dbgEmbEsp.SelectedRows.Count > 0 then
    with dbgEmbEsp.DataSource.DataSet do
      for i := 0 to dbgEmbEsp.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(dbgEmbEsp.SelectedRows.Items[i]));
                                                                                 
        emb_esp_itens.First;
        while Not(emb_esp_itens.Eof) do
        begin
          emb_esp_itens.Edit;
          emb_esp_itens.FieldByName('ies_emb_esp').AsString := 'N';
          emb_esp_itens.FieldByName('seq_emb_esp').Clear;
          emb_esp_itens.Post;
          emb_esp_itens.Next;
        end;

      end;

   dbgEmbEsp.SelectedRows.Clear;

   { fechar tabelas }
   emb_esp_itens.Close;
   emb_esp.Close;
   prod_list_itens.Close;

   { calcular production list }
   with spr_calc_prodlist do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_prod_list').AsInteger := Prod_Listnum_prod_list.AsInteger;
     ExecProc;
     try
      Transaction.CommitRetaining;
     except
      Transaction.RollbackRetaining;
     end;
   end;

   { refresh Embalagem Especial }
   emb_esp.Open;
   prod_list_itens.Open;
end;

procedure TfrmProdList.btnDelEmbEspItemClick(Sender: TObject);
Var
 i : Integer;
begin
  { Excluir Itens da Embalagem Especial }
  if dbgEmbEspItens.SelectedRows.Count > 0 then
    with dbgEmbEspItens.DataSource.DataSet do
      for i := 0 to dbgEmbEspItens.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(dbgEmbEspItens.SelectedRows.Items[i]));
        { retirar o item da embalagem especial }
        emb_esp_itens.Edit;
        emb_esp_itens.FieldByName('ies_emb_esp').AsString := 'N';
        emb_esp_itens.FieldByName('seq_emb_esp').Clear;
        emb_esp_itens.FieldByName('qtd_caixas').Clear;
        emb_esp_itens.Post;
      end;

   dbgEmbEspItens.SelectedRows.Clear;

   emb_esp_itens.First;
   while Not(emb_esp_itens.Eof) do
   begin
     emb_esp_itens.Edit;
     emb_esp_itens.FieldByName('qtd_caixas').Clear;                                           
     emb_esp_itens.Post;
     emb_esp_itens.Next;
   end;

   { Marcar o 1º item do dataset como sendo o header da Embalagem Especial }
   with emb_esp_itens do
   begin
     Close;
     Open;
     if Not(IsEmpty) then
     begin
       First;
       Edit;
       FieldByName('qtd_caixas').Value := emb_espqtd_caixas.AsInteger;            
       FieldByName('pes_bruto_cx').Value := emb_esppes_bruto_cx.AsFloat;
       FieldByName('pes_bruto').Value := emb_esppes_bruto.AsFloat;
       FieldByName('altura_cx').Value := emb_espaltura_cx.AsFloat;
       FieldByName('largura_cx').Value := emb_esplargura_cx.AsFloat;
       FieldByName('comprimento_cx').Value := emb_espcomprimento_cx.AsFloat;
       FieldByName('volume_caixa').Value := emb_espvolume_caixa.AsFloat;
       FieldByName('vol_total').Value := emb_espvol_total.AsFloat;
       Post;
     end;
   end;

   { fechar tabelas }
   emb_esp_itens.Close;
   emb_esp.Close;
   prod_list_itens.Close;

   { calcular production list }
   with spr_calc_prodlist do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_prod_list').AsInteger := Prod_Listnum_prod_list.AsInteger;
     ExecProc;
     try
      Transaction.CommitRetaining;
     except
      Transaction.RollbackRetaining;
     end;
   end;

   { refresh Embalagem Especial }
   emb_esp.Open;
   prod_list_itens.Open;
end;


procedure TfrmProdList.btnConfirmEmbEspClick(Sender: TObject);
begin
  if (emb_esp.State in [dsEdit]) then emb_esp.Post;

end;

procedure TfrmProdList.btnCancelEmbEspClick(Sender: TObject);
begin
  if (emb_esp.State in [dsEdit]) then emb_esp.Cancel;
end;

procedure TfrmProdList.FormShow(Sender: TObject);
begin
  dbcFornecedores.SetFocus;
end;

end.
                                                                                                               

