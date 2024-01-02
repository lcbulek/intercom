unit SigIMP01_017;

interface

uses
  SysUtils, Classes, IBSQL, SigIMP01_009, unConnection, Dialogs, DB,
  IBCustomDataSet, IBQuery, DateUtils, UnType;

type
  TdmNF_liquidar = class(TDataModule)
    sqlLiquidar_NF: TIBSQL;
    sqlInsert_Doc: TIBSQL;
    sqlUpdate_Estoque: TIBSQL;
    sqlInsert_Estoque_Movimento: TIBSQL;
    qryParametro_Documento_Receber: TIBQuery;
    qryPagamento_Parcela: TIBQuery;
    qryPagamento_Parcelacod_pagamento: TSmallintField;
    qryPagamento_Parcelanum_parcela: TSmallintField;
    qryPagamento_Parcelapct_parcela: TIBBCDField;
    qryPagamento_Parcelapct_desconto: TIBBCDField;
    qryPagamento_Parcelapct_juro: TIBBCDField;
    qryPagamento_Parcelaqtd_prazo: TSmallintField;
    qryParametro_Documento_Recebercod_empresa: TSmallintField;
    qryParametro_Documento_Recebercod_categoria: TSmallintField;
    qryParametro_Documento_Recebercod_sub_categoria: TSmallintField;
    qryParametro_Documento_Recebercod_tip_documento: TSmallintField;
    qryParametro_Documento_Recebercod_tip_pagamento: TSmallintField;
    qryParametro_Documento_Recebercod_contacc: TIBStringField;
    qryParametro_Documento_Receberpct_juro: TIBBCDField;
    qryParametro_Documento_Receberpct_juro_dia: TIBBCDField;
    qryParametro_Documento_Recebervlr_multa: TIBBCDField;
    qryParametro_Documento_Recebervlr_multa_dia: TIBBCDField;
    qryParametro_Documento_Receberqtd_dia_protesto: TSmallintField;
    qryRomaneio_Produto: TIBQuery;
    qryRomaneio_Produtocod_empresa: TSmallintField;
    qryRomaneio_Produtonum_romaneio: TIntegerField;
    qryRomaneio_Produtonum_sequencia: TSmallintField;
    qryRomaneio_Produtocod_produto: TIBStringField;
    qryRomaneio_Produtoies_situacao: TIBStringField;
    qryRomaneio_Produtodat_entrega: TDateField;
    qryRomaneio_Produtoqtd_romaneada: TIBBCDField;
    qryRomaneio_Produtonum_nota_fiscal: TIntegerField;
    qryRomaneio_Produtonum_sequencia_nf: TSmallintField;
    qryRomaneio_Produtodat_cadastro: TDateTimeField;
    qryRomaneio_Kit: TIBQuery;
    qryRomaneio_Kitcod_empresa: TSmallintField;
    qryRomaneio_Kitnum_romaneio: TIntegerField;
    qryRomaneio_Kitnum_sequencia: TSmallintField;
    qryRomaneio_Kitcod_produto: TIBStringField;
    qryRomaneio_Kitcod_produto_componente: TIBStringField;
    qryRomaneio_Kities_situacao: TIBStringField;
    qryRomaneio_Kitdat_entrega: TDateField;
    qryRomaneio_Kitqtd_romaneada: TIBBCDField;
    qryRomaneio_Kitnum_nota_fiscal: TIntegerField;
    qryRomaneio_Kitnum_sequencia_nf: TSmallintField;
    qryRomaneio_Kitdat_cadastro: TDateTimeField;
    qryCliente: TIBQuery;
    qryClientecod_categoria: TSmallintField;
    qryClientecod_sub_categoria: TSmallintField;
    qryPedido_Parcela: TIBQuery;
    qryPedido_Parcelacod_empresa: TSmallintField;
    qryPedido_Parcelanum_parcela: TSmallintField;
    qryPedido_Parceladat_vencimento: TDateField;
    qryPedido_Parcelavlr_parcela: TIBBCDField;
    qryParcela_unica: TIBQuery;
    qryParcela_unicavalor: TIBBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

	TNF_Liquidar = class(TNF)
  private
   FdmNF_liquidar: TdmNF_liquidar;
   FNum_Documento: tpNum_Documento;
   FNum_Parcela: tpNum_Parcela;

   FChkKit : Boolean;

   function get_Num_Documento: tpNum_Documento;
   function get_Romaneio: Boolean;
	protected
 	 function Liquidar: Boolean; // Liquida a nota fiscal
   function UpdateEstoque: Boolean; // Baixa o estoque
   function InsertEstoque_movimento: Boolean; // Registra movimentação;
   function InsertDocumento_receber: Boolean; // Insere os docuemntos
	public
   function Execute(Commit: Boolean = True): Boolean; override;
   constructor Create(Num_NF: Integer; Nom_Tela: tpNom_Tela;
                      Mensagem: Boolean = True); override;
   destructor Destroy; override;
  published
   property Num_Documento: tpNum_Documento read get_Num_Documento;
   property ChkKit: Boolean read FChkKit write FChkKit;
	end;


//var dmNF_liquidar: TdmNF_liquidar;

implementation


{uses SigIMP01_037;}

{$R *.dfm}

{ TNF_Liquidar }

function TNF_Liquidar.UpdateEstoque: Boolean;
begin
	if not Ies_Controla_Estoque then
  begin
  	Result := True;
    Exit;
  end;

	Result := False;

  First_NF_Produto;
	while Eof_NF_Produto do
  begin
  	Result := InsertEstoque_movimento;
    if not Result then
    	Exit
    else
    	if not Ies_Kit then
      	with FdmNF_liquidar, sqlUpdate_Estoque do
   	  	begin
      	  Close;
			  ParamByName('cod_empresa').AsShort 	:= vgCod_Empresa;
  	     ParamByName('cod_produto').AsString	:= Cod_Produto;
    	     ParamByName('qtd_estoque').AsFloat	:= Qtd_Produto;
      	  if get_Romaneio then
          	  ParamByName('qtd_reservada').AsFloat		:= Qtd_Produto
	        else ParamByName('qtd_reservada').AsFloat	:= 0.000;
			     ExecQuery;
    	  	Result := RowsAffected > 0;
      	end
      else
      begin
        First_Kit;

        while Eof_Kit do
        begin
	      	with FdmNF_liquidar, sqlUpdate_Estoque do
  	 	  	begin
    	  		Close;
				    ParamByName('cod_empresa').AsShort 	:= vgCod_Empresa;
  	    		ParamByName('cod_produto').AsString	:= Cod_Componente;
    	    	ParamByName('qtd_estoque').AsFloat	:= Qtd_Produto *Qtd_Necessaria;
	      	  if get_Romaneio then
  	      		ParamByName('qtd_reservada').AsFloat		:= Qtd_Produto *Qtd_Necessaria
	  	      else ParamByName('qtd_reservada').AsFloat	:= 0.000;
				    ExecQuery;
    	  		Result := RowsAffected > 0;

            if not Result then
				    begin
				    	MessageDlg('Atenção. Problemas para atualizar o estoque do componente: ' +Cod_Componente, mtError, [mbCancel], 0);
				      Exit;
				    end; 
	      	end;
          Next_Kit;
        end;
      end;

    if not Result then
    begin
    	MessageDlg('Atenção. Problemas para atualizar o estoque do produto: ' +Cod_Produto, mtError, [mbCancel], 0);
      Exit;
    end;

    Next_NF_Produto;
	end;
end;

function TNF_Liquidar.Liquidar: Boolean;
begin
	Result := False;
	if InsertDocumento_receber then
  	if UpdateEstoque then
		  with FdmNF_liquidar, sqlLiquidar_NF do
		  begin
      	Close;
		   ParamByName('cod_empresa').AsShort       	:= vgCod_Empresa;
      	ParamByName('num_nota_fiscal').AsInteger	:= Num_NF;
        ParamByName('serie').AsString             := Serie;
		   ExecQuery;
      	Result := RowsAffected > 0;
	    end;
end;

function TNF_Liquidar.get_Romaneio: Boolean;
begin
  with FdmNF_liquidar, qryRomaneio_Produto do
  begin
    Close;
    ParamByName('cod_empresa').AsSmallInt 	 	:= vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger		:= Num_NF;
    ParamByName('num_sequencia_nf').AsSmallInt	:= Num_Sequencia;
    ParamByName('serie').AsString               := Serie;
    Open;
    Result := not IsEmpty;
  end;

  if not Result then
		with FdmNF_liquidar, qryRomaneio_Kit do
  	begin
     Close;
	  ParamByName('cod_empresa').AsSmallInt 	 	:= vgCod_Empresa;
  	  ParamByName('num_nota_fiscal').AsInteger	:= Num_NF;
     ParamByName('num_sequencia_nf').AsSmallInt	:= Num_Sequencia;
     ParamByName('serie').AsString              := Serie;
	  Open;
  	  Result := not IsEmpty;
   end;
end;

function TNF_Liquidar.get_Num_Documento: tpNum_Documento;
begin
  if FNum_Documento = 0 then
     FNum_Documento := InsertCode('documento_receber', 'num_documento', True);

  Result := FNum_Documento;
end;

function TNF_Liquidar.InsertDocumento_receber: Boolean;

	function Cod_Categoria(Cod_Cliente: tpCod_Cliente): tpCod_Categoria;
  begin
    with FdmNF_liquidar, qryCliente do
  	begin
    	Close;
      ParamByName('cod_cliente').AsString	:= Cod_Cliente;
      Open;
      Result	:= qryClientecod_categoria.AsInteger;
    end;
  end;

	function Cod_Sub_Categoria(Cod_Cliente: tpCod_Cliente): tpCod_Sub_Categoria;
  begin
    with FdmNF_liquidar, qryCliente do
  	begin
    	if not Active then
      begin
      	ParamByName('cod_cliente').AsString	:= Cod_Cliente;
	      Open;
      end;
      Result	:= qryClientecod_sub_categoria.AsInteger;
    end;
  end;

  function Exists_Pedido_Parcela: Boolean;
  begin
    with FdmNF_liquidar, qryPedido_Parcela do
    try
    	Close;
      ParamByName('cod_empresa').AsSmallInt		:= vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger	:= Num_NF;
      ParamByName('serie').AsString             := Serie;
      Open;
    finally
      Result	:= not IsEmpty;
    end;
  end;

begin
	if not Ies_Controla_Financeiro then
   begin
   	Result := True;
   	Exit;
   end;

	Result := False;
	with FdmNF_liquidar, qryParametro_Documento_Receber do
  begin
  	 Close;
      ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
      Open;
      if IsEmpty then
      begin
         MessageDlg('Atenção. Parâmetro para documento a receber não cadastrado.', mtError, [mbCancel], 0);
         Abort;
      end;
   end;

   with FdmNF_liquidar, qryPagamento_Parcela do
   begin
      Close;
      ParamByName('cod_pagamento').AsSmallInt := Cod_Pagamento;
      Open;
      if IsEmpty then
      begin
         MessageDlg('Atenção. Pagamento sem parcela cadastrada.', mtError, [mbCancel], 0);
         Abort;
      end;
   end;                                     

  if not Exists_Pedido_Parcela then
  begin
   	FdmNF_liquidar.qryPagamento_Parcela.First;
   	while not FdmNF_liquidar.qryPagamento_Parcela.Eof do
	   begin
  	   Inc(FNum_Parcela);
    	  with FdmNF_liquidar, sqlInsert_Doc do
      	try
         Close;
	       ParamByName('cod_empresa').AsShort          := vgCod_Empresa;
  	    ParamByName('num_documento').AsInteger		:= Num_Documento;
    	    ParamByName('num_parcela').AsShort				:= FNum_Parcela;
      	 ParamByName('num_nota_fiscal').AsInteger	   := Num_NF;
         ParamByName('serie').AsString               := Serie;
         ParamByName('cod_cliente').AsString			:= Cod_Cliente;
	       ParamByName('cod_contacc').AsString			:= FdmNF_liquidar.qryParametro_Documento_Recebercod_contacc.AsString;
  	    ParamByName('cod_categoria').AsShort			:= Cod_Categoria(Cod_Cliente);
         ParamByName('cod_sub_categoria').AsShort	   := Cod_Sub_Categoria(Cod_Cliente);
      	 ParamByName('cod_tip_documento').AsShort	   := FdmNF_liquidar.qryParametro_Documento_Recebercod_tip_documento.AsInteger;
         ParamByName('cod_tip_pagamento').AsShort	   := Cod_Tip_Pagamento;
	       ParamByName('dat_cadastro').AsDateTime		:= Buscar_DateTime;
  	    ParamByName('dat_emissao').AsDate				:= Buscar_DateTime;
    	    ParamByName('dat_vencimento').AsDate			:= IncDay(Buscar_DateTime, FdmNF_liquidar.qryPagamento_Parcelaqtd_prazo.AsInteger);
      	 ParamByName('ies_situacao').AsString			:= 'N';
         ParamByName('vlr_bruto').AsCurrency			:= (Vlr_Liquido/100) * FdmNF_liquidar.qryPagamento_Parcelapct_parcela.AsFloat;
	       ParamByName('vlr_juro').AsCurrency				:= 0.000;
  	    ParamByName('vlr_desconto').AsCurrency		:= (((Vlr_Liquido/100) * FdmNF_liquidar.qryPagamento_Parcelapct_parcela.AsFloat) /100) *qryPagamento_Parcelapct_desconto.AsFloat;
    	    ParamByName('txt_observacao').AsString		:= 'Nota fiscal: ' + IntToStr(Num_NF);
      	 ExecQuery;
	      finally
  	     if not Result then
	  	        Result := RowsAffected > 0;
      	end;
	      FdmNF_liquidar.qryPagamento_Parcela.Next;
  	 end;
	end else
  begin
      FdmNF_liquidar.qryPedido_Parcela.First;
      while not FdmNF_liquidar.qryPedido_Parcela.Eof do
      begin
        with FdmNF_liquidar, sqlInsert_Doc do
        try
        {Geração de doc a receber com base nas parcelas que serao cobradas dos clientes}
        Close;
        ParamByName('cod_empresa').AsShort       := vgCod_Empresa;
        ParamByName('num_documento').AsInteger	  := Num_Documento;
        ParamByName('num_parcela').AsShort		  := FdmNF_liquidar.qryPedido_Parcelanum_parcela.AsInteger;
        ParamByName('num_nota_fiscal').AsInteger := Num_NF;
        ParamByName('serie').AsString            := Serie;
        ParamByName('cod_cliente').AsString		  := Cod_Cliente;
        ParamByName('cod_contacc').AsString		  := FdmNF_liquidar.qryParametro_Documento_Recebercod_contacc.AsString;
        ParamByName('cod_categoria').AsShort	  := Cod_Categoria(Cod_Cliente);
        ParamByName('cod_sub_categoria').AsShort := Cod_Sub_Categoria(Cod_Cliente);
        ParamByName('cod_tip_documento').AsShort := FdmNF_liquidar.qryParametro_Documento_Recebercod_tip_documento.AsInteger;
        ParamByName('cod_tip_pagamento').AsShort := Cod_Tip_Pagamento;
        ParamByName('dat_cadastro').AsDateTime	  := Buscar_DateTime;
        ParamByName('dat_emissao').AsDate		  := Buscar_DateTime;
        ParamByName('dat_vencimento').AsDate	  := FdmNF_liquidar.qryPedido_Parceladat_vencimento.AsDateTime;
        ParamByName('ies_situacao').AsString	  := 'N';
        ParamByName('vlr_bruto').AsCurrency		  := FdmNF_liquidar.qryPedido_Parcelavlr_parcela.AsCurrency;
        ParamByName('vlr_juro').AsCurrency		  := 0.000;
        ParamByName('vlr_desconto').AsCurrency	  := 0.000;
        ParamByName('txt_observacao').AsString	  := 'Nota fiscal: ' + IntToStr(Num_NF);
        ExecQuery;
        finally
          if not Result then
            Result := RowsAffected > 0;
        end;

	      FdmNF_liquidar.qryPedido_Parcela.Next;
      end;
  end;
end;

function TNF_Liquidar.InsertEstoque_movimento: Boolean;
begin
	Result := False;
	if not Ies_Kit then
    with FdmNF_liquidar, sqlInsert_Estoque_Movimento do
    try
      Close;
      ParamByName('cod_empresa').AsShort       	:= vgCod_Empresa;
      ParamByName('num_movimento').AsInteger		:= InsertCode('estoque_movimento', 'num_movimento', True);
      ParamByName('cod_produto').AsString     	:= Cod_Produto;
      ParamByName('cod_operacao').AsShort     	:= Cod_Operacao;
      ParamByName('qtd_movimento').AsFloat    	:= Qtd_Produto;
      ParamByName('cst_movimento').AsCurrency		:= Vlr_Unitario;
      ParamByName('ies_tip_movto').AsString   	:= 'N';
      ParamByName('num_documento').AsInteger  	:= Num_NF;
      ParamByName('nom_tela').AsString        	:= Nom_Tela;
      ParamByName('login').AsString           	:= vgLogin;
      ExecQuery;
    finally
      Result := RowsAffected > 0;
    end
  else
  begin
    First_Kit;
    while Eof_Kit do
    begin
	  	with FdmNF_liquidar, sqlInsert_Estoque_Movimento do
  	  try
    	  Close;
        ParamByName('cod_empresa').AsShort       	:= vgCod_Empresa;
        ParamByName('num_movimento').AsInteger		:= InsertCode('estoque_movimento', 'num_movimento', True);
        ParamByName('cod_produto').AsString     	:= Cod_Componente;
        ParamByName('cod_operacao').AsShort     	:= Cod_Operacao;
        ParamByName('qtd_movimento').AsFloat    	:= (Qtd_Produto *Qtd_Necessaria);
        ParamByName('cst_movimento').AsCurrency		:= (Vlr_Unitario);
        ParamByName('ies_tip_movto').AsString   	:= 'N';
        ParamByName('num_documento').AsInteger  	:= Num_NF;
        ParamByName('nom_tela').AsString        	:= Nom_Tela;
        ParamByName('login').AsString           	:= vgLogin;
        ExecQuery;
      finally
      	Result := RowsAffected > 0;
      end;

      if not Result then
      	Exit;

	    Next_Kit;
  	end;
  end;                                                       
end;

function TNF_Liquidar.Execute(Commit: Boolean): Boolean;
begin
  Result := False;
  try
		if Open_NF then
    	if Check_NF(ctNormal) then Result := Liquidar
      else
      	try
        	Abort;
        finally
        	if FMensagem then
	        	MessageDlg('Atenção. Nota fiscal não está fechada.', mtError, [mbCancel], 0);
        end;

    	if Result then
      	if Commit then
        try
	      	After_Transaction(stCommitRetaining);
        finally
          if FMensagem then
	          MessageDlg('Processo concluído.', mtInformation, [mbOk], 0);
        end;
	finally
  	if Commit then
	  	After_Transaction(stRollbackRetaining);
  end;
end;

constructor TNF_Liquidar.Create(Num_NF: Integer; Nom_Tela: tpNom_Tela;
  Mensagem: Boolean);
begin
  inherited;
	FdmNF_liquidar	:= TdmNF_liquidar.Create(nil);
  FNum_Documento	:= 0;
	FNum_Parcela		:= 0;
end;

destructor TNF_Liquidar.Destroy;
begin
  FdmNF_liquidar.Free;
  inherited;
end;

end.
