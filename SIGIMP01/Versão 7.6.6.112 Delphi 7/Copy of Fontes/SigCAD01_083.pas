unit SigCAD01_083;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnEntradaRelatorio, ActnList, ExtCtrls, ComCtrls, ToolWin, Mask,
  DBCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery;

type
  Tfr_Reclamacao = class(Trl_EntradaRelatorio)
    Panel2: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    edCodProdCli: TEdit;
    Produtos: TIBQuery;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto: TIBStringField;
    Produtosies_situacao: TIBStringField;
    Produtoscod_uni_medida: TSmallintField;
    Produtospes_unitario: TFloatField;
    ds_Produtos: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    actPesquisar: TAction;
    procedure edCodProdCliExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Reclamacao: Tfr_Reclamacao;

implementation

uses UnPesquisaProduto, unConnection, SigCAD01_084;

{$R *.dfm}

procedure Tfr_Reclamacao.edCodProdCliExit(Sender: TObject);
begin
  inherited;
  if trim(edCodProdCli.Text) = '' then
     if Produtos.Active then Produtos.Close;

  if trim(edCodProdCli.Text) <> '' then
  begin
    with Produtos do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('cod_prod_cli').AsString := trim(RetirarLixo(edCodProdCli.Text));
      Open;
    end;
  end;

end;

procedure Tfr_Reclamacao.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(fr_PesquisaProduto)) then
     Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);

  fr_PesquisaProduto.ShowModal;

  if (fr_PesquisaProduto.ModalResult = mrOk) then
  begin
    edCodProdCli.Text := fr_PesquisaProduto.qryProdutocalCodProdCli.AsString;
    edCodProdCli.SetFocus;
    edCodProdCliExit(nil);
 	end;


end;

procedure Tfr_Reclamacao.actImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(rl_Reclamacao)) then
     Application.CreateForm(Trl_Reclamacao, rl_Reclamacao);

  with rl_Reclamacao.qryRel do
  begin
    Close;
    SQl.Clear;
    SQL.Add('select a.*, b."den_produto", c."cod_cliente", c."cod_prod_cli"  ');
    SQL.Add('from "produto_reclamacao" a, "produto" b, "produto_cliente" c   ');
    SQL.Add('where a."cod_empresa" = :cod_empresa                            ');
    if Not(Produtoscod_produto.IsNull) then
    begin
      SQL.Add('  and a."cod_produto" = :cod_produto                            ');
      ParamByName('cod_produto').AsString := Produtoscod_produto.AsString;
    end;
    SQL.Add('  and a."ies_situacao" = ''A''                                  ');
    SQL.Add('  and b."cod_empresa" = a."cod_empresa"                         ');
    SQL.Add('  and b."cod_produto" = a."cod_produto"                         ');
    SQL.Add('  and c."cod_empresa" = a."cod_empresa"                         ');
    SQL.Add('  and c."cod_produto" = a."cod_produto"                         ');
    SQL.Add('order by a."cod_produto", a."dat_ocorrencia" desc               ');
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;

    Open;
    if Not(IsEmpty) then
       rl_Reclamacao.qkrPadrao.Preview;
  end;

end;

procedure Tfr_Reclamacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fr_Reclamacao := nil;
end;

end.
