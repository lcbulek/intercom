unit SigIMP01_001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnMenuCompl, ExtCtrls, ActnList, Menus, ComCtrls, jpeg,
  JvComponentBase, JvBalloonHint;

type
  Tfr_MenuPrincipalCOM = class(Tfr_MenuPrincipal)
    Cadastros1: TMenuItem;
    Fechar2: TMenuItem;
    N7: TMenuItem;
    Containers1: TMenuItem;
    Portos1: TMenuItem;
    Relatrios1: TMenuItem;
    Empresa1: TMenuItem;
    Idiomas1: TMenuItem;
    N6: TMenuItem;
    Fornecedor1: TMenuItem;
    Comercial1: TMenuItem;
    ipodeEmbarque1: TMenuItem;
    Armadores1: TMenuItem;
    DespachanteAduaneiro1: TMenuItem;
    Comisses1: TMenuItem;
    Produtos1: TMenuItem;
    IncluirProdutos1: TMenuItem;
    PesquisarProdutos1: TMenuItem;
    UnidadesdeMedidas1: TMenuItem;
    CadastrarTiposdeProdutos1: TMenuItem;
    N3: TMenuItem;
    PesquisarProdutos2: TMenuItem;
    ransportadorForwarder1: TMenuItem;
    AgentesMartmosTerrestresLocais1: TMenuItem;
    ListadePreos1: TMenuItem;
    N2: TMenuItem;
    PreparaodePedidos1: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    ProductionList1: TMenuItem;
    N4: TMenuItem;
    CondiodeVendaINCOTERMS1: TMenuItem;
    Moeda2: TMenuItem;
    PesquisareAlterarCotaesRecebidas1: TMenuItem;
    N8: TMenuItem;
    GerarExcelcomHistoricodePrecosdosProdutos1: TMenuItem;
    GerarExcelcomHistricodeCompraseEmbarquedosprodutos1: TMenuItem;
    PedidoseFaturas1: TMenuItem;
    PesquisareAlterarPedidoseFaturas1: TMenuItem;
    Produtosembarcadosporpedido2: TMenuItem;
    Produtosembarcadosporfatura2: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    RelatriodePagamentosEfetuados1: TMenuItem;
    Fabricantes1: TMenuItem;
    HistricodeCompraseEmbarquedeProdutosdeumClienteeFornecedordeumano1: TMenuItem;
    HistoricoComprasdeumaListadeProdutos1: TMenuItem;
    PagamentosEfetuadosporPedido1: TMenuItem;
    ProductionListExcel1: TMenuItem;
    ProductionListTela1: TMenuItem;
    actContainers: TAction;
    actCadProdutoOpen: TAction;
    actCadastroFornecedor: TAction;
    actCadastroCliente: TAction;
    actCadastroCondVenda: TAction;
    actProdListExcel: TAction;
    act_ManPedido_NF: TAction;
    actComissoes: TAction;
    Action9: TAction;
    actPortos: TAction;
    actTipoEmbarque: TAction;
    actArmadores: TAction;
    actCadastroTransportadora: TAction;
    actAgentes: TAction;
    actFabricantes: TAction;
    actCadastroMoeda: TAction;
    act_fr_CadComercial: TAction;
    actCadastroUnidadeMedida: TAction;
    actPesquisarProdutos: TAction;
    actAlterarProdutos: TAction;
    actCadastroTipoProduto: TAction;
    actCadastroCotacoes: TAction;
    actAlterarCotacoes: TAction;
    actRelListaPreco: TAction;
    actHistProduto: TAction;
    actHistAno: TAction;
    actHistListaProdutos: TAction;
    actPedidoNovo: TAction;
    actPedidoAbrir: TAction;
    actProdListTela: TAction;
    actProdutosEmb: TAction;
    actProdutosEmbFat: TAction;
    actPagamentoPedidos: TAction;
    actPagamentosFaturas: TAction;
    actPedidosResumo: TAction;
    N10: TMenuItem;
    PedidosregistradosnoSistemaResumo1: TMenuItem;
    actFaturasResumo: TAction;
    FaturasRegistradosnoSistemaResumo1: TMenuItem;
    actCadUsuarios: TAction;
    actUsuarios1: TMenuItem;
    procedure act_fr_CadComercialExecute(Sender: TObject);
    procedure act_ManPedido_NFExecute(Sender: TObject);
    procedure actContainersExecute(Sender: TObject);
    procedure actPortosExecute(Sender: TObject);
    procedure actRelListaPrecoExecute(Sender: TObject);
    procedure actCadastroEmpresaExecute(Sender: TObject);
    procedure actCadastroPaisExecute(Sender: TObject);
    procedure actCadastroUnidadeFederativaExecute(Sender: TObject);
    procedure actCadastroCidadeExecute(Sender: TObject);
    procedure actCadastroUnidadeMedidaExecute(Sender: TObject);
    procedure actCadastroTipoProdutoExecute(Sender: TObject);
    procedure actIdiomasExecute(Sender: TObject);
    procedure actCadastroFornecedorExecute(Sender: TObject);
    procedure actCadastroCompradorExecute(Sender: TObject);
    procedure actCadastroTransportadoraExecute(Sender: TObject);
    procedure actCadastroClienteExecute(Sender: TObject);
    procedure actCadastroMoedaExecute(Sender: TObject);
    procedure actCadastroPagamentoExecute(Sender: TObject);
    procedure actCadastroTipoClienteExecute(Sender: TObject);
    procedure actCadastroTipoNotaFiscalExecute(Sender: TObject);
    procedure actCadastroVendedorExecute(Sender: TObject);
    procedure actCadastroCondVendaExecute(Sender: TObject);
    procedure actCadastroBancoExecute(Sender: TObject);
    procedure actHistReclamacaoExecute(Sender: TObject);
    procedure actSitEmbalagemExecute(Sender: TObject);
    procedure actCadListaOpenExecute(Sender: TObject);
    procedure actCadProdutoOpenExecute(Sender: TObject);
    procedure actPedidoAbrirExecute(Sender: TObject);
    procedure actPedidoNovoExecute(Sender: TObject);
    procedure actMudaNumPedidoExecute(Sender: TObject);
    procedure actTipoEmbarqueExecute(Sender: TObject);
    procedure actArmadoresExecute(Sender: TObject);
    procedure actDespachanteExecute(Sender: TObject);
    procedure actGrupoExecute(Sender: TObject);
    procedure actProdutosEmbExecute(Sender: TObject);
    procedure actProdutoEmbFatExecute(Sender: TObject);
    procedure actPagamentoPedidosExecute(Sender: TObject);
    procedure actNcmExecute(Sender: TObject);
    procedure actComissoesExecute(Sender: TObject);
    procedure actHistProdutoExecute(Sender: TObject);
    procedure actAlterarProdutosExecute(Sender: TObject);
    procedure actPesquisarProdutosExecute(Sender: TObject);
    procedure actAgentesExecute(Sender: TObject);
    procedure actCadastroCotacoesExecute(Sender: TObject);
    procedure actAlterarCotacoesExecute(Sender: TObject);
    procedure actFabricantesExecute(Sender: TObject);
    procedure actHistAnoExecute(Sender: TObject);
    procedure actHistListaProdutosExecute(Sender: TObject);
    procedure actPagamentosFaturasExecute(Sender: TObject);
    procedure actProdListTelaExecute(Sender: TObject);
    procedure actProdListExcelExecute(Sender: TObject);
    procedure actPedidosResumoExecute(Sender: TObject);
    procedure actProdutosEmbFatExecute(Sender: TObject);
    procedure actFaturasResumoExecute(Sender: TObject);
    procedure actCadUsuariosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_MenuPrincipalCOM: Tfr_MenuPrincipalCOM;

implementation

uses unConnection, SigIMP01_000, SigIMP01_002, SigIMP01_003, SigIMP01_004, SigIMP01_005, SigIMP01_010, SigIMP01_038,
     SigIMP01_057, SigIMP01_058, SigIMP01_059, SigIMP01_011, SigCAD01_002, SigCAD01_004, SigCAD01_005, SigCAD01_006,
     SigCAD01_007, SigCAD01_008, SigCAD01_012, SigCAD01_015, SigCAD01_016, SigCAD01_017, SigCAD01_020,
     SigCAD01_021, SigCAD01_023, SigCAD01_025, SigCAD01_026, SigCAD01_027, SigCAD01_029, SigCAD01_031,
     SigCAD01_033, SigCAD01_043, SigCAD01_046, SigCAD01_050, SigCAD01_075,
     SigCAD01_080, SigCAD01_076, SigIMP01_060, SigIMP01_062, SigIMP01_065, SigIMP01_066, SigIMP01_067,
     SigIMP01_068, SigIMP01_071, SigIMP01_072, SigIMP01_075, SigIMP01_076, SigIMP01_078, SigIMP01_081,
     SigCAD01_087, SigIMP01_089, SigIMP01_090, SigIMP01_092, SigIMP01_093, SigADM02_006,
     UnPesquisaProduto;

{$R *.dfm}

procedure Tfr_MenuPrincipalCOM.act_fr_CadComercialExecute(Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_ParametrosComercial, fr_ParametrosComercial);
end;

procedure Tfr_MenuPrincipalCOM.act_ManPedido_NFExecute(Sender: TObject);
begin
  inherited;
	CriarForm(Tfr_Filtro, fr_Filtro, False, False, True);
end;

procedure Tfr_MenuPrincipalCOM.actContainersExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadContainers, fr_CadContainers);
end;

procedure Tfr_MenuPrincipalCOM.actPortosExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadPortos, fr_CadPortos);
end;

procedure Tfr_MenuPrincipalCOM.actRelListaPrecoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_HistoricoPrecos, fr_HistoricoPrecos);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroEmpresaExecute(Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadEmpresa, fr_CadEmpresa);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroPaisExecute(Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadPais, fr_CadPais);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroUnidadeFederativaExecute(
  Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadUnidadeFederativa, fr_CadUnidadeFederativa);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroCidadeExecute(Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadCidade, fr_CadCidade);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroUnidadeMedidaExecute(
  Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadMedida, fr_CadMedida);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroTipoProdutoExecute(
  Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadTipoProduro, fr_CadTipoProduro);
end;

procedure Tfr_MenuPrincipalCOM.actIdiomasExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_Cad_Idiomas, fr_Cad_Idiomas);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroFornecedorExecute(
  Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadFornecedor, fr_CadFornecedor);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroCompradorExecute(
  Sender: TObject);
begin
  inherited;
	CriarForm(Tfr_CadComprador, fr_CadComprador);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroTransportadoraExecute(
  Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadTransportadora, fr_CadTransportadora);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroClienteExecute(Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadCliente, fr_CadCliente);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroMoedaExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadMoeda, fr_CadMoeda);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroPagamentoExecute(
  Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadPagamento, fr_CadPagamento);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroTipoClienteExecute(
  Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadTipoCliente, fr_CadTipoCliente);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroTipoNotaFiscalExecute(
  Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadTipoNotaFiscal, fr_CadTipoNotaFiscal);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroVendedorExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadVendedor, fr_CadVendedor);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroCondVendaExecute(
  Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadCondVenda, fr_CadCondVenda);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroBancoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadBanco, fr_CadBanco);
end;

procedure Tfr_MenuPrincipalCOM.actHistReclamacaoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadReclamacoes, fr_CadReclamacoes);
end;

procedure Tfr_MenuPrincipalCOM.actSitEmbalagemExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadSitEmbalagem, fr_CadSitEmbalagem);
end;

procedure Tfr_MenuPrincipalCOM.actCadListaOpenExecute(Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadLista, fr_CadLista);
end;

procedure Tfr_MenuPrincipalCOM.actCadProdutoOpenExecute(Sender: TObject);
begin
   CriarForm(Tfr_CadProduto, fr_CadProduto);
   fr_CadProduto.New;
end;

procedure Tfr_MenuPrincipalCOM.actPedidoAbrirExecute(Sender: TObject);
begin
  inherited;
  CriarForm(TfrmImportarPedidoCliente, frmImportarPedidoCliente, False, False, True);
  frmImportarPedidoCliente.Abrir;
end;

procedure Tfr_MenuPrincipalCOM.actPedidoNovoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(TfrmImportarPedidoCliente, frmImportarPedidoCliente, False, False, True);
  frmImportarPedidoCliente.Novo;
end;

procedure Tfr_MenuPrincipalCOM.actMudaNumPedidoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfrm_MudaNumPedidos, frm_MudaNumPedidos);
end;

procedure Tfr_MenuPrincipalCOM.actTipoEmbarqueExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadTipoEmbarque, fr_CadTipoEmbarque);
end;

procedure Tfr_MenuPrincipalCOM.actArmadoresExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadArmadores, fr_CadArmadores);
end;

procedure Tfr_MenuPrincipalCOM.actDespachanteExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadDespachante, fr_CadDespachante);
end;

procedure Tfr_MenuPrincipalCOM.actGrupoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadGrupoProduto, fr_CadGrupoProduto);
end;

procedure Tfr_MenuPrincipalCOM.actProdutosEmbExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_PedidosRegistrados, fr_PedidosRegistrados);
end;

procedure Tfr_MenuPrincipalCOM.actProdutoEmbFatExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_FaturasRegistradas, fr_FaturasRegistradas);
end;

procedure Tfr_MenuPrincipalCOM.actPagamentoPedidosExecute(Sender: TObject);
begin
  inherited;
  CriarForm(TfrmPagamentosPedidos, frmPagamentosPedidos);
end;

procedure Tfr_MenuPrincipalCOM.actNcmExecute(Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadNcm, fr_CadNcm);
end;

procedure Tfr_MenuPrincipalCOM.actComissoesExecute(Sender: TObject);
begin
  inherited;
  CriarForm(TfrmRelComissoes, frmRelComissoes);
end;

procedure Tfr_MenuPrincipalCOM.actHistProdutoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_HistoricoComprasEmbarque, fr_HistoricoComprasEmbarque);
  fr_HistoricoComprasEmbarque.HistCompProduto;
end;

procedure Tfr_MenuPrincipalCOM.actAlterarProdutosExecute(
  Sender: TObject);
begin
  inherited;
  { Alterar Produtos }
  CriarForm(Tfr_CadProduto, fr_CadProduto);
  fr_CadProduto.Open;
end;

procedure Tfr_MenuPrincipalCOM.actPesquisarProdutosExecute(
  Sender: TObject);
begin
  inherited;
  { Criar e Mostrar a Tela de Pesquisa de Produtos }
  CriarForm(Tfr_PesquisaProduto, fr_PesquisaProduto, false);

  fr_PesquisaProduto.PesquisarMenu;
end;

procedure Tfr_MenuPrincipalCOM.actAgentesExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_Agentes, fr_Agentes);
end;

procedure Tfr_MenuPrincipalCOM.actCadastroCotacoesExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadLista, fr_CadLista);

  fr_CadLista.New;
end;

procedure Tfr_MenuPrincipalCOM.actAlterarCotacoesExecute(Sender: TObject);
begin
  inherited;
   CriarForm(Tfr_CadLista, fr_CadLista);

   fr_CadLista.Open;
end;

procedure Tfr_MenuPrincipalCOM.actFabricantesExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_Fabricantes, fr_Fabricantes);
end;

procedure Tfr_MenuPrincipalCOM.actHistAnoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_HistoricoComprasEmbarque, fr_HistoricoComprasEmbarque);
  fr_HistoricoComprasEmbarque.HistCompCliFor;
end;

procedure Tfr_MenuPrincipalCOM.actHistListaProdutosExecute(
  Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_HistoricoComprasEmbarque, fr_HistoricoComprasEmbarque);
  fr_HistoricoComprasEmbarque.HistListaProdutos;
end;

procedure Tfr_MenuPrincipalCOM.actPagamentosFaturasExecute(
  Sender: TObject);
begin
  inherited;
  CriarForm(TfrmPagamentosFaturas, frmPagamentosFaturas);
end;

procedure Tfr_MenuPrincipalCOM.actProdListTelaExecute(Sender: TObject);
begin
  inherited;
  CriarForm(TfrmProdList, frmProdList, False, False, true);
end;

procedure Tfr_MenuPrincipalCOM.actProdListExcelExecute(Sender: TObject);
begin
  inherited;
  CriarForm(TfrmProductionList, frmProductionList);
end;

procedure Tfr_MenuPrincipalCOM.actPedidosResumoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_PedidosRegistradosResumo, fr_PedidosRegistradosResumo);
end;

procedure Tfr_MenuPrincipalCOM.actProdutosEmbFatExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_FaturasRegistradas, fr_FaturasRegistradas);
end;

procedure Tfr_MenuPrincipalCOM.actFaturasResumoExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_FaturasRegistradasResumo, fr_FaturasRegistradasResumo);
end;

procedure Tfr_MenuPrincipalCOM.actCadUsuariosExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_CadUsuario, fr_CadUsuario);
end;

end.

