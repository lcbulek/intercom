unit SigIMP01_080;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, StdCtrls, Mask, DBCtrls,
  QRCtrls, DB, IBCustomDataSet, IBQuery, unConnection, SigIMP01_006;

type
  TfrmImagemProdutos = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRImage1: TQRImage;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    produtos_sci: TIBQuery;
    produtos_scicod_produto: TIBStringField;
    produtos_sciden_produto: TIBStringField;
    produtos_sciden_produto_det: TMemoField;
    produtos_scincm_cod: TIntegerField;
    produtos_scivlr_unitario: TFloatField;
    produtos_scipes_unitario: TFloatField;
    produtos_scinum_sequencia: TSmallintField;
    produtos_sciqtd_produto: TIBBCDField;
    produtos_scivlr_liquido: TIBBCDField;
    produtos_scipath_imagem: TIBStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure produtos_scicod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure produtos_scincm_codGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImagemProdutos: TfrmImagemProdutos;

implementation

{$R *.dfm}

procedure TfrmImagemProdutos.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  try
    QRImage1.Picture.LoadFromFile(produtos_scipath_imagem.AsString);
  except
    QRImage1.Picture := nil;
  end;
end;

procedure TfrmImagemProdutos.produtos_scicod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '' then Exit;                                                   

  with FmtProdutoCliente(fr_ManPedido.qryPedidocod_cliente.AsString, Sender.AsString) do
  begin
    Text := fmtProduto;
  end;


end;

procedure TfrmImagemProdutos.produtos_scincm_codGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Not(Sender.IsNull) then Text := FormatarNcm(Sender.AsInteger, fr_ManPedido.qryPedidocod_cliente.AsString, 'D');
end;

procedure TfrmImagemProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmImagemProdutos := nil;
  produtos_sci.Close;
end;

end.
