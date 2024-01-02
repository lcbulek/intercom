unit SigIMP01_005;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin, UnGrid,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, Grids, DBGrids, Excel2000, OleServer, JvExControls,
  JvComponent, JvDBLookup, IBStoredProc;

type
  Tfr_CadLista_Preco = class(Tfr_Cad)
    qryProduto: TIBQuery;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    Fornecedor: TIBQuery;
    Fornecedorcod_fornecedor: TSmallintField;
    Fornecedorraz_social_reduz: TIBStringField;
    Deletar_ListaPreco: TIBQuery;
    man_lista_preco: TIBDataSet;
    man_lista_precocod_empresa: TSmallintField;
    man_lista_preconum_lista: TSmallintField;
    man_lista_precocod_produto: TIBStringField;
    man_lista_precovlr_unitario: TFloatField;
    man_lista_precodat_cadastro: TDateField;
    man_lista_precoobs_preco: TMemoField;
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetnum_lista: TSmallintField;
    IBDataSetcod_produto: TIBStringField;
    IBDataSetvlr_unitario: TFloatField;
    IBDataSetdat_cadastro: TDateField;
    IBDataSetobs_preco: TMemoField;
    qryProdutocod_produto: TIBStringField;
    qryProdutoden_produto: TIBStringField;
    qryProdutocod_cliente: TIBStringField;
    IBDataSetcalDenProduto: TStringField;
    IBDataSetcalFornecedor: TStringField;
    qryProdutoraz_social_reduz: TIBStringField;
    actModelo: TAction;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialies_modelo: TIntegerField;
    parametro_comercialmod_lista_preco: TBlobField;
    spr_atualizar_precos: TIBStoredProc;
    parametro_comercialdir_planilhas: TIBStringField;
    Produtos: TIBQuery;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto_detpor: TMemoField;
    Produtosden_produto: TIBStringField;
    produtos_lista: TIBQuery;
    actImportar: TAction;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    edBuscaCodigo: TEdit;
    edBuscaDesc: TEdit;
    btnImportar: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    dbevlr_unitario: TDBEdit;
    dbecod_produto: TDBEdit;
    dbeDenProd: TDBEdit;
    DBMemo1: TDBMemo;
    produtos_listaOrigem: TIBStringField;
    produtos_listacod_produto: TIBStringField;
    produtos_listaden_produto: TIBStringField;
    produtos_listavlr_unitario: TFloatField;
    produtos_listaobs_preco: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetvlr_unitarioValidate(Sender: TField);
    procedure edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GroupBox1Enter(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure edBuscaDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AbrirExcel(Caminho: String);
    procedure FecharExcel(FecharTabelas: boolean = True);
    procedure LerHeader;
    procedure LerItens;
    function ProcuraCliente(CodCliente: String): boolean;
    procedure btnExcluirClick(Sender: TObject);
    procedure IBDataSetcod_produtoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure man_lista_precoAfterPost(DataSet: TDataSet);
    procedure IBDataSetcod_produtoValidate(Sender: TField);
    procedure IBDataSetCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actModeloExecute(Sender: TObject);
    Procedure AbrirPlanilha(Caminho: String);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure GerarModeloLista(Tipo: Byte);
    procedure man_lista_precoAfterDelete(DataSet: TDataSet);
    procedure actImportarExecute(Sender: TObject);
  private
  protected
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value(CodFornecedor: Integer);

    procedure New;
    procedure Open;

  end;

var
  fr_CadLista_Preco: Tfr_CadLista_Preco;
  Ant : String;
  gCodEmpresa: Integer;
  gCodCliente: String;
  gDataPreco : TDate;

  PrecoReal : Double;

  Erro : Boolean; { indica ERRO na importação da planilha }

  FileName : String;

  tpExcel : char;

implementation

uses unConnection, UnMenuCompl, UnPesquisaProduto, SigIMP01_004;

{$R *.dfm}

procedure Tfr_CadLista_Preco.New;
begin
  { novos produtos na cotação }
  Caption := 'Cadastrar Produtos de Cotações Recebidas';
  actModelo.Caption := 'Gerar Excel com Produtos do Cliente';
  tpExcel := 'N';
end;

procedure Tfr_CadLista_Preco.Open;
begin
  { pesquisar e alterar cotações }
  Caption := 'Pesquisar e Alterar Produtos de Cotações Recebidas';
  actModelo.Caption := 'Gerar Excel com Produtos da Cotação Recebida';
  tpexcel := 'C';
end;


procedure Tfr_CadLista_Preco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
  qryProduto.Close;
  IBDataSet.Close;
  Fornecedor.Close;
  FecharExcel;
  inherited;
  Action := caFree;
	fr_CadLista_Preco := nil;
end;

procedure Tfr_CadLista_Preco.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
  if dbecod_produto.Focused then
  begin
	if IBDataSet.State in [dsBrowse] then
  begin
      if Not(Assigned(fr_PesquisaProduto)) then
         Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);
      fr_PesquisaProduto.ShowModal;
      if (fr_PesquisaProduto.ModalResult = mrOk) then
      begin
      	with IBDataSet do
        	try
            DisableControls;
            First;
            Locate('cod_produto', fr_PesquisaProduto.qryProduto.FieldByName('cod_produto').AsVariant, []);
          finally
          	EnableControls;
          end;
      end;
	end else
	if IBDataSet.State in [dsInsert, dsEdit] then
  	if (dbecod_produto.Focused) or (dbeDenProd.Focused) then
    begin
      if Not(Assigned(fr_PesquisaProduto)) then
         Application.CreateForm(Tfr_PesquisaProduto, fr_PesquisaProduto);
      fr_PesquisaProduto.ShowModal;
      if (fr_PesquisaProduto.ModalResult = mrOk) then
      begin
        	with IBDataSet do
          	IBDataSetcod_produto.AsString  := fr_PesquisaProduto.qryProdutocod_produto.AsString;
      end;
    end;
  end;
end;

procedure Tfr_CadLista_Preco.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_empresa.AsInteger := vgCod_Empresa;
  IBDataSetnum_lista.AsInteger   := fr_CadLista.IBDataSetnum_lista.AsInteger;
  IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadLista_Preco.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  dbecod_produto.SetFocus;
end;

procedure Tfr_CadLista_Preco.IBDataSetvlr_unitarioValidate(Sender: TField);
begin
  inherited;
	if Sender.AsCurrency < 0.000 then
  begin
     MessageDlg('Valor inválido', mtError, [mbCancel], 0);
  	Abort;
  end;
end;

procedure Tfr_CadLista_Preco.Set_Value(CodFornecedor: Integer);
begin
  Fornecedor.Open;

  with IBDataSet do
  begin
    Close;
    if CodFornecedor = 0 then
    begin
      SelectSQL.Clear;
      SelectSQL.Add('select a.*                                         ');
      SelectSQL.Add('  from "lista_preco" a                             ');
      SelectSQL.Add(' where                                             ');
      SelectSQL.Add('     a."cod_empresa" = :cod_empresa                ');
      SelectSQL.Add(' and a."num_lista"   = :num_lista                  ');
      SelectSQL.Add(' order by a."cod_produto"                          ');
    end;

    if CodFornecedor <> 0 then
    begin
      SelectSQL.Clear;
      SelectSQL.Add('select a.*, b."cod_cliente", b."cod_fornecedor"    ');
      SelectSQL.Add('  from "lista_preco" a, "produto" b                ');
      SelectSQL.Add(' where                                             ');
      SelectSQL.Add('     a."cod_empresa" = :cod_empresa                ');
      SelectSQL.Add(' and a."num_lista"   = :num_lista                  ');
      SelectSQL.Add(' and b."cod_fornecedor" = :cod_fornecedor          ');
      SelectSQL.Add(' and b."cod_empresa" = a."cod_empresa"             ');
      SelectSQL.Add(' and b."cod_produto" = a."cod_produto"             ');
      SelectSQL.Add(' order by a."cod_produto"                          ');
      ParamByName('cod_fornecedor').AsInteger := CodFornecedor;
    end;

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := fr_CadLista.IBDataSetnum_lista.AsInteger;
    Open;
  end;
end;

procedure Tfr_CadLista_Preco.edBuscaCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { buscar por código do produto no cliente }
  if (Key = VK_RETURN) then
  begin
    if Not(IBDataSet.IsEmpty) then
       IBDataSet.Locate('cod_produto',SemFmtProduto(fr_CadLista.IBDataSetcod_cliente.AsString, edBuscaCodigo.Text), [loPartialKey]);
    if trim(edBuscaCodigo.Text) <> '' then
    begin
      edBuscaCodigo.SetFocus;
      edBuscaCodigo.SelLength := 0;
      edBuscaCodigo.SelStart := Length(trim(edBuscaCodigo.Text));
    end;
  end;

end;

procedure Tfr_CadLista_Preco.GroupBox1Enter(Sender: TObject);
begin
  inherited;
  Application.OnMessage := nil;
end;

procedure Tfr_CadLista_Preco.GroupBox1Exit(Sender: TObject);
begin
  inherited;
  Application.OnMessage := fr_MenuPrincipal.AppMsg;
end;

procedure Tfr_CadLista_Preco.edBuscaDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure Localizar(Des: String);
  Var
    s: String;
  begin
    IBDataSet.DisableControls;
    if Des <> Ant then
    begin
       IBDataSet.First;
       Ant := Des;
    end
    else
       IBDataSet.Next;
    while not(IBDataSet.EOF) do
    begin
      s := IBDataSet.FieldByName('lkDenProduto').AsString;
      if Pos(Des, s) > 0 then
      begin
        IBDataSet.EnableControls;
        Exit;
      end;
      IBDataSet.Next;
    end;
    IBDataSet.EnableControls;
  end;

begin
  { buscar pela descrição em português }
  if (Key = VK_RETURN) then
  begin
    if Not(IBDataSet.IsEmpty) then
       Localizar(trim(edBuscaDesc.Text));

    if trim(edBuscaDesc.Text) <> '' then
    begin
      edBuscaDesc.SetFocus;
      edBuscaDesc.SelLength := 0;
      edBuscaDesc.SelStart := Length(trim(edBuscaDesc.Text));
    end;
  end;
end;

procedure Tfr_CadLista_Preco.AbrirExcel(Caminho: String);
Var
  lcid : Cardinal;
  WkBk : _Workbook;

begin
  { Selecionar a planilha e chamar o  Excel }
  if trim(Caminho) = '' then
  begin
    if (OpenDialog.Execute) then
       Caminho := OpenDialog.FileName
    else begin
      Application.MessageBox('Operação cancelada', 'Informação', MB_ICONINFORMATION+MB_OK);
      FecharExcel;
      Abort;
    end;
  end;
  FileName := Caminho;

  try
  lcid := GetUserDefaultLCID;
  WkBk := ExcelApplication.Workbooks.Open(Caminho, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam, lcid);

  ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
  ExcelWorksheet.Activate(LCID);
  ExcelApplication.Visible[lcid] := False;
  ExcelApplication.DisplayAlerts[lcid] := False;
  except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;

Procedure Tfr_CadLista_Preco.FecharExcel(FecharTabelas: boolean = True);
begin
  if FecharTabelas then
    if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Cancel;

  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then
     Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;  
end;

function Tfr_CadLista_Preco.ProcuraCliente(CodCliente: String): boolean;
begin
  with QrAux do
  begin
    Close;
    SQL.Text := 'select "cod_cliente"               '+
                '  from "cliente"                   '+
                ' where "cod_cliente" = :cod_cliente'+
                '   and "ies_situacao" = ''A''      ';
    ParamByName('cod_cliente').AsString := CodCliente;
    Open;
    Result := Not(IsEmpty);
    Close;
  end;
end;

procedure Tfr_CadLista_Preco.LerHeader;
begin
  { Empresa }
    try
      gCodEmpresa := StrToInt(ExcelWorksheet.Range['B1','B1'].Text);
    except
      Application.MessageBox('Código da empresa inválido', 'Erro', MB_ICONERROR+MB_OK);
      FecharExcel;
      Abort;
    end;
    if (gCodEmpresa <> vgCod_Empresa) then
    begin
      Application.MessageBox('Empresa na planilha diferente da empresa logada', 'Erro', MB_ICONERROR+MB_OK);
      FecharExcel;
      Abort;
    end;
  { Cliente }
  gCodCliente := Trim(ExcelWorksheet.Range['B2','B2'].Text);
  if Not(ProcuraCliente(gCodCliente)) then
  begin
    Application.MessageBox('Cliente não encontrado', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
  if trim(gCodCliente) <> trim(fr_CadLista.IBDataSetcod_cliente.AsString) then
  begin
    Application.MessageBox('Cliente na Planilha não é o mesmo cliente da Lista de Preços', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
  try
    { obter a data do preço diretamente do cadastro, não mais da planilha excel }
    //gDataPreco := StrToDate(ExcelWorksheet.Range['B4','B4'].Text);
    gDataPreco := fr_CadLista.IBDataSetdat_cadastro.AsDateTime;
  except
      Application.MessageBox('Data para o Preço Inválida', 'Erro', MB_ICONERROR+MB_OK);
      FecharExcel;
      Abort;
  end;
end;

procedure Tfr_CadLista_Preco.LerItens;
Var
  Linha: Integer;
  ProdutoCli, CodProduto, P, Obs, s: String;
begin
  { Serão lidos todos os Itens da planilha, até encontrar a primeira célula em branco }
  Linha := 6;
  { Coluna "A" em branco identifica fim das linhas }
  While (trim(ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Text) <> '') do
  begin
      { COL A - Código do Produto }
      CodProduto := '';
      CodProduto := trim(ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Text);
      CodProduto := SemFmtProduto(fr_CadLista.IBDataSetcod_cliente.AsString, CodProduto);
      { Produto Existe no Cadastro ? }
      with ProcurarProduto(CodProduto, fr_CadLista.IBDataSetcod_cliente.AsString, fr_CadLista.IBDataSetcod_fornecedor.AsInteger) do
      begin
        if (Existe) then ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Interior.ColorIndex := 0
        else
        begin
          ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Interior.ColorIndex := 3; // marcar erro na planilha
          Inc(Linha);
          Continue;
        end;
      end;
      { COL B - Obter Preço Unitário do produto }
      try
        PrecoReal := ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Value2;
      except
        PrecoReal := 0.00;
      end;
      { COL C - Observação do Preço }
      Obs := (ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Text);
      { Preço = 0 limpar célula da planilha }
      if (PrecoReal = 0) then
      begin
        ExcelWorksheet.Range['B'+ inttostr(linha),'C'+inttostr(linha)].Clear;
        ExcelWorksheet.Range['B'+ inttostr(linha),'C'+inttostr(linha)].Interior.ColorIndex := 0;
      end;

      { Procurar Item na Lista de Preços }
      with man_lista_preco do
      begin
        Close;
        ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
        ParamByName('num_lista').AsInteger := fr_CadLista.IBDataSetnum_lista.AsInteger;
        ParamByName('cod_produto').AsString := CodProduto;
        Open;
        { se não houver item na lista, incluir o mesmo, se existe alterar o preço  }
        { Preço = 0 - excluir item da lista de preços                              }

        if (Not(IsEmpty) and (PrecoReal = 0)) then
        begin
          Delete;
          Inc(Linha);
          Continue;
        end;

        if IsEmpty then Append
                   else Edit;

        if (PrecoReal > 0) then
        begin
          man_lista_precocod_empresa.Value := vgCod_Empresa;
          man_lista_preconum_lista.Value := fr_CadLista.IBDataSetnum_lista.AsInteger;
          man_lista_precocod_produto.Value := CodProduto;
          man_lista_precovlr_unitario.Value := PrecoReal;
          man_lista_precodat_cadastro.Value := gDataPreco;
          man_lista_precoobs_preco.Value := Obs;
          Post;
        end
        else Cancel;                                       
      end;
      Inc(linha);
  end;
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Post;
  Set_Value(0);

  { atualizar preços no pedido }
  with spr_atualizar_precos do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := fr_CadLista.IBDataSetnum_lista.AsInteger;
    ExecProc;
    try
      Transaction.CommitRetaining;
    except
      Transaction.RollbackRetaining;
    end;
  end;

  { Salvar a planilha }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  FecharExcel(False);
end;

procedure Tfr_CadLista_Preco.btnExcluirClick(Sender: TObject);
begin
  inherited;
  { Excluir todos os itens da lista de preços, mas não excluir o cabeçalho da lista }
  if  Application.MessageBox('Deseja excluir todos os itens da lista de preços?', 'Exclusão', MB_YESNO+MB_ICONEXCLAMATION) = mrNO
  then Abort;
  with Deletar_ListaPreco do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := fr_CadLista.IBDataSetnum_lista.AsInteger;
    IBDataSet.Close;
    ExecSQL;
    Transaction.CommitRetaining;
    IBDataSet.Open;
  end;
end;

procedure Tfr_CadLista_Preco.IBDataSetcod_produtoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsString) = '' then Exit;
  with FmtProdutoCliente(fr_CadLista.IBDataSetcod_cliente.AsString,
                         SemFmtProduto(fr_CadLista.IBDataSetcod_cliente.AsString, Sender.AsString)) do
  begin
    Text := fmtProduto;
    dbecod_produto.MaxLength := fmtLength;
  end;
end;

procedure Tfr_CadLista_Preco.man_lista_precoAfterPost(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;
                                                  
end;

procedure Tfr_CadLista_Preco.IBDataSetcod_produtoValidate(Sender: TField);
begin
  inherited;
  if IBDataSetcod_produto.AsString = '' then Exit;
end;

procedure Tfr_CadLista_Preco.IBDataSetCalcFields(DataSet: TDataSet);
begin
  inherited;
  with qryProduto do
  begin
	  Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := fr_CadLista.IBDataSetcod_cliente.AsString;
    ParamByName('cod_produto').AsString := IBDataSetcod_produto.AsString;
    Open;
    IBDataSetcalDenProduto.AsString := qryProdutoden_produto.AsString;
    IBDataSetcalFornecedor.AsString := qryProdutoraz_social_reduz.AsString;
    Close;
  end;
end;

procedure Tfr_CadLista_Preco.FormCreate(Sender: TObject);
begin
  inherited;
  FileName := '';
end;

procedure Tfr_CadLista_Preco.actModeloExecute(Sender: TObject);
Var
  DIR_PLANILHAS, PED, s : String;

begin
  inherited;
  { gerar a planilha modelo para a Importação da Lista de Preços }

  { obter modelo da planilha de pedido  }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  if GetBit(parametro_comercialies_modelo.AsInteger, 0) = 0 then
  begin
    Application.MessageBox('O modelo de planilha para a Importação da Lista de Preços não foi definido', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
  { obter parâmetros do cliente }
  { Pasta onde será gravada a planilha de Importação do Pedido  }
  DIR_PLANILHAS := parametro_comercialdir_planilhas.AsString;

  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para planilhas do Cliente, não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
  { diretório para planilhas, mais subpasta com código do cliente }
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(fr_CadLista.IBDataSetcod_cliente.AsString);

  { se o diretório de planilhas do cliente não existe, tenta criar o diretório }
   if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\COTAÇÕES';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);


  { Nome da planilha excel: Denominação da Cotação + data da cotação . xls }
  PED := trim(fr_CadLista.IBDataSetden_lista.AsString) + '-' + FormatDateTime('dd.mm.yy', fr_CadLista.IBDataSetdat_cadastro.AsDateTime);
  PED := StringReplace(ped, '/', '-', [rfReplaceAll]);
  PED := StringReplace(ped, '\', '-', [rfReplaceAll]);

  FileName := DIR_PLANILHAS + '\' + trim(PED) + '.xls';  // Lista de Preço

  { Gerar o Excel com os Produtos do Cliente ou com os Produtos da Cotação Recebida  }
  parametro_comercialmod_lista_preco.SaveToFile(FileName);
  AbrirExcel(FileName);

  { preencher campos default e salvar planilha }
  ExcelWorkSheet.Cells.Item[01, 02].Value := vgCod_Empresa;
  ExcelWorksheet.Cells.Item[02, 02].Value := fr_CadLista.IBDataSetcod_cliente.AsString;

  if (tpExcel = 'N') then GerarModeloLista(1);
  if (tpExcel = 'C') and Not(IBDataSet.IsEmpty) then GerarModeloLista(2);

  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);

  s := FileName;
  FecharExcel(False);
  FileName := s;
  btnImportar.Enabled := True;
  AbrirPlanilha(FileName);
end;

Procedure Tfr_CadLista_Preco.AbrirPlanilha(Caminho: String);
Var
  lcid : Cardinal;
  WkBk : _Workbook;
begin
 try
  lcid := GetUserDefaultLCID;
  ExcelApplication.Visible[lcid] := True;
  ExcelApplication.DisplayAlerts[lcid] := False;
  WkBk := ExcelApplication.Workbooks.Open(Caminho, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                                                   EmptyParam, EmptyParam, EmptyParam, EmptyParam, lcid);

  ExcelWorksheet.ConnectTo(WkBk.Worksheets[1] as _Worksheet);
  ExcelWorksheet.Activate(LCID);
 except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
 end;
end;

procedure Tfr_CadLista_Preco.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
  with spr_atualizar_precos do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := IBDataSetnum_lista.AsInteger;
    ExecProc;
 	  try
 	    Transaction.CommitRetaining;
    except
 	    Transaction.RollbackRetaining;
    end;
  end;
end;

procedure Tfr_CadLista_Preco.GerarModeloLista(Tipo: Byte);
Var
  Linha : integer;
  s, s1, s2, Origem : String;
begin
  Linha := 3;
  with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Font.Bold := False;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    Value2 := 'Fornecedor';
    WrapText := True;
    ShrinkToFit := False;
  end;
  with ExcelWorksheet.Range['B' + IntToStr(Linha),'C' + IntToStr(Linha)] do
  begin
    Font.Size := 8;
    Font.Bold := False;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlTop;
    Value2 := fr_CadLista.IBDataSetlkpFornecedor.AsString;
    WrapText := True;
    ShrinkToFit := False;
    MergeCells := True;
  end;
  Linha := 4;
  { Cabeçalho da Coluna }
  with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
  begin
    Font.Size := 9;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    Value2 := 'Descrição';
    WrapText := True;
    ShrinkToFit := False;
    Rows.RowHeight := 12.75;
    ColumnWidth := 50;
  end;
  with ExcelWorkSheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)] do
  begin
      with Borders[xlInsideVertical] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeTop] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeRight] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeLeft] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlEdgeBottom] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
  end;
  if (Tipo = 1) then {Tipo 1:  Gerar planilha com produtos do Cliente selecionado }
  begin
     with Produtos do
     begin
       Close;
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('cod_cliente').AsString := trim(fr_CadLista.IBDataSetcod_cliente.AsString);
       ParamByName('cod_fornecedor').AsInteger := fr_CadLista.IBDataSetcod_fornecedor.AsInteger;
       Open;
       Linha := 5;

       with ExcelWorksheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)] do
       begin
         Font.Size := 9;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         Value := '*** ITENS DISPONÍVEIS PARA COTAÇÃO ***' +#10#13 + 'Para incluir um item nessa cotação, preencha os preços dos itens e os comentários, ' +
                  'salvar e importar a planilha, lembrando de deixar os códigos deles sem cor de preenchimento.';
         WrapText := True;
         ShrinkToFit := False;
         MergeCells := True;
         RowHeight := 12.75 * 4;
       end;
       Inc(Linha);

       while Not(EOF) do
       begin
         { A - Código do Produto }
         with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
         begin
           Font.Size := 9;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           NumberFormat := '@';
           Value := FmtProdutoCliente(trim(fr_CadLista.IBDataSetcod_cliente.AsString), FieldByName('cod_produto').AsString).fmtProduto;
           WrapText := True;
           ShrinkToFit := False;
         end;
         { D - Descrição do Produto em Português }
         with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
         begin
           with ProdutoDet(FieldByName('cod_produto').AsString, fr_CadLista.IBDataSetcod_cliente.AsString, fr_CadLista.IBDataSetcod_fornecedor.AsInteger) do
           begin
             s1 := Ingles;
             s2 := Portugues;

             if s1[Length(s1)] <> '.' then
                s1 := s1 + '.';

             s := s2 + ' ' + S1 + '. ('+ Grupo + ', NCM: ' + Ncm + ')';
           end;
           Font.Size := 9;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           Value := s;
           WrapText := True;
           ShrinkToFit := False;
           Rows.RowHeight := 12.75;
           ColumnWidth := 50;
         end;
         Inc(Linha);
         Next;
       end;
       Close;
     end;
  end else
  begin  {Tipo = 2: Gerar planilha com produtos da cotação + os outros produtos do cliente que não entraram na cotação }
     with produtos_lista do
     begin
       Close;
       ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
       ParamByName('num_lista').AsInteger :=  fr_CadLista.IBDataSetnum_lista.AsInteger;
       Open;
       Origem := FieldByName('Origem').AsString;
       Linha := 5;

       with ExcelWorksheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)] do
       begin
         Font.Size := 9;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         Value := '*** ITENS JA INCLUÍDOS NA COTAÇÃO ***' +#10#13 + 'Se quiser excluir algum item da cotação acima, colocar o preço 0 (zero) ' +
                  'no item e importar a planilha,  lembrando de deixar os códigos deles sem cor de preenchimento.';
         WrapText := True;
         ShrinkToFit := False;
         MergeCells := True;
         RowHeight := 12.75 * 4;
       end;
       Inc(Linha);

       while Not(EOF) do
       begin
         { A - Código do Produto }
         with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
         begin
           Font.Size := 9;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           NumberFormat := '@';
           Value := FmtProdutoCliente(trim(fr_CadLista.IBDataSetcod_cliente.AsString), FieldByName('cod_produto').AsString).fmtProduto;
           WrapText := True;
           ShrinkToFit := False;
         end;
         { B - Preço do Produto }
         with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
         begin
           Font.Size := 9;
           HorizontalAlignment := xlRight;
           VerticalAlignment := xlCenter;
           if Not(FieldByName('vlr_unitario').IsNull) then
              Value := FieldByName('vlr_unitario').AsFloat
           else
              Value := null;

           NumberFormat := '#.##0,000000';
           WrapText := True;                                   
           ShrinkToFit := False;
         end;
         { C - Observações sobre o Preço }
         with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
         begin
           Font.Size := 9;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           Value := StringReplace(trim(FieldByName('obs_preco').AsString), #13#10, ' ', [rfReplaceAll]);
           WrapText := True;
           ShrinkToFit := False;
           Rows.RowHeight := 12.75;
           ColumnWidth := 50;
         end;
         { D - Descrição do Produto em Português }
         with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
         begin
           with ProdutoDet(FieldByName('cod_produto').AsString, fr_CadLista.IBDataSetcod_cliente.AsString, fr_CadLista.IBDataSetcod_fornecedor.AsInteger) do
           begin
             s1 := Ingles;
             s2 := Portugues;

             if s1[Length(s1)] <> '.' then
                s1 := s1 + '.';

             s := s2 + ' ' + S1 + '. ('+ Grupo + ', NCM: ' + Ncm + ')';
           end;
           Font.Size := 9;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           Value := s;
           WrapText := True;
           ShrinkToFit := False;
           Rows.RowHeight := 12.75;
           ColumnWidth := 50;
         end;
         Inc(Linha);
         Next;

         if (Origem <> FieldByName('Origem').AsString) then
         begin
            Linha := Linha + 2;
            with ExcelWorksheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)] do
            begin
              Font.Size := 9;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlCenter;
              Value := '*** ITENS NÃO INCLUÍDOS NA COTAÇÃO ***' +#10#13 +
                       'Se quiser incluir mais itens nesta cotação, pode copiar os itens da relação abaixo e colar eles a partir da primeira linha livre ' +
                       ' acima, lembrando de deixar os códigos deles sem cor de preenchimento';
              WrapText := True;
              ShrinkToFit := False;
              MergeCells := True;
              RowHeight := 12.75 * 4;
            end;
            Inc(Linha);
         end;

         Origem := FieldByName('Origem').AsString;
       end;
       Close;
     end;
  end;
end;

procedure Tfr_CadLista_Preco.man_lista_precoAfterDelete(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
   finally
      Transaction.CommitRetaining;
      Refresh;
   end;

end;

procedure Tfr_CadLista_Preco.actImportarExecute(Sender: TObject);
begin
  inherited;
  { importar itens para a lista de preços }
  Screen.Cursor := crHourGlass;
  tpExcel := 'C';
  AbrirExcel(FileName);
  LerHeader;
  LerItens;
  Screen.Cursor := crDefault;
  actModeloExecute(nil);
end;

end.


