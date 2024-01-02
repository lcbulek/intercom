unit SigIMP01_062;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBStoredProc;

type
  Tfrm_MudaNumPedidos = class(TForm)
    Label1: TLabel;
    edNumAnterior: TEdit;
    Label2: TLabel;
    edNovoNumero: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    spr_mudar_num_pedido: TIBStoredProc;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure edNumAnteriorKeyPress(Sender: TObject; var Key: Char);
    procedure edNovoNumeroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_MudaNumPedidos: Tfrm_MudaNumPedidos;

implementation

uses unConnection;

{$R *.dfm}

procedure Tfrm_MudaNumPedidos.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_MudaNumPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frm_MudaNumPedidos := nil;
end;

procedure Tfrm_MudaNumPedidos.BitBtn1Click(Sender: TObject);
begin
 if trim(edNumAnterior.Text) = '' then Exit;
 if trim(edNovoNumero.Text) = '' then Exit;

 { mudar numeração dos pedidos }
  with spr_mudar_num_pedido do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido_ant').AsFloat := StrToFloat(edNumAnterior.Text);
    ParamByName('num_pedido_nov').AsFloat := StrToFloat(edNovoNumero.Text);
    ExecProc;
 	  try
 	    Transaction.CommitRetaining;
      edNumAnterior.Clear;
      edNovoNumero.Clear;
      edNumAnterior.SetFocus;
    except
      MessageDlg('Erro ao tentar alterar o número do pedido.', mtInformation, [mbOK], 0);
 	    Transaction.RollbackRetaining;
    end;
  end;
end;

procedure Tfrm_MudaNumPedidos.edNumAnteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not(Key in ['0'..'9', #8]) then Key := #0;
end;

procedure Tfrm_MudaNumPedidos.edNovoNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not(Key in ['0'..'9', #8]) then Key := #0;
end;

end.
