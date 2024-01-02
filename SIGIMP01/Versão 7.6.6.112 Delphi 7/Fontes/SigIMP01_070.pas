unit SigIMP01_070;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SigIMP01_011, DB, Excel2000, OleServer, IBCustomDataSet,
  IBQuery, ActnList, StdCtrls, ExtCtrls, JvExControls, JvComponent,
  JvDBLookup, ComCtrls, ToolWin;

type
  Trl_ListaPrecos1 = class(Trl_ListaPrecos)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FornecedoresAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rl_ListaPrecos1: Trl_ListaPrecos1;

implementation

uses unConnection;

{$R *.dfm}

procedure Trl_ListaPrecos1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  rl_ListaPrecos1 := nil;
end;

procedure Trl_ListaPrecos1.FornecedoresAfterScroll(DataSet: TDataSet);
begin
  with tipo_produto do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    ParamByName('cod_fornecedor').AsInteger := Fornecedorescod_fornecedor.AsInteger;
    ParamByName('num_pedido').Value := NumPedido;
    Open;
  end;


end;

end.
