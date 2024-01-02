unit SigIMP01_034;

interface

uses
  SysUtils, Classes, IBSQL, unConnection, SigIMP01_000, Dialogs, Controls, UnType;

type
  TdmPedido_cancelar = class(TDataModule)
    sqlUpdate_Pedido: TIBSQL;
    sqlUpdate_Pedido_Produto: TIBSQL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

	TPedido_Cancelar_Produto = class(TObject)
  private
  	FdmPedido_Cancelar: TdmPedido_Cancelar;    
  	FNum_Pedido: tpNum_Pedido;
    FNum_Sequencia: tpNum_Sequencia;
    FMensagem: Boolean;
    FCommit: Boolean;

    function Update_Pedido_Produto: Boolean;
    procedure After_Transaction(Value: tpTransaction);
  public
    constructor Create(Num_Pedido: tpNum_Pedido; Num_Sequencia: tpNum_Sequencia;
    	Mensagem: Boolean = False; Commit: Boolean = False);
    function Processar: Boolean;
    destructor Destroy; override;
  published
  	property Num_Pedido: tpNum_Pedido read FNum_Pedido;
    property Num_Sequencia: tpNum_Sequencia read FNum_Sequencia;
  end;

  TPedido_Cancelar = class(TPedido)
  private
  	FdmPedido_Cancelar: TdmPedido_Cancelar;
  	FCancelar_Produto: TPedido_Cancelar_Produto;

  	function Update_Pedido: Boolean;

  	function Cancel_Pedido: Boolean;
		function Cancel_Pedido_Produto: Boolean;
  public
    function Execute(Commit: Boolean = True): Boolean; override;
    constructor Create(Value: Int64; Mensagem: Boolean = False); override;
    destructor Destroy; override;
  end;

implementation


{$R *.dfm}

function TPedido_Cancelar.Cancel_Pedido: Boolean;
begin
  Result	:= Update_Pedido;
end;

function TPedido_Cancelar.Cancel_Pedido_Produto: Boolean;
begin
	FCancelar_Produto := TPedido_Cancelar_Produto.Create(Num_Pedido, Num_Sequencia);
  with FCancelar_Produto do
  	try
      Processar;
    finally
    	Free;
    end;

  Result := True;
end;

constructor TPedido_Cancelar.Create(Value: Int64; Mensagem: Boolean);
begin
  inherited;
	FdmPedido_Cancelar	:= TdmPedido_Cancelar.Create(nil);
end;

destructor TPedido_Cancelar.Destroy;
begin
	FdmPedido_Cancelar.Free;
  inherited;
end;

function TPedido_Cancelar.Execute(Commit: Boolean): Boolean;
begin
	Result := False;
	try
	  if Open_Pedido(ctCancelado) then
    begin
    	if FDisplayMensagem then
	      if MessageDlg('Deseja realmente cancelar o pedido ' +IntToStr(Num_Pedido) +'?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        	Exit;

      First_Pedido_Produto;
      while Eof_Pedido_Produto do
        if Cancel_Pedido_Produto then
          Next_Pedido_Produto
        else Exit;

      Result	:= Cancel_Pedido;
      if Result then
      	if Commit then After_Transaction(stCommitRetaining);
    end;
  finally
  	if Commit then After_Transaction(stRollbackRetaining);
  end;
end;

function TPedido_Cancelar.Update_Pedido: Boolean;
begin
	with FdmPedido_Cancelar, sqlUpdate_Pedido do
  try
		Close;
	  ParamByName('cod_empresa').AsShort  := vgCod_Empresa;
   	ParamByName('num_pedido').AsInt64 := Num_Pedido;
   	ExecQuery;
  finally
	  Result := (RowsAffected > 0);
   end;
end;

{ TPedido_Cancelar_Produto }

constructor TPedido_Cancelar_Produto.Create(Num_Pedido: tpNum_Pedido;
  Num_Sequencia: tpNum_Sequencia; Mensagem: Boolean; Commit: Boolean);
begin
	FdmPedido_Cancelar	:= TdmPedido_Cancelar.Create(nil);
  FNum_Pedido			:= Num_Pedido;
  FNum_Sequencia	:= Num_Sequencia;
  FCommit					:= Commit;
  FMensagem				:= Mensagem;
end;

procedure TPedido_Cancelar_Produto.After_Transaction(Value: tpTransaction);
begin
	case Value of
   stCommit:	dmConnection.dbSig.DefaultTransaction.Commit;
   stCommitRetaining:	dmConnection.dbSig.DefaultTransaction.CommitRetaining;
   stRollback:	dmConnection.dbSig.DefaultTransaction.Rollback;
   stRollbackRetaining:	dmConnection.dbSig.DefaultTransaction.RollbackRetaining;
   end;
end;

function TPedido_Cancelar_Produto.Processar: Boolean;
begin
	Result	:= False;
	if FMensagem then
  	if MessageDlg('Deseja realmente cancelar o produto?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    	Exit;

  Result	:= Update_Pedido_Produto;
  if Result then
  	if FCommit then
      After_Transaction(stCommitRetaining);
end;

function TPedido_Cancelar_Produto.Update_Pedido_Produto: Boolean;
begin
	with FdmPedido_Cancelar, sqlUpdate_Pedido_Produto do
  try
		Close;
	   ParamByName('cod_empresa').AsShort    := vgCod_Empresa;
   	ParamByName('num_pedido').AsInt64    := FNum_Pedido;
	   ParamByName('num_sequencia').AsShort	 := FNum_Sequencia;
   	ExecQuery;
  finally
	  Result := (RowsAffected > 0);
   end;
end;

destructor TPedido_Cancelar_Produto.Destroy;
begin
	FdmPedido_Cancelar.Free;
  inherited;
end;

end.
