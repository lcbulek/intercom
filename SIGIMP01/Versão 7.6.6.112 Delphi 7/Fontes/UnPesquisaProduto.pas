unit UnPesquisaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ImgList, ActnList, DB, Grids,
  DBGrids, ExtCtrls, DBCtrls, IBDatabase, IBCustomDataSet, IBQuery, unMenuCompl,
  Mask, unConnection, JvDialogs, Excel2000, OleServer, AniThread, ShellApi,
  idHash, idHashMessageDigest, Buttons;

type
  Listas = record
             Fornecedores,
             Clientes,
             Uns,
             Tipos : integer;
           end;

  Tfr_PesquisaProduto = class(TForm)
    Panel1: TPanel;
    grdGrid: TDBGrid;
    dtsFmGrid: TDataSource;
    ActionList1: TActionList;
    acOK: TAction;
    acClose: TAction;
    ImageList1: TImageList;
    Panel2: TPanel;
    qryProduto: TIBQuery;
    qryProdutoden_produto: TIBStringField;
    GroupBox1: TGroupBox;
    qryTipProd: TIBQuery;
    qryTipProdcod_tip_produto: TSmallintField;
    qryTipProdden_tip_produto: TIBStringField;
    dtsTipProd: TDataSource;
    acClear: TAction;
    acFiltrar: TAction;
    Label1: TLabel;
    edtCodProd: TEdit;
    Label2: TLabel;
    edtDescProd: TEdit;
    Label7: TLabel;
    edtDescTrad: TEdit;
    qryProdutocod_produto: TIBStringField;
    edBuscaCodigo: TEdit;
    edBuscaDesc: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edBuscaDescTrad: TEdit;
    Label9: TLabel;
    Cliente: TIBQuery;
    cbClientes: TComboBox;
    Label10: TLabel;
    Fornecedor: TIBQuery;
    Label11: TLabel;
    dsFornecedor: TDataSource;
    dbxFornecedor: TDBLookupComboBox;
    qryProdutoies_situacao: TIBStringField;
    Embalagem: TIBQuery;
    Embalagemcod_empresa: TSmallintField;
    Embalagemcod_produto: TIBStringField;
    Embalagemaltura: TIBBCDField;
    Embalagemlargura: TIBBCDField;
    Embalagemprofundidade: TIBBCDField;
    Embalagemvolume: TIBBCDField;
    Embalagemarea: TIBBCDField;
    dsEmbalagem: TDataSource;
    UnidadeMedida: TIBQuery;
    UnidadeMedidasigla: TIBStringField;
    qryProdutocalUniMedida: TStringField;
    qryProdutocod_uni_medida: TSmallintField;
    qryProdutopes_unitario: TFloatField;
    Embalagemobservacao: TIBStringField;
    Embalagemdat_cadastro: TDateTimeField;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    DBEdit16: TDBEdit;         
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    qryProdutoden_produto_ing: TIBStringField;
    qryProdutocod_cliente: TIBStringField;
    qryProdutocod_fornecedor: TSmallintField;
    Fornecedor_Lkp: TIBQuery;
    Fornecedor_Lkpcod_fornecedor: TSmallintField;
    Fornecedor_Lkpraz_social_reduz: TIBStringField;
    qryProdutolkpFornecedor: TStringField;
    qryProdutovlr_unitario: TFloatField;
    qryProdutoobs_preco: TStringField;
    qryProdutodat_preco: TDateField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    tipo_produto: TIBQuery;
    Label6: TLabel;
    dbxTipoProduto: TDBLookupComboBox;
    dsTipo_Produto: TDataSource;
    Fornecedorraz_social_reduz: TIBStringField;
    Fornecedorcod_fornecedor: TSmallintField;
    Clientecod_cliente: TIBStringField;
    qryProdutoncm_cod: TIntegerField;
    parametro_comercial: TIBQuery;
    qryProdutoncm_letra: TIBStringField;
    qryProdutoncm_lic: TIBStringField;
    Embalagemqtd_master: TIBBCDField;
    Embalagemqtd_inner: TIBBCDField;
    rgOrdem: TRadioGroup;
    rgSituacao: TRadioGroup;
    tipo_produtoden_tip_produto: TIBStringField;
    tipo_produtocod_tip_produto: TSmallintField;
    qryProdutopct_comissao_f: TIBBCDField;
    qryProdutopct_comissao_c: TIBBCDField;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    actGerarExcel: TAction;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    actAbrirExcel: TAction;
    Button5: TButton;
    Imagem: TImage;
    Label18: TLabel;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    SaveDialog: TJvSaveDialog;
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
    Produtospct_comissao_f: TIBBCDField;
    Produtospct_comissao_c: TIBBCDField;
    Produtosncm_cod: TIntegerField;
    Produtosncm_letra: TIBStringField;
    Produtosncm_lic: TIBStringField;
    Produtosncm_imetro: TIBStringField;
    parametro_comercialmod_cad_produto: TBlobField;
    parametro_comercialies_modelo: TIntegerField;
    panGauge: TPanel;
    fornecedores: TIBQuery;
    SmallintField1: TSmallintField;
    IBStringField1: TIBStringField;
    clientes: TIBQuery;
    IBStringField2: TIBStringField;
    unidades_medida: TIBQuery;
    unidades_medidacod_uni_medida: TSmallintField;
    unidades_medidaden_uni_medida: TIBStringField;
    unidades_medidasigla: TIBStringField;
    TipoProduto: TIBQuery;
    TipoProdutoden_tip_produto: TIBStringField;
    BuscaTipoProduto: TIBQuery;
    BuscaTipoProdutocod_tip_produto: TSmallintField;
    BuscaUnidadeMedida: TIBQuery;
    BuscaUnidadeMedidacod_uni_medida: TSmallintField;
    qryTipo_Produto: TIBQuery;
    qryTipo_Produtocod_tip_produto: TSmallintField;
    qryTipo_Produtoden_tip_produto: TIBStringField;
    qryUnidade_Medida: TIBQuery;
    qryUnidade_Medidacod_uni_medida: TSmallintField;
    qryUnidade_Medidasigla: TIBStringField;
    qryFornecedor: TIBQuery;
    qryFornecedorcod_fornecedor: TSmallintField;
    qryFornecedorraz_social_reduz: TIBStringField;
    EmbalagemImp: TIBQuery;
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
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    qryProdutoncm_imetro: TIBStringField;
    GroupBox2: TGroupBox;
    EmbalagemImppes_bruto_cx: TIBBCDField;
    Embalagempes_bruto_cx: TIBBCDField;
    actOpenImages: TAction;
    actOpenPackages: TAction;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    qryProdutocalDenProduto_detpor: TStringField;
    qryProdutocalDenProduto_det: TStringField;
    cbImages: TCheckBox;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    Label32: TLabel;
    DBEdit21: TDBEdit;
    Label31: TLabel;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    Button6: TButton;
    Button7: TButton;
    Embalagemdat_cad_dimensoes: TDateField;
    Embalagemdat_cad_peso: TDateField;
    Embalagemdat_cad_master: TDateField;
    Embalagemdat_cad_inner: TDateField;
    DBEdit22: TDBEdit;
    Label29: TLabel;
    Label33: TLabel;
    DBEdit23: TDBEdit;
    Label34: TLabel;
    DBEdit24: TDBEdit;
    Label35: TLabel;
    DBEdit25: TDBEdit;
    qryProdutodat_cad_peso: TDateField;
    Label36: TLabel;
    DBEdit26: TDBEdit;
    spr_produtos_embarcados: TIBQuery;
    spr_produtos_embarcadosdat_liberacao: TDateField;
    spr_produtos_embarcadosnum_pedido_cli: TIBStringField;
    spr_produtos_embarcadosnum_pedido_for: TIBStringField;
    spr_produtos_embarcadosnum_ref_volume: TIBStringField;
    spr_produtos_embarcadosqtd_pedido: TIBBCDField;
    spr_produtos_embarcadosvlr_unit_pedido: TFloatField;
    spr_produtos_embarcadosvlr_unit_ped_esp: TFloatField;
    spr_produtos_embarcadosvlr_pedido: TIBBCDField;
    spr_produtos_embarcadosvlr_pedido_esp: TIBBCDField;
    spr_produtos_embarcadosnum_fatura: TIBStringField;
    spr_produtos_embarcadosqtd_fatura: TIBBCDField;
    spr_produtos_embarcadosvlr_fatura: TIBBCDField;
    spr_produtos_embarcadosvlr_fatura_esp: TIBBCDField;
    spr_produtos_embarcadosdat_embarque: TDateField;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    ds_spr_produtos_embarcados: TDataSource;
    actFechar: TAction;
    SpeedButton1: TSpeedButton;
    spr_produtos_embarcadoscod_cliente: TIBStringField;
    spr_produtos_embarcadosraz_social_reduz: TIBStringField;
    procedure Set_Param;
    procedure FormShow(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acClearExecute(Sender: TObject);
    procedure acFiltrarExecute(Sender: TObject);
    procedure acOKExecute(Sender: TObject);
    procedure qryProdutoCalcFields(DataSet: TDataSet);
    procedure Panel1Enter(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscaDescTradKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure qryProdutoies_situacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryProdutoAfterScroll(DataSet: TDataSet);
    procedure qryProdutocod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cbClientesClick(Sender: TObject);
    procedure FornecedorAfterOpen(DataSet: TDataSet);
    procedure tipo_produtoAfterOpen(DataSet: TDataSet);
    procedure dbxFornecedorClick(Sender: TObject);
    procedure qryProdutoncm_codGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AbrirExcel(Caminho: String; Visivel : boolean = False);
    Procedure FecharExcel(FecharTabelas: boolean = True);
    function GetPlanilha: String;    
    procedure GerarListasExcel;
    procedure actGerarExcelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAbrirExcelExecute(Sender: TObject);
    function GetTipoProduto(DenTipProduto: String): Integer;
    function GetUnidadeMedida(Sigla: String): Integer;
    function GetDenTipProduto(CodTipProduto: Integer): String;
    function GetSigla(CodUniMedida: Integer): String;
    function GetRazSocialReduz(CodFornecedor: Integer): String;
    procedure actOpenImagesExecute(Sender: TObject);
    procedure actOpenPackagesExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    PlanilhaExcel : String;
    AcaoMenuP: TAcoesMenu;
    procedure PesquisarMenu;
  end;

Const
  mrProcurarExcel = 1001;

var
  lcid : Cardinal;
  
  fr_PesquisaProduto: Tfr_PesquisaProduto;
  Ant : String;

  { variaveis para o progress bar }
  Ani : TAnimationThread;
  Rect : TRect;

  ListaCombo : Listas;

  DIR_PLANILHAS : String;

  CodProduto, CodCliente, NomFornecedor : String;


implementation

uses SigCAD01_025, SigIMP01_045;

{$R *.dfm}

function Tfr_PesquisaProduto.GetTipoProduto(DenTipProduto: String): Integer;
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

function Tfr_PesquisaProduto.GetUnidadeMedida(Sigla: String): Integer;
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

function Tfr_PesquisaProduto.GetDenTipProduto(CodTipProduto: Integer): String;
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

function Tfr_PesquisaProduto.GetSigla(CodUniMedida: Integer): String;
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

function Tfr_PesquisaProduto.GetRazSocialReduz(CodFornecedor: Integer): String;
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



procedure Tfr_PesquisaProduto.PesquisarMenu;
begin
  { chamado do menu 'Pesquisar Produtos' }
  Set_Param;
  FormStyle := fsMDIChild;
  //BorderStyle := bsDialog;
  WindowState := wsMaximized;
  //BorderIcons := [biSystemMenu];
  AcaoMenuP := acmSearch;
  Caption := 'Pesquisar Produtos';
  actGerarExcel.Caption := 'Gerar Excel Produtos Pesquisados';
  acOK.Visible := False;
  acOK.Enabled := False;
  actAbrirExcel.Visible := False;
end;

procedure Tfr_PesquisaProduto.FormShow(Sender: TObject);
begin
   Set_Param;
end;

procedure Tfr_PesquisaProduto.acCloseExecute(Sender: TObject);
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
  ModalResult := mrCancel;
end;                                                                       

procedure Tfr_PesquisaProduto.acClearExecute(Sender: TObject);
begin
   edtCodProd.Clear;
   edtDescProd.Clear;
   edBuscaCodigo.Clear;
   edBuscaDesc.Clear;
   edBuscaDescTrad.Clear;
   cbClientes.ItemIndex := 0;
   cbClientesClick(nil);
   dbxFornecedor.KeyValue := 0;
   dbxTipoProduto.KeyValue := 0;
   rgSituacao.ItemIndex := 0;
   edtDescTrad.Clear;
   qryProduto.Close;
   Set_Param;                                      
   edtCodProd.SetFocus;
   Embalagem.Close;
end;

procedure Tfr_PesquisaProduto.Set_Param;
begin
   with qryTipProd do
   begin
     Open;
     Last;
     First;
   end;
   with parametro_comercial do
   begin
     Close;
     ParamByName('cod_empresa').Value := vgCod_Empresa;
     Open;
   end;
end;

procedure Tfr_PesquisaProduto.acFiltrarExecute(Sender: TObject);
Var
  CodProduto : String;
begin
   if (trim(edtCodProd.Text) = '') and
      (trim(edtDescProd.Text) = '') and
      (trim(edtDescTrad.Text) = '') and
      (cbClientes.ItemIndex = 0) and
      (dbxFornecedor.KeyValue = 0) and
      (dbxTipoProduto.KeyValue = 0) then Exit;

   qryProduto.Close;
   Embalagem.Close;
   Imagem.Hint := '';
   Imagem.Picture := nil;
   spr_produtos_embarcados.Close;

   CodProduto := trim(RetirarLixo(edtCodProd.Text));

   if length(trim(CodProduto)) < 15 then CodProduto := CodProduto + '%';

   with qryProduto do
   begin
     Close;
     SQL.Clear;

     { descri��o reduzida em ingl�s }
     if trim(edtDescTrad.Text) <> '' then
     begin
       SQL.Text := 'select p.*                                                      '+
                   'from "produto" p                                                '+
                   'where p."cod_empresa" = :cod_empresa                            '+
                   '  and p."den_produto_ing" like :den_produto_ing                 ';
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('den_produto_ing').AsString     := trim(edtDescTrad.Text) + '%';
     end;

     { descri��o reduzida em portugu�s }
     if trim(edtDescProd.Text) <> '' then
     begin
        SQL.Clear;
        SQL.Text := 'select p.*                                                      '+
                    'from "produto" p                                                '+
                    'where p."cod_empresa" = :cod_empresa                            '+
                    '  and p."den_produto" like :den_produto                         ';
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('den_produto').AsString     := trim(edtDescProd.Text) + '%';
     end;

     { C�digo do Produto }
     if trim(edtCodProd.Text) <> '' then
     begin
        SQL.Clear;
        SQL.Text := 'select p.*                                                      '+
                    'from "produto" p                                                '+
                    'where p."cod_empresa" = :cod_empresa                            '+
                    '  and p."cod_produto" like :cod_produto                         ';
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('cod_produto').AsString  := CodProduto;
     end;

     { informado um cliente no combo }
     if cbClientes.ItemIndex <> 0 then
     begin
       if trim(SQL.Text) = '' then
       begin
         SQL.Add('select p.*                                                 ');
         SQL.Add('from "produto" p                                           ');
         SQL.Add('where p."cod_empresa" = :cod_empresa                       ');
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       end;
       SQL.Add('  and p."cod_cliente" = :cod_cliente                       ');
       ParamByName('cod_cliente').AsString := trim(cbClientes.Text);
     end;

     { informado um fornecedor no combo }
     if dbxFornecedor.KeyValue <> 0 then
     begin
       if trim(SQL.Text) = '' then
       begin
         SQL.Add('select p.*                                                 ');
         SQL.Add('from "produto" p                                           ');
         SQL.Add('where p."cod_empresa" = :cod_empresa                       ');
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       end;
       SQL.Add('    and p."cod_fornecedor" = :cod_fornecedor');
       ParamByName('cod_fornecedor').AsInteger := dbxFornecedor.KeyValue;
     end;

     { informado um tipo de produto no combo }
     if dbxTipoProduto.KeyValue <> 0 then
     begin
       if trim(SQL.Text) = '' then
       begin
         SQL.Add('select p.*                                                 ');
         SQL.Add('from "produto" p                                           ');
         SQL.Add('where p."cod_empresa" = :cod_empresa                       ');
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       end;
       SQL.Add('    and p."cod_tip_produto" = :cod_tip_produto');
       ParamByName('cod_tip_produto').AsInteger := dbxTipoProduto.KeyValue;
     end;

     case (rgSituacao.ItemIndex) of
        0: SQL.Text := SQL.Text + '  and p."ies_situacao" = ''A''';
        1: SQL.Text := SQL.Text + '  and p."ies_situacao" = ''I''';
     end;

     case (rgOrdem.ItemIndex) of
       0: SQL.Text := SQL.Text +  ' order by p."cod_produto" ';
       1: SQL.Text := SQL.Text +  ' order by p."den_produto" ';
       2: SQL.Text := SQL.Text +  ' order by p."den_produto_ing" ';
     end;

     Open;
   end;
end;

procedure Tfr_PesquisaProduto.acOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfr_PesquisaProduto.qryProdutoCalcFields(DataSet: TDataSet);
begin
  with UnidadeMedida do
  begin
    Close;
    ParamByName('cod_uni_medida').AsString := qryProdutocod_uni_medida.AsString;
    Open;
    qryProdutocalUniMedida.AsString := FieldByName('sigla').AsString;
    Close;
  end;

  with dmCOM.PrecoItem(qryProdutocod_produto.AsString, qryProdutocod_cliente.AsString, 0) do
  begin
    if PrecoItem > 0 then
    begin
      DataSet.FieldByName('dat_preco').AsDateTime := DataPreco;
      DataSet.FieldByName('vlr_unitario').AsFloat := PrecoItem;
      DataSet.FieldByName('obs_preco').AsString := ObsPreco;
    end
    else begin
      DataSet.FieldByName('dat_preco').Clear;
      DataSet.FieldByName('vlr_unitario').Clear;
      DataSet.FieldByName('obs_preco').Clear;
    end;
  end;

    with ProdutoDet(DataSet.FieldByName('cod_produto').AsString,
                    DataSet.FieldByName('cod_cliente').AsString,
                    DataSet.FieldByName('cod_fornecedor').AsInteger) do
    begin
       DataSet.FieldByName('calDenProduto_detpor').AsString := Portugues;
       DataSet.FieldByName('calDenProduto_det').AsString := Ingles;
    end;



end;

procedure Tfr_PesquisaProduto.Panel1Enter(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfr_PesquisaProduto.Panel1Exit(Sender: TObject);
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg; 
end;

procedure Tfr_PesquisaProduto.edBuscaCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  { Busca r�pida por C�digo do Produto }
  if (Key = VK_RETURN) then
  begin
    if Not(qryProduto.IsEmpty) then
      if Not(ProdutoExiste(trim(edBuscaCodigo.Text)).Existe) then
         qryProduto.Locate('cod_produto',trim(RetirarLixo(edBuscaCodigo.Text)), [loPartialKey])
      else
         qryProduto.Locate('cod_produto',trim(edBuscaCodigo.Text), [loPartialKey]);
    if trim(edBuscaCodigo.Text) <> '' then
    begin
      edBuscaCodigo.SetFocus;
      edBuscaCodigo.SelLength := 0;
      edBuscaCodigo.SelStart := Length(trim(edBuscaCodigo.Text));
    end;
  end;
end;

procedure Tfr_PesquisaProduto.edBuscaDescKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    qryProduto.DisableControls;
    if Des <> Ant then
    begin
       qryProduto.First;
       Ant := Des;
    end
    else
       qryProduto.Next;
    while not(qryProduto.EOF) do
    begin
      s := qryProduto.FieldByName('den_produto').AsString;
      if Pos(Des, s) > 0 then
      begin
        qryProduto.EnableControls;
        Exit;
      end;
      qryProduto.Next;
    end;
    qryProduto.EnableControls;
  end;

begin
  { buscar pela descri��o em portugu�s }
  if (Key = VK_RETURN) then
  begin
    if Not(qryProduto.IsEmpty) then
       Localizar(trim(edBuscaDesc.Text));

    if trim(edBuscaDesc.Text) <> '' then
    begin
      edBuscaDesc.SetFocus;
      edBuscaDesc.SelLength := 0;
      edBuscaDesc.SelStart := Length(trim(edBuscaDesc.Text));
    end;
  end;
end;

procedure Tfr_PesquisaProduto.edBuscaDescTradKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    qryProduto.DisableControls;
    if Des <> Ant then
    begin
       qryProduto.First;
       Ant := Des;
    end
    else
       qryProduto.Next;
    while not(qryProduto.EOF) do
    begin
      s := qryProduto.FieldByName('den_produto_ing').AsString;
      if Pos(Des, s) > 0 then
      begin
        qryProduto.EnableControls;
        Exit;
      end;
      qryProduto.Next;
    end;
    qryProduto.EnableControls;
  end;

begin
  { buscar pela descri��o em Ingl�s }
  if (Key = VK_RETURN) then
  begin
    if Not(qryProduto.IsEmpty) then
       Localizar(trim(edBuscaDescTrad.Text));
    if trim(edBuscaDescTrad.Text) <> '' then
    begin
      edBuscaDescTrad.SetFocus;
      edBuscaDescTrad.SelLength := 0;
      edBuscaDescTrad.SelStart := Length(trim(edBuscaDescTrad.Text));
    end;
  end;
end;

procedure Tfr_PesquisaProduto.FormCreate(Sender: TObject);
begin
  { combo dos cliente }
  with Cliente do
  begin
    Open;
    while NOT(EOF) do
    begin
       cbClientes.Items.Add(FieldByName('cod_cliente').AsString);
       Next;
    end;
    cbClientes.ItemIndex := 0;

    Close;
  end;
  { combo dos Fornecedores }
  with Fornecedor do
  begin
    Close;

    Open;
    Last;
    dbxFornecedor.KeyValue := 0;
  end;
  { combo de tipo de produto }
  with tipo_produto do
  begin
    Close;
    Open;
    Last;
    dbxTipoProduto.KeyValue := 0;
  end;
end;

procedure Tfr_PesquisaProduto.qryProdutoies_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
         if Sender.Value = 'A' then Text := 'Ativo'
    else if Sender.Value = 'C' then Text := 'Cancelado'
    else if Sender.Value = 'I' then Text := 'Inativo'
end;

procedure Tfr_PesquisaProduto.qryProdutoAfterScroll(DataSet: TDataSet);
Var
  Path : String;
begin
  with Embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := qryProdutocod_produto.AsString;
    Open;
  end;

  { Pesquisar Hist�rico de Compras do Produto }
  with spr_produtos_embarcados do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := trim(qryProdutocod_produto.AsString);
    ParamByName('cod_cliente').AsString := trim(qryProdutocod_cliente.AsString);
    ParamByName('cod_fornecedor').AsInteger := qryProdutocod_fornecedor.AsInteger;
    ParamByName('ano').Clear;
    Open;
  end;

  (* 17.05.16 - mostrar imagem e caminho do arquivo de imagem do produto                                                                          *)
  (*             As imagens ficam na pasta padr�o: Pasta da Empresa Usu�ria + '\PASTA DO CLINETE\PRODUCTS DATABASE\IMAGES\' + CodProduto + '.JPG' *)
  (*                                                                                                                                              *)
  Path := dmCOM.GetFileImageProduto(DataSet.FieldByName('cod_cliente').AsString, DataSet.FieldByName('cod_Produto').AsString);
  Imagem.Hint := Path;

  try
    Imagem.Hint := '';
    Imagem.Picture := nil;
    Imagem.Picture.LoadFromFile(Path);
  except
    Imagem.Hint := '';
    Imagem.Picture := nil;
    Exit;
  end;
end;

procedure Tfr_PesquisaProduto.qryProdutocod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Not(Sender.IsNull) then
     with FmtProdutoCliente(qryProdutocod_cliente.AsString, qryProdutocod_produto.AsString) do
          Text := fmtProduto;
end;

procedure Tfr_PesquisaProduto.cbClientesClick(Sender: TObject);
begin
    { filtrar fornecedores }
    with Fornecedor do
    begin
      SQL.Clear;
      SQL.Add('select cast(''*** TODOS ***'' as char(50)) "raz_social_reduz", cast(0 as smallint) "cod_fornecedor"                     ');
      SQL.Add('from "fornecedor" a                                                                                                     ');
      SQL.Add('union                                                                                                                   ');
      SQL.Add('select cast(a."raz_social_reduz" as char(50)) "raz_social_reduz", cast(a."cod_fornecedor" as smallint) "cod_fornecedor" ');
      SQL.Add('  from "fornecedor" a, "produto" b                                                                                      ');
      SQL.Add('  where                                                                                                                 ');
      SQL.Add('        b."cod_empresa" = :cod_empresa                                                                                  ');
      SQL.Add('    and b."cod_fornecedor" = a."cod_fornecedor"                                                                         ');
      if cbClientes.ItemIndex <> 0 then
      begin
        SQL.Add('    and b."cod_cliente" = :cod_cliente                                                                                  ');
        ParamByName('cod_cliente').AsString := trim(cbClientes.Text);
      end;
      SQL.Add('group by 1,2                                                                                                            ');
      SQL.Add('order by 1                                                                                                              ');

      ParamByName('cod_empresa').Value := vgCod_Empresa;

      Open;
      dbxFornecedor.KeyValue := 0;
    end;
    { filtrar tipos de produtos }
    with tipo_produto do
    begin
      SQL.Clear;
      SQL.Add('select cast(''*** TODOS ***'' as varchar(128)) "den_tip_produto", cast(0 as smallint) "cod_tip_produto"');
      SQL.Add('from "tipo_produto" a');
      SQL.Add('union');
      SQL.Add('select cast(a."den_tip_produto" as varchar(128)) "den_tip_produto", cast(a."cod_tip_produto" as smallint) "cod_tip_produto"');
      SQL.Add('from "tipo_produto"  a');
      if cbClientes.ItemIndex <> 0 then
      begin
        SQL.Add('where exists (select * from "produto" b');
        SQL.Add('               where b."cod_empresa" = :cod_empresa');
        SQL.Add('                 and b."cod_cliente" = :cod_cliente');
        SQL.Add('                 and b."cod_tip_produto" = a."cod_tip_produto")');
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_cliente').AsString := trim(cbClientes.Text);
      end;
      SQL.Add('order by 1');
      Open;
      dbxTipoProduto.KeyValue := 0;
    end;
end;

procedure Tfr_PesquisaProduto.FornecedorAfterOpen(DataSet: TDataSet);
begin
  DataSet.Last;
  DataSet.First;
end;

procedure Tfr_PesquisaProduto.tipo_produtoAfterOpen(DataSet: TDataSet);
begin
  DataSet.Last;
  DataSet.First;
end;

procedure Tfr_PesquisaProduto.dbxFornecedorClick(Sender: TObject);
begin
    { filtrar tipos de produtos }
    with tipo_produto do
    begin
      SQL.Clear;                                           
      SQL.Add('select cast(''*** TODOS ***'' as varchar(128)) "den_tip_produto", cast(0 as smallint) "cod_tip_produto"');
      SQL.Add('from "tipo_produto" a');
      SQL.Add('union');
      SQL.Add('select cast(a."den_tip_produto" as varchar(128)) "den_tip_produto", cast(a."cod_tip_produto" as smallint) "cod_tip_produto"');
      SQL.Add('from "tipo_produto"  a');
      SQL.Add('where 1=1');
      if dbxFornecedor.KeyValue <> 0 then
      begin
        SQL.Add('and exists (select * from "produto" b');
        SQL.Add('               where b."cod_empresa" = :cod_empresa');
        SQL.Add('                 and b."cod_fornecedor" = :cod_fornecedor');
        SQL.Add('                 and b."cod_tip_produto" = a."cod_tip_produto")');
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_fornecedor').AsInteger := dbxFornecedor.KeyValue;
      end;
      if cbClientes.ItemIndex <> 0 then
      begin
        SQL.Add('and exists (select * from "produto" b');
        SQL.Add('               where b."cod_empresa" = :cod_empresa');
        SQL.Add('                 and b."cod_cliente" = :cod_cliente');
        SQL.Add('                 and b."cod_tip_produto" = a."cod_tip_produto")');
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_cliente').AsString := trim(cbClientes.Text);
      end;
      SQL.Add('order by 1');      
      Open;
      dbxTipoProduto.KeyValue := 0;
    end;

end;

procedure Tfr_PesquisaProduto.qryProdutoncm_codGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Not(Sender.IsNull) then Text := FormatarNcm(Sender.AsInteger, qryProdutocod_cliente.AsString, 'D') + qryProdutoncm_letra.AsString;
end;

procedure Tfr_PesquisaProduto.GerarListasExcel;
Var
  Linha : integer;
begin
 { Gerar lista para os combos na planilha excel: Fornecedor, Cliente, Unidade de Medida, Tipo de Produto, LI e INMETRO }

 // Fornecedores

 Linha := 1;

 with fornecedores do
 begin

   Open;
   while not(EOF) do
   begin
     with ExcelWorksheet.Range['AK' + IntToStr(Linha),'AK' + IntToStr(Linha)] do
     begin
       Value := FieldByName('raz_social_reduz').AsString;
     end;
     Next;
     Inc(Linha);
   end;
   Close;
 end;
 ListaCombo.Fornecedores := Linha - 1;

 Linha := 1;

 with clientes do
 begin
   Open;
   while not(EOF) do
   begin
     with ExcelWorksheet.Range['AL' + IntToStr(Linha),'AL' + IntToStr(Linha)] do
     begin
       Value := FieldByName('cod_cliente').AsString;
     end;
     Next;
     Inc(Linha);
   end;
   Close;
 end;
 ListaCombo.Clientes := Linha - 1;

 Linha := 1;

 with unidades_medida do
 begin
   Open;
   while not(EOF) do
   begin
     with ExcelWorksheet.Range['AM' + IntToStr(Linha),'AM' + IntToStr(Linha)] do
     begin
       Value := FieldByName('sigla').AsString;
     end;
     Next;
     Inc(Linha);
   end;
   Close;
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


procedure Tfr_PesquisaProduto.AbrirExcel(Caminho: String; Visivel : boolean = False);
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
      Application.MessageBox('Opera��o cancelada', 'Informa��o', MB_ICONINFORMATION+MB_OK);
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


Procedure Tfr_PesquisaProduto.FecharExcel(FecharTabelas: boolean = True);
begin
  if FecharTabelas then
  begin
    Produtos.Close;
    parametro_comercial.Close;
    fornecedores.Close;
    clientes.Close;
    unidades_medida.Close;
    TipoProduto.Close;
  end;

  { caso esteja fechada, evita fechar novamente para n�o gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
end;

function Tfr_PesquisaProduto.GetPlanilha: String;
begin
  { Retorna a Pasta da Base de Produtos da Empresa / Cliente }
  DIR_PLANILHAS := dmCOM.DirBaseProdutos(CodCliente);

  SaveDialog.InitialDir := DIR_PLANILHAS;
  OpenDialog.InitialDir := DIR_PLANILHAS;
  Result := DIR_PLANILHAS;
end;

procedure Tfr_PesquisaProduto.actGerarExcelExecute(Sender: TObject);
Var
  Linha, i, Altura : Integer;
  CodProduto, k, DirImagem, FileImagem : string;
  sHash, sMD5: WideString;
begin
  { Gerar Excel com os produtos pesquisados }
  { Gerar a planilha de Produtos a partir da planilha modelo registrada no sistema}
  with Produtos do
  begin
    Close;
    SQL.Clear;
    SQL.Text := qryProduto.SQL.Text;
    Params := qryProduto.Params;

    Open;

    if IsEmpty then Exit;

    { retorna o Cliente e o Fornecedor usados na pesquisa }
    CodProduto := trim(qryProdutocod_produto.AsString);
    CodCliente := trim(qryProdutocod_cliente.AsString);
    NomFornecedor := trim(qryProdutolkpFornecedor.AsString);
  end;

  GetPlanilha;

  { Verificar se existe modelo carregado no banco de dados }
  if GetBit(parametro_comercialies_modelo.AsInteger, 3) = 0 then
  begin
    Application.MessageBox('O modelo de planilha para a Importa��o de Produtos n�o foi definido', 'Informa��o', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
  { salvar o modelo da planilha na pasta do usu�rio com o nome escolhido por este }
  if SaveDialog.Execute then
  begin
     PlanilhaExcel := SaveDialog.FileName;
     parametro_comercialmod_cad_produto.SaveToFile(PlanilhaExcel);
  end
  else exit;

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  Application.ProcessMessages;

  Screen.Cursor := crHourGlass;
  AbrirExcel(PlanilhaExcel);

  { Criar Listas apenas na Altera��o }
  if (AcaoMenuP = acmEdit) then GerarListasExcel;

  { Quando chamado do menu "Pesquisar Produtos", excluir os coment�rios das c�lulas }
  if (AcaoMenuP = acmSearch) then
  begin
     ExcelWorksheet.Range['A3','A3'].Comment.Delete;
     ExcelWorksheet.Range['B3','B3'].Comment.Delete;
     ExcelWorksheet.Range['C3','C3'].Comment.Delete;
     ExcelWorksheet.Range['I3','I3'].Comment.Delete;
     ExcelWorksheet.Range['L3','L3'].Comment.Delete;
     ExcelWorksheet.Range['AE3','AE3'].Comment.Delete;
     ExcelWorksheet.Range['AF3','AF3'].Comment.Delete;
  end;


  { Salvar SQL original }
  with Produtos do
  begin
    { Ler todo o Cadastro de Produtos e transf�rir para a planilha }
    Linha := 4;
    while Not(EOF) do
    begin
      {col A - C�digo do Produto }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlCenter;                                              
        VerticalAlignment := xlCenter;
        NumberFormat := '@';
        Value := FmtProdutoCliente(FieldByName('cod_cliente').AsString, FieldByName('cod_produto').AsString).fmtProduto;
        CodProduto := FieldByName('cod_produto').AsString;
        sHash := Text;
        { Quando chamado do menu "Pesquisar Produtos", alterar mostrar apenas o coment�rio sobre as cores do C�digo do Produto }
        if (AcaoMenuP = acmSearch) then
        begin
           AddComment('Cores para o C�digo do Produto (cor da fonte): vermelha indica Licen�a de Importa��o, Azul indica Licenciado pelo INMETRO e Rosa ambos conforme indicado nas colunas AC e AD.');
           Comment.Shape.Height := 60;
           Comment.Shape.Width := 250;
           Comment.Visible := False;
        end;
                                                        
        WrapText := True;
        ShrinkToFit := False;
        //Interior.ColorIndex := 35;
        { Cores para indicar LI e INMETRO }
        if (FieldByName('ncm_lic').AsString = 'S') then
        begin
          Font.ColorIndex := 3;  // Vermelha
          Font.Bold := True;
        end else  if (FieldByName('ncm_imetro').AsString = 'S') then
        begin
          Font.ColorIndex := 5; // Azul
          Font.Bold := True;
        end;
        if (FieldByName('ncm_lic').AsString = 'S') and (FieldByName('ncm_imetro').AsString = 'S') then
        begin
          Font.ColorIndex := 7; // Rosa
          Font.Bold := True;
        end;
      end;
      {col B - Fornecedores }
      with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlCenter;
        Value := GetRazSocialReduz(FieldByName('cod_fornecedor').AsInteger);
        sHash := sHash + Text;
        if (AcaoMenuP = acmEdit) then
        begin
           if (Linha > 4) then
           begin
              AddComment('Clicar na c�lula do fornecedor, para que seja mostrado o combobox e usar a seta para selecionar o Fornecedor da lista.');
              Comment.Shape.Height := 50;
              Comment.Shape.Width := 200;
              Comment.Visible := False;
           end;
           { Combo com Fornecedores }
           with Validation do
           begin
             Delete;
             Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AK1:$AK'+IntToStr(ListaCombo.Fornecedores),'');
             IgnoreBlank := True;
             InCellDropdown := True;
             ShowInput := True;
             ShowError := True;
           end;
        end;
        WrapText := True;
        ShrinkToFit := False;
        ColumnWidth := 20;
      end;

      {col C - Clientes }
      with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlCenter;
        Value := FieldByName('cod_cliente').AsString;
        sHash := sHash + Text;
        if (AcaoMenuP = acmEdit) then
        begin
           if (Linha > 4) then
           begin
              AddComment('Clicar na c�lula do cliente para que seja mostrado o combobox e usar a seta para selecionar o Cliente da lista.');
              Comment.Shape.Height := 50;
              Comment.Shape.Width := 200;
              Comment.Visible := False;
           end;
           { Combo com Clientes }
           with Validation do
           begin
             Delete;
             Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AL1:$AL'+IntToStr(ListaCombo.Clientes),'');
             IgnoreBlank := True;
             InCellDropdown := True;
             ShowInput := True;
             ShowError := True;
           end;
        end;
        WrapText := True;
        ShrinkToFit := False;
        ColumnWidth := 15;
      end;

      { col D - imagem do produto }
      if (cbImages.Checked) then
      begin
        if Altura < 100 then
        begin
           CodProduto := StringReplace(CodProduto, '/', '-', [rfReplaceAll]);
           CodProduto := StringReplace(CodProduto, '\', '-', [rfReplaceAll]);

           fileImagem := dmCOM.GetFileImageProduto(FieldByName('cod_cliente').AsString, CodProduto);

           if FileExists(fileImagem) then
              ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].RowHeight := 100;
        end;

        dirImagem := dmCOM.GetPathImageProduto(FieldByName('cod_cliente').AsString);
        ExcelWorkSheet.Cells.Item[Linha, 4].FormulaR1C1 := '=GetImage("' + CodProduto + '","' + dirImagem + '")';
      end;

      {col E}
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        FormulaR1C1 := '=LEFT(RC[1],100)';
        //Value := FieldByName('den_produto').AsString;
        WrapText := True;
        ShrinkToFit := False;
      end;
      {col F}
      with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := FieldByName('den_produto_detpor').AsString;
        sHash := sHash + Text;
        WrapText := True;
        ShrinkToFit := False;
      end;
      {col G}
      with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        FormulaR1C1 := '=LEFT(RC[1],100)';
        //Value := FieldByName('den_produto_ing').AsString;
        WrapText := True;
        ShrinkToFit := False;
      end;
      {col H}
      with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        Value := FieldByName('den_produto_det').AsString;
        sHash := sHash + Text;
        WrapText := True;
        ShrinkToFit := False;
      end;
      {col I - Tipos de Produtos }
      with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlCenter;
        Value := GetDenTipProduto(FieldByName('cod_tip_produto').AsInteger);
        sHash := sHash + Text;
        if (AcaoMenuP = acmEdit) then
        begin
           if (Linha > 4) then
           begin
              AddComment('Clicar na c�lula do Tipo de Produto, para que seja mostrado o combobox e usar a seta para selecionar o Tipo de Produto da lista.');
              Comment.Shape.Height := 50;
              Comment.Shape.Width := 200;
              Comment.Visible := False;
           end;
           { Combo com Tipo de Produtos }
           with Validation do
           begin
             Delete;
             Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AN1:$AN'+IntToStr(ListaCombo.Tipos),'');
             IgnoreBlank := True;
             InCellDropdown := True;
             ShowInput := True;
             ShowError := True;
           end;
        end;
        WrapText := True;
        ShrinkToFit := False;
        ColumnWidth := 32;
      end;
      {col J}
      with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        NumberFormat := '##0,0000';
        Value := FieldByName('pes_unitario').AsFloat;
        sHash := sHash + Text;
        WrapText := True;
        ShrinkToFit := False;
      end;
      {col K}
      with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Value := FormatDateTime('dd.mm.yy', FieldByName('dat_cad_peso').AsDateTime);
        sHash := sHash +  Text;
        WrapText := True;
        ShrinkToFit := False;
      end;
      {col L - Unidades de Medida }
      with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Value := GetSigla(FieldByName('cod_uni_medida').AsInteger);
        sHash := sHash + Text;
        if (AcaoMenuP = acmEdit) then
        begin
           if (Linha >4) then
           begin
              AddComment('Clicar na c�lula da Unidade para que seja mostrado o combobox e usar a seta para selecionar o Unidade de Medida da lista.');
              Comment.Shape.Height := 50;
              Comment.Shape.Width := 200;
              Comment.Visible := False;
           end;
           { Combo com Unidade de Medida }
           with Validation do
           begin
             Delete;
             Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AM1:$AM'+IntToStr(ListaCombo.Uns),'');
             IgnoreBlank := True;
             InCellDropdown := True;
             ShowInput := True;
             ShowError := True;
           end;
        end;
        WrapText := True;
        ShrinkToFit := False;
        ColumnWidth := 4.14;
      end;
      {col M}
      with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlCenter;
        NumberFormat := '@';
        Value := FormatarNcm(FieldByName('ncm_cod').AsInteger, FieldByName('cod_cliente').AsString, 'D') + FieldByName('ncm_letra').AsString;
        sHash := sHash + Text;
        WrapText := False;
        ShrinkToFit := False;
      end;
      { dados de embalagens }
      with EmbalagemImp do
      begin
        Close;
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('cod_produto').AsString := Produtoscod_produto.AsString;
        Open;

        if Not(IsEmpty) then
        begin
          {col N}
          with ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlCenter;
            NumberFormat := '#0,00';
            Value := FieldByName('profundidade').AsFloat;
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col O}
          with ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlCenter;
            NumberFormat := '#0,00';
            Value := FieldByName('largura').AsFloat;
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col P}
          with ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlCenter;
            NumberFormat := '#0,00';
            Value := FieldByName('altura').AsFloat;
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col Q}
          with ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlCenter;
            NumberFormat := '#0,0000';
            FormulaR1C1 := '=(RC[-3]*RC[-2]*RC[-1])/1000000';
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col R}
          with ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            Value := FormatDateTime('dd.mm.yy', FieldByName('dat_cad_dimensoes').AsDateTime);
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          { col S - Peso Bruto da Caixa de Exporta��o }
          with ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            with dmCOM.CalcEmbalagem(Produtoscod_produto.AsString, Embalagemqtd_master.AsFloat) do
            begin
              Value := PesBrutoCxMaster;
            end;
            NumberFormat := '#.##0,00';
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col T}
          with ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            Value := FormatDateTime('dd.mm.yy', FieldByName('dat_cad_peso').AsDateTime);
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col U}
          with ExcelWorksheet.Range['U' + IntToStr(Linha),'U' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '#.##0,00';
            Value := FieldByName('qtd_master').AsFloat;
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col V}
          with ExcelWorksheet.Range['V' + IntToStr(Linha),'V' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            Value := FormatDateTime('dd.mm.yy', FieldByName('dat_cad_master').AsDateTime);
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col W}
          with ExcelWorksheet.Range['W' + IntToStr(Linha),'W' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '#.##0,00';
            Value := FieldByName('qtd_inner').AsFloat;
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col X}
          with ExcelWorksheet.Range['X' + IntToStr(Linha),'X' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            Value := FormatDateTime('dd.mm.yy', FieldByName('dat_cad_inner').AsDateTime);
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
        end;
      end;
      { obter pre�o do produto }
      with dmCOM.PrecoItem(FieldByName('cod_produto').AsString, FieldByName('cod_cliente').AsString, FieldByName('cod_fornecedor').AsInteger) do
      begin
          { col Y - Pre�o Unit�rio Cliente }
          with ExcelWorksheet.Range['Y' + IntToStr(Linha),'Y' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            if (PrecoItem > 0) then Value := PrecoItem
                               else Value := null;
            NumberFormat := '##.##0,000000';
            WrapText := True;
            ShrinkToFit := False;
            if (Linha > 4) and (AcaoMenuP = acmEdit) then
            begin
               AddComment('Se alterar o Pre�o Unit�rio altere tamb�m as colunas "Observa��es para pre�os" e a "Data do Pre�o" para a importa��o correta dos dados.');
               Comment.Shape.Height := 50;
               Comment.Shape.Width := 250;
               Comment.Visible := False;
            end;
          end;

          { col Z - Pre�o Unit�rio Fornecedor - n�o USADO - coluna em branco }


          { col AA - observa��o pre�o }
          with ExcelWorksheet.Range['AA' + IntToStr(Linha),'AA' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            if (ObsPreco <> '') then Value := ObsPreco
                                else Value := null;

            WrapText := True;
            ShrinkToFit := False;
          end;
          {col  AB - data pre�o }
          with ExcelWorksheet.Range['AB' + IntToStr(Linha),'AB' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            if (DataPreco <> 0) then Value := FormatDateTime('dd.mm.yy', DataPreco)
                                else Value := null;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col AC - percentual Fornecedor }
          with ExcelWorksheet.Range['AC' + IntToStr(Linha),'AC' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '0,00';
            if (Comis_f <> null) then Value := Comis_f
                                 else Value := null;
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
          {col AD - percentual Cliente }
          with ExcelWorksheet.Range['AD' + IntToStr(Linha),'AD' + IntToStr(Linha)] do
          begin
            Font.Size := 9;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            NumberFormat := '0,00';
            if (Comis_c <> null) then Value := Comis_c
                                 else Value := null;
            sHash := sHash + Text;
            WrapText := True;
            ShrinkToFit := False;
          end;
      end;
      {col AE - Licen�a para Importa��o }
      with ExcelWorksheet.Range['AE' + IntToStr(Linha),'AE' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Value := FieldByName('ncm_lic').AsString;
        sHash := sHash + Text;
        if (AcaoMenuP = acmEdit) then
        begin
           if (Linha >4) then
           begin
              AddComment('Clicar na c�lula da Licen�a de Importa��o, para que seja mostrado o combobox e usar a seta para selecionar "S" ou "N" da lista.');
              Comment.Shape.Height := 50;
              Comment.Shape.Width := 250;
              Comment.Visible := False;
           end;
           { Combo Licen�a Importa��o }
           with Validation do
           begin
             Delete;
             Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AO1:$AO2','');
             IgnoreBlank := True;
             InCellDropdown := True;
             ShowInput := True;
             ShowError := True;
           end;
        end;
        WrapText := True;
        ShrinkToFit := False;
        ColumnWidth := 9.14;
      end;
      {col AF - Licenciado pelo INMETRO }
      with ExcelWorksheet.Range['AF' + IntToStr(Linha),'AF' + IntToStr(Linha)] do
      begin
        Font.Size := 9;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Value := FieldByName('ncm_imetro').AsString;
        sHash := sHash + Text;
        if (AcaoMenuP = acmEdit) then
        begin
           if (Linha >4) then
           begin
              AddComment('Clicar na c�lula de Licen�iado pelo INMETRO, para que seja mostrado o combobox e usar a seta para selecionar "S" ou "N" da lista.');
              Comment.Shape.Height := 50;
              Comment.Shape.Width := 250;
              Comment.Visible := False;
           end;
           { Combo Licenciado Pelo INMETRO }
           with Validation do
           begin
             Delete;
             Add(xlValidateList, xlValidAlertStop, xlBetween, '=$AO1:$AO2','');
             IgnoreBlank := True;
             InCellDropdown := True;
             ShowInput := True;
             ShowError := True;
           end;
        end;
        WrapText := True;
        ShrinkToFit := False;
        ColumnWidth := 9.14;
      end;

      Next;
      // Calcular HASH MD5  para cada linha gerada
      if (AcaoMenuP = acmEdit) then
      begin
         with TIdHashMessageDigest5.Create do
         try
            sMD5 := TIdHash128.AsHex(HashValue(sHash));
         finally
            free;
         end;
         {col  AP - HASH MD5 }
         with ExcelWorksheet.Range['AP' + IntToStr(Linha),'AP' + IntToStr(Linha)] do
              Value := sMD5;

// DEBUG
//         with ExcelWorksheet.Range['AX' + IntToStr(Linha),'AX' + IntToStr(Linha)] do
//              Value := sHash;

      end;
      Inc(Linha);
    end;
    Close;
  end;

  // Esconder as colunas de descri��es resumidas
  ExcelWorksheet.Range['E1','E1'].EntireColumn.Hidden := True;
  ExcelWorksheet.Range['G1','G1'].EntireColumn.Hidden := True;
  ExcelWorksheet.Range['AP1','AP1'].EntireColumn.Hidden := True;

  if (cbImages.Checked) then ExcelWorkSheet.Range['D1','D1'].EntireColumn.Hidden := False
                        else ExcelWorkSheet.Range['D1','D1'].EntireColumn.Hidden := True;

  Screen.Cursor := crDefault;
  { salvar a planilha excel }
  //ExcelApplication.ActiveWorkbook.SaveAs(PlanilhaExcel,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  ExcelApplication.ActiveWorkbook.Save(lcid);
  FecharExcel(False);
  { finalizar progress bar }
  Ani.Terminate;

  { Abrir a Planilha }
  if (AcaoMenuP = acmSearch) then
     AbrirExcel(PlanilhaExcel, True);

  ModalResult := mrProcurarExcel;
end;

procedure Tfr_PesquisaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (AcaoMenuP = acmSearch) then
  begin
   // executar somente se for chamado a partir do menu do sistema
   Action := caFree;
   fr_PesquisaProduto := nil;
  end;
end;

procedure Tfr_PesquisaProduto.actAbrirExcelExecute(Sender: TObject);
begin
  ModalResult := mrProcurarExcel;
end;

procedure Tfr_PesquisaProduto.actOpenImagesExecute(Sender: TObject);
Var
  Path: String;
begin
  Path := dmCOM.GetPathImageProduto(trim(qryProdutocod_cliente.AsString));
  ShellExecute(Application.Handle, 'open', PChar(Path), nil, nil, SW_SHOWNORMAL);
end;

procedure Tfr_PesquisaProduto.actOpenPackagesExecute(Sender: TObject);
Var
  Path: String;
begin
  Path := dmCOM.GetPathPackageProduto(trim(qryProdutocod_cliente.AsString), trim(qryProdutocod_produto.AsString));
  ShellExecute(Application.Handle, 'open', PChar(Path), nil, nil, SW_SHOWNORMAL);
end;

procedure Tfr_PesquisaProduto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.Index in [6..7,14]) then
  begin
    TDBGrid(Sender).Canvas.Brush.Color:= 8454143;
    TDBGrid(Sender).Canvas.Font.Color:= clWindowText;
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if (Column.Index in [8..9,15]) then
  begin
    TDBGrid(Sender).Canvas.Brush.Color:= 16744703;
    TDBGrid(Sender).Canvas.Font.Color:= clWindowText;
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

end;

end.
