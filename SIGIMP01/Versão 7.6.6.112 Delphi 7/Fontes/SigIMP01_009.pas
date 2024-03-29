unit SigIMP01_009;

interface

uses
  Forms, SysUtils, Classes, IBSQL, DB, IBCustomDataSet, IBQuery, unConnection, Dialogs,
  Variants, UnType, StdCtrls, Controls;

type
  TdmNF = class(TDataModule)
    nf: TIBQuery;
    nf_produto: TIBQuery;
    nf_servico: TIBQuery;
    qryFechamentoEstoque: TIBQuery;
    qryKit: TIBQuery;
    qryKitcod_empresa: TSmallintField;
    qryKitcod_produto: TIBStringField;
    qryKitcod_produto_componente: TIBStringField;
    qryKitqtd_necessaria: TIBBCDField;
    qryKitdat_cadastro: TDateField;
    nfcod_empresa: TSmallintField;
    nfnum_nota_fiscal: TIntegerField;
    nfserie: TIBStringField;
    nfcod_cliente: TIBStringField;
    nfcod_pagamento: TSmallintField;
    nfcod_nat_operacao: TIntegerField;
    nfcod_moeda: TSmallintField;
    nfcod_tip_pagamento: TSmallintField;
    nfcod_vendedor: TSmallintField;
    nfcod_transportadora: TSmallintField;
    nfcod_grupo_transporte: TIBStringField;
    nfcod_tip_nota_fiscal: TIBStringField;
    nfies_situacao: TIBStringField;
    nfies_tip_frete: TSmallintField;
    nfies_clc_frete: TIBStringField;
    nfpct_icms: TIBBCDField;
    nfpct_desp_financeira: TIBBCDField;
    nfvlr_frete: TIBBCDField;
    nfvlr_seguro: TIBBCDField;
    nfvlr_outros: TIBBCDField;
    nfdat_emissao: TDateTimeField;
    nfdat_cadastro: TDateTimeField;
    nftexto: TIBStringField;
    nftxt_observacao: TIBStringField;
    nfcod_cfop: TSmallintField;
    nfqtd_produto: TIBBCDField;
    nfpes_bruto: TIBBCDField;
    nfpes_liquido: TIBBCDField;
    nfvlr_ipi: TIBBCDField;
    nfvlr_icmsr: TIBBCDField;
    nfbase_icmss: TIBBCDField;
    nfvlr_icmss: TIBBCDField;
    nfbase_icms: TIBBCDField;
    nfvlr_icms: TIBBCDField;
    nfvlr_produto: TIBBCDField;
    nfqtd_servico: TIBBCDField;
    nfvlr_servico: TIBBCDField;
    nfvlr_irrf: TIBBCDField;
    nfvlr_iss: TIBBCDField;
    nfvlr_bruto: TIBBCDField;
    nfvlr_liquido: TIBBCDField;
    nfcod_operacao: TSmallintField;
    nfies_controla_estoque: TIBStringField;
    nfies_gera_documento: TIBStringField;
    nf_produtocod_empresa: TSmallintField;
    nf_produtonum_nota_fiscal: TIntegerField;
    nf_produtoserie: TIBStringField;
    nf_produtonum_sequencia: TSmallintField;
    nf_produtocod_produto: TIBStringField;
    nf_produtoqtd_produto: TIBBCDField;
    nf_produtopct_ipi: TIBBCDField;
    nf_produtopct_icmsr: TIBBCDField;
    nf_produtopct_icmss: TIBBCDField;
    nf_produtopct_desconto: TIBBCDField;
    nf_produtovlr_unitario: TFloatField;
    nf_produtovlr_desconto_adic: TIBBCDField;
    nf_produtotexto: TIBStringField;
    nf_produtotxt_observacao: TIBStringField;
    nf_produtodat_cadastro: TDateTimeField;
    nf_produtopct_icms: TIBBCDField;
    nf_produtovlr_bruto: TIBBCDField;
    nf_produtovlr_ipi: TIBBCDField;
    nf_produtovlr_icmsr: TIBBCDField;
    nf_produtobase_icmss: TIBBCDField;
    nf_produtovlr_icmss: TIBBCDField;
    nf_produtobase_icms: TIBBCDField;
    nf_produtovlr_icms: TIBBCDField;
    nf_produtovlr_desconto: TIBBCDField;
    nf_produtovlr_liquido: TIBBCDField;
    nf_servicocod_empresa: TSmallintField;
    nf_serviconum_nota_fiscal: TIntegerField;
    nf_servicoserie: TIBStringField;
    nf_serviconum_sequencia: TSmallintField;
    nf_servicocod_servico: TSmallintField;
    nf_servicoqtd_servico: TIBBCDField;
    nf_servicopct_irrf: TIBBCDField;
    nf_servicopct_iss: TIBBCDField;
    nf_servicopct_desconto: TIBBCDField;
    nf_servicovlr_unitario: TIBBCDField;
    nf_servicovlr_bruto: TIBBCDField;
    nf_servicovlr_irrf: TIBBCDField;
    nf_servicovlr_iss: TIBBCDField;
    nf_servicovlr_desconto: TIBBCDField;
    nf_servicovlr_desconto_adic: TIBBCDField;
    nf_servicovlr_liquido: TIBBCDField;
    nf_servicotexto: TIBStringField;
    nf_servicotxt_observacao: TIBStringField;
    nf_servicodat_cadastro: TDateTimeField;
    nfdat_liquidacao: TDateField;
    procedure nf_produtoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TNF = class(TObject)
  private
    FdmNF: TdmNF;
    FNum_NF: tpNum_NF;
    FSerie: tpSerie;
    FNom_Tela: tpNom_Tela;

    // NF
    function Get_Cod_Cliente: tpCod_Cliente;
    function Get_Cod_Pagamento: tpCod_Pagamento;
    function Get_Cod_Tip_Pagamento: tpCod_Tip_Pagamento;
    function Get_Cod_Operacao: tpCod_Operacao;
    function Get_Cod_Vendedor: tpCod_Vendedor;
    function Get_Cod_Transportadora: tpCod_Transportadora;
    function Get_Cod_Grupo_Transporte: tpCod_Grupo_Transporte;
    function Get_Cod_Moeda: tpCod_Moeda;
    function Get_Ies_Controla_Estoque: tpBoolean;
    function Get_Ies_Controla_Financeiro: tpBoolean;
    function Get_Pct_ICMS: tpPct_ICMS;
    function Get_Pct_Desp_Financeira: tpPct_ICMS;
    function Get_Ies_Tip_Frete: tpIes_Tip_Frete;
    function Get_Ies_Clc_Frete: tpIes_Clc_Frete;
    function Get_Vlr_Vliquido: tpVlr_Liquido;
    function Get_Vlr_Frete: tpVlr_Unitario;
    function Get_Vlr_Outros: tpVlr_Unitario;
    function Get_Texto: tpTexto;
    function Get_Texto_Observacao: tpTexto;
    function Get_Serie: tpSerie;

    // NF Produto
    function Get_Num_Sequencia: tpNum_Sequencia;
    function Get_Cod_Produto: tpCod_Produto;
    function Get_Ies_Kit: Boolean;
    function Get_Cod_Componente: tpCod_Produto;
    function Get_Pct_IPI: tpPct_IPI;
    function Get_Pct_Desconto: tpPct_Desconto;
    function Get_Pct_ICMSR: tpPct_ICMS;
    function Get_Pct_ICMSS: tpPct_ICMS;
    function Get_Qtd_Produro: tpQtd_Produto;
    function Get_Texto_Produto: tpTexto;
    function Get_Texto_Observacao_Produto: tpTexto;
    function Get_Vlr_Unitario: tpVlr_Unitario;
    function Get_Vlr_Desconto_Adic: tpVlr_Desconto_Adic;

    function Get_Qtd_Necessaria: tpQtd_Produto;

    function Check_Estoque(YearMonth: Integer): Boolean;
  protected
    FMensagem: Boolean;

    procedure After_Transaction(Value: tpTransaction);

    procedure First_NF_Produto;
    procedure First_Kit;

    procedure Next_NF_Produto;
    procedure Next_Kit;

    function Eof_NF_Produto: Boolean;
    function Eof_Kit: Boolean;

    function Open_NF: Boolean;
    function Open_NF_Produto: Boolean;
    function Open_NF_Servico: Boolean;
    function Check_NF(Value: tpStatus): Boolean;
	  function Processar_NF: Boolean; virtual; abstract;
    function Processar_NF_Produto: Boolean; virtual; abstract;
    function Processar_NF_Servico: Boolean; virtual; abstract;
  public
    function Execute(Commit: Boolean = True): Boolean; virtual; abstract;
    constructor Create(Num_NF: tpNum_NF; Nom_Tela: tpNom_Tela; Mensagem: Boolean = True); virtual;
    destructor Destroy; override;
  published
    property Nom_Tela: tpNom_Tela read FNom_Tela;
	  property Num_NF: tpNum_NF read FNum_NF;
    property Serie: tpSerie read Get_Serie;
    property Cod_Cliente: tpCod_Cliente read Get_Cod_Cliente;
    property Cod_Pagamento: tpCod_Pagamento read Get_Cod_Pagamento;
    property Cod_Tip_Pagamento: tpCod_Tip_Pagamento read Get_Cod_Tip_Pagamento;
    property Cod_Operacao: tpCod_Operacao read Get_Cod_Operacao;
    property Ies_Controla_Estoque: tpBoolean read Get_Ies_Controla_Estoque;
    property Ies_Controla_Financeiro: tpBoolean read Get_Ies_Controla_Financeiro;
    property Ies_Tip_Frete: tpIes_Tip_Frete read Get_Ies_Tip_Frete;
    property Ies_Clc_Frete: tpIes_Clc_Frete read Get_Ies_Clc_Frete;
    property Cod_Vendedor: tpCod_Vendedor read Get_Cod_Vendedor;
    property Cod_Transportadora: tpCod_Transportadora read Get_Cod_Transportadora;
    property Cod_Grupo_Transporte: tpCod_Grupo_Transporte read Get_Cod_Grupo_Transporte;
    property Cod_Moeda: tpCod_Moeda read Get_Cod_Moeda;
    property Pct_ICMS: tpPct_ICMS read Get_Pct_ICMS;
    property Pct_Desp_Financeira: tpPct_Desp_Financeira read Get_Pct_Desp_Financeira;
    property Vlr_Frete: tpVlr_Unitario read Get_Vlr_Frete;
    property Vlr_Outros: tpVlr_Unitario read Get_Vlr_Outros;
    property Vlr_Liquido: tpVlr_Liquido read Get_Vlr_Vliquido;
    property Texto: tpTexto read Get_Texto;
    property Texto_Observacao: tpTexto read Get_Texto_Observacao;
    property Num_Sequencia: tpnum_Sequencia read Get_Num_Sequencia;
    property Cod_Produto: tpCod_Produto read Get_Cod_Produto;
    property Ies_Kit: Boolean read Get_Ies_Kit;
    property Cod_Componente: tpCod_Produto read Get_Cod_Componente;
    property Pct_IPI: tpPct_IPI read Get_Pct_IPI;
    property Pct_Desconto: tpPct_Desconto read Get_Pct_Desconto;
    property Pct_ICMSR: tpPct_ICMS read Get_Pct_ICMSR;
    property Pct_ICMSS: tpPct_ICMS read Get_Pct_ICMSS;
    property Qtd_Produto: tpQtd_Produto read Get_Qtd_Produro;
    property Texto_Produto: tpTexto read Get_Texto_Produto;
    property Texto_Observacao_Produto: tpTexto read Get_Texto_Observacao_Produto;
	  property Vlr_Unitario: tpVlr_Unitario read Get_Vlr_Unitario;
    property Vlr_Desconto_Adic: tpVlr_Desconto_Adic read Get_Vlr_Desconto_Adic;
    property Qtd_Necessaria: tpQtd_Produto read Get_Qtd_Necessaria;
  end;

//var  dmNF: TdmNF;

implementation

uses SigIMP01_045;

{$R *.dfm}

{ TNF }

function TNF.Open_NF: Boolean;
begin
   { Obt�m informa��es da Nota Fiscal de Origem }
   with FdmNF, nf do
   begin
      Close;
      ParamByName('cod_empresa').AsSmallInt 	:= vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger	:= Num_NF;
      ParamByName('serie').AsString            := vgSerie;
      Open;
      Result := not IsEmpty;
      if Result then
      begin
        Result := (Open_NF_Produto) or (Open_NF_Servico);
        if Result then
          { Bulek em 10/05/2006 - Foi retirada a dat_emiss�o da NF para checar o estoque, estava ERRADO }
	        Result := not Check_Estoque(StrToInt(FormatDateTime('yyyymm', Buscar_DateTime)));
      end;
   end;
end;

function TNF.Check_Estoque(YearMonth: Integer): Boolean;
begin
   with FdmNF, qryFechamentoEstoque do
   	try
         Close;
         ParamByName('cod_empresa').AsSmallInt	:= vgCod_Empresa;
         ParamByName('yearmonth').AsInteger		:= YearMonth;
         Open;
         if not IsEmpty then
            MessageDlg('Aten��o: Estoque do m�s fechado.', mtInformation, [mbCancel], 0);
      finally
         Result := not IsEmpty;
      end;
end;

function TNF.Open_NF_Produto: Boolean;
begin
	with FdmNF, nf_produto do
   begin
      Close;
      ParamByName('cod_empresa').AsSmallInt 	:= vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger	:= Num_NF;
      ParamByName('serie').AsString            := vgSerie;
      Open;
      Result := not IsEmpty;
      if Result then
      	First;
   end;
end;

function TNF.Open_NF_Servico: Boolean;
begin
	with FdmNF, nf_servico do
   begin
      Close;
      ParamByName('cod_empresa').AsSmallInt 		:= vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger	:= Num_NF;
      ParamByName('serie').AsString             := vgSerie;
      Open;
      Result := not IsEmpty;
   end;
end;

constructor TNF.Create(Num_NF: tpNum_NF; Nom_Tela: tpNom_Tela; Mensagem: Boolean = True);
begin
  FdmNF	:= TdmNF.Create(nil);

  FNum_NF	:= Num_NF;
  FSerie    := Serie;
  FNom_Tela	:= Nom_Tela;
  FMensagem	:= Mensagem;
end;

destructor TNF.Destroy;
begin
  FdmNF.Free;
  inherited;
end;

function TNF.Eof_NF_Produto: Boolean;
begin
	Result := not FdmNF.nf_produto.Eof;
end;

function TNF.Eof_Kit: Boolean;
begin
	Result := not FdmNF.qryKit.Eof;
end;

function TNF.Get_Cod_Cliente: tpCod_Cliente;
begin
   Result := FdmNF.nfcod_cliente.AsString;
end;

function TNF.Get_Cod_Operacao: tpCod_Operacao;
begin
	Result := FdmNF.nfcod_operacao.AsInteger;
end;

function TNF.Get_Ies_Controla_Estoque: tpBoolean;
begin
   Result := FdmNF.nfies_controla_estoque.AsString = 'S';
end;

function TNF.Get_Ies_Controla_Financeiro: tpBoolean;
begin
   Result := FdmNF.nfies_gera_documento.AsString = 'S';
end;

function TNF.Get_Cod_Pagamento: tpCod_Pagamento;
begin
   Result := FdmNF.nfcod_pagamento.AsInteger;
end;

function TNF.Get_Cod_Produto: tpCod_Produto;
begin
   Result := FdmNF.nf_produtocod_produto.AsString;
end;

function TNF.Get_Ies_Kit: Boolean;
begin
	Result := not FdmNF.qryKit.IsEmpty;
end;

function TNF.Get_Cod_Componente: tpCod_Produto;
begin
	Result := FdmNF.qryKitcod_produto_componente.AsString;
end;

function TNF.Get_Cod_Tip_Pagamento: tpCod_Tip_Pagamento;
begin
   Result := FdmNF.nfcod_tip_pagamento.AsInteger;
end;

function TNF.Get_Cod_Vendedor: tpCod_Vendedor;
begin
	Result := FdmNF.nfcod_vendedor.AsInteger;
end;

function TNF.Get_Cod_Transportadora: tpCod_Transportadora;
begin
	Result := FdmNF.nfcod_transportadora.AsInteger;
end;

function TNF.Get_Cod_Grupo_Transporte: tpCod_Grupo_Transporte;
begin
	Result := FdmNF.nfcod_grupo_transporte.AsString;
end;

function TNF.Get_Cod_Moeda: tpCod_Moeda;
begin
  Result	:= FdmNF.nfcod_moeda.AsInteger;
end;

function TNF.Get_Pct_ICMS: tpPct_ICMS;
begin
  Result	:= FdmNF.nfpct_icms.AsFloat;
end;

function TNF.Get_Pct_Desp_Financeira: tpPct_ICMS;
begin
  Result	:= FdmNF.nfpct_desp_financeira.AsFloat;
end;

function TNF.Get_Ies_Tip_Frete: tpIes_Tip_Frete;
begin
  Result	:= FdmNF.nfies_tip_frete.AsInteger;
end;

function TNF.Get_Ies_Clc_Frete: tpIes_Clc_Frete;
begin
  Result	:= FdmNF.nfies_clc_frete.AsString;
end;

function TNF.Get_Num_Sequencia: tpNum_Sequencia;
begin
   Result := FdmNF.nf_produtonum_sequencia.AsInteger;
end;

function TNF.Get_Pct_Desconto: tpPct_Desconto;
begin
	Result := FdmNF.nf_produtopct_desconto.AsFloat;
end;

function TNF.Get_Pct_ICMSR: tpPct_ICMS;
begin
	Result := FdmNF.nf_produtopct_icmsr.AsFloat;
end;

function TNF.Get_Pct_ICMSS: tpPct_ICMS;
begin
	Result := FdmNF.nf_produtopct_icmss.AsFloat;
end;

function TNF.Get_Pct_IPI: tpPct_IPI;
begin
   Result := FdmNF.nf_produtopct_ipi.AsFloat;
end;

function TNF.Get_Qtd_Produro: tpQtd_Produto;
begin
   Result := FdmNF.nf_produtoqtd_produto.AsFloat;
end;

function TNF.Get_Texto: tpTexto;
begin
   Result := FdmNF.nftexto.AsString;
end;

function TNF.Get_Texto_Observacao: tpTexto;
begin
   Result := FdmNF.nftxt_observacao.AsString;
end;

function TNF.Get_Texto_Observacao_Produto: tpTexto;
begin
   Result := FdmNF.nf_produtotxt_observacao.AsString;
end;

function TNF.Get_Texto_Produto: tpTexto;
begin
   Result := FdmNF.nf_produtotexto.AsString;
end;

function TNF.Get_Vlr_Desconto_Adic: tpVlr_Desconto_Adic;
begin
   Result := FdmNF.nf_produtovlr_desconto_adic.AsCurrency;
end;

function TNF.Get_Qtd_Necessaria: tpQtd_Produto;
begin
	Result := FdmNF.qryKitqtd_necessaria.AsFloat;
end;

function TNF.Get_Vlr_Unitario: tpVlr_Unitario;
begin
   Result := FdmNF.nf_produtovlr_unitario.AsCurrency;
end;

function TNF.Get_Vlr_Vliquido: tpVlr_Liquido;
begin
   Result := FdmNF.nfvlr_liquido.AsCurrency;
end;

function TNF.Get_Vlr_Frete: tpVlr_Unitario;
begin
	Result := FdmNF.nfvlr_frete.AsCurrency;
end;

function TNF.Get_Vlr_Outros: tpVlr_Unitario;
begin
	Result := FdmNF.nfvlr_outros.AsCurrency;
end;

function TNF.Get_Serie: tpSerie;
begin
  Result := FdmNF.nfserie.AsString;
end;


procedure TNF.First_NF_Produto;
begin
   FdmNF.nf_produto.First;
end;

procedure TNF.First_Kit;
begin
   FdmNF.qryKit.First;
end;

procedure TNF.Next_NF_Produto;
begin
   FdmNF.nf_produto.Next;
end;

procedure TNF.Next_Kit;
begin
   FdmNF.qryKit.Next;
end;

function TNF.Check_NF(Value: tpStatus): Boolean;
begin
 Result := False;
 case Value of
  ctNormal:	    Result := FdmNF.nfies_situacao.AsString = 'N';
  ctCancelado:  Result := FdmNF.nfies_situacao.AsString = 'C';
  ctFaturado:	  Result := FdmNF.nfies_situacao.AsString = 'F';
  { Bulek - identifica NF Devolvida }
  ctDevolvido:  Result := FdmNF.nfies_situacao.AsString = 'D';
 end;
end;

procedure TNF.After_Transaction(Value: tpTransaction);
begin
	case Value of
   stCommit:	          dmConnection.dbSig.DefaultTransaction.Commit;
   stCommitRetaining:	 dmConnection.dbSig.DefaultTransaction.CommitRetaining;
   stRollback:	       dmConnection.dbSig.DefaultTransaction.Rollback;
   stRollbackRetaining: dmConnection.dbSig.DefaultTransaction.RollbackRetaining;
   end;
end;

procedure TdmNF.nf_produtoAfterScroll(DataSet: TDataSet);
begin
	if DataSet['cod_produto'] <> Null then
		with qryKit do
  	try
    	DisableControls;
	   Close;
  	   ParamByName('cod_empresa').AsSmallInt	:= vgCod_Empresa;
    	ParamByName('cod_produto').AsString		:= DataSet['cod_produto'];
	   Open;
  	finally
    	EnableControls;
	  end;
end;



end.

