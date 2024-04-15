unit SigIMP01_072;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Excel2000,
  OleServer, Spin, DateUtils, AniThread, unType;

type
  Tfr_FaturasRegistradas = class(TForm)
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
    Label1: TLabel;
    dbcClientes: TJvDBLookupCombo;
    Label2: TLabel;
    dbcFornecedores: TJvDBLookupCombo;
    Produtos: TIBQuery;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;             
    parametro_comercialies_modelo: TIntegerField;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    embalagem: TIBQuery;
    parametro_comercialdir_planilhas: TIBStringField;
    Label3: TLabel;
    seAno: TSpinEdit;
    parametro_comercialmod_plan_itens_emb_fat: TBlobField;
    Produtosnum_sequencia: TSmallintField;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto: TIBStringField;
    Produtosqtd_produto: TIBBCDField;
    Produtosvlr_unitario: TFloatField;
    Produtosvlr_liquido: TIBBCDField;
    Produtosqtd_export_box: TIntegerField;
    Produtosvol_caixas: TIBBCDField;
    Produtospes_bruto: TIBBCDField;
    Produtospes_liquido: TIBBCDField;
    Produtosnum_pedido_cli: TIBStringField;
    Produtosnum_pedido_for: TIBStringField;
    Produtossigla: TIBStringField;
    Produtosdat_inspecao: TDateField;
    Produtosvlr_unitario_esp: TFloatField;
    Produtosvlr_liquido_esp: TIBBCDField;
    Produtosobs_preco: TMemoField;
    Produtosobs_preco_esp: TMemoField;
    nf_adic_desc: TIBQuery;
    nf_adic_desccod_empresa: TSmallintField;
    nf_adic_descnum_nota_fiscal: TIntegerField;
    nf_adic_descserie: TIBStringField;
    nf_adic_descnum_sequencia: TSmallintField;
    nf_adic_descies_tipo: TIBStringField;
    nf_adic_descvlr_adic_desc: TIBBCDField;
    nf_adic_descvlr_adic_desc_esp: TIBBCDField;
    nf_adic_desctxt_descricao: TMemoField;
    nf_adic_descnum_pedido: TLargeintField;
    nf_adic_descnum_seq_pedido: TSmallintField;
    Produtostxt_status_producao: TMemoField;
    panGauge: TPanel;
    Faturas: TIBQuery;
    Faturasnum_ref_volume: TIBStringField;
    Faturasnum_fatura: TIBStringField;
    Faturasdat_embarque: TDateField;
    Faturasdat_emissao: TDateTimeField;
    Faturasnum_nota_fiscal: TIntegerField;
    Faturasserie: TIBStringField;
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
    Fornecedorescod_fornecedor: TSmallintField;
    Fornecedoresraz_social_reduz: TIBStringField;
    rgDescricao: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure FaturasAfterScroll(DataSet: TDataSet);
    procedure AbrirExcel(Caminho: String);
    Procedure AbrirPlanilha(FileName: String);
    procedure FecharExcel;
    procedure ProdutosAfterScroll(DataSet: TDataSet);
    procedure ClientesBeforeOpen(DataSet: TDataSet);
    procedure FornecedoresBeforeOpen(DataSet: TDataSet);
    procedure dbcFornecedoresChange(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    Procedure PrintFaturas(Cliente: String; Fornecedor: Integer; Ano: String; Var pLinha: Integer);
    procedure GerarAdicionaisDescontos(Var pLinha: Integer);
    procedure seAnoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FaturasRegistradas: Tfr_FaturasRegistradas;
  FileName : String;
  DIR_PLANILHAS : String;
  p: array[1..6] of string; { total das faturas }
  g: array[1..6] of string; { tota geral }


implementation

uses unConnection, unMenuCompl, Math, SIGIMP01_045;

{$R *.dfm}

procedure Tfr_FaturasRegistradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Produtos.Close;
  Faturas.Close;
  Embalagem.close;
  Parametro_Comercial.Close;

  Action := caFree;
  fr_FaturasRegistradas := nil;
end;

procedure Tfr_FaturasRegistradas.FormCreate(Sender: TObject);
begin
  seAno.Value :=  YearOf(Buscar_DateTime);
  Clientes.Open;
  Fornecedores.Open;
end;

procedure Tfr_FaturasRegistradas.dbcClientesChange(Sender: TObject);
begin
   with Fornecedores do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select b."cod_fornecedor", c."raz_social_reduz"                       ');
     SQL.Add('from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c  ');
     SQL.Add('where a."cod_empresa" = :cod_empresa                                  ');
     if (dbcClientes.Value <> '0') then
     begin
        SQL.Add('   and a."cod_cliente" = :cod_cliente                     ');
        ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
     end;
     SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano                            ');
     SQL.Add('  and b."cod_empresa" = a."cod_empresa"                               ');
     SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                       ');
     SQL.Add('  and b."serie" = a."serie"                                           ');
     SQL.Add('  and c."cod_fornecedor" = b."cod_fornecedor"                         ');
     SQL.Add('group by 1,2                                                          ');
     SQL.Add('order by 2                                                            ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('ano').Value := seAno.Text;
     Open;
   end;
end;

procedure Tfr_FaturasRegistradas.actGerarExecute(Sender: TObject);
Var
  Linha : integer;

begin
  { Gerar planilha com Produtos Embarcados }
  if (Clientes.IsEmpty) then
  begin
    MessageDlg('Não existe faturas de clientes para o ano de ' + seAno.Text, mtWarning, [mbOk], 0);
    dbcClientes.SetFocus;
    Abort;
  end;

  if (Fornecedores.IsEmpty) then
  begin
    MessageDlg('Não existe faturas de fornecedores para o ano de ' + seAno.Text, mtWarning, [mbOk], 0);
    dbcClientes.SetFocus;
    Abort;
  end;

  { obter modelo da planilha de romaneio  }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;                                                               
  end;

  if GetBit(parametro_comercialies_modelo.AsInteger, 6) = 0 then
  begin
    Application.MessageBox('O modelo de planilha para a Itens Embarcados por Fatura não foi definido', 'Informação', MB_ICONINFORMATION+MB_OK);
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

  { FileName da Planilha = Código do Cliente + Nome Fornecedor Reduzido }
  { FileName da Planilha = Código do Cliente + FileName Fornecedor Reduzido }
  if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value <> '0')) then { 1 cliente 1 fornecedor }
     FileName := trim(Clientescod_cliente.AsString) + '-' + trim(Fornecedoresraz_social_reduz.AsString)
  else if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value = '0')) then { 1 cliente todos os fornecedores }
     FileName := trim(Clientescod_cliente.AsString) + '- ALL SUPPLIERS'
  else if ((dbcClientes.Value = '0') and (dbcFornecedores.Value <> '0')) then { todos os clientes 1 fornecedor }
     FileName := 'ALL CLIENTS -' + trim(Fornecedoresraz_social_reduz.AsString)
  else if ((dbcClientes.Value = '0') and (dbcFornecedores.Value = '0')) then { todos os clientes todos os fornecedores }
     FileName := 'ALL CLIENTS - ALL SUPPLIERS';

  FileName := StringReplace(FileName, '/', '-', [rfReplaceAll]);
  FileName := StringReplace(FileName, '\', '-', [rfReplaceAll]);
  FileName := DIR_PLANILHAS + '\' + trim(FileName) + '-SHIP_INVOICE-';
  { acrescentar o Ano escolhido ao nome da planilha }
  FileName := FileName + 'YEAR ' + seAno.Text + '.xls';

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnGerar.Enabled := False;
  btnAbrir.Enabled := False;
  Application.ProcessMessages;

  { Criar a Planilha  }
  parametro_comercialmod_plan_itens_emb_fat.SaveToFile(FileName);
  AbrirExcel(FileName);

  { Gerar dados para a Shipment Products }
  Screen.Cursor := crHourGlass;

  { Imprimir Pedidos }
  Linha := 4;

  { inicializa totais geral }
  g[1] := '=';
  g[2] := '=';
  g[3] := '=';
  g[4] := '=';
  g[5] := '=';
  g[6] := '=';

  if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value <> '0')) then { 1 Cliente - 1 Fornecedor }
  begin
     PrintFaturas(trim(clientescod_cliente.AsString), Fornecedorescod_fornecedor.AsInteger, seAno.Text, Linha);
  end;

  if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value = '0')) then { 1 Cliente e Todos os Fornecedores }
  begin
     while Not(Fornecedores.Eof) do
     begin
       PrintFaturas(trim(clientescod_cliente.AsString), Fornecedorescod_fornecedor.AsInteger, seAno.Text, Linha);
       Fornecedores.Next;
       if Not(Fornecedores.EOF) then
       begin
         g[1] := g[1] + '+';
         g[2] := g[2] + '+';
         g[3] := g[3] + '+';
         g[4] := g[4] + '+';
         g[5] := g[5] + '+';
         g[6] := g[6] + '+';
       end;
     end;
  end;

  if ((dbcClientes.Value = '0') and (dbcFornecedores.Value <> '0')) then { Todos os Clientes e 1 Fornecedor }
  begin
     while Not(Clientes.Eof) do
     begin
       PrintFaturas(trim(clientescod_cliente.AsString), Fornecedorescod_fornecedor.AsInteger, seAno.Text, Linha);
       Clientes.Next;
       if Not(Clientes.EOF) then
       begin
         g[1] := g[1] + '+';
         g[2] := g[2] + '+';
         g[3] := g[3] + '+';
         g[4] := g[4] + '+';
         g[5] := g[5] + '+';
         g[6] := g[6] + '+';
       end;
     end;
  end;

  if ((dbcClientes.Value = '0') and (dbcFornecedores.Value = '0')) then { Todos os Clientes e Todos os Fornecedores }
  begin
     while Not(Clientes.Eof) do
     begin
        with Fornecedores do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select b."cod_fornecedor", c."raz_social_reduz"                       ');
          SQL.Add('from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c  ');
          SQL.Add('where a."cod_empresa" = :cod_empresa                                  ');
          SQL.Add('   and a."cod_cliente" = :cod_cliente                              ');
          SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano                            ');
          SQL.Add('  and b."cod_empresa" = a."cod_empresa"                               ');
          SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                       ');
          SQL.Add('  and b."serie" = a."serie"                                           ');
          SQL.Add('  and c."cod_fornecedor" = b."cod_fornecedor"                         ');
          SQL.Add('group by 1,2                                                          ');
          SQL.Add('order by 2                                                            ');
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('ano').Value := seAno.Text;
          ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
          Open;
       end;
       while Not(Fornecedores.Eof) do
       begin
         PrintFaturas(trim(clientescod_cliente.AsString), Fornecedorescod_fornecedor.AsInteger, seAno.Text, Linha);
         Fornecedores.Next;
         if Not(Fornecedores.EOF) then
         begin
           g[1] := g[1] + '+';
           g[2] := g[2] + '+';
           g[3] := g[3] + '+';
           g[4] := g[4] + '+';
           g[5] := g[5] + '+';
           g[6] := g[6] + '+';
         end;
       end;
       Clientes.Next;
       if Not(Clientes.EOF) then
       begin
         g[1] := g[1] + '+';
         g[2] := g[2] + '+';
         g[3] := g[3] + '+';
         g[4] := g[4] + '+';
         g[5] := g[5] + '+';
         g[6] := g[6] + '+';
       end;
       Linha := Linha + 2;
     end;
  end;

  { TOTAL GERAL }
  Inc(Linha);
  with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
  begin
    Value := 'TOTAL GERAL:';
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlCenter;
    MergeCells := True;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
  end;
  { L - TOTAL GERAL REAL }
  with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
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
  { O - TOTAL GERAL ESPECIAL }
  with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
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
  { Q - TOTAL GERAL VOLUME }
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
  { R - TOTAL GERAL PESO BRUTO }
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
  { S - TOTAL GERAL PESO LIQUIDO }
  with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
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
  { T - TOTAL GERAL NÚMERO DE CAIXAS }
  with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
  begin
    NumberFormat := '###.##0';
    Formula := g[6];
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlCenter;
  end;

  {bordas desde o cabeçalho até ultima linha}
  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'T' + IntToStr(Linha)] do
  begin
   with Borders[xlInsideVertical] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
   if (Linha > 5) then
   begin
     (*with Borders[xlInsideHorizontal] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;*)
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

  { Salvar Planilha Gerada e Fechar o Excel }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  FecharExcel;
  Screen.Cursor := crDefault;

  { finalizar progress bar }
  btnGerar.Enabled := true;
  btnAbrir.Enabled := true;
  Ani.Terminate;

  AbrirPlanilha(FileName);
end;

procedure Tfr_FaturasRegistradas.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);                                     
end;

procedure Tfr_FaturasRegistradas.FaturasAfterScroll(DataSet: TDataSet);
begin
  { Produtos Pendentes }
  with Produtos do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger := Faturasnum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString := Faturasserie.AsString;
    Open;
  end;
end;

procedure Tfr_FaturasRegistradas.AbrirExcel(Caminho: String);
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


Procedure Tfr_FaturasRegistradas.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;

Procedure Tfr_FaturasRegistradas.AbrirPlanilha(FileName: String);
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

procedure Tfr_FaturasRegistradas.ProdutosAfterScroll(DataSet: TDataSet);
begin
  with embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := trim(Produtoscod_produto.AsString);
    Open;
  end;
end;


procedure Tfr_FaturasRegistradas.GerarAdicionaisDescontos(Var pLinha: Integer);
Var
  Linha : Integer;
  Tbr, Tbe : String;
begin
  Linha := pLinha;

  Tbr := '=L'+IntToStr(Linha);
  Tbe := '=O'+IntToStr(Linha);
  with nf_adic_desc do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger       := vgCod_Empresa;
    ParamByName('num_nota_fiscal').AsInteger   := Faturasnum_nota_fiscal.AsInteger;
    ParamByName('serie').AsString              := Faturasserie.AsString;
    Open;
    if nf_adic_desc.IsEmpty then
    begin
       Inc(Linha);
       ExcelWorksheet.Range['A' + IntToStr(Linha),'T' + IntToStr(Linha)].Interior.ColorIndex := 46;
       { TOTAIS LIQUIDO DA FATURA }
       with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
       begin
         Value := 'TOTAL LIQUIDO: ';
         HorizontalAlignment := xlRight;
         MergeCells := True;
         Interior.ColorIndex := 0;
         Font.Size := 8;
         Font.ColorIndex := 0;
       end;
       if (Tbr <> '') then
       begin
         ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';
         ExcelWorkSheet.Cells.Item[Linha, 12].Formula := Tbr;
         ExcelWorkSheet.Cells.Item[Linha, 12].Interior.ColorIndex := 6;
         ExcelWorkSheet.Cells.Item[Linha, 12].HorizontalAlignment := xlRight;
       end;
       if (Tbe <> '') then
       begin
         ExcelWorkSheet.Cells.Item[Linha, 15].NumberFormat := '#.##0,00';
         ExcelWorkSheet.Cells.Item[Linha, 15].Formula := Tbe;
         ExcelWorkSheet.Cells.Item[Linha, 15].Interior.ColorIndex := 7;
         ExcelWorkSheet.Cells.Item[Linha, 15].HorizontalAlignment := xlRight;
       end;
       pLinha := Linha;
       Exit;
    end;
(*
    { criar na planilha Adicionais e Descontos da Fatura }
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Value := 'ADICIONAIS E DESCONTOS DA FATURA';
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := False;
      Interior.ColorIndex := 44;
    end;
*)
    Inc(Linha);
    while Not(EOF)do
    begin
      { D - Descrição adc/desc }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'H' + IntToStr(Linha)] do
      begin
        Font.Size := 8;
        Value := StringReplace(trim(FieldByName('txt_descricao').AsString), #13#10, ' ', [rfReplaceAll]);
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlTop;
        WrapText := True;
        ShrinkToFit := False;
        Interior.ColorIndex := 0;
        Rows.RowHeight := 12.75;
        MergeCells := True;
      end;
      { J - Tipo (A/D) }
      if FieldByName('ies_tipo').AsString = 'A' then
         ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value := 'ADICIONAL'
      else
         ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value := 'DESCONTO';
      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      { M - Valor Adicional/Desconto Real }
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc').AsFloat;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Interior.ColorIndex := 6;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].HorizontalAlignment := xlRight;
      { P - Valor Adicional/Desconto Especial }
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value := FieldByName('vlr_adic_desc_esp').AsFloat;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].NumberFormat := '#.##0,00';
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Interior.ColorIndex := 7;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].HorizontalAlignment := xlRight;

      ExcelWorksheet.Range['A' + IntToStr(Linha),'T' + IntToStr(Linha)].Font.Size := 8;

      if (FieldByName('ies_tipo').AsString = 'A') then
      begin
        Tbr := Tbr + '+L'+IntToStr(Linha);
        Tbe := Tbe + '+O'+IntToStr(Linha);
      end;
      if (FieldByName('ies_tipo').AsString = 'D') then
      begin
        Tbr := Tbr + '-L'+IntToStr(Linha);
        Tbe := Tbe + '-O'+IntToStr(Linha);
      end;
      Next;
      Inc(Linha);
    end;
    ExcelWorksheet.Range['A' + IntToStr(Linha),'T' + IntToStr(Linha)].Interior.ColorIndex := 46;
    { TOTAIS LIQUIDO DA FATURA }
    with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
    begin
      Value := 'TOTAL LIQUIDO: ';
      HorizontalAlignment := xlRight;
      MergeCells := True;
      Interior.ColorIndex := 0;
      Font.Size := 8;
      Font.ColorIndex := 0;
    end;
    if (Tbr <> '') then
    begin
      ExcelWorkSheet.Cells.Item[Linha, 12].NumberFormat := '#.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 12].Formula := Tbr;
      ExcelWorkSheet.Cells.Item[Linha, 12].Interior.ColorIndex := 6;
      ExcelWorkSheet.Cells.Item[Linha, 12].HorizontalAlignment := xlRight;
    end;
    if (Tbe <> '') then
    begin
      ExcelWorkSheet.Cells.Item[Linha, 15].NumberFormat := '#.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 15].Formula := Tbe;
      ExcelWorkSheet.Cells.Item[Linha, 15].Interior.ColorIndex := 7;
      ExcelWorkSheet.Cells.Item[Linha, 15].HorizontalAlignment := xlRight;
    end;
  end;
  pLinha := Linha;
end;

procedure Tfr_FaturasRegistradas.ClientesBeforeOpen(
  DataSet: TDataSet);
begin
  Clientes.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_FaturasRegistradas.FornecedoresBeforeOpen(
  DataSet: TDataSet);
begin
   Fornecedores.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_FaturasRegistradas.dbcFornecedoresChange(
  Sender: TObject);
begin
   with Clientes do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select a."cod_cliente"                                              ');
     SQL.Add('from "nota_fiscal_saida" a, "nf_saida_complemento" b, "cliente" c   ');
     SQL.Add('where a."cod_empresa" = :cod_empresa                                ');
     if (dbcFornecedores.Value <> '0') then
     begin
       SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor                        ');
       ParamByName('cod_fornecedor').Value := dbcFornecedores.Value;
     end;
     SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano                          ');
     SQL.Add('  and b."cod_empresa" = a."cod_empresa"                             ');
     SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                     ');
     SQL.Add('  and b."serie" = a."serie"                                         ');
     SQL.Add('  and c."cod_cliente" = a."cod_cliente"                             ');
     SQL.Add('group by 1                                                          ');
     SQL.Add('order by 1                                                          ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('ano').Value := seAno.Text;
     Open;
   end;
end;

procedure Tfr_FaturasRegistradas.PrintFaturas(Cliente: String; Fornecedor: Integer; Ano: String; Var pLinha: Integer);
Var
  Linha, LinhaAnt: Integer;
  DtLiberacao : TDate;
  s : String;
begin
  { Incluir os Faturas na Planilha Excel }
  Linha := pLinha;

  { Faturas }
  with Faturas do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').Value     := Cliente;
    ParamByName('cod_fornecedor').Value  := Fornecedor;
    ParamByName('ano').AsString := Ano;
    Open;
    if Not(IsEmpty) then
    begin
      with ExcelWorksheet.Range['A'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        Value := 'CLIENT/SUPPLIER: ' + trim(Clientescod_cliente.AsString) + ' / ' + trim(Fornecedoresraz_social_reduz.AsString);
        Font.Bold := False;
        Font.Size := 10;
        Font.ColorIndex := 0;
        Interior.ColorIndex := 45;
        HorizontalAlignment := xlLeft;
        VerticalAlignment := xlCenter;
        MergeCells := True;
      end;
      Inc(Linha);
    end else Exit; // sair se não existir Faturas

    if (Produtos.IsEmpty) then Exit; // sair se não existir produtos

    { inicializar totais das Faturas }
    p[1] := '=';
    p[2] := '=';
    p[3] := '=';
    p[4] := '=';
    p[5] := '=';
    p[6] := '=';

    while Not(EOF) do  { ler Faturas }
    begin
      LinhaAnt := Linha;

      with Produtos do { ler produtos }
      begin
        First;
        while Not(EOF) do
        begin
          { A - FATURA }
          with ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)] do
          begin
            Value := Faturasnum_fatura.AsString;
            Interior.ColorIndex := 4;
          end;
          { B - LOTE }
          with ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)] do
          begin
            Value := Faturasnum_ref_volume.AsString;
            Interior.ColorIndex := 4;
          end;
          { C - DATA EMBARQUE }
          with ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)] do
          begin
            if Not(Faturasdat_embarque.IsNull) then Value := FormatDateTime('dd.mm.yy', Faturasdat_embarque.AsDateTime)
                                               else Value := null;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 4;
          end;
          { D - ITEM  }
          with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
          begin
            NumberFormat := '@';
            Value := FmtProdutoCliente(Clientescod_cliente.AsString, Produtoscod_produto.AsString).fmtProduto;
            Interior.ColorIndex := 8;
          end;
          { E - DESCRIÇÃO }
          with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
          begin
            if (rgDescricao.ItemIndex = 0)
            then s := trim(ProdutoDet(Produtoscod_produto.AsString, Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger).Ingles)
            else s := trim(ProdutoDet(Produtoscod_produto.AsString, Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger).Portugues);

            Value := trim(StringReplace(s, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            WrapText := True;
            ShrinkToFit := False;
            Interior.ColorIndex := 8;
          end;
          { F - PEDIDO }
          with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
          begin
            Value := Produtosnum_pedido_cli.AsString;
            Interior.ColorIndex := 8;
          end;
          { G - CONFIRMAÇÃO }
          with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
          begin
            Value := Produtosnum_pedido_for.AsString;
            Interior.ColorIndex := 8;
          end;
          { H - DATA DA CONFIRMAÇÃO }
          with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
          begin
            DtLiberacao := dmCOM.GetPedido(FieldByName('num_pedido_for').AsString, 'C').DatLiberacao;
            if (DtLiberacao > 0) then
               Value := FormatDateTime('dd.mm.yy', DtLiberacao)
            else Value := '';
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 8;
          end;
          { I - QUANTIDADE EMBARCADA }
          with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,0';
            Value := Produtosqtd_produto.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 8;
          end;
          { J - UNIDADE  }
          with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
          begin
            Value := Produtossigla.AsString;
            Interior.ColorIndex := 8;
          end;
          { K - PREÇO REAL }
          with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000000';
            Value := Produtosvlr_unitario.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 4;
          end;
          { L - TOTAL REAL }
          with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            Value := Produtosvlr_liquido.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 4;
          end;
          { M - COMENTÁRIO PREÇO REAL }
          with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
          begin
            Value := trim(StringReplace(Produtosobs_preco.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            WrapText := True;
            ShrinkToFit := False;
            Interior.ColorIndex := 4;
          end;
          { N - PREÇO ESPECIAL }
          with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000000';
            Value := Produtosvlr_unitario_esp.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            if (Produtosvlr_unitario.AsFloat <> Produtosvlr_unitario_esp.AsFloat) then Interior.ColorIndex := 6
                                                                                  else Interior.ColorIndex := 7;
          end;
          { O - TOTAL ESPECIAL }
          with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            Value := Produtosvlr_liquido_esp.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            if (Produtosvlr_liquido.AsFloat <> Produtosvlr_liquido_esp.AsFloat) then Interior.ColorIndex := 6
                                                                                 else Interior.ColorIndex := 7;
          end;
          { P - COMENTÁRIO PREÇO REAL }
          with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
          begin
            Value := trim(StringReplace(Produtosobs_preco_esp.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            WrapText := True;
            ShrinkToFit := False;
            Interior.ColorIndex := 7;
          end;
          { Q - VOLUME TOTAL EM m³ }
          with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
          begin
            NumberFormat := VolumeNumberFormat;
            Value := Produtosvol_caixas.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 36;
          end;
          { R - PESO BRUTO TOTAL (Kg) }
          with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            Value := Produtospes_bruto.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 36;
          end;
          { S - PESO LÍQUIDO TOTAL (Kg) }
          with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            Value := Produtospes_liquido.AsFloat;
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 36;
          end;
          { T - QUANTIDADE DE CAIXAS }
          with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0';
            Value := Produtosqtd_export_box.AsFloat;
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 36;
          end;
          Inc(Linha);
          Next;
        end;
      end; { Fim Ler Produtos }

      { Totais por Fatura }
      with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
      begin
        Value := 'TOTAL BRUTO:';
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
        MergeCells := True;
        Font.Bold := False;
        Font.Size := 8;
        Font.ColorIndex := 0;
      end;
      { L - TOTAL REAL }
      with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(L'+IntTostr(LinhaAnt)+':L'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 4;
        Font.ColorIndex := 0;
        Font.Bold := False;
        Font.Size := 8;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
      end;
      { O - TOTAL ESPECIAL }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(O'+IntTostr(LinhaAnt)+':O'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 7;
        Font.ColorIndex := 0;
        Font.Bold := False;
        Font.Size := 8;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
      end;
      { Q - TOTAL VOLUME }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        NumberFormat :=  VolumeNumberFormat;
        Formula := '=SUM(Q'+IntTostr(LinhaAnt)+':Q'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 0;
        Font.ColorIndex := 0;
        Font.Bold := False;
        Font.Size := 8;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
      end;
      { R - TOTAL PESO BRUTO }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(R'+IntTostr(LinhaAnt)+':R'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 0;
        Font.ColorIndex := 0;
        Font.Bold := False;
        Font.Size := 8;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
      end;
      { S - TOTAL PESO LIQUIDO }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(S'+IntTostr(LinhaAnt)+':S'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 0;
        Font.ColorIndex := 0;
        Font.Bold := False;
        Font.Size := 8;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
      end;
      { T - TOTAL NÚMERO DE CAIXAS }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '###.##0';
        Formula := '=SUM(T'+IntTostr(LinhaAnt)+':T'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 0;
        Font.ColorIndex := 0;
        Font.Bold := False;
        Font.Size := 8;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlCenter;
      end;

      p[3] := p[3] + 'Q'+IntToStr(Linha);
      p[4] := p[4] + 'R'+IntToStr(Linha);
      p[5] := p[5] + 'S'+IntToStr(Linha);
      p[6] := p[6] + 'T'+IntToStr(Linha);

      { Gerar descontos e adicionais fa Fatura }
      GerarAdicionaisDescontos(Linha);

      Next;
      p[1] := p[1] + 'L'+IntToStr(Linha);
      p[2] := p[2] + 'O'+IntToStr(Linha);

      if Not(EOF) then
      begin
        p[1] := p[1] + '+';
        p[2] := p[2] + '+';
        p[3] := p[3] + '+';
        p[4] := p[4] + '+';
        p[5] := p[5] + '+';
        p[6] := p[6] + '+';
      end;

      {bordas desde o cabeçalho até ultima linha}
      with ExcelWorkSheet.Range['A'+IntToStr(LinhaAnt),'T' + IntToStr(Linha)] do
      begin
      with Borders[xlInsideVertical] do
      begin
         LineStyle := xlContinuous;
         Weight := xlThin;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlInsideHorizontal] do
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
      Linha := Linha + 2;
    end; { Fim ler Faturas }
  end;

  { transferir Totais das faturas para Total Geral }
  g[1] := g[1] + 'L'+IntToStr(Linha);
  g[2] := g[2] + 'O'+IntToStr(Linha);
  g[3] := g[3] + 'Q'+IntToStr(Linha);
  g[4] := g[4] + 'R'+IntToStr(Linha);
  g[5] := g[5] + 'S'+IntToStr(Linha);
  g[6] := g[6] + 'T'+IntToStr(Linha);

  { Total das Faturas }
  with ExcelWorksheet.Range['J'+ inttostr(linha),'K'+inttostr(linha)] do
  begin
    Value := 'TOTAL INVOICES:';
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlCenter;
    MergeCells := True;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
  end;
  { L - TOTAL GERAL REAL }
  with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
  begin
    Formula := p[1];
    NumberFormat := '#.##0,00';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { O - TOTAL GERAL ESPECIAL }
  with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
  begin
    Formula := p[2];
    NumberFormat := '#.##0,00';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { Q - TOTAL GERAL VOLUME }
  with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := p[3];
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { R - TOTAL GERAL PESO BRUTO }
  with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := p[4];
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { S - TOTAL GERAL PESO LIQUIDO }
  with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := p[5];
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { T - TOTAL GERAL NÚMERO DE CAIXAS }
  with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
  begin
    NumberFormat := '###.##0';
    Formula := p[6];
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlCenter;
  end;

  {bordas desde o cabeçalho até ultima linha}
  with ExcelWorkSheet.Range['A'+IntToStr(LinhaAnt),'T' + IntToStr(Linha)] do
  begin
   with Borders[xlInsideVertical] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
   if (Linha > 5) then
   begin
     with Borders[xlInsideHorizontal] do
     begin
        LineStyle := xlContinuous;
        Weight := xlThin;
        ColorIndex := xlAutomatic;
     end;
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

  pLinha := Linha + 1;
end;

procedure Tfr_FaturasRegistradas.seAnoChange(Sender: TObject);
begin
   with Clientes do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select a."cod_cliente"                                              ');
     SQL.Add('from "nota_fiscal_saida" a, "nf_saida_complemento" b, "cliente" c   ');
     SQL.Add('where a."cod_empresa" = :cod_empresa                                ');
     if (dbcFornecedores.Value <> '0') then
     begin
       SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor                        ');
       ParamByName('cod_fornecedor').Value := dbcFornecedores.Value;
     end;
     SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano                          ');
     SQL.Add('  and b."cod_empresa" = a."cod_empresa"                             ');
     SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                     ');
     SQL.Add('  and b."serie" = a."serie"                                         ');
     SQL.Add('  and c."cod_cliente" = a."cod_cliente"                             ');
     SQL.Add('group by 1                                                          ');
     SQL.Add('order by 1                                                          ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('ano').Value := seAno.Text;
     Open;
   end;
   with Fornecedores do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select b."cod_fornecedor", c."raz_social_reduz"                       ');
     SQL.Add('from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c  ');
     SQL.Add('where a."cod_empresa" = :cod_empresa                                  ');
     if (dbcClientes.Value <> '0') then
     begin
        SQL.Add('   and a."cod_cliente" = :cod_cliente                     ');
        ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
     end;
     SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano                            ');
     SQL.Add('  and b."cod_empresa" = a."cod_empresa"                               ');
     SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                       ');
     SQL.Add('  and b."serie" = a."serie"                                           ');
     SQL.Add('  and c."cod_fornecedor" = b."cod_fornecedor"                         ');
     SQL.Add('group by 1,2                                                          ');
     SQL.Add('order by 2                                                            ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('ano').Value := seAno.Text;
     Open;
   end;
end;

end.
