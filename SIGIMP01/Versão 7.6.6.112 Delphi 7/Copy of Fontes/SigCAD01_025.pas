unit SigCAD01_025;

(*
  20.05.21 - Excluído "embalagem.pes_unitario_bruto" e "embalagem_imp.pes_unitario_bruto".

*)


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, Excel2000, OleServer, JvDialogs, IBStoredProc, AniThread,
  unConnection, idHash, idHashMessageDigest;

type
  Listas = record
             Fornecedores,
             Clientes,
             Uns,
             Tipos : integer;
           end;


  Tfr_CadProduto = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetcod_tip_produto: TSmallintField;
    IBDataSetcod_uni_medida: TSmallintField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    Label1: TLabel;
    dbedcod_produto: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    dbeNcm_cod: TDBEdit;
    Label18: TLabel;
    dbeddat_cadastro: TDBEdit;
    QrAuxcod_tip_produto: TSmallintField;
    QrAuxden_tip_produto: TIBStringField;
    IBDataSetlkDenTipProdto: TIBStringField;
    dblklkDenTipProdto: TDBLookupComboBox;
    unidade_medida: TIBQuery;
    unidade_medidacod_uni_medida: TSmallintField;
    IBDataSetlkDenUniMedida: TIBStringField;
    dblklkDenUniMedida: TDBLookupComboBox;
    IBDataSetcod_produto: TIBStringField;
    edtcod_tip_produto: TDBEdit;
    unidade_medidaden_uni_medida: TIBStringField;
    actProdutosFornec: TAction;
    actProdutoCliente: TAction;
    grpBotoes: TGroupBox;
    rgSituacao: TDBRadioGroup;
    Label10: TLabel;
    Produto: TIBQuery;
    IBDataSetpes_unitario: TFloatField;
    Tipo_Produto: TIBQuery;
    IBDataSetobs_peso_unitario: TIBStringField;
    IBDataSetdat_cad_peso: TDateField;
    IBDataSetden_produto_det: TMemoField;
    IBDataSetcod_fornecedor: TSmallintField;
    IBDataSetcod_prod_fornec: TIBStringField;
    IBDataSetcod_cliente: TIBStringField;
    IBDataSetden_produto_ing: TIBStringField;
    Label4: TLabel;
    DBMemo2: TDBMemo;
    fornecedor: TIBQuery;
    fornecedorcod_fornecedor: TSmallintField;
    dbeCodFornecedor: TDBEdit;
    dblcRazSocial: TDBLookupComboBox;
    Label5: TLabel;
    IBDataSetlkRazSocial: TStringField;
    Label6: TLabel;
    dbeCodProdFornec: TDBEdit;
    Produto_Fornecedor: TIBQuery;
    cliente: TIBQuery;
    clientecod_cliente: TIBStringField;
    IBDataSetlkCliente: TStringField;
    Label7: TLabel;
    dbeCodCliente: TDBEdit;
    dlkCliente: TDBLookupComboBox;
    Produtocod_produto: TIBStringField;
    IBDataSetden_produto: TIBStringField;
    Label11: TLabel;
    DBMemo3: TDBMemo;
    IBDataSetden_produto_detpor: TMemoField;
    BitBtn1: TBitBtn;
    actImportar: TAction;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    actAbrir: TAction;
    BitBtn2: TBitBtn;
    Embalagem: TIBDataSet;
    parametro_comercial: TIBDataSet;
    parametro_comercialdir_planilhas: TIBStringField;
    parametro_comercialmod_cad_produto: TBlobField;
    parametro_comercialies_modelo: TIntegerField;
    unidade_medidasigla: TIBStringField;
    IBDataSetsigla: TStringField;
    fornecedorraz_social_reduz: TIBStringField;
    IBDataSetraz_social_reduz: TStringField;
    ProdutosImp: TIBDataSet;
    ProdutosImpcod_empresa: TSmallintField;
    ProdutosImpcod_produto: TIBStringField;
    ProdutosImpden_produto: TIBStringField;
    ProdutosImpcod_tip_produto: TSmallintField;
    ProdutosImpcod_uni_medida: TSmallintField;
    ProdutosImpies_situacao: TIBStringField;
    ProdutosImppes_unitario: TFloatField;
    ProdutosImpdat_cadastro: TDateField;
    ProdutosImpobs_peso_unitario: TIBStringField;
    ProdutosImpdat_cad_peso: TDateField;
    ProdutosImpden_produto_det: TMemoField;
    ProdutosImpcod_cliente: TIBStringField;
    ProdutosImpcod_fornecedor: TSmallintField;
    ProdutosImpcod_prod_fornec: TIBStringField;
    ProdutosImpden_produto_ing: TIBStringField;
    ProdutosImpden_produto_detpor: TMemoField;
    BuscaTipoProduto: TIBQuery;
    BuscaTipoProdutocod_tip_produto: TSmallintField;
    BuscaUnidadeMedida: TIBQuery;
    BuscaUnidadeMedidacod_uni_medida: TSmallintField;
    qryUnidade_Medida: TIBQuery;
    qryUnidade_Medidacod_uni_medida: TSmallintField;
    qryUnidade_Medidasigla: TIBStringField;
    qryTipo_Produto: TIBQuery;
    qryTipo_Produtocod_tip_produto: TSmallintField;
    qryTipo_Produtoden_tip_produto: TIBStringField;
    qryFornecedor: TIBQuery;
    qryFornecedorcod_fornecedor: TSmallintField;
    qryFornecedorraz_social_reduz: TIBStringField;
    Produtos: TIBQuery;
    Produtoscod_empresa: TSmallintField;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto: TIBStringField;
    Produtoscod_tip_produto: TSmallintField;
    Produtoscod_uni_medida: TSmallintField;
    Produtosies_situacao: TIBStringField;
    Produtospes_unitario: TFloatField;
    Produtosdat_cadastro: TDateField;
    Produtosobs_peso_unitario: TIBStringField;
    Produtosdat_cad_peso: TDateField;
    Produtosden_produto_det: TMemoField;
    Produtoscod_cliente: TIBStringField;
    Produtoscod_fornecedor: TSmallintField;
    Produtoscod_prod_fornec: TIBStringField;
    Produtosden_produto_ing: TIBStringField;
    Produtosden_produto_detpor: TMemoField;
    Lista_Preco: TIBDataSet;
    Lista_Precocod_empresa: TSmallintField;
    Lista_Preconum_lista: TSmallintField;
    Lista_Precocod_produto: TIBStringField;
    Lista_Precovlr_unitario: TFloatField;
    Lista_Precodat_cadastro: TDateField;
    Lista_Precoobs_preco: TMemoField;
    SaveDialog: TJvSaveDialog;
    ExcluirListaPreco: TIBDataSet;
    Pedidos: TIBQuery;
    Pedidosnum_pedido: TLargeintField;
    IBDataSetpct_comissao_f: TIBBCDField;
    IBDataSetpct_comissao_c: TIBBCDField;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    Produtospct_comissao_f: TIBBCDField;
    Produtospct_comissao_c: TIBBCDField;
    ProdutosImppct_comissao_f: TIBBCDField;
    ProdutosImppct_comissao_c: TIBBCDField;
    spr_atualizar_precos: TIBStoredProc;
    panGauge: TPanel;
    IBDataSetncm_cod: TIntegerField;
    ProdutosImpncm_cod: TIntegerField;
    Produtosncm_cod: TIntegerField;
    Produtosncm_letra: TIBStringField;
    Produtosncm_lic: TIBStringField;
    IBDataSetncm_letra: TIBStringField;
    IBDataSetncm_lic: TIBStringField;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    ProdutosImpncm_letra: TIBStringField;
    ProdutosImpncm_lic: TIBStringField;
    IBDataSetncm_imetro: TIBStringField;
    DBRadioGroup2: TDBRadioGroup;
    Produtosncm_imetro: TIBStringField;
    ProdutosImpncm_imetro: TIBStringField;
    Embalagemcod_empresa: TSmallintField;
    Embalagemcod_produto: TIBStringField;
    Embalagempeso_unitario: TFloatField;
    Embalagemaltura: TIBBCDField;
    Embalagemlargura: TIBBCDField;
    Embalagemprofundidade: TIBBCDField;
    Embalagemvolume: TIBBCDField;
    Embalagemarea: TIBBCDField;
    Embalagemqtd_master: TIBBCDField;
    Embalagemqtd_inner: TIBBCDField;
    Embalagemobservacao: TIBStringField;
    Embalagemdat_cadastro: TDateTimeField;
    Embalagemdat_cad_dimensoes: TDateField;
    Embalagemdat_cad_peso: TDateField;
    Embalagemdat_cad_master: TDateField;
    Embalagemdat_cad_inner: TDateField;
    Embalagemobs_caixas: TIBStringField;
    lbProcess: TLabel;
    Label20: TLabel;
    Imagem: TImage;
    dsEmbalagem: TDataSource;
    EmbalagemcalVolume: TFloatField;
    EmbalagemImp: TIBDataSet;
    actGerarExcelNovo: TAction;
    BitBtn3: TBitBtn;
    TipoProduto: TIBQuery;
    TipoProdutoden_tip_produto: TIBStringField;
    IBDataSetpreco: TFloatField;
    IBDataSetdat_preco: TDateField;
    IBDataSetobs_preco: TIBStringField;
    Label16: TLabel;
    dbePreco: TDBEdit;
    Label31: TLabel;
    dtpDatPreco: TJvDBDatePickerEdit;
    Label32: TLabel;
    dbeObsPreco: TDBEdit;
    ProdutosImppreco: TFloatField;
    ProdutosImpdat_preco: TDateField;
    ProdutosImpobs_preco: TIBStringField;
    Lista: TIBDataSet;
    Listacod_empresa: TSmallintField;
    Listanum_lista: TSmallintField;
    Listaden_lista: TIBStringField;
    Listaies_situacao: TIBStringField;
    Listadat_cadastro: TDateField;
    Listacod_cliente: TIBStringField;
    Listaies_tip_lista: TIBStringField;
    Listacod_fornecedor: TSmallintField;
    IBDataSetcalPreco: TFloatField;
    IBDataSetcalObsPreco: TStringField;
    IBDataSetcalDatPreco: TDateField;
    Embalagempes_bruto_cx: TIBBCDField;
    EmbalagemImpcod_empresa: TSmallintField;
    EmbalagemImpcod_produto: TIBStringField;
    EmbalagemImppeso_unitario: TFloatField;
    EmbalagemImpaltura: TIBBCDField;
    EmbalagemImplargura: TIBBCDField;
    EmbalagemImpprofundidade: TIBBCDField;
    EmbalagemImpvolume: TIBBCDField;
    EmbalagemImparea: TIBBCDField;
    EmbalagemImpqtd_master: TIBBCDField;
    EmbalagemImpqtd_inner: TIBBCDField;
    EmbalagemImpobservacao: TIBStringField;
    EmbalagemImpdat_cadastro: TDateTimeField;
    EmbalagemImpdat_cad_dimensoes: TDateField;
    EmbalagemImpdat_cad_peso: TDateField;
    EmbalagemImpdat_cad_master: TDateField;
    EmbalagemImpdat_cad_inner: TDateField;
    EmbalagemImpobs_caixas: TIBStringField;
    EmbalagemImppes_bruto_cx: TIBBCDField;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    dbeAltura: TDBEdit;
    Label23: TLabel;
    DBEdit6: TDBEdit;
    Label24: TLabel;
    JvDBDatePickerEdit4: TJvDBDatePickerEdit;
    Label25: TLabel;
    DBEdit7: TDBEdit;
    Label26: TLabel;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    Label27: TLabel;
    DBEdit8: TDBEdit;
    Label28: TLabel;
    JvDBDatePickerEdit3: TJvDBDatePickerEdit;
    GroupBox3: TGroupBox;
    Label29: TLabel;
    DBEdit9: TDBEdit;
    Label30: TLabel;
    JvDBDatePickerEdit5: TJvDBDatePickerEdit;
    Label12: TLabel;
    Label17: TLabel;
    dbedpes_unitario: TDBEdit;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    fornecedorraz_social: TIBStringField;
    clientenom_cliente: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure IBDataSetcod_tip_produtoValidate(Sender: TField);
    procedure IBDataSetcod_produtoValidate(Sender: TField);
    procedure IBDataSetcod_prod_fornecGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSetcod_prod_fornecValidate(Sender: TField);
    function VerProdutoFornecedor: boolean;
    procedure actImportarExecute(Sender: TObject);

    procedure AbrirExcel(Caminho: String; Visivel : boolean = False);
    Procedure FecharExcel(FecharTabelas: boolean = True);

    Procedure LerItens;
    Procedure GerarListasExcel;
    procedure actAbrirExecute(Sender: TObject);
    procedure ProdutosImpAfterPost(DataSet: TDataSet);
    procedure ProdutosImpNewRecord(DataSet: TDataSet);
    procedure EmbalagemNewRecord(DataSet: TDataSet);
    procedure EmbalagemAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    function GetPlanilha: String;
    function GetTipoProduto(DenTipProduto: String): Integer;
    function GetUnidadeMedida(Sigla: String): Integer;
    function GetDenTipProduto(CodTipProduto: Integer): String;
    function GetSigla(CodUniMedida: Integer): String;
    function GetRazSocialReduz(CodFornecedor: Integer): String;
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure EmbalagemAfterDelete(DataSet: TDataSet);
    procedure Lista_PrecoAfterPost(DataSet: TDataSet);
    procedure ExcluirListaPrecoAfterPost(DataSet: TDataSet);
    procedure ExcluirListaPrecoAfterDelete(DataSet: TDataSet);
    procedure IBDataSetncm_codGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutosImpncm_codGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ProdutosImpBeforePost(DataSet: TDataSet);
    procedure EmbalagemBeforePost(DataSet: TDataSet);
    procedure clienteBeforeOpen(DataSet: TDataSet);
    procedure fornecedorBeforeOpen(DataSet: TDataSet);
    procedure EmbalagemCalcFields(DataSet: TDataSet);
    procedure EmbalagemBeforeInsert(DataSet: TDataSet);
    procedure actGerarExcelNovoExecute(Sender: TObject);
    procedure IBDataSetAfterDelete(DataSet: TDataSet);
    procedure IBDataSetAfterInsert(DataSet: TDataSet);
    procedure IBDataSetAfterCancel(DataSet: TDataSet);
    procedure EmbalagemAfterEdit(DataSet: TDataSet);
    procedure ListaAfterPost(DataSet: TDataSet);
    procedure IBDataSetCalcFields(DataSet: TDataSet);
    procedure DBMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure Embalagempes_bruto_cxValidate(Sender: TField);

  private
    { Private declarations }
   function Situacao(Index:Integer): String;
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
    procedure New;
    procedure Open;
    procedure PesquisarMenu;
    procedure AbrirExcelPesquisa;
  end;

Const
  mrProcurarExcel = 1001;

var
  lcid : Cardinal;

  fr_CadProduto: Tfr_CadProduto;
  FlagAltera, FlagAlteraComissao, FlagAlteraEmbalagem, FlagAlteraLi: boolean;

  DIR_PLANILHAS : String;
  PlanilhaExcel : String;
  CodCliente, NomFornecedor : String;

  ListaCombo : Listas;

  AcaoMenu: TAcoesMenu;

implementation

uses UnMenuCompl, SigCAD01_050, UnPesquisaProduto, SigIMP01_045;

{$R *.dfm}

procedure Tfr_CadProduto.New;
begin
  { chamada do menu 'Incluir Produtos Novos' }
  Set_Value;
  Caption := 'Incluir Produtos Novos';
  AcaoMenu := acmNew;
  IBDataSet.Insert;
  grpBotoes.Visible := True;
  fr_FmNavigator1.acF3.Enabled := False;
  actAbrir.Visible := True;
  dbePreco.Enabled := True;
  dbePreco.DataField := 'preco';
  dtpDatPreco.Enabled := True;
  dtpDatPreco.DataField := 'dat_preco';
  dbeObsPreco.Enabled := True;
  dbeObsPreco.DataField := 'obs_preco';
  dbePreco.Color := clWindow;
  dtpDatPreco.Color := clWindow;
  dbeObsPreco.Color := clWindow;
  fr_FmNavigator1.acInsert.Visible := True;
end;

procedure Tfr_CadProduto.Open;
begin
  { chamada do menu 'Alterar Produtos' }
  Set_Value;
  fr_FmNavigator1.acInsert.Visible := False;
  Caption := 'Alterar Produtos';
  AcaoMenu := acmEdit;
  grpBotoes.Visible := False;
  Button1.Click;  // chamar form Pesquisa Produtos
  actGerarExcelNovo.Visible := False;
  dbePreco.Enabled := False;
  dbePreco.DataField := 'calPreco';
  dtpDatPreco.Enabled := False;
  dtpDatPreco.DataField := 'calDatPreco';
  dbeObsPreco.Enabled := False;
  dbeObsPreco.DataField := 'calObsPreco';
  dbePreco.Color := clCream;
  dbeObsPreco.Color := clCream;

end;

procedure Tfr_CadProduto.AbrirExcelPesquisa;
begin
  fr_FmNavigator1.acInsert.Visible := False;
  Caption := 'Alterar Produtos';
  grpBotoes.Visible := True;
  actGerarExcelNovo.Visible := False;
  actAbrirExecute(nil);
end;

procedure Tfr_CadProduto.PesquisarMenu;
Var
  dirImagem : String;
begin
   { Método a ser chamado a partir da tela Pesquisar Produtos }
   Set_Value;
   Caption := 'Alterar Produtos';
   // Se for chamada da tela de Pesquisa Produtos, não mostrar botões
   grpBotoes.Visible := False;

   with IBDataSet do // procurar dados do produto
   begin
     DisableControls;
     Close;
     ParamByName('cod_empresa').Value := vgCod_Empresa;
     ParamByName('cod_produto').Value := fr_PesquisaProduto.qryProduto.FieldByName('cod_produto').AsString;
     Open;
     EnableControls;
     CodCliente := IBDataSetcod_cliente.AsString;
   end;

   with Embalagem do // procurar dados da embalagem
   begin
     Close;
     ParamByName('cod_empresa').Value := vgCod_Empresa;
     ParamByName('cod_produto').Value := IBDataSetcod_produto.AsString;
     Open;
   end;

   (* 17.03.16 - mostrar imagem e caminho do arquivo de imagem do produto                                                                          *)
   (*             As imagens ficam na pasta padrão: Pasta da Empresa Usuária + '\PASTA DO CLIENTE\PRODUCTS DATABASE\IMAGES\' + CodProduto + '.JPG' *)
   (*                                                                                                                                              *)
   dirImagem := dmCOM.GetFileImageProduto(CodCliente, IBDataSet.FieldByName('cod_Produto').AsString);

   try
     Imagem.Picture.LoadFromFile(dirImagem);
    except
     Imagem.Picture := nil;
     Exit;
   end;

end;



function Tfr_CadProduto.Situacao(Index:Integer): String;
begin
  case Index of
    0 : Result := 'A';
    1 : Result := 'I';
    2 : Result := 'C';
    3 : Result := 'T';
  end;
end;


procedure Tfr_CadProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Cancel;

  inherited;

  IBDataSet.DisableControls;
  IBDataSet.Close;

  Action := caFree;
  fr_CadProduto := nil;
end;

procedure Tfr_CadProduto.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  OpenTableAux(QrAux);
  OpenTableAux(unidade_medida);
end;

procedure Tfr_CadProduto.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_empresa.AsInteger      := vgCod_Empresa;
  IBDataSeties_situacao.AsString      := 'A';
  IBDataSetpes_unitario.AsFloat       := 0.0;
  IBDataSetncm_cod.Clear;
  IBDataSetdat_cadastro.AsDateTime    := Buscar_DateTime;
  IBDataSetdat_cad_peso.AsDateTime    := Buscar_DateTime;
  IBDataSetobs_peso_unitario.AsString := '';
  IBDataSetncm_lic.AsString           := 'N';
  IBDataSetncm_imetro.AsString        := 'N';
  IBDataSetdat_preco.Clear;
  IBDataSetpreco.Clear;
  IBDataSetobs_preco.Clear;
end;

procedure Tfr_CadProduto.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadProduto.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;                                
  if IBDataSetdat_cad_peso.IsNull then
     IBDataSetdat_cad_peso.AsDateTime    := Buscar_DateTime;

  if DataSet.State in [dsEdit] then
  begin
     if IBDataSetpes_unitario.OldValue <> IBDataSetpes_unitario.AsFloat then
        FlagAltera := True;

     { indicar que comissões foram alteradas }
     if (IBDataSetpct_comissao_f.OldValue <> IBDataSetpct_comissao_f.AsFloat) then
        FlagAlteraComissao := True;

     if (IBDataSetpct_comissao_c.OldValue <> IBDataSetpct_comissao_c.AsFloat) then
        FlagAlteraComissao := True;

     if (IBDataSetncm_lic.OldValue <> IBDataSetncm_lic.AsString) then
        FlagAlteraLi := True;
  end;

  { Copiar os 100 primeiros caracteres das descrições detalhadas para as descrições resumidas }
  if DataSet.State in [dsEdit, dsInsert] then
  begin
    IBDataSetden_produto.Value := Copy(IBDataSetden_produto_detpor.AsString, 1, 100);
    IBDataSetden_produto_ing.Value := Copy(IBDataSetden_produto_det.AsString, 1, 100);
  end;
end;

procedure Tfr_CadProduto.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;

	if IBDataSet.State in [dsBrowse] then
  begin
      if Not (Assigned(fr_PesquisaProduto)) then
         Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);

      fr_PesquisaProduto.Caption := 'Alterar Produtos';
      fr_pesquisaProduto.AcaoMenuP := acmEdit;
      fr_PesquisaProduto.ShowModal;

      if (fr_PesquisaProduto.ModalResult = mrCancel) then Exit;

      if (fr_PesquisaProduto.ModalResult = mrProcurarExcel) then
      begin
        PlanilhaExcel := fr_PesquisaProduto.PlanilhaExcel;
        AbrirExcelPesquisa;
      end;

      if (fr_PesquisaProduto.ModalResult = mrOk) then   // retornou um produto na pesquisa
      begin
        PesquisarMenu;
      end;
  end;
end;

procedure Tfr_CadProduto.Set_Value;
begin
  inherited;
  FlagAltera := False;
  FlagAlteraComissao := False;
  FlagAlteraEmbalagem := False;
  FlagAlteraLi := False;

  with IBDataSet do
  begin
    Close;
    ParamByName('cod_empresa').Value := '';
    ParamByName('cod_produto').Value := '';
    Open;
  end;

  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  with Embalagem do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_produto').Value := '';
    Open;
  end;
end;

procedure Tfr_CadProduto.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  dbedcod_produto.SetFocus;
  FlagAltera := False;
  FlagAlteraComissao := False;
  FlagAlteraEmbalagem := False;
  FlagAlteraLi := False;
end;

procedure Tfr_CadProduto.IBDataSetAfterPost(DataSet: TDataSet);
Var
  f : boolean;
begin
  inherited;

  if Embalagem.State in [dsEdit, dsInsert] then Embalagem.Post;

  { obter a lista geral do cliente }
  with Lista do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').Value := IBDataSetcod_cliente.AsString;
    Open;

    { Lista não Existe - criar }
    if (IsEmpty) then
    begin
      Insert;
      FieldByName('cod_empresa').Value    := vgCod_Empresa;
      FieldByName('cod_cliente').Value    := CodCliente;
      FieldByName('num_lista').AsInteger  := InsertCode('lista', 'num_lista');
      FieldByName('den_lista').Value      := 'LISTA GERAL DO CLIENTE';
      FieldByName('ies_situacao').Value   := 'A';
      FieldByName('ies_tip_lista').Value  := 'G';
      FieldByName('dat_cadastro').Value   := DataHoraServidor;
      Post;
    end;

    if Not(IsEmpty) then
    begin
       { Procurar item na lista de preços GERAL }
       with Lista_Preco do
       begin
         Close;
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
         ParamByName('num_lista').AsInteger   := Listanum_lista.AsInteger;
         ParamByName('cod_produto').AsString := IBDataSetcod_produto.Value;
         Open;
         { incluir ou alterar lista }
         if IsEmpty then Insert
                    else Edit;
         { Checar se preço informado no cadastro de produtos é mais recente que o preço da lista }
         if IBDataSetdat_preco.AsDateTime >= FieldByName('dat_cadastro').AsDateTime then
         begin
            FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
            FieldByName('num_lista').AsInteger   := Listanum_lista.AsInteger;
            FieldByName('cod_produto').AsString  := IBDataSetcod_produto.Value;
            FieldByName('vlr_unitario').AsFloat  := IBDataSetpreco.Value;
            FieldByName('dat_cadastro').AsDateTime := IBDataSetdat_preco.AsDateTime;
            FieldByName('obs_preco').AsString := IBDataSetobs_preco.Value;
            Post;
         end;
       end;
    end;
  end;

  { Recalcular Pedidos que contenham o produto com Peso alterado }
  if FlagAltera then
  begin
     RecalcularPedidos(IBDataSetcod_produto.AsString);
     RecalcularFaturas(IBDataSetcod_produto.AsString);
     RecalcularProdList(IBDataSetcod_produto.AsString);
  end;

  if FlagAlteraComissao then
  begin
    AtualizarComissoes(IBDataSetcod_produto.AsString);
  end;

  if FlagAlteraLi then
  begin
    AtualizarLI(IBDataSetcod_produto.AsString);
  end;

  FlagAltera := False;
  FlagAlteraComissao := False;
  FlagAlteraEmbalagem := False;
  FlagAlteraLi := False;
end;

procedure Tfr_CadProduto.IBDataSetcod_tip_produtoValidate(Sender: TField);
begin
  inherited;
  with Tipo_Produto do
  begin                       
    Close;
    ParamByName('cod_tip_produto').AsInteger := IBDataSetcod_tip_produto.AsInteger;
    Open;
    if IsEmpty then
    begin
      Application.MessageBox('Tipo de Produto não encontrado', 'Informação', MB_OK+MB_ICONINFORMATION);
      Close;
      Abort;
    end;
  end;
end;

procedure Tfr_CadProduto.IBDataSetcod_produtoValidate(Sender: TField);
begin
  inherited;
  if IBDataSetcod_produto.AsString = '' then Exit;
  with Produto do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := IBDataSetcod_produto.AsString;
    Open;
    if Not(IsEmpty) then
    begin
      Application.MessageBox('Produto já cadastrado', 'Informação', MB_OK+MB_ICONINFORMATION);
      Close;
      Abort;
    end;
    Close;
  end;

  if IBDataSet.State in [dsInsert] then
  begin
    with Embalagem do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('cod_produto').Value := dbedcod_produto.Text;
      Open;
      Insert;
    end;
  end;
end;

procedure Tfr_CadProduto.IBDataSetcod_prod_fornecGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '' then Exit;
  with FmtProdutoFornecedor(IBDataSetcod_fornecedor.AsInteger, Sender.AsString) do
  begin
    Text := fmtProduto;
    dbeCodProdFornec.MaxLength := fmtLength;
  end;

end;

procedure Tfr_CadProduto.IBDataSetcod_prod_fornecValidate(Sender: TField);
begin
  inherited;
{  if IBDataSetcod_prod_fornec.IsNull then Exit;
  if VerProdutoFornecedor then
  begin
    Application.MessageBox('Código do Produto Fornecedor, já existente.', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;}
end;

function Tfr_CadProduto.VerProdutoFornecedor: boolean;
begin
  { Verificar }
  with Produto_Fornecedor do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := IBDataSetcod_empresa.AsInteger;
    ParamByName('cod_fornecedor').AsInteger := IBDataSetcod_fornecedor.AsInteger;
    ParamByName('cod_prod_fornec').AsString := IBDataSetcod_prod_fornec.AsString;
    Open;
    Result := Not(IsEmpty);
    Close;
  end;
end;

procedure Tfr_CadProduto.AbrirExcel(Caminho: String; Visivel : boolean = False);
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
  PlanilhaExcel := Caminho;

  try
  lcid := GetUserDefaultLCID;
  WkBk := ExcelApplication.Workbooks.Open(Caminho, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam, lcid);

  ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
  ExcelWorksheet.Activate(LCID);
  ExcelApplication.Visible[lcid] := Visivel;
  ExcelApplication.DisplayAlerts[lcid] := False;
  except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;

Procedure Tfr_CadProduto.FecharExcel(FecharTabelas: boolean = True);
begin
  if FecharTabelas then
  begin
    if ProdutosImp.State in [dsEdit, dsInsert] then ProdutosImp.Cancel;
    ProdutosImp.Close;
  end;

  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
end;

procedure Tfr_CadProduto.actImportarExecute(Sender: TObject);
begin
  inherited;
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Cancel;
  GetPlanilha;
  { Importar Cadastro de Produtos }
  LerItens;
end;
                                                                        
function Tfr_CadProduto.GetPlanilha: String;
begin
  { Retorna a Pasta da Base de Produtos da Empresa / Cliente }
  DIR_PLANILHAS := dmCOM.DirBaseProdutos(CodCliente);

  SaveDialog.InitialDir := DIR_PLANILHAS;
  OpenDialog.InitialDir := DIR_PLANILHAS;
  Result := DIR_PLANILHAS;
end;


procedure Tfr_CadProduto.GerarListasExcel;
Var
  Linha : integer;
begin
 { Gerar lista para os combos na planilha excel: Fornecedor, Cliente, Unidade de Medida e Tipo de Produto }

 // Fornecedores

 Linha := 1;

 with fornecedor do
 begin
   First;
   while not(EOF) do
   begin
     with ExcelWorksheet.Range['AK' + IntToStr(Linha),'AK' + IntToStr(Linha)] do
     begin
       Value := FieldByName('raz_social_reduz').AsString;
     end;
     Next;
     Inc(Linha);
   end;
 end;
 ListaCombo.Fornecedores := Linha - 1;

 Linha := 1;

 with cliente do
 begin
   First;
   while not(EOF) do
   begin
     with ExcelWorksheet.Range['AL' + IntToStr(Linha),'AL' + IntToStr(Linha)] do
     begin
       Value := FieldByName('cod_cliente').AsString;
     end;
     Next;
     Inc(Linha);
   end;
 end;
 ListaCombo.Clientes := Linha - 1;

 Linha := 1;

 with unidade_medida do
 begin
   First;
   while not(EOF) do
   begin
     with ExcelWorksheet.Range['AM' + IntToStr(Linha),'AM' + IntToStr(Linha)] do
     begin
       Value := FieldByName('sigla').AsString;
     end;
     Next;
     Inc(Linha);
   end;
 end;
 ListaCombo.Uns := Linha - 1;

 Linha := 1;

 with TipoProduto do
 begin
   Open;
   while not(EOF) do
   begin
     with ExcelWorksheet.Range['AN' + IntToStr(Linha),'AN' + IntToStr(Linha)] do
     begin
       Value := FieldByName('den_tip_produto').AsString;
     end;
     Next;
     Inc(Linha);
   end;
   Close;
 end;
 ListaCombo.Tipos := Linha - 1;

  Linha := 1;

 with ExcelWorksheet.Range['AO' + IntToStr(Linha),'AO' + IntToStr(Linha)] do
 begin
   Value := 'S';
 end;
 Inc(linha);
 with ExcelWorksheet.Range['AO' + IntToStr(Linha),'AO' + IntToStr(Linha)] do
 begin
   Value := 'N';
 end;

 { Esconder as colunas com as listas }
 with ExcelWorksheet.Range['AK1','AO1'] do
 begin
   EntireColumn.Hidden := True;;
 end;
end;

procedure Tfr_CadProduto.actAbrirExecute(Sender: TObject);
begin
  inherited;
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Cancel;

  if (PlanilhaExcel = null) then GetPlanilha
  else AbrirExcel(PlanilhaExcel, True);
end;

function Tfr_CadProduto.GetTipoProduto(DenTipProduto: String): Integer;
begin
  with BuscaTipoProduto do
  begin
  try
    Close;
    ParamByName('den_tip_produto').AsString := trim(DenTipProduto);
    Open;
    Result := FieldByName('cod_tip_produto').AsInteger;
    Close;
  except
    Result := 0;
  end;
  end;
end;

function Tfr_CadProduto.GetUnidadeMedida(Sigla: String): Integer;
begin
  with BuscaUnidadeMedida do
  begin
  try
    Close;
    ParamByName('sigla').AsString := trim(Sigla);
    Open;
    Result := FieldByName('cod_uni_medida').AsInteger;
    Close;
  except
    Result := 0;
  end;
  end;
end;

function Tfr_CadProduto.GetDenTipProduto(CodTipProduto: Integer): String;
begin
  with qryTipo_Produto do
  begin
    Close;
    ParamByName('cod_tip_produto').Value := CodTipProduto;
    Open;
    Result := FieldByName('den_tip_produto').AsString;
    Close;
  end;
end;

function Tfr_CadProduto.GetSigla(CodUniMedida: Integer): String;
begin
  with qryUnidade_Medida do
  begin
    Close;
    ParamByName('cod_uni_medida').Value := CodUniMedida;
    Open;
    Result := FieldByName('sigla').AsString;
    Close;
  end;
end;

function Tfr_CadProduto.GetRazSocialReduz(CodFornecedor: Integer): String;
begin
  with qryFornecedor do
  begin
    Close;
    ParamByName('cod_fornecedor').Value := CodFornecedor;
    Open;
    Result := FieldByName('raz_social_reduz').AsString;
    Close;
  end;
end;

procedure Tfr_CadProduto.LerItens;
Var
  Linha, Erros, LinhaFim: Integer;
  ErroGeral : Boolean;
  s, Produto, CodCliente, Data, ObsPreco : String;
  CodTipProduto, CodUniMedida, CodFornecedor: Integer;
  n, Preco, PesUnitProd, UnCxMaster, PesLiquidoCx, PesBrutoCx, PesEmbVazia : double;
  DataPreco : TDate;
  sHash, sMD5Excel, sMD5: WideString;
begin
  AbrirExcel(PlanilhaExcel);
  Screen.Cursor := crHourGlass;
  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  Application.ProcessMessages;

  Linha := 4;
  ErroGeral := False;

  { obter última linha da planilha }
  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;

  { Coluna "A" em branco identifica fim das linhas                               }
  While (trim(ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Text) <> '') do
  begin
      FlagAltera := False; //  Indicar quando é necessário recalcular pedidos/faturas/prod list;
      FlagAlteraComissao := False;
      Erros := 0;

      lbProcess.Caption := 'Lendo linha  ' + IntToStr(Linha) + ' de ' + IntToStr(LinhaFim);
      lbProcess.Refresh;

      (*
      { Se a chamada do menu for uma alteração de produtos, checar a cor de preenchimento dos itens.  }
      if (AcaoMenu = acmEdit) then
      begin
         { Processar linha apenas quando celula do produto for "sem cor" }
         if (ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Interior.ColorIndex <> xlNone) then
         begin
           Inc(Linha);
           Continue;
         end;
      end;
       *)

      { Hash do Excel }
      sMD5Excel := ExcelWorksheet.Range['AP'+ inttostr(linha),'AP'+inttostr(linha)].Value;

      { DADOS DO PRODUTO }

      { COL A - Código do Produto }
      Produto := '';
      Produto := UpperCase(trim(ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Text));
      { Inicializar sHash dos campos vindo do Excel }
      sHash := ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Text;
      { COL B - Código do Fornecedor }
      CodFornecedor := ProcuraFornecedor(trim(ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Text));
      sHash := sHash + ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Text;
      { COL C - Código do Cliente }
      CodCliente := trim(ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Text);
      sHash := sHash + ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Text;
      { retirar formatação do código produto se for definida para o cliente }
      Produto := SemFmtProduto(CodCliente, Produto);

      with ProdutosImp do
      begin
        Close;
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_produto').AsString := Produto;
        Open;
        if IsEmpty then  // incluir novo produto
        begin
          Append;
          FieldByName('cod_empresa').Value := vgCod_Empresa;
          FieldByName('cod_produto').Value := Produto;
        end
        else Edit; // alterar produto
        
        { Fornecedor }
        if CodFornecedor > 0 then FieldByName('cod_fornecedor').Value := CodFornecedor
                             else Erros := SetBit(Erros,02);
        { Cliente }
        if ProcuraCliente(CodCliente) then FieldByName('cod_cliente').Value := CodCliente
                                      else Erros := SetBit(Erros, 03);
        { COL E - Descrição Resumida em Português }
        ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].FormulaR1C1 := '=LEFT(RC[1],100)';
        s := trim(ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)].Text);
        if s <> '' then FieldByName('den_produto').Value := UpperCase(s)
                   else Erros := SetBit(Erros,04);
        { COL F - Descrição Detalhada em Português }
        s := trim(ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)].Text);
        sHash := sHash + ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)].Text;
        if s <> '' then FieldByName('den_produto_detpor').Value := UpperCase(s)
                   else Erros := SetBit(Erros, 05);
        { COL G - Descrição Resumida em Inglês }
        ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].FormulaR1C1 := '=LEFT(RC[1],100)';        
        s := trim(ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)].Text);
        if s <> '' then FieldByName('den_produto_ing').Value := UpperCase(s)
                   else Erros := SetBit(Erros, 06);
        { COL H - Descrição Detalhada em Inglês }
        s := trim(ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)].Text);
        sHash := sHash + ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)].Text;
        if s <> '' then FieldByName('den_produto_det').Value := UpperCase(s)
                   else Erros := SetBit(Erros, 07);
        { COL I - Tipo de Produto --> Procurar pela descrição }
        CodTipProduto := GetTipoProduto(trim(ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)].Text));
        sHash := sHash + ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)].Text;
        if CodTipProduto > 0 then FieldByName('cod_tip_produto').Value := CodTipProduto
                             else Erros := SetBit(Erros, 08);
        { COL J - Peso Unitário do Produto (Kg)}
        try
          PesUnitProd := StrToFloat((ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)].Value));
          sHash := sHash + ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)].Text;
          FieldByName('pes_unitario').AsFloat := PesUnitProd;
        except
          Erros := SetBit(Erros,09);
          PesUnitProd := 1;
        end;
        { COL K - Data Alteração do Peso Unitário }
        try
          Data := (ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)].Text);
          sHash := sHash + Data;
          Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
          FieldByName('dat_cad_peso').AsDateTime := StrToDate(Data);
        except
          FieldByName('dat_cad_peso').AsDateTime := DataHoraServidor;
        end;
        {col K}
        with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
        begin
          Font.Size := 9;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Value := FormatDateTime('dd.mm.yy', FieldByName('dat_cad_peso').AsDateTime);
          WrapText := True;
          ShrinkToFit := False;
        end;
        { COL L - Unidade de Medida --> Procurar pela descrição}
        CodUniMedida := GetUnidadeMedida(trim(ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)].Text));
        sHash := sHash + ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)].Text;
        if CodUniMedida > 0 then FieldByName('cod_uni_medida').Value := CodUniMedida
                            else Erros := SetBit(Erros, 11);

        { COL M - NCM }
        s := trim(ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)].Text);
        sHash := sHash + ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)].Text;
        { Letra do NCM }
        if (trim(s) <> '') then
        begin
          FieldByName('ncm_letra').AsString := LetraNcm(s);
          if (s[length(s)] in ['A'..'Z']) then s[length(s)] := '.';
          s := RetirarLixo(s);

          try
            FieldByName('ncm_cod').Value := StrToInt(s);
          except
            FieldByName('ncm_cod').Clear;
          end;
        end;

        { PRODUTOS: gravar registro somente sem erros }
        //if Erros = 0 then ProdutosImp.Post
        //             else ProdutosImp.Cancel;

        { DADOS PARA EMBALAGEM }
        with EmbalagemImp do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('cod_produto').AsString := Produto;
          Open;
          if IsEmpty then
          begin
            Append;
            FieldByName('cod_empresa').Value := vgCod_Empresa;
            FieldByName('cod_produto').Value := Produto;
          end
          else Edit;
        end;

        { COL N - Comprimento }
        try
          n := StrToFloat((ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)].Value));
          sHash := sHash + ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)].Text;
          EmbalagemImp.FieldByName('profundidade').AsFloat := n;
        except
          Erros := SetBit(Erros, 13);
        end;

        { COL O - Largura }
        try
          n := StrToFloat((ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)].Value));
          sHash := sHash + ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)].Text;
          EmbalagemImp.FieldByName('largura').AsFloat := n;
        except
          Erros := SetBit(Erros, 14);
        end;

        { COL P - Altura }
        try
          n := StrToFloat((ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)].Value));
          sHash := sHash + ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)].Text;
          EmbalagemImp.FieldByName('altura').AsFloat := n;
        except
          Erros := SetBit(Erros, 15);
        end;

        { COL Q - Volume Total - calculado pelo sistema }
        try
          EmbalagemImp.FieldByName('volume').AsFloat := (EmbalagemImp.FieldByName('profundidade').AsFloat *
                                                         EmbalagemImp.FieldByName('largura').AsFloat *
                                                         EmbalagemImp.FieldByName('altura').AsFloat)/1000000;
        except
          Erros := SetBit(Erros, 16);
        end;
        { COL R - Data de Cadastro das dimensões }
        try
          Data := (ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)].Text);
          sHash := sHash + Data;
          Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
          EmbalagemImp.FieldByName('dat_cad_dimensoes').AsDateTime := StrToDate(Data);
        except
          EmbalagemImp.FieldByName('dat_cad_dimensoes').AsDateTime := DataHoraServidor;
        end;
        {col R}
        with ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)] do
        begin
          Font.Size := 9;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Value := FormatDateTime('dd.mm.yy', EmbalagemImp.FieldByName('dat_cad_dimensoes').AsDateTime);
          WrapText := True;
          ShrinkToFit := False;
        end;
        { COL S - Peso Bruto da Caixa de Exportação (Kg) }
        try
          PesBrutoCx  := StrToFloat((ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)].Value2));
          sHash := sHash + ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)].Text;
        except
          PesBrutoCx := 0;
          Erros := SetBit(Erros, 18);
        end;
        EmbalagemImp.FieldByName('pes_bruto_cx').AsFloat := PesBrutoCx;
        { COL T - Data Cadastro Embalagem }
        try
          Data := (ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)].Text);
          sHash := sHash + Data;
          Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
          EmbalagemImp.FieldByName('dat_cadastro').AsDateTime := StrToDate(Data);
          EmbalagemImp.FieldByName('dat_cad_peso').AsDateTime := StrToDate(Data);
        except
          EmbalagemImp.FieldByName('dat_cadastro').AsDateTime := DataHoraServidor;
          EmbalagemImp.FieldByName('dat_cad_peso').AsDateTime := DataHoraServidor;
        end;
        {col T}
        with ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)] do
        begin
          Font.Size := 9;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Value := FormatDateTime('dd.mm.yy', EmbalagemImp.FieldByName('dat_cad_peso').AsDateTime);
          WrapText := True;
          ShrinkToFit := False;
        end;
        { COL U - Unidades por Caixa Master }
        try
          UnCxMaster := StrToFloat((ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)].Value));
          sHash := sHash + ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)].Text;
          EmbalagemImp.FieldByName('qtd_master').AsFloat := UnCxMaster;
        except
          Erros := SetBit(Erros, 20);
          UnCxMaster := 1;
        end;
        { COL V - Data Cadastro Unidades por Master }
        try
          Data := (ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)].Text);
          sHash := sHash + Data;
          Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
          EmbalagemImp.FieldByName('dat_cad_master').AsDateTime := StrToDate(Data);
        except
          EmbalagemImp.FieldByName('dat_cad_master').AsDateTime := DataHoraServidor;
        end;
        {col V}
        with ExcelWorksheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)] do
        begin
          Font.Size := 9;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Value := FormatDateTime('dd.mm.yy', EmbalagemImp.FieldByName('dat_cad_master').AsDateTime);
          WrapText := True;
          ShrinkToFit := False;
        end;
        { COL W - Unidades Por Inner }
        try
          n := StrToFloat((ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)].Value));
          sHash := sHash + ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)].Text;
          EmbalagemImp.FieldByName('qtd_inner').AsFloat := n;
        except
          EmbalagemImp.FieldByName('qtd_inner').AsFloat := 0;
        end;
        { COL X - Data Cadastro Unidades Por Inner }
        try
          Data := (ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)].Text);
          sHash := sHash + Data;
          Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
          EmbalagemImp.FieldByName('dat_cad_inner').AsDateTime := StrToDate(Data);
        except
          EmbalagemImp.FieldByName('dat_cad_inner').AsDateTime := DataHoraServidor;
        end;
        {col X}
        with ExcelWorksheet.Range['X' + IntToStr(Linha),'X' + IntToStr(Linha)] do
        begin
          Font.Size := 9;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Value := FormatDateTime('dd.mm.yy', EmbalagemImp.FieldByName('dat_cad_inner').AsDateTime);
          WrapText := True;
          ShrinkToFit := False;
        end;
        { Calcular peso da embalagem }
        PesLiquidoCx := (PesUnitProd * UnCxMaster);
        PesEmbVazia := PesBrutoCx - PesLiquidoCx;
        EmbalagemImp.FieldByName('peso_unitario').AsFloat := PesEmbVazia;

        if (PesBrutoCx = 0)   then Erros := SetBit(Erros, 18);
        if (PesEmbVazia <= 0) then Erros := SetBit(Erros, 18);

        { COL AC - Percentual Comissão Fornecedor }
        try
          n := StrToFloat((ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)].Value));
          sHash := sHash + ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)].Text;
          FieldByName('pct_comissao_f').AsFloat := n;
        except
        end;
        { COL AD - Percentual Comissao Cliente }
        try
          n := StrToFloat((ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)].Value));
          sHash := sHash + ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)].Text;
          FieldByName('pct_comissao_c').AsFloat := n;
        except
        end;

        { COL AE - Licença de Importação }
        FieldByName('ncm_lic').AsString := UpperCase((ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)].Value));
        sHash := sHash + ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)].Text;

        { COL AF - Licenciado pelo INMETRO }
        FieldByName('ncm_imetro').AsString := UpperCase((ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)].Value));
        sHash := sHash + ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)].Text;

        // Calcular HASH MD5  para cada linha lida do Excel, quando for uma alteração de cadastro
        if (AcaoMenu = acmEdit) then
        begin
           { Calcular Hash }
           with TIdHashMessageDigest5.Create do
           try
              sMD5 := TIdHash128.AsHex(HashValue(sHash));
           finally
              free;
           end;

// DEBUG
//         with ExcelWorksheet.Range['AY' + IntToStr(Linha),'AY' + IntToStr(Linha)] do
//              Value := sHash;
//         ShowMessage('Excel: ' + sMD5Excel +#13#10 + 'Lido:  ' + sMD5);
//
//         with ExcelWorksheet.Range['AQ' + IntToStr(Linha),'AQ' + IntToStr(Linha)] do
//              Value := sMD5 ;

           if (sMD5Excel = sMD5) then // Não houve alteração na linha do Excel ?
           begin
             ProdutosImp.Cancel;   // Cancelar edição nas tabelas
             EmbalagemImp.Cancel;
             Inc(Linha);           // Passar o processo para a próxima linha
             Continue;
           end else
           begin
             FlagAltera := True; // Recalcular Pedidos, Prod. List e Faturas.
             ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Interior.ColorIndex := 4; // verde
           end;
        end;

        { PRODUTOS: gravar registro somente sem erros }
        if Erros = 0 then ProdutosImp.Post
                     else ProdutosImp.Cancel;

        { EMBALAGENS: gravar registro somente sem erros }
        if Erros = 0 then EmbalagemImp.Post
                     else EmbalagemImp.Cancel;


        { dados para a Lista de Preços }

        { COL Y - Preço do Produto }
        try
          Preco := StrToFloat((ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)].Value));
        except
          Preco := 0.00; { indica que não foi informado o preço }
        end;
        { somente permitie a inclusão de preços para produtos novos         }
        { não permitir a ateração conforme indicado pelo Dieter             }
        { se informado Preço, válidar os campos e salvar na lista de preços }
        if (Preco > 0) and (AcaoMenu = acmNew) then
        begin
          { COL Y - Observação do Preço }
          ObsPreco := UpperCase(trim(ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)].Text));
          { COL AB - Data do Preço }
          try
            Data := (ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)].Text);
            Data := StringReplace(Data, '.', '/', [rfReplaceAll]);
            DataPreco := StrToDate(Data);
          except
            DataPreco := DataHoraServidor;
          end;
          {col AB}
          with ExcelWorksheet.Range['AB' + IntToStr(Linha),'AB' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            Value := FormatDateTime('dd.mm.yy', DataPreco);
            WrapText := True;
            ShrinkToFit := False;
          end;
          { se não ocorreu erro na data do preço, processa a lista }
          if (Erros = 0) then
          begin
            { obter Lista Geral do Cliente }
            with Lista do
            begin
              Close;
              ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
              ParamByName('cod_cliente').Value := CodCliente;
              Open;
              { Criar a Lista Geral se não existe }
              if (IsEmpty) then
              begin
                Insert;
                FieldByName('cod_empresa').Value    := vgCod_Empresa;
                FieldByName('cod_cliente').Value    := CodCliente;
                FieldByName('num_lista').AsInteger  := InsertCode('lista', 'num_lista');
                FieldByName('den_lista').Value      := 'LISTA GERAL DO CLIENTE';
                FieldByName('ies_situacao').Value   := 'A';
                FieldByName('ies_tip_lista').Value  := 'G';
                FieldByName('dat_cadastro').Value   := DataHoraServidor;
                Post;
              end;

              if Not(IsEmpty) then
              begin
                { Procurar item na lista de preços Geral }
                with Lista_Preco do
                begin
                  Close;
                  ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
                  ParamByName('num_lista').AsInteger   := Listanum_lista.AsInteger;
                  ParamByName('cod_produto').AsString := Produto;
                  Open;
                  { Incluir Item na Lista de Preços Geral }
                  if IsEmpty then
                  begin
                    Insert;
                    FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
                    FieldByName('num_lista').AsInteger   := Listanum_lista.AsInteger;
                    FieldByName('cod_produto').AsString  := Produto;
                    FieldByName('vlr_unitario').AsFloat  := Preco;
                    FieldByName('dat_cadastro').AsDateTime := DataPreco;
                    FieldByName('obs_preco').AsString := ObsPreco;
                    Post;
                    { salvar preço atual no cadastro de produtos }
                    ProdutosImp.Edit;
                    ProdutosImppreco.Value := Preco;
                    ProdutosImpdat_preco.Value := DataPreco;
                    ProdutosImpobs_preco.Value := ObsPreco;
                    ProdutosImp.Post;
                  end;
                end; { Lista_Preco }
              end;
            end; { Lista }
          end;
        end; { Preco > 0 }

        { indicar na planilha as células com erros }
        if GetBit(Erros,02) = 1 then ExcelWorkSheet.Cells.Item[Linha, 02].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 02].Interior.ColorIndex := xlNone;
        if GetBit(Erros,03) = 1 then ExcelWorkSheet.Cells.Item[Linha, 03].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 03].Interior.ColorIndex := xlNone;
        if GetBit(Erros,04) = 1 then ExcelWorkSheet.Cells.Item[Linha, 05].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 05].Interior.ColorIndex := xlNone;
        if GetBit(Erros,05) = 1 then ExcelWorkSheet.Cells.Item[Linha, 06].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 06].Interior.ColorIndex := xlNone;
        if GetBit(Erros,06) = 1 then ExcelWorkSheet.Cells.Item[Linha, 07].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 07].Interior.ColorIndex := xlNone;
        if GetBit(Erros,07) = 1 then ExcelWorkSheet.Cells.Item[Linha, 08].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 08].Interior.ColorIndex := xlNone;
        if GetBit(Erros,08) = 1 then ExcelWorkSheet.Cells.Item[Linha, 09].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 09].Interior.ColorIndex := xlNone;
        if GetBit(Erros,09) = 1 then ExcelWorkSheet.Cells.Item[Linha, 10].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 10].Interior.ColorIndex := xlNone;
        if GetBit(Erros,11) = 1 then ExcelWorkSheet.Cells.Item[Linha, 12].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 12].Interior.ColorIndex := xlNone;
        if GetBit(Erros,13) = 1 then ExcelWorkSheet.Cells.Item[Linha, 14].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 14].Interior.ColorIndex := xlNone;
        if GetBit(Erros,14) = 1 then ExcelWorkSheet.Cells.Item[Linha, 15].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 15].Interior.ColorIndex := xlNone;
        if GetBit(Erros,15) = 1 then ExcelWorkSheet.Cells.Item[Linha, 16].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 16].Interior.ColorIndex := xlNone;
        if GetBit(Erros,16) = 1 then ExcelWorkSheet.Cells.Item[Linha, 17].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 17].Interior.ColorIndex := xlNone;
        if GetBit(Erros,18) = 1 then ExcelWorkSheet.Cells.Item[Linha, 19].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 19].Interior.ColorIndex := xlNone;
        if GetBit(Erros,20) = 1 then ExcelWorkSheet.Cells.Item[Linha, 21].Interior.ColorIndex := 3
                                else ExcelWorkSheet.Cells.Item[Linha, 21].Interior.ColorIndex := xlNone;

        if Erros > 0 then
           ErroGeral := True
        else ExcelWorkSheet.Cells.Item[Linha, 01].Interior.ColorIndex := 35;

      end;

      { Recalcular Pedidos/Faturas/Prod List quando necessário }
      if (ErroGeral = False) then
      begin
         if FlagAltera then
         begin
           RecalcularPedidos(Produto);
           RecalcularFaturas(Produto);
           RecalcularProdList(Produto);
         end;

         if FlagAlteraComissao then
         begin
           AtualizarComissoes(Produto);
         end;
      end;

      Inc(linha);
  end;

  Screen.Cursor := crDefault;
  { Salvar a planilha }
  //ExcelApplication.ActiveWorkbook.SaveAs(PlanilhaExcel,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  ExcelApplication.ActiveWorkbook.Save(lcid);
  FecharExcel(True);
  { finalizar progress bar }
  Ani.Terminate;

  //if ErroGeral then Application.MessageBox('Importação efetuada com erros', 'Informação', MB_ICONERROR+MB_OK);
  if Not(ErroGeral) then Application.MessageBox('Importação efetuada sem erros', 'Informação', MB_ICONINFORMATION+MB_OK);

  // se ocorreu erros na importação, abrir a planilha para o usuário
  if ErroGeral then
  begin
     Application.MessageBox('Houve erros na importação.'+#13#10+'A planilha será mostrada na tela. '+#13#10+
     'As células com erros estão na cor vermelha e os itens não foram importados.'+#13#10 +
     'Os itens sem erros foram importados. ' +#13#10+'Aguarde a geração e abertura da planilha Excel.'   , 'Erro', MB_ICONERROR+MB_OK);
     AbrirExcel(PlanilhaExcel, True);
  end;
end;

procedure Tfr_CadProduto.ProdutosImpAfterPost(DataSet: TDataSet);
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

procedure Tfr_CadProduto.ProdutosImpNewRecord(DataSet: TDataSet);
begin
  inherited;
  ProdutosImpcod_empresa.AsInteger      := vgCod_Empresa;
  ProdutosImpies_situacao.AsString      := 'A';
  ProdutosImppes_unitario.AsFloat       := 0.000;
  ProdutosImpncm_cod.Clear;
  ProdutosImpdat_cadastro.AsDateTime    := Buscar_DateTime;
  ProdutosImpdat_cad_peso.AsDateTime    := Buscar_DateTime;
  ProdutosImpobs_peso_unitario.AsString := '';
end;

procedure Tfr_CadProduto.EmbalagemNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
  DataSet.FieldByName('cod_produto').AsString := dbedcod_produto.Text;
  DataSet.FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
  DataSet.FieldByName('dat_cad_dimensoes').AsDateTime := Buscar_DateTime;
  DataSet.FieldByName('dat_cad_peso').AsDateTime := Buscar_DateTime;
  DataSet.FieldByName('dat_cad_master').AsDateTime := Buscar_DateTime;
  DataSet.FieldByName('dat_cad_inner').AsDateTime := Buscar_DateTime;
  DataSet.FieldByName('observacao').AsString := ' ';
  DataSet.FieldByName('obs_caixas').AsString := ' ';
end;

procedure Tfr_CadProduto.EmbalagemAfterPost(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

  if (FlagAlteraEmbalagem) then
  begin
    RecalcularPedidos(DataSet.FieldByName('cod_produto').AsString);
    RecalcularFaturas(DataSet.FieldByName('cod_produto').AsString);
    RecalcularProdList(DataSet.FieldByName('cod_produto').AsString);
    FlagAlteraEmbalagem := False;
  end;
end;

procedure Tfr_CadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  PlanilhaExcel := '';
end;

procedure Tfr_CadProduto.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with Pedidos do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := IBDataSetcod_produto.AsString;
    Open;
    if Not(IsEmpty) then
    begin
      Application.MessageBox('Este produto não pode ser excluído, pois existem pedidos para ele.', 'Informação', MB_ICONINFORMATION+MB_OK);
      Abort;
    end;
    Close;
  end;
  with ExcluirListaPreco do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := IBDataSetcod_produto.AsString;
    Open;
    if Not(IsEmpty) then Delete;
    Close;
  end;
  with Embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := IBDataSetcod_produto.AsString;
    Open;
    if Not(IsEmpty) then Delete;
    Close;
  end;
end;

procedure Tfr_CadProduto.EmbalagemAfterDelete(DataSet: TDataSet);
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

procedure Tfr_CadProduto.Lista_PrecoAfterPost(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

   with spr_atualizar_precos do
   begin
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_lista').AsInteger := DataSet.FieldByName('num_lista').AsInteger;
     ExecProc;
 	   try
  	 Transaction.CommitRetaining;
     except
  	 Transaction.RollbackRetaining;
     end;
   end;
end;

procedure Tfr_CadProduto.ExcluirListaPrecoAfterPost(DataSet: TDataSet);
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

procedure Tfr_CadProduto.ExcluirListaPrecoAfterDelete(DataSet: TDataSet);
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

procedure Tfr_CadProduto.IBDataSetncm_codGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Not(Sender.IsNull) then Text := FormatarNcm(Sender.AsInteger, IBDataSetcod_cliente.AsString, 'D');
end;

procedure Tfr_CadProduto.ProdutosImpncm_codGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  //if Not(Sender.IsNull) then Text := FormatarNcm(Sender.AsInteger);
end;
                                                                                    
procedure Tfr_CadProduto.ProdutosImpBeforePost(DataSet: TDataSet);
begin
  inherited;
  if ProdutosImppes_unitario.OldValue <> ProdutosImppes_unitario.AsFloat then
     FlagAltera := True; // indica que peso unitário do produto foi alterado na importação

  if ProdutosImppct_comissao_f.OldValue <> ProdutosImppct_comissao_f.AsFloat then
     FlagAlteraComissao := True;

  if ProdutosImppct_comissao_c.OldValue <> ProdutosImppct_comissao_c.AsFloat then
     FlagAlteraComissao := True;
end;

procedure Tfr_CadProduto.EmbalagemBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (DataSet.State) in [dsEdit] then
  begin
     if EmbalagemcalVolume.Value <> Embalagemvolume.AsFloat then
        FlagAlteraEmbalagem := True;

     if Embalagempes_bruto_cx.OldValue <> Embalagempes_bruto_cx.AsFloat then
        FlagAlteraEmbalagem := True;

     if Embalagemqtd_master.OldValue <> Embalagemqtd_master.AsFloat then
        FlagAlteraEmbalagem := True;
  end;

  DataSet.FieldByname('volume').AsFloat := DataSet.FieldByName('calVolume').AsFloat;

  { Alterado em 29.06.16 }
  with dmCOM.CalcEmbalagem(DataSet.FieldByName('cod_produto').AsString, 1.0) do
  begin
    { Peso Unitário da Caixa (vazia) }
    DataSet.FieldByName('peso_unitario').AsFloat :=  DataSet.FieldByName('pes_bruto_cx').AsFloat - (PesUnitProd * DataSet.FieldByName('qtd_master').AsFloat);
  end;
end;

procedure Tfr_CadProduto.clienteBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Cliente.ParamByName('login').Value := vgLogin;
end;

procedure Tfr_CadProduto.fornecedorBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Fornecedor.ParamByName('login').Value := vgLogin;
end;

procedure Tfr_CadProduto.EmbalagemCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('calVolume').Value := (DataSet.FieldByName('largura').AsFloat *
                                             DataSet.FieldByName('profundidade').AsFloat *
                                             DataSet.FieldByName('altura').AsFloat)/1000000;

end;

procedure Tfr_CadProduto.EmbalagemBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if Not(DataSet.IsEmpty) then
  begin
    Application.MessageBox('É permitido somente uma embalagem para o produto', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
end;

procedure Tfr_CadProduto.actGerarExcelNovoExecute(Sender: TObject);
Var
   Linha: integer;
begin
  inherited;
  CodCliente := '';
  NomFornecedor := '';
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Cancel;   

  { obter modelo da planilha de pedido  }
  GetPlanilha;
  { Verificar se existe modelo carregado no banco de dados }
  if GetBit(parametro_comercialies_modelo.AsInteger, 3) = 0 then
  begin
    Application.MessageBox('O modelo de planilha para a Importação de Produtos não foi definido', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
  { salvar o modelo da planilha na pasta do usuário com o nome escolhido por este }
  if SaveDialog.Execute then
  begin
     PlanilhaExcel := SaveDialog.FileName;
     parametro_comercialmod_cad_produto.SaveToFile(PlanilhaExcel);
  end
  else exit;

  AbrirExcel(PlanilhaExcel);

  { Gerar as listas para os combos do Excel }
  GerarListasExcel;

  { Gerar 100 linhas formatadas na planilha excel}
  for Linha := 4 to 104 do
  begin
     { Combo com Fornecedores }
     ExcelWorksheet.Range['B4','B4'].ColumnWidth := 20;
     with ExcelWorksheet.Range['B'+IntToStr(Linha),'B'+IntToStr(Linha)].Validation do
     begin
       Delete;
       Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AK1:$AK'+IntToStr(ListaCombo.Fornecedores),'');
       IgnoreBlank := True;
       InCellDropdown := True;
       ShowInput := True;
       ShowError := True;
     end;

     { Combo com Clientes }
     ExcelWorksheet.Range['C4','C4'].ColumnWidth := 15;
     with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Validation do
     begin
       Delete;
       Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AL1:$AL'+IntToStr(ListaCombo.Clientes),'');
       IgnoreBlank := True;
       InCellDropdown := True;
       ShowInput := True;
       ShowError := True;
     end;

     { Descrição resumida em português }
     with ExcelWorkSheet.Range['E'+IntToStr(Linha),'E'+IntToStr(Linha)] do
     begin
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       FormulaR1C1 := '=LEFT(RC[1],100)';
       ColumnWidth := 23;
       WrapText := True;
       ShrinkToFit := False;
     end;

     { Descrição detalhada em português }
     with ExcelWorkSheet.Range['F'+IntToStr(Linha),'F'+IntToStr(Linha)] do
     begin
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       ColumnWidth := 50;
       WrapText := True;
       ShrinkToFit := False;
     end;

     { Descrição resumida em inglês }
     with ExcelWorkSheet.Range['G'+IntToStr(Linha),'G'+IntToStr(Linha)] do
     begin
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       FormulaR1C1 := '=LEFT(RC[1],100)';
       ColumnWidth := 23;
       WrapText := True;
       ShrinkToFit := False;
     end;

     { Descrição detalhada em Inglês }
     with ExcelWorkSheet.Range['H'+IntToStr(Linha),'H'+IntToStr(Linha)] do
     begin
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       ColumnWidth := 50;
       WrapText := True;
       ShrinkToFit := False;
     end;

     { Combo com Tipo de Produtos }
     ExcelWorksheet.Range['I4','I4'].ColumnWidth := 32;
     with ExcelWorksheet.Range['I'+IntToStr(Linha),'I'+IntToStr(Linha)].Validation do
     begin
       Delete;
       Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AN1:$AN'+IntToStr(ListaCombo.Tipos),'');
       IgnoreBlank := True;
       InCellDropdown := True;
       ShowInput := True;
       ShowError := True;
     end;

     { Combo com Unidade de Medida }
     ExcelWorksheet.Range['L4','L4'].ColumnWidth := 4.14;
     with ExcelWorksheet.Range['L'+IntToStr(Linha),'L'+IntToStr(Linha)].Validation do
     begin
       Delete;
       Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AM1:$AM'+IntToStr(ListaCombo.Uns),'');
       IgnoreBlank := True;
       InCellDropdown := True;
       ShowInput := True;
       ShowError := True;
       Width := 5;
     end;

      { Volume m³ }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        MergeCells := False;
        Font.Name := 'Arial';
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        NumberFormat := '#.##0,0000';
        FormulaR1C1 := '=ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)';
      end;

     { Observações para preços }
     with ExcelWorkSheet.Range['AA'+IntToStr(Linha),'AA'+IntToStr(Linha)] do
     begin
       MergeCells := False;
       Font.Name := 'Arial';
       Font.Size := 9;
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlTop;
       ColumnWidth := 25;
       WrapText := True;
       ShrinkToFit := False;
     end;

     { Licença de importação }
     ExcelWorksheet.Range['AE4','AE4'].ColumnWidth := 9.14;
     with ExcelWorksheet.Range['AE'+IntToStr(Linha),'AE'+IntToStr(Linha)].Validation do
     begin
       Delete;
       Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AO1:$AO2','');
       IgnoreBlank := True;
       InCellDropdown := True;
       ShowInput := True;
       ShowError := True;
     end;

     { Licenciado pelo INMETRO }
     ExcelWorksheet.Range['AF4','AF4'].ColumnWidth := 9.14;
     with ExcelWorksheet.Range['AF'+IntToStr(Linha),'AF'+IntToStr(Linha)].Validation do
     begin
       Delete;
       Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AO1:$AO2','');
       IgnoreBlank := True;
       InCellDropdown := True;
       ShowInput := True;
       ShowError := True;
     end;

  end;

  // Esconder as colunas de descrições resumidas
  ExcelWorksheet.Range['E1','E1'].EntireColumn.Hidden := True;
  ExcelWorksheet.Range['G1','G1'].EntireColumn.Hidden := True;

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  Application.ProcessMessages;

  Screen.Cursor := crHourGlass;
  //AbrirExcel(PlanilhaExcel);
  Screen.Cursor := crDefault;
  { salvar a planilha excel }
  //ExcelApplication.ActiveWorkbook.SaveAs(PlanilhaExcel,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  ExcelApplication.ActiveWorkbook.Save(lcid);
  FecharExcel(False);
  { finalizar progress bar }
  Ani.Terminate;
  AbrirExcel(PlanilhaExcel, True);
end;

procedure Tfr_CadProduto.IBDataSetAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Imagem.Picture := nil;
end;

procedure Tfr_CadProduto.IBDataSetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Embalagem do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_produto').Value := '';
    Open;
    Insert;
  end;
end;

procedure Tfr_CadProduto.IBDataSetAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Embalagem.Cancel;
end;

procedure Tfr_CadProduto.EmbalagemAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if Not(IBDataSet.State in [dsEdit, dsInsert]) then IBDataSet.Edit;
end;

procedure Tfr_CadProduto.ListaAfterPost(DataSet: TDataSet);
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

procedure Tfr_CadProduto.IBDataSetCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (AcaoMenu <> acmNew) then
  begin
     with dmCOM.PrecoItem(IBDataSetcod_produto.AsString, IBDataSetcod_cliente.AsString, IBDataSetcod_fornecedor.AsInteger, 0) do
     begin
       if PrecoItem > 0 then
       begin
         DataSet.FieldByName('calDatPreco').AsDateTime := DataPreco;
         DataSet.FieldByName('calPreco').AsFloat := PrecoItem;
         DataSet.FieldByName('calObspreco').AsString := ObsPreco;
       end
       else begin
         DataSet.FieldByName('calDatPreco').Clear;
         DataSet.FieldByName('calPreco').Clear;
         DataSet.FieldByName('calObsPreco').Clear;
       end;
     end;
  end;
end;

procedure Tfr_CadProduto.DBMemo3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1];
end;

procedure Tfr_CadProduto.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1];
end;



procedure Tfr_CadProduto.Embalagempes_bruto_cxValidate(Sender: TField);
begin
  inherited;
  if (Embalagempes_bruto_cx.AsFloat <= (IBDataSet.FieldByName('pes_unitario').AsFloat * EmbalagemQtd_Master.AsFloat)) then
  begin
    Application.MessageBox('Peso Bruto deve ser maior que o Peso Líquido.', 'Erro', MB_OK+MB_ICONEXCLAMATION);
    Abort;
  end;
end;

end.

end;


