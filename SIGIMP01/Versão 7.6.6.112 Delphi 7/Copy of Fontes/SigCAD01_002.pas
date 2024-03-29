unit SigCAD01_002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin,
  JvComponentBase, JvBaseDlg, JvBrowseFolder, JvSelectDirectory;

type
  Tfr_CadEmpresa = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetnom_empresa: TIBStringField;
    IBDataSetnom_empresa_reduz: TIBStringField;
    IBDataSeties_situacao: TIBStringField;                     
    IBDataSetcnpj: TIBStringField;
    IBDataSetrua: TIBStringField;
    IBDataSetcompl: TIBStringField;
    IBDataSetbairro: TIBStringField;
    IBDataSetcep: TIBStringField;
    IBDataSetcx_postal: TIBStringField;
    IBDataSetnum_fone: TIBStringField;
    IBDataSetnum_fax: TIBStringField;
    IBDataSete_mail: TIBStringField;
    IBDataSetnum_reg_junta: TIBStringField;
    IBDataSetdat_cadastro_junta: TDateField;
    IBDataSetdat_fundacao: TDateField;
    IBDataSetdat_cadastro: TDateField;
    IBDataSetcod_cidade: TIntegerField;
    IBDataSetobservacao: TIBStringField;
    IBDataSetlkNomCidade: TIBStringField;
    Label1: TLabel;
    dbedcod_empresa: TDBEdit;
    Label2: TLabel;
    dbednom_empresa: TDBEdit;
    Label3: TLabel;
    dbednom_empresa_reduz: TDBEdit;
    Label7: TLabel;
    dbedrua: TDBEdit;
    Label8: TLabel;
    dbedcompl: TDBEdit;
    Label9: TLabel;
    dbednumero: TDBEdit;
    Label10: TLabel;
    dbedbairro: TDBEdit;
    Label11: TLabel;
    dbedcep: TDBEdit;
    Label12: TLabel;
    dbednum_fone: TDBEdit;
    Label14: TLabel;
    dbede_mail: TDBEdit;
    Label18: TLabel;
    dbeddat_cadastro: TDBEdit;
    Label19: TLabel;
    dblklkNomCidade: TDBLookupComboBox;
    IBDataSetnumero: TSmallintField;
    IBDataSetinsc_estadual: TIBStringField;
    IBDataSetlocal_logotipo: TIBStringField;
    Label4: TLabel;
    edtlocal_logotipo: TDBEdit;
    SpeedButton1: TSpeedButton;
    actLocal_Logotipo: TAction;
    QrAuxcod_cidade: TSmallintField;
    QrAuxnom_cidade: TIBStringField;
    edtcod_cidade: TDBEdit;
    IBDataSetcod_idioma: TSmallintField;
    Idiomas: TIBQuery;
    Idiomascod_idioma: TSmallintField;
    Idiomasden_idioma: TIBStringField;
    IBDataSetlkpIdiomas: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    actImagens: TAction;
    OpenDialog: TOpenDialog;
    GroupBox1: TGroupBox;
    Parametro_Comercial: TIBDataSet;
    IBDataSetlkpTipoEmbarque: TStringField;
    dsParametro_Comercial: TDataSource;
    tipo_embarque: TIBQuery;
    tipo_embarquecod_tip_embarque: TSmallintField;
    tipo_embarqueden_tip_embarque: TIBStringField;
    pgcParametro_Comercial: TPageControl;
    tbsPedido: TTabSheet;
    Label5: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    tbsFatura: TTabSheet;
    Label16: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    tbsModelos: TTabSheet;
    lbLista: TLabel;
    lbPedido: TLabel;
    lbProduto: TLabel;
    Label17: TLabel;
    sbDirPlanProdutos: TSpeedButton;
    lbShipList: TLabel;
    lbItensEmb: TLabel;
    lbItensEmbFat: TLabel;
    lbPlanBranca: TLabel;
    lbAlteracaoPedidos: TLabel;
    lbAlteracaoFaturas: TLabel;
    lbModeloPedidos: TLabel;
    lbProdEmbarcados: TLabel;
    Button2: TButton;
    Button4: TButton;
    dbeDir_Planilhas: TDBEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button3: TButton;
    Button11: TButton;
    tbsComissao: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    Pastas: TJvBrowseForFolderDialog;
    JvSelectDirectory: TJvSelectDirectory;
    Parametro_Comercialcod_empresa: TSmallintField;
    Parametro_Comercialcod_moeda: TSmallintField;
    Parametro_Comercialprox_num_pedido: TIntegerField;
    Parametro_Comercialdias_entrega: TSmallintField;
    Parametro_Comercialies_modelo: TIntegerField;
    Parametro_Comercialmod_lista_preco: TBlobField;
    Parametro_Comercialmod_pedido_imp: TBlobField;
    Parametro_Comercialmod_romaneio: TBlobField;
    Parametro_Comercialdir_planilhas: TIBStringField;
    Parametro_Comercialmod_cad_produto: TBlobField;
    Parametro_Comercialcod_tip_embarque: TSmallintField;
    Parametro_Comercialmod_ship_list: TBlobField;
    Parametro_Comercialmod_plan_excel: TBlobField;
    Parametro_Comercialmod_plan_itens_emb: TBlobField;
    Parametro_Comercialmod_plan_itens_emb_fat: TBlobField;
    Parametro_Comercialdias_inspecao: TSmallintField;
    Parametro_Comercialmod_plan_alt_ped: TBlobField;
    Parametro_Comercialmod_plan_alt_fat: TBlobField;
    Parametro_Comercialserie_nf: TIBStringField;
    Parametro_Comercialmod_plan_pedido: TBlobField;
    Parametro_Comercialies_base_comissao: TIBStringField;
    Parametro_Comercialmod_plan_itens_emb_prod: TBlobField;
    Button12: TButton;
    Button13: TButton;
    lbResumoPedidos: TLabel;
    Parametro_Comercialmod_plan_resumo_pedidos: TBlobField;
    Parametro_Comercialmod_plan_resumo_faturas: TBlobField;
    Button14: TButton;
    lbResumoFaturas: TLabel;
    Parametro_Comercialmod_plan_shipmarks: TBlobField;
    Button15: TButton;
    lbShipMarks: TLabel;
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure dbmmobservacaoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure actLocal_LogotipoExecute(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure IBDataSetAfterScroll(DataSet: TDataSet);
    procedure Parametro_ComercialNewRecord(DataSet: TDataSet);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure sbDirPlanProdutosClick(Sender: TObject);
    procedure dsParametro_ComercialDataChange(Sender: TObject;
      Field: TField);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadEmpresa: Tfr_CadEmpresa;

implementation

uses unConnection, UnMenuCompl,  unPesquisaCEP;

{$R *.dfm}

procedure Tfr_CadEmpresa.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSeties_situacao.AsString         := 'A';
   IBDataSetdat_cadastro_junta.AsDateTime := Buscar_DateTime;
   IBDataSetdat_fundacao.AsDateTime       := Buscar_DateTime;
   IBDataSetdat_cadastro.AsDateTime       := Buscar_DateTime;
   IBDataSetcx_postal.AsString            := '';
end;

procedure Tfr_CadEmpresa.dbmmobservacaoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadEmpresa.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  OpenTableAux(QrAux);
end;

procedure Tfr_CadEmpresa.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_empresa.AsInteger := InsertCode('empresa', 'cod_empresa');
end;

procedure Tfr_CadEmpresa.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('empresa') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_empresa', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end else
   if IBDataSet.State in [dsInsert, dsEdit] then
      if (edtcod_cidade.Focused) or (dblklkNomCidade.Focused) then
      begin
         if Pesquisar('cidade') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_cidade.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;
      end else
      if (dbedrua.Focused) or (dbedcep.Focused) or (dbedbairro.Focused) then
      begin
        Application.CreateForm(TFPesquisaCEP, FPesquisaCEP);
        FPesquisaCEP.var_tipocad := 'empresa';
        FPesquisaCEP.ShowModal;
        FPesquisaCEP.Free;
      end;
end;

procedure Tfr_CadEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadEmpresa := nil;
end;

procedure Tfr_CadEmpresa.Set_Value;
begin
  inherited;
  pgcParametro_Comercial.ActivePage := tbsModelos;
  OpenTable(IBDataSet);
  tipo_embarque.Open;
  tipo_embarque.Last;
  tipo_embarque.First;
  Parametro_Comercial.ParamByName('cod_empresa').AsShort := vgCod_Empresa;
  OpenTable(Parametro_Comercial);
end;

procedure Tfr_CadEmpresa.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_empresa.FocusControl;
end;

procedure Tfr_CadEmpresa.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_empresa.FocusControl;
end;

procedure Tfr_CadEmpresa.actLocal_LogotipoExecute(Sender: TObject);
begin
  inherited;
  OpenDialog.Filter := 'Imagem|*.jpg';
  OpenDialog.Title := 'Logotipo da empresa';

  if OpenDialog.Execute then
  begin
   	if IBDataSet.State in [dsInsert, dsEdit] then
        IBDataSetlocal_logotipo.AsString := OpenDialog.FileName;
  end;
end;

procedure Tfr_CadEmpresa.GroupBox1Enter(Sender: TObject);
begin
  inherited;
  ChangeDataSource(dsParametro_Comercial);
end;

procedure Tfr_CadEmpresa.Panel1Enter(Sender: TObject);
begin
  inherited;
  ChangeDataSource(dsIBDataSet);
end;

procedure Tfr_CadEmpresa.IBDataSetAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if (Parametro_Comercial.State in [dsEdit, dsInsert]) then Exit;
  with Parametro_Comercial do
  begin
    Close;
    ParamByName('cod_empresa').Value := IBDataSetcod_empresa.AsInteger;
    Open;
  end;
end;

procedure Tfr_CadEmpresa.Parametro_ComercialNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').Value := IBDataSetcod_empresa.AsInteger;
  DataSet.FieldByName('serie_nf').Value := '1';
  DataSet.FieldByName('base_comissao').Value := '2';
end;

procedure Tfr_CadEmpresa.Button6Click(Sender: TObject);
begin
  inherited;
  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Planilha em Branco';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_excel.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 7);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button2Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Importa��o de Pedidos ';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_pedido_imp.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 1);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button5Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Production List';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_romaneio.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 2);
    Parametro_Comercialmod_ship_list.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 4);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button4Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Importa��o de Produtos';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_cad_produto.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 3);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button7Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Produtos Embarcados Pedidos';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_itens_emb.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 5);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button8Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Produtos Embarcados Faturas';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_itens_emb_fat.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 6);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button11Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Produtos Embarc. Produtos';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_itens_emb_prod.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 11);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button3Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Modelo de Pedidos';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_pedido.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 10);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button9Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Altera��o de Pedidos';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_alt_ped.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 8);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.Button10Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'altera��o de Faturas';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_alt_fat.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 9);
    Parametro_Comercial.Post;
  end;

end;

procedure Tfr_CadEmpresa.sbDirPlanProdutosClick(Sender: TObject);
begin
  inherited;
 	if Parametro_Comercial.State in [dsInsert, dsEdit] then
  begin
    Pastas.Directory := Parametro_Comercialdir_planilhas.AsString;
    if Pastas.Execute then
    begin
      Parametro_Comercialdir_planilhas.AsString := Pastas.Directory;
    end;
  end;

end;

procedure Tfr_CadEmpresa.dsParametro_ComercialDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 0) = 0 then lbLista.Caption := 'N�o adicionada'
                                                            else lbLista.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 1) = 0 then lbPedido.Caption := 'N�o adicionado'
                                                            else lbPedido.Caption := 'Adicionado';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 3) = 0 then lbProduto.Caption := 'N�o adicionada'
                                                            else lbProduto.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 4) = 0 then lbShipList.Caption := 'N�o adicionada'
                                                            else lbShipList.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 5) = 0 then lbItensEmb.Caption := 'N�o adicionada'
                                                            else lbItensEmb.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 6) = 0 then lbItensEmbFat.Caption := 'N�o adicionada'
                                                            else lbItensEmbFat.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 7) = 0 then lbPlanBranca.Caption := 'N�o adicionada'
                                                            else lbPlanBranca.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 8) = 0 then lbAlteracaoPedidos.Caption := 'N�o adicionada'
                                                            else lbAlteracaoPedidos.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 9) = 0 then lbAlteracaoFaturas.Caption := 'N�o adicionada'
                                                            else lbAlteracaoFaturas.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 10) = 0 then lbModeloPedidos.Caption := 'N�o adicionada'
                                                             else lbModeloPedidos.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 11) = 0 then lbProdEmbarcados.Caption := 'N�o adicionada'
                                                             else lbProdEmbarcados.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 12) = 0 then lbResumoPedidos.Caption := 'N�o adicionada'
                                                             else lbResumoPedidos.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 13) = 0 then lbResumoFaturas.Caption := 'N�o adicionada'
                                                             else lbResumoFaturas.Caption := 'Adicionada';
  if GetBit(Parametro_Comercialies_modelo.AsInteger, 14) = 0 then lbShipMarks.Caption := 'N�o adicionada'
                                                             else lbShipMarks.Caption := 'Adicionada';


end;

procedure Tfr_CadEmpresa.Button12Click(Sender: TObject);
begin
  inherited;
  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Cota��es Recebidas';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_lista_preco.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 0);
    Parametro_Comercial.Post;
  end;
end;

procedure Tfr_CadEmpresa.Button13Click(Sender: TObject);
begin
  inherited;

  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Modelo Resumo de Pedidos';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_resumo_pedidos.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 12);
    Parametro_Comercial.Post;
  end;


end;

procedure Tfr_CadEmpresa.Button14Click(Sender: TObject);
begin
  inherited;
  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Modelo Resumo de Faturas';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_resumo_faturas.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 13);
    Parametro_Comercial.Post;
  end;


end;

procedure Tfr_CadEmpresa.Button15Click(Sender: TObject);
begin
  inherited;
  OpenDialog.Filter := 'Excel|*.xls';
  OpenDialog.Title := 'Modelo Shipping Marks';

  if OpenDialog.Execute then
  begin
    Parametro_Comercial.Edit;
    Parametro_Comercialmod_plan_shipmarks.LoadFromFile(OpenDialog.FileName);
    Parametro_Comercialies_modelo.AsInteger := SetBit(Parametro_Comercialies_modelo.AsInteger, 14);
    Parametro_Comercial.Post;
  end;

end;

end.
