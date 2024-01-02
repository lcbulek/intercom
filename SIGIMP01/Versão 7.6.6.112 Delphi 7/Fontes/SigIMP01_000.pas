unit SigIMP01_000;

interface

uses
  SysUtils, Classes, IBSQL, DB, IBCustomDataSet, IBQuery, unConnection, Dialogs,
  Variants, UnType;

type
	TdmPedido = class(TDataModule)
    pedido: TIBQuery;                                  
    pedido_produto: TIBQuery;
    unidade_federacao: TIBQuery;
    unidade_federacaocod_unidade_federativa: TSmallintField;
    sqlUpdate_Pedido: TIBSQL;
    parametro_estoque: TIBQuery;
    parametro_estoquecod_empresa: TSmallintField;
    parametro_estoqueies_negativo: TIBStringField;
    parametro_estoquedat_ult_inventario: TIntegerField;
    parametro_estoquedat_ult_fechamento: TIntegerField;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialcod_vendedor: TSmallintField;
    parametro_comercialcod_transportadora: TSmallintField;
    parametro_comercialcod_moeda: TSmallintField;
    parametro_comercialcod_pagamento: TSmallintField;
    parametro_comercialnum_lista: TSmallintField;
    parametro_comercialcod_tip_produto: TSmallintField;
    parametro_comercialcod_tip_pagamento: TSmallintField;
    parametro_comercialcod_tip_nota_fiscal: TIBStringField;
    parametro_comercialcod_tip_nota_fiscal_devolucao: TIBStringField;
    parametro_comercialcod_nat_operacao: TIntegerField;
    parametro_comercialcod_nat_operacao_devolucao: TIntegerField;
    parametro_comercialnum_produto_pedido: TSmallintField;
    parametro_comercialnum_produto_nota_fiscal: TSmallintField;
    parametro_comercialies_preview: TIBStringField;
    parametro_comercialies_col_ipi: TIBStringField;
    parametro_comercialies_clc_frete: TIBStringField;
    parametro_comercialies_dat_emissao: TIBStringField;
    parametro_comercialies_dat_saida: TIBStringField;
    parametro_comercialies_dat_liberacao: TIBStringField;
    parametro_comercialnum_nota_fiscal_inicio: TIntegerField;
    parametro_comercialnum_nota_fiscal_termino: TIntegerField;
    parametro_comercialies_nf_pq: TIBStringField;
    parametro_comercialserie_nf: TIBStringField;
    empresa_uf: TIBQuery;
    empresa_ufuf: TSmallintField;
    cliente_pessoa: TIBQuery;
    cliente_pessoacnpj: TIBStringField;
    parametro_comercialdias_atualiza: TSmallintField;
    parametro_comercialano_pedido: TIntegerField;
    parametro_comercialprox_num_pedido: TIntegerField;
    parametro_comercialdias_entrega: TSmallintField;
    parametro_comercialvlr_min_irrf: TIBBCDField;
    pedido_produtocod_empresa: TSmallintField;
    pedido_produtonum_pedido: TLargeintField;
    pedido_produtonum_sequencia: TSmallintField;
    pedido_produtocod_produto: TIBStringField;
    pedido_produtoqtd_produto: TIBBCDField;
    pedido_produtoqtd_cancelada: TIBBCDField;
    pedido_produtoqtd_romaneada: TIBBCDField;
    pedido_produtoqtd_faturada: TIBBCDField;
    pedido_produtoqtd_pendente: TIBBCDField;
    pedido_produtopct_desconto: TIBBCDField;
    pedido_produtovlr_unitario: TFloatField;
    pedido_produtovlr_bruto: TIBBCDField;
    pedido_produtovlr_desconto: TIBBCDField;
    pedido_produtovlr_desconto_adic: TIBBCDField;
    pedido_produtovlr_liquido: TIBBCDField;
    pedido_produtodat_entrega: TDateField;
    pedido_produtodat_cadastro: TDateTimeField;
    pedido_produtotexto: TIBStringField;
    pedido_produtotxt_observacao: TIBStringField;
    pedidocod_empresa: TSmallintField;
    pedidonum_pedido: TLargeintField;
    pedidocod_cliente: TIBStringField;
    pedidocod_vendedor: TSmallintField;
    pedidocod_pagamento: TSmallintField;
    pedidocod_tip_pagamento: TSmallintField;
    pedidonum_lista: TSmallintField;
    pedidocod_nat_operacao: TIntegerField;
    pedidocod_transportadora: TSmallintField;
    pedidocod_moeda: TSmallintField;
    pedidocod_grupo_transporte: TIBStringField;
    pedidoies_situacao: TIBStringField;
    pedidoies_tip_pedido: TIBStringField;
    pedidoies_tip_frete: TSmallintField;
    pedidoies_tip_entrega: TIBStringField;
    pedidodat_liberacao: TDateField;
    pedidodat_faturamento: TDateField;
    pedidodat_emissao: TDateTimeField;
    pedidodat_entrega: TDateField;
    pedidodat_cadastro: TDateTimeField;
    pedidotexto: TIBStringField;
    pedidotxt_observacao: TIBStringField;
    pedidologin: TIBStringField;
    pedidovlr_frete: TIBBCDField;
    pedidovlr_desconto: TIBBCDField;
    pedidovlr_desconto_adic: TIBBCDField;
    pedidovlr_bruto: TIBBCDField;
    pedidovlr_liquido: TIBBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

	TPedido = class(TObject)
  private
    FNum_Pedido: tpNum_Pedido;
    FIes_IPI: Boolean;
    function Buscar_UF_Cliente(Cod_Cliente: tpCod_Cliente): Smallint;
    procedure Get_Param;
    // Pedido
    function Get_Cod_Cliente: tpCod_Cliente;
    function Get_Ies_Situacao: tpIes_Situacao;
    function Get_Cod_Pagamento: tpCod_Pagamento;
    function Get_Cod_Tip_Pagamento: tpCod_Tip_Pagamento;
    function Get_Cod_Nat_Operacao: tpCod_Nat_Operacao;
    function Get_Cod_Vendedor: tpCod_Vendedor;
    function Get_Num_Lista: tpNum_Lista;
    function Get_Cod_Moeda: tpCod_Moeda;
    function Get_Cod_Transportadora: tpCod_Transportadora;
    function Get_Cod_Grupo_Transporte: tpCod_Grupo_Transporte;
    function Get_Ies_Dat_Emissao: tpBoolean;
    function Get_Ies_Dat_Liberacao: tpBoolean;
    function Get_Dat_Emissao : tpDat_Entrega;
    function Get_Dat_Liberacao: tpDat_Emissao;
    function Get_Texto_Observacao: tpTexto;
    function Get_Tip_Entrega: tpTip_Entrega;
    function Get_Ies_Tip_Frete: tpIes_Tip_Frete;
    function Get_Vlr_Frete: tpVlr_Liquido;
    // Pedido_Produto
    function Get_Num_Sequencia: tpNum_Sequencia;
    function Get_Cod_Produto: tpCod_Produto;
    function Get_Pct_Desconto: tpPct_Desconto;
    function Get_Qtd_Produto: tpQtd_Produto;
    function Get_Qtd_Pendente: tpQtd_Produto;
    function Get_Qtd_Romaneada: tpQtd_Produto;
    function Get_Texto_Produto: tpTexto;
    function Get_Texto_Observacao_Produto: tpTexto;
    function Get_Vlr_Unitario: tpVlr_Unitario;
    function Get_Vlr_Desconto_Adic: tpVlr_Desconto_Adic;
    function Get_Dat_Entrega : tpDat_Entrega;
  protected
    FdmPedido: TdmPedido;

    FDisplayMensagem: Boolean;

    procedure First_Pedido_Produto; virtual;

    procedure Next_Pedido_Produto; virtual;

    function Eof_Pedido_Produto: Boolean; virtual;

    function Open_Pedido(Value: tpStatus): Boolean; virtual;
    function Open_Pedido_Produto(Value: tpStatus; IgnoreKit: tpBoolean = False): Boolean;

    function Check_Pedido(Value: tpStatus): Boolean;
    function Find_Sequencia(Value: tpNum_Sequencia): Boolean;

    procedure After_Transaction(Value: tpTransaction);
	public
    function Execute(Commit: Boolean = True): Boolean; virtual; abstract;

    constructor Create(Value: tpNum_Pedido; DisplayMensagem: Boolean = False); virtual;
    destructor Destroy; override;
  published
    {Bulek - indica se usa o frete informado no pedido ou não }
    property Vlr_Frete: tpVlr_Liquido read Get_Vlr_Frete;
    property Num_Pedido: tpNum_Pedido read FNum_Pedido write FNum_Pedido;
    property Cod_Cliente: tpCod_Cliente read Get_Cod_Cliente;
    property Ies_Situacao: tpIes_Situacao read Get_Ies_Situacao;
    property Cod_Pagamento: tpCod_Pagamento read Get_Cod_Pagamento;
    property Cod_Tip_Pagamento: tpCod_Tip_Pagamento read Get_Cod_Tip_Pagamento;
    property Cod_Nat_Operacao: tpCod_Nat_Operacao read Get_Cod_Nat_Operacao;
    property Cod_Vendedor: tpCod_Vendedor read Get_Cod_Vendedor;
    property Num_Lista: tpNum_Lista read Get_Num_Lista;
    property Cod_Moeda: tpCod_Moeda read Get_Cod_Moeda;
    property Cod_Transportadora: tpCod_Transportadora read Get_Cod_Transportadora;
    property Cod_Grupo_Transporte: tpCod_Grupo_Transporte read Get_Cod_Grupo_Transporte;
    property Texto_Observacao: tpTexto read Get_Texto_Observacao;
    property Tip_Entrega: tpTip_Entrega read Get_Tip_Entrega;
    property Ies_Tip_Frete: tpIes_Tip_Frete read Get_Ies_Tip_Frete;
    property Num_Sequencia: tpNum_Sequencia read Get_Num_Sequencia;
    property Cod_Produto: tpCod_Produto read Get_Cod_Produto;
    property Pct_Desconto: tpPct_Desconto read Get_Pct_Desconto;
    property Qtd_Produto: tpQtd_Produto read Get_Qtd_Produto;
    property Qtd_Pendente: tpQtd_Produto read Get_Qtd_Pendente;
    property Qtd_Romaneada: tpQtd_Produto read Get_Qtd_Romaneada;
    property Texto_Produto: tpTexto read Get_Texto_Produto;
    property Texto_Observacao_Produto: tpTexto read Get_Texto_Observacao_Produto;
	  property Vlr_Unitario: tpVlr_Unitario read Get_Vlr_Unitario;
    property Vlr_Desconto_Adic: tpVlr_Desconto_Adic read Get_Vlr_Desconto_Adic;
    property Ies_Dat_Emissao: tpBoolean read Get_Ies_Dat_Emissao;
    property Ies_Dat_Liberacao: tpBoolean read Get_Ies_Dat_Liberacao;
    property Dat_Emissao: tpDat_Emissao read Get_Dat_Emissao;
    property Dat_Liberacao: tpDat_Emissao read Get_Dat_Liberacao;
    property Dat_Entrega: tpDat_Entrega read Get_Dat_Entrega;
    property DisplayMensagem: Boolean read FDisplayMensagem;
	end;

  implementation


{$R *.dfm}

{ TdmPedido }


function TPedido.Buscar_UF_Cliente(Cod_Cliente: tpCod_Cliente): Smallint;
begin
	with FdmPedido, unidade_federacao do
  begin
  	Close;
   	ParamByName('cod_cliente').AsString	:= Cod_Cliente;
     Open;
   	Result := unidade_federacaocod_unidade_federativa.AsInteger;
  end;
end;

{ TPedido }

procedure TPedido.After_Transaction(Value: tpTransaction);
begin
	case Value of
   stCommit:	dmConnection.dbSig.DefaultTransaction.Commit;
   stCommitRetaining:	dmConnection.dbSig.DefaultTransaction.CommitRetaining;
   stRollback:	dmConnection.dbSig.DefaultTransaction.Rollback;
   stRollbackRetaining:	dmConnection.dbSig.DefaultTransaction.RollbackRetaining;
   end;
end;

function TPedido.Get_Vlr_Unitario: tpVlr_Unitario;
begin
	Result := FdmPedido.pedido_produtovlr_unitario.AsCurrency;
end;

function TPedido.Get_Num_Sequencia: tpNum_Sequencia;
begin
	Result := FdmPedido.pedido_produtonum_sequencia.AsInteger;
end;

function TPedido.Get_Cod_Produto: tpCod_Produto;
begin
   Result := FdmPedido.pedido_produtocod_produto.AsString;
end;


function TPedido.Open_Pedido_Produto(Value: tpStatus; IgnoreKit: tpBoolean): Boolean;
begin
	with FdmPedido, pedido_produto do
  begin
    Close;
    SQL.Clear;
    SQL.Text	:=	' select                                                     '+
						'  a."cod_empresa",                                          '+
						'  a."num_pedido",                                           '+
						'  a."num_sequencia",                                        '+
						'  a."cod_produto",                                          '+
						'  a."qtd_produto",                                          '+
						'  a."qtd_cancelada",                                        '+
						'  a."qtd_romaneada",                                        '+
						'  a."qtd_faturada",                                         '+
						'  a."qtd_pendente",                                         '+
						'  a."pct_desconto",                                         '+
						'  a."vlr_unitario",                                         '+
						'  a."vlr_bruto",                                            '+
						'  a."vlr_desconto",                                         '+
						'  a."vlr_desconto_adic",                                    '+
						'  a."vlr_liquido",                                          '+
						'  a."dat_entrega",                                          '+
						'  a."dat_cadastro",                                         '+
						'  a."texto",                                                '+
						'  a."txt_observacao"                                        '+
						' from "pedido_produto" a                                    '+
						'      join "produto" b on b."cod_empresa" = a."cod_empresa" '+
						'                      and b."cod_produto" = a."cod_produto" '+
						'      join "tipo_produto" c                                 '+
                 '        on c."cod_tip_produto" = b."cod_tip_produto"        '+
						' where                                                      '+
						'     a."cod_empresa" = :cod_empresa                         '+
						' and a."num_pedido"  = :num_pedido                          ';
    ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
    ParamByName('num_pedido').AsFloat    	:= Num_Pedido;


    if Value in [ctNormal] then
    	SQL.Add(' and "qtd_pendente" != 0 and "qtd_pendente" != "qtd_romaneada" ')
    else
    if Value in [ctRomaneado] then
    	SQL.Add(' and "qtd_pendente" != 0 ')
    else
    if Value in [ctFaturado] then
    	SQL.Add(' and "qtd_pendente" != 0 and "qtd_romaneada" != 0 ');

    Open;
    Result := not IsEmpty;
    if Result then
    	First;
	end;
end;

function TPedido.Check_Pedido(Value: tpStatus): Boolean;
begin
	Result   := False;
	case Value of
  	ctCancelado:
    	if FdmPedido.pedidoies_situacao.AsString = 'C' then
      	try
			  	Abort;
	      finally
  	    	MessageDlg('Pedido cancelado', mtError, [mbCancel], 0);
    	  end;
  	ctNormal:
    begin
      if FdmPedido.pedidoies_tip_pedido.AsString <> 'P' then
      	try
        	Abort;
        finally
	      	MessageDlg('Pedido não confirmado', mtError, [mbCancel], 0);
        end
      else
      if FdmPedido.pedidoies_situacao.AsString = 'C' then
      	try
			  	Abort;
	      finally
  	    	MessageDlg('Pedido cancelado', mtError, [mbCancel], 0);
    	  end
      else
      if FdmPedido.pedidoies_situacao.AsString = 'R' then
      	try
			  	Abort;
	      finally
  	    	MessageDlg('Pedido romaneado.', mtError, [mbCancel], 0);
    	  end
      else
      if FdmPedido.pedidoies_situacao.AsString = 'F' then
      	try
			  	Abort;
	      finally
  	    	MessageDlg('Pedido faturado.', mtError, [mbCancel], 0);
    	  end;

			Result := not Result;
    end;
  	ctCopiar:
    begin
   		if FdmPedido.pedidoies_situacao.AsString = 'C' then
      	try
			  	Abort;
	      finally
  	    	MessageDlg('Pedido cancelado', mtError, [mbCancel], 0);
    	  end;

      Result := not Result;
    end;
		ctRomaneado:
   	begin
   		if FdmPedido.pedidoies_tip_pedido.AsString <> 'P' then
      begin
      	MessageDlg('Pedido não confirmado', mtError, [mbCancel], 0);
        Abort;
      end else
      if FdmPedido.pedidoies_situacao.AsString = 'F' then
      begin
      	MessageDlg('Pedido faturado', mtError, [mbCancel], 0);
        Abort;
      end else
      if FdmPedido.pedidoies_situacao.AsString = 'C' then
      begin
      	MessageDlg('Pedido cancelado', mtError, [mbCancel], 0);
        Abort;
      end
      else
      { Bulek - Checar se o valor do pedido é maior que zero }
      if FdmPedido.pedidovlr_liquido.AsFloat <= 0 then
        try
          Abort;
        finally
          MessageDlg('Pedido com valor total menor ou igual a zero.', mtError, [mbCancel], 0);
      end;
      Result := not Result;
   	end;
		ctFaturado:
  	begin
   		if FdmPedido.pedidoies_tip_pedido.AsString <> 'P' then
      begin
      	MessageDlg('Pedido não confirmado', mtError, [mbCancel], 0);
        Abort;
      end else
      if FdmPedido.pedidoies_situacao.AsString = 'F' then
      begin
      	MessageDlg('Pedido faturado', mtError, [mbCancel], 0);
        Abort;
      end else
      if FdmPedido.pedidoies_situacao.AsString <> 'R' then
      begin
      	Result := False;

        First_Pedido_Produto;
        while Eof_Pedido_Produto do
        begin
        	if not Result then
          	Result := Qtd_Romaneada <> 0;

          if Result then Break;

          Next_Pedido_Produto;
        end;
        
        if not Result then
        try
        	Abort;
        finally
	      	MessageDlg('Pedido não romaneado', mtError, [mbCancel], 0);
        end;        
        Result := not Result;
    	end else
      if FdmPedido.pedidoies_situacao.AsString = 'C' then
      begin
      	MessageDlg('Pedido cancelado', mtError, [mbCancel], 0);
        Abort;
      end;
      Result := not Result;
  	end;
	end;
end;

function TPedido.Get_Cod_Cliente: tpCod_Cliente;
begin
   Result := FdmPedido.pedidocod_cliente.AsString;
end;

function TPedido.Get_Ies_Situacao: tpIes_Situacao;
begin
   Result := FdmPedido.pedidoies_situacao.AsString;
end;

function TPedido.Get_Cod_Pagamento: tpCod_Pagamento;
begin
   Result := FdmPedido.pedidocod_pagamento.AsInteger;
end;

function TPedido.Get_Cod_Tip_Pagamento: tpCod_Tip_Pagamento;
begin
	Result := FdmPedido.pedidocod_tip_pagamento.AsInteger;
end;

function TPedido.Get_Cod_Nat_Operacao: tpCod_Nat_Operacao;
begin
   Result := FdmPedido.pedidocod_nat_operacao.AsInteger;
end;

function TPedido.Get_Cod_Vendedor: tpCod_Vendedor;
begin
   Result := FdmPedido.pedidocod_vendedor.AsInteger;
end;

function TPedido.Get_Num_Lista: tpNum_Lista;
begin
   Result := FdmPedido.pedidonum_lista.AsInteger;
end;

function TPedido.Get_Cod_Moeda: tpCod_Moeda;
begin
   Result := FdmPedido.pedidocod_moeda.AsInteger;
end;

function TPedido.Get_Cod_Transportadora: tpCod_Transportadora;
begin
   Result := FdmPedido.pedidocod_transportadora.AsInteger;
end;

function TPedido.Get_Cod_Grupo_Transporte: tpCod_Grupo_Transporte;
begin
   Result := FdmPedido.pedidocod_grupo_transporte.AsString;
end;
function TPedido.Get_Ies_Dat_Emissao: tpBoolean;
begin
	Result := FdmPedido.parametro_comercialies_dat_emissao.AsString = 'S';
end;

function TPedido.Get_Ies_Dat_Liberacao: tpBoolean;
begin
	Result := FdmPedido.parametro_comercialies_dat_liberacao.AsString = 'S';
end;

function TPedido.Get_Dat_Emissao: tpDat_Entrega;
begin
	Result := FdmPedido.pedidodat_emissao.AsDateTime;
end;

function TPedido.Get_Dat_Liberacao: tpDat_Emissao;
begin
	Result := FdmPedido.pedidodat_liberacao.AsDateTime;
end;

function TPedido.Get_Texto_Observacao: tpTexto;
begin
   Result := '(' +FdmPedido.pedidotexto.AsString +') ' +FdmPedido.pedidotxt_observacao.AsString;
end;

function TPedido.Get_Tip_Entrega: tpTip_Entrega;
begin
	Result := FdmPedido.pedidoies_tip_entrega.AsString;
end;

function TPedido.Get_Ies_Tip_Frete: tpIes_Tip_Frete;
begin
	Result := FdmPedido.pedidoies_tip_frete.AsInteger;
end;

function TPedido.Get_Vlr_Frete: tpVlr_Liquido;
begin
  Result := FdmPedido.pedidovlr_frete.AsCurrency
end;

procedure TPedido.Next_Pedido_Produto;
begin
   FdmPedido.pedido_produto.Next;
end;


procedure TPedido.First_Pedido_Produto;
begin
   FdmPedido.pedido_produto.First;
end;

function TPedido.Eof_Pedido_Produto: Boolean;
begin
   Result := not FdmPedido.pedido_produto.Eof;
end;

function TPedido.Get_Qtd_Produto: tpQtd_Produto;
begin
   Result := FdmPedido.pedido_produtoqtd_produto.AsFloat;
end;

function TPedido.Get_Qtd_Pendente: tpQtd_Produto;
begin
   Result := FdmPedido.pedido_produtoqtd_pendente.AsFloat;
end;

function TPedido.Get_Qtd_Romaneada: tpQtd_Produto;
begin
   Result := FdmPedido.pedido_produtoqtd_romaneada.AsFloat;
end;

function TPedido.Get_Texto_Produto: tpTexto;
begin
   Result := FdmPedido.pedido_produtotexto.AsString;
end;

function TPedido.Get_Texto_Observacao_Produto: tpTexto;
begin
   Result := FdmPedido.pedido_produtotxt_observacao.AsString;
end;

function TPedido.Get_Pct_Desconto: tpPct_Desconto;
begin
	Result := FdmPedido.pedido_produtopct_desconto.AsFloat;
end;

function TPedido.Get_Vlr_Desconto_Adic: tpVlr_Desconto_Adic;
begin
	Result := FdmPedido.pedido_produtovlr_desconto_adic.AsCurrency;
end;
function TPedido.Get_Dat_Entrega: tpDat_Entrega;
begin
	Result := FdmPedido.pedido_produtodat_entrega.AsDateTime;
end;

constructor TPedido.Create(Value: tpNum_Pedido; DisplayMensagem: Boolean);
begin
  FdmPedido	:= TdmPedido.Create(nil);

  FNum_Pedido			:= Value;
  FDisplayMensagem	:= DisplayMensagem;

  Get_Param;
end;


function TPedido.Find_Sequencia(Value: tpNum_Sequencia): Boolean;
begin
	with FdmPedido, pedido_produto do
      Result := Locate('num_sequencia', Value, []);
end;

destructor TPedido.Destroy;
begin
  FdmPedido.Free;
  inherited;
end;

function TPedido.Open_Pedido(Value: tpStatus): Boolean;
begin
   with FdmPedido, pedido do
   begin
      Close;
      ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
      ParamByName('num_pedido').AsFloat     := Num_Pedido;
      Open;
      Result   := not IsEmpty;
      if Result then
    	 Result	:= Open_Pedido_Produto(Value)
   end;
end;

procedure TPedido.Get_Param;
begin
	with FdmPedido, parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsSmallInt	:= vgCod_Empresa;
    Open;
  end;

	with FdmPedido, parametro_estoque do
  begin
    Close;
    ParamByName('cod_empresa').AsSmallInt	:= vgCod_Empresa;
    Open;
  end;
end;

end.
