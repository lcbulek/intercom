inherited fr_MenuPrincipalCOM: Tfr_MenuPrincipalCOM
  Left = 847
  Top = 280
  HelpType = htKeyword
  HelpKeyword = '001'
  Caption = 'fr_MenuPrincipalCOM'
  ClientHeight = 474
  ClientWidth = 1017
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited HeaderControl1: THeaderControl
    Top = 454
    Width = 1017
  end
  inherited MainMenu1: TMainMenu
    Top = 48
    object Cadastros1: TMenuItem [0]
      Caption = 'Cadastros'
      object Empresa1: TMenuItem
        Caption = 'Empresas Usuarias do Sistema'
        OnClick = actCadastroEmpresaExecute
      end
      object Idiomas1: TMenuItem
        Caption = 'Idiomas do Sistema'
        Visible = False
        OnClick = actIdiomasExecute
      end
      object Moeda2: TMenuItem
        Caption = 'Moedas'
        OnClick = actCadastroMoedaExecute
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Portos1: TMenuItem
        Caption = 'Portos Cadastrados'
        Hint = 'Cadastro de Portos de Embarque/Desembarque'
        OnClick = actPortosExecute
      end
      object Containers1: TMenuItem
        Caption = 'Tipos de Containers'
        OnClick = actContainersExecute
      end
      object ipodeEmbarque1: TMenuItem
        Caption = 'Modalidades de Embarque'
        OnClick = actTipoEmbarqueExecute
      end
      object Armadores1: TMenuItem
        Caption = 'Armadores Cadastrados'
        OnClick = actArmadoresExecute
      end
      object DespachanteAduaneiro1: TMenuItem
        Caption = 'Despachante Aduaneiro'
        Visible = False
        OnClick = actDespachanteExecute
      end
      object ransportadorForwarder1: TMenuItem
        Caption = 'Transportador/Forwarder'
        OnClick = actCadastroTransportadoraExecute
      end
      object AgentesMartmosTerrestresLocais1: TMenuItem
        Caption = 'Agentes Mar'#237'tmos / Terrestres Locais'
        OnClick = actAgentesExecute
      end
      object Fabricantes1: TMenuItem
        Caption = 'Fabricantes'
        OnClick = actFabricantesExecute
      end
      object N7: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Fechar2: TMenuItem
        Action = dmConnection.acClose
      end
    end
    object Produtos1: TMenuItem [1]
      Caption = 'Produtos'
      object IncluirProdutos1: TMenuItem
        Caption = 'Incluir Produtos Novos'
        OnClick = actCadProdutoOpenExecute
      end
      object PesquisarProdutos1: TMenuItem
        Caption = 'Alterar Produtos'
        OnClick = actAlterarProdutosExecute
      end
      object PesquisarProdutos2: TMenuItem
        Caption = 'Pesquisar Produtos'
        OnClick = actPesquisarProdutosExecute
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object ListadePreos1: TMenuItem
        Caption = 'Cadastrar Cota'#231#245'es Recebidas'
        OnClick = actCadastroCotacoesExecute
      end
      object PesquisareAlterarCotaesRecebidas1: TMenuItem
        Caption = 'Pesquisar e Alterar Cota'#231#245'es Recebidas'
        OnClick = actAlterarCotacoesExecute
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object GerarExcelcomHistoricodePrecosdosProdutos1: TMenuItem
        Caption = 
          'Historico de Precos de um Produto (inclu'#237'das cota'#231#245'es e confirma' +
          #231#245'es)'
        OnClick = actRelListaPrecoExecute
      end
      object GerarExcelcomHistricodeCompraseEmbarquedosprodutos1: TMenuItem
        Caption = 'Hist'#243'rico de Compras e Embarque de um Produto'
        OnClick = actHistProdutoExecute
      end
      object HistricodeCompraseEmbarquedeProdutosdeumClienteeFornecedordeumano1: TMenuItem
        Caption = 
          'Hist'#243'rico de Compras e Embarque de Produtos por Cliente  Fornece' +
          'dor de um Ano'
        OnClick = actHistAnoExecute
      end
      object HistoricoComprasdeumaListadeProdutos1: TMenuItem
        Caption = 'Historico Compras e Embarque de uma Lista de Produtos'
        OnClick = actHistListaProdutosExecute
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object UnidadesdeMedidas1: TMenuItem
        Caption = 'Unidades de Medidas'
        OnClick = actCadastroUnidadeMedidaExecute
      end
      object CadastrarTiposdeProdutos1: TMenuItem
        Caption = 'Cadastrar Tipos de Produtos'
        OnClick = actCadastroTipoProdutoExecute
      end
    end
    object Fornecedor1: TMenuItem [2]
      Caption = 'Fornecedor'
      OnClick = actCadastroFornecedorExecute
    end
    object Comercial1: TMenuItem [3]
      Caption = 'Cliente'
      OnClick = actCadastroClienteExecute
    end
    object PreparaodePedidos1: TMenuItem [4]
      Caption = 'Prepara'#231#227'o de Pedidos'
      object Novo1: TMenuItem
        Caption = 'Criar um novo pedido'
        OnClick = actPedidoNovoExecute
      end
      object Abrir1: TMenuItem
        Caption = 'Abrir Pedidos em preparacao'
        OnClick = actPedidoAbrirExecute
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object CondiodeVendaINCOTERMS1: TMenuItem
        Caption = 'Condi'#231#227'o de Venda (INCOTERMS)'
        OnClick = actCadastroCondVendaExecute
      end
    end
    object ProductionList1: TMenuItem [5]
      Caption = 'Production List'
      object ProductionListExcel1: TMenuItem
        Caption = 'Production List Excel'
        ShortCut = 119
        OnClick = actProdListExcelExecute
      end
      object ProductionListTela1: TMenuItem
        Caption = 'Production List Tela'
        ShortCut = 120
        OnClick = actProdListTelaExecute
      end
    end
    object PedidoseFaturas1: TMenuItem [6]
      Caption = 'Pedidos e Faturas'
      object PesquisareAlterarPedidoseFaturas1: TMenuItem
        Caption = 'Pesquisar e Alterar Pedidos e Faturas'
        ShortCut = 116
        OnClick = act_ManPedido_NFExecute
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Produtosembarcadosporpedido2: TMenuItem
        Caption = 'Gerar Excel dos Pedidos registrados no Sistema '
        OnClick = actProdutosEmbExecute
      end
      object Produtosembarcadosporfatura2: TMenuItem
        Caption = 'Gerar Excel das Faturas registradas no Sistema '
        OnClick = actProdutoEmbFatExecute
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object PedidosregistradosnoSistemaResumo1: TMenuItem
        Action = actPedidosResumo
      end
      object FaturasRegistradosnoSistemaResumo1: TMenuItem
        Action = actFaturasResumo
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object RelatriodePagamentosEfetuados1: TMenuItem
        Caption = 'Pagamentos Efetuados por Pedido'
        OnClick = actPagamentoPedidosExecute
      end
      object PagamentosEfetuadosporPedido1: TMenuItem
        Caption = 'Pagamentos Efetuados por Fatura'
        OnClick = actPagamentosFaturasExecute
      end
    end
    object Relatrios1: TMenuItem [7]
      Caption = 'Relat'#243'rios'
      object Comisses1: TMenuItem
        Caption = 'Relat'#243'rio de Comiss'#245'es'
        OnClick = actComissoesExecute
      end
    end
    inherited Sobre1: TMenuItem
      inherited N1: TMenuItem
        Visible = False
      end
      inherited Ajuda1: TMenuItem
        Visible = False
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 148
    Top = 48
    object actContainers: TAction
      Category = 'Cadastros'
      Caption = 'Tipos de Containers'
      OnExecute = actContainersExecute
    end
    object actCadProdutoOpen: TAction
      Category = 'Produtos'
      Caption = 'Incluir Produtos Novos'
    end
    object actCadastroFornecedor: TAction
      Category = 'Fornecedor'
      Caption = 'Fornecedor'
    end
    object actCadastroCliente: TAction
      Category = 'Cliente'
      Caption = 'Cliente'
    end
    object actCadastroCondVenda: TAction
      Category = 'Prepara'#231#227'o de Pedidos'
      Caption = 'Condi'#231#227'o de Venda (INCOTERMS)'
    end
    object actProdListExcel: TAction
      Category = 'Production LIst'
      Caption = 'Production List Excel'
    end
    object act_ManPedido_NF: TAction
      Category = 'Pedidos e Faturas'
      Caption = 'Pesquisar e Alterar Pedidos e Faturas'
      OnExecute = act_ManPedido_NFExecute
    end
    object actComissoes: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Relat'#243'rio de Comiss'#245'es'
    end
    object Action9: TAction
      Category = 'Sobre'
      Caption = 'Action9'
    end
    object actPortos: TAction
      Category = 'Cadastros'
      Caption = 'Portos Cadastrados'
    end
    object actTipoEmbarque: TAction
      Category = 'Cadastros'
      Caption = 'Modalidades de Embarque'
    end
    object actArmadores: TAction
      Category = 'Cadastros'
      Caption = 'Armadores Cadastrados'
    end
    object actCadastroTransportadora: TAction
      Category = 'Cadastros'
      Caption = 'Transportador/Forwarder'
    end
    object actAgentes: TAction
      Category = 'Cadastros'
      Caption = 'Agentes Mar'#237'tmos / Terrestres Locais'
    end
    object actFabricantes: TAction
      Category = 'Cadastros'
      Caption = 'Fabricantes'
      OnExecute = actFabricantesExecute
    end
    object actCadastroMoeda: TAction
      Category = 'Cadastros'
      Caption = 'Moedas'
    end
    object act_fr_CadComercial: TAction
      Category = 'Cadastros'
      Caption = 'Empresas Usu'#225'rias do Sistema'
      OnExecute = act_fr_CadComercialExecute
    end
    object actCadastroUnidadeMedida: TAction
      Category = 'Produtos'
      Caption = 'Unidades de Medidas'
    end
    object actPesquisarProdutos: TAction
      Category = 'Produtos'
      Caption = 'Pesquisar Produtos'
    end
    object actAlterarProdutos: TAction
      Category = 'Produtos'
      Caption = 'Alterar Produtos'
    end
    object actCadastroTipoProduto: TAction
      Category = 'Produtos'
      Caption = 'Cadastrar Tipos de Produtos'
    end
    object actCadastroCotacoes: TAction
      Category = 'Produtos'
      Caption = 'Cadastrar Cota'#231#245'es Recebidas'
    end
    object actAlterarCotacoes: TAction
      Category = 'Produtos'
      Caption = 'Pesquisar e Alterar Cota'#231#245'es Recebidas'
    end
    object actRelListaPreco: TAction
      Category = 'Produtos'
      Caption = 
        'Historico de Precos de um Produto (inclu'#237'das cota'#231#245'es e confirma' +
        #231#245'es)'
    end
    object actHistProduto: TAction
      Category = 'Produtos'
      Caption = 'Hist'#243'rico de Compras e Embarque de um Produto'
    end
    object actHistAno: TAction
      Category = 'Produtos'
      Caption = 
        'Hist'#243'rico de Compras e Embarque de Produtos por Cliente  Fornece' +
        'dor de um Ano'
    end
    object actHistListaProdutos: TAction
      Category = 'Produtos'
      Caption = 'Historico Compras e Embarque de uma Lista de Produtos'
    end
    object actPedidoNovo: TAction
      Category = 'Prepara'#231#227'o de Pedidos'
      Caption = 'Criar um novo pedido'
    end
    object actPedidoAbrir: TAction
      Category = 'Prepara'#231#227'o de Pedidos'
      Caption = 'Abrir Pedidos em preparacao'
    end
    object actProdListTela: TAction
      Category = 'Production LIst'
      Caption = 'Production List Tela'
    end
    object actProdutosEmb: TAction
      Category = 'Pedidos e Faturas'
      Caption = 'Pedidos registrados no Sistema'
      OnExecute = actProdutosEmbExecute
    end
    object actProdutosEmbFat: TAction
      Category = 'Pedidos e Faturas'
      Caption = 'Gerar Excel das Faturas registradas no Sistema '
      OnExecute = actProdutosEmbFatExecute
    end
    object actPagamentoPedidos: TAction
      Category = 'Pedidos e Faturas'
      Caption = 'Pagamentos Efetuados por Pedido'
      OnExecute = actPagamentoPedidosExecute
    end
    object actPagamentosFaturas: TAction
      Category = 'Pedidos e Faturas'
      Caption = 'Pagamentos Efetuados por Fatura'
      OnExecute = actPagamentosFaturasExecute
    end
    object actPedidosResumo: TAction
      Category = 'Pedidos e Faturas'
      Caption = 'Pedidos registrados no Sistema - Resumo'
      OnExecute = actPedidosResumoExecute
    end
    object actFaturasResumo: TAction
      Category = 'Pedidos e Faturas'
      Caption = 'Faturas Registradas no Sistema - Resumo'
      OnExecute = actFaturasResumoExecute
    end
  end
end
