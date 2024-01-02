unit SigCAD01_035;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmImpCadProdutos = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpCadProdutos: TfrmImpCadProdutos;

implementation

{$R *.dfm}

procedure TfrmImpCadProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmImpCadProdutos := nil;
end;

end.
