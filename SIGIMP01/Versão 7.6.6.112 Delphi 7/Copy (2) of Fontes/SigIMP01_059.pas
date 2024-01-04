unit SigIMP01_059;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls, ComCtrls,
  ToolWin, Buttons, ActnList, IBSQL, DBCtrls, ExtCtrls, Mask, Math,
  IBStoredProc, JvDBGrid, JvComponent, JvDBLookup, Excel2000, OleServer,
  AniThread, JvxCheckListBox, JvExControls, JvExDBGrids, JvDBUltimGrid,
  DBGridCheck, unType, idHash, idHashMessageDigest;

type
  Tnf = record
          Numero : Integer;
          Serie  : String;
        end;

  TObsPreco = record
                Obs_Preco: String;
                Obs_Preco_Esp: String;
              end;


  TfrmProductionList = class(TForm)
    ActionList1: TActionList;
    Prod_List: TIBDataSet;
    actImportar: TAction;
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
    ProdutoEmbcod_empresa: TSmallintField;
    ProdutoEmbcod_produto: TIBStringField;
    ProdutoEmbpes_unitario: TFloatField;
    ProdutoEmbobs_peso_unitario: TIBStringField;
    ProdutoEmbdat_cad_peso: TDateField;
    EmbalagemEmb: TIBDataSet;
    Embalagem_Hist: TIBDataSet;
    Embalagem_Histsequencia: TIntegerField;
    Embalagem_Histdat_cadastro: TDateTimeField;
    Embalagem_Histaltura: TIBBCDField;
    Embalagem_Histlargura: TIBBCDField;
    Embalagem_Histprofundidade: TIBBCDField;
    Embalagem_Histcod_empresa: TSmallintField;
    Embalagem_Histcod_produto: TIBStringField;
    Embalagem_Histvolume: TIBBCDField;
    Embalagem_Histarea: TIBBCDField;
    Embalagem_Histobservacao: TIBStringField;
    Embalagem_Histpeso_unitario: TFloatField;
    Embalagem_Histdat_cad_dimensoes: TDateField;
    Embalagem_Histdat_cad_peso: TDateField;
    Embalagem_Histdat_cad_master: TDateField;
    Embalagem_Histdat_cad_inner: TDateField;
    Embalagem_Histobs_caixas: TIBStringField;
    Panel1: TPanel;
    Clientes: TIBQuery;
    Clientescod_cliente: TIBStringField;
    ds_Clientes: TDataSource;
    Fornecedores: TIBQuery;
    Fornecedorescod_fornecedor: TIntegerField;
    Fornecedoresraz_social_reduz: TIBStringField;
    ds_Fornecedores: TDataSource;
    Label1: TLabel;
    dbcClientes: TJvDBLookupCombo;
    Label9: TLabel;
    dbcFornecedores: TJvDBLookupCombo;
    Panel2: TPanel;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    pedido_produto: TIBDataSet;
    parametro_comercialmod_ship_list: TBlobField;
    parametro_comercialdias_inspecao: TSmallintField;
    ProxSequencia: TIBQuery;
    ProxSequenciaprox_sequencia: TLargeintField;
    spr_calc_pedido: TIBStoredProc;
    rgPallets: TRadioGroup;
    btnAbrir: TBitBtn;
    btnImportar: TBitBtn;
    BitBtn1: TBitBtn;
    parametro_comercialult_num_prod_list: TIntegerField;
    prod_list_itens: TIBDataSet;
    spr_excluir_prl: TIBStoredProc;
    spr_check_result: TIBQuery;
    spr_check_resultFLAG: TIBStringField;
    dsFaturasNovasPrl: TDataSource;
    Label2: TLabel;
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
    dbgFaturas: TDBGridCheck;
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
    prod_list_itensdat_ini_producao: TDateField;
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
    prod_list_itenspes_unitario: TFloatField;
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
    prod_list_itenscal_pes_liquido: TIBBCDField;
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
    btnGerar: TBitBtn;
    ProdListGrupos: TIBQuery;
    spr_itensped_prodlist: TIBStoredProc;
    sqlDesagrupar: TIBSQL;
    Prod_Listies_pallets: TIBStringField;
    spr_prodlist_fatura: TIBStoredProc;
    prod_list_itensdat_upd_etd: TDateField;
    pedido_produtoqtd_inner_box: TIBBCDField;
    prod_list_itensun_master: TIBBCDField;
    Embalagem_Histqtd_master: TIBBCDField;
    Embalagem_Histqtd_inner: TIBBCDField;
    prod_list_itensetd_factory: TDateField;
    Produto_Fatura: TIBDataSet;
    Produto_Faturaqtd_produto: TIBBCDField;
    prod_list_itenspes_pallet_vazio: TFloatField;
    prod_list_itensies_pallet: TIBStringField;
    Prod_Listies_plan_default: TSmallintField;
    Embalagem_Histpes_bruto_cx: TFloatField;
    pedido_produtopes_unitario: TFloatField;
    pedido_produtoobs_preco_esp: TMemoField;
    Produto_Faturaies_situacao: TIBStringField;
    lbProcess: TLabel;
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
    EmbalagemEmbpes_bruto_cx: TIBBCDField;
    cby_recalc_num_prodlist: TIBStoredProc;
    prod_list_itensmesclar: TIBStringField;
    prod_list_itensnum_sequencia_org: TIntegerField;
    prod_list_itensseq_pkl: TIntegerField;
    spr_prodlist_criarpkl: TIBStoredProc;
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
    function PrecoPedidoProduto(NumPedido: Int64; NumSeq: Integer): TObsPreco;
    procedure FaturasNovasPrlCalcFields(DataSet: TDataSet);
    procedure dbcFornecedoresChange(Sender: TObject);

    function ProxNumProdList: Integer;
    function GetNumProdList(Cliente: String; Fornecedor: Integer): Integer;
    function GetGerar(Cliente: String; Fornecedor: Integer): boolean;
    function GetSitFatura(NumFatura: String): String;
    function ExisteItemNf(NumFatura: String; SeqItem: Integer): Boolean;
    function GetDirProdList(Criar: Boolean = False): String;

    procedure AbrirExcel(Var Caminho: String);
    procedure FecharExcel(FecharTabelas: boolean = True);
    Procedure AbrirPlanilha(Var Caminho: String);

    procedure actImportarExecute(Sender: TObject);
    procedure actFaturarExecute(Sender: TObject);
    procedure ExcluirProdList;

    procedure LerHeader;
    procedure Cadastro;
    procedure SaldoVirtualPedidos;
    procedure ImportarItensProdList;
    procedure actGerarExecute(Sender: TObject);
    procedure Produto_FaturaAfterPost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    NumProdList, Numromaneio: Integer;
  end;

var
  frmProductionList: TfrmProductionList;
  Erro : Boolean; { indica ERRO na importa��o da Planilha }
  Erros : Integer;
  FileName: String;
  msgProcess : String;
  flagAlteraCadastro : Boolean;

implementation

uses unConnection, unMenuCompl, ConvUtils, SigIMP01_045, DateUtils,
  SigIMP01_091;

{$R *.dfm}

procedure TfrmProductionList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmProductionList := nil;
end;

procedure TfrmProductionList.ExcluirProdList;
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

function TfrmProductionList.ProxNumProdList: Integer;
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

function TfrmProductionList.GetGerar(Cliente: String; Fornecedor: Integer): boolean;
begin
  { True = Gerar a prod list, False = n�o gerar a prod list }
  with Prod_List do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_cliente').Value := Cliente;
    ParamByName('cod_fornecedor').Value := Fornecedor;
    Open;
    if FieldByName('ies_pallets').AsString = 'S' then rgPallets.ItemIndex := 0
                                                 else rgPallets.ItemIndex := 1;
    if IsEmpty then Result := False;
    Result := FieldByName('ies_gerar').AsString = 'S';
  end;
end;

function TfrmProductionList.GetNumProdList(Cliente: String; Fornecedor: Integer): Integer;
begin
  { Retornar o N�mero da Prod List do Cliente/Fornecedor }
  with Prod_List do
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
      Edit;
      if rgPallets.ItemIndex = 0 then FieldByName('ies_pallets').AsString := 'S'
                                 else FieldByName('ies_pallets').AsString := 'N';
      FieldByName('ies_gerar').Clear;
      Post;
    end;
    Result := FieldByName('num_prod_list').AsInteger;
  end;
end;


function TfrmProductionList.GetSitFatura(NumFatura: String): String;
begin
  { Return: Null - n�o informada, N - n�o encontrou, F - Faturada, E - Embarcada }

  if (trim(NumFatura) = '') then { fatura n�o informada no Excel}
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
      Result := 'N'; { Fatura N�o encontrada }
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

function TfrmProductionList.ExisteItemNf(NumFatura: String; SeqItem: Integer): Boolean;
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

{ Importa��o dos Itens da Production List }
procedure TfrmProductionList.ImportarItensProdList;
Var
  SeqPdl, SeqPed, SeqEmb, SeqItemEmb : Integer;
  Linha, LinhaFim, QtdeCaixas  : Integer;
  iCadastro, iSitFatura, Mesclar : String;
  NumPedido: Int64;
  Pedido, Confirmacao, CodProduto, SalesConf, StatusProducao, Data, ResultInspecao, Q, UnMedida, Invoice : String;
  dtInspecao, dtIniProducao, dtEtdFactory, DtUpdEtd, dtEmissao: TDate;
  UnMaster, qtRomanear, qtConfirmada, qtEmbarcada, qtPendente, Preco, PrecoEsp, TotPreco, TotPrecoEsp: Double;
  VolumeCaixa, VolumeTotal, PesoBruto, PesoLiquido, PesoBrutoCaixa, Comprimento, Largura, Altura: Double;
  PesoUnitario, QtdSaldo: Double;
  SeqPallet, qtd_pallet: Integer;
  pes_bruto_pallet, pes_liquido_pallet, comprimento_pallet, largura_pallet, altura_pallet, volume_pallet, peso_pallet_vazio: double;
  NumNf, NumSeqNf : Integer;
  Serie : String;
  EmbEsp : boolean;
  SeqPkl, NumSequenciaOrg : integer;
begin
  EmbEsp := False;
  iCadastro := 'N';
  Mesclar := 'N';
  Linha := 7;
  SeqPdl := 1;
  SeqEmb := 0;
  SeqPallet := 0;
  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;

  { Inicio leitura das linhas }
  for Linha := 7 to LinhaFim do
  begin
    Erros := 0;

    lbProcess.Caption := 'Importar: processando linha  ' + IntToStr(Linha) + ' de ' + IntToStr(LinhaFim);
    lbProcess.Refresh;

    { ignorar linha em branco }
    if (trim(ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Text) = '') then Continue;

    { A - Sequencia do item no pedido }
    try
      SeqPed := ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Value;
    except
      SeqPed := 0;
    end;

    if (SeqPed = 0) then
    begin
      Erro := True;
      Erros := SetBit(Erros, 0);
    end;
    { B - Order }
    Pedido := '';
    Pedido := trim(ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Text);

    if trim(Pedido) = '' then
    begin
      Erro := True;
      Erros := SetBit(Erros, 1);
    end;

    { Obter n�mero do Pedido }
    with dmCOM.GetPedido(Pedido, 'P') do
    begin
      NumPedido := Numero;
      SalesConf := NumPedidoFor;
      dtEmissao := DatEmissao;
    end;

    if NumPedido = 0 then
    begin
      Erro := True;
      Erros := SetBit(Erros, 1);
    end;
    { C - S/C NUMBER }
    Confirmacao := '';
    Confirmacao := trim(ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Text);

    if trim(Confirmacao) = '' then
    begin
      Erro := True;
      Erros := SetBit(Erros, 2);
    end;
    { Comparar Confirma��o da Planilha com Confirma��o do Pedido }
    if (Confirmacao <> SalesConf) then
    begin
      Erro := True;
      Erros := SetBit(Erros, 2);
    end;
    { D - CLIENT'S CODE - C�DIGO DO PRODUTO }
    CodProduto := trim(ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Text);
    CodProduto := SemFmtProduto(clientescod_cliente.AsString, CodProduto);

    { indicar que houve altera��o cadastral para o produto - sem preenchimento colocado pela importa��o }
    { -4142 � o valor que o Excel coloca na c�lula para indicar "sem preenchimento" GOIABA }
    if (ExcelWorkSheet.Cells.Item[Linha, 4].Interior.ColorIndex = -4142) then iCadastro := 'S' else iCadastro := 'N';

    if trim(CodProduto) = '' then
    begin
      Erro := True;
      Erros := SetBit(Erros, 3);
    end;

    if Not(ProcurarProduto(CodProduto, Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger).Existe) then
    begin
      Erro := True;
      Erros := SetBit(Erros, 3);
    end;

    { I  - Data de Inicio da Produ��o }
    try
      Data := (ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)].Text);
      Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
      dtIniProducao := StrToDate(Data);
    except
      dtIniProducao := 0;
    end;

    { J  - ETD FACTORY }
    try
      Data := (ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)].Text);
      Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
      dtEtdFactory := StrToDate(Data);
    except
      dtEtdFactory := 0;
    end;

    { K  - UPDATED ETD FACTORY }
    try
      Data := (ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)].Text);
      Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
      DtUpdEtd := StrToDate(Data);
    except
      DtUpdEtd := 0;
    end;

    { L - STATUS OF PRODUCTION }
    StatusProducao := ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)].Value2;

    { M  - DATE OF INSPECTION }
    try
      Data := (ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)].Text);
      Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
      dtInspecao := StrToDate(Data);
    except
      dtInspecao := 0;
    end;

    { N  - RESULT OF INSPECTION }
    ResultInspecao := GetResultInspecao((ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)].Text));

    { O - QUANTITY }
    try
      Q := (ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)].Value);
      Q := StringReplace(Q, '.', '', [rfReplaceAll]);
      qtRomanear := StrToFloat(Q);
    except
      qtRomanear := 0.00;
    end;
    { Ignorar item com Qtd.Romanear = 0 }
    //if (qtRomanear = 0) then Continue;

    { P - INVOICE NUMBER }
    Invoice := UpperCase(ExcelWorksheet.Range['P'+IntToStr(linha), 'P'+IntToStr(linha)].Value);
    { iSitFatura[Null:n�o informada, N:n�o encontrou, F:Faturada, E:Embarcada] }
    iSitFatura := GetSitFatura(Invoice);

    { Q - SEQ. INVOICE ITEM }
    try
      NumSeqNf := ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].Value;
    except
      NumSeqNf := 0;
    end;

    { Zerar sequencia do item quando n�o existir mais na fatura }
    if (iSitFatura = '') or (iSitFatura = 'N') then
    begin
      NumNf := 0;
      NumSeqNf := 0;
    end;

    { Obter n�mero da Nota Fiscal }
    if (iSitFatura = 'F') or (iSitFatura = 'E') then
       with dmCOM.ProcuraNF(Invoice, Clientescod_cliente.AsString) do
       begin
        NumNf := NumNotaFiscal;
        Serie := SerieNF;
       end;

    { Ignorar item eliminado da Fatura }
    if (Invoice <> '') and (NumSeqNf > 0) and ((iSitFatura = 'F') or (iSitFatura = 'E')) then
       if (ExisteItemNf(Invoice, NumSeqNf) = False) then Continue;

    { R - UNIT }
    UnMedida := ExcelWorksheet.Range['R'+IntToStr(linha), 'R'+IntToStr(linha)].Value;

    { S - Pre�o Real }
    try
      Preco := ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)].Value;
    except
      Preco := 0.0;
    end;

    { T - Total Pre�o Real }
    try
      TotPreco := ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)].Value;
    except
      TotPreco := 0.0;
    end;

    { U - Pre�o Especial }
    try
      PrecoEsp := ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)].Value;
    except
      PrecoEsp := 0.0;
    end;

    { V - Total Pre�o Especial }
    try
      TotPrecoEsp := ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)].Value;
    except
      TotPrecoEsp := 0.0;
    end;

    { W - TOTAL VOLUME IN M� }
    try
      VolumeTotal := ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)].Value;
    except
      VolumeTotal := 0;
    end;

    { X - Peso Bruto }
    try
      PesoBruto := ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)].Value;
    except
      PesoBruto := 0.0;
    end;

    { Y - Peso Liquido }
    try
      PesoLiquido := ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)].Value;
      if (ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].MergeCells = True) then
         Mesclar := 'S'
      else
         Mesclar := 'N';
    except
      PesoLiquido := 0.0;
    end;

    if Not(EmbEsp) then
    begin
      if (PesoBruto <= PesoLiquido) and (qtRomanear > 0) then
      begin
        Erro := True;
        Erros := SetBit(Erros,10);
      end;
    end;
    { Z - Quantidade de Caixas Standard }
    try
      QtdeCaixas := ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)].Value;
    except
      QtdeCaixas := 0;
    end;

    { AB - UN/Master }
    try
      UnMaster := ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)].Value;
    except
      UnMaster := 0.0;
    end;

    { AC - Peso Bruto da Caixa }
    try
      PesoBrutoCaixa := ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)].Value;
    except
      PesoBrutoCaixa := 0.0;
    end;

    { AD - VOLUME OF 1 PACKING }
    try
      VolumeCaixa := ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)].Value2;
    except
      VolumeCaixa := 0.0;
    end;

    { AE - L (CM) }
    try
      Comprimento := ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)].Value2;
    except
      Comprimento := 0.0;
    end;

    { AF - W (CM) }
    try
      Largura := ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)].Value2;
    except
      Largura := 0.0;
    end;

    { AG - H (CM) }
    try
      Altura := ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)].Value2;
    except
      Altura := 0.0;
    end;

    { AH - NET WEIGHT OF PRODUCT IN KG - Peso Unit�rio do Produto }
    try
      PesoUnitario := StrToFloat(ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)].Value);
      PesoUnitario := PesoUnitario;
    except
      PesoUnitario := 0.0;
    end;

    { BC - Sequencia da Packing List }
    try
      SeqPkl := ExcelWorksheet.Range['BC'+ inttostr(linha),'BC'+inttostr(linha)].Value;
    except
    end;

    { BD - N�mero da Sequencia de Origem }
    try
      NumSequenciaOrg := ExcelWorksheet.Range['BD'+ inttostr(linha),'BD'+inttostr(linha)].Value;
    except
    end;

    { Procurar dados dos Itens nos Pedidos  }
    with Pedido_Produto do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_pedido').Value := NumPedido;
      ParamByName('num_sequencia').Value := SeqPed;
      Open;
      QtdSaldo := FieldByName('qtd_saldo').AsFloat;
    end;

    { Verificar Peso Unit�rio do Produto embalagem esp/padr�o }
    if (Mesclar = 'N') then
    begin
       if (PesoUnitario <> pedido_produtopes_unitario.Value) then
       begin
         Erro := True;
         Erros := SetBit(Erros,11);
       end;
    end;

    { Obter Quantidades Confirmada, Embarcada e Pendente dos Produtos }
    { Somente para atualizar a planilha; chama spr_saldos_produtos    }
    with Saldos do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_pedido').Value  := NumPedido;
      ParamByName('cod_produto').Value := CodProduto;
      ParamByName('num_seq_pedido').Value := SeqPed;
      Open;
      qtConfirmada := Saldos.FieldByName('qtd_confirmada').AsFloat;
      qtEmbarcada := Saldos.FieldByName('qtd_embarcada').AsFloat;
      qtPendente := Saldos.FieldByName('qtd_pendente').AsFloat;
      Close;
    end;

    { Itens da Fatura Gerada                              }
    { Saldos dos itens da planilha, para Fatura Existente }
    if (iSitFatura = 'F') then
    begin
      if (NumSeqNf > 0) then { para item existente na Fatura }
      begin
        with Produto_Fatura do
        begin
          Close;
          ParamByName('cod_empresa').Value := vgCod_Empresa;
          ParamByName('num_nota_fiscal').AsInteger := NumNf;
          ParamByName('serie').AsString := Serie;
          ParamByName('num_sequencia').AsInteger := NumSeqNf;
          Open;
          QtdSaldo := FieldByName('qtd_produto').AsFloat; { Quantidade Faturada do item na Fatura }
        end;
      end;
      { Saldo Pendente = 0 ou item n�o encontrado }
      if (QtdSaldo = 0) then
      begin
        Erro := True;
        Erros := SetBit(Erros, 0);
        Erros := SetBit(Erros, 1);
        Erros := SetBit(Erros, 5);
      end;
      { Marcar item da Fatura para exclus�o }
      if (qtRomanear = 0) then
      begin
        if Not(Produto_Fatura.IsEmpty) then
        begin
          Produto_Fatura.Edit;
          Produto_Faturaies_situacao.AsString := 'E';
          Produto_Fatura.Post;
        end;
      end;
      { Qtde a Romanear > Qtd Faturada  *** AJUSTAR FATURA E PEDIDO CONFORME NOVA QTD_ROMANEADA }
      if (qtRomanear > QtdSaldo) then
      begin
         { Alterar a Quantidade Original no Pedido }
         with Pedido_Produto do
         begin
           if Not(IsEmpty) then
           begin
             Edit;
             FieldByName('qtd_produto').Value := qtRomanear;
             FieldByName('qtd_romaneada').Value := 0;
             FieldByName('qtd_faturada').Value := qtRomanear;
             FieldByname('qtd_pendente').Value := 0;
             FieldByName('vlr_liquido').Value := FieldByName('vlr_unitario').AsFloat * FieldByName('qtd_produto').AsFloat;
             FieldByName('vlr_liquido_esp').Value := FieldByName('vlr_unitario_esp').AsFloat * FieldByName('qtd_produto').AsFloat;
             Post;
           end;
         end;
         { Alterar a Quantidade na Fatura }
         if Not(Produto_Fatura.IsEmpty) then
         begin
           Produto_Fatura.Edit;
           Produto_Faturaqtd_produto.Value := qtRomanear;
           Produto_Fatura.Post;
         end;
      end;
      { atualizar Saldo de controle da Production List - para itens novos na Fatura }
      if (NumSeqNf = 0) then
      begin
        if (qtRomanear <= QtdSaldo) and (qtRomanear > 0) then
        begin
          with Pedido_Produto do
          begin
            if Not(IsEmpty) then
            begin
              Edit;
              FieldByName('qtd_romanear').Value := FieldByName('qtd_romanear').AsFloat + qtRomanear;
              FieldByName('qtd_saldo').Value := FieldByName('qtd_saldo').AsFloat - qtRomanear;
              Post;
              { Romaneando menor que o Saldo, ir� abrir um novo item }
              if (qtRomanear < QtdSaldo) then
              begin
                qtConfirmada := qtRomanear;
                qtPendente := qtRomanear;
              end;
            end;
          end;
        end;
      end;
    end; { if (iSitFatura = 'F') then }

    { Saldos dos itens da planilha, Fatura n�o Existe ainda }
    if ((iSitFatura = 'N') or (iSitFatura = '')) then
    begin
      { Saldo Pendente = 0 ou item n�o encontrado }
      if (QtdSaldo = 0) then
      begin
        Erro := True;
        Erros := SetBit(Erros, 0);
        Erros := SetBit(Erros, 1);
        Erros := SetBit(Erros, 5);
      end;

      { Qtde a Romanear > Saldo Pendente  }
      if (qtRomanear > QtdSaldo) then
      begin
        Erro := True;
        Erros := SetBit(Erros, 6);
      end;

      { atualizar Saldo Virtual de controle da Production List }
      if (qtRomanear <= QtdSaldo) and (qtRomanear > 0) then
      begin
        with Pedido_Produto do
        begin
          if Not(IsEmpty) then
          begin
            Edit;
            FieldByName('qtd_romanear').Value := FieldByName('qtd_romanear').AsFloat + qtRomanear;
            FieldByName('qtd_saldo').Value := FieldByName('qtd_saldo').AsFloat - qtRomanear;
            Post;
            { Romaneando menor que o Saldo, ir� abrir um novo item }
            if (qtRomanear < QtdSaldo) then
            begin
              qtConfirmada := qtRomanear;
              qtPendente := qtRomanear;
            end;
          end;
        end;
      end;
    end; { Fatura n�o existe }

    { Pre�o da planilha <> do Pedido }
    if (Preco <> pedido_produtovlr_unitario.Value) then
    begin
      Erro := True;
      Erros := SetBit(Erros, 7);
    end;

    if (PrecoEsp <> pedido_produtovlr_unitario_esp.Value) then
    begin
      Erro := True;
      Erros := SetBit(Erros, 8);
    end;

    { Salvar dados da planilha }
    prod_list_itens.Append;

    prod_list_itenscod_empresa.Value := vgCod_Empresa;
    prod_list_itensnum_prod_list.Value := NumProdList;
    prod_list_itensnum_sequencia.Value := SeqPdl;

    prod_list_itensnum_fatura.Value := Invoice;

    if (NumNf > 0) then
       prod_list_itensnum_nota_fiscal.Value := NumNf
    else prod_list_itensnum_nota_fiscal.Clear;

    if (NumSeqNf > 0) then
       prod_list_itensnum_seq_nf.Value := NumSeqNf
    else prod_list_itensnum_seq_nf.Clear;

    prod_list_itensies_sit_fat.Value := iSitFatura;

    prod_list_itensnum_pedido.Value := NumPedido;
    prod_list_itensnum_seq_pedido.Value := SeqPed;
    prod_list_itensnum_pedido_cli.Value := Pedido;
    prod_list_itensnum_pedido_for.Value := Confirmacao;
    prod_list_itensdat_emissao.AsDateTime := dtEmissao;

    prod_list_itenscod_produto.Value := CodProduto;

    if (dtIniProducao > 0) then
       prod_list_itensdat_ini_producao.Value := dtIniProducao
    else
       prod_list_itensdat_ini_producao.Clear;

    prod_list_itenstxt_status_producao.Value := StatusProducao;

    if (dtInspecao > 0) then
       prod_list_itensdat_inspecao.Value := dtInspecao
    else
       prod_list_itensdat_inspecao.Clear;

    prod_list_itensies_result_inspecao.Value := ResultInspecao;

    if (dtEtdFactory > 0) then
       prod_list_itensetd_factory.Value := dtEtdFactory
    else
       prod_list_itensetd_factory.Clear;

    if (DtUpdEtd > 0) then
       prod_list_itensdat_upd_etd.Value := DtUpdEtd
    else
       prod_list_itensdat_upd_etd.Clear;

    prod_list_itensqtd_romanear.Value := qtRomanear;
    prod_list_itensqtd_confirmada.Value := qtConfirmada;
    prod_list_itensqtd_pendente.Value := qtPendente;
    prod_list_itensqtd_embarcada.Value := qtEmbarcada;

    prod_list_itenspreco_real.Value := Preco;
    prod_list_itensvlr_liquido.Value := TotPreco;
    prod_list_itenspreco_esp.Value := PrecoEsp;
    prod_list_itensvlr_liquido_esp.Value := TotPrecoEsp;

    prod_list_itenspes_unitario.Value := PesoUnitario;

    prod_list_itensies_erros.Value := Erros;
    prod_list_itensies_cadastro.Value := iCadastro;

    prod_list_itensies_emb_esp.Value := 'N';
    prod_list_itensseq_emb_esp.Clear;

    prod_list_itensseq_pkl.Value := SeqPkl;
    prod_list_itensnum_sequencia_org.Value := NumSequenciaOrg;

    { EMBALAGEM ESPECIAL }
    if (ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].MergeCells = True) and
       (ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].Text <> '') or
       (ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].Text <> '') then
    begin
      EmbEsp := True;

      Inc(SeqEmb);
      SeqItemEmb := 0;

      { W - Volume Total das Caixas }
      with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
      begin
        FormulaR1C1 := '=ROUND(RC[4]*RC[7],' + VolumeDecimais + ')';
        VolumeTotal := Value;
      end;
      { X - Peso Bruto Total das Caixas }
      with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
      begin
        FormulaR1C1 := '=ROUND(RC[3]*RC[5],2)';
        PesoBruto := Value;
      end;
      { Y - Peso Liquido }
      PesoLiquido := ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)].Value;
      { AA - Quantidade de Caixas Especiais }
      QtdeCaixas := ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)].Value;
      UnMaster := 0.0;
      { AC - Peso Bruto da Caixa }
      PesoBrutoCaixa := ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)].Value;
      { AD - VOLUME OF 1 PACKING }
      VolumeCaixa := ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)].Value2;
      { AE - L (CM) }
      Comprimento := ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)].Value2;
      { AF - W (CM) }
      Largura := ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)].Value2;
      { AG - H (CM) }
      Altura := ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)].Value2;

      prod_list_itensies_emb_esp.Value := 'S';
      prod_list_itensseq_emb_esp.Value := SeqEmb;
      prod_list_itenspes_bruto.Value := PesoBruto;
    end;

    { ITEM DA EMBALAGEM ESPECIAL }
    if (ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].MergeCells = True) or
       (ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].Text <> '') then
    begin
      EmbEsp := True;

      Inc(SeqItemEmb);

      { zerar QtdCaixas quando forem itens da embalagem especial, menos o primeiro item }
      if (SeqItemEmb > 1) then QtdeCaixas := 0;

      prod_list_itensies_emb_esp.Value := 'S';
      prod_list_itensseq_emb_esp.Value := SeqEmb;
    end;

    if (Mesclar = 'N') then // peso �nit�rio de cada item da embalagem especial
       prod_list_itenspes_liquido.Value := PesoLiquido;

    prod_list_itensmesclar.Value := Mesclar;

    if (QtdeCaixas > 0) then
    begin
      prod_list_itensvol_total.Value := VolumeTotal;
      if (Mesclar = 'S') then
        prod_list_itenspes_liquido.Value := PesoLiquido;
      prod_list_itenspes_bruto.Value := PesoBruto;
      prod_list_itensqtd_caixas.Value := QtdeCaixas;
      prod_list_itensun_master.Value := UnMaster;
      prod_list_itenspes_bruto_cx.Value := PesoBrutoCaixa;
      prod_list_itensaltura_cx.Value := Altura;
      prod_list_itenslargura_cx.Value := Largura;
      prod_list_itenscomprimento_cx.Value := Comprimento;
      prod_list_itensvolume_caixa.Value := VolumeCaixa;
    end else
    begin { limpar campos quando for item de emb especial, menos o primeiro }
      prod_list_itensvol_total.Clear;
      prod_list_itenspes_bruto.Clear;
      prod_list_itensqtd_caixas.Clear;
      prod_list_itensun_master.Clear;
      prod_list_itenspes_bruto_cx.Clear;
      prod_list_itenslargura_cx.Clear;
      prod_list_itenscomprimento_cx.Clear;
      prod_list_itensvolume_caixa.Clear;
    end;

    { Tratar Pallets Packages }
    qtd_pallet := 0;
    pes_bruto_pallet := 0;
    pes_liquido_pallet := 0;
    comprimento_pallet := 0;
    largura_pallet := 0;
    altura_pallet := 0;
    volume_pallet := 0;
    peso_pallet_vazio := 0;

    prod_list_itensies_pallet.AsString := 'N';
    prod_list_itensseq_pallet.Clear;
    prod_list_itensqtd_pallet.Clear;
    prod_list_itenspes_bruto_pallet.Clear;
    prod_list_itenspes_liquido_pallet.Clear;
    prod_list_itenscomprimento_pallet.Clear;
    prod_list_itenslargura_pallet.Clear;
    prod_list_itensaltura_pallet.Clear;
    prod_list_itensvolume_pallet.Clear;
    prod_list_itenspes_pallet_vazio.Clear;

    { PALLETS PACKAGES }
    if (Prod_Listies_pallets.AsString = 'S') then
    begin
       if ((ExcelWorksheet.Range['AI'+IntToStr(linha), 'AI'+IntToStr(linha)].MergeCells = True) and
           (ExcelWorksheet.Range['AI'+IntToStr(linha), 'AI'+IntToStr(linha)].Text <> '')) or
           (ExcelWorksheet.Range['AI'+IntToStr(linha), 'AI'+IntToStr(linha)].Text <> '') then
       begin
         { AI - QTD PALLET }
         qtd_pallet := ExcelWorksheet.Range['AI'+IntToStr(linha), 'AI'+IntToStr(linha)].Value2;
         { AJ - PESO PALLET VAZIO }
         peso_pallet_vazio := ExcelWorksheet.Range['AJ'+IntToStr(linha), 'AJ'+IntToStr(linha)].Value2;
         { AK - GROSS WEIGHT PALLET }
         pes_bruto_pallet := ExcelWorksheet.Range['AK'+IntToStr(linha), 'AK'+IntToStr(linha)].Value2;
         { AL - NET WEIGHT PALLET }
         pes_liquido_pallet := ExcelWorksheet.Range['AL'+IntToStr(linha), 'AL'+IntToStr(linha)].Value2;
         { AM - COMPRIMENTO (L) }
         comprimento_pallet := ExcelWorksheet.Range['AM'+IntToStr(linha), 'AM'+IntToStr(linha)].Value2;
         { AN - LARGURA (W) }
         largura_pallet := ExcelWorksheet.Range['AN'+IntToStr(linha), 'AN'+IntToStr(linha)].Value2;
         { AO - ALTURA (H) }
         altura_pallet := ExcelWorksheet.Range['AO'+IntToStr(linha), 'AO'+IntToStr(linha)].Value2;
         { AP - TOTAL VOLUME PALLET }
         with ExcelWorksheet.Range['AP'+IntToStr(linha), 'AP'+IntToStr(linha)] do
         begin
           NumberFormat := '#.##0,000';
           FormulaR1C1 := '=ROUND(ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)*RC[-7],3)';
           volume_pallet := Value2;
         end;
         SeqPallet := SeqPallet + 1;

         prod_list_itensies_pallet.AsString := 'S';
         prod_list_itensseq_pallet.Value := SeqPallet;
         prod_list_itensqtd_pallet.AsInteger := qtd_pallet;
         prod_list_itenspes_bruto_pallet.AsFloat := pes_bruto_pallet;
         prod_list_itenspes_liquido_pallet.AsFloat := pes_liquido_pallet;
         prod_list_itenscomprimento_pallet.AsFloat := comprimento_pallet;
         prod_list_itenslargura_pallet.AsFloat := largura_pallet;
         prod_list_itensaltura_pallet.AsFloat := altura_pallet;
         prod_list_itensvolume_pallet.AsFloat := volume_pallet;
         prod_list_itenspes_pallet_vazio.AsFloat := peso_pallet_vazio;
       end;

       { ITEM PALLETS PACKAGES }
       if ((ExcelWorksheet.Range['AI'+IntToStr(linha), 'AI'+IntToStr(linha)].MergeCells = True) or
           (ExcelWorksheet.Range['AI'+IntToStr(linha), 'AI'+IntToStr(linha)].Text <> '')) then
       begin
         prod_list_itensies_pallet.AsString := 'S';
         prod_list_itensseq_pallet.Value := SeqPallet;
       end;
    end;

    { CALCULAR CAMPOS PARA COMPARA��ES }
    prod_list_itenscal_preco_real.Value := Pedido_Produtovlr_unitario.AsFloat;
    prod_list_itenscal_vlr_liquido.Value :=  qtRomanear * Pedido_Produtovlr_unitario.AsFloat;
    prod_list_itenscal_preco_esp.Value := Pedido_Produtovlr_unitario_esp.AsFloat;
    prod_list_itenscal_vlr_liquido_esp.Value := qtRomanear * pedido_produtovlr_unitario_esp.AsFloat;

    { calcular embalagens PADR�ES }
    if (prod_list_itensies_emb_esp.Value = 'N') then
    begin
      with dmCOM.CaixasMaster(CodProduto) do
      begin
        prod_list_itenscal_volume_caixa.Value := Volume;
      end;

      with dmCOM.CalcEmbalagem(CodProduto, qtRomanear) do
      begin
        prod_list_itenscal_qtd_caixas.Value := QtdExportBox;
        prod_list_itenscal_vol_total.Value := VolCaixas;
        prod_list_itenscal_pes_bruto.Value := PesBruto;
        prod_list_itenscal_pes_liquido.Value := PesLiquido;
        prod_list_itensies_caixa_fechada.Value := CaixaFechada;
      end;
    end;

    { EMBALAGEM ESPECIAL }
    if (prod_list_itensies_emb_esp.Value = 'S') then
    begin
      prod_list_itensies_caixa_fechada.Value := 'S';
      with dmCOM.CalcEmbalagem(CodProduto, qtRomanear) do
      begin
        prod_list_itenscal_pes_liquido.Value := PesLiquido;
      end;
      if (prod_list_itensseq_emb_esp.Value > 0) and
         (prod_list_itensqtd_caixas.Value > 0) then
      begin
        prod_list_itenscal_qtd_caixas.Value := QtdeCaixas;
        prod_list_itenscal_vol_total.Value := VolumeTotal;
        prod_list_itenscal_pes_bruto.Value := PesoBruto;
        prod_list_itenscal_volume_caixa.Value := VolumeCaixa;
      end;
    end;

    prod_list_itens.Post;

    Inc(SeqPdl);

  end; { fim da leitura das linhas }

end;


procedure TfrmProductionList.actImportarExecute(Sender: TObject);
Var
  LinhaFim : Integer;
begin
  flagAlteraCadastro := False;

  if (dbcClientes.Value = '0') then
  begin
    Application.MessageBox('Escolha um Cliente', 'Erro', MB_OK);
    dbcClientes.SetFocus;
    Exit;
  end;

  if (dbcFornecedores.Value = '0') then
  begin
    Application.MessageBox('Escolha um Fornecedor', 'Erro', MB_OK);
    dbcFornecedores.SetFocus;
    Exit;
  end;

  if (FaturasNovasPrl.Active) then FaturasNovasPrl.Close;

  Erro := False; { indicar ERRO na importa��o da Planilha }

  { Abrir o Excel de Production List  }
  FileName := GetDirProdList;

  { obter N�mero da Prod List do Cliente/Fornecedor }
  NumProdList := GetNumProdList(Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger);

  { obter �ltima linha da planilha }
  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;

  { Limpar Prod_list_Itens - excluir a importa��o anterior  }
  { se houver dados na planilha, excluir a production list. }
  { se for uma planilha vazia, gerar uma nova planilha com a production list }
  if (LinhaFim > 7) then ExcluirProdList
                    else begin
                           FecharExcel(False);
                           actGerarExecute(nil);
                           Abort;
                         end;

  btnImportar.Enabled := False;
  Screen.Cursor := crHourGlass;

  { Mostrar colunas para Pallets Packages }
  with ExcelWorksheet.Range['AI1','AP1'] do
  begin
    EntireColumn.Hidden := False;
  end;

  LerHeader;

  frmProductionList.Caption := 'Production List #' + IntToStr(NumProdList);

  { itens importados - production list }
  with prod_list_itens do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    Open;
  end;

  Erro := False;
  Erros := 0;

  { Importar Dados Cadastrais }
  Cadastro;

  { DEBUG - Salvar a planilha antes dela ser recriada. }
  //ExcelApplication.ActiveWorkbook.SaveAs('C:\PLANILHAS\JAPI\PRODUCTION LISTS CLIENT\BACKUP.XLS',xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  //ExcelApplication.ActiveWorkbook.Save(lcid);

  { inicializar qtd_saldo e qtd_romanear                      }
  SaldoVirtualPedidos;

  { Importar os itens da planilha }
  ImportarItensProdList;

  { Recalcular Caixas Standard para produtos com altera��o cadastral }
  with cby_recalc_num_prodlist do
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


  { Atualizar a planilha somente quando N�O ocorrer ERROS }
  if Not(Erro) then
  begin
    { Ajustar a Production List Itens, quando nessa houver itens do pedido repetidos (pedido + sequencia) }
    { Inserir novos itens no pedido                                                                       }
    with spr_itensped_prodlist do
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

    { Refaturar uma Fatura da Prod List n�o embarcada }
    with spr_prodlist_fatura do
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

    { ATUALIZAR PEDIDOS                            }
    { Incluir Itens nos Pedidos com SALDO pendente }
    { Atualizar Itens de Origem                    }
    { Recalcular Itens e Pedidos                   }
    with spr_additens_pedido do
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
  end;

  { atualizar Pre�os Especiais }
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

  { Itens preparados para faturar com n�mero de invoice na planilha }
  { somente para mostrar na grade e permitir faturar                }
  with FaturasNovasPrl do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;

    while not(Eof) do
    begin
      with spr_prodlist_criarpkl do
      begin
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('num_prod_list').AsInteger := NumProdList;
        ParamByName('num_fatura').AsString := FaturasNovasPrlnum_fatura.AsString;
        ExecProc;
        try
         Transaction.CommitRetaining;
        except
         Transaction.RollbackRetaining;
        end;
      end;
      Next;
    end;
  end;

  { atualizar Pre�os Especiais }


  { Limpar planilha e atualizar planilhas do Fornecedor e Cliente }

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

  FecharExcel(false);
  dmProdList.FecharExcel;

  Screen.Cursor := crHourGlass;
  dmProdList.GerarExcelProdList(NumProdList, False, False);
  Screen.Cursor := crArrow;
  dmProdList.FecharExcel;

  { Atualizar ies_gerar em Prod_List }
  with Prod_List do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_cliente').Value := Clientescod_cliente.AsString;
    ParamByName('cod_fornecedor').Value := Fornecedorescod_fornecedor.AsInteger;
    Open;
    Edit;
    FieldByName('ies_gerar').Value := 'N';
    Post;
    Close;
  end;

  { finalizar progress bar }
  btnImportar.Enabled := True;

  lbProcess.Caption:= '';
  Screen.Cursor := crDefault;
  { Hablitar/Desabilitar o bot�o de Faturar }
  actFaturar.Enabled := Not(Erro);

  { Mostrar mensagem sobre situa��o ap�s a importa��o }
  if Erro then Application.MessageBox('Importa��o efetuada com erros', 'Erro', MB_OK+MB_ICONERROR)
          else Application.MessageBox('Importa��o executada com sucesso e sem erros', 'Informa��o', MB_OK+MB_ICONINFORMATION);

  actAbrirExecute(nil);
end;

function TfrmProductionList.ProcuraCliente(CodCliente: String): boolean;
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

function TfrmProductionList.ProcuraFornecedor(NomReduz : String): Integer;
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

procedure TfrmProductionList.AbrirExcel(Var Caminho: String);
Var
  lcid : Cardinal;
  WkBk : _Workbook;

begin

  FecharExcel(False);
  dmProdList.FecharExcel;

  { Selecionar a planilha e chamar o  Excel }
  if trim(Caminho) = '' then
  begin
    if (OpenDialog.Execute) then
       Caminho := OpenDialog.FileName
    else begin
      Application.MessageBox('Opera��o cancelada', 'Informa��o', MB_ICONINFORMATION+MB_OK);
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

Procedure TfrmProductionList.FecharExcel(FecharTabelas: boolean = True);
begin
  if FecharTabelas then
  begin
    if prod_list_itens.State in [dsEdit, dsInsert] then prod_list_itens.Cancel;
  end;
  { caso esteja fechada, evita fechar novamente para n�o gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  btnImportar.Enabled := True;
  Screen.Cursor := crDefault;
end;


{ Ler cabe�alho da planilha excel                                }
{ Deve estar no seguinte formato                                 }
{+--+------------+-------------+---------------------------------}
{|  |  A         |   B         | Descri��o                       }
{+--+------------+-------------+---------------------------------}
{|1 | Empresa    | 1           | C�digo da empresa               }
{|2 | Cliente    | OVD         | C�digo do cliente               }
{|3 | Fornecedor | 1           | C�digo do Fornecedor            }
{|4 | Fatura     | 2007SM1468A |                                 }
{|5 |            |             | linha em branco                 }
{|6 |            |             | Cabe�alho                       }
{|7 |            |             | linhas dos itens                }
{+--+------------+-------------+---------------------------------}
procedure TfrmProductionList.LerHeader;
Var
  gCodEmpresa, gCodFornecedor: Integer;
  gCodCliente, NomeFornecedor: String;
begin
  { C1 - Empresa }
   try
     gCodEmpresa := StrToInt(ExcelWorksheet.Range['C1','C1'].Text);
   except
     Application.MessageBox('C�digo da empresa inv�lido', 'Erro', MB_ICONERROR+MB_OK);
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
    Application.MessageBox('Cliente n�o encontrado', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
  if trim(gCodCliente) <> trim(clientescod_cliente.AsString) then
  begin
    Application.MessageBox('Cliente na Planilha n�o � o mesmo cliente do Romaneio', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;

  { C3 - Fornecedor }
  NomeFornecedor := trim(ExcelWorksheet.Range['C3','C3'].Text);
  if trim(NomeFornecedor) = '' then
  begin
    Application.MessageBox('C�digo do fornecedor inv�lido', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;

  gCodFornecedor := ProcuraFornecedor(NomeFornecedor);               

  if gCodFornecedor=0 then
  begin
    Application.MessageBox('Fornecedor n�o encontrado', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;

  if gCodFornecedor <> Fornecedorescod_fornecedor.AsInteger then
  begin
    Application.MessageBox('Fornecedor na Planilha n�o � o mesmo selecionado na tela', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;

procedure TfrmProductionList.Cadastro;
Var
  Linha, LinhaFim : Integer;
  CodProduto : String;
  EmbEsp : Boolean;
  cxVolCaixa, cxComprimento, cxLargura, cxAltura : double;
  cxPesoBruto, cxPesoUnitario : double;
  pdPesoUnit, cxMaster, PesoBruto, PesoLiquido, QtdCaixas : Double;
  Mesclar, sHash, sMD5, sMD5Excel : WideString;
begin
  Linha := 7;
  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  { Ler planilha de Production List para atualizar dados de Embalagens dos Produtos }
  for Linha := 7 to LinhaFim do
  begin
    Erros := 0;
    flagAlteraCadastro := False; // indicar quando � necess�rio atualizar Pedidos/Faturas/ProdList

    lbProcess.Caption := 'Cadastro: processando linha  ' + IntToStr(Linha) + ' de ' + IntToStr(LinhaFim);
    lbProcess.Refresh;

    sHash := '';
    Mesclar := 'N';

    if (trim(ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Text) <> '') then
    begin
      {HASH MD5 da linha do Excel}
      sMD5Excel := ExcelWorksheet.Range['BB'+IntToStr(linha), 'BB'+IntToStr(linha)].Text;

      { AA - SPECIAL CARTON - Identificar se � Embalagem Especial }
      if (ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].MergeCells = True) or
         (ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].Text <> '') then
         EmbEsp := True
      else EmbEsp := False;
      { D - CLIENT'S CODE - C�DIGO DO PRODUTO }
      CodProduto := trim(ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Text);
      CodProduto := SemFmtProduto(clientescod_cliente.AsString, CodProduto);

      if trim(CodProduto) = '' then Continue; { ignorar produto em branco }

      { ignorar produto n�o encontrado }
      if Not(ProcurarProduto(CodProduto, Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger).Existe) then Continue;


      { X - Peso Bruto }
      try
        PesoBruto := ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)].Value;
      except
        PesoBruto := 0.0;
      end;

      { Y - Peso Liquido }
      try
        PesoLiquido := ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)].Value;
        if (ExcelWorksheet.Range['Y'+IntToStr(linha), 'Y'+IntToStr(linha)].MergeCells = True) then
            Mesclar := 'S'
        else
            Mesclar := 'N';
       except
        PesoLiquido := 0.0;
      end;

      { AA - SPECIAL CARTONS }
      if (EmbEsp) then
      begin
         try
           QtdCaixas := ExcelWorksheet.Range['AA'+IntToStr(linha), 'AA'+IntToStr(linha)].Value;
         except
           QtdCaixas := 0;
         end;
      end;

      if ((EmbEsp) and (Mesclar = 'S') and (QtdCaixas > 0)) then
         if (PesoBruto <= PesoLiquido) then Erros := SetBit(Erros,10);

      if Not(EmbEsp) then  { para itens normais }
      begin
        { AB - QUANTITY OF UNITS INSIDE THE PACKING }
        try
          cxMaster := StrToFloat(ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)].Value);
          sHash := ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)].Text;
        except
          Erros := SetBit(Erros,07);
        end;
        { AC - GROSS WEIGHT OF 1 PACKAGE (Kg) - Peso Bruto da Caixa }
        try
          cxPesoBruto := StrToFloat(ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)].Value);
          sHash := sHash + ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)].Text;
        except
          Erros := SetBit(Erros,08);
        end;

        { AE - L (CM) - comprimento }
        try
          cxComprimento := StrToFloat(ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)].Value);
          sHash := sHash + ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)].Text;
          cxComprimento := cxComprimento;
        except
          Erros := SetBit(Erros,04);
        end;
        { AF - W (CM) - Largura }
        try
          cxLargura := StrToFloat(ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)].Value);
          sHash := sHash + ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)].Text;
          cxLargura := cxLargura;
        except
          Erros := SetBit(Erros,05);
        end;
        { AG - H (CM) - Altura}
        try
          cxAltura := StrToFloat(ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)].Value);
          sHash := sHash + ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)].Text;
          cxAltura := cxAltura;
        except
          Erros := SetBit(Erros,06);
        end;

        { AH - NET WEIGHT OF PRODUCT IN KILOGRAMS - Peso Unit�rio do Produto }
        try
          pdPesoUnit := StrToFloat(ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)].Value);
          sHash := sHash + ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)].Text;
        except
          Erros := SetBit(Erros,03);
        end;

        { volume da caixa }
        cxVolCaixa := Arredonda((cxAltura * cxLargura * cxComprimento)/1000000, -4);
        { Peso Unit�rio da caixa vazia }
        cxPesoUnitario := Arredonda(cxPesoBruto - (pdPesoUnit * cxMaster), -5);
        if (cxPesoUnitario <= 0) then Erros := SetBit(Erros,09);
      end;

      { Calcular Hash }
      with TIdHashMessageDigest5.Create do
      try
        sMD5 := TIdHash128.AsHex(HashValue(sHash));
      finally
         free;
      end;

      { Quando Emb. Normal ou Emb. Especial n�o mesclada }
      if ((Erros = 0) and (Mesclar = 'N')) then // atualizar quando n�o houver erros na importa��o
      begin
        with ProdutoEmb do // Procurar produto, atualizar pes_unitario
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('cod_produto').AsString  := CodProduto;
          Open;
          if Not(IsEmpty) then
          begin
            pdPesoUnit := StrToFloat(ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)].Value);

            if (pdPesoUnit <> FieldByName('pes_unitario').AsFloat)  then
            begin
              Edit;
              FieldByName('pes_unitario').AsFloat := pdPesoUnit;
              FieldByName('dat_cad_peso').AsDateTime := Buscar_DateTime;
              FieldByName('obs_peso_unitario').AsString := 'ACCORDING TO PRODUCTION LIST';
              Post;
              flagAlteraCadastro := True;
              ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Interior.ColorIndex :=  xlNone;
            end;
            Close;
          end;
        end;

        if (Not(EmbEsp) and (sMD5 <> sMD5Excel)) then // Somente embalagem padr�o: Embalagens: Volume e Peso Bruto da Caixa Master
        begin
          ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Interior.ColorIndex :=  xlNone;
          with EmbalagemEmb do
          begin
            Close;
            ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
            ParamByName('cod_produto').AsString  := CodProduto;
            Open;
            if Not(IsEmpty) then
            begin
              if (cxVolCaixa <> Arredonda(FieldByName('volume').AsFloat, -4)) then
              begin
                Edit;
                FieldByName('altura').AsFloat := cxAltura;
                FieldByName('largura').AsFloat := cxLargura;
                FieldByName('profundidade').AsFloat := cxComprimento;
                FieldByName('volume').AsFloat := cxVolCaixa;
                FieldByName('dat_cad_dimensoes').AsDateTime := Buscar_DateTime;
                FieldByName('observacao').AsString := 'ACCORDING TO PRODUCTION LIST';
                flagAlteraCadastro := True;
              end;
              { peso unitario da caixa }
              if (cxPesoUnitario <> Arredonda(FieldByName('peso_unitario').AsFloat, -5)) then
              begin
                if Not(State in [dsEdit]) then Edit;
                FieldByName('peso_unitario').AsFloat := cxPesoUnitario;
                FieldByName('dat_cad_peso').AsDateTime := Buscar_DateTime;
                flagAlteraCadastro := True;
              end;
              { Peso Bruto da Caixa Master }
              //if (cxPesoBruto <> Arredonda(FieldByName('pes_bruto_cx').AsFloat, 2)) then
              if (cxPesoBruto <> FieldByName('pes_bruto_cx').AsFloat) then
              begin
                if Not(State in [dsEdit]) then Edit;
                FieldByName('pes_bruto_cx').AsFloat := cxPesoBruto;
                FieldByName('dat_cad_peso').AsDateTime := Buscar_DateTime;
                flagAlteraCadastro := True;
              end;
              { qtde caixa master }
              if (cxMaster <> FieldByName('qtd_master').AsFloat) then
              begin
                if Not(State in [dsEdit]) then Edit;
                FieldByName('qtd_master').AsFloat := cxMaster;
                FieldByName('dat_cad_master').AsDateTime := Buscar_DateTime;
                FieldByName('obs_caixas').AsString := 'ACCORDING TO PRODUCTION LIST';
                flagAlteraCadastro := True;
              end;
              if (State in [dsEdit]) then Post;
              Close;
            end;
          end;
        end;
        { recalcular pedidos }
        if (flagAlteraCadastro) then
        begin
          RecalcularPedidos(CodProduto);
          RecalcularFaturas(CodProduto);
        end;
      end; // if (Erros = 0)
    end; { if (trim(ExcelWorksheet.Range['D'+ inttostr(linha) ... }
  end;
end;

procedure TfrmProductionList.actFaturarExecute(Sender: TObject);
Var
  Seq, i, NumNf  : Integer;
  QtdRomanear : double;
begin
  { ROMANEAR e FATURAR }

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

        { retornar n�mero do Romaneio inserido pela procedure }
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
      Next; // pr�xima fatura
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

  Screen.Cursor := crHourGlass;
  dmProdList.GerarExcelProdList(NumProdList);
  Screen.Cursor := crArrow;

  actFaturar.Enabled := Not(FaturasNovasPrl.IsEmpty);

  Screen.Cursor := crDefault;

  Application.MessageBox('Faturamento Executado', 'Informa��o', MB_OK+MB_ICONINFORMATION);
end;

Procedure TfrmProductionList.AbrirPlanilha(Var Caminho: String);
Var
  lcid : Cardinal;
  WkBk : _Workbook;
begin

  FecharExcel(false);
  dmProdList.FecharExcel;

  { Selecionar a planilha e chamar o  Excel }
  if trim(Caminho) = '' then
  begin
    if (OpenDialog.Execute) then
       Caminho := OpenDialog.FileName
    else begin
      Application.MessageBox('Opera��o cancelada', 'Informa��o', MB_ICONINFORMATION+MB_OK);
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

procedure TfrmProductionList.FormCreate(Sender: TObject);
begin
  FileName := '';
  NumProdList := 0;
  Numromaneio := 0;                                                  
  with Clientes do
  begin
    Open;
  end;
  Fornecedores.Open;
  { par�metro comercial da empresa }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  Application.CreateForm(TdmProdList, dmProdList);  
end;

procedure TfrmProductionList.actAbrirExecute(Sender: TObject);
begin
  if (dbcClientes.Value = '0') then
  begin
    Application.MessageBox('Escolha um Cliente', 'Erro', MB_OK);
    dbcClientes.SetFocus;
    Exit;
  end;

  if (dbcFornecedores.Value = '0') then
  begin
    Application.MessageBox('Escolha um Fornecedor', 'Erro', MB_OK);
    dbcFornecedores.SetFocus;
    Exit;
  end;

  { obter a �ltima planilha processada }
  FileName := GetDirProdList;

  AbrirPlanilha(FileName);
end;

procedure TfrmProductionList.Prod_ListAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;                                                      
   end;
end;

function TfrmProductionList.GetDirProdList(Criar: Boolean = False): String;
Var
  DIR_PLANILHAS, s, Planilha: String;
begin
  { Pasta onde ser� gravada a planilha de Shipping List  }
  DIR_PLANILHAS := parametro_comercialdir_planilhas.AsString;

  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para os documentos n�o definada nos par�metros', 'Informa��o', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;

  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('N�o foi poss�vel criar ' + DIR_PLANILHAS);

  { diret�rio da Planilha, mais subpasta com c�digo do cliente }
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(clientescod_cliente.AsString);
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('N�o foi poss�vel criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\PRODUCTION LISTS';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('N�o foi poss�vel criar ' + DIR_PLANILHAS);

  s := trim(Clientescod_cliente.AsString) + '-' + trim(Fornecedoresraz_social_reduz.AsString);
  s := StringReplace(s, '/', '-', [rfReplaceAll]);
  s := StringReplace(s, '\', '-', [rfReplaceAll]);

  Planilha := DIR_PLANILHAS + '\' + trim(s) + '-PROD-LIST.xls';

  { n�o encontrou planilha no HD, gerar uma nova planilha atualizada }
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
  else begin
    { Backup da planilha antes de processar }
    CopyFile(PChar(Planilha), PChar(Planilha + '.BAK'), false);
    AbrirExcel(Planilha);
  end;

  Result := Planilha;
end;

procedure TfrmProductionList.ProdutoEmbAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure TfrmProductionList.EmbalagemEmbAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure TfrmProductionList.EmbalagemEmbBeforePost(DataSet: TDataSet);
begin
  { Atualizar o Histr�rico de Embalagens, quando for uma altera��o cadastral }
  if DataSet.State = dsEdit then
  begin
    Embalagem_Hist.Append;
    Embalagem_Hist.Post;
    Embalagem_Hist.Close;
  end;
end;

procedure TfrmProductionList.Embalagem_HistAfterPost(DataSet: TDataSet);
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

procedure TfrmProductionList.Embalagem_HistNewRecord(DataSet: TDataSet);
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
    FieldByName('pes_bruto_cx').Value := EmbalagemEmb.FieldByName('pes_bruto_cx').OldValue;

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

procedure TfrmProductionList.ProdutoEmbAfterOpen(DataSet: TDataSet);
begin
  { hist�rico da embalagens }
  with Embalagem_Hist do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := DataSet.FieldByName('cod_Produto').AsString;
    Open;
  end;
end;

procedure TfrmProductionList.dbcClientesChange(Sender: TObject);
begin
  with Fornecedores do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    Open;
  end;
  FileName := '';
  dbcFornecedores.ClearValue;
end;

procedure TfrmProductionList.SaldoVirtualPedidos;
Var
  Linha, LinhaAnt, LinhaFim, SeqPed, SeqAnt, NumSeqNf : Integer;
  Pedido, Confirmacao, Data, Q : String;                                     
  NumPedido: Int64;
  qtEmbarque : double;
  Invoice, iSitFatura : String;
begin
  { inicializar Saldo Virtual em Itens dos Pedidos: qtd_saldo e qtd_romanear em Pedido Produto     }
  SeqAnt := 0;
  Linha := 7;
  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  for Linha := 7 to LinhaFim do
  begin
    lbProcess.Caption := 'Saldos: processando linha  ' + IntToStr(Linha) + ' de ' + IntToStr(LinhaFim);
    lbProcess.Refresh;

    if (trim(ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Text) <> '') then
    begin
      { A - SEQUENCIA DO ITEM NO PEDIDO }
      try
        SeqPed := ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Value;
      except
        SeqPed := 0;
      end;

      if (SeqPed = 0) then Continue; { Ignorar linha com sequencia em branco }

      { B - ORDER NUMBER }
      Pedido := '';
      Pedido := trim(ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Text);

      if (trim(Pedido) = '') then Continue; { Ignorar pedido em branco }

      { Obter N�mero do Pedido no Sistema }
      with dmCOM.GetPedido(Pedido, 'P') do
      begin
        NumPedido := Numero;
      end;

      if (NumPedido = 0) then Continue; { ignorar pedido n�o encontrado }

      { C - CONFIRMA��O }
      Confirmacao := trim(ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Text);

      { O - QUANTIDADE A SER EMBARCADA }
      try
        Q := (ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)].Value);
        Q := StringReplace(Q, '.', '', [rfReplaceAll]);
        qtEmbarque := StrToFloat(Q);
      except
        qtEmbarque := 0.00;
      end;

      // 27.04.22 - retirei o coment�rio da linha abaixo
      if (qtEmbarque = 0) then Continue; { ignorar quantidade embarcada zero }

      { P - INVOICE NUMBER }
      Invoice := UpperCase(ExcelWorksheet.Range['P'+IntToStr(linha), 'P'+IntToStr(linha)].Value);
      { Q - SEQ. INVOICE ITEM }
      try
        NumSeqNf := ExcelWorksheet.Range['Q'+IntToStr(linha), 'Q'+IntToStr(linha)].Value;
      except
        NumSeqNf := 0;
      end;

      { Retorna Status da Fatura N/F/E }
      iSitFatura := GetSitFatura(Invoice);
      { N�o ajustar Saldos para itens j� Faturados }
      //if ((iSitFatura = 'F') or (iSitFatura = 'E')) and (NumSeqNf > 0) then Continue;

      { ATUALIZAR SALDOS DE CONTROLE NOS ITENS DOS PEDIDOS }
      with pedido_produto do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('num_pedido').Value := NumPedido;
        ParamByName('num_sequencia').Value := SeqPed;
        Open;
        if Not(IsEmpty) then
        begin
          Edit;
          { inicializar qtd_saldo e qtd_romanear }
          FieldByName('qtd_romanear').Value := 0.00;
          FieldByName('qtd_saldo').Value := FieldByName('qtd_pendente').AsFloat;
          Post;
        end;
      end;
    end;
  end;
end;


procedure TfrmProductionList.pedido_produtoAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure TfrmProductionList.prod_list_itensAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

procedure TfrmProductionList.prod_list_itensAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

function TfrmProductionList.PrecoPedidoProduto(NumPedido: Int64; NumSeq: Integer): TObsPreco;
begin
  with Pedido_Produto do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;
    ParamByName('num_sequencia').Value := NumSeq;
    Open;
    Result.Obs_Preco  := 'Price of product: '+FormatFloat('#,##0.0000', FieldByName('vlr_unitario').AsFloat) + ' ' + FieldByName('obs_preco').AsString;
    Result.Obs_Preco_Esp  := 'Price of product: '+FormatFloat('#,##0.0000', FieldByName('vlr_unitario_esp').AsFloat) + ' ' + FieldByName('obs_preco_esp').AsString;
    Close;
  end;
end;

procedure TfrmProductionList.FaturasNovasPrlCalcFields(DataSet: TDataSet);
begin
   { Indicar se existem itens pertencentes a uma fatura, importados da production list, }
   { que n�o passaram na inspe��o ou n�o foram inspecionados.                           }
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

procedure TfrmProductionList.dbcFornecedoresChange(Sender: TObject);
begin
  FileName := '';
  if GetGerar(Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger) then
  begin
    Application.MessageBox('Mudan�as em Pedidos ou Faturas alteraram a Production List.' + #13 + 'Por favor gere as planilhas de Production List novamente.', 'Informa��o', MB_OK);
    btnImportar.Enabled := False;
    btnAbrir.Enabled := False;
    btnGerar.SetFocus;
  end;
  NumProdList := GetNumProdList(Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger);
  frmProductionList.Caption := 'Production List #' + IntToStr(NumProdList);
end;

procedure TfrmProductionList.actGerarExecute(Sender: TObject);
begin
  if (dbcClientes.Value = '0') then
  begin
    Application.MessageBox('Escolha um Cliente', 'Erro', MB_OK);
    dbcClientes.SetFocus;
    Exit;
  end;

  if (dbcFornecedores.Value = '0') then
  begin
    Application.MessageBox('Escolha um Fornecedor', 'Erro', MB_OK);
    dbcFornecedores.SetFocus;
    Exit;
  end;

  NumProdList := GetNumProdList(Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger);
  frmProductionList.Caption := 'Production List #' + IntToStr(NumProdList);

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

  { atualizar Pre�os Especiais }
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

  { Itens preparados para faturar com n�mero de invoice na planilha }
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

  Screen.Cursor := crHourGlass;
  dmProdList.GerarExcelProdList(NumProdList);
  Screen.Cursor := crArrow;

  dmProdList.FecharExcel;

  { finalizar progress bar }
  btnImportar.Enabled := True;
  lbProcess.Caption := '';
  btnAbrir.Enabled := True;
  
  actAbrirExecute(nil);
end;

procedure TfrmProductionList.Produto_FaturaAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

end.

