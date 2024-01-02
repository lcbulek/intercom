unit SigCAD01_085;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnLayoutPadrao, QRCtrls, QuickRpt, ExtCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  Trl_SituacaoEmb = class(Trl_LayoutPadrao)
    Visual: TIBQuery;
    Visualcod_produto: TIBStringField;
    Visualden_produto: TIBStringField;
    Visualcod_gru_embalagem: TIntegerField;
    Visualden_gru_embalagem: TIBStringField;
    Visualtxt_observacao: TMemoField;
    Visualcod_componente: TIntegerField;
    Visualden_componente: TIBStringField;
    Visualdat_cadastro: TDateField;
    Visualies_situacao: TIBStringField;
    Visualtxt_obs_componente: TMemoField;
    Visualcod_cliente: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Visualies_situacaoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Visualcod_produtoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rl_SituacaoEmb: Trl_SituacaoEmb;

implementation

uses unConnection;

{$R *.dfm}

procedure Trl_SituacaoEmb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  rl_SituacaoEmb := nil;
end;

procedure Trl_SituacaoEmb.Visualies_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Visualies_situacao.AsString = 'A' then Text := 'Em Andamento'
  else if Visualies_situacao.AsString = 'R' then text := 'Resolvido';

end;

procedure Trl_SituacaoEmb.Visualcod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  with FmtProdutoCliente(Visualcod_cliente.AsString, Visualcod_produto.AsString) do
       Text := fmtProduto;

end;

end.
