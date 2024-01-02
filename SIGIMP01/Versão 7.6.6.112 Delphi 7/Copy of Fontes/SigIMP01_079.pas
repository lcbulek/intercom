unit SigIMP01_079;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls, ExtDlgs, Buttons;

type
  Tfr_CadImagem = class(Tfr_Cad)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Imagem: TImage;
    Label5: TLabel;
    edtImagem: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value;
  end;

var
  fr_CadImagem: Tfr_CadImagem;

implementation

uses unConnection, SigCAD01_025, SigIMP01_045;

{$R *.dfm}

procedure Tfr_CadImagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  Action := caFree;
  fr_CadImagem := nil;
end;


procedure Tfr_CadImagem.Set_Value;
begin
  edtImagem.Text := dmCOM.GetPathImageProduto(fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString);

  try
    Imagem.Picture.LoadFromFile(edtImagem.Text);
  except
    edtImagem.Clear;
    Imagem.Picture := nil;
    Exit;
  end;
end;

procedure Tfr_CadImagem.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

end.
