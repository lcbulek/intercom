unit SigCAD01_080;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, Grids, DBGrids, Buttons;

type
  Tfr_CadReclamacoes = class(Tfr_Cad)
    IBDataSetcod_empresa: TIntegerField;
    IBDataSetcod_produto: TIBStringField;
    IBDataSetsequencia: TIntegerField;
    IBDataSetdat_ocorrencia: TDateField;
    IBDataSetdat_solucao: TDateField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSettxt_ocorrencia: TMemoField;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Panel3: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    Label8: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    GroupBox1: TGroupBox;
    dbmOcorrencia: TDBMemo;
    DBGrid1: TDBGrid;
    IBDataSetcalSituacao: TStringField;
    actPesquisar: TAction;
    SpeedButton1: TSpeedButton;
    Produtos: TIBQuery;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto: TIBStringField;
    Produtosies_situacao: TIBStringField;
    Produtoscod_uni_medida: TSmallintField;
    Produtospes_unitario: TFloatField;
    ds_produtos: TDataSource;
    actImprimir: TAction;
    BitBtn1: TBitBtn;
    edCodProduto: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetCalcFields(DataSet: TDataSet);
    procedure actPesquisarExecute(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure ProdutosAfterScroll(DataSet: TDataSet);
    procedure ProdutosBeforeOpen(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure actImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadReclamacoes: Tfr_CadReclamacoes;

implementation

uses unConnection, UnMenuCompl, UnPesquisaProduto, SigCAD01_084;

{$R *.dfm}

procedure Tfr_CadReclamacoes.FormShow(Sender: TObject);
begin
  inherited;
  IBDataSet.Open;
end;                          

procedure Tfr_CadReclamacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  IBDataSet.Close;
  Action := caFree;
  fr_CadReclamacoes := nil;
end;

procedure Tfr_CadReclamacoes.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').Value := vgCod_Empresa;
  DataSet.FieldByName('cod_produto').Value := Produtos.FieldByName('cod_Produto').AsString;
  DataSet.FieldByName('sequencia').AsInteger := InsertCode('produto_reclamacao', 'sequencia', true);
  DataSet.FieldByName('ies_situacao').Value := 'A';  { A - situação default, não solucionado }
  DataSet.FieldByName('dat_ocorrencia').Value := Buscar_DateTime;
end;

procedure Tfr_CadReclamacoes.IBDataSetCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('ies_situacao').AsString = 'A' then
     DataSet.FieldByName('calSituacao').AsString := 'Não solucionado'
  else if DataSet.FieldByName('ies_situacao').AsString = 'F' then
     DataSet.FieldByName('calSituacao').AsString := 'Solucionado';
end;

procedure Tfr_CadReclamacoes.actPesquisarExecute(Sender: TObject);
begin
  inherited;

  if Not(Assigned(fr_PesquisaProduto)) then
     Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);

  fr_PesquisaProduto.ShowModal;

  if (fr_PesquisaProduto.ModalResult = mrOk) then
  begin
    edCodProduto.Text := fr_PesquisaProduto.qryProdutocod_produto.AsString;
    edCodProduto.SetFocus;
    edCodProdutoExit(nil);
 	end;

end;

procedure Tfr_CadReclamacoes.edCodProdutoExit(Sender: TObject);
begin
  inherited;
  if trim(edCodProduto.Text) <> '' then
  begin
    with Produtos do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('cod_produto').AsString := trim(RetirarLixo(edCodProduto.Text));
      Open;
    end;
  end;

end;

procedure Tfr_CadReclamacoes.ProdutosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (IBDataSet.State in [dsEdit, dsInsert]) then Exit;

  with IBDataSet do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_produto').AsString := Produtoscod_produto.AsString;
    Open;
  end;
end;

procedure Tfr_CadReclamacoes.ProdutosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.Close;
end;

procedure Tfr_CadReclamacoes.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  dbmOcorrencia.SetFocus;
end;

procedure Tfr_CadReclamacoes.actImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(rl_Reclamacao)) then
     Application.CreateForm(Trl_Reclamacao, rl_Reclamacao);

  with rl_Reclamacao.qryRel do
  begin
    Close;
    SQl.Clear;
    SQL.Add('select a.*, b."den_produto", b."cod_cliente", b."cod_produto"   ');
    SQL.Add('from "produto_reclamacao" a, "produto" b                        ');
    SQL.Add('where a."cod_empresa" = :cod_empresa                            ');
    if Not(Produtoscod_produto.IsNull) then
    begin
      SQL.Add('  and a."cod_produto" = :cod_produto                            ');
      ParamByName('cod_produto').AsString := Produtoscod_produto.AsString;
    end;
    SQL.Add('  and a."ies_situacao" = ''A''                                  ');
    SQL.Add('  and b."cod_empresa" = a."cod_empresa"                         ');
    SQL.Add('  and b."cod_produto" = a."cod_produto"                         ');
    SQL.Add('order by a."cod_produto", a."dat_ocorrencia" desc               ');
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;

    Open;
    if Not(IsEmpty) then
       rl_Reclamacao.qkrPadrao.Preview;
  end;

end;

end.
