unit SigIMP01_071;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Excel2000,
  OleServer, Spin, DateUtils, AniThread;

type
  Tfr_PedidosRegistrados = class(TForm)
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
    Pedidos: TIBQuery;
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
    parametro_comercialmod_plan_itens_emb: TBlobField;
    Pedidoscod_empresa: TSmallintField;
    Pedidosnum_pedido: TLargeintField;
    Pedidosnum_pedido_cli: TIBStringField;
    Pedidosnum_pedido_for: TIBStringField;
    Pedidoscod_cliente: TIBStringField;
    Pedidoscod_fornecedor: TIntegerField;
    Pedidosraz_social: TIBStringField;
    Pedidosdat_liberacao: TDateField;
    Pedidosdat_emissao: TDateTimeField;
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
    Produtosnum_sequencia: TIntegerField;
    Produtoscod_produto: TIBStringField;
    Produtosqtd_pedido: TIBBCDField;
    Produtosvlr_unit_pedido: TFloatField;
    Produtosvlr_unit_ped_esp: TFloatField;
    Produtosvlr_pedido: TIBBCDField;
    Produtosvlr_pedido_esp: TIBBCDField;
    Produtosies_emb_esp: TIBStringField;
    Produtosnum_fatura: TIBStringField;
    Produtosdat_fatura: TDateField;
    Produtosqtd_fatura: TIBBCDField;
    Produtosvlr_unit_fatura: TFloatField;
    Produtosvlr_fatura: TIBBCDField;
    Produtosvlr_fatura_esp: TIBBCDField;
    Produtospes_bruto: TIBBCDField;
    Produtosvolume: TIBBCDField;
    Produtosdat_embarque: TDateField;
    Produtosnum_ref_volume: TIBStringField;
    Produtosobs_preco: TMemoField;
    Produtosobs_preco_esp: TMemoField;
    Produtosqtd_pend_emb: TIBBCDField;
    Produtosvlr_pend_emb: TIBBCDField;
    Produtosvlr_pend_emb_esp: TIBBCDField;
    rgDescricao: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure PedidosAfterScroll(DataSet: TDataSet);
    procedure AbrirExcel(Caminho: String);
    Procedure AbrirPlanilha(FileName: String);
    procedure FecharExcel;
    procedure ProdutosAfterScroll(DataSet: TDataSet);
    procedure FornecedoresBeforeOpen(DataSet: TDataSet);
    procedure ClientesBeforeOpen(DataSet: TDataSet);
    procedure dbcFornecedoresChange(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    Procedure PrintPedidos(Cliente: String; Fornecedor: Integer; Ano: String; Var pLinha: Integer);
    procedure GerarAdicionaisDescontos(Var pLinha: Integer);
    procedure seAnoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_PedidosRegistrados: Tfr_PedidosRegistrados;
  FileName : String;
  DIR_PLANILHAS : String;
  p: array[1..6] of string; { total dos pedidos }
  g: array[1..6] of string; { total geral }

implementation

uses unConnection, unMenuCompl, Math, SIGIMP01_045;

{$R *.dfm}

procedure Tfr_PedidosRegistrados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Produtos.Close;
  Pedidos.Close;
  Embalagem.close;
  Parametro_Comercial.Close;

  Action := caFree;
  fr_PedidosRegistrados := nil;
end;

procedure Tfr_PedidosRegistrados.FormCreate(Sender: TObject);
begin
  seAno.Value :=  YearOf(Buscar_DateTime);
  Clientes.Open;
  Fornecedores.Open;
end;

procedure Tfr_PedidosRegistrados.dbcClientesChange(Sender: TObject);
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
     SQL.Add('   and substr(a."dat_emissao", 1,4) = :ano              ');
     SQL.Add('   and b."cod_empresa" = a."cod_empresa"                  ');
     SQL.Add('   and b."num_pedido"  = a."num_pedido"                   ');
     SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"            ');
     SQL.Add('group by 1,2                                              ');
     SQL.Add('order by 2                                                ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('ano').Value := seAno.Text;
     Open;
   end;
end;

procedure Tfr_PedidosRegistrados.actGerarExecute(Sender: TObject);
Var
  Linha : Integer;
begin
  { Gerar planilha com Produtos Embarcados }

  if (Clientes.IsEmpty) then
  begin
    MessageDlg('Não existe pedidos de clientes para o ano de ' + seAno.Text, mtWarning, [mbOk], 0);
    dbcClientes.SetFocus;
    Abort;
  end;

  if (Fornecedores.IsEmpty) then
  begin
    MessageDlg('Não existe pedidos de fornecedores para o ano de ' + seAno.Text, mtWarning, [mbOk], 0);
    dbcClientes.SetFocus;
    Abort;
  end;

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
  FileName := DIR_PLANILHAS + '\' + trim(FileName) + '-SHIP_ORDERS-';
  { Acrescentar o Ano escolhido ao FileName da planilha }
  FileName := FileName + 'YEAR ' + seAno.Text + '.xls';

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnGerar.Enabled := False;
  btnAbrir.Enabled := False;
  Application.ProcessMessages;

  { Criar a Planilha sobrepondo a mesma se existir }
  parametro_comercialmod_plan_itens_emb.SaveToFile(FileName);
  AbrirExcel(FileName);

  { Gerar dados para a Shipment Products }
  Screen.Cursor := crHourGlass;

  { Imprimir Pedidos }
  Linha := 5;

  { inicializa totais geral }
  g[1] := '=';
  g[2] := '=';
  g[3] := '=';
  g[4] := '=';
  g[5] := '=';
  g[6] := '=';

  if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value <> '0')) then { 1 Cliente - 1 Fornecedor }
  begin
     PrintPedidos(trim(clientescod_cliente.AsString), Fornecedorescod_fornecedor.AsInteger, seAno.Text, Linha);
  end;

  if ((dbcClientes.Value <> '0') and (dbcFornecedores.Value = '0')) then { 1 Cliente e Todos os Fornecedores }
  begin
     while Not(Fornecedores.Eof) do
     begin
       PrintPedidos(trim(clientescod_cliente.AsString), Fornecedorescod_fornecedor.AsInteger, seAno.Text, Linha);
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
     Fornecedores.First;
  end;

  if ((dbcClientes.Value = '0') and (dbcFornecedores.Value <> '0')) then { Todos os Clientes e 1 Fornecedor }
  begin
     while Not(Clientes.Eof) do
     begin
       PrintPedidos(trim(clientescod_cliente.AsString), Fornecedorescod_fornecedor.AsInteger, seAno.Text, Linha);
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
     Clientes.First;
  end;

  if ((dbcClientes.Value = '0') and (dbcFornecedores.Value = '0')) then { Todos os Clientes e Todos os Fornecedores }
  begin
     while Not(Clientes.Eof) do
     begin
       with Fornecedores do
       begin
         Close;
         SQL.Clear;
         SQL.Add('select b."cod_fornecedor", c."raz_social_reduz"           ');
         SQL.Add('  from "pedido" a, "pedido_complemento" b, "fornecedor" c ');
         SQL.Add(' where                                                    ');
         SQL.Add('       a."cod_empresa" = :cod_empresa                     ');
         SQL.Add('   and a."cod_cliente" = :cod_cliente                     ');
         ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
         SQL.Add('   and substr(a."dat_emissao", 1,4) = :ano              ');
         SQL.Add('   and b."cod_empresa" = a."cod_empresa"                  ');
         SQL.Add('   and b."num_pedido"  = a."num_pedido"                   ');
         SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"            ');
         SQL.Add('group by 1,2                                              ');
         SQL.Add('order by 2                                                ');
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
         ParamByName('ano').Value := seAno.Text;
         Open;
       end;
       while Not(Fornecedores.Eof) do
       begin
         PrintPedidos(trim(clientescod_cliente.AsString), Fornecedorescod_fornecedor.AsInteger, seAno.Text, Linha);
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
     Clientes.First;
     Fornecedores.First;
  end;

  { TOTAIS GERAIS }
  Inc(Linha);
  with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
  begin
    Value := 'TOTAL GERAL:';
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlCenter;
    MergeCells := True;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
  end;
  { G - TOTAL GERAL REAL }
  with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
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
  { J - TOTAL GERAL ESPECIAL }
  with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
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
  { P - TOTAL GERAL REAL FATURA }
  with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
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
  { Q - TOTAL GERAL ESPECIAL FATURA }
  with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
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
  { S - TOTAL GERAL PENDENTE REAL }
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
  { T - TOTAL GERAL PENDENTE ESPECIAL }
  with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
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
  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'T' + IntToStr(Linha)] do
  begin
   with Borders[xlInsideVertical] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
(*   with Borders[xlInsideHorizontal] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end; *)
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
  Sleep(3000);
  AbrirPlanilha(FileName);
end;

procedure Tfr_PedidosRegistrados.PrintPedidos(Cliente: String; Fornecedor: Integer; Ano: String; Var pLinha: Integer);
Var
  Linha, LinhaAnt: Integer;
  s : String;
begin
  { Incluir os Pedidos na Planilha Excel }
  Linha := pLinha;

  { Pedidos }
  with Pedidos do
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
    end else Exit; // sair se não existir pedidos

    if (Produtos.IsEmpty) then Exit; // sair se não existir produtos

    { inicializar totais dos pedidos }
    p[1] := '=';
    p[2] := '=';
    p[3] := '=';
    p[4] := '=';
    p[5] := '=';
    p[6] := '=';

    while Not(EOF) do  { ler Pedidos }
    begin
      LinhaAnt := Linha;
      with Produtos do
      begin
        First;
        while Not(EOF) do { ler Produtos }
        begin
          { A - PEDIDO }
          with ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)] do
          begin
            Value := Pedidosnum_pedido_cli.AsString;
            Interior.ColorIndex := 4;
            HorizontalAlignment := xlLeft
          end;
          { B - CONFIRMAÇÃO }
          with ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)] do
          begin
            Value := Pedidosnum_pedido_for.AsString;
            Interior.ColorIndex := 4;
            HorizontalAlignment := xlLeft
          end;
          { C - ITEM  }
          with ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)] do
          begin
            NumberFormat := '@';
            Value := FmtProdutoCliente(Clientescod_cliente.AsString, Produtoscod_produto.AsString).fmtProduto;
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 4;
          end;
          { D - DESCRIÇÃO }
          with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
          begin
            if (rgDescricao.ItemIndex = 0)
            then s := trim(ProdutoDet(Produtoscod_produto.AsString, Pedidoscod_cliente.AsString, Pedidoscod_fornecedor.AsInteger).Ingles)
            else s := trim(ProdutoDet(Produtoscod_produto.AsString, Pedidoscod_cliente.AsString, Pedidoscod_fornecedor.AsInteger).Portugues);

            Value := trim(StringReplace(s, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            WrapText := True;
            ShrinkToFit := False;
            Interior.ColorIndex := 4;
          end;
          { E - QUANTIDADE SOLICITADA }
          with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,0';
            Value := Produtosqtd_pedido.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 4;
          end;
          { F - PREÇO REAL }
          with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000000';
            Value := Produtosvlr_unit_pedido.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 4;
          end;
          { G - TOTAL REAL }
          with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            Value := Produtosvlr_pedido.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 4;
          end;
          { H - COMENTÁRIOS PREÇO REAL }
          with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
          begin
            Value := trim(StringReplace(Produtosobs_preco.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            WrapText := True;
            ShrinkToFit := False;
            Interior.ColorIndex := 4;
          end;
          { I - PREÇO ESPECIAL }
          with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000000';
            Value := Produtosvlr_unit_ped_esp.AsFloat;
            HorizontalAlignment := xlRight;
            if (Produtosvlr_unit_pedido.AsFloat <> Produtosvlr_unit_ped_esp.AsFloat) then Interior.ColorIndex := 6
                                                                                     else Interior.ColorIndex := 7;
          end;
          { J - TOTAL ESPECIAL }
          with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            Value := Produtosvlr_pedido_esp.AsFloat;
            HorizontalAlignment := xlRight;
            if (Produtosvlr_pedido.AsFloat <> Produtosvlr_pedido_esp.AsFloat) then Interior.ColorIndex := 6
                                                                              else Interior.ColorIndex := 7;
          end;
          { K - COMENTÁRIOS PREÇO ESPECIAL }
          with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
          begin
            Value := trim(StringReplace(Produtosobs_preco_esp.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            HorizontalAlignment := xlLeft;
            VerticalAlignment := xlTop;
            WrapText := True;
            ShrinkToFit := False;
            MergeCells := False;
            Interior.ColorIndex := 7;
          end;
          { L - LOTE }
          with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
          begin
            Value := Produtosnum_ref_volume.AsString;
            Interior.ColorIndex := 6;
            HorizontalAlignment := xlLeft
          end;
          { M - FATURA }
          with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
          begin
            Value := Produtosnum_fatura.AsString;
            Interior.ColorIndex := 6;
            HorizontalAlignment := xlLeft
          end;
          { N - DATA DO EMBARQUE }
          with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
          begin
            If Not(Produtosdat_embarque.IsNull) then
               Value := FormatDateTime('dd.mm.yy', Produtosdat_embarque.AsDateTime)
            else
                Value := ' ';
            HorizontalAlignment := xlCenter;
            Interior.ColorIndex := 6;
          end;
          { O - QUANTIDADE EMBARCADA }
          with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,0';
            if Produtosqtd_fatura.AsFloat > 0 then
               Value := Produtosqtd_fatura.AsFloat;
            If (Produtosdat_embarque.IsNull) then
               Value := ' ';
            HorizontalAlignment := xlRight;
            VerticalAlignment := xlCenter;
            Interior.ColorIndex := 6;
          end;
          { P - TOTAL REAL FATURA }
          with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            if Produtosvlr_fatura.AsFloat > 0 then
               Value := Produtosvlr_fatura.AsFloat;
            If (Produtosdat_embarque.IsNull) then
               Value := ' ';
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 6;
          end;
          { Q - TOTAL ESPECIAL FATURA }
          with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            if Produtosvlr_fatura_esp.AsFloat > 0 then
               Value := Produtosvlr_fatura_esp.AsFloat;
            If (Produtosdat_embarque.IsNull) then
               Value := ' ';
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 7;
          end;
          { R - QUANTIDADE PENDENTE }
          with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,0';
            if Produtosqtd_pend_emb.AsFloat > 0 then
               Value := Produtosqtd_pend_emb.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 45;
          end;
          { S - VALOR PENDENTE REAL }
          with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            if Produtosvlr_pend_emb.AsFloat > 0 then
               Value := Produtosvlr_pend_emb.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 45;
          end;
          { T - VALOR PENDENTE ESPECIAL }
          with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            if Produtosvlr_pend_emb_esp.AsFloat > 0 then
               Value := Produtosvlr_pend_emb_esp.AsFloat;
            HorizontalAlignment := xlRight;
            Interior.ColorIndex := 7;
          end;
          Inc(Linha);
          Next;
        end; { fim ler produtos }
      end; { Fim ler Pedidos }
      { Total por Pedido }
      ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)].Value := 'TOT BRUTO';
      { G - TOTAL REAL PEDIDOS }
      with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(G'+IntTostr(LinhaAnt)+':G'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 4;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
       end;
      { J - TOTAL ESPECIAL PEDIDOS }
      with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(J'+IntTostr(LinhaAnt)+':J'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 7;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
       end;
      { P - TOTAL REAL FATURAS }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(P'+IntTostr(LinhaAnt)+':P'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 0;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
      end;
      { Q - TOTAL ESPECIAL FATURAS }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(Q'+IntTostr(LinhaAnt)+':Q'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 0;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
      end;
      { S - TOTAL PENDENTE REAL }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(S'+IntTostr(LinhaAnt)+':S'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 0;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
      end;
      { T - TOTAL PENDENTE ESPECIAL }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Formula := '=SUM(T'+IntTostr(LinhaAnt)+':T'+IntTostr(Linha-1)+')';
        Interior.ColorIndex := 0;
        Font.ColorIndex := 0;
        HorizontalAlignment := xlRight;
        VerticalAlignment := xlCenter;
      end;

      p[3] := p[3] + 'P'+IntToStr(Linha);
      p[4] := p[4] + 'Q'+IntToStr(Linha);
      p[5] := p[5] + 'S'+IntToStr(Linha);
      p[6] := p[6] + 'T'+IntToStr(Linha);

      { Gerar descontos e adicionais do pedido }
      GerarAdicionaisDescontos(Linha);

      Next;
      p[1] := p[1] + 'G'+IntToStr(Linha);
      p[2] := p[2] + 'J'+IntToStr(Linha);

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
    end; { Fim ler Pedidos }
  end;

  { transferir Totais dos Pedido para Total Geral }
  g[1] := g[1] + 'G'+IntToStr(Linha);
  g[2] := g[2] + 'J'+IntToStr(Linha);
  g[3] := g[3] + 'P'+IntToStr(Linha);
  g[4] := g[4] + 'Q'+IntToStr(Linha);
  g[5] := g[5] + 'S'+IntToStr(Linha);
  g[6] := g[6] + 'T'+IntToStr(Linha);

  { Total dos Pedidos  }
  with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
  begin
    Value := 'TOTAL ORDERS:';
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlCenter;
    MergeCells := True;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
  end;
  { G - TOTAL PEDIDOS REAL }
  with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
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
  { J - TOTAL PEDIDOS ESPECIAL }
  with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
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
  { P - TOTAL PEDIDOS REAL FATURA }
  with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
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
  { Q - TOTAL PEDIDOS ESPECIAL FATURA }
  with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
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
  { S - TOTAL PEDIDOS PENDENTE REAL }
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
  { T - TOTAL PEDIDOS PENDENTE ESPECIAL }
  with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := p[6];
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;

  {bordas na região dos totais }
  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'T' + IntToStr(Linha)] do
  begin
   with Borders[xlInsideVertical] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end;
(*   with Borders[xlInsideHorizontal] do
   begin
      LineStyle := xlContinuous;
      Weight := xlThin;
      ColorIndex := xlAutomatic;
   end; *)
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

  pLinha := Linha + 2;
end;


procedure Tfr_PedidosRegistrados.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);
end;

procedure Tfr_PedidosRegistrados.PedidosAfterScroll(DataSet: TDataSet);
begin
  { Produtos Pendentes }
  with Produtos do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
    Open;
  end;
end;

procedure Tfr_PedidosRegistrados.AbrirExcel(Caminho: String);
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


Procedure Tfr_PedidosRegistrados.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;

Procedure Tfr_PedidosRegistrados.AbrirPlanilha(FileName: String);
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

procedure Tfr_PedidosRegistrados.ProdutosAfterScroll(DataSet: TDataSet);
begin
  with embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := trim(Produtoscod_produto.AsString);
    Open;
  end;
end;

procedure Tfr_PedidosRegistrados.GerarAdicionaisDescontos(Var pLinha: Integer);
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
    ParamByName('num_pedido').Value 	:= Pedidosnum_pedido.AsLargeInt;
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
(*
    { criar na planilha Adicionais e Descontos do Pedido }
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
    begin
      Font.Size := 8;
      Value := 'ADICIONAIS E DESCONTOS DO PEDIDO';
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := False;
      Interior.ColorIndex := 44;
    end;
    Inc(Linha);
*)
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

procedure Tfr_PedidosRegistrados.FornecedoresBeforeOpen(
  DataSet: TDataSet);
begin
   Fornecedores.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_PedidosRegistrados.ClientesBeforeOpen(DataSet: TDataSet);
begin
  Clientes.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_PedidosRegistrados.dbcFornecedoresChange(Sender: TObject);
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
     SQL.Add('   and substr(a."dat_emissao", 1,4) = :ano              ');
    SQL.Add('group by 1                                            ');
    SQL.Add('order by 1                                            ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('ano').Value := seAno.Text;
    Open;
  end;
end;

procedure Tfr_PedidosRegistrados.seAnoChange(Sender: TObject);
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
     SQL.Add('   and substr(a."dat_emissao", 1,4) = :ano              ');
    SQL.Add('group by 1                                            ');
    SQL.Add('order by 1                                            ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('ano').Value := seAno.Text;
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
    SQL.Add('   and substr(a."dat_emissao", 1,4) = :ano              ');
    SQL.Add('   and b."cod_empresa" = a."cod_empresa"                  ');
    SQL.Add('   and b."num_pedido"  = a."num_pedido"                   ');
    SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"            ');
    SQL.Add('group by 1,2                                              ');
    SQL.Add('order by 2                                                ');
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('ano').Value := seAno.Text;
    Open;
  end;
end;

end.
