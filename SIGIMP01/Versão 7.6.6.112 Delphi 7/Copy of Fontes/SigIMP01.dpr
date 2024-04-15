program SigIMP01;

uses
  ShareMem,
  Forms,
  Controls,
  Dialogs,
  SysUtils,
  unConnection in 'unConnection.pas' {dmConnection: TDataModule},
  unLogin in 'unLogin.pas' { fr_Login },
  UnAbout in 'UnAbout.pas' {fr_Sobre},
  UnNavigator in 'UnNavigator.pas' {fr_FmNavigator: TFrame},
  UnGrid in 'UnGrid.pas' {fr_FmGrid: TFrame},
  UnCad in 'UnCad.pas' {fr_Cad},
  UnMenuCompl in 'UnMenuCompl.pas' {fr_MenuPrincipal},
  unGrade in 'unGrade.pas' {fr_Grade},
  UnPesquisa in 'UnPesquisa.pas' {fr_Pesquisa},
  UnEntradaRelatorio in 'UnEntradaRelatorio.pas' {rl_EntradaRelatorio},
  UnLayoutPadrao in 'UnLayoutPadrao.pas' {rl_LayoutPadrao},
  UnLayoutRelatorio in 'UnLayoutRelatorio.pas' {rl_LayoutRelatorio},
  unGrade_Selecao in 'unGrade_Selecao.pas' {fr_FmGrade_Selecao: TFrame},
  unType in 'unType.pas',
  UnMenu in 'UnMenu.pas' {fr_Menu},
  unCadGrade in 'unCadGrade.pas' {fr_CadGrade},
  unPesquisaCEP in 'unPesquisaCEP.pas' {FPesquisaCEP},
  UnPesquisaProduto in 'UnPesquisaProduto.pas' {fr_PesquisaProduto},
  unConsulta in 'unConsulta.pas' {fr_Consultas},
  AniThread in 'AniThread.pas',
  SigADM02_006 in 'SigADM02_006.pas' {fr_CadUsuario},
  SigCAD01_004 in 'SigCAD01_004.pas' {fr_CadBanco},
  SigCAD01_012 in 'SigCAD01_012.pas' {fr_CadCliente},
  SigCAD01_015 in 'SigCAD01_015.pas' {fr_CadFornecedor_Contato},
  SigCAD01_016 in 'SigCAD01_016.pas' {fr_CadFornecedor},
  SigCAD01_017 in 'SigCAD01_017.pas' {fr_CadTransportadora},
  SigCAD01_020 in 'SigCAD01_020.pas' {fr_CadMedida},
  SigCAD01_021 in 'SigCAD01_021.pas' {fr_CadMoeda},
  SigCAD01_025 in 'SigCAD01_025.pas' {fr_CadProduto},
  SigCAD01_026 in 'SigCAD01_026.pas' {fr_CadTipoProduro},
  SigCAD01_075 in 'SigCAD01_075.pas' {fr_CadCondVenda},
  SigCAD01_087 in 'SigCAD01_087.pas' {fr_Agentes},
  SigCAD01_088 in 'SigCAD01_088.pas' {fr_ClienteFilial},
  SigIMP01_000 in 'SigIMP01_000.pas' {dmPedido: TDataModule},
  SigIMP01_001 in 'SigIMP01_001.pas' {fr_MenuPrincipalCOM},
  SigCAD01_002 in 'SigCAD01_002.pas' {fr_CadEmpresa},
  SigIMP01_003 in 'SigIMP01_003.pas' {fr_Filtro},
  SigIMP01_004 in 'SigIMP01_004.pas' {fr_CadLista},
  SigIMP01_005 in 'SigIMP01_005.pas' {fr_CadLista_Preco},
  SigIMP01_006 in 'SigIMP01_006.pas' {fr_ManPedido},
  SigIMP01_007 in 'SigIMP01_007.pas' {fr_ManNF},
  SigIMP01_009 in 'SigIMP01_009.pas' {dmNF: TDataModule},
  SigIMP01_011 in 'SigIMP01_011.pas' {fr_HistoricoPrecos},
  SigIMP01_017 in 'SigIMP01_017.pas' {dmNF_liquidar: TDataModule},
  SigIMP01_018 in 'SigIMP01_018.pas' {frm_PesquisaListaPreco},
  SigIMP01_023 in 'SigIMP01_023.pas' {fr_CadPagamento1},
  SigIMP01_034 in 'SigIMP01_034.pas' {dmPedido_cancelar: TDataModule},
  SigIMP01_038 in 'SigIMP01_038.pas' {fr_CadContainers},
  SigIMP01_045 in 'SigIMP01_045.pas' {dmCOM: TDataModule},
  SigIMP01_057 in 'SigIMP01_057.pas' {frmImportarPedidoCliente},
  SigIMP01_058 in 'SigIMP01_058.pas' {fr_CadPortos},
  SigIMP01_059 in 'SigIMP01_059.pas' {frmProductionList},
  SigIMP01_060 in 'SigIMP01_060.pas' {frmProdList},
  SigIMP01_061 in 'SigIMP01_061.pas' {frm_PesquisaPedImportados},
  SigIMP01_062 in 'SigIMP01_062.pas' {frm_MudaNumPedidos},
  SigIMP01_065 in 'SigIMP01_065.pas' {fr_CadTipoEmbarque},
  SigIMP01_066 in 'SigIMP01_066.pas' {fr_CadArmadores},
  SigIMP01_071 in 'SigIMP01_071.pas' {fr_PedidosRegistrados},
  SigIMP01_072 in 'SigIMP01_072.pas' {fr_FaturasRegistradas},
  SigIMP01_074 in 'SigIMP01_074.pas' {frm_PesquisaAdcDesc},
  SigIMP01_075 in 'SigIMP01_075.pas' {frmPagamentosEfetuados},
  SigIMP01_076 in 'SigIMP01_076.pas' {fr_CadNcm},
  SigIMP01_078 in 'SigIMP01_078.pas' {frmRelComissoes},
  SigIMP01_081 in 'SigIMP01_081.pas' {fr_HistoricoComprasEmbarque},
  SigIMP01_089 in 'SigIMP01_089.pas' {fr_Fabricantes},
  SigIMP01_090 in 'SigIMP01_090.pas' {frmPagamentosFaturas},
  SigIMP01_091 in 'SigIMP01_091.pas' {dmProdList: TDataModule},
  SigIMP01_092 in 'SigIMP01_092.pas' {fr_PedidosRegistradosResumo},
  SigIMP01_093 in 'SigIMP01_093.pas' {fr_FaturasRegistradasResumo};

{$R *.res}
               
begin
  Application.Initialize;
  Application.Name	:= 'SigIMP01';
  Application.Title	:= 'Sistema de Comercio Exterior';
  Application.CreateForm(TdmConnection, dmConnection);

  with Tfr_Login.Create(nil) do
   try
      ShowModal;
      if ModalResult = mrOk then
      begin
         Conectar_FireBird;
         Application.CreateForm(TdmCOM, dmCOM);
         Application.CreateForm(Tfr_MenuPrincipalCOM, fr_MenuPrincipalCOM);
      end
      else Application.Terminate;
   finally
      Free;
      Application.Run;
   end;
end.


