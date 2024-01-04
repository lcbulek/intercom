unit SigIMP01_012;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnLayoutRelatorio, QuickRpt, QRCtrls, ExtCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  Trl_LayoutListaPrecos = class(Trl_LayoutRelatorio)
    ListaPreco: TIBQuery;
    ListaPreconum_lista: TSmallintField;
    ListaPrecodat_cadastro: TDateField;
    ListaPrecoden_lista: TIBStringField;
    ListaPrecoies_situacao: TIBStringField;
    ListaPrecocod_produto: TIBStringField;
    ListaPrecodat_preco: TDateField;
    ListaPrecovlr_unitario: TFloatField;
    ListaPrecoden_produto: TIBStringField;
    ListaPrecocod_fornecedor: TSmallintField;
    ListaPrecocod_prod_fornec: TIBStringField;
    ListaPrecoraz_social: TIBStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    ListaPreconom_cliente: TIBStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape1: TQRShape;
    ListaPrecocod_cliente: TIBStringField;
    QRShape2: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    ListaPrecoobs_preco: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListaPrecocod_produtoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rl_LayoutListaPrecos: Trl_LayoutListaPrecos;

implementation

uses unConnection;

{$R *.dfm}

procedure Trl_LayoutListaPrecos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ListaPreco.Close;
  Action := caFree;
  rl_LayoutListaPrecos := nil;
end;

procedure Trl_LayoutListaPrecos.ListaPrecocod_produtoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsString) = '' then Exit;
  with FmtProdutoCliente(ListaPrecocod_cliente.AsString, Sender.AsString) do
  begin
    Text := fmtProduto;
  end;

end;

end.
