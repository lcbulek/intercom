unit unType;

interface

uses
	SysUtils;

Const
  // Alterado em: 11.07.22
  // Formata��o para Excel
  VolumeNumberFormat = '#.##0,000';           // Para a linha de produtos
  VolumeNumberFormatTotal = '  #,##0.000 m�'; // Para os totais de volume em PACKAGES INFORMATION
  VolumeDecimais = '3';                       // Decimais para os volumes nas linhas de produtos
  VolumeDecimaisTotal = '2';                  // Decimais para os totais de volumes
  // Formata��o para Form
  VolumeNumberFormat_fmt = '#,##0.000';        

type
	tpCod_Empresa = Smallint;
	tpTransaction = (stCommit, stCommitRetaining, stRollback, stRollbackRetaining);
  tpPermissao = Integer;
  tpLogin= String[18];
  tpSenha= String[15];
  tpSigla= String[03];
  tpTipo= String[01];
  tpCod_Cidade = Integer;
  tpCod_Unidade_Federativa = Smallint;
  tpCod_Pais = Smallint;
  tpPrograma= String[15];
  tpHost= String[15];
  tpNum_Ordem = Int64;
	tpNum_Pedido = Int64;
  tpNum_Romaneio = Integer;
  tpNum_OS = Integer;
  tpNum_NF = Integer;
  tpSerie = String;
  tpNum_Documento = Integer;
  tpIes_Situacao = String[1];
  tpIes_Tip_Pedido = String[1];
  tpIes_Tip_Nf = string[1];//Adicionado dia 23/08/2006 - Fernando de Paula
  tpIes_Tip_Frete = Byte;
  tpIes_Clc_Frete = String[1];
  tpCod_Cliente = String[12];
  tpNom_Cliente = String[75];
  tpCNPJ = String[18];
  tpNum_Ender = Byte;
  tpCod_Fornecedor = Smallint;
  tpCod_Banco = Smallint;
  tpCod_ContaCC = String[20];
  tpCod_Categoria = Smallint;
  tpCod_Sub_Categoria = Smallint;
  tpCod_Pagamento = Smallint;
  tpCod_Tip_Pagamento = Smallint;
  tpCod_Tip_Documento = Smallint;
  tpCod_Tip_Nota_Fiscal = String[3];
  tpCod_Tip_Produto = Smallint;
  tpCod_Tipo_Entr = Smallint; {Adicionado dia 12/05/2006}
  tpCod_Uni_Medida = Smallint;
  tpCod_Tip_Cliente = Smallint;
  tpCod_Tip_Bloqueio = Smallint; {Adicionado dia 02/02/2007 - Fernando de Paula}
  tpCod_Tip_Fornecedor = Smallint;
  tpCod_Nat_Operacao = Integer;
  tpCod_CFOP = Smallint;
  tpCod_Vendedor = Smallint;
  tpCod_Operacao = Smallint;
  tpNum_Lista = Smallint;
  tpCod_Contato = Smallint;
  tpCod_Moeda = Smallint;
  tpCod_Transportadora = Smallint;
  tpCod_Grupo_Transporte = String[03];
  tpNum_Sequencia = Smallint;
  tpNum_Parcela = Smallint;
  tpCod_Produto = String[7];
  tpCod_Servico = Smallint;
  tpTexto= String[255];
  tpPct_Desp_Financeira = Real;
  tpPct_IPI = Real;
  tpPct_ICMS = Real;
  tpPct_IRRF = Real;
  tpPct_ISS = Real;
  tpPct_Desconto = Real;
  tpQtd_Produto = Real;
  tpQtd_Estoque = Real;
  tpVlr_Unitario = Currency;
  tpVlr_Desconto_Adic = Currency;
  tpVlr_Liquido = Currency;
  tpSit_Tributaria = String[3];
  tpTip_Entrega = String[2];
  tpStatus = (ctNormal, ctCopiar, ctCancelado, ctConfirmado, ctRomaneado, ctFaturado, ctDevolvido);
  tpDat_Emissao = TDateTime;
  tpDat_Entrega = TDateTime;
  tpBoolean = Boolean;
  tpNom_Tela= String[18];
  tpLinha = array[1..2000] of Char;
implementation

end.





































