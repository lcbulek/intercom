unit SigIMP01_081;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Excel2000,
  OleServer, Spin, DateUtils, AniThread;

type
  Tfr_HistoricoComprasEmbarque = class(TForm)
    Panel1: TPanel;
    btnGerar: TBitBtn;
    btnAbrir: TBitBtn;
    BitBtn3: TBitBtn;
    ActionList1: TActionList;
    actGerar: TAction;
    actAbrir: TAction;
    Clientes: TIBQuery;
    ds_Clientes: TDataSource;
    Fornecedores: TIBQuery;
    ds_Fornecedores: TDataSource;
    lbClientes: TLabel;
    dbcClientes: TJvDBLookupCombo;
    lbFornecedores: TLabel;
    dbcFornecedores: TJvDBLookupCombo;
    PedidoProdutos: TIBQuery;
    Produtos: TIBQuery;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialies_modelo: TIntegerField;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    embalagem: TIBQuery;
    parametro_comercialdir_planilhas: TIBStringField;
    lbAno: TLabel;
    seAno: TSpinEdit;
    pedido_adic_desc: TIBQuery;
    panGauge: TPanel;
    embalagemcod_empresa: TSmallintField;
    embalagemcod_produto: TIBStringField;
    embalagempeso_unitario: TFloatField;
    embalagemaltura: TIBBCDField;
    embalagemlargura: TIBBCDField;
    embalagemprofundidade: TIBBCDField;
    embalagemvolume: TIBBCDField;
    embalagemarea: TIBBCDField;
    embalagemqtd_master: TIBBCDField;
    embalagemqtd_inner: TIBBCDField;
    embalagemobservacao: TIBStringField;
    embalagemdat_cadastro: TDateTimeField;
    embalagemdat_cad_dimensoes: TDateField;
    embalagemdat_cad_peso: TDateField;
    embalagemdat_cad_master: TDateField;
    embalagemdat_cad_inner: TDateField;
    embalagemobs_caixas: TIBStringField;
    Clientescod_cliente: TIBStringField;
    Fornecedorescod_fornecedor: TIntegerField;
    Fornecedoresraz_social_reduz: TIBStringField;
    parametro_comercialmod_plan_itens_emb_prod: TBlobField;
    lbCodProduto: TLabel;
    edtCodProduto: TEdit;
    PedidoProdutosnum_sequencia: TIntegerField;
    PedidoProdutoscod_produto: TIBStringField;
    PedidoProdutosnum_pedido: TLargeintField;
    PedidoProdutosdat_liberacao: TDateField;
    PedidoProdutosnum_pedido_cli: TIBStringField;
    PedidoProdutosnum_pedido_for: TIBStringField;
    PedidoProdutosnum_ref_volume: TIBStringField;
    PedidoProdutosqtd_pedido: TIBBCDField;
    PedidoProdutosvlr_unit_pedido: TFloatField;
    PedidoProdutosvlr_unit_ped_esp: TFloatField;
    PedidoProdutosvlr_pedido: TIBBCDField;
    PedidoProdutosvlr_pedido_esp: TIBBCDField;
    PedidoProdutosies_emb_esp: TIBStringField;
    PedidoProdutosnum_fatura: TIBStringField;
    PedidoProdutosdat_fatura: TDateField;
    PedidoProdutosqtd_fatura: TIBBCDField;
    PedidoProdutosvlr_unit_fatura: TFloatField;
    PedidoProdutosvlr_fatura: TIBBCDField;
    PedidoProdutosvlr_fatura_esp: TIBBCDField;
    PedidoProdutosqtd_pendente: TIBBCDField;
    PedidoProdutosvlr_pendente: TIBBCDField;
    PedidoProdutosvlr_pendente_esp: TIBBCDField;
    PedidoProdutospes_bruto: TIBBCDField;
    PedidoProdutosvolume: TIBBCDField;
    PedidoProdutosdat_embarque: TDateField;
    PedidoProdutosobs_preco: TMemoField;
    PedidoProdutosobs_preco_esp: TMemoField;
    lbListaProdutos: TLabel;
    memListaProdutos: TMemo;
    t_histcompras: TIBDataSet;
    qryProdutos: TIBQuery;
    t_histcompraslogin: TIBStringField;
    t_histcomprast_idx: TIntegerField;
    t_histcomprascod_produto: TIBStringField;
    t_histcomprascod_cliente: TIBStringField;
    t_histcomprascod_fornecedor: TIntegerField;
    t_histcomprasnom_fornecedor: TIBStringField;
    stInfo: TStaticText;
    actImportar: TAction;
    bbImportar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure AbrirExcel(Caminho: String; Visible: boolean = False);
    Procedure AbrirPlanilha(FileName: String);
    procedure FecharExcel;
    procedure ProdutosAfterScroll(DataSet: TDataSet);
    procedure FornecedoresBeforeOpen(DataSet: TDataSet);
    procedure ClientesBeforeOpen(DataSet: TDataSet);
    procedure dbcFornecedoresChange(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    Procedure PrintPedidos(Cliente: String; Fornecedor: Integer; Ano: String; CodProduto: String);
    procedure TotalFornecedor;
    procedure GerarAdicionaisDescontos(Var pLinha: Integer);
    procedure OpenClientesFornecedores;
    procedure FormShow(Sender: TObject);
    procedure t_histcomprasAfterPost(DataSet: TDataSet);
    procedure t_histcomprasAfterDelete(DataSet: TDataSet);
    procedure actImportarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HistCompProduto;
    procedure HistCompCliFor;
    procedure HistListaProdutos;
  end;

type
    TAcaoMenu = (actHistProduto, actHistCliFor, actHistListaProdutos);

var
  fr_HistoricoComprasEmbarque: Tfr_HistoricoComprasEmbarque;
  FileName : String;
  DIR_PLANILHAS : String;
  AcaoMenu: TAcaoMenu;
  Linha, LinhaAnt : integer;
  g: array[1..6] of string; { total geral }

implementation

uses unConnection, unMenuCompl, Math, SIGIMP01_045;

{$R *.dfm}



procedure Tfr_HistoricoComprasEmbarque.HistCompProduto;
begin
  lbClientes.Visible := False;
  dbcClientes.Visible := False;
  lbFornecedores.Visible := False;
  dbcFornecedores.Visible := False;
  lbAno.Visible := False;
  seAno.Visible := False;
  lbListaProdutos.Visible := False;
  memListaProdutos.Visible := False;
  stInfo.Visible := False;
  bbImportar.Visible := False;

  fr_HistoricoComprasEmbarque.Width := 410;
  Caption := 'Compras e Embarque de um Produto';
  lbCodProduto.Top := 9;
  edtCodProduto.Top := 23;
  lbCodProduto.Visible := True;
  edtCodProduto.Visible := True;
  edtCodProduto.SetFocus;
  AcaoMenu := actHistProduto;
end;

procedure Tfr_HistoricoComprasEmbarque.HistListaProdutos;
begin
  lbClientes.Visible := True;
  dbcClientes.Visible := True;
  lbFornecedores.Visible := False;
  dbcFornecedores.Visible := False;
  lbAno.Visible := False;
  seAno.Visible := False;
  lbCodProduto.Visible := False;
  edtCodProduto.Visible := False;
  bbImportar.Visible := True;

  lbListaProdutos.Top := 47;
  memListaProdutos.Top := 61;
  memListaProdutos.Height := 320;
  stInfo.Visible := True;
  stInfo.Top := 61;
  bbImportar.Top := 130;
  lbListaProdutos.Visible := True;
  memListaProdutos.Visible := True;
  dbcClientes.SetFocus;
  fr_HistoricoComprasEmbarque.Width := 410;
  Caption := 'Compras e Embarque de uma Lista de Produtos';
  AcaoMenu := actHistListaProdutos;
end;

procedure Tfr_HistoricoComprasEmbarque.HistCompCliFor;
begin
  lbClientes.Visible := True;
  dbcClientes.Visible := True;
  lbFornecedores.Visible := True;
  dbcFornecedores.Visible := True;
  lbAno.Visible := True;
  seAno.Visible := True;
  lbCodProduto.Visible := False;
  edtCodProduto.Visible := False;
  lbListaProdutos.Visible := False;
  memListaProdutos.Visible := False;
  stInfo.Visible := False;
  bbImportar.Visible := False;

  fr_HistoricoComprasEmbarque.Width := 450;
  lbAno.Left := 4;
  seAno.Left := 4;
  dbcClientes.SetFocus;
  Caption := 'Compras/Embarque de Produtos por Cliente/Fornecedor p/Ano';
  AcaoMenu := actHistCliFor;
end;

procedure Tfr_HistoricoComprasEmbarque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Produtos.Close;
  PedidoProdutos.Close;                          
  Embalagem.close;
  Parametro_Comercial.Close;

  Action := caFree;                                                               
  fr_HistoricoComprasEmbarque := nil;
end;

procedure Tfr_HistoricoComprasEmbarque.FormCreate(Sender: TObject);
begin
  seAno.Value :=  YearOf(Buscar_DateTime);
  OpenClientesFornecedores;
end;

procedure Tfr_HistoricoComprasEmbarque.dbcClientesChange(Sender: TObject);
begin
   with Fornecedores do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select b."cod_fornecedor", c."raz_social_reduz"           ');
     SQL.Add('  from "pedido" a, "pedido_complemento" b, "fornecedor" c ');
     SQL.Add(' where                                                    ');
     SQL.Add('       a."cod_empresa" = :cod_empresa                     ');
     if (dbcClientes.Value <> '0') then
     begin
        SQL.Add('   and a."cod_cliente" = :cod_cliente                     ');
        ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
     end;
     SQL.Add('   and a."ies_tip_pedido" = ''P''                         ');
     SQL.Add('   and b."cod_empresa" = a."cod_empresa"                  ');
     SQL.Add('   and b."num_pedido"  = a."num_pedido"                   ');
     SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"            ');
     SQL.Add('group by 1,2                                              ');
     SQL.Add('order by 2                                                ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     Open;
   end;
   actImportar.Enabled := dbcClientes.Value <> '0'; 
end;

procedure Tfr_HistoricoComprasEmbarque.actGerarExecute(Sender: TObject);
Var
  i, CodFornecedor: Integer;
  CodCliente : String;
  h, m, s, msec : word;
begin
  DecodeTime(Now, h, m, s, msec);

  { Gerar planilha com Produtos Embarcados }
  if (Clientes.IsEmpty) then
  begin
    MessageDlg('Não existe histórico de compras de clientes para o ano de ' + seAno.Text, mtWarning, [mbOk], 0);
    dbcClientes.SetFocus;
    Abort;
  end;

  if (Fornecedores.IsEmpty) then
  begin
    MessageDlg('Não existe histórico de compras de fornecedores para o ano de ' + seAno.Text, mtWarning, [mbOk], 0);
    dbcClientes.SetFocus;
    Abort;
  end;

  if (AcaoMenu = actHistCliFor) then
  begin
    if ((dbcClientes.Value = '0')  and (dbcFornecedores.Value = '0')) then Exit;
    if ((dbcClientes.Value = '0')  and (dbcFornecedores.Value <> '0')) then Exit;

    CodCliente := Clientescod_cliente.AsString;
    CodFornecedor := Fornecedorescod_fornecedor.AsInteger;
  end;

  if (AcaoMenu = actHistProduto) then
  begin
    with ProdutoExiste(trim(edtCodProduto.Text)) do
    begin
       if Not(Existe) then Exit;
       CodFornecedor := 0;  // 06.06.21 - Trazer os produtos do Cliente para todos os Fornecedores. Ex.: 10766%
       CodCliente := Cliente;

       dbcClientes.KeyValue := CodCliente;
       dbcFornecedores.KeyValue := CodFornecedor;
    end;
  end;

  { obter modelo da planilha de romaneio  }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  if GetBit(parametro_comercialies_modelo.AsInteger, 5) = 0 then
  begin
    Application.MessageBox('O modelo de planilha para a Itens Embarcados por Pedido não foi definido', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;

  { Pasta onde será gravada a planilha de Shipping List  }
  DIR_PLANILHAS := parametro_comercialdir_planilhas.AsString;
  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para os documentos não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { diretório da Planilha, mais subpasta com código do cliente }
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(clientescod_cliente.AsString);
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\SHIPMENTS PRODUCTS';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { FileName da Planilha = Código do Cliente + FileName Fornecedor Reduzido }

  if (AcaoMenu = actHistProduto) then { Histórico de Produtos }
     FileName := trim(Clientescod_cliente.AsString) + '-PRODUCT ' + trim(edtCodProduto.Text);

  if (AcaoMenu = actHistCliFor) then
  begin
     if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value = '0')) then { 1 cliente todos fornecedor }
        FileName := trim(dbcClientes.Text) + '-' + trim(StringReplace(dbcFornecedores.Text,  '*','', [rfReplaceAll]))
     else if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value <> '0')) then { 1 cliente 1 fornecedor }
           FileName := trim(dbcClientes.Text) + '-' + trim(dbcFornecedores.Text);
     FileName := FileName + '-YEAR ' + seAno.Text;
  end;

  if (AcaoMenu = actHistListaProdutos) then
  begin
     FileName := trim(Clientescod_cliente.AsString) + '-LIST OF PRODUCTS';
  end;

  FileName := StringReplace(FileName, '/', '-', [rfReplaceAll]);
  FileName := StringReplace(FileName, '\', '-', [rfReplaceAll]);
  FileName := DIR_PLANILHAS + '\' + trim(FileName) + '-SHIP PRODUCTS' + '.xls';

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  actGerar.Enabled := False;
  Application.ProcessMessages;

  { Criar a Planilha sobrepondo a mesma se existir }
  parametro_comercialmod_plan_itens_emb_prod.SaveToFile(FileName);
  AbrirExcel(FileName, False);

  { Gerar dados para a Shipment Products }
  Screen.Cursor := crHourGlass;

  { Imprimir Pedidos }
  Linha := 5;

  if (AcaoMenu = actHistCliFor) then
  begin
     if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value = '0')) then
     begin
       PrintPedidos(dbcClientes.Value, StrToInt((dbcFornecedores.Value)), seAno.Text, '');
     end;
     if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value <> '0')) then
     begin
       PrintPedidos(dbcClientes.Value, StrToInt((dbcFornecedores.Value)), seAno.Text, '');
     end;
     { D - TOTAL GERAL }
     with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
     begin
       Value := 'TOTAL GERAL:';
       HorizontalAlignment := xlLeft;
       VerticalAlignment := xlCenter;
       MergeCells := True;
       Font.Bold := False;
       Font.Size := 8;
       Font.ColorIndex := 0;
     end;
     { H - TOTAL GERAL REAL }
     with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
     begin
       Formula := g[1];
       NumberFormat := '#.##0,00';
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
       Font.Bold := False;
       Font.Size := 8;
       Font.ColorIndex := 0;
       HorizontalAlignment := xlRight;
     end;
     { K - TOTAL GERAL ESPECIAL }
     with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
     begin
       Formula := g[2];
       NumberFormat := '#.##0,00';
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
       Font.Bold := False;
       Font.Size := 8;
       Font.ColorIndex := 0;
       HorizontalAlignment := xlRight;
     end;
     { Q - TOTAL GERAL REAL FATURA }
     with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
     begin
       NumberFormat := '#.##0,00';
       Formula := g[3];
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
       Font.Bold := False;
       Font.Size := 8;
       Font.ColorIndex := 0;
       HorizontalAlignment := xlRight;
     end;
     { R - TOTAL GERAL ESPECIAL FATURA }
     with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
     begin
       NumberFormat := '#.##0,00';
       Formula := g[4];
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
       Font.Bold := False;
       Font.Size := 8;
       Font.ColorIndex := 0;
       HorizontalAlignment := xlRight;
     end;
     { T - TOTAL GERAL PENDENTE REAL }
     with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
     begin
       NumberFormat := '#.##0,00';
       Formula := g[5];
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
       Font.Bold := False;
       Font.Size := 8;
       Font.ColorIndex := 0;
       HorizontalAlignment := xlRight;
     end;
     { U - TOTAL GERAL PENDENTE ESPECIAL }
     with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
     begin
       NumberFormat := '#.##0,00';
       Formula := g[6];
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
       Font.Bold := False;
       Font.Size := 8;
       Font.ColorIndex := 0;
       HorizontalAlignment := xlRight;
     end;
     {bordas na região dos totais }
     with ExcelWorkSheet.Range['A'+IntToStr(Linha),'U' + IntToStr(Linha)] do
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
      Font.Bold := False;
      Font.Size := 8;
      Font.ColorIndex := 0;
      RowHeight := 12;
     end;
  end;

  if (AcaoMenu = actHistProduto) then
     PrintPedidos(CodCliente, CodFornecedor, seAno.Text, edtCodProduto.Text);

  if (AcaoMenu = actHistListaProdutos) then
  begin
    { abrir tabela temporária }
    with t_histcompras do
    begin
       Close;
       ParamByName('login').Value := vgLogin;
       ParamByName('t_idx').Value := msec;
       Open;
    end;

    for i := 0 to memListaProdutos.Lines.Count - 1 do
    begin
      { procurar cliente/fornecedor do produto% }
      if (trim(memListaProdutos.Lines[i]) <> '') then
      begin
         with qryProdutos do
         begin
           Close;
           ParamByName('cod_empresa').Value := vgCod_Empresa;
           ParamByName('cod_produto').Value := trim(memListaProdutos.Lines[i]);
           ParamByName('cod_cliente').Value := trim(dbcClientes.Text);
           Open;
           if (IsEmpty) then
           begin
              memListaProdutos.Lines[i] := memListaProdutos.Lines[i] + ' - NOT FOUND';
           end;
           { popular tabela temporária }
           while Not(qryProdutos.Eof) do
           begin
             t_histcompras.Append;
             t_histcompras.FieldByName('login').Value := vgLogin;
             t_histcompras.FieldByName('t_idx').AsInteger := msec;
             t_histcompras.FieldByName('cod_produto').Value := FieldByName('cod_produto').AsString;
             t_histcompras.FieldByName('cod_cliente').Value := FieldByName('cod_cliente').AsString;
             t_histcompras.FieldByName('cod_fornecedor').Value := FieldByName('cod_fornecedor').AsInteger;
             t_histcompras.FieldByName('nom_fornecedor').Value := FieldByName('raz_social_reduz').AsString;
             t_histcompras.Post;
             Next;
           end;
         end;
      end;
    end;

    PrintPedidos('', 0,'', '');

    { limpar tabela temporária }
    with t_histcompras do
    begin
      First;
      while Not(Eof) do Delete;
      Close;
    end;
  end;

  { Salvar Planilha Gerada e Fechar o Excel }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  FecharExcel;
  Screen.Cursor := crDefault;

  { finalizar progress bar }
  actgerar.Enabled := True;
  actAbrir.Enabled := True;
  Ani.Terminate;
  Sleep(3000);
  AbrirPlanilha(FileName);
end;

procedure Tfr_HistoricoComprasEmbarque.TotalFornecedor;
begin
   if (Linha > 5) then
   begin
      { Total por Fornecedor }
      with ExcelWorksheet.Range['D'+ inttostr(linha),'E'+inttostr(linha)] do
      begin
         MergeCells := True;
         Value := 'TOTAL FORNECEDOR:';
         Interior.ColorIndex := 0;
         Font.ColorIndex := 0;
         HorizontalAlignment := xlLeft;
         VerticalAlignment := xlCenter;
      end;
      { G - Célula vazia }
      ExcelWorksheet.Range['G'+ inttostr(linha),'I'+inttostr(linha)].Interior.ColorIndex := 4;
      { H - TOTAL REAL PRODUTOS }
      with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(H'+IntTostr(LinhaAnt)+':H'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 4;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
       end;
      { J - Célula vazia }
      ExcelWorksheet.Range['J'+ inttostr(linha),'L'+inttostr(linha)].Interior.ColorIndex := 7;
      { K - TOTAL ESPECIAL PRODUTOS }
      with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(K'+IntTostr(LinhaAnt)+':K'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 7;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
       end;
      { M - Célula vazia }
      ExcelWorksheet.Range['M'+ inttostr(linha),'Q'+inttostr(linha)].Interior.ColorIndex := 6;
      { Q - TOTAL REAL FATURAS }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(Q'+IntTostr(LinhaAnt)+':Q'+IntTostr(Linha-1)+')';
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
      end;
      { R - TOTAL ESPECIAL FATURAS }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(R'+IntTostr(LinhaAnt)+':R'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 7;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
      end;
      { S - Célula vazia }
      ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)].Interior.ColorIndex := 45;
      { T - TOTAL PENDENTE REAL }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(T'+IntTostr(LinhaAnt)+':T'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 45;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
      end;
      { U - TOTAL PENDENTE ESPECIAL }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(U'+IntTostr(LinhaAnt)+':U'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 7;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
      end;

      { Acumular Totais Geral }
      g[1] := g[1] + 'H'+IntToStr(Linha);
      g[2] := g[2] + 'K'+IntToStr(Linha);
      g[3] := g[3] + 'Q'+IntToStr(Linha);
      g[4] := g[4] + 'R'+IntToStr(Linha);
      g[5] := g[5] + 'T'+IntToStr(Linha);
      g[6] := g[6] + 'U'+IntToStr(Linha);

      if Not(Produtos.EOF) then
      begin
         g[1] := g[1] + '+';
         g[2] := g[2] + '+';
         g[3] := g[3] + '+';
         g[4] := g[4] + '+';
         g[5] := g[5] + '+';
         g[6] := g[6] + '+';
      end;
      Inc(Linha);
   end;
end;


procedure Tfr_HistoricoComprasEmbarque.PrintPedidos(Cliente: String; Fornecedor: Integer; Ano: String; CodProduto: String);
Var
  s : String;
begin
   { Incluir os Pedidos na Planilha Excel }

   LinhaAnt := 5;
   { Inicializar Total geral }
   g[1] := '=';
   g[2] := '=';
   g[3] := '=';
   g[4] := '=';
   g[5] := '=';
   g[6] := '=';

   { Abrir Produtos }
   with Produtos do
   begin
      Close;
      SQL.Clear;

      if (AcaoMenu in [actHistProduto, actHistCliFor]) then
      begin
         SQL.Add('select a."cod_cliente", a."cod_fornecedor", a."cod_produto", b."raz_social_reduz" "nom_fornecedor" ');
         SQL.Add('  from "produto" a, "fornecedor" b                                                                 ');
         SQL.Add('where a."cod_empresa" = :cod_empresa                                                               ');
         SQL.Add('  and a."cod_cliente" = :cod_cliente                                                               ');
         SQL.Add('  and b."cod_fornecedor" = a."cod_fornecedor"                                                      ');

         if (Fornecedor > 0) then
         begin
            SQL.Add('  and a."cod_fornecedor" = :cod_fornecedor                                                      ');
            ParamByName('cod_fornecedor').Value  := Fornecedor;
         end;

         if (AcaoMenu = actHistProduto) then
         begin
            SQL.Add('  and a."cod_produto" like :cod_produto || ''%''                                                ');
            ParamByName('cod_produto').Value := trim(CodProduto);
         end;

         SQL.Add('  and exists (select * from "pedido" p , "pedido_complemento" c, "pedido_produto" b                ');
         SQL.Add('               where p."cod_empresa" = a."cod_empresa"                                             ');
         SQL.Add('                 and p."ies_tip_pedido" = ''P''                                                    ');
         SQL.Add('                 and p."cod_cliente" = a."cod_cliente"                                             ');
         SQL.Add('                 and c."cod_fornecedor" = a."cod_fornecedor"                                       ');

         if (AcaoMenu = actHistCliFor) then
         begin
           SQL.Add('                 and substr(p."dat_liberacao", 1, 4) = :ano                                      ');
           ParamByName('ano').Value := Ano;
         end;

         SQL.Add('                 and c."cod_empresa" = p."cod_empresa"                                             ');
         SQL.Add('                 and c."num_pedido" = p."num_pedido"                                               ');
         SQL.Add('                 and b."cod_empresa" = p."cod_empresa"                                             ');
         SQL.Add('                 and b."num_pedido" = p."num_pedido"                                               ');
         SQL.Add('                 and b."cod_produto" = a."cod_produto"                                             ');
         SQL.Add('                 and (((b."qtd_faturada" + b."qtd_romaneada") > 0)                                 ');
         SQL.Add('                   or ((b."qtd_faturada" + b."qtd_romaneada") = 0)))                               ');
         SQL.Add('order by 1,4,3                                                                                     ');

         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
         ParamByName('cod_cliente').Value     := Cliente;
      end;

      if (AcaoMenu = actHistListaProdutos) then
      begin
         SQL.Add('select DISTINCT a."cod_cliente", a."cod_fornecedor", a."cod_produto", b."nom_fornecedor" ');
         SQL.Add('from "produto" a, "t_histcompras" b                                                      ');
         SQL.Add('where a."cod_empresa" = :cod_empresa                                                     ');
         SQL.Add('  and b."cod_cliente" = a."cod_cliente"                                                  ');
         SQL.Add('  and b."cod_fornecedor" = a."cod_fornecedor"                                            ');
         SQL.Add('  and b."cod_produto" = a."cod_produto"                                                  ');
         SQL.Add('  and exists (select * from "pedido" p , "pedido_complemento" c, "pedido_produto" b      ');
         SQL.Add('               where p."cod_empresa" = a."cod_empresa"                                   ');
         SQL.Add('                 and p."ies_tip_pedido" = ''P''                                          ');
         SQL.Add('                 and p."cod_cliente" = a."cod_cliente"                                   ');
         SQL.Add('                 and c."cod_fornecedor" = a."cod_fornecedor"                             ');
         SQL.Add('                 and c."cod_empresa" = p."cod_empresa"                                   ');
         SQL.Add('                 and c."num_pedido" = p."num_pedido"                                     ');
         SQL.Add('                 and b."cod_empresa" = p."cod_empresa"                                   ');
         SQL.Add('                 and b."num_pedido" = p."num_pedido"                                     ');
         SQL.Add('                 and b."cod_produto" = a."cod_produto"                                   ');
         SQL.Add('                 and (((b."qtd_faturada" + b."qtd_romaneada") > 0)                       ');
         SQL.Add('                   or ((b."qtd_faturada" + b."qtd_romaneada") = 0)))                     ');
         SQL.Add('order by 1,4,3                                                                           ');

         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      end;
      Open;

   end;

   { ler Produtos }
   while Not(Produtos.EOF) do
   begin
      { Cabeçalho quebra por fornecedor}
      if (Produtos.FieldByName('cod_fornecedor').AsInteger <> Fornecedor) then
      begin
         TotalFornecedor;

         Fornecedor := Produtos.FieldByName('cod_fornecedor').AsInteger;
         with ExcelWorksheet.Range['A'+ inttostr(linha),'U'+inttostr(linha)] do
         begin
            Value := 'CLIENT/SUPPLIER: ' + Produtos.FieldByName('cod_cliente').AsString + ' / ' + Produtos.FieldByName('nom_fornecedor').AsString;
            Font.Bold := False;
            Font.Size := 10;
            Font.ColorIndex := 0;
            Interior.ColorIndex := 45;
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlCenter;
            MergeCells := True;
         end;
         Inc(Linha);
         LinhaAnt := Linha;
      end;


      { A - ITEM  }
      with ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)] do
      begin
         NumberFormat := '@';
         Value := FmtProdutoCliente(Produtos.FieldByName('cod_cliente').AsString, Produtos.FieldByName('cod_produto').AsString).fmtProduto;
         HorizontalAlignment := xlLeft;
         VerticalAlignment := xlCenter;
         Interior.ColorIndex := 0;
      end;
      { B - DESCRIÇÃO }
      with ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)] do
      begin
         s := trim(ProdutoDet(Produtos.FieldByName('cod_produto').AsString, Produtos.FieldByName('cod_cliente').AsString, Produtos.FieldByName('cod_fornecedor').AsInteger).Ingles) + ','
         + trim(ProdutoDet(Produtos.FieldByName('cod_produto').AsString, Produtos.FieldByName('cod_cliente').AsString, Produtos.FieldByName('cod_fornecedor').AsInteger).Portugues);
         Value := trim(StringReplace(s, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
         HorizontalAlignment := xlLeft;
         VerticalAlignment := xlTop;
         WrapText := True;
         ShrinkToFit := False;
         Interior.ColorIndex := 0;
      end;
      { Abrir PedidoProdutos }
      with PedidoProdutos do
      begin
         Close;
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
         ParamByName('cod_produto').AsString := trim(Produtos.FieldByName('cod_produto').AsString);
         ParamByName('cod_cliente').AsString := trim(Produtos.FieldByName('cod_cliente').AsString);
         ParamByName('cod_fornecedor').AsInteger := Produtos.FieldByName('cod_fornecedor').AsInteger;
         if (AcaoMenu = actHistCliFor) then
           ParamByName('ano').AsString := Ano
         else
           ParamByName('ano').Clear;

         Open;
         if (PedidoProdutos.IsEmpty) then Exit; // sair se não existir pedidos
      end;
      { Ler PedidoProdutos }
      while Not(PedidoProdutos.EOF) do
      begin
         { C - PEDIDO }
         with ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)] do
         begin
            Value := PedidoProdutosnum_pedido_cli.AsString;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlLeft
         end;
         { D - CONFIRMAÇÃO }
         with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
         begin
            Value := PedidoProdutosnum_pedido_for.AsString;
            Interior.ColorIndex := 0;
            HorizontalAlignment := xlLeft
         end;
         // ******
         { E - DATA DA PROFORMA }
         with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
         begin
            Value := FormatDateTime('dd.mm.yy', PedidoProdutosdat_liberacao.AsDateTime);
            HorizontalAlignment := xlCenter;
            Interior.ColorIndex := 0;
         end;
         { F - QUANTIDADE SOLICITADA }
         with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,0';
            Value := PedidoProdutosqtd_pedido.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 0;
         end;
         { G - PREÇO REAL }
         with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,000000';
            Value := PedidoProdutosvlr_unit_pedido.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 4;
         end;
         { H - TOTAL REAL }
         with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,00';
            Value := PedidoProdutosvlr_pedido.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 4;
         end;
         { I - COMENTÁRIOS PREÇO REAL }
         with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
         begin
            Value := trim(StringReplace(PedidoProdutosobs_preco.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            WrapText := True;
            ShrinkToFit := False;
            Interior.ColorIndex := 4;
         end;
         { J - PREÇO ESPECIAL }
         with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,000000';
            Value := PedidoProdutosvlr_unit_ped_esp.AsFloat;
            HorizontalAlignment := xlRight;
            if (PedidoProdutosvlr_unit_pedido.AsFloat <> PedidoProdutosvlr_unit_ped_esp.AsFloat) then Interior.ColorIndex := 6
                                                                                                 else Interior.ColorIndex := 7;
         end;
         { K - TOTAL ESPECIAL }
         with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,00';
            Value := PedidoProdutosvlr_pedido_esp.AsFloat;
            HorizontalAlignment := xlRight;
            if (PedidoProdutosvlr_pedido.AsFloat <> PedidoProdutosvlr_pedido_esp.AsFloat) then Interior.ColorIndex := 6
                                                                                          else Interior.ColorIndex := 7;
         end;
         { L - COMENTÁRIOS PREÇO ESPECIAL }
         with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
         begin
            Value := trim(StringReplace(PedidoProdutosobs_preco_esp.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            WrapText := True;
            ShrinkToFit := False;
            MergeCells := False;
            Interior.ColorIndex := 7;
         end;
         { M - LOTE }
         with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
         begin
            Value := PedidoProdutosnum_ref_volume.AsString;
            Interior.ColorIndex := 6;
            HorizontalAlignment := xlLeft
         end;
         { N - FATURA }
         with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
         begin
            Value := PedidoProdutosnum_fatura.AsString;
            Interior.ColorIndex := 6;
            HorizontalAlignment := xlLeft
         end;
         { O - DATA DO EMBARQUE }
         with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
         begin
            If Not(PedidoProdutosdat_embarque.IsNull) then
            Value := FormatDateTime('dd.mm.yy', PedidoProdutosdat_embarque.AsDateTime);
            HorizontalAlignment := xlCenter;
            Interior.ColorIndex := 6;
         end;
         { P - QUANTIDADE EMBARCADA }
         with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,0';
            if PedidoProdutosqtd_fatura.AsFloat > 0 then
            Value := PedidoProdutosqtd_fatura.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 6;
         end;
         { Q - TOTAL REAL FATURA }
         with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,00';
            if PedidoProdutosvlr_fatura.AsFloat > 0 then
            Value := PedidoProdutosvlr_fatura.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 6;
         end;
         { R - TOTAL ESPECIAL FATURA }
         with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,00';
            if PedidoProdutosvlr_fatura_esp.AsFloat > 0 then
            Value := PedidoProdutosvlr_fatura_esp.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 7;
         end;
         { S - QUANTIDADE PENDENTE }
         with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,0';
            if PedidoProdutosqtd_pendente.AsFloat > 0 then
            Value := PedidoProdutosqtd_pendente.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 45;
         end;
         { T - VALOR PENDENTE REAL }
         with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,00';
            if PedidoProdutosvlr_pendente.AsFloat > 0 then
            Value := PedidoProdutosvlr_pendente.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 45;
         end;
         { U - VALOR PENDENTE ESPECIAL }
         with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
         begin
            NumberFormat := '#.##0,00';
            if PedidoProdutosvlr_pendente_esp.AsFloat > 0 then
            Value := PedidoProdutosvlr_pendente_esp.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 7;
         end;
         Inc(Linha);
         PedidoProdutos.Next;
      end; { Ler PedidoProdutos }

      {bordas desde o cabeçalho até ultima linha}
      with ExcelWorkSheet.Range['A'+IntToStr(LinhaAnt),'U' + IntToStr(Linha)] do
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
         Font.Bold := False;
         Font.Size := 8;
         Font.ColorIndex := 0;
         RowHeight := 12;
      end;
      Produtos.Next;

   end; { ler Produtos }
   TotalFornecedor;
   Linha := Linha + 2;
end;


procedure Tfr_HistoricoComprasEmbarque.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);
end;

procedure Tfr_HistoricoComprasEmbarque.AbrirExcel(Caminho: String; Visible: boolean = False);
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
  ExcelApplication.Visible[lcid] := Visible;
  ExcelApplication.DisplayAlerts[lcid] := False;
  except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;


Procedure Tfr_HistoricoComprasEmbarque.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;

Procedure Tfr_HistoricoComprasEmbarque.AbrirPlanilha(FileName: String);
Var
  Caminho : String;
  lcid : Cardinal;
  WkBk : _Workbook;
begin
  Caminho := FileName;
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

procedure Tfr_HistoricoComprasEmbarque.ProdutosAfterScroll(DataSet: TDataSet);
begin
  with embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := trim(Produtos.FieldByName('cod_produto').AsString);
    Open;
  end;
end;

procedure Tfr_HistoricoComprasEmbarque.GerarAdicionaisDescontos(Var pLinha: Integer);
Var
  Linha: Integer;
  Tbr, Tbe : String;
begin
  Linha := pLinha;

  Tbr := '=G'+IntToStr(Linha);
  Tbe := '=J'+IntToStr(Linha);
  with pedido_adic_desc do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger	:= vgCod_Empresa;
    ParamByName('num_pedido').Value 	:= PedidoProdutosnum_pedido.AsLargeInt;
    Open;
    if pedido_adic_desc.IsEmpty then
    begin
      Inc(Linha);
      { TOTAIS LIQUIDO DO PEDIDO }
      with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
      begin
        Value := 'TOT LIQUIDO';
        HorizontalAlignment := xlRight;
      end;
      if (Tbr <> '') then
      begin
        ExcelWorkSheet.Cells.Item[Linha, 7].NumberFormat := '#.##0,00';
        ExcelWorkSheet.Cells.Item[Linha, 7].Formula := Tbr;
        ExcelWorkSheet.Cells.Item[Linha, 7].Interior.ColorIndex := 4;
      end;
      if (Tbe <> '') then
      begin
        ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '#.##0,00';
        ExcelWorkSheet.Cells.Item[Linha, 10].Formula := Tbe;
        ExcelWorkSheet.Cells.Item[Linha, 10].Interior.ColorIndex := 7;
      end;
      pLinha := Linha;
      Exit;
    end;

    Inc(Linha);

    while Not(EOF)do
    begin
      { A - Descrição adc/desc }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'D' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Value := StringReplace(trim(FieldByName('txt_descricao').AsString), #13#10, ' ', [rfReplaceAll]);
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        MergeCells := True;
        Interior.ColorIndex := 0;
        Rows.RowHeight := 12.75;
      end;
      { E - Tipo (A/D) }
      if FieldByName('ies_tipo').AsString = 'A' then
         ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value := 'ADICIONAL'
      else
         ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value := 'DESCONTO';
      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      { G - Valor Adicional/Desconto Real }
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc').AsFloat;
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Interior.ColorIndex := 4;
      { J - Valor Adicional/Desconto Especial }
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc_esp').AsFloat;
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Interior.ColorIndex := 7;

      ExcelWorksheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)].Font.Size := 8;

      if (FieldByName('ies_tipo').AsString = 'A') then
      begin
        Tbr := Tbr + '+G'+IntToStr(Linha);
        Tbe := Tbe + '+J'+IntToStr(Linha);
      end;
      if (FieldByName('ies_tipo').AsString = 'D') then
      begin
        Tbr := Tbr + '-G'+IntToStr(Linha);
        Tbe := Tbe + '-J'+IntToStr(Linha);
      end;
      Next;
      Inc(Linha);
    end;
    { TOTAIS LIQUIDO DO PEDIDO }
    with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Value := 'TOT LIQUIDO';
      HorizontalAlignment := xlRight;
    end;
    if (Tbr <> '') then
    begin
      ExcelWorkSheet.Cells.Item[Linha, 7].NumberFormat := '#.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 7].Formula := Tbr;
      ExcelWorkSheet.Cells.Item[Linha, 7].Interior.ColorIndex := 4;
    end;
    if (Tbe <> '') then
    begin
      ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '#.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 10].Formula := Tbe;
      ExcelWorkSheet.Cells.Item[Linha, 10].Interior.ColorIndex := 7;
    end;
  end;
  pLinha := Linha;
end;

procedure Tfr_HistoricoComprasEmbarque.FornecedoresBeforeOpen(
  DataSet: TDataSet);
begin
   Fornecedores.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_HistoricoComprasEmbarque.ClientesBeforeOpen(DataSet: TDataSet);
begin
  Clientes.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_HistoricoComprasEmbarque.dbcFornecedoresChange(Sender: TObject);
begin
  with Clientes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select c."cod_cliente"                                ');
    SQL.Add('from "pedido" a, "pedido_complemento" b, "cliente" c  ');
    SQL.Add('where                                                 ');
    SQL.Add('      a."cod_empresa" = :cod_empresa                  ');
    SQL.Add('  and b."cod_empresa" = a."cod_empresa"               ');
    SQL.Add('  and b."num_pedido"  = a."num_pedido"                ');
    SQL.Add('  and c."cod_cliente" = a."cod_cliente"               ');
    if (dbcFornecedores.Value <> '0') then
    begin
      SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor          ');
      ParamByName('cod_fornecedor').Value := dbcFornecedores.Value;
    end;
     SQL.Add('   and a."ies_tip_pedido" = ''P''                         ');
    SQL.Add('group by 1                                            ');
    SQL.Add('order by 1                                            ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
  if (dbcFornecedores.Value = '0') then Fornecedores.First;
end;

procedure Tfr_HistoricoComprasEmbarque.OpenClientesFornecedores;
begin
  with Clientes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select c."cod_cliente"                                ');
    SQL.Add('from "pedido" a, "pedido_complemento" b, "cliente" c  ');
    SQL.Add('where                                                 ');
    SQL.Add('      a."cod_empresa" = :cod_empresa                  ');
    SQL.Add('  and b."cod_empresa" = a."cod_empresa"               ');
    SQL.Add('  and b."num_pedido"  = a."num_pedido"                ');
    SQL.Add('  and c."cod_cliente" = a."cod_cliente"               ');
    if (dbcFornecedores.Value <> '0') then
    begin
      SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor          ');
      ParamByName('cod_fornecedor').Value := dbcFornecedores.Value;
    end;
     SQL.Add('   and a."ies_tip_pedido" = ''P''                         ');
    SQL.Add('group by 1                                            ');
    SQL.Add('order by 1                                            ');
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
  with Fornecedores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select b."cod_fornecedor", c."raz_social_reduz"           ');
    SQL.Add('  from "pedido" a, "pedido_complemento" b, "fornecedor" c ');
    SQL.Add(' where                                                    ');
    SQL.Add('       a."cod_empresa" = :cod_empresa                     ');
    if (dbcClientes.Value <> '0') then
    begin
       SQL.Add('   and a."cod_cliente" = :cod_cliente                     ');
       ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    end;
    SQL.Add('   and a."ies_tip_pedido" = ''P''                         ');
    SQL.Add('   and b."cod_empresa" = a."cod_empresa"                  ');
    SQL.Add('   and b."num_pedido"  = a."num_pedido"                   ');
    SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"            ');
    SQL.Add('group by 1,2                                              ');
    SQL.Add('order by 2                                                ');
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
end;

procedure Tfr_HistoricoComprasEmbarque.FormShow(Sender: TObject);
begin
(*
  if (AcaoMenu = actHistCliFor) then
  begin
    lbAno.Left := 4;
    lbAno.Refresh;
    seAno.Left := 4;
    seAno.Refresh;
  end; *)
end;

procedure Tfr_HistoricoComprasEmbarque.t_histcomprasAfterPost(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;
end;

procedure Tfr_HistoricoComprasEmbarque.t_histcomprasAfterDelete(
  DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;
end;

procedure Tfr_HistoricoComprasEmbarque.actImportarExecute(Sender: TObject);
Var
  LinhaFim, Linha : integer;
  Produto : string;

begin
  OpenDialog.InitialDir := 'D:\';
  AbrirExcel('', False);

  { obter última linha da planilha }
  Linha := 1;
  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;
  While (Linha <= LinhaFim) do
  begin
      { COL A - Código do Produto }
      Produto := UpperCase(trim(ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Text));
      if (Produto <> '') then
         memListaProdutos.Lines.Add(Produto);
      Inc(Linha);
  end;
  FecharExcel;
  Filename := '';
end;

end.

