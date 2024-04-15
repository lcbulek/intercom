unit SigIMP01_060;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, JvExControls, JvDBLookup, StdCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, IBStoredProc,
  JvExStdCtrls, JvDBCombobox, ExtCtrls, ComCtrls, Menus, Mask, DBCtrls,
  Buttons;

type

    TRomanear = record
                  Romanear : Double;
                  Nf : integer;
                end;

  TfrmProdList = class(TForm)
    Clientes: TIBQuery;
    Clientescod_cliente: TIBStringField;
    ds_Clientes: TDataSource;
    Fornecedores: TIBQuery;
    Fornecedorescod_fornecedor: TIntegerField;
    Fornecedoresraz_social_reduz: TIBStringField;
    ds_Fornecedores: TDataSource;
    qryNumProdList: TIBQuery;
    qryNumProdListnum_prod_list: TIntegerField;
    prod_list: TIBDataSet;
    prod_listcod_empresa: TSmallintField;
    prod_listcod_cliente: TIBStringField;
    prod_listcod_fornecedor: TSmallintField;
    prod_listnum_prod_list: TIntegerField;
    prod_listies_gerar: TIBStringField;
    prod_listies_pallets: TIBStringField;
    prod_listies_plan_default: TSmallintField;
    prod_list_itens: TIBDataSet;
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
    prod_list_itensdat_ini_producao: TDateField;
    prod_list_itensdat_inspecao: TDateField;
    prod_list_itensies_result_inspecao: TIBStringField;
    prod_list_itensetd_factory: TDateField;
    prod_list_itensdat_upd_etd: TDateField;
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
    prod_list_itensun_master: TIBBCDField;
    prod_list_itenspes_bruto_cx: TFloatField;
    prod_list_itensaltura_cx: TIBBCDField;
    prod_list_itenslargura_cx: TIBBCDField;
    prod_list_itenscomprimento_cx: TIBBCDField;
    prod_list_itensvolume_caixa: TIBBCDField;
    prod_list_itensies_caixa_fechada: TIBStringField;
    prod_list_itenspes_unitario: TFloatField;
    prod_list_itensseq_pallet: TIntegerField;
    prod_list_itensqtd_pallet: TIntegerField;
    prod_list_itenspes_bruto_pallet: TIBBCDField;
    prod_list_itenspes_liquido_pallet: TIBBCDField;
    prod_list_itenscomprimento_pallet: TIBBCDField;
    prod_list_itenslargura_pallet: TIBBCDField;
    prod_list_itensaltura_pallet: TIBBCDField;
    prod_list_itensvolume_pallet: TIBBCDField;
    prod_list_itenspes_pallet_vazio: TFloatField;
    prod_list_itensies_emb_esp: TIBStringField;
    prod_list_itensseq_emb_esp: TIntegerField;
    prod_list_itensies_erros: TIntegerField;
    prod_list_itensies_cadastro: TIBStringField;
    prod_list_itensies_sit_fat: TIBStringField;
    prod_list_itensnum_nota_fiscal: TIntegerField;
    prod_list_itensnum_seq_nf: TSmallintField;
    prod_list_itensies_pallet: TIBStringField;
    prod_list_itensmesclar: TIBStringField;
    dsProdListItens: TDataSource;
    spr_update_prodlist: TIBStoredProc;
    spr_prodlist_process: TIBStoredProc;
    prod_list_itensnum_sequencia_org: TIntegerField;
    prod_list_itenscalDenProduto: TStringField;
    prod_list_itenscalUn: TStringField;
    prod_list_itenstxt_status_producao: TIBStringField;
    prod_list_itensgrupo: TSmallintField;
    prod_list_itensseq_grupo: TSmallintField;
    Panel1: TPanel;
    Label1: TLabel;
    dbcClientes: TJvDBLookupCombo;
    Label2: TLabel;
    dbcFornecedores: TJvDBLookupCombo;
    emb_esp: TIBDataSet;
    emb_espseq_emb_esp: TIntegerField;
    emb_espnum_sequencia: TIntegerField;
    emb_espvol_total: TIBBCDField;
    emb_esppes_bruto: TIBBCDField;
    emb_esppes_liquido: TIBBCDField;
    emb_espqtd_caixas: TIntegerField;
    emb_espvolume_caixa: TIBBCDField;
    emb_espcomprimento_cx: TIBBCDField;
    emb_esplargura_cx: TIBBCDField;
    emb_espaltura_cx: TIBBCDField;
    dsemb_esp: TDataSource;
    ugEmbEsp: TJvDBUltimGrid;
    Label3: TLabel;
    emb_esp_itens: TIBDataSet;
    dsemb_esp_itens: TDataSource;
    emb_esp_itenscod_empresa: TSmallintField;
    emb_esp_itensnum_prod_list: TIntegerField;
    emb_esp_itensnum_sequencia: TIntegerField;
    emb_esp_itensseq_emb_esp: TIntegerField;
    emb_esp_itensnum_pedido_cli: TIBStringField;
    emb_esp_itenscod_produto: TIBStringField;
    emb_esp_itensqtd_romanear: TIBBCDField;
    emb_esp_itenspes_unitario: TFloatField;
    emb_espcod_empresa: TSmallintField;
    emb_espnum_prod_list: TIntegerField;
    emb_esp_itenscalDenProduto: TStringField;
    emb_esp_itenscalUN: TStringField;
    ugEmbEspItens: TJvDBUltimGrid;
    pallets: TIBDataSet;
    dsPallets: TDataSource;
    palletscod_empresa: TSmallintField;
    palletsnum_prod_list: TIntegerField;
    palletsnum_sequencia: TIntegerField;
    palletsies_pallet: TIBStringField;
    palletsseq_pallet: TIntegerField;
    palletspes_bruto_pallet: TIBBCDField;
    palletspes_liquido_pallet: TIBBCDField;
    palletsaltura_pallet: TIBBCDField;
    palletslargura_pallet: TIBBCDField;
    palletscomprimento_pallet: TIBBCDField;
    palletsvolume_pallet: TIBBCDField;
    ugPallets: TJvDBUltimGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ugPalletsCxs: TJvDBUltimGrid;
    palletsqtd_pallet: TIntegerField;
    dspallets_itens: TDataSource;
    pallets_itens: TIBDataSet;
    pallets_itenscod_empresa: TSmallintField;
    pallets_itensnum_prod_list: TIntegerField;
    pallets_itensnum_sequencia: TIntegerField;
    pallets_itensseq_pallet: TIntegerField;
    pallets_itensies_pallet: TIBStringField;
    pallets_itenscod_produto: TIBStringField;
    pallets_itensqtd_romanear: TIBBCDField;
    pallets_itensies_emb_esp: TIBStringField;
    pallets_itensqtd_caixas: TIntegerField;
    pallets_itensnum_pedido_cli: TIBStringField;
    pallets_itenscalDenProduto: TStringField;
    pallets_itenscalUN: TStringField;
    pallets_itensseq_emb_esp: TIntegerField;
    emb_esppes_bruto_cx: TFloatField;
    cbOcultar: TCheckBox;
    spr_prox_seq_embespnew_seq_emb_esp: TIntegerField;
    spr_prox_seq_embesp: TIBDataSet;
    spr_prodlist_criarembesp: TIBStoredProc;
    spr_prodlist_calc_embesp: TIBStoredProc;
    spr_prodlist_retirarembesp: TIBStoredProc;
    spr_prox_seq_pallet: TIBDataSet;
    spr_prox_seq_palletnew_seq_pallet: TIntegerField;
    spr_prodlist_criarpallet: TIBStoredProc;
    emb_espies_pallet: TIBStringField;
    emb_espseq_pallet: TIntegerField;
    spr_prodlist_addembesp_pallet: TIBStoredProc;
    spr_prodlist_calc_pallet: TIBStoredProc;
    spr_prodlist_retirarpallet: TIBStoredProc;
    spr_ordenar_seqembesp: TIBStoredProc;
    spr_ordenar_seqpallet: TIBStoredProc;
    Faturas: TIBDataSet;
    dsFaturas: TDataSource;
    pgItensProdList: TPageControl;
    tsItensPrl: TTabSheet;
    tsPackList: TTabSheet;
    dbcFaturas: TJvDBLookupCombo;
    Label7: TLabel;
    edNumFatura: TEdit;
    Label8: TLabel;
    dsPackingList: TDataSource;
    packing_list: TIBDataSet;
    prod_list_itensseq_pkl: TIntegerField;
    emb_espnum_fatura: TIBStringField;
    spr_prodlist_addembesp_pkl: TIBStoredProc;
    palletsnum_fatura: TIBStringField;
    spr_prodlist_addpallet_pkl: TIBStoredProc;
    Panel3: TPanel;
    btnCriarEmbEsp: TButton;
    btnAddItemEmbEsp: TButton;
    btnRetirarItemEmbEsp: TButton;
    bntCriarPallet: TButton;
    btnAddCxPallet: TButton;
    btnRemCxPallet: TButton;
    btnAddPcklst: TButton;
    btnRemPcklst: TButton;
    spr_prodlist_retirarpkl: TIBStoredProc;
    packing_listcod_empresa: TSmallintField;
    packing_listnum_prod_list: TIntegerField;
    packing_listnum_sequencia: TIntegerField;
    packing_listnum_fatura: TIBStringField;
    packing_listseq_pkl: TIntegerField;
    packing_listnum_pedido: TLargeintField;
    packing_listnum_seq_pedido: TSmallintField;
    packing_listnum_pedido_for: TIBStringField;
    packing_listnum_pedido_cli: TIBStringField;
    packing_listdat_emissao: TDateTimeField;
    packing_listcod_produto: TIBStringField;
    packing_listdat_ini_producao: TDateField;
    packing_listtxt_status_producao: TIBStringField;
    packing_listdat_inspecao: TDateField;
    packing_listies_result_inspecao: TIBStringField;
    packing_listqtd_romanear: TIBBCDField;
    packing_listqtd_confirmada: TIBBCDField;
    packing_listqtd_pendente: TIBBCDField;
    packing_listqtd_embarcada: TIBBCDField;
    packing_listpreco_real: TFloatField;
    packing_listvlr_liquido: TIBBCDField;
    packing_listpreco_esp: TFloatField;
    packing_listvlr_liquido_esp: TIBBCDField;
    packing_listvol_total: TIBBCDField;
    packing_listpes_bruto: TIBBCDField;
    packing_listpes_liquido: TIBBCDField;
    packing_listqtd_caixas: TIntegerField;
    packing_listun_master: TIBBCDField;
    packing_listpes_bruto_cx: TFloatField;
    packing_listaltura_cx: TIBBCDField;
    packing_listlargura_cx: TIBBCDField;
    packing_listcomprimento_cx: TIBBCDField;
    packing_listvolume_caixa: TIBBCDField;
    packing_listies_caixa_fechada: TIBStringField;
    packing_listpes_unitario: TFloatField;
    packing_listseq_pallet: TIntegerField;
    packing_listqtd_pallet: TIntegerField;
    packing_listpes_bruto_pallet: TIBBCDField;
    packing_listpes_liquido_pallet: TIBBCDField;
    packing_listcomprimento_pallet: TIBBCDField;
    packing_listlargura_pallet: TIBBCDField;
    packing_listaltura_pallet: TIBBCDField;
    packing_listvolume_pallet: TIBBCDField;
    packing_listpes_pallet_vazio: TFloatField;
    packing_listies_emb_esp: TIBStringField;
    packing_listseq_emb_esp: TIntegerField;
    packing_listies_erros: TIntegerField;
    packing_listies_cadastro: TIBStringField;
    packing_listies_sit_fat: TIBStringField;
    packing_listnum_nota_fiscal: TIntegerField;
    packing_listnum_seq_nf: TSmallintField;
    packing_listgrupo: TSmallintField;
    packing_listseq_grupo: TSmallintField;
    packing_listdat_upd_etd: TDateField;
    packing_listetd_factory: TDateField;
    packing_listies_pallet: TIBStringField;
    packing_listmesclar: TIBStringField;
    packing_listnum_sequencia_org: TIntegerField;
    packing_listcalDenProduto: TStringField;
    packing_listcalUNn: TStringField;
    spr_prodlist_additem_pkl: TIBStoredProc;
    spr_prodlist_reordenarpkl: TIBStoredProc;
    btnEstorno: TButton;
    spr_estorno_itemprodlist: TIBStoredProc;
    spr_prodlist_faturar: TIBStoredProc;
    qryTotaisFatura: TIBQuery;
    GroupBox1: TGroupBox;
    dsqryTotalsFatura: TDataSource;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    prod_list_itensvazio: TIBStringField;
    packing_listvazio: TIBStringField;
    spr_prodlist_cadastro: TIBStoredProc;
    qryProdListItens: TIBQuery;
    qryProdListItensqtd_romanear: TIBBCDField;
    qryProdListItensnum_nota_fiscal: TIntegerField;
    btnExcel: TButton;
    rgPallets: TRadioGroup;
    cbDescricao: TCheckBox;
    palletspes_pallet_vazio: TFloatField;
    spr_prodlist_statusprod: TIBStoredProc;
    btnFaturar: TBitBtn;
    Faturasnum_fatura: TIBStringField;
    get_situacao_fatura: TIBQuery;
    get_situacao_faturaies_sit_fat: TIBStringField;
    Label48: TLabel;
    edBuscaCodigo: TEdit;
    edBuscaDesc: TEdit;
    Label55: TLabel;
    Invoice: TIBDataSet;
    tsInvoice: TTabSheet;
    ugPackingList: TJvDBUltimGrid;
    ugProdListItens: TJvDBUltimGrid;
    dsInvoice: TDataSource;
    ugInvoice: TJvDBUltimGrid;
    Invoicenum_pedido_cli: TIBStringField;
    Invoicecod_produto: TIBStringField;
    Invoicenum_pedido_for: TIBStringField;
    Invoiceqtd_produto: TIBBCDField;
    InvoicecalDenProduto: TStringField;
    InvoicecalUN: TStringField;
    Faturasnum_nota_fiscal: TIntegerField;
    Invoicepreco_real: TFloatField;
    Invoicepreco_esp: TFloatField;
    Invoicevlr_liquido: TIBBCDField;
    Invoicevlr_liquido_esp: TIBBCDField;
    jvdbcResultInspecao: TJvDBComboBox;
    jvdbcResultInspecao1: TJvDBComboBox;
    emb_espseq_pkl: TIntegerField;
    palletsseq_pkl: TIntegerField;
    cbAbrirFatura: TCheckBox;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    DBEdit9: TDBEdit;
    qryTotaisFaturanum_fatura: TIBStringField;
    qryTotaisFaturavlr_liquido: TIBBCDField;
    qryTotaisFaturavlr_liquido_esp: TIBBCDField;
    qryTotaisFaturaqtd_caixas: TIntegerField;
    qryTotaisFaturaqtd_pallets: TIntegerField;
    qryTotaisFaturacxs_outpallets: TIntegerField;
    qryTotaisFaturavol_geral: TIBBCDField;
    qryTotaisFaturapes_liq_geral: TIBBCDField;
    qryTotaisFaturapes_bru_geral: TIBBCDField;
    spr_prodlist_mudarseqs: TIBStoredProc;

    procedure SalvarMarcador;
    procedure RetornarMarcador;

    function ProxNumProdList: Integer;
    function GetNumProdList(Cliente: String; Fornecedor: Integer): Integer;
    function GetRomanear(NumProdList, Seq: integer): TRomanear;
    function SituacaoFatura: String;
    procedure EmbEspPalletSql(NumFatura: String);
    procedure RefreshTabelas;
    procedure UpdateProdlist(Num_ProdList: Integer);
    procedure RomanearProdlist(Num_ProdList, NumSeqProdList : Integer);
    procedure DataSetCalcFields(DataSet: TDataSet);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure dbcFornecedoresChange(Sender: TObject);
    procedure prod_listAfterPost(DataSet: TDataSet);
    procedure prod_list_itensAfterPost(DataSet: TDataSet);
    procedure prod_list_itensCalcFields(DataSet: TDataSet);
    procedure prod_list_itensies_result_inspecaoSetText(Sender: TField;
      const Text: String);
    procedure prod_list_itensies_result_inspecaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ugProdListItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure emb_esp_itensCalcFields(DataSet: TDataSet);
    procedure emb_espAfterScroll(DataSet: TDataSet);
    procedure pallets_itensCalcFields(DataSet: TDataSet);
    procedure palletsAfterScroll(DataSet: TDataSet);
    procedure cbOcultarClick(Sender: TObject);
    procedure btnCriarEmbEspClick(Sender: TObject);
    procedure btnAddItemEmbEspClick(Sender: TObject);
    procedure btnRetirarItemEmbEspClick(Sender: TObject);
    procedure bntCriarPalletClick(Sender: TObject);
    procedure btnAddCxPalletClick(Sender: TObject);
    procedure btnRemCxPalletClick(Sender: TObject);
    procedure ugPalletsCxsDblClick(Sender: TObject);
    procedure emb_espAfterPost(DataSet: TDataSet);
    procedure dbcFaturasChange(Sender: TObject);
    procedure btnAddPcklstClick(Sender: TObject);
    procedure btnRemPcklstClick(Sender: TObject);
    procedure palletsAfterPost(DataSet: TDataSet);
    procedure btnEstornoClick(Sender: TObject);
    procedure Estorno(Grade: TJvDBUltimGrid);
    procedure prod_list_itensAfterScroll(DataSet: TDataSet);
    procedure btnFaturarClick(Sender: TObject);
    procedure prod_list_itensun_masterValidate(Sender: TField);
    procedure prod_list_itenspes_unitarioValidate(Sender: TField);
    procedure prod_list_itenspes_bruto_cxValidate(Sender: TField);
    procedure prod_list_itensaltura_cxValidate(Sender: TField);
    procedure prod_list_itensqtd_romanearValidate(Sender: TField);
    procedure btnExcelClick(Sender: TObject);
    procedure cbDescricaoClick(Sender: TObject);
    procedure pgItensProdListChange(Sender: TObject);
    procedure palletsqtd_palletValidate(Sender: TField);
    procedure emb_espqtd_caixasValidate(Sender: TField);
    procedure edNumFaturaExit(Sender: TObject);
    procedure dsPackingListStateChange(Sender: TObject);
    procedure ugEmbEspKeyPress(Sender: TObject; var Key: Char);
    procedure edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Enter(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure ugPalletsKeyPress(Sender: TObject; var Key: Char);
    procedure ugPalletsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ugEmbEspMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure prod_list_itensBeforePost(DataSet: TDataSet);
    procedure ugProdListItensMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdList: TfrmProdList;
  NumProdList : integer;
  SeqEmbEsp : integer;
  SelSeqEmbEsp : integer;
  SelSeqPallet : integer;
  SeqPallet : integer;
  SeqPkl    : integer;
  bkSeq, bkItemProdList, bkEmbEsp, bkPackList, bkPallet : TBookmark;
  fFaturar : boolean;

implementation

uses unConnection, unMenuCompl, SigIMP01_007, SigIMP01_045, SigIMP01_091;

{$R *.dfm}

procedure TfrmProdList.SalvarMarcador;
begin
  bkItemProdList := prod_list_itens.GetBookMark;
  bkEmbEsp := emb_esp.GetBookmark;
  bkPallet := pallets.GetBookmark;
  bkPackList := packing_list.GetBookmark;
end;


procedure TfrmProdList.RetornarMarcador;
begin
  if Assigned(bkItemProdList) then
  begin
     try
       prod_list_itens.GotoBookmark(bkItemProdList);
       bkItemProdList := nil;
     except
       bkItemProdList := nil;
     end;
  end;

  if Assigned(bkEmbEsp) then
  begin
     try
       emb_esp.GotoBookmark(bkEmbEsp);
       bkEmbEsp := nil;
     except
       bkEmbEsp := nil;
     end;
  end;

  if Assigned(bkPallet) then
  begin
     try
       pallets.GotoBookmark(bkPallet);
       bkPallet := nil;
     except
       bkPallet := nil;
     end;
  end;

  if Assigned(bkPackList) then
  begin
     try
       packing_list.GotoBookmark(bkPackList);
       bkPackList := nil;
     except
       bkPackList := nil;
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
  (* Procurar ProdList do Cliente/Fornecedor *)
  (* Se não existe criar a ProdList          *)
  (* Retornar o número da ProdList           *)

  with prod_list do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_cliente').Value := Clientescod_cliente.AsString;
    ParamByName('cod_fornecedor').Value := Fornecedorescod_fornecedor.AsInteger;
    Open;
    if (IsEmpty) then
    begin
      Append;
      FieldByName('cod_empresa').Value := vgCod_Empresa;
      FieldByName('cod_cliente').Value := Clientescod_cliente.AsString;
      FieldByName('cod_fornecedor').Value := Fornecedorescod_fornecedor.AsInteger;
      FieldByName('num_prod_list').Value := ProxNumProdList;
      FieldByName('ies_gerar').Clear;
      FieldByName('ies_pallets').AsString := 'N';
      Post;
    end else
    begin
      if FieldByName('ies_pallets').AsString = 'S' then rgPallets.ItemIndex := 0
                                                   else rgPallets.ItemIndex := 1;
    end;
    Result := FieldByName('num_prod_list').AsInteger;
  end;
end;


procedure TfrmProdList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (btnFaturar.Enabled) then btnFaturarClick(Sender);
   dmProdList.FecharExcel;
   Action := caFree;
   frmProdList := nil;
end;

procedure TfrmProdList.FormCreate(Sender: TObject);
begin
  with Clientes do
  begin
    Open;
  end;
  Fornecedores.Open;

  Application.CreateForm(TdmProdList, dmProdList);
  fFaturar := False;
end;

procedure TfrmProdList.dbcClientesChange(Sender: TObject);
begin
  with Fornecedores do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    Open;
  end;
  dbcFornecedores.ClearValue;
end;

procedure TfrmProdList.EmbEspPalletSql(NumFatura: String);
begin
  { Embalagens Especiais }
  with emb_esp do
  begin
    if State in [dsEdit] then Post;
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('select "cod_empresa", "num_prod_list" , "num_sequencia",  "seq_emb_esp",   ');
    SelectSQL.Add('"vol_total", "pes_bruto", "pes_liquido", "qtd_caixas", "pes_bruto_cx",     ');
    SelectSQL.Add('"volume_caixa", "comprimento_cx", "largura_cx", "altura_cx", "ies_pallet", ');
    SelectSQL.Add('"seq_pallet", "num_fatura", "seq_pkl"                                      ');
    SelectSQL.Add('from "prod_list_itens"                                                     ');
    SelectSQL.Add('where "cod_empresa" = :cod_empresa                                         ');
    SelectSQL.Add('  and "num_prod_list" = :num_prod_list                                     ');

    if Length(NumFatura) > 0 then
    begin
       SelectSQL.Add('  and "num_fatura" = :num_fatura                                        ');
    end else
       SelectSQL.Add('  and "num_fatura" is null                                              ');

    SelectSQL.Add('  and "ies_emb_esp" = ''S''                                                ');
    SelectSQL.Add('  and "qtd_caixas" > 0                                                     ');
    SelectSQL.Add('order by "seq_emb_esp"                                                     ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;

    if Length(NumFatura) > 0 then
    begin
       ParamByName('num_fatura').AsString := NumFatura;
    end;

    Open;
  end;

  { Itens Embalagem Especial }
  with emb_esp_itens do
  begin
    if State in [dsEdit] then Post;
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('seq_emb_esp').AsInteger := emb_esp.FieldByName('seq_emb_esp').AsInteger;
    Open;
  end;

  { Pallets }
  with pallets do
  begin
    if State in [dsEdit] then Post;
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('select "cod_empresa", "num_prod_list", "num_sequencia",  "ies_pallet",          ');
    SelectSQL.Add('       "seq_pallet", "num_fatura",  "qtd_pallet", "pes_bruto_pallet",           ');
    SelectSQL.Add('"pes_liquido_pallet",  "altura_pallet", "largura_pallet", "comprimento_pallet", ');
    SelectSQL.Add('    "volume_pallet", "pes_pallet_vazio", "seq_pkl"                              ');
    SelectSQL.Add('  from "prod_list_itens"                                                        ');
    SelectSQL.Add(' where "cod_empresa" = :cod_empresa                                             ');
    SelectSQL.Add('   and "num_prod_list" = :num_prod_list                                         ');

    if Length(NumFatura) > 0 then
    begin
       SelectSQL.Add('  and "num_fatura" = :num_fatura                                           ');
    end else
       SelectSQL.Add('  and "num_fatura" is null                                           ');

    SelectSQL.Add('   and "ies_pallet" = ''S''                                                     ');
    SelectSQL.Add('   and "qtd_pallet" > 0                                                         ');
    SelectSQL.Add(' order by "seq_pallet"                                                          ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;

    if Length(NumFatura) > 0 then
    begin
       ParamByName('num_fatura').AsString := NumFatura;
    end;

    Open;

    { Indica rm rgPallets se colunas de pallets serão mostradas no Excel }
    if (IsEmpty) then rgPallets.ItemIndex := 1
                 else rgPallets.ItemIndex := 0;

  end;

  { Itens dos Pallets }
  with pallets_itens do
  begin
    if State in [dsEdit] then Post;
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('seq_pallet').AsInteger := pallets.FieldByName('seq_pallet').AsInteger;
    Open;
  end;
end;

procedure TfrmProdList.RefreshTabelas;
Var
   NumFatura: String;
begin

  if pgItensProdList.ActivePage = tsItensPrl then NumFatura := '';
  if pgItensProdList.ActivePage = tsInvoice then NumFatura := '';
  if pgItensProdList.ActivePage = tsPackList then NumFatura := trim(edNumFatura.Text);

  { itens da production list }
  with prod_list_itens do
  begin
    if State in [dsEdit] then Post;
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    Open;
  end;

  { Packing List }
  with packing_list do
  begin
    if State in [dsEdit] then Post;
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
    Open;
  end;

  EmbEspPalletSql(NumFatura);

  { Faturas }
  with Faturas do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    Open;
  end;

  { Totais Faturas }
  with qryTotaisFatura do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
    Open;
  end;

  { Invoice }
  with Invoice do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
    Open;
  end;
  ugEmbEsp.Refresh;
  ugPallets.Refresh;
end;

procedure TfrmProdList.UpdateProdlist(Num_ProdList: Integer);
begin
   { inicializar/atualizar Prod List Itens }
   with spr_update_prodlist do
   begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prodlist').AsInteger := Num_ProdList;

    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
   end;
end;

procedure TfrmProdList.RomanearProdlist(Num_ProdList, NumSeqProdList : Integer);
begin
   { Processar a Qtde Romanear na ProdList  }
   with spr_prodlist_process do
   begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prodlist').AsInteger := Num_ProdList;
    ParamByName('num_seq_prodlist').AsInteger := NumSeqProdList;

    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
   end;
end;

procedure TfrmProdList.dbcFornecedoresChange(Sender: TObject);
begin
  edNumFatura.Clear;
  NumProdList := GetNumProdList(Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger);
  frmProdList.Caption := 'Production List #' + IntToStr(NumProdList);
  UpdateProdlist(NumProdList);
  pgItensProdList.ActivePage := tsItensPrl;
  RefreshTabelas;
  ugProdListItens.SetFocus;
end;

procedure TfrmProdList.prod_listAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
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

   { Processar a alteração de cadastro do produto }
   with spr_prodlist_cadastro do
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

   { Chamar spr_prodlist_statusprod }
   with spr_prodlist_statusprod do
   begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('num_sequencia').AsInteger := DataSet.FieldByName('num_sequencia').AsInteger;

    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
   end;

   SalvarMarcador;

   RomanearProdlist(NumProdList, DataSet.FieldByName('num_sequencia').AsInteger);

   RefreshTabelas;

   RetornarMarcador;

end;

procedure TfrmProdList.DataSetCalcFields(DataSet: TDataSet);
begin
  if DataSet.FieldByName('cod_produto').IsNull then Exit;

  with ProdutoDet(DataSet.FieldByName('cod_produto').AsString,
                  prod_list.FieldByName('cod_cliente').AsString,
                  prod_list.FieldByName('cod_fornecedor').AsInteger) do
  begin
    { Como default mostra a descrição em Inglês }
    if (cbDescricao.Checked) then DataSet.FieldByName('calDenProduto').AsString := Portugues
                             else DataSet.FieldByName('calDenProduto').AsString := Ingles;

    DataSet.FieldByName('calUn').AsString := Un;
  end;
end;


procedure TfrmProdList.prod_list_itensCalcFields(DataSet: TDataSet);
begin
  DataSetCalcFields(DataSet);
end;

procedure TfrmProdList.prod_list_itensies_result_inspecaoSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := GetResultInspecao(Text);
end;

procedure TfrmProdList.prod_list_itensies_result_inspecaoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := SetResultInspecao(Sender.AsString);
end;

procedure TfrmProdList.ugProdListItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  { Indicar os itens da Caixa Especial selecionado na grade Caixas Especiais }
  if (SelSeqEmbEsp > 0) then
  begin
     if (TDBGrid(Sender).DataSource.DataSet.FieldByName('seq_emb_esp').AsInteger = SelSeqEmbEsp) then
     begin
        if (Column.Index in [0..30]) then
        begin
          TDBGrid(Sender).Canvas.Font.Color  := clWindowText;
          TDBGrid(Sender).Canvas.Brush.Color := clYellow;
        end;
     end;
  end;

  { Indicar os itens do Pallet selecionado na grade Pallets }
  if (SelSeqPallet > 0) then
  begin
     if (TDBGrid(Sender).DataSource.DataSet.FieldByName('seq_pallet').AsInteger = SelSeqPallet) then
     begin
        if (Column.Index in [0..30]) then
        begin
          TDBGrid(Sender).Canvas.Font.Color  := clWindowText;
          TDBGrid(Sender).Canvas.Brush.Color := clAqua;
        end;
     end;
  end;

  TDBGrid(Sender).Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, Datacol, Column, State);
end;

procedure TfrmProdList.FormShow(Sender: TObject);
begin
  dbcClientes.SetFocus;
  pgItensProdList.ActivePage := tsItensPrl;
  cbOcultarClick(nil);

  SelSeqEmbEsp := 0;
  SelSeqPallet := 0;
end;

procedure TfrmProdList.emb_esp_itensCalcFields(DataSet: TDataSet);
begin
  DataSetCalcFields(DataSet);
end;

procedure TfrmProdList.emb_espAfterScroll(DataSet: TDataSet);
begin
  (* Abrir Embalagem Especial Itens *)
  with emb_esp_itens do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('seq_emb_esp').AsInteger := DataSet.FieldByName('seq_emb_esp').AsInteger;
    Open;
  end;
  SeqEmbEsp := DataSet.FieldByName('seq_emb_esp').AsInteger;
end;

procedure TfrmProdList.pallets_itensCalcFields(DataSet: TDataSet);
begin
  {  }
  if (DataSet.FieldByName('ies_emb_esp').AsString = 'N') then
     DataSetCalcFields(DataSet)
  else begin
     DataSet.FieldByName('cod_produto').Clear;
     DataSet.FieldByName('qtd_romanear').Clear;
     DataSet.FieldByName('calDenProduto').Value := 'CAIXA ESPECIAL: ' + DataSet.FieldByName('seq_emb_esp').AsString;
  end;

end;

procedure TfrmProdList.palletsAfterScroll(DataSet: TDataSet);
begin
  (* Abrir Pallets Itens *)
  with pallets_itens do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('seq_pallet').AsInteger := DataSet.FieldByName('seq_pallet').AsInteger;
    Open;
  end;
  SeqPallet := DataSet.FieldByName('seq_pallet').AsInteger;
end;

procedure TfrmProdList.cbOcultarClick(Sender: TObject);
Var
  c : smallint;
begin
  with ugProdListItens do
  begin
    for c := 5 to 10 do
      Columns[c].Visible := not(cbOcultar.Checked);
  end;

  with ugPackingList do
  begin
    for c := 3 to 8 do
      Columns[c].Visible := not(cbOcultar.Checked);
  end;

end;

procedure TfrmProdList.btnCriarEmbEspClick(Sender: TObject);
var
  i : integer;
  SeqEmbEsp : integer;
begin
  { Criar Embalagem Especial }

  { obter Prox SeqEmbEsp }
  with spr_prox_seq_embesp do
  begin
    close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    Open;
    SeqEmbEsp := FieldByName('new_seq_emb_esp').AsInteger;   // SeqEmbEsp var local
    Close;
  end;

  { Selecionar Itens da grade ProdListItens }
  ugProdListItens.DataSource.DataSet.DisableControls;

  if ugProdListItens.SelectedRows.Count > 0 then
  begin
    with ugProdListItens.DataSource.DataSet do
      for i := 0 to ugProdListItens.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugProdListItens.SelectedRows.Items[i]));

        { Adicionar itens que não façam parte de uma EmbEsp }
        if (FieldByName('ies_emb_esp').AsString = 'N') then
        begin
          Edit;
          FieldByName('ies_emb_esp').AsString := 'S';
          FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
          Post;
        end;
      end;
  end;

  with TIBDataSet(ugProdListItens.DataSource.DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
		Transaction.RollbackRetaining;
  end;

  { Chamar spr_prodlist_criarembesp }
  with spr_prodlist_criarembesp do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('seq_emb_esp').AsInteger := SeqEmbEsp;

    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  ugProdListItens.DataSource.DataSet.EnableControls;
  ugProdListItens.UnselectAll;

  RefreshTabelas;

end;

procedure TfrmProdList.btnAddItemEmbEspClick(Sender: TObject);
var
  i : integer;
begin
  { Adicionar Item na Embalagem Especial }

  { selecionar SeqEmbEsp da grade EmbEsp }
  ugEmbEsp.DataSource.DataSet.DisableControls;

  with ugEmbEsp.DataSource.DataSet do
  begin
    if ugEmbEsp.SelectedRows.Count = 0 then
    begin
        ugEmbEsp.DataSource.DataSet.EnableControls;
        Exit;
    end;
    try
      GotoBookmark(Pointer(ugEmbEsp.SelectedRows.Items[0]));
      SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
    finally
      ugEmbEsp.DataSource.DataSet.EnableControls;
    end;
  end;

  SalvarMarcador;

  { Selecionar Itens da grade ProdListItens }
  ugProdListItens.DataSource.DataSet.DisableControls;

  if ugProdListItens.SelectedRows.Count > 0 then
  begin
    with ugProdListItens.DataSource.DataSet do
      for i := 0 to ugProdListItens.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugProdListItens.SelectedRows.Items[i]));
        { Adicionar itens que não façam parte de uma EmbEsp }
        if (FieldByName('ies_emb_esp').AsString = 'N') then
        begin
          Edit;
          FieldByName('ies_emb_esp').AsString := 'S';
          FieldByName('seq_emb_esp').AsInteger := SeqEmbEsp;
          FieldByName('qtd_caixas').Clear;
          Post;
        end;
      end;

    with TIBDataSet(ugProdListItens.DataSource.DataSet) do
     try
        ApplyUpdates;
        Transaction.CommitRetaining;
     except
       Transaction.RollbackRetaining;
    end;
  end;

  { Chamar spr_prodlist_calc_embesp }
  with spr_prodlist_calc_embesp do
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

  ugProdListItens.DataSource.DataSet.EnableControls;
  ugEmbEsp.DataSource.DataSet.EnableControls;

  RefreshTabelas;

  ugProdListItens.UnselectAll;
  ugEmbEsp.UnselectAll;

  RetornarMarcador;

end;

procedure TfrmProdList.btnRetirarItemEmbEspClick(Sender: TObject);
Var
  i : integer;
begin

  SalvarMarcador;

  { selecionar Itens da grade EmbEspItens }
  ugEmbEspItens.DataSource.DataSet.DisableControls;

  if ugEmbEspItens.SelectedRows.Count > 0 then
  begin
    with ugEmbEspItens.DataSource.DataSet do
      for i := 0 to ugEmbEspItens.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugEmbEspItens.SelectedRows.Items[i]));
        { Chamar spr_prodlist_retirarembesp }
        with spr_prodlist_retirarembesp do
        begin
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_prod_list').AsInteger := NumProdList;
          ParamByName('num_sequencia').AsInteger := emb_esp_itensnum_sequencia.AsInteger;
          ParamByName('seq_emb_esp').AsInteger := SeqEmbEsp;

          ExecProc;
          try
           Transaction.CommitRetaining;
          except
           Transaction.RollbackRetaining;
          end;
        end;
      end;
  end;

  ugEmbEspItens.DataSource.DataSet.EnableControls;

  { Chamar spr_ordenar_seqembesp }
  with spr_ordenar_seqembesp do
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

  RefreshTabelas;

  ugEmbEspItens.UnselectAll;

  RetornarMarcador;

end;

procedure TfrmProdList.bntCriarPalletClick(Sender: TObject);
Var
  i : integer;
  SeqPallet : integer;
begin
  { Criar Pallet }

  { obter Prox SeqPallet }
  with spr_prox_seq_pallet do
  begin
    close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    Open;
    SeqPallet := FieldByName('new_seq_pallet').AsInteger;   // SeqPallet var local
    Close;
  end;

  { Adicionar Itens com Embalagens Standard ao Pallet }
  { selecionados na grade ProdListItens               }

  { Selecionar Itens da grade ProdListItens }
  ugProdListItens.DataSource.DataSet.DisableControls;

  if ugProdListItens.SelectedRows.Count > 0 then
  begin
    with ugProdListItens.DataSource.DataSet do
      for i := 0 to ugProdListItens.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugProdListItens.SelectedRows.Items[i]));

        { Adicionar itens com Embalagem Standard e fora dos Pallets }
        if ((FieldByName('ies_emb_esp').AsString = 'N') and
            (FieldByName('ies_pallet').AsString = 'N')) then
        begin
          Edit;
          FieldByName('ies_pallet').AsString := 'S';
          FieldByName('seq_pallet').AsInteger := SeqPallet;
          Post;
        end;
      end;

      with TIBDataSet(ugProdListItens.DataSource.DataSet) do
       try
          ApplyUpdates;
          Transaction.CommitRetaining;
       except
         Transaction.RollbackRetaining;
      end;
  end;

  ugProdListItens.DataSource.DataSet.EnableControls;

  { Adicionar Itens da Embalagem Especial ao Pallet }

  { Selecionar Embalagens Especiais na grade EmbEsp }
   ugEmbEsp.DataSource.DataSet.DisableControls;

   if ugEmbEsp.SelectedRows.Count > 0 then
   begin
     with ugEmbEsp.DataSource.DataSet do
       for i := 0 to ugEmbEsp.SelectedRows.Count-1 do
       begin
         GotoBookmark(Pointer(ugEmbEsp.SelectedRows.Items[i]));

         { Adicionar Embalagem Especial ao Pallet }
         { caso ainda não pertença a um pallet    }
         if (FieldByName('ies_pallet').AsString = 'N') then
         begin
           { chamar spr_prodlist_addembesp_pallet }
           with spr_prodlist_addembesp_pallet do
           begin
             ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
             ParamByName('num_prod_list').AsInteger := NumProdList;
             ParamByName('seq_emb_esp').AsInteger :=  ugEmbEsp.DataSource.DataSet.FieldByName('seq_emb_esp').AsInteger;
             ParamByName('seq_pallet').AsInteger := SeqPallet;

             ExecProc;
             try
               Transaction.CommitRetaining;
             except
               Transaction.RollbackRetaining;
           end;
         end;
       end;
     end; { with ugEmbEsp.DataSource.DataSet }
   end; { if ugEmbEsp.SelectedRows.Count > 0 }

   ugEmbEsp.DataSource.DataSet.EnableControls;

  { Chamar spr_prodlist_criarpallet }
  with spr_prodlist_criarpallet do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('seq_pallet').AsInteger := SeqPallet;

    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;

  SalvarMarcador;

  RefreshTabelas;

  RetornarMarcador;

  { Refresh dados na grade Pallet e ItensPallets }
  with pallets do
  begin
    Close;
    Open;
    Last;
  end;

  ugProdListItens.UnselectAll;
  ugEmbEsp.UnselectAll;



end;

procedure TfrmProdList.btnAddCxPalletClick(Sender: TObject);
Var
  i : integer;
begin
  { Adicionar Caixas ao Pallet }

  { selecionar SeqPallet da grade Pallets }
  ugPallets.DataSource.DataSet.DisableControls;

  with ugPallets.DataSource.DataSet do
  begin
    if ugPallets.SelectedRows.Count = 0 then
    begin
        ugPallets.DataSource.DataSet.EnableControls;
        Exit;
    end;

    try
      GotoBookmark(Pointer(ugPallets.SelectedRows.Items[0]));
      SeqPallet := FieldByName('seq_pallet').AsInteger;
    finally
      ugPallets.DataSource.DataSet.EnableControls;
    end;
  end;

  SalvarMarcador;

  { Adicionar Itens com Embalagens Standard ao Pallet }
  { selecionados na grade ProdListItens               }

  { Selecionar Itens da grade ProdListItens }
  ugProdListItens.DataSource.DataSet.DisableControls;

  if ugProdListItens.SelectedRows.Count > 0 then
  begin
    with ugProdListItens.DataSource.DataSet do
      for i := 0 to ugProdListItens.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugProdListItens.SelectedRows.Items[i]));

        { Adicionar itens com Embalagem Standard e fora dos Pallets }
        if ((FieldByName('ies_emb_esp').AsString = 'N') and
            (FieldByName('ies_pallet').AsString = 'N')) then
        begin
          Edit;
          FieldByName('ies_pallet').AsString := 'S';
          FieldByName('seq_pallet').AsInteger := SeqPallet;
          Post;
        end;
      end;

      with TIBDataSet(ugProdListItens.DataSource.DataSet) do
      try
         ApplyUpdates;
         Transaction.CommitRetaining;
      except
        Transaction.RollbackRetaining;
      end;
  end;

  ugProdListItens.DataSource.DataSet.EnableControls;


  { Adicionar Itens da Embalagem Especial ao Pallet }

  { Selecionar Embalagens Especiais na grade EmbEsp }
  ugEmbEsp.DataSource.DataSet.DisableControls;

  if ugEmbEsp.SelectedRows.Count > 0 then
  begin
   with ugEmbEsp.DataSource.DataSet do
     for i := 0 to ugEmbEsp.SelectedRows.Count-1 do
     begin
       GotoBookmark(Pointer(ugEmbEsp.SelectedRows.Items[i]));
        { Adicionar Embalagem Especial ao Pallet }
       { caso ainda não pertença a um pallet    }
       if (FieldByName('ies_pallet').AsString = 'N') then
       begin
         { chamar spr_prodlist_addembesp_pallet }
         with spr_prodlist_addembesp_pallet do
         begin
           ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
           ParamByName('num_prod_list').AsInteger := NumProdList;
           ParamByName('seq_emb_esp').AsInteger :=  emb_espseq_emb_esp.AsInteger;
           ParamByName('seq_pallet').AsInteger := SeqPallet;

           ExecProc;
           try
             Transaction.CommitRetaining;
           except
             Transaction.RollbackRetaining;
         end;
       end;
     end;
   end; { with ugEmbEsp.DataSource.DataSet }
  end; { if ugEmbEsp.SelectedRows.Count > 0 }

  ugEmbEsp.DataSource.DataSet.EnableControls;

  { Chamar spr_prodlist_criarpallet }
  with spr_prodlist_calc_pallet do
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

  //RefreshTabelas;

  ugProdListItens.UnselectAll;
  ugEmbEsp.UnselectAll;

  RetornarMarcador;
end;

procedure TfrmProdList.btnRemCxPalletClick(Sender: TObject);
Var
  i : integer;
begin

  SalvarMarcador;

  { selecionar Caixas (STD/ESP) da grade PalletCxs }
  ugPalletsCxs.DataSource.DataSet.DisableControls;

  if ugPalletsCxs.SelectedRows.Count > 0 then
  begin
    with ugPalletsCxs.DataSource.DataSet do
      for i := 0 to ugPalletsCxs.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugPalletsCxs.SelectedRows.Items[i]));
        { Chamar spr_prodlist_retirarpallet }
        with spr_prodlist_retirarpallet do
        begin
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_prod_list').AsInteger := NumProdList;
          ParamByName('num_sequencia').AsInteger := pallets_itensnum_sequencia.AsInteger;
          ParamByName('seq_pallet').AsInteger := SeqPallet;

          ExecProc;
          try
           Transaction.CommitRetaining;
          except
           Transaction.RollbackRetaining;
          end;
        end;
      end;
  end;

  ugPalletsCxs.DataSource.DataSet.EnableControls;

  { Chamar spr_ordenar_seqpallet }
  with spr_ordenar_seqpallet do
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

  RefreshTabelas;

  RetornarMarcador;
end;

procedure TfrmProdList.ugPalletsCxsDblClick(Sender: TObject);
begin
  { Identificar duplo-click numa célula de um campo específico }
  If (TDBGrid(Sender).SelectedField.DisplayName = 'CE') then
  begin
     ugEmbEsp.UnselectAll;
     emb_esp.Locate('seq_emb_esp', pallets_itensseq_emb_esp.AsString, []);
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

   { Chamar spr_prodlist_calc_embesp }
   with spr_prodlist_calc_embesp do
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

   { Chamar spr_prodlist_calc_pallet }
   with spr_prodlist_calc_pallet do
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

   RefreshTabelas;

end;

procedure TfrmProdList.dbcFaturasChange(Sender: TObject);
begin
  (* Filtrar faturas nas grades PackingList, Caixas Especiais e Pallets                       *)
  (* Caso seja selecionada <Não Selecionada> mostrar apenas itens da prodlist sem Fatura      *)
  (* Quando selecionada uma Fatura, mostrar Caixas Especiais e Pallets da Fatura e sem fatura *)
  (* Na Packing List mostrar apenas itens da Fatura selecionada                               *)

  if (dbcFaturas.Value <> 'NS') then // Fatura Selecionada
  begin
     edNumFatura.Text := Faturasnum_fatura.AsString;

     pgItensProdList.ActivePage := tsPackList;
     pgItensProdListChange(Sender);
     btnRemPcklst.Enabled := True;
     btnFaturar.Enabled := True;
  end;

  if (dbcFaturas.Value = 'NS') then // Fatura Não Selecionada
  begin
     edNumFatura.Clear;

     pgItensProdList.ActivePage := tsItensPrl;
     pgItensProdListChange(Sender);
     btnAddPcklst.Enabled :=  False;
     btnRemPcklst.Enabled := False;
     btnFaturar.Enabled := False;
  end;

  RefreshTabelas;

end;

procedure TfrmProdList.btnAddPcklstClick(Sender: TObject);
Var
 i : integer;
begin
  { Checar se NumFatura foi digitado }
  if (trim(edNumFatura.Text)) = '' then Exit;

  SeqPkl := 0;  // indica uma adição no final da Packing List

  { Item selecionado na grade PackingList: indica uma inserção na posição da sequencia apontada pela SeqPkl selecionada }
  ugPackingList.DataSource.DataSet.DisableControls;

  if ugPackingList.SelectedRows.Count > 0 then
  begin
    with ugPackingList.DataSource.DataSet do
    begin
        GotoBookmark(Pointer(ugPackingList.SelectedRows.Items[0]));
        SeqPkl := packing_listseq_pkl.AsInteger;
    end;
  end;

  ugPackingList.DataSource.DataSet.EnableControls;

  SalvarMarcador;

  { Adicionar Itens com Embalagens Standard a Packing List }
  { selecionados na grade ProdListItens                    }

  { Selecionar Itens da grade ProdListItens }
  ugProdListItens.DataSource.DataSet.DisableControls;

  if ugProdListItens.SelectedRows.Count > 0 then
  begin
    with ugProdListItens.DataSource.DataSet do
      for i := 0 to ugProdListItens.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugProdListItens.SelectedRows.Items[i]));

        { Adicionar apenas itens com Embalagem Standard }
        if ((FieldByName('ies_emb_esp').AsString = 'N') and
            (FieldByName('ies_pallet').AsString  = 'N') and
            (FieldByName('num_fatura').AsString  = '')) then
        begin
          { chamar spr_prodlist_additem_pkl }
          with spr_prodlist_additem_pkl do
          begin
            ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
            ParamByName('num_prod_list').AsInteger := NumProdList;
            ParamByName('num_sequencia').AsInteger :=  prod_list_itensnum_sequencia.AsInteger;
            ParamByName('seq_pkl').AsInteger := SeqPkl;
            ParamByName('num_fatura').AsString := trim(edNumFatura.Text);

            ExecProc;
            try
              Transaction.CommitRetaining;
            except
              Transaction.RollbackRetaining;
          end;
          if (SeqPkl > 0) then
             inc(SeqPkl);
        end;
      end;
    end;
  end;

  ugProdListItens.DataSource.DataSet.EnableControls;


  { Adicionar Caixas Especiais a Packing List }
  { selecionados na grade EmbEsp }

  { Selecionar Caixas Especiais na grade EmbEsp }
  ugEmbEsp.DataSource.DataSet.DisableControls;

  if ugEmbEsp.SelectedRows.Count > 0 then
  begin
   with ugEmbEsp.DataSource.DataSet do
     for i := 0 to ugEmbEsp.SelectedRows.Count-1 do
     begin
       GotoBookmark(Pointer(ugEmbEsp.SelectedRows.Items[i]));

       { Adicionar Caixa Especial a Packing List      }
       { caso não pertença a um pallet e nem a uma Fatura }
       if ((FieldByName('ies_pallet').AsString = 'N') and
           (FieldByName('num_fatura').AsString = '' )) then
       begin
         { chamar spr_prodlist_addembesp_pallet }
         with spr_prodlist_addembesp_pkl do
         begin
           ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
           ParamByName('num_prod_list').AsInteger := NumProdList;
           ParamByName('seq_emb_esp').AsInteger :=  emb_espseq_emb_esp.AsInteger;
           ParamByName('seq_pkl').AsInteger := SeqPkl;
           ParamByName('num_fatura').AsString := trim(edNumFatura.Text);

           ExecProc;
           try
             Transaction.CommitRetaining;
           except
             Transaction.RollbackRetaining;
         end;
         if (SeqPkl > 0) then
            inc(SeqPkl);
       end;
     end;
   end; { with ugEmbEsp.DataSource.DataSet }
  end; { if ugEmbEsp.SelectedRows.Count > 0 }

  ugEmbEsp.DataSource.DataSet.EnableControls;

  { Adicionar Pallets a Packing List }
  { selecionados na grade Pallets }

  { Selecionar Pallets na grade Pallets }
  ugPallets.DataSource.DataSet.DisableControls;

  if ugPallets.SelectedRows.Count > 0 then
  begin
   with ugPallets.DataSource.DataSet do
     for i := 0 to ugPallets.SelectedRows.Count-1 do
     begin
       GotoBookmark(Pointer(ugPallets.SelectedRows.Items[i]));

       { Adicionar Pallet a Packing List }
       { caso não pertença a uma Fatura  }
       if (FieldByName('num_fatura').AsString = '') then
       begin
         { chamar spr_prodlist_addpallet_pkl }
         with spr_prodlist_addpallet_pkl do
         begin
           ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
           ParamByName('num_prod_list').AsInteger := NumProdList;
           ParamByName('seq_pallet').AsInteger :=  palletsseq_pallet.AsInteger;
           ParamByName('seq_pkl').AsInteger := SeqPkl;
           ParamByName('num_fatura').AsString := trim(edNumFatura.Text);

           ExecProc;
           try
             Transaction.CommitRetaining;
           except
             Transaction.RollbackRetaining;
         end;
         if (SeqPkl > 0) then
            inc(SeqPkl);
       end;
     end;
   end; { with ugPallets.DataSource.DataSet }
  end; { if ugPallets.SelectedRows.Count > 0 }

  ugPallets.DataSource.DataSet.EnableControls;

  RefreshTabelas;

  ugProdListItens.UnselectAll;
  ugEmbEsp.UnselectAll;
  ugPallets.UnselectAll;

  RetornarMarcador;

  btnFaturar.Enabled := False;
  btnFaturar.Font.Color := clRed;
  btnFaturar.Font.Style :=  [fsBold];

  fFaturar := True;
end;

procedure TfrmProdList.btnRemPcklstClick(Sender: TObject);
Var
  i : integer;
begin

  SalvarMarcador;

  ugPackingList.DataSource.DataSet.DisableControls;

  { selecionar Itens da grade PackingList para remover da Packing List }
  if ugPackingList.SelectedRows.Count > 0 then
  begin
    with ugPackingList.DataSource.DataSet do
      for i := 0 to ugPackingList.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugPackingList.SelectedRows.Items[i]));
        { Chamar spr_prodlist_retirarpkl }
        with spr_prodlist_retirarpkl do
        begin
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_prod_list').AsInteger := NumProdList;
          ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
          ParamByName('seq_pkl').AsInteger := packing_listseq_pkl.AsInteger;

          ExecProc;
          try
           Transaction.CommitRetaining;
          except
           Transaction.RollbackRetaining;
          end;
        end;
      end;
  end;

  { selecionar Itens da grade EmbEsp para remover da Packing List }
  ugEmbEsp.DataSource.DataSet.DisableControls;

  if ugEmbEsp.SelectedRows.Count > 0 then
  begin
    with ugEmbEsp.DataSource.DataSet do
      for i := 0 to ugEmbEsp.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugEmbEsp.SelectedRows.Items[i]));

        { Chamar spr_prodlist_retirarpkl }
        with spr_prodlist_retirarpkl do
        begin
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_prod_list').AsInteger := NumProdList;
          ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
          ParamByName('seq_pkl').AsInteger := emb_espseq_pkl.AsInteger;

          ExecProc;
          try
           Transaction.CommitRetaining;
          except
           Transaction.RollbackRetaining;
          end;
        end;

      end;
  end;

  ugEmbEsp.DataSource.DataSet.EnableControls;

  { selecionar Itens da grade Pallets para remover da Packing List }
  ugPallets.DataSource.DataSet.DisableControls;

  if ugPallets.SelectedRows.Count > 0 then
  begin
    with ugPallets.DataSource.DataSet do
      for i := 0 to ugPallets.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(ugPallets.SelectedRows.Items[i]));

        { Chamar spr_prodlist_retirarpkl }
        with spr_prodlist_retirarpkl do
        begin
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_prod_list').AsInteger := NumProdList;
          ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
          ParamByName('seq_pkl').AsInteger := palletsseq_pkl.AsInteger;

          ExecProc;
          try
           Transaction.CommitRetaining;
          except
           Transaction.RollbackRetaining;
          end;
        end;

      end;
  end;

  ugPallets.DataSource.DataSet.EnableControls;

  { Chamar spr_prodlist_retirarpkl }
  with spr_prodlist_reordenarpkl do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('num_fatura').AsString := trim(edNumFatura.Text);

    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;
                                                        
  ugPackingList.DataSource.DataSet.EnableControls;

  ugPackingList.UnselectAll;

  RefreshTabelas;

  RetornarMarcador;

  packing_list.Refresh;
  if ((packing_list.IsEmpty) and (SituacaoFatura = 'N')) then
  begin
     btnFaturar.Enabled := False;
     btnFaturar.Font.Color := clWindowText;
     btnFaturar.Font.Style :=  [];
     fFaturar := False;
  end else
  begin
     btnFaturar.Enabled := True;
     btnFaturar.Font.Color := clRed;
     btnFaturar.Font.Style :=  [fsBold];
     fFaturar := True;
  end;
end;

procedure TfrmProdList.palletsAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

   { Chamar spr_prodlist_calc_pallet }
   with spr_prodlist_calc_pallet do
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

   RefreshTabelas;

end;

procedure TfrmProdList.Estorno(Grade: TJvDBUltimGrid);
Var
  i : integer;
begin
  SalvarMarcador;

  { selecionar Itens da Grade (ItensProdList ou PackingList) para estornar a qtde a embarcar }
  Grade.DataSource.DataSet.DisableControls;

  if Grade.SelectedRows.Count > 0 then
  begin
    with Grade.DataSource.DataSet do
      for i := 0 to Grade.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(Grade.SelectedRows.Items[i]));
        { Chamar spr_estorno_itemprodlist }
        with spr_estorno_itemprodlist do
        begin
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_prod_list').AsInteger := NumProdList;
          ParamByName('num_sequencia').AsInteger := Grade.DataSource.DataSet.FieldByName('num_sequencia').AsInteger;
          ExecProc;
          try
           Transaction.CommitRetaining;
          except
           Transaction.RollbackRetaining;
          end;
        end;
      end;
  end;

  { Chamar spr_prodlist_calc_embesp }
  with spr_prodlist_calc_embesp do
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

  { Chamar spr_prodlist_calc_pallet }
  with spr_prodlist_calc_pallet do
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

  Grade.DataSource.DataSet.EnableControls;

  Grade.UnselectAll;

  RefreshTabelas;

  RetornarMarcador;

end;

procedure TfrmProdList.btnEstornoClick(Sender: TObject);
begin

  if ugProdListItens.SelectedRows.Count > 0 then Estorno(ugProdListItens)
  else if ugPackingList.SelectedRows.Count > 0 then Estorno(ugPackingList);

end;

procedure TfrmProdList.prod_list_itensAfterScroll(DataSet: TDataSet);
begin
  btnEstorno.Enabled := DataSet.FieldByName('num_sequencia_org').AsInteger > 0;
  DataSet.FieldByName('qtd_caixas').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
  DataSet.FieldByName('pes_bruto_cx').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
  DataSet.FieldByName('un_master').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
  DataSet.FieldByName('pes_liquido').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
  DataSet.FieldByName('pes_bruto').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
  DataSet.FieldByName('pes_unitario').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
  DataSet.FieldByName('comprimento_cx').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
  DataSet.FieldByName('largura_cx').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
  DataSet.FieldByName('altura_cx').ReadOnly := DataSet.FieldByName('ies_emb_esp').AsString = 'S';
end;

procedure TfrmProdList.btnFaturarClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;

   with spr_prodlist_faturar do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_prod_list').AsInteger := NumProdList;
     ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
     ExecProc;
     try
       Transaction.CommitRetaining;
     except
       Transaction.RollbackRetaining;
     end;
   end;

   RefreshTabelas;

   Screen.Cursor := crArrow;

   btnFaturar.Enabled := False;
   btnFaturar.Font.Color := clWindowText;
   btnFaturar.Font.Style :=  [];

   fFaturar := False;

   //MessageDlg('Fatura ' + trim(edNumFatura.Text) + ' foi Gerada/Atualizada', mtInformation, [mbOK], 0);
   if (cbAbrirFatura.Checked) then
   begin
      if (trim(edNumFatura.Text) <> '') then
     	 if CriarForm(Tfr_ManNF, fr_ManNF, False, False) then
            with dmCOM.ProcuraNF(edNumFatura.Text, Clientescod_cliente.AsString) do
                 fr_ManNF.Open_NF(NumNotaFiscal, SerieNF, Clientescod_cliente.AsString, 1);
     Close;
   end;
end;

procedure TfrmProdList.prod_list_itensun_masterValidate(Sender: TField);
begin
	if Sender.AsFloat <= 0 then
  try
    Abort;
  finally
  	MessageDlg('Unidades por Caixa (UN/CX) deve ser maior que zero', mtError, [mbCancel], 0);
	end;
  Sender.DataSet.FieldByName('ies_cadastro').AsString := 'S';
  Sender.DataSet.FieldByName('vazio').AsString := '*';
end;

procedure TfrmProdList.prod_list_itenspes_unitarioValidate(Sender: TField);
begin
	if Sender.AsFloat <= 0 then
  try
    Abort;
  finally
  	MessageDlg('Peso Unitário (PU) deve ser maior que zero', mtError, [mbCancel], 0);
	end;
  Sender.DataSet.FieldByName('ies_cadastro').AsString := 'S';
  Sender.DataSet.FieldByName('vazio').AsString := '*';
end;

procedure TfrmProdList.prod_list_itenspes_bruto_cxValidate(Sender: TField);
begin
	if Sender.AsFloat <= 0 then
  try
    Abort;
  finally
  	MessageDlg('Peso Bruto da Caixa (PBCX) deve ser maior que zero', mtError, [mbCancel], 0);
	end;
  Sender.DataSet.FieldByName('ies_cadastro').AsString := 'S';
  Sender.DataSet.FieldByName('vazio').AsString := '*';
end;

procedure TfrmProdList.prod_list_itensaltura_cxValidate(Sender: TField);
begin
  { A validação é a mesma para A, L e C }
	if Sender.AsFloat <= 0 then
  try
    Abort;
  finally
  	MessageDlg(Sender.DisplayLabel + ' deve ser maior que zero', mtError, [mbCancel], 0);
	end;
  Sender.DataSet.FieldByName('ies_cadastro').AsString := 'S';
  Sender.DataSet.FieldByName('vazio').AsString := '*';
end;

function TfrmProdList.GetRomanear(NumProdList, Seq: integer): TRomanear;
begin
  with qryProdListItens do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    ParamByName('num_sequencia').Value := Seq;
    Open;
    Result.Romanear := FieldByName('qtd_romanear').AsFloat;
    if (FieldByName('num_nota_fiscal').IsNull )
       then Result.Nf := 0
       else Result.Nf := FieldByName('num_nota_fiscal').AsInteger;
    Close;
  end;
end;

procedure TfrmProdList.prod_list_itensqtd_romanearValidate(Sender: TField);
begin
  { Quantidade negativa inválida }
	if Sender.AsFloat < 0 then
  try
    Abort;
  finally
  	MessageDlg('Qtde Embarcar deve ser maior que zero', mtError, [mbCancel], 0);
	end;

  with GetRomanear(Sender.DataSet.FieldByName('num_prod_list').AsInteger,
                   Sender.DataSet.FieldByName('num_sequencia').AsInteger) do
  begin
     { Quantidade Embarcar não pode exceder a disponível para itens não faturados }
     if ((Sender.Value > Romanear) and (Nf = 0)) then
     try
       Abort;
     finally
        MessageDlg('Qtde a Embarcar não pode exceder a quantidade pedida'+#13#10+#13#10+
                   'Embarcar = '+FormatFloat('#,##0.00', Sender.Value)+
                   '  Disponível = '+FormatFloat('#,##0.00', Romanear)
                   , mtError, [mbCancel], 0);
     end;
  end;

end;

procedure TfrmProdList.btnExcelClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  with prod_list do
  begin
    Edit;

    if rgPallets.ItemIndex = 0 then FieldByName('ies_pallets').AsString := 'S'
                               else FieldByName('ies_pallets').AsString := 'N';
    FieldByName('ies_gerar').Clear;
    Post;
  end;

  dmProdList.GerarExcelProdList(NumProdList, True, False);

  Screen.Cursor := crArrow;
end;

procedure TfrmProdList.cbDescricaoClick(Sender: TObject);
begin
  SalvarMarcador;
  RefreshTabelas;
  RetornarMarcador;
end;

procedure TfrmProdList.pgItensProdListChange(Sender: TObject);
begin
   if pgItensProdList.ActivePage = tsItensPrl then EmbEspPalletSql('');

   if pgItensProdList.ActivePageIndex in [1,2] then
   begin
      if Not(packing_list.IsEmpty) then EmbEspPalletSql(trim(edNumFatura.Text))
                                   else EmbEspPalletSql('__');
   end;

   btnAddPcklst.Enabled := pgItensProdList.ActivePage = tsItensPrl;
   btnRemPcklst.Enabled := pgItensProdList.ActivePage = tsPackList;
   btnFaturar.Enabled := pgItensProdList.ActivePage = tsPackList;
end;

procedure TfrmProdList.palletsqtd_palletValidate(Sender: TField);
begin
	if Sender.AsFloat <= 0 then
  try
    Abort;
  finally
  	MessageDlg('QT pallet ser maior que zero', mtError, [mbCancel], 0);
	end;
end;

procedure TfrmProdList.emb_espqtd_caixasValidate(Sender: TField);
begin
	if Sender.AsFloat <= 0 then
  try
    Abort;
  finally
  	MessageDlg('CXS deve ser maior que zero', mtError, [mbCancel], 0);
	end;

end;

function TfrmProdList.SituacaoFatura: String;
begin
  with get_situacao_fatura do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
    Open;
    Result := FieldByName('ies_sit_fat').AsString;
    Close;
  end;
end;


procedure TfrmProdList.edNumFaturaExit(Sender: TObject);
begin
  if SituacaoFatura = 'E' then
  try
    Abort;
  finally
      MessageDlg('Fatura já embarcada.', mtError, [mbCancel], 0);
      edNumFatura.SetFocus;
  end;
  btnAddPcklst.Enabled := True;
end;

procedure TfrmProdList.dsPackingListStateChange(Sender: TObject);
begin
  if packing_list.State in [dsEdit] then
  begin
    btnFaturar.Enabled := True;
    btnFaturar.Font.Color := clRed;
    btnFaturar.Font.Style :=  [fsBold];
  end;
end;

procedure TfrmProdList.ugEmbEspKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #27) then
   begin
     SelSeqEmbEsp := 0;
     ugProdListItens.Repaint;
     ugPackingList.Repaint;
   end;
end;


procedure TfrmProdList.edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { busca rápida por código do produto }
  if (Key = VK_RETURN) then begin
     if pgItensProdList.ActivePage = tsItensPrl then dmCOM.Localizar(Sender, prod_list_itens)
     else if pgItensProdList.ActivePage = tsPackList then dmCOM.Localizar(Sender, packing_list)
     else if pgItensProdList.ActivePage = tsInvoice then dmCOM.Localizar(Sender, Invoice);
  end;
end;

procedure TfrmProdList.Panel1Enter(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure TfrmProdList.Panel1Exit(Sender: TObject);
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
end;

procedure TfrmProdList.ugPalletsKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #27) then
   begin
     SelSeqPallet := 0;
     ugProdListItens.Repaint;
     ugPackingList.Repaint;
   end;
end;

procedure TfrmProdList.ugPalletsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  { Indicar qual Pallet está selecionado na grade. }
  SelSeqPallet := (TDBGrid(Sender).DataSource.DataSet.FieldByName('seq_pallet').AsInteger);
  ugProdListItens.Repaint;
  ugPackingList.Repaint;

end;

procedure TfrmProdList.ugEmbEspMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  { Indicar qual Caixa Especial está selecionada na grade. }
  SelSeqEmbEsp := (TDBGrid(Sender).DataSource.DataSet.FieldByName('seq_emb_esp').AsInteger);
  ugProdListItens.Repaint;
  ugPackingList.Repaint;

end;

procedure TfrmProdList.prod_list_itensBeforePost(DataSet: TDataSet);
Var
  Pl, Pb : Double;
begin
  if (DataSet.FieldByName('ies_emb_esp').AsString = 'N') then
  begin
     Pl := Dataset.FieldByName('pes_unitario').AsFloat * DataSet.FieldByName('un_master').AsFloat * DataSet.FieldByName('qtd_caixas').AsInteger;
     Pb := DataSet.FieldByName('pes_bruto_cx').AsFloat * DataSet.FieldByName('qtd_caixas').AsInteger;

     if (Pl >= Pb) then
     begin
       MessageDlg('Erro nas informações de peso das caixas.'+#10#13#10#13
                  +'Peso Bruto    = '+FormatFloat('#,##0.00', Pb)+#10#13
                  +'Peso Líquido  = '+FormatFloat('#,##0.00', Pl)+#10#13
                  +'Peso Unitário = '+FormatFloat('#,##0.00000', DataSet.FieldByName('pes_unitario').AsFloat)
                  , mtError, [mbCancel], 0);
       DataSet.Cancel;
       Abort;
     end;
  end;
end;

procedure TfrmProdList.ugProdListItensMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var
  i, SeqDest : integer;
begin

  if (ssAlt in Shift) then
  begin

     //ShowMessage('SeqDes: ' + TDBGrid(Sender).DataSource.DataSet.FieldByName('num_sequencia').AsString);
     SeqDest := TDBGrid(Sender).DataSource.DataSet.FieldByName('num_sequencia').AsInteger;
     bkSeq := TDBGrid(Sender).DataSource.DataSet.GetBookmark;

     { Selecionar Itens da grade ProdListItens }
     TDBGrid(Sender).DataSource.DataSet.DisableControls;

     if TDBGrid(Sender).SelectedRows.Count > 0 then
     begin
       with TDBGrid(Sender).DataSource.DataSet do
         for i := 0 to TDBGrid(Sender).SelectedRows.Count-1 do
         begin
           GotoBookmark(Pointer(TDBGrid(Sender).SelectedRows.Items[i]));
           //ShowMessage('SeqOrg: ' + TDBGrid(Sender).DataSource.DataSet.FieldByName('num_sequencia').AsString);
           Edit;
           FieldByName('vazio').AsString := 'M';
           Post;
         end;
     end;
     TDBGrid(Sender).DataSource.DataSet.EnableControls;

     { Mover Itens marcados para uma nova sequencia em Prod_List_Itens  }
     with spr_prodlist_mudarseqs do
     begin
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('num_prodlist').AsInteger := NumProdList;
       ParamByName('seq_dest').AsInteger := SeqDest;
       ExecProc;
       try
         Transaction.CommitRetaining;
       except
         Transaction.RollbackRetaining;
       end;
     end;

     RefreshTabelas;

     if Assigned(bkSeq) then
     begin
        try
          TDBGrid(Sender).DataSource.DataSet.GotoBookmark(bkSeq);
          bkSeq := nil;
        except
          bkSeq := nil;
        end;
     end;

  end;
end;

end.
