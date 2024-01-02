unit SigCAD01_076;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask, JvExControls,
  JvComponent, JvDBLookup, dbcgrids, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  Buttons;

type
  Tfr_CadSitEmbalagem = class(Tfr_Cad)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    edCodProduto: TEdit;
    IBDataSetcod_empresa: TIntegerField;
    IBDataSetcod_produto: TIBStringField;                            
    IBDataSetcod_gru_embalagem: TIntegerField;
    IBDataSettxt_observacao: TMemoField;
    embalagem_grupo: TIBQuery;
    embalagem_componente: TIBQuery;
    embalagem_grupocod_gru_embalagem: TIntegerField;
    embalagem_grupoden_gru_embalagem: TIBStringField;
    embalagem_componentecod_componente: TIntegerField;
    embalagem_componentecod_gru_embalagem: TIntegerField;
    embalagem_componenteden_componente: TIBStringField;
    embalagem_situacao: TIBDataSet;
    ds_embalagem_situacao: TDataSource;
    embalagem_situacaocod_empresa: TIntegerField;
    embalagem_situacaocod_produto: TIBStringField;
    embalagem_situacaocod_gru_embalagem: TIntegerField;
    embalagem_situacaocod_componente: TIntegerField;
    embalagem_situacaotxt_observacao: TMemoField;
    embalagem_situacaoies_situacao: TIBStringField;
    embalagem_situacaodat_cadastro: TDateField;
    IBDataSetlkGrupo: TStringField;
    embalagem_situacaolkComponente: TStringField;
    panGrupo: TPanel;
    panComponente: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    dlcGrupo: TJvDBLookupCombo;
    JvDBGrid1: TJvDBGrid;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Panel8: TPanel;
    Label5: TLabel;
    dlcComponente: TJvDBLookupCombo;
    Panel9: TPanel;
    DBMemo2: TDBMemo;
    Panel10: TPanel;
    JvDBGrid2: TJvDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    embalagem_situacaocalSituacao: TStringField;
    Produtos: TIBQuery;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto: TIBStringField;
    Produtosies_situacao: TIBStringField;
    Produtoscod_uni_medida: TSmallintField;
    Produtospes_unitario: TFloatField;
    ds_Produtos: TDataSource;
    actPesquisar: TAction;
    SpeedButton1: TSpeedButton;
    actImprimir: TAction;
    actImagens: TAction;
    BitBtn2: TBitBtn;
    Produtoscod_cliente: TIBStringField;
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetAfterScroll(DataSet: TDataSet);
    procedure embalagem_situacaoNewRecord(DataSet: TDataSet);
    procedure panGrupoEnter(Sender: TObject);
    procedure panComponenteEnter(Sender: TObject);
    procedure embalagem_situacaoCalcFields(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeScroll(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure embalagem_situacaoBeforeInsert(DataSet: TDataSet);
    procedure edCodProdutoExit(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure ProdutosBeforeOpen(DataSet: TDataSet);
    procedure ProdutosAfterScroll(DataSet: TDataSet);
    procedure actImagensExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadSitEmbalagem: Tfr_CadSitEmbalagem;

implementation

uses unConnection, SigCAD01_025, UnMenuCompl, UnPesquisaProduto, SigCAD01_079;

{$R *.dfm}

procedure Tfr_CadSitEmbalagem.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').Value := vgCod_Empresa;
  DataSet.FieldByName('cod_produto').Value := Produtos.FieldByName('cod_Produto').AsString;
end;

procedure Tfr_CadSitEmbalagem.FormShow(Sender: TObject);
begin
  inherited;
  IBDataSet.Open;
  embalagem_situacao.Open;

  with FmtProdutoCliente(Produtoscod_cliente.AsString, IBDataSet.FieldByName('cod_Produto').AsString) do
  begin
    edCodProduto.Text := fmtProduto;
  end;
  edCodProduto.SetFocus;
end;

procedure Tfr_CadSitEmbalagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  embalagem_grupo.Close;
  embalagem_componente.Close;
  embalagem_situacao.Close;
  IBDataSet.Close;

  Action := caFree;
  fr_CadSitEmbalagem := nil;
end;

procedure Tfr_CadSitEmbalagem.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('embalagem_situacao', IBDataSet.FieldByName('cod_produto').AsString) then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('lkgrupo', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadSitEmbalagem.IBDataSetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with embalagem_componente do
  begin
    Close;
    ParamByName('cod_gru_embalagem').AsInteger := IBDataSetcod_gru_embalagem.AsInteger;
    Open;
  end;
  if (embalagem_situacao.State in [dsEdit, dsInsert]) then Exit;
  { selecionar a situação das embalagens, conforme o grupo indicado }
  with embalagem_situacao do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := IBDataSetcod_empresa.AsInteger;
    ParamByName('cod_produto').AsString  := IBDataSetcod_produto.AsString;
    ParamByName('cod_gru_embalagem').AsInteger := IBDataSetcod_gru_embalagem.AsInteger;
    Open;
  end;
end;

procedure Tfr_CadSitEmbalagem.embalagem_situacaoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').AsInteger := IBDataSetcod_empresa.AsInteger;
  DataSet.FieldByName('cod_produto').AsString  := IBDataSetcod_produto.AsString;
  DataSet.FieldByName('cod_gru_embalagem').AsInteger := IBDataSetcod_gru_embalagem.AsInteger;
  DataSet.FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
  DataSet.FieldByName('ies_situacao').AsString := 'A';
end;

procedure Tfr_CadSitEmbalagem.panGrupoEnter(Sender: TObject);
begin
  inherited;
  ChangeDataSource(dsIBDataSet);
end;

procedure Tfr_CadSitEmbalagem.panComponenteEnter(Sender: TObject);
begin
  inherited;
  ChangeDataSource(ds_embalagem_situacao);
end;

procedure Tfr_CadSitEmbalagem.embalagem_situacaoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('ies_situacao').AsString = 'A' then
     DataSet.FieldByName('calSituacao').AsString := 'Em Andamento';
  if DataSet.FieldByName('ies_situacao').AsString = 'R' then
     DataSet.FieldByName('calSituacao').AsString := 'Resolvido';

end;

procedure Tfr_CadSitEmbalagem.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  embalagem_situacao.First;
  while Not(embalagem_situacao.Eof) do
     embalagem_situacao.Delete;
end;

procedure Tfr_CadSitEmbalagem.IBDataSetBeforeScroll(DataSet: TDataSet);
begin
  if embalagem_situacao.State in [dsInsert, dsEdit] then Abort;
end;

procedure Tfr_CadSitEmbalagem.IBDataSetBeforeInsert(DataSet: TDataSet);
begin                                                                 
  inherited;
  dlcGrupo.SetFocus;
end;

procedure Tfr_CadSitEmbalagem.embalagem_situacaoBeforeInsert(
  DataSet: TDataSet);
begin                                                             
  inherited;
  dlcComponente.SetFocus;
end;

procedure Tfr_CadSitEmbalagem.edCodProdutoExit(Sender: TObject);
begin
  inherited;
  if embalagem_situacao.State in [dsEdit, dsInsert] then Exit;
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

procedure Tfr_CadSitEmbalagem.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  if embalagem_situacao.State in [dsEdit, dsInsert] then Exit;
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

procedure Tfr_CadSitEmbalagem.ProdutosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.Close;
  embalagem_situacao.Close;
end;

procedure Tfr_CadSitEmbalagem.ProdutosAfterScroll(DataSet: TDataSet);
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

procedure Tfr_CadSitEmbalagem.actImagensExecute(Sender: TObject);
Var
  DirImagens, Produto: String;
begin
  inherited;
  if Produtos.IsEmpty then Exit;
  with dmConnection.cliente do
  begin
    Close;
    ParamByName('cod_cliente').AsString := Produtoscod_cliente.AsString;
    Open;
    DirImagens := FieldByName('lnk_imagens').AsString;
    Close;
  end;

  with FmtProdutoCliente(Produtoscod_cliente.AsString, Produtoscod_produto.AsString) do
  begin
    Produto := fmtProduto;
  end;
  if Not(Assigned(fr_Imagens)) then
     Application.CreateForm(Tfr_Imagens, fr_Imagens);

  fr_Imagens.Imagens.Directory := trim(DirImagens) + '\' + trim(Produto);
  fr_Imagens.Show;
end;

end.
