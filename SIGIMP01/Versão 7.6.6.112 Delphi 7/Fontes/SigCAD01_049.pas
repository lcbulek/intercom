unit SigCAD01_049;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids;

type
  Tfr_CadEmbalagem = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetpeso_unitario: TIBBCDField;
    IBDataSetaltura: TIBBCDField;
    IBDataSetlargura: TIBBCDField;
    IBDataSetprofundidade: TIBBCDField;
    IBDataSetvolume: TIBBCDField;
    IBDataSetarea: TIBBCDField;
    IBDataSetcod_nbm: TLargeintField;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    dblkTipoEmbal: TDBLookupComboBox;
    dbedTipoEmbal: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    IBDataSetcod_produto_emb: TIBStringField;
    IBDataSetcod_tip_embal: TIBStringField;
    Produtos: TIBQuery;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto: TIBStringField;
    QrAuxcod_tip_embal: TIBStringField;
    QrAuxcod_tip_produto: TSmallintField;
    QrAuxden_tip_embal: TIBStringField;
    IBDataSetlkTipoEmbalagem: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    IBDataSetlkDenProduto: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    produto_embalagem: TIBDataSet;
    ds_produto_embalagem: TDataSource;
    produto_embalagemcod_empresa: TSmallintField;
    produto_embalagemcod_produto_emb: TIBStringField;
    produto_embalagemcod_produto: TIBStringField;
    produto_embalagemqtd_padrao: TIBBCDField;
    produto_embalagemvol_padrao: TIBBCDField;
    produto: TIBQuery;
    produtocod_produto: TIBStringField;
    produtoden_produto: TIBStringField;
    produto_embalagemlkDenProduto: TStringField;
    embalagem: TIBQuery;
    embalagemvolume: TIBBCDField;
    embalagemarea: TIBBCDField;
    VolProdutos: TIBQuery;
    VolProdutosvol_total: TIBBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetCalcFields(DataSet: TDataSet);
    procedure ProdutosBeforeOpen(DataSet: TDataSet);
    procedure produtoBeforeOpen(DataSet: TDataSet);
    procedure produto_embalagemNewRecord(DataSet: TDataSet);
    procedure produto_embalagemCalcFields(DataSet: TDataSet);
    procedure produto_embalagemBeforeDelete(DataSet: TDataSet);
    procedure produto_embalagemAfterDelete(DataSet: TDataSet);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure produto_embalagemBeforeEdit(DataSet: TDataSet);
    procedure produto_embalagemBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetAfterCancel(DataSet: TDataSet);

    function ProcuraVolumeEmb(CodProduto: String): Double;
    function ProcuraVolumeProdutos(CodEmpresa:Integer; CodProdutoEmb, CodProduto: String): Double;
    procedure produto_embalagemAfterCancel(DataSet: TDataSet);
    procedure produto_embalagemAfterPost(DataSet: TDataSet);
    
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value;
  end;

var
  fr_CadEmbalagem: Tfr_CadEmbalagem;

implementation

uses unConnection, UnMenuCompl, SigCAD01_048;

{$R *.dfm}

procedure Tfr_CadEmbalagem.Set_Value;
begin
  QrAux.Open;
  Produtos.Open;
  Produto.Open;
  with IBDataSet do
  begin
    Close;
    SelectSQL.Clear;
    if Assigned(fr_CadTipoEmbalagem) then 
    begin
      dbedTipoEmbal.Enabled := False;
      dblkTipoEmbal.Enabled := False; 
    
      SelectSQL.Text := 'select * from "embalagem"               '+
                        ' where "cod_empresa" = :cod_empresa     '+
                        '   and "cod_tip_embal" = :cod_tip_embal';
      ParamByName('cod_tip_embal').AsString := fr_CadTipoEmbalagem.IBDataSetcod_tip_embal.AsString;
    end
    else
      SelectSQL.Text := 'select * from "embalagem"               '+
                        ' where "cod_empresa" = :cod_empresa     ';

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
  produto_embalagem.Open;
  
end;


procedure Tfr_CadEmbalagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(fr_CadProdutoEmbalagem) then fr_CadProdutoEmbalagem.Close;

  IBDataSet.Close;
  QrAux.Close;
  Produtos.Close;
  Produto.Close;
  inherited;
  Action := caFree;
  fr_CadEmbalagem := nil;
end;

procedure Tfr_CadEmbalagem.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadEmbalagem.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
	if IBDataSet.State in [dsBrowse] then
  begin
  	if Pesquisar('embalagem') then
    	if AbrirPesquisa then
      	with IBDataSet do
        	try
          	 DisableControls;
            First;
            Locate('cod_produto_emb', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
          finally
          	EnableControls;
          end;
	end
  else
  if IBDataSet.State in [dsInsert, dsEdit] then
 	  if (dbedTipoEmbal.Focused) or (dblkTipoEmbal.Focused) then
    begin
    	if Pesquisar('tipo_embalagem') then
      	if AbrirPesquisa then
        	with IBDataSet do
          	IBDataSetcod_tip_embal.AsString := dmConnection.qryPesquisa.FieldByName('campo1').AsString;
    end;
end;

procedure Tfr_CadEmbalagem.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
  if ASsigned(fr_CadTipoEmbalagem) then IBDataSet.FieldByName('cod_tip_embal').AsString := fr_CadTipoEmbalagem.IBDataSetcod_tip_embal.AsString;
end;

procedure Tfr_CadEmbalagem.IBDataSetCalcFields(DataSet: TDataSet);
begin
  inherited;
  { Cálculo do volume }
  DataSet.FieldByName('volume').AsFloat := DataSet.FieldByName('altura').AsFloat *
                                           DataSet.FieldByName('largura').AsFloat *
                                           DataSet.FieldByName('profundidade').AsFloat;
  { Cálcula da área do chão da caixa }
  DataSet.FieldByName('area').AsFloat   := DataSet.FieldByName('largura').AsFloat *
                                           DataSet.FieldByName('profundidade').AsFloat;
end;

procedure Tfr_CadEmbalagem.ProdutosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Produtos.ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
end;

procedure Tfr_CadEmbalagem.produtoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  produto.ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
end;

procedure Tfr_CadEmbalagem.produto_embalagemNewRecord(DataSet: TDataSet);
begin
  inherited;
  produto_embalagem.FieldByName('cod_empresa').AsInteger := IBDataSet.FieldByName('cod_empresa').AsInteger;
  produto_embalagem.FieldByName('cod_produto_emb').AsString := IBDataSet.FieldByName('cod_produto_emb').AsString;
end;

function Tfr_CadEmbalagem.ProcuraVolumeProdutos(CodEmpresa:Integer; CodProdutoEmb, CodProduto: String): Double;
begin
   { Retornar o volume ocupado pelos produtos na embalagem }
   with VolProdutos do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := CodEmpresa;
     ParamByName('cod_produto_emb').AsString := CodProdutoEmb;
     ParamByName('cod_produto').AsString := CodProduto;
     Open;
     if IsEmpty then Result := -1
     else Result := FieldByName('vol_total').AsFloat;
     Close;
   end;
end;


function Tfr_CadEmbalagem.ProcuraVolumeEmb(CodProduto: String): Double;
begin
  { Verificar se item é embalagem, se for retorna o Volume da mesma }
  { Caso não seja embalagem, retorna 1                              }
  with embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := CodProduto;
    Open;    
    if IsEmpty then Result := 1
    else Result := embalagemvolume.AsFloat;
    Close;
  end;
end;

procedure Tfr_CadEmbalagem.produto_embalagemCalcFields(DataSet: TDataSet);
Var
  VolumePadrao: Double; 
  VolumeProd : Double;                 
begin
  if produto_embalagemqtd_padrao.AsFloat = 0 then Exit;
  { Calcular Volume Padrão para a embalagem, se o volume ocupado pelos produtos for maior }
  { que o volume da embalagem, alerta o operador. }
  VolumePadrao := produto_embalagemqtd_padrao.AsFloat * ProcuraVolumeEmb(produto_embalagem.FieldByName('cod_produto').AsString);
  if (VolumePadrao > IBDataSet.FieldByName('volume').AsFloat) then
  begin
    ShowMessage('Volume dos produtos excede volume da embalagem');
    Abort;
  end;
  produto_embalagemvol_padrao.AsFloat := VolumePadrao;
  //
  VolumeProd := ProcuraVolumeProdutos(produto_embalagemcod_empresa.AsInteger, 
                                      produto_embalagemcod_produto_emb.AsString,
                                      produto_embalagemcod_produto.AsString);
  
  if ((VolumePadrao + VolumeProd) > IBDataSet.FieldByName('volume').AsFloat) then
  begin
   ShowMessage('Excedeu o volume da embalagem');
   Abort;
  end;
end;

procedure Tfr_CadEmbalagem.produto_embalagemBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if Application.MessageBox('Confirma exclusão?', 'Exclusão', MB_ICONQUESTION+MB_YESNO) = IDNO 
  then Abort;
  IBDataSet.Edit;  
end;

procedure Tfr_CadEmbalagem.produto_embalagemAfterDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.Edit;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   finally
		Transaction.RollbackRetaining;
   end;
end;

procedure Tfr_CadEmbalagem.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
  if produto_embalagem.State in [dsEdit, dsInsert] then
     produto_embalagem.Post;

end;

procedure Tfr_CadEmbalagem.produto_embalagemBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.Edit;
end;

procedure Tfr_CadEmbalagem.produto_embalagemBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  IBDataSet.Edit;
end;

procedure Tfr_CadEmbalagem.IBDataSetAfterCancel(DataSet: TDataSet);
begin
  inherited;
  produto_embalagem.Cancel;  
end;

procedure Tfr_CadEmbalagem.produto_embalagemAfterCancel(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.Edit;
end;

procedure Tfr_CadEmbalagem.produto_embalagemAfterPost(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   finally
   	Transaction.RollbackRetaining;
   end;
end;

end.
