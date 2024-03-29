unit SigIMP01_004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin, DateUtils,
  JvExControls, JvComponent, JvDBLookup, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, IBSQL, IBStoredProc;

type
  TAcoesMenu = (acmNew, acmEdit, acmSearch);

  Tfr_CadLista = class(Tfr_Cad)
    IBDataSetnum_lista: TSmallintField;
    IBDataSetden_lista: TIBStringField;
    IBDataSeties_situacao: TIBStringField;
    Label2: TLabel;
    dbeden_lista: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    IBDataSetcod_cliente: TIBStringField;
    dlcCliente: TJvDBLookupCombo;
    Label5: TLabel;
    ds_QrAux: TDataSource;
    drgSituacao: TDBRadioGroup;
    btnProdutos: TBitBtn;
    IBDataSetlkNomCliente: TStringField;
    qrAux2: TIBQuery;
    Deletar_ListaPreco: TIBQuery;
    IBDataSeties_tip_lista: TIBStringField;
    Label4: TLabel;
    IBDataSetcod_fornecedor: TSmallintField;
    Fornecedor: TIBQuery;
    Fornecedorraz_social_reduz: TIBStringField;
    Fornecedorcod_fornecedor: TSmallintField;
    IBDataSetlkpFornecedor: TStringField;
    Label3: TLabel;
    dlcFornecedor: TJvDBLookupCombo;
    up_lista_preco: TIBQuery;
    IBDataSetcod_empresa: TSmallintField;
    QrAuxcod_cliente: TIBStringField;
    QrAuxnom_cliente_reduz: TIBStringField;
    dtpDatCotacao: TJvDBDatePickerEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure btnProdutosClick(Sender: TObject);
    procedure IBDataSetAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dlcClienteClick(Sender: TObject);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
  private
  protected
    procedure Set_Value; override;
    { Private declarations }
  public
    { Public declarations }
    procedure New;
    procedure Open;
  end;

var
  fr_CadLista: Tfr_CadLista;
  CodFornecedor : String;

  AcaoMenu: TAcoesMenu;


implementation

uses unConnection, UnMenuCompl, SigIMP01_005, SigIMP01_045, SigIMP01_018;

{$R *.dfm}

procedure Tfr_CadLista.Open;
begin
  { chamada do menu 'Pesquisar e alterar cota��es recebidas' }
  Set_Value;
  Caption := 'Pesquisar e Alterar Cota��es Recebidas';
  AcaoMenu := acmEdit;
  fr_FmNavigator1.acF3.Visible := True;
  fr_FmNavigator1.acInsert.Visible := False;
  drgSituacao.Visible := True;
  Button1.Click;  // abrir Pesquisar Cota��es
end;


procedure Tfr_CadLista.New;
begin
  Set_Value;
  Caption := 'Cadastrar Cota��es Recebidas';
  AcaoMenu := acmNew;
  IBDataSet.Insert;
  fr_FmNavigator1.acF3.Visible := False;
  fr_FmNavigator1.acInsert.Visible := True;
  drgSituacao.Visible := False;
end;

procedure Tfr_CadLista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Cancel;
  if Assigned(fr_CadLista_Preco) then fr_CadLista_Preco.Close;
  
  inherited;
  QrAux.Close;
  Action := caFree;
  fr_CadLista := nil;
end;

procedure Tfr_CadLista.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadLista.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
  { chamar a tela de pesquisa lista de pre�os }
   if IBDataSet.State in [dsInsert, dsEdit] then Exit;

   if Not(Assigned(frm_PesquisaListaPreco)) then
      Application.CreateForm(Tfrm_PesquisaListaPreco, frm_PesquisaListaPreco);
      frm_PesquisaListaPreco.ShowModal;
      if (frm_PesquisaListaPreco.ModalResult = mrOk) then
      begin
        { selecionar fornecedores do cliente }
        with Fornecedor do                                    
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('cod_cliente').AsString := frm_PesquisaListaPreco.Clientecod_cliente.AsString;
          Open;
        end;
        IBDataSet.Close;
        IBDataSet.ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        IBDataSet.ParamByName('num_lista').AsInteger := frm_PesquisaListaPreco.Listanum_lista.AsInteger;
        IBDataSet.Open;
        CodFornecedor := frm_PesquisaListaPreco.Listacod_fornecedor.AsString;
        dlcFornecedor.KeyValue := frm_PesquisaListaPreco.Listacod_fornecedor.AsInteger;
        btnProdutosClick(nil);
      end;
end;

procedure Tfr_CadLista.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_empresa.AsInteger  := vgCod_Empresa;
  IBDataSeties_situacao.AsString  := 'A';
  IBDataSeties_tip_lista.AsString := 'C';   // Novo tipo indicando Cota��o
end;

procedure Tfr_CadLista.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (IBDataSetdat_cadastro.IsNull) then
  begin
    Application.MessageBox('A Data da Cota��o deve ser informada.', 'Erro', MB_OK+MB_ICONINFORMATION);
    dtpDatCotacao.SetFocus;
    Abort;
  end;

	if DataSet.State = dsInsert then
  	IBDataSetnum_lista.AsInteger  := InsertCode('lista', 'num_lista', true);
end;

procedure Tfr_CadLista.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  { excluir os itens da lista de pre�os }
                                                                 
  with qrAux2 do
  begin
    SQL.Clear;
    SQL.Add('select "num_lista"                  ');
    SQL.Add('  from "pedido"                     ');
    SQL.Add(' where "cod_empresa" = :cod_empresa ');
    SQL.Add('   and "num_lista" = :num_lista     ');
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := IBDataSetnum_lista.AsInteger;
    Open;
    if Not(IsEmpty) then
    begin
      Close;
      Application.MessageBox('A Lista de Pre�os est� sendo usada num Pedido ou Confirma��o, n�o pode ser exclu�da.', 'Informa��o', MB_OK+MB_ICONINFORMATION);
      Abort;
    end;
    Close;
    SQL.Clear;
    SQL.Add('select "num_lista"                    ');
    SQL.Add('  from "imp_ped_cli"                  ');
    SQL.Add(' where "cod_empresa" = :cod_empresa   ');
    SQL.Add('   and "num_lista" = :num_lista       ');
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := IBDataSetnum_lista.AsInteger;
    Open;
    if Not(IsEmpty) then
    begin
      Close;
      Application.MessageBox('A Lista de Pre�os est� sendo usada num Pedido Importado, n�o pode ser exclu�da.', 'Informa��o', MB_OK+MB_ICONINFORMATION);
      Abort;
    end;
    Close;
  end;

  with Deletar_ListaPreco do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := IBDataSetnum_lista.AsInteger;
    ExecSQL;
    Transaction.CommitRetaining;
  end;
end;

procedure Tfr_CadLista.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_cliente.FocusControl;
end;

procedure Tfr_CadLista.Set_Value;
begin
  inherited;
  with QrAux do
  begin
    ParamByName('login').Value := vgLogin;
    Open;
  end;

	OpenTable(IBDataSet);
end;

procedure Tfr_CadLista.btnProdutosClick(Sender: TObject);
begin
  inherited;

  if IBDataSet.IsEmpty then Exit;
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Post;

  CriarForm(Tfr_CadLista_Preco, fr_CadLista_Preco, false, false);

  if (AcaoMenu = acmNew) then fr_CadLista_Preco.New;
  if (AcaoMenu in [acmEdit, acmSearch]) then fr_CadLista_Preco.Open;

  fr_CadLista_Preco.Set_Value(StrToInt(CodFornecedor));
end;

procedure Tfr_CadLista.IBDataSetAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if IBDataSetnum_lista.AsInteger = 0 then Exit;

  if Assigned(fr_CadLista_Preco) then
     fr_CadLista_Preco.Set_Value(StrToInt(CodFornecedor));

end;

procedure Tfr_CadLista.FormCreate(Sender: TObject);
begin
  inherited;
  CodFornecedor := '0';
end;

procedure Tfr_CadLista.dlcClienteClick(Sender: TObject);
begin
  inherited;
  { selecionar fornecedores do cliente }
  with Fornecedor do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := trim(IBDataSetcod_cliente.AsString);
    Open;
  end;
  dlcFornecedor.KeyValue := 0;
end;

procedure Tfr_CadLista.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
  with up_lista_preco do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := IBDataSetnum_lista.AsInteger;
    ParamByName('dat_cadastro').AsDate := IBDataSetdat_cadastro.AsDateTime;
    ExecSQL;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;
end;

end.
