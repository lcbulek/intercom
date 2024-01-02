unit SigIMP01_002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, JvBaseDlg,
  JvSelectDirectory, JvDialogs, JvComponentBase, JvBrowseFolder;

type
  Tfr_ParametrosComercial = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetcod_moeda: TSmallintField;
    pgcParametro_Comercial: TPageControl;
    tbsPedido: TTabSheet;
    IBDataSetprox_num_pedido: TIntegerField;
    IBDataSetdias_entrega: TSmallintField;
    Label20: TLabel;
    DBEdit3: TDBEdit;
    JvSelectDirectory: TJvSelectDirectory;
    TabSheet1: TTabSheet;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    IBDataSeties_modelo: TIntegerField;
    IBDataSetmod_lista_preco: TBlobField;
    IBDataSetmod_pedido_imp: TBlobField;
    IBDataSetmod_romaneio: TBlobField;
    Button1: TButton;
    Button2: TButton;
    OpenDialog: TOpenDialog;
    lbLista: TLabel;
    lbPedido: TLabel;
    IBDataSetdir_planilhas: TIBStringField;
    Button4: TButton;
    lbProduto: TLabel;
    IBDataSetmod_cad_produto: TBlobField;
    Label1: TLabel;
    dbeDir_Planilhas: TDBEdit;
    sbDirPlanProdutos: TSpeedButton;
    Pastas: TJvBrowseForFolderDialog;
    TabSheet2: TTabSheet;
    IBDataSetcod_tip_embarque: TSmallintField;
    tipo_embarque: TIBQuery;
    tipo_embarquecod_tip_embarque: TSmallintField;
    tipo_embarqueden_tip_embarque: TIBStringField;
    IBDataSetlkpTipoEmbarque: TStringField;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    IBDataSetmod_ship_list: TBlobField;
    Button5: TButton;
    lbShipList: TLabel;
    IBDataSetmod_plan_excel: TBlobField;
    Button6: TButton;
    Button7: TButton;
    lbItensEmb: TLabel;
    IBDataSetmod_plan_itens_emb: TBlobField;
    IBDataSetmod_plan_itens_emb_fat: TBlobField;
    Button8: TButton;
    lbItensEmbFat: TLabel;
    IBDataSetdias_inspecao: TSmallintField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    lbPlanBranca: TLabel;
    Button9: TButton;
    Button10: TButton;
    lbAlteracaoPedidos: TLabel;
    lbAlteracaoFaturas: TLabel;
    IBDataSetmod_plan_alt_ped: TBlobField;
    IBDataSetmod_plan_alt_fat: TBlobField;
    IBDataSetserie_nf: TIBStringField;
    IBDataSetmod_plan_pedido: TBlobField;
    Button3: TButton;
    lbModeloPedidos: TLabel;
    tbsComissao: TTabSheet;
    IBDataSeties_base_comissao: TIBStringField;
    DBRadioGroup1: TDBRadioGroup;
    Button11: TButton;
    lbProdEmbarcados: TLabel;
    IBDataSetmod_plan_itens_emb_prod: TBlobField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dsIBDataSetDataChange(Sender: TObject; Field: TField);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure sbDirPlanProdutosClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
  protected
    procedure Set_Value; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_ParametrosComercial: Tfr_ParametrosComercial;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_ParametrosComercial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	fr_ParametrosComercial := nil;
end;

procedure Tfr_ParametrosComercial.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_empresa.AsInteger := vgCod_Empresa;
  IBDataSetserie_nf.Value := '1';
  IBDataSeties_base_comissao.Value := '2';
end;

procedure Tfr_ParametrosComercial.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_ParametrosComercial.Set_Value;
begin
  inherited;
	pgcParametro_Comercial.ActivePage := tbsPedido;

	IBDataSet.Close;
  IBDataSet.ParamByName('cod_empresa').AsShort := vgCod_Empresa;
  OpenTable(IBDataSet);
end;

procedure Tfr_ParametrosComercial.Button1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_lista_preco.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 0);
    IBDataSet.Post;
  end;
end;

procedure Tfr_ParametrosComercial.Button2Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_pedido_imp.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 1);
    IBDataSet.Post;
  end;

end;

procedure Tfr_ParametrosComercial.dsIBDataSetDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if GetBit(IBDataSeties_modelo.AsInteger, 0) = 0 then lbLista.Caption := 'Não adicionada'
                                                  else lbLista.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 1) = 0 then lbPedido.Caption := 'Não adicionado'
                                                  else lbPedido.Caption := 'Adicionado';
  if GetBit(IBDataSeties_modelo.AsInteger, 3) = 0 then lbProduto.Caption := 'Não adicionada'
                                                  else lbProduto.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 4) = 0 then lbShipList.Caption := 'Não adicionada'
                                                  else lbShipList.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 5) = 0 then lbItensEmb.Caption := 'Não adicionada'
                                                  else lbItensEmb.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 6) = 0 then lbItensEmbFat.Caption := 'Não adicionada'
                                                  else lbItensEmbFat.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 7) = 0 then lbPlanBranca.Caption := 'Não adicionada'
                                                  else lbPlanBranca.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 8) = 0 then lbAlteracaoPedidos.Caption := 'Não adicionada'
                                                  else lbAlteracaoPedidos.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 9) = 0 then lbAlteracaoFaturas.Caption := 'Não adicionada'
                                                  else lbAlteracaoFaturas.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 10) = 0 then lbModeloPedidos.Caption := 'Não adicionada'
                                                   else lbModeloPedidos.Caption := 'Adicionada';
  if GetBit(IBDataSeties_modelo.AsInteger, 11) = 0 then lbProdEmbarcados.Caption := 'Não adicionada'
                                                   else lbProdEmbarcados.Caption := 'Adicionada';

end;

procedure Tfr_ParametrosComercial.Button4Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_cad_produto.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 3);
    IBDataSet.Post;
  end;

end;

procedure Tfr_ParametrosComercial.Button5Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then                                                   
  begin
    IBDataSet.Edit;
    IBDataSetmod_romaneio.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 2);
    IBDataSetmod_ship_list.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 4);
    IBDataSet.Post;
  end;

end;

procedure Tfr_ParametrosComercial.Button6Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_plan_excel.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 7);    
    IBDataSet.Post;
  end;

end;

procedure Tfr_ParametrosComercial.sbDirPlanProdutosClick(Sender: TObject);
begin
  inherited;
 	if IBDataSet.State in [dsInsert, dsEdit] then
  begin
    Pastas.Directory := IBDataSetdir_planilhas.AsString;
    if Pastas.Execute then
    begin
      IBDataSetdir_planilhas.AsString := Pastas.Directory;           
    end;
  end;
end;

procedure Tfr_ParametrosComercial.Button7Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_plan_itens_emb.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 5);
    IBDataSet.Post;
  end;

end;

procedure Tfr_ParametrosComercial.Button8Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_plan_itens_emb_fat.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 6);
    IBDataSet.Post;
  end;

end;

procedure Tfr_ParametrosComercial.Button9Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_plan_alt_ped.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 8);
    IBDataSet.Post;
  end;

end;

procedure Tfr_ParametrosComercial.Button10Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_plan_alt_fat.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 9);
    IBDataSet.Post;
  end;
end;

procedure Tfr_ParametrosComercial.Button3Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_plan_pedido.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 10);
    IBDataSet.Post;
  end;

end;

procedure Tfr_ParametrosComercial.Button11Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    IBDataSet.Edit;
    IBDataSetmod_plan_itens_emb_prod.LoadFromFile(OpenDialog.FileName);
    IBDataSeties_modelo.AsInteger := SetBit(IBDataSeties_modelo.AsInteger, 11);
    IBDataSet.Post;
  end;

end;

end.
