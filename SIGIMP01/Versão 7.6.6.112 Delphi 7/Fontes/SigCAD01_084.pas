unit SigCAD01_084;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnLayoutRelatorio, QuickRpt, QRCtrls, ExtCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  Trl_Reclamacao = class(Trl_LayoutRelatorio)
    qryRel: TIBQuery;
    qryRelcod_empresa: TIntegerField;
    qryRelcod_produto: TIBStringField;
    qryRelsequencia: TIntegerField;
    qryReldat_ocorrencia: TDateField;
    qryReldat_solucao: TDateField;
    qryRelies_situacao: TIBStringField;
    qryReltxt_ocorrencia: TMemoField;
    qryRelden_produto: TIBStringField;
    qryRelcod_cliente: TIBStringField;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    qrlOrder: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryRelcod_produtoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rl_Reclamacao: Trl_Reclamacao;

implementation

uses unConnection;

{$R *.dfm}

procedure Trl_Reclamacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  rl_Reclamacao := nil;
end;

procedure Trl_Reclamacao.qryRelcod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  with FmtProdutoCliente(qryRelcod_cliente.AsString, qryRelcod_produto.AsString) do
       Text := fmtProduto;

end;

end.
