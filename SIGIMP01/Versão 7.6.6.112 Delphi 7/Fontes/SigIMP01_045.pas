unit SigIMP01_045;

interface

uses
  Windows, SysUtils, Classes, DB, IBCustomDataSet, IBQuery, UnType, Variants, IBSQL,
  StdCtrls, Controls, Forms, Dialogs, Excel2000, OleServer;

const
  ctSit_Inativo: String = 'I';
  ctSit_Normal: String = 'N';
  ctSit_Liberado: String = 'L';
  ctSit_Cancelado: String = 'C';
  ctSit_Devolucao: String = 'D';
  ctSit_Romaneado: String = 'R';
  ctSit_Fechado: String = 'F';

type
   TEmbalagem = record
                 PesoUnitario: double;
                 Volume      : double;
                 Master      : double;
                 Inner       : double;
                end;


   TCalcEmbalagem = record
                      VolCaixas : double;
                      QtdExportBox : integer;
                      QtdMasterBox : double;
                      QtdInnerBox : double;
                      PesLiquido : double;
                      PesBruto : double;
                      PesBrutoCxMaster : double;
                      PesUnitProd : double;
                      PesUnitEmb : double;
                      CaixaFechada : string;
                      Altura : double;
                      Largura : double;
                      Comprimento : double;
                      VolMasterBox : double;
                    end;

   TPrecoItem = record
                  PrecoItem : double;   { preço do item }
                  DataPreco : TDate;    { data do preço }
                  Pedido    : String;   { Pedido do Cliente }
                  Confirmacao: String;  { Confirmação do Pedido }
                  ObsPreco : string;    { Observações sobre o preço }
                  Comis_f  : double;    { % Comissão Fornecedor }
                  Comis_c  : double;    { % Comissão Cliente }
                  Existe   : boolean;   { indicar se encontrou produto }
                end;

   TNotaFiscal = record
                   NumNotaFiscal : Integer;
                   SerieNF : String;
                 end;

   TPedido = record
              Existe : Boolean;
              Numero : Int64;
              DatEmissao : TDate;
              Cliente: String;
              Fornecedor : Integer;
              NomFornecedor: String;
              NumPedidoCli  : String;
              NumPedidoFor  : String;
              fPrecoEsp : boolean;
              DatLiberacao : TDate;
           end;

  TdmCOM = class(TDataModule)
    Embalagem: TIBQuery;
    cby_calc_embalagem: TIBQuery;
    ultimo_pedido_cliente: TIBQuery;
    VerPedido: TIBQuery;
    parametro_comercial: TIBDataSet;
    CheckPedido: TIBQuery;
    CheckNf: TIBQuery;
    Ultimo_Pedido_Produto: TIBQuery;
    Ultimo_Pedido_Produtonum_pedido: TLargeintField;
    Ultimo_Pedido_Produtonum_pedido_for: TIBStringField;
    Ultimo_Pedido_Produtonum_pedido_cli: TIBStringField;
    Ultimo_Pedido_Produtodat_liberacao: TDateField;
    Ultimo_Pedido_Produtovlr_unitario: TFloatField;
    Ultimo_Pedido_Produtoobs_preco: TMemoField;
    ListaGeralCliente: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialcod_vendedor: TSmallintField;
    parametro_comercialcod_transportadora: TSmallintField;
    parametro_comercialcod_moeda: TSmallintField;
    parametro_comercialserie_nf: TIBStringField;
    parametro_comercialdias_atualiza: TSmallintField;
    parametro_comercialano_pedido: TIntegerField;
    parametro_comercialprox_num_pedido: TIntegerField;
    parametro_comercialdias_entrega: TSmallintField;
    parametro_comercialdir_planilhas: TIBStringField;
    parametro_comercialult_num_nf: TIntegerField;
    parametro_comercialult_num_romaneio: TIntegerField;
    parametro_comercialies_modelo: TIntegerField;
    parametro_comercialmod_lista_preco: TBlobField;
    parametro_comercialmod_pedido_imp: TBlobField;
    parametro_comercialmod_romaneio: TBlobField;
    parametro_comercialmod_cad_produto: TBlobField;
    parametro_comercialcod_tip_embarque: TSmallintField;
    Fatura: TIBQuery;
    Faturanum_fatura: TIBStringField;
    tipo_produto_pedido: TIBQuery;
    ncm_pedido: TIBQuery;
    tipo_produto_pedidocod_tip_produto: TSmallintField;
    tipo_produto_pedidoden_tip_produto: TIBStringField;
    tipo_produto_pedidoden_tip_produto_ing: TIBStringField;
    tipo_produto_fatura: TIBQuery;
    ncm_fatura: TIBQuery;
    tipo_produto_faturacod_tip_produto: TSmallintField;
    tipo_produto_faturaden_tip_produto: TIBStringField;
    tipo_produto_faturaden_tip_produto_ing: TIBStringField;
    parametro_comercialseq_rel_lista: TIntegerField;
    parametro_comercialmod_plan_excel: TBlobField;
    parametro_comercialmod_ship_list: TBlobField;
    Nota_Fiscal_Saida: TIBQuery;
    Nota_Fiscal_Saidanum_nota_fiscal: TIntegerField;
    Nota_Fiscal_Saidaserie: TIBStringField;
    VerPedidonum_pedido: TLargeintField;
    VerPedidonum_pedido_cli: TIBStringField;
    VerPedidonum_pedido_for: TIBStringField;
    parametro_comercialdias_inspecao: TSmallintField;
    parametro_comercialmod_plan_alt_ped: TBlobField;
    parametro_comercialmod_plan_alt_fat: TBlobField;
    ncm_pedidoncm_cod: TIntegerField;
    ncm_faturancm_cod: TIntegerField;
    ncm_pedidocod_cliente: TIBStringField;
    ncm_faturacod_cliente: TIBStringField;
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
    parametro_comercialmod_plan_pedido: TBlobField;
    parametro_comercialies_base_comissao: TIBStringField;
    Ultimo_Pedido_Produtoterms_payment: TIBStringField;
    ListaGeralClientenum_lista: TSmallintField;
    ListaGeralClienteden_lista: TIBStringField;
    ListaGeralClientedat_cadastro: TDateField;
    ListaGeralClientevlr_unitario: TFloatField;
    ListaGeralClienteobs_preco: TMemoField;
    ExcelWorkBook: TExcelWorkbook;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    ProdutosHistPreco: TIBQuery;
    ultimos_precos: TIBQuery;
    ultimos_precosdata_preco: TDateField;
    ultimos_precosvlr_unitario: TFloatField;
    ultimos_precosobs_preco: TIBStringField;
    ultimos_precosnumero: TLargeintField;
    ultimos_precosies_origem: TIBStringField;
    ultimos_precosobs: TStringField;
    lista_preco: TIBQuery;
    lista_precoobs_preco: TMemoField;
    PedidoHistPreco: TIBQuery;
    ProdutosHistPrecocod_produto: TIBStringField;
    ProdutosHistPrecocod_cliente: TIBStringField;
    ProdutosHistPrecocod_fornecedor: TSmallintField;
    VerPedidocod_cliente: TIBStringField;
    VerPedidocod_fornecedor: TIntegerField;
    VerPedidoraz_social_reduz: TIBStringField;
    PedidoHistPrecodat_emissao: TDateTimeField;
    PedidoHistPrecoterms_payment: TIBStringField;
    PedidoHistPreconum_pedido_cli: TIBStringField;
    Fornecedor: TIBQuery;
    Fornecedorraz_social_reduz: TIBStringField;
    Cliente: TIBQuery;
    Clientecod_cliente: TIBStringField;
    ultimo_pedido_clientecod_empresa: TSmallintField;
    ultimo_pedido_clientenum_pedido: TLargeintField;
    ultimo_pedido_clienteies_situacao: TIBStringField;
    ultimo_pedido_clienteies_tip_pedido: TIBStringField;
    ultimo_pedido_clienteies_tip_frete: TSmallintField;
    ultimo_pedido_clientedat_emissao: TDateTimeField;
    ultimo_pedido_clientedat_liberacao: TDateField;
    ultimo_pedido_clientedat_faturamento: TDateField;
    ultimo_pedido_clientelogin: TIBStringField;
    ultimo_pedido_clientevlr_frete: TIBBCDField;
    ultimo_pedido_clientecod_cliente: TIBStringField;
    ultimo_pedido_clientecod_vendedor: TSmallintField;
    ultimo_pedido_clientenum_lista: TSmallintField;
    ultimo_pedido_clientecod_moeda: TSmallintField;
    ultimo_pedido_clientedat_cadastro: TDateTimeField;
    ultimo_pedido_clientedat_entrega: TDateField;
    ultimo_pedido_clientevlr_bruto: TIBBCDField;
    ultimo_pedido_clientevlr_liquido: TIBBCDField;
    ultimo_pedido_clientetxt_pedido: TMemoField;
    ultimo_pedido_clientetxt_confirmacao: TMemoField;
    ultimo_pedido_clientecod_banco: TIntegerField;
    ultimo_pedido_clientecod_banco_int: TIntegerField;
    ultimo_pedido_clienteies_pago: TIBStringField;
    ultimo_pedido_clientetexto: TMemoField;
    ultimo_pedido_clientetxt_observacao: TMemoField;
    ultimo_pedido_clientevlr_condicao: TIBBCDField;
    ultimo_pedido_clientevlr_liquido_esp: TIBBCDField;
    ultimo_pedido_clientevlr_bruto_esp: TIBBCDField;
    ultimo_pedido_clientevlr_adicional: TIBBCDField;
    ultimo_pedido_clientevlr_desconto: TIBBCDField;
    ultimo_pedido_clientevlr_adicional_esp: TIBBCDField;
    ultimo_pedido_clientevlr_desconto_esp: TIBBCDField;
    ultimo_pedido_clienteies_pallets: TIBStringField;
    ultimo_pedido_clienteies_preco_esp: TIBStringField;
    ultimo_pedido_clienteies_comissao: TSmallintField;
    ultimo_pedido_clienteies_base_comissao: TIBStringField;
    ultimo_pedido_clienteies_insurance: TIBStringField;
    ultimo_pedido_clienteies_idioma: TIBStringField;
    ultimo_pedido_clienteterms_payment: TIBStringField;
    ultimo_pedido_clientecod_empresa1: TSmallintField;
    ultimo_pedido_clientenum_pedido1: TLargeintField;
    ultimo_pedido_clientenum_pedido_cli: TIBStringField;
    ultimo_pedido_clientenum_pedido_for: TIBStringField;
    ultimo_pedido_clientecod_container: TIntegerField;
    ultimo_pedido_clientecod_fornecedor: TIntegerField;
    ultimo_pedido_clientecod_porto_emb: TIntegerField;
    ultimo_pedido_clientecod_porto_des: TIntegerField;
    ultimo_pedido_clientecod_cond_venda: TIntegerField;
    ultimo_pedido_clientenum_container: TIntegerField;
    ultimo_pedido_clientevol_total: TIBBCDField;
    ultimo_pedido_clienteqtd_caixas: TIntegerField;
    ultimo_pedido_clientepes_liquido: TIBBCDField;
    ultimo_pedido_clientepes_bruto: TIBBCDField;
    ultimo_pedido_clientenum_ref_volume: TIBStringField;
    ultimo_pedido_clientebanco_intermed: TIBStringField;
    ultimo_pedido_clienteswift: TIBStringField;
    ultimo_pedido_clienteqtd_pallets: TIntegerField;
    ultimo_pedido_clientevol_pallets: TIBBCDField;
    ultimo_pedido_clientepes_liq_pallets: TIBBCDField;
    ultimo_pedido_clientepes_bruto_pallets: TIBBCDField;
    ultimo_pedido_clientevol_geral: TIBBCDField;
    ultimo_pedido_clientecxs_outpallet: TIntegerField;
    ultimo_pedido_clientepes_liq_geral: TIBBCDField;
    ultimo_pedido_clientepes_bru_geral: TIBBCDField;
    cby_calc_embalagemvol_caixas: TIBBCDField;
    cby_calc_embalagemqtd_export_box: TIntegerField;
    cby_calc_embalagemqtd_inner_box: TIBBCDField;
    cby_calc_embalagemqtd_master_box: TIBBCDField;
    cby_calc_embalagempes_liquido: TIBBCDField;
    cby_calc_embalagempes_bruto: TIBBCDField;
    cby_calc_embalagempes_bruto_caixa: TIBBCDField;
    cby_calc_embalagempes_unit_prod: TFloatField;
    cby_calc_embalagempes_unit_caixa: TFloatField;
    cby_calc_embalagemcaixa_fechada: TIBStringField;
    cby_calc_embalagemaltura: TIBBCDField;
    cby_calc_embalagemlargura: TIBBCDField;
    cby_calc_embalagemcomprimento: TIBBCDField;
    cby_calc_embalagemvol_master_box: TIBBCDField;
    cby_calc_embalagemobservacao: TIBStringField;
    cby_calc_embalagemdat_cadastro: TDateField;
    cby_calc_embalagemdat_cad_dimensoes: TDateField;
    cby_calc_embalagemdat_cad_peso: TDateField;
    cby_calc_embalagemdat_cad_master: TDateField;
    cby_calc_embalagemdat_cad_inner: TDateField;
    cby_calc_embalagemobs_caixas: TIBStringField;
    ultimo_pedido_clienteseq_filial: TIntegerField;
    parametro_comercialcor_embarque: TSmallintField;
    parametro_comercialmod_plan_shipmarks: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
    procedure parametro_comercialAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    FCod_Cliente: tpCod_Cliente;
    FNom_Cliente: tpNom_Cliente;
    FCNPJ: tpCNPJ;
    FCIes_Situacao: tpIes_Situacao;
    FCNum_Pedido: tpNum_Pedido;
    FCNum_NF: tpNum_NF;

    FNum_Pedido: tpNum_Pedido;
    FPDat_Emissao: tpDat_Emissao;
    FDat_Entrega: tpDat_Entrega;
    FPIes_Situacao: tpIes_Situacao;
    FIes_Tip_Pedido: tpIes_Tip_Pedido;

    FNum_NF: tpNum_NF;
    FSerie: tpSerie;
    FNDat_Emissao: tpDat_Emissao;
    FNIes_Situacao: tpIes_Situacao;

    Ant: String;
  public
    { Public declarations }

    FileName: String;

    function PrecoItem(CodProduto, CodCliente: String; CodFornecedor: Integer; NumLista: Integer=0): TPrecoItem;

    function CaixasMaster(CodProduto: String): TEmbalagem;
    function CalcEmbalagem(CodProduto: String; QtdProduto: double): TCalcEmbalagem;

    function GetPedido(Pedido: String; Tipo: string): TPedido;
    function ProcuraPedido(NumPedido: Int64): TPedido;
    function GerarNumPedido: Int64;
    function ChecarPedido(NumPedido, Tipo: String): boolean;
    function ChecarNF(Numero, Tipo: String): boolean;
    function ProcuraFatura(NumNF: Integer; Serie: String): String;
    function ProcuraNF(NumFatura, CodCliente: String): TNotaFiscal;
    function NumRelLista: Integer;
    function CorEmbarque: integer;
    function DirBaseProdutos(CodCliente: string): String;
    function GetFileImageProduto(CodCliente, CodProduto: String): String;
    function GetPathImageProduto(CodCliente: String): String;
    function GetPathPackageProduto(CodCliente, CodProduto: String): String;

    function IdiomaDescProdutos(idiomaExporter, idiomaImporter: string): string;

    procedure TipoNcmPedido(NumPedido: Int64; Var Sl: TStringList; Show: boolean);
    procedure TipoNcmFatura(Empresa: Integer; NumNotaFiscal: Integer; Serie: String; Sl: TStringList; Show: boolean; Doc: char);

    Procedure AbrirPlanilha(FileName: String);
    Procedure FecharExcel;

    procedure ListaHeader(Ordem: integer);
    procedure ListaItens(Ordem: integer; DatPedido: TDate);
    procedure ExcelHistoricoPrecos(CodCliente: String; CodFornecedor: integer; Ordem: integer; NumPedido: Int64);

    procedure UltimosPrecosProduto(CodProduto, CodCliente: String; DatPedido : TDate);
    procedure ultimos_precosCalcFields(DataSet: TDataSet);
    procedure Localizar(Sender: TObject; Dataset: TDataSet);

    property Cod_Cliente: tpCod_Cliente read FCod_Cliente write FCod_Cliente;
    property Nom_Cliente: tpNom_Cliente read FNom_Cliente write FNom_Cliente;
    property CNPJ: tpCNPJ read FCNPJ write FCNPJ;
    property CIes_Situacao: tpIes_Situacao read FCIes_Situacao write FCIes_Situacao;
    property CNum_Pedido: tpNum_Pedido read FCNum_Pedido write FCNum_Pedido;
    property CNum_NF: tpNum_NF read FCNum_NF write FCNum_NF;

 	  property Num_Pedido: tpNum_Pedido read FNum_Pedido write FNum_Pedido;
    property PDat_Emissao: tpDat_Emissao read FPDat_Emissao write FPDat_Emissao;
    property Dat_Entrega: tpDat_Entrega read FDat_Entrega write FDat_Entrega;
    property PIes_Situacao: tpIes_Situacao read FPIes_Situacao write FPIes_Situacao;
    property Ies_Tip_Pedido: tpIes_Tip_Pedido read FIes_Tip_Pedido write FIes_Tip_Pedido;

    property Num_NF: tpNum_NF read FNum_NF write FNum_NF;
    property Serie: tpSerie read FSerie write FSerie;
    property NDat_Emissao: tpDat_Emissao read FNDat_Emissao write FNDat_Emissao;
    property NIes_Situacao: tpIes_Situacao read FNIes_Situacao write FNIes_Situacao;

  end;

var
  dmCOM: TdmCOM;
  Valor : Double;
  Linha: Integer;

implementation

uses unConnection, SigCAD01_025, Math;

{$R *.dfm}

procedure TdmCOM.DataModuleCreate(Sender: TObject);
begin
   { Abrir Parâmetros Comerciais }
   with dmCOM, parametro_comercial do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     Open;
     { Obtém a Série Default para Notas Fiscais de Saída  }
     vgSerie := FieldByName('serie_nf').AsString;
   end;
end;

function TdmCOM.CaixasMaster(CodProduto: String): TEmbalagem;
begin
  { Retorna Dimensões da Embalagem, e Quantidades do Produto nas caixas }
  { Master e Inner                                                      }
  with Embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := CodProduto;
    Open;
    Result.PesoUnitario := FieldByName('peso_unitario').AsFloat;
    Result.Volume       := FieldByName('volume').AsFloat;
    Result.Master       := FieldByName('qtd_master').AsFloat;
    Result.Inner        := FieldByName('qtd_inner').AsFloat;                
    Close;
  end;
end;
                                                                             

function TdmCOM.CalcEmbalagem(CodProduto: String; QtdProduto: double): TCalcEmbalagem;
begin
  { Realiza o cálculo da embalagem, de acordo com a Quantidade do Produto fornecida }
  { 05.12.16 - Incluído Peso Unitário Bruto do Produto                              }
  { 20.05.21 - Excluído Peso Unitário Bruto do Produto                              }
  with cby_calc_embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := CodProduto;
    ParamByName('qtd_produto').AsFloat := QtdProduto;
    Open;
    Result.VolCaixas        := FieldByname('vol_caixas').AsFloat;
    Result.QtdExportBox     := FieldByName('qtd_export_box').AsInteger;  // qtde master
    Result.QtdMasterBox     := FieldByName('qtd_master_box').AsFloat;  // UN/CX master
    Result.QtdInnerBox      := FieldByName('qtd_inner_box').AsFloat;   // UN/CX inner
    Result.PesLiquido       := FieldByname('pes_liquido').AsFloat;
    Result.PesBruto         := FieldByName('pes_bruto').AsFloat;
    Result.CaixaFechada     := FieldByName('caixa_fechada').AsString;
    Result.PesBrutoCxMaster := FieldByName('pes_bruto_caixa').AsFloat; // Peso Bruto da Caixa Master com a unidade Padrão
    Result.PesUnitProd      := FieldByName('pes_unit_prod').AsFloat; // Peso Unitario do Produto
    Result.PesUnitEmb       := FieldByName('pes_unit_caixa').AsFloat;
    Result.Altura           := FieldByName('altura').AsFloat;   // dimensões da caixa padrão
    Result.Largura          := FieldByName('largura').AsFloat;
    Result.Comprimento      := FieldByName('comprimento').AsFloat;
    Result.VolMasterBox     := FieldByName('vol_master_box').AsFloat;
    Close;
  end;
end;

function TdmCOM.GerarNumPedido: Int64;
Var
  NumPedido : Integer;                                        
  PedidoNovo : Int64;
begin
  { Gerar um novo número de pedido, baseado na tabela paramêtros comerciais }
  { abrir parâmetros comercial }
  repeat
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
    { soma um na sequencia de pedidos }
    Edit;
    NumPedido := parametro_comercialprox_num_pedido.AsInteger;
    parametro_comercialprox_num_pedido.AsInteger := parametro_comercialprox_num_pedido.AsInteger + 1;
    Post;
    PedidoNovo := StrToInt64(FormatFloat('00000000', NumPedido));
    Close;
  end;
  until ProcuraPedido(PedidoNovo).Existe ;
  Result := PedidoNovo;
end;

function TdmCOM.GetPedido(Pedido: String; Tipo: String): TPedido;
begin
  { Procurar número do Pedido do sistema, atráves do Número de Confirmação de Pedido }
  with CheckPedido do
  begin
    Close;
    SQL.Text := 'select b."num_pedido_cli", b."num_pedido_for", a."num_pedido", '+
                '  a."vlr_bruto_esp", a."cod_cliente", b."cod_fornecedor",      '+
                '  a."dat_emissao", a."dat_liberacao"                           '+
                '  from "pedido" a,  "pedido_complemento" b                     '+
                ' where                                                         '+
                '       a."cod_empresa" = :cod_empresa                          ';
                if Tipo = 'P' then
                  SQL.Text := SQL.Text + '   and b."num_pedido_cli" = :num_pedido_cli                    ';
                if Tipo = 'C' then
                  SQL.Text := SQL.Text + '   and b."num_pedido_for" = :num_pedido_for                    ';
    SQL.Text := SQL.Text +  '   and b."cod_empresa" = a."cod_empresa"                       '+
                            '   and b."num_pedido"  = a."num_pedido"                        ';
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    if Tipo = 'P' then
       ParamByName('num_pedido_cli').AsString := trim(Pedido);
    if Tipo = 'C' then
       ParamByName('num_pedido_for').AsString := trim(Pedido);
    Open;
    if Not(IsEmpty) then
    begin
       Result.Existe := True;
       Result.Numero := FieldByname('num_pedido').Value;
       Result.DatEmissao := FieldByName('dat_emissao').AsDateTime;
       Result.NumPedidoCli := trim(FieldByName('num_pedido_cli').AsString);
       Result.NumPedidoFor := trim(FieldByName('num_pedido_for').AsString);
       Result.fPrecoEsp := FieldByName('vlr_bruto_esp').AsFloat > 0; { indica que o Pedido tem preços especiais }
       Result.Cliente := FieldByName('cod_cliente').AsString;
       Result.Fornecedor := FieldByName('cod_fornecedor').AsInteger;
       Result.DatLiberacao := FieldByName('dat_liberacao').AsDateTime;
    end
    else
    begin
       Result.Existe := False;
       Result.Numero := 0;
       Result.DatEmissao := 0;
       Result.NumPedidoCli := '';
       Result.NumPedidoFor := '';
       Result.Cliente := '';
       Result.Fornecedor := 0;
       Result.DatLiberacao := 0;
    end;
    Close;
  end;
end;


function TdmCOM.ProcuraPedido(NumPedido: Int64): TPedido;
begin
  { verificar se um pedido já esta cadastrado }
  with VerPedido do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;
    Open;
    Result.Existe := IsEmpty;
    Result.Numero := VerPedidonum_pedido.AsLargeInt;
    Result.NumPedidoCli := trim(VerPedidonum_pedido_cli.AsString);
    Result.NumPedidoFor := trim(VerPedidonum_pedido_for.AsString);
    Result.Cliente := trim(VerPedidocod_cliente.AsString);
    Result.Fornecedor := VerPedidocod_fornecedor.AsInteger;
    Result.NomFornecedor := trim(VerPedidoraz_social_reduz.AsString);
    Close;
  end;
end;

procedure TdmCOM.parametro_comercialAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
end;

function TdmCOM.ChecarPedido(NumPedido, Tipo: String): boolean;
begin
  if (Tipo = 'C') or (Tipo = 'P') then
  begin
     { Tipo = P Número do Pedido, C Número de Confirmação }
     with CheckPedido do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select b."num_pedido_cli", b."num_pedido_for", a."num_pedido" ');
       SQL.Add('  from "pedido" a,  "pedido_complemento" b                    ');
       SQL.Add('where                                                         ');
       SQL.Add('      a."cod_empresa" = :cod_empresa                          ');
       SQL.Add('  and a."ies_situacao" <> ''C''                               ');
       if Tipo = 'P' then
       SQL.Add('  and b."num_pedido_cli" = :num_pedido');   { pedido }
       if Tipo = 'C' then
       SQL.Add('  and b."num_pedido_for" = :num_pedido');  { confirmação }
       SQL.Add('  and b."cod_empresa" = a."cod_empresa"');
       SQL.Add('  and b."num_pedido"  = a."num_pedido"');
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('num_pedido').AsString := NumPedido;
       Open;
       if IsEmpty then Result := False
                  else Result := True;
       Close;
     end;
  end;
  if (Tipo = 'I') then
  begin
     { Tipo = I = Pedido Importado }
     with CheckPedido do
     begin
       Close;
       SQL.Clear;
       SQL.Add('select "num_pedido_cli" from "imp_ped_cli"');
       SQL.Add(' where "cod_empresa" = :cod_empresa       ');
       SQL.Add('   and "num_pedido_cli" = :num_pedido_cli ');
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('num_pedido_cli').AsString := NumPedido;

       Open;
       if IsEmpty then Result := False
                  else Result := True;
       Close;
     end;
  end;
end;

function TdmCOM.ChecarNF(Numero, Tipo: String): boolean;
begin
  { Tipo = F Fatura, V = Número de Referência de Volume }
  with CheckNf do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select n."num_fatura", n."num_ref_volume"');
    SQL.Add('  from "nf_saida_complemento" n');
    SQL.Add(' where n."cod_empresa" = :cod_empresa');
    if Tipo = 'F' then
    begin
      SQL.Add('   and n."num_fatura" = :num_fatura');
      ParamByName('num_fatura').AsString := Numero;
    end;
    if Tipo = 'V' then
    begin
      SQL.Add('   and n."num_ref_volume" = :num_ref_volume');
      ParamByName('num_ref_volume').AsString := Numero;
    end;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
    if IsEmpty then Result := False
               else Result := True;
    Close;
  end;
end;

function TdmCOM.PrecoItem(CodProduto, CodCliente: String; CodFornecedor: Integer; NumLista: Integer=0): TPrecoItem;
begin
  { 21.06.16 -  Retornar o último preço do produto                                                                       }
  { Obter o Preço da Lista Geral do Cliente e da Última Confirmação de Pedido, retornando aquele que for mais recente    }
  { Não mais retornará preço de Lista de Preços                                                                          }
  { Cotações de Preços serão ignoradas                                                                                   }
  { Os Preços para os pedidos serão agora obtidos de maneira automática, não será mais informado Lista de Preços         }
  Result.DataPreco := 0;
  Result.PrecoItem := 0.00;
  Result.ObsPreco  := '';
  Result.Pedido    := '';
  Result.Confirmacao := '';
  Result.Comis_c := 0.00;
  Result.Comis_f := 0.00;

  { obter comissões do produto }
  with ProcurarProduto(CodProduto, CodCliente, CodFornecedor) do
  begin
    Result.Comis_c := Comis_c;
    Result.Comis_f := Comis_f;
    Result.Existe := Existe;
  end;

  { 21.06.16 - obter preço da Lista Geral de Preços do Cliente }
  with ListaGeralCliente do
  begin
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('cod_cliente').AsString := CodCliente;
      ParamByName('cod_produto').AsString := CodProduto;
      Open;
    end;
  end;

  { última confirmação de pedido do produto }
  with Ultimo_Pedido_Produto do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := CodCliente;
    ParamByName('cod_produto').AsString := CodProduto;
    Open;
  end;

  { verificar qual o preço mais recente }
  if (Ultimo_Pedido_Produtodat_liberacao.AsDateTime >= ListaGeralClientedat_cadastro.AsDateTime) and
     (Ultimo_Pedido_Produtovlr_unitario.AsFloat > 0)  then
  begin
    { retornar o preço da última confirmação de pedido }
    if Not(Ultimo_Pedido_Produto.IsEmpty) then
    begin
      Result.DataPreco    := Ultimo_Pedido_Produtodat_liberacao.AsDateTime;
      Result.PrecoItem    := Ultimo_Pedido_Produtovlr_unitario.AsFloat;
      Result.ObsPreco     := 'PRICE OF ORDER: ' + trim(Ultimo_Pedido_Produtonum_pedido_cli.AsString)
                           + ', S/C: ' + trim(Ultimo_Pedido_Produtonum_pedido_for.AsString) + ', DATED: '
                           + FormatDateTime('DD.MM.YY', Ultimo_Pedido_Produtodat_liberacao.AsDateTime) + '. ' +
                           StringReplace(trim(Ultimo_pedido_Produtoterms_payment.AsString), #13#10, ' ', [rfReplaceAll]);;

      Result.Pedido       := Ultimo_Pedido_Produtonum_pedido_cli.AsString;
      Result.Confirmacao  := Ultimo_Pedido_Produtonum_pedido_for.AsString;
    end;
  end
  else
  begin
    { 21.06.16 - retornar o preço da lista geral do cliente }
    if Not(ListaGeralCliente.IsEmpty) then
    begin
      Result.DataPreco  := ListaGeralClientedat_cadastro.AsDateTime;
      Result.PrecoItem  := ListaGeralClientevlr_unitario.AsFloat;
      Result.ObsPreco  := trim(ListaGeralClienteobs_preco.AsString);
    end;
  end;
  ListaGeralCliente.Close;
  Ultimo_Pedido_Produto.Close;
end;


function TdmCOM.ProcuraFatura(NumNF: Integer; Serie: String): String;
begin
  with Fatura do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := NumNF;
    ParamByName('serie').AsString := Serie;
    Open;
    Result := Faturanum_fatura.AsString;
    Close;
  end;
end;

function TdmCOM.ProcuraNF(NumFatura, CodCliente: String): TNotaFiscal;
begin
  with Nota_Fiscal_Saida do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_fatura').AsString := trim(NumFatura);
    ParamByName('cod_cliente').AsString := trim(CodCliente);
    Open;
    Result.NumNotaFiscal := FieldByName('num_nota_fiscal').AsInteger;
    Result.SerieNF := FieldByName('serie').AsString;
    Close;
  end;
end;

procedure TdmCOM.TipoNcmPedido(NumPedido: Int64; Var Sl: TStringList; Show: Boolean);
Var
  n : String;
begin
  with tipo_produto_pedido do
  begin
    Close;
    ParamByName('cod_empresa').value := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;
    Open;
    n := '';
    while Not(EOF) do
    begin
      n := n + tipo_produto_pedidoden_tip_produto.AsString + ' / ' + tipo_produto_pedidoden_tip_produto_ing.AsString;

      if (Show) then
      begin
         n := n + ' (NCM ';
         with ncm_pedido do
         begin
           Close;
           ParamByName('cod_empresa').value := vgCod_Empresa;
           ParamByName('num_pedido').Value := NumPedido;
           ParamByName('cod_tip_produto').Value := tipo_produto_pedidocod_tip_produto.AsInteger;
           Open;
           while Not(EOF) do
           begin
             n := n + FormatarNcm(ncm_pedidoncm_cod.AsInteger, ncm_pedidocod_cliente.AsString, 'P');
             Next;
             if Not(EOF) then n := n + ', ';
           end;
           n := n + ')';
           Close;
         end;
      end;
      Next;
      //if Not(EOF) then n := n + ', ';
      Sl.Add(n);
      n := '';
    end;
    //n := n + '.';
    Close;
  end;
end;

procedure TdmCOM.TipoNcmFatura(Empresa: Integer; NumNotaFiscal: Integer; Serie: String; Sl: TStringList; Show: Boolean; Doc: char);
Var
  n : String;
begin
  with tipo_produto_fatura do
  begin
    Close;
    ParamByName('cod_empresa').value := Empresa;
    ParamByName('num_nota_fiscal').Value := NumNotaFiscal;
    ParamByName('serie').Value := Serie;
    Open;
    n := '';
    while Not(EOF) do
    begin
      n := n + tipo_produto_faturaden_tip_produto.AsString + ' / ' + tipo_produto_faturaden_tip_produto_ing.AsString;

      if (Show) then
      begin
         n := n + ' (NCM ';
         with ncm_fatura do
         begin
           Close;
           ParamByName('cod_empresa').value := Empresa;
           ParamByName('num_nota_fiscal').Value := NumNotaFiscal;
           ParamByName('serie').Value := Serie;
           ParamByName('cod_tip_produto').Value := tipo_produto_faturacod_tip_produto.AsInteger;
           Open;
           while Not(EOF) do
           begin
             n := n + FormatarNcm(ncm_faturancm_cod.AsInteger, ncm_faturacod_cliente.AsString, Doc);
             Next;
             if Not(EOF) then n := n + ', ';
           end;
           n := n + ')';
           Close;
         end;
      end;
      Next;
      //if Not(EOF) then n := n + ', ';
      Sl.Add(n);
      n := '';
    end;
    //n := n + '.';
    Close;
  end;
end;

function TdmCOM.NumRelLista: Integer;
begin
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
    Result := FieldByName('seq_rel_lista').AsInteger;
    Edit;
    FieldByName('seq_rel_lista').AsInteger := FieldByName('seq_rel_lista').AsInteger + 1;
    Post;
    Close;
  end;
end;

function TdmCOM.CorEmbarque: Integer;
begin
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
    Result := FieldByName('cor_embarque').AsInteger + 1;
    if (Result > 17) then Result := 1;
    Edit;
    FieldByName('cor_embarque').AsInteger := Result;
    Post;
    Close;
  end;
end;


{ Retorna a Pasta da Base de Produtos da Empresa / Cliente }
function TdmCOM.DirBaseProdutos(CodCliente: String): String;
Var
  DIR_PLANILHAS: String;
begin
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    Open;
    DIR_PLANILHAS := trim(FieldByName('dir_planilhas').AsString);
    Close;
  end;

  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(CodCliente);
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\PRODUCTS DATABASE';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  Result := DIR_PLANILHAS;
end;


{ Retorna o arquivo onde se encontra as imagens dos produtos }
function TdmCOM.GetFileImageProduto(CodCliente, CodProduto: String): String;
Var
  Path: string;
begin
  Path := DirBaseProdutos(CodCliente);
  // Se pasta de imagens não existir, criar a mesma.
  if not DirectoryExists(Path + '\IMAGES') then
     if not CreateDir(Path + '\IMAGES') then
        raise Exception.Create('Não foi possível criar ' + Path + '\IMAGES');


  CodProduto := StringReplace(CodProduto, '/', '-', [rfReplaceAll]);
  CodProduto := StringReplace(CodProduto, '\', '-', [rfReplaceAll]);

  Path := Path + '\IMAGES\' + Trim(CodProduto);

  if FileExists(Path + '.JPG') then
  begin
     Result := Path + '.JPG';
     Exit;
  end;

  if FileExists(Path + '.BMP') then
  begin
     Result := Path + '.BMP';
     Exit;
  end;
end;

{ Retorna o caminho da pasta das imagens dos produtos }
function TdmCOM.GetPathImageProduto(CodCliente: String): String;
Var
  Path: string;
begin
  Path := DirBaseProdutos(CodCliente);
  // Se pasta de imagens não existir, criar a mesma.
  if not DirectoryExists(Path + '\IMAGES') then
     if not CreateDir(Path + '\IMAGES') then
        raise Exception.Create('Não foi possível criar ' + Path + '\IMAGES');

  Result := Path + '\IMAGES\'; // Retorna apenas o caminho
end;

{ Retornar o caminho da pasta de Embalagens dos produtos }
function TdmCOM.GetPathPackageProduto(CodCliente, CodProduto: string): string;
Var
   Path: string;
begin
  Path := DirBaseProdutos(CodCliente) + '\PACKINGS';
  // Se pasta de embalagens não existir, criar a mesma.
  if not DirectoryExists(Path) then
     if not CreateDir(Path) then
        raise Exception.Create('Não foi possível criar ' + Path + '\PACKINGS');

  CodProduto := StringReplace(CodProduto, '/', '-', [rfReplaceAll]);
  CodProduto := StringReplace(CodProduto, '\', '-', [rfReplaceAll]);

  Path := Path + '\' + trim(CodProduto);

  if not DirectoryExists(Path) then
     if not CreateDir(Path) then
        raise Exception.Create('Não foi possível criar ' + Path);

  Result := Path;
end;

{ Retornar a descrição dos idiomas usados nas descrições dos produtos do cliente nas shipping marks }
function TdmCOM.IdiomaDescProdutos(idiomaExporter, idiomaImporter: string): string;
begin
  { idiomaImporter = Idioma para Descrição dos Produtos do Cliente }
  if (idiomaExporter = 'I') then
  begin
    if (idiomaImporter = 'I') then Result := 'ENGLISH';
    if (idiomaImporter = 'P') then Result := 'PORTUGUESE';
    if (idiomaImporter = 'E') then Result := 'SPANISH';
  end;

  if (idiomaExporter = 'P') then
  begin
    if (idiomaImporter = 'I') then Result := 'INGLÊS';
    if (idiomaImporter = 'P') then Result := 'PORTUGUÊS';
    if (idiomaImporter = 'E') then Result := 'ESPANHOL';
  end;

  if (idiomaExporter = 'E') then
  begin
    if (idiomaImporter = 'I') then Result := 'INGLÉS';
    if (idiomaImporter = 'P') then Result := 'PORTUGUÉS';
    if (idiomaImporter = 'E') then Result := 'ESPAÑOL';
  end;

end;


Procedure TdmCOM.AbrirPlanilha(FileName: String);
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

Procedure TdmCOM.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then
     Exit;

  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
end;

procedure TdmCOM.ListaHeader(Ordem: integer);
var
  LinhaAux : integer;
begin
  { Gerar cabeçalho da Histórico de Compras }
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
   begin
    if Ordem = 1 then
       Value := 'HISTÓRICO DE PREÇOS DOS PRODUTOS - ' + Clientecod_cliente.AsString + ' / ' + Fornecedorraz_social_reduz.AsString
    else
       Value := 'PRODUCTS PRICE HISTORY - ' + Clientecod_cliente.AsString + ' / ' + Fornecedorraz_social_reduz.AsString;
    Font.Bold := True;
    Font.Size := 9;
    MergeCells := True;
    Interior.ColorIndex := 35;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
   end;
  { Cabeçalho dos Produtos }
   with ExcelWorkSheet.Range['D' + IntToStr(Linha),'F' + IntToStr(Linha)] do
   begin
    if Ordem = 1 then
       Value := 'ÚLTIMO PREÇO'
    else
       Value := 'LAST PRICE';
    Font.Name := 'Arial';
    Font.Bold := True;
    Font.Size := 8;
    MergeCells := True;
    Interior.Pattern := xlSolid;
    Interior.ColorIndex := 4;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlBottom;
    WrapText := True;
    ShrinkToFit := False;
   end;
   with ExcelWorkSheet.Range['G' + IntToStr(Linha),'I' + IntToStr(Linha)] do
   begin
    if Ordem = 1 then
       Value := 'PREÇO ANTERIOR'
    else
       Value := 'PREVIOUS PRICE';
    Font.Name := 'Arial';
    Font.Bold := True;
    Font.Size := 8;
    MergeCells := True;
    Interior.Pattern := xlSolid;
    Interior.ColorIndex := 6;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlBottom;
    WrapText := True;
    ShrinkToFit := False;
   end;
   with ExcelWorkSheet.Range['J' + IntToStr(Linha),'L' + IntToStr(Linha)] do
   begin
    if Ordem = 1 then
       Value := 'PREÇO ANTERIOR'
    else
       Value := 'PREVIOUS PRICE';
    Font.Name := 'Arial';
    Font.Bold := True;
    Font.Size := 8;
    MergeCells := True;
    Interior.Pattern := xlSolid;
    Interior.ColorIndex := 8;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlBottom;
    WrapText := True;
    ShrinkToFit := False;
   end;
   with ExcelWorkSheet.Range['M' + IntToStr(Linha),'O' + IntToStr(Linha)] do
   begin
    if Ordem = 1 then
       Value := 'PREÇO ANTERIOR'
    else
       Value := 'PREVIOUS PRICE';
    Font.Name := 'Arial';
    Font.Bold := True;
    Font.Size := 8;
    MergeCells := True;
    Interior.Pattern := xlSolid;
    Interior.ColorIndex := 45;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlBottom;
    WrapText := True;
    ShrinkToFit := False;
   end;
  Linha := Linha + 1;
  LinhaAux := Linha;

  { português }
  if Ordem = 1 then
  begin
    ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'FORNECEDOR';
    ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'PRODUTO';
    ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'DESCRIÇÃO';
    ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'DATA PREÇO';
    ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'PREÇO EM US$';
    ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'OBSERVAÇÕES';
    ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'PREÇO ANTERIOR EM US$';
    ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'OBSERVAÇÕES';
    ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'VARIAÇÃO DE PREÇO(%)';
    ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'PREÇO ANTERIOR EM US$';
    ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'OBSERVAÇÕES';
    ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'VARIAÇÃO DE PREÇO(%)';
    ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'PREÇO ANTERIOR EM US$';
    ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'OBSERVAÇÕES';
    ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'VARIAÇÃO DE PREÇO(%)';
  end;
  { inglês }
  if Ordem = 0 then
  begin
    ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SUPPLYER';
    ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'CODE ITEM';
    ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'DESCRIPTION';
    ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'PRICE DATE';
    ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'PRICE IN US$';
    ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'COMMENTS';
    ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'PREVIOUS PRICE IN US$';
    ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'COMMENTS';
    ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'VARIATION OF PRICE(%)';
    ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'PREVIOUS PRICE IN US$';
    ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'COMMENTS';
    ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'VARIATION OF PRICE(%)';
    ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'PREVIOUS PRICE IN US$';
    ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'COMMENTS';
    ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'VARIATION OF PRICE(%)';
  end;
  { Tamanho das colunas }
  ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 25.00;
  ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 13.00;
  ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 40.00;
  ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 06.29;
  ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 09.86;
  ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 20.14;
  ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 09.86;
  ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ColumnWidth := 20.14;
  ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ColumnWidth := 08.43;
  ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].ColumnWidth := 09.86;
  ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ColumnWidth := 20.14;
  ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ColumnWidth := 08.43;
  ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].ColumnWidth := 09.86;
  ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].ColumnWidth := 20.14;
  ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].ColumnWidth := 08.43;

  { formatação cabeçalho dos items }
  with ExcelWorkSheet.Range['A' + IntToStr(LinhaAux),'C' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 14;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  with ExcelWorkSheet.Range['D' + IntToStr(LinhaAux),'F' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 4;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  with ExcelWorkSheet.Range['G' + IntToStr(LinhaAux),'H' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 6;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  with ExcelWorkSheet.Range['I' + IntToStr(LinhaAux),'I' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 3;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  with ExcelWorkSheet.Range['J' + IntToStr(LinhaAux),'K' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 8;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  with ExcelWorkSheet.Range['L' + IntToStr(LinhaAux),'L' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 3;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  with ExcelWorkSheet.Range['M' + IntToStr(LinhaAux),'N' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 45;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  with ExcelWorkSheet.Range['O' + IntToStr(LinhaAux),'O' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 3;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  Linha := 3;
end;

procedure TdmCOM.ListaItens(Ordem: integer; DatPedido: TDate);
Var
  obs : string;
  s, s1, s2 : string;
  Seq : Integer;
  p1, p2, v : Double;
begin
  { Gerar o histórico de Preços dos Produtos }
  Seq := 1;
  with ProdutosHistPreco do
  begin
    while Not(EOF) do
    begin
      with Fornecedor do
      begin
        Close;
        ParamByName('cod_fornecedor').Value := ProdutosHistPrecocod_fornecedor.AsInteger;
        Open;
      end;

      { A - Sequencia }
      ExcelWorkSheet.Cells.Item[Linha, 1].Value := trim(Fornecedorraz_social_reduz.AsString);
      { B - Código do Produto }
      ExcelWorkSheet.Cells.Item[Linha, 2].NumberFormat := '@';
      ExcelWorkSheet.Cells.Item[Linha, 2].FormulaR1C1 := FmtProdutoCliente(FieldByName('cod_cliente').AsString, FieldByName('cod_produto').AsString).fmtProduto;
      { C - Descrição do Produto }
      with ProdutoDet(FieldByName('cod_produto').AsString, FieldByName('cod_cliente').AsString, FieldByName('cod_fornecedor').AsInteger) do
      begin
          s1 := Ingles;
          s2 := Portugues;
          if s1[Length(s1)] <> '.' then
             s1 := s1 + '.';

        if Ordem = 0 then
        begin
          if s1[Length(s1)] <> '.' then
             s1 := s1 + '.';
          s := s1 + ' ' + S2 + '. ('+Grupo + ', NCM: ' + Ncm + ')';
          ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].FormulaR1C1 := s;
          with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[1,Length(s1)].Font do
          begin
            Size := 08;
            Bold := True;
            Name := 'Arial';
          end;
          with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[Length(s1)+1,Length(s)].Font do
          begin
            Size := 08;
            Bold := False;
            Name := 'Arial';
          end;
        end;
        if Ordem = 1 then
        begin
          if s2[Length(s2)] <> '.' then
             s2 := s2 + '.';
          s := s2 + ' ' + S1 + '. ('+Grupo + ', NCM: ' + Ncm + ')';
          ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].FormulaR1C1 := s;
          with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[1,Length(s2)].Font do
          begin
            Size := 08;
            Bold := True;
            Name := 'Arial';
          end;
          with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[Length(s2)+1,Length(s)].Font do
          begin
            Size := 08;
            Bold := False;
            Name := 'Arial';
          end;
        end;
      end;
      { OBTER ÚLTIMOS PREÇOS DOS PRODUTOS }
      UltimosPrecosProduto(FieldByName('cod_produto').AsString, FieldByName('cod_cliente').AsString, DatPedido);
      obs := '';
      if Not(ultimos_precos.IsEmpty) then
      begin
        ExcelWorkSheet.Cells.Item[Linha, 3].WrapText := True;
        ExcelWorkSheet.Cells.Item[Linha, 3].ShrinkToFit := False;
        {D - Data Preço }
        ExcelWorkSheet.Cells.Item[Linha, 4].FormulaR1C1 := FormatDateTime('DD.MM.YY', ultimos_precos.FieldByName('data_preco').AsDateTime);
        {E - Preço atual do produto }
        ExcelWorkSheet.Cells.Item[Linha, 5].NumberFormat := '#.##0,000000';
        ExcelWorkSheet.Cells.Item[Linha, 5].Value := ultimos_precos.FieldByName('vlr_unitario').AsFloat;
        p1 := ultimos_precos.FieldByName('vlr_unitario').AsFloat;
        {F - Observação }
        obs := ultimos_precos.FieldByName('obs_preco').AsString + 'DATED : ' + FormatDateTime('DD.MM.YY', ultimos_precos.FieldByName('data_preco').AsDateTime) + '. ' + ultimos_precosobs.AsString;
        ExcelWorkSheet.Cells.Item[Linha, 6].Value := StringReplace(trim(obs), #13#10, ' ', [rfReplaceAll]);
        ExcelWorkSheet.Cells.Item[Linha, 6].WrapText := True;
        ExcelWorkSheet.Cells.Item[Linha, 6].ShrinkToFit := False;
        ultimos_precos.Next;
        {G - Preço Anterior}
        if Not(ultimos_precos.Eof) then
        begin
          ExcelWorkSheet.Cells.Item[Linha, 7].NumberFormat := '#.##0,000000';
          ExcelWorkSheet.Cells.Item[Linha, 7].Value := ultimos_precos.FieldByName('vlr_unitario').AsFloat;
          p2 := ultimos_precos.FieldByName('vlr_unitario').AsFloat;
          { calcular variação do preço }
          try
            v := ((p1/p2)-1);
          except
            v := 0.00;
          end;
          {H - Observação Preço Anterior }
          obs := ultimos_precos.FieldByName('obs_preco').AsString + 'DATED : ' + FormatDateTime('DD.MM.YY', ultimos_precos.FieldByName('data_preco').AsDateTime) + '. ' + ultimos_precosobs.AsString;
          ExcelWorkSheet.Cells.Item[Linha, 8].Value := StringReplace(trim(obs), #13#10, ' ', [rfReplaceAll]);
          ExcelWorkSheet.Cells.Item[Linha, 8].WrapText := True;
          ExcelWorkSheet.Cells.Item[Linha, 8].ShrinkToFit := False;
          {I - Percentual de Variação do Preço }
          ExcelWorkSheet.Cells.Item[Linha, 9].NumberFormat := '0,00%';
          ExcelWorkSheet.Cells.Item[Linha, 9].Value := v;

          { Penultima Confirmação }
          ultimos_precos.Next;
        end;
        {J - Preço Anterior}
        if Not(ultimos_precos.Eof) then
        begin
          ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '#.##0,000000';
          ExcelWorkSheet.Cells.Item[Linha, 10].Value := ultimos_precos.FieldByName('vlr_unitario').AsFloat;
          p1 := p2;
          p2 := ultimos_precos.FieldByName('vlr_unitario').AsFloat;
          { calcular variação do preço }
          try
            v := ((p1/p2)-1);
          except
            v := 0.00;
          end;
          {K - Observação Preço Anterior }
          obs := ultimos_precos.FieldByName('obs_preco').AsString + 'DATED : ' + FormatDateTime('DD.MM.YY', ultimos_precos.FieldByName('data_preco').AsDateTime) + '. ' + ultimos_precosobs.AsString;
          ExcelWorkSheet.Cells.Item[Linha, 11].Value := StringReplace(trim(obs), #13#10, ' ', [rfReplaceAll]);
          ExcelWorkSheet.Cells.Item[Linha, 11].WrapText := True;
          ExcelWorkSheet.Cells.Item[Linha, 11].ShrinkToFit := False;
          {L - Percentual de Variação do Preço }
          ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '0,00%';
          ExcelWorkSheet.Cells.Item[Linha, 12].Value := v;

          { Penultima Confirmação }
          ultimos_precos.Next;
        end;
        if Not(ultimos_precos.Eof) then
        begin
          p1 := p2;
          p2 := ultimos_precos.FieldByName('vlr_unitario').AsFloat;

          { calcular variação do preço }
          try
            v := ((p1/p2)-1);
          except
            v := 0.00;
          end;

          {M - Penúltimo Preço - Coluna escondida }
          ExcelWorkSheet.Cells.Item[Linha, 13].NumberFormat := '#.##0,000000';
          ExcelWorkSheet.Cells.Item[Linha, 13].Value := ultimos_precos.FieldByName('vlr_unitario').AsFloat;
          {N - Observação Penúltimo Preço }
          ExcelWorkSheet.Cells.Item[Linha, 14].Value := ultimos_precos.FieldByName('obs_preco').AsString + 'DATED : ' + FormatDateTime('DD.MM.YY', ultimos_precos.FieldByName('data_preco').AsDateTime);
          ExcelWorkSheet.Cells.Item[Linha, 14].WrapText := True;
          ExcelWorkSheet.Cells.Item[Linha, 14].ShrinkToFit := False;
          {O - Percentual de Variação do Preço }
          ExcelWorkSheet.Cells.Item[Linha, 15].NumberFormat := '0,00%';
          ExcelWorkSheet.Cells.Item[Linha, 15].Value := v;
        end;
      end;

      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'O' + IntToStr(Linha)] do
      begin
         Font.Name := 'Arial';
         Font.Size := 8;
      end;

      Inc(Linha);
      Inc(Seq);
      Next;
    end;
  end;

  {bordas desde o cabeçalho até ultima linha}
  with ExcelWorkSheet.Range['A3','C' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
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
  end;
  with ExcelWorkSheet.Range['D3','F' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
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
  end;
  with ExcelWorkSheet.Range['G3','I' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
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
  end;
  with ExcelWorkSheet.Range['J3','L' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
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
  end;
  with ExcelWorkSheet.Range['M3','O' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
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
  end;
end;


procedure TdmCOM.ExcelHistoricoPrecos(CodCliente: String; CodFornecedor: integer; Ordem: Integer; NumPedido: Int64);
Var
  Lista, DIR_PLANILHAS, PED: String;

begin
   if (NumPedido > 0) then
   begin
      with Fornecedor do
      begin
         Close;
         ParamByName('cod_fornecedor').Value := CodFornecedor;
         Open;
      end;
   end;

   with Cliente do
   begin
     Close;
     ParamByName('cod_cliente').Value := CodCliente;
     Open;
   end;

   { se foi chamado da tela de Pedidos }
   if (NumPedido > 0) then
   begin
      with PedidoHistPreco do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('num_pedido').Value := NumPedido;
        Open;
      end;
   end;

   { Gerar a Lista de preços em Excel }
   ExcelApplication.Connect;
   { Pasta onde será gravada a Planilha Excel do Cliente  }
   with parametro_comercial do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     Open;
     DIR_PLANILHAS := FieldByName('dir_planilhas').AsString;
     Close;
   end;
   if trim(DIR_PLANILHAS) = '' then
   begin
     Application.MessageBox('Pasta para planilhas do Cliente, não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
     Abort;
   end;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { diretório para planilhas, mais subpasta com código do cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(Clientecod_cliente.AsString);

   { se o diretório de planilhas do cliente não existe, tenta criar o diretório }
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { diretório da planilha de acordo com a chamada }
   if (NumPedido = 0) then DIR_PLANILHAS := DIR_PLANILHAS + '\HISTORY PRICES';
   if (NumPedido > 0) then begin
      DIR_PLANILHAS := DIR_PLANILHAS + '\ORDERS';
      { Criar a Pasta com o mesmo nome do Número do Pedido }
      PED := trim(PedidoHistPreconum_pedido_cli.AsString);
      PED := StringReplace(ped, '/', '-', [rfReplaceAll]);
      PED := StringReplace(ped, '\', '-', [rfReplaceAll]);
      DIR_PLANILHAS := DIR_PLANILHAS + '\' + 'ORDER ' + PED;
   end;

   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { a planilha gerada terá como nome, o Nome do Cliente + Razão Social do Fornecedor }
   if (NumPedido > 0) then Lista := ClienteCod_Cliente.AsString + ' - ' + Fornecedorraz_social_reduz.AsString
                      else Lista := ClienteCod_Cliente.AsString;

   if Ordem = 0 then
      Lista := Lista + ' - HISTORY PRICES-ENG'
   else
      Lista := Lista + ' - HISTORY PRICES-POR';

   Lista := StringReplace(Lista, '/', '-', [rfReplaceAll]);
   Lista := StringReplace(Lista, '\', '-', [rfReplaceAll]);

   FileName := DIR_PLANILHAS + '\' + trim(Lista) + ' - ' + FormatDateTime('dd.mm.yy', DataHoraServidor) + '.xls';

   { Não exibir a planilha enquanto cria }
   ExcelApplication.Visible[0] := False;
   ExcelApplication.DisplayAlerts[0] := False;

   ExcelWorkbook.ConnectTo(ExcelApplication.Workbooks.Add(xlWBATWorksheet, GetUserDefaultLCID));
   ExcelWorksheet.ConnectTo(ExcelWorkbook.Worksheets[1] as _Worksheet);

   { Página da planilha }
   ExcelWorkSheet.Name := 'History Prices';

   Linha := 1;
   { Cabeçalho da lista }
   ListaHeader(Ordem);
   { Gerar Itens no Excel }
   if (NumPedido > 0) then ListaItens(Ordem, PedidoHistPrecodat_emissao.Value);
   if (NumPedido = 0) then ListaItens(Ordem, DataHoraServidor);
   { Congelar Painéis }
   ExcelWorkSheet.Range['D3','D3'].Select;
   ExcelApplication.ActiveWindow.FreezePanes := True;

   if (NumPedido > 0) then ExcelWorksheet.Range['A1','A1'].EntireColumn.Hidden := True;

   { ajustar propriedades para impressão da página de condições }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$L$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$2';
     PrintTitleColumns := '';
     CenterFooter := 'Página &P de &N';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := '';
     LeftFooter := '';
     LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     RightMargin := 0;
     TopMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     BottomMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     HeaderMargin := 0;
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

   { Salvar a planilha }
   ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);

   { Fechar planilha e encerrar excel }
   ExcelApplication.Quit;
   ExcelApplication.Disconnect;


   Fornecedor.Close;
   Cliente.Close;
   ProdutosHistPreco.Close;
   lista_preco.Close;
   ultimos_precos.Close;
   PedidoHistPreco.Close;
end;


procedure TdmCOM.UltimosPrecosProduto(CodProduto, CodCliente: String; DatPedido : TDate);
begin
  { última confirmação de pedido do produto }
  with ultimos_precos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select c."dat_cadastro" "data_preco", c."vlr_unitario" "vlr_unitario",                                                    ');
    SQL.Add('CAST(''LISTA INICIAL : '' || rtrim(b."den_lista") AS CHAR(100)) "obs_preco", cast(c."num_lista" as numeric(12,0)) "numero", ');
    SQL.Add('''G'' "ies_origem"                                                                                                        ');
    SQL.Add('from "lista" b, "lista_preco" c                                                                                           ');
    SQL.Add('where                                                                                                                     ');
    SQL.Add('      b."cod_empresa" = :cod_empresa1                                                                                     ');
    SQL.Add('  and b."cod_cliente" = :cod_cliente1                                                                                     ');
    SQL.Add('  and c."cod_empresa" = b."cod_empresa"                                                                                   ');
    SQL.Add('  and c."num_lista" = b."num_lista"                                                                                       ');
    SQL.Add('  and c."cod_produto" = :cod_produto1                                                                                     ');
    SQL.Add('  and b."ies_tip_lista" = ''G''                                                                                           ');
    SQL.Add('  and b."ies_situacao" = ''A''                                                                                            ');
    if (DatPedido > 0) then
        SQL.Add('  and c."dat_cadastro" <= :dat_pedido');
    SQL.Add('union all                                                                                                                 ');
    SQL.Add('select c."dat_cadastro" "data_preco", c."vlr_unitario" "vlr_unitario",                                                    ');
    SQL.Add('CAST(''COTAÇÃO : '' || rtrim(b."den_lista") AS CHAR(100)) "obs_preco", cast(c."num_lista" as numeric(12,0)) "numero",     ');
    SQL.Add('''C'' "ies_origem"                                                                                                        ');
    SQL.Add('from "lista" b, "lista_preco" c                                                                                           ');
    SQL.Add('where                                                                                                                     ');
    SQL.Add('      b."cod_empresa" = :cod_empresa2                                                                                     ');
    SQL.Add('  and b."cod_cliente" = :cod_cliente2                                                                                     ');
    SQL.Add('  and c."cod_empresa" = b."cod_empresa"                                                                                   ');
    SQL.Add('  and c."num_lista" = b."num_lista"                                                                                       ');
    SQL.Add('  and c."cod_produto" = :cod_produto2                                                                                     ');
    SQL.Add('  and b."ies_tip_lista" = ''C''                                                                                           ');
    SQL.Add('  and b."ies_situacao" = ''A''                                                                                            ');
    if (DatPedido > 0) then
        SQL.Add('  and c."dat_cadastro" <= :dat_pedido');
    SQL.Add('union all                                                                                                                      ');
    SQL.Add('select a."dat_liberacao" "data_preco", b."vlr_unitario" "vlr_unitario",                                                        ');
    SQL.Add('CAST(''PRICE OF ORDER : '' || rtrim(c."num_pedido_cli") || '', S/C: '' || ltrim(c."num_pedido_for") AS CHAR(100)) "obs_preco", ');
    SQL.Add('a."num_pedido" "numero",                                                                                                       ');
    SQL.Add('''P'' "ies_origem"                                                                                                             ');
    SQL.Add('from "pedido" a, "pedido_produto" b, "pedido_complemento" c                                                                    ');
    SQL.Add('where a."ies_tip_pedido" = ''P''                                                                                               ');
    SQL.Add('  and a."cod_empresa" = :cod_empresa3                                                                                          ');
    SQL.Add('  and a."cod_cliente" = :cod_cliente3                                                                                          ');
    SQL.Add('  and b."cod_produto" = :cod_produto3                                                                                          ');
    SQL.Add('  and b."cod_empresa" = a."cod_empresa"                                                                                        ');
    SQL.Add('  and b."num_pedido" = a."num_pedido"                                                                                          ');
    SQL.Add('  and c."cod_empresa" = a."cod_empresa"                                                                                        ');
    SQL.Add('  and c."num_pedido" = a."num_pedido"                                                                                          ');
    if (DatPedido > 0) then
       SQL.Add('  and a."dat_liberacao" <= :dat_pedido  ');
    SQL.Add('group by 1,2,3,4,5                                                                                                             ');
    SQL.Add('order by 1 desc, 4 desc                                                                                                        ');

    ParamByName('cod_empresa1').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente1').AsString := CodCliente;
    ParamByName('cod_produto1').AsString := CodProduto;
    ParamByName('cod_empresa2').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente2').AsString := CodCliente;
    ParamByName('cod_produto2').AsString := CodProduto;
    ParamByName('cod_empresa3').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente3').AsString := CodCliente;
    ParamByName('cod_produto3').AsString := CodProduto;

    if (DatPedido > 0) then
       ParamByName('dat_pedido').AsDateTime := DatPedido;

    Open;
  end;
end;


procedure TdmCOM.ultimos_precosCalcFields(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('ies_origem').AsString = 'P') then
  begin
    with PedidoHistPreco do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').Value := DataSet.FieldByName('numero').Value;
      Open;
      DataSet.FieldByName('obs').Value := PedidoHistPrecoterms_payment.Value;
      Close;
    end;
  end;
  if (DataSet.FieldByName('ies_origem').AsString = 'C') then
  begin
    with lista_preco do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_lista').AsInteger := DataSet.FieldByName('numero').Value;
      ParamByName('cod_produto').AsString := ProdutosHistPrecocod_produto.AsString;
      Open;
      DataSet.FieldByName('obs').Value := lista_precoobs_preco.AsString;
      Close;
    end;
  end;
end;


{ Localizar uma string dentro de um DataSet }
procedure TdmCOM.Localizar(Sender: TObject; Dataset: TDataSet);
Var
  Des, s: String;
begin

  if DataSet.IsEmpty then Abort;

  Des := TEdit(Sender).Text;

  DataSet.DisableControls;

  if Des <> Ant then
  begin
     DataSet.First;
     Ant := Des;
  end
  else
     DataSet.Next;

  while not(DataSet.EOF) do
  begin
    if TEdit(Sender).Name =  'edBuscaCodigo' then
       s := DataSet.FieldByName('cod_produto').AsString;
    if TEdit(Sender).Name = 'edBuscaDesc' then
       s := DataSet.FieldByName('calDenProduto').AsString;
    if Pos(Des, s) > 0 then
    begin
      DataSet.EnableControls;
      Exit;
    end;
    DataSet.Next;
  end;

  if (DataSet.Eof) then DataSet.First;
  DataSet.EnableControls;

  if TEdit(Sender).Text <> '' then
  begin
    TEdit(Sender).SetFocus;
    TEdit(Sender).SelLength := 0;
    TEdit(Sender).SelStart := Length(trim(TEdit(Sender).Text));
  end;
end;

end.
