unit SigIMP01_013;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnEntradaRelatorio, ActnList, ExtCtrls, ComCtrls, ToolWin, DB,
  IBCustomDataSet, IBQuery, StdCtrls, JvExControls, JvComponent, JvDBLookup,
  Excel2000, OleServer;

type
  Trl_Orcamentos = class(Trl_EntradaRelatorio)
    Clientes: TIBQuery;
    Listas: TIBQuery;
    Fornecedores: TIBQuery;
    Clientescod_cliente: TIBStringField;
    Fornecedorescod_fornecedor: TSmallintField;
    Fornecedoresraz_social_reduz: TIBStringField;
    dbcCliente: TJvDBLookupCombo;
    dbcListas: TJvDBLookupCombo;
    dbcFornecedor: TJvDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ds_Clientes: TDataSource;
    ds_Listas: TDataSource;
    ds_Fornecedores: TDataSource;
    Listasnum_lista: TSmallintField;
    Listasden_lista: TIBStringField;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    ExcelWorkBook: TExcelWorkbook;
    ListaPreco: TIBQuery;
    ListaPreconum_lista: TSmallintField;
    ListaPrecodat_cadastro: TDateField;
    ListaPrecoden_lista: TIBStringField;
    ListaPrecoies_situacao: TIBStringField;
    ListaPrecocod_produto: TIBStringField;
    ListaPrecodat_preco: TDateField;
    ListaPrecovlr_unitario: TFloatField;
    ListaPrecoden_produto: TIBStringField;
    ListaPrecocod_fornecedor: TSmallintField;
    ListaPrecocod_prod_fornec: TIBStringField;
    ListaPrecoraz_social: TIBStringField;
    ListaPreconom_cliente: TIBStringField;
    ListaPrecocod_cliente: TIBStringField;
    ListaPrecoden_produto_det: TMemoField;
    rgOrdenar: TRadioGroup;
    Ultimo_Pedido_Produto: TIBQuery;
    Ultimo_Pedido_Produtonum_pedido: TLargeintField;
    Ultimo_Pedido_Produtonum_pedido_for: TIBStringField;
    Ultimo_Pedido_Produtodat_liberacao: TDateField;
    Ultimo_Pedido_Produtovlr_unitario: TFloatField;
    Ultimo_Pedido_Produtonum_pedido_cli: TIBStringField;
    ListaPrecoobs_preco: TMemoField;
    Label4: TLabel;
    dbcOrcamento: TJvDBLookupCombo;
    Orcamentos: TIBQuery;
    ds_Orcamentos: TDataSource;
    Orcamentosnum_lista: TSmallintField;
    Orcamentosden_lista: TIBStringField;
    ListaPreconcm_cod: TIntegerField;
    procedure ClientesAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actImprimirExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure UltimosPrecosProduto(CodProduto, CodCliente: String);

    procedure ListaHeader;
    procedure ListaItens;
    Procedure AbrirPlanilha(FileName: String);
    procedure FecharExcel;
    procedure actAbrirExecute(Sender: TObject);
    procedure OrcamentosAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rl_Orcamentos: Trl_Orcamentos;
  FileName : String;
  DIR_PLANILHAS : String;
  Linha, LinhaAux : Integer;

implementation

uses unConnection, SigIMP01_012, SigIMP01_045;

{$R *.dfm}

procedure Trl_Orcamentos.ClientesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with Orcamentos do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    Open;
    dbcCliente.KeyValue := Clientescod_cliente.AsString;
    dbcOrcamento.KeyValue := Orcamentosnum_lista.AsInteger;
  end;
  with Listas do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    Open;
    dbcListas.KeyValue := Listasnum_lista.AsInteger;
  end;
end;

procedure Trl_Orcamentos.FormShow(Sender: TObject);
begin
  inherited;
  with Clientes do
  begin
    ParamByName('login').Value := vgLogin;
    Open;
  end;
end;

procedure Trl_Orcamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FecharExcel;
  Fornecedores.Close;
  Orcamentos.Close;
  Listas.Close;
  Clientes.Close;
  Ultimo_Pedido_Produto.Close;
  Action := caFree;
  rl_Orcamentos := nil;
end;

procedure Trl_Orcamentos.actImprimirExecute(Sender: TObject);
begin
  inherited;

  if Not(Assigned(rl_LayoutListaPrecos)) then
     Application.CreateForm(Trl_LayoutListaPrecos, rl_LayoutListaPrecos);

  with rl_LayoutListaPrecos.ListaPreco do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := Listasnum_lista.AsInteger;
    ParamByName('cod_fornecedor').AsInteger := Fornecedorescod_fornecedor.AsInteger;
    Open;
    if Not(IsEmpty) then
       rl_LayoutListaPrecos.qkrPadrao.Preview;
  end;
end;

Procedure Trl_Orcamentos.AbrirPlanilha(FileName: String);
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

Procedure Trl_Orcamentos.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then
     Exit;
  ExcelWorkSheet.Disconnect;
  ExcelWorksheet.Free;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  ExcelApplication.Free;
end;

procedure Trl_Orcamentos.ListaHeader;
begin
  { Gerar cabeçalho da lista de preços }
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
   begin
    Value := 'ORÇAMENTO  - ' + Orcamentosden_lista.AsString;
    Font.Bold := True;
    Font.Size := 10;
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
   begin
    Value := 'LISTA DE PREÇOS  - ' + Listasden_lista.AsString;
    Font.Bold := True;
    Font.Size := 10;
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
   begin
    Value := 'CLIENTE : ' + Clientescod_cliente.AsString;
    Font.Bold := True;
    Font.Size := 10;
    MergeCells := True;
    Interior.ColorIndex := 0;                               
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
   end;
   Inc(Linha);
   with ExcelWorkSheet.Range['A' + IntToStr(Linha),'C' + IntToStr(Linha)] do
   begin
    Value := 'FORNECEDOR : ' + Fornecedoresraz_social_reduz.AsString;
    Font.Bold := True;
    Font.Size := 10;
    MergeCells := True;
    Interior.ColorIndex := 0;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlLeft;
    VerticalAlignment := xlTop;
    WrapText := True;
    ShrinkToFit := False;
   end;
  { Cabeçalho dos Produtos }
   Inc(Linha);
   with ExcelWorkSheet.Range['D' + IntToStr(Linha),'F' + IntToStr(Linha)] do
   begin
    Value := 'ORÇAMENTO';
    Font.Name := 'Arial';
    Font.Bold := True;
    Font.Size := 8;
    MergeCells := True;
    Interior.Pattern := xlSolid;
    Interior.ColorIndex := 14;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlBottom;
    WrapText := True;
    ShrinkToFit := False;
   end;
   with ExcelWorkSheet.Range['G' + IntToStr(Linha),'J' + IntToStr(Linha)] do
   begin
    Value := 'LISTA DE PREÇOS';
    Font.Name := 'Arial';
    Font.Bold := True;
    Font.Size := 8;
    MergeCells := True;
    Interior.Pattern := xlSolid;
    Interior.ColorIndex := 14;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlBottom;
    WrapText := True;
    ShrinkToFit := False;
   end;
   with ExcelWorkSheet.Range['K' + IntToStr(Linha),'M' + IntToStr(Linha)] do
   begin
    Value := 'ÚLTIMA COMPRA';
    Font.Name := 'Arial';
    Font.Bold := True;
    Font.Size := 8;
    MergeCells := True;
    Interior.Pattern := xlSolid;
    Interior.ColorIndex := 14;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlBottom;
    WrapText := True;
    ShrinkToFit := False;
   end;
   with ExcelWorkSheet.Range['N' + IntToStr(Linha),'P' + IntToStr(Linha)] do
   begin
    Value := 'COMPRA ANTERIOR';
    Font.Name := 'Arial';
    Font.Bold := True;
    Font.Size := 8;
    MergeCells := True;
    Interior.Pattern := xlSolid;
    Interior.ColorIndex := 14;
    Borders.LineStyle := xlContinuous;
    HorizontalAlignment := xlCenter;
    VerticalAlignment := xlBottom;
    WrapText := True;
    ShrinkToFit := False;
   end;

  Linha := Linha + 1;
  LinhaAux := Linha;

  { português }
  ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SEQ';
  ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'PRODUTO';
  ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'DESCRIÇÃO';

  ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'DATA PREÇO';
  ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'PREÇO EM US$';
  ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'OBSERVAÇÕES';

  ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'DATA PREÇO';
  ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'PREÇO EM US$';
  ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'OBSERVAÇÕES';
  ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Value2 := 'VARIAÇÃO DE PREÇO(%)';

  ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Value2 := 'PREÇO ANTERIOR EM US$';
  ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Value2 := 'OBSERVAÇÕES';
  ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Value2 := 'VARIAÇÃO DE PREÇO(%)';

  ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Value2 := 'PREÇO ANTERIOR EM US$';
  ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Value2 := 'OBSERVAÇÕES';
  ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Value2 := 'VARIAÇÃO DE PREÇO(%)';
  { inglês }
  ExcelWorksheet.Range['A' + IntToStr(Linha+1),'A' + IntToStr(Linha+1)].Value2 := 'SEQ';
  ExcelWorksheet.Range['B' + IntToStr(Linha+1),'B' + IntToStr(Linha+1)].Value2 := 'CODE ITEM';
  ExcelWorksheet.Range['C' + IntToStr(Linha+1),'C' + IntToStr(Linha+1)].Value2 := 'DESCRIPTION';

  ExcelWorksheet.Range['D' + IntToStr(Linha+1),'D' + IntToStr(Linha+1)].Value2 := 'PRICE DATE';
  ExcelWorksheet.Range['E' + IntToStr(Linha+1),'E' + IntToStr(Linha+1)].Value2 := 'PRICE IN US$';
  ExcelWorksheet.Range['F' + IntToStr(Linha+1),'F' + IntToStr(Linha+1)].Value2 := 'COMMENTS';

  ExcelWorksheet.Range['G' + IntToStr(Linha+1),'G' + IntToStr(Linha+1)].Value2 := 'PRICE DATE';
  ExcelWorksheet.Range['H' + IntToStr(Linha+1),'H' + IntToStr(Linha+1)].Value2 := 'PRICE IN US$';
  ExcelWorksheet.Range['I' + IntToStr(Linha+1),'I' + IntToStr(Linha+1)].Value2 := 'COMMENTS';
  ExcelWorksheet.Range['J' + IntToStr(Linha+1),'J' + IntToStr(Linha+1)].Value2 := 'VARIATION OF PRICE(%)';

  ExcelWorksheet.Range['K' + IntToStr(Linha+1),'K' + IntToStr(Linha+1)].Value2 := 'PREVIOUS PRICE IN US$';
  ExcelWorksheet.Range['L' + IntToStr(Linha+1),'L' + IntToStr(Linha+1)].Value2 := 'COMMENTS';
  ExcelWorksheet.Range['M' + IntToStr(Linha+1),'M' + IntToStr(Linha+1)].Value2 := 'VARIATION OF PRICE(%)';

  ExcelWorksheet.Range['N' + IntToStr(Linha+1),'N' + IntToStr(Linha+1)].Value2 := 'PREVIOUS PRICE IN US$';
  ExcelWorksheet.Range['O' + IntToStr(Linha+1),'O' + IntToStr(Linha+1)].Value2 := 'COMMENTS';
  ExcelWorksheet.Range['P' + IntToStr(Linha+1),'P' + IntToStr(Linha+1)].Value2 := 'VARIATION OF PRICE(%)';

  { Tamanho das colunas }
  ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 04.00;
  ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 13.00;
  ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 40.00;

  ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 06.29;
  ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 09.86;
  ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 20.14;

  ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 06.29;
  ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ColumnWidth := 09.86;
  ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ColumnWidth := 20.14;
  ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].ColumnWidth := 08.43;

  ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].ColumnWidth := 09.86;
  ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ColumnWidth := 20.14;
  ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].ColumnWidth := 08.43;

  ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].ColumnWidth := 09.86;
  ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].ColumnWidth := 20.14;
  ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].ColumnWidth := 08.43;

  { formatação cabeçalho dos items }
  with ExcelWorkSheet.Range['A' + IntToStr(LinhaAux),'P' + IntToStr(Linha+1)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 8;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 14;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlBottom;
     WrapText := True;
     ShrinkToFit := False;
  end;
  Linha := 8;
end;


procedure Trl_Orcamentos.ListaItens;
Var
  s, s1, s2 : string;
  Seq : Integer;
  p1, p2, v : Double;
begin
  { Gerar os itens da lista de preços }
  Seq := 1;
  with ListaPreco do
  begin
    while Not(EOF) do
    begin
      { A - Sequencia }
      ExcelWorkSheet.Cells.Item[Linha, 1].Value := Seq;
      { B - Código do Produto }
      ExcelWorkSheet.Cells.Item[Linha, 2].NumberFormat := '@';
      ExcelWorkSheet.Cells.Item[Linha, 2].Value := FmtProdutoCliente(Clientescod_cliente.AsString, FieldByName('cod_produto').AsString).fmtProduto;
      { C - Descrição do Produto }
      with ProdutoDet(FieldByName('cod_produto').AsString, Clientescod_cliente.AsString, Fornecedorescod_fornecedor.AsInteger) do
      begin
         s1 := Ingles;
         s2 := Portugues;

         if s1[Length(s1)] <> '.' then
            s1 := s1 + '.';

        if rgOrdenar.ItemIndex = 0 then
        begin
          if s1[Length(s1)] <> '.' then
             s1 := s1 + '.';

          s := s1 + ' ' + S2 + '. ('+Grupo + ', NCM: ' + Ncm + ')';
          ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].FormulaR1C1 := s;
          with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[1,Length(s1)].Font do
          begin
            Size := 08;
            Bold := True;
            Name := 'Arial';
          end;
          with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[Length(s1)+1,Length(s)].Font do
          begin
            Size := 08;
            Bold := False;
            Name := 'Arial';
          end;
        end;

        if rgOrdenar.ItemIndex = 1 then
        begin
          if s2[Length(s2)] <> '.' then
             s2 := s2 + '.';

          s := s2 + ' ' + S1 + '. ('+Grupo + ', NCM: ' + Ncm + ')';
          ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].FormulaR1C1 := s;
          with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[1,Length(s2)].Font do
          begin
            Size := 08;
            Bold := True;
            Name := 'Arial';
          end;
          with ExcelWorksheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)].Characters[Length(s2)+1,Length(s)].Font do
          begin
            Size := 08;
            Bold := False;
            Name := 'Arial';                                  
          end;
        end;
      end;
      ExcelWorkSheet.Cells.Item[Linha, 3].WrapText := True;
      ExcelWorkSheet.Cells.Item[Linha, 3].ShrinkToFit := False;
      {D - Data Preço Orçamento }
      ExcelWorkSheet.Cells.Item[Linha, 4].FormulaR1C1 := FormatDateTime('DD.MM.YY', FieldByname('dat_preco').AsDateTime);
      {E - Preço Orçamento }
      ExcelWorkSheet.Cells.Item[Linha, 5].NumberFormat := '#.##0,000000';
      ExcelWorkSheet.Cells.Item[Linha, 5].Value := FieldByName('vlr_unitario').AsFloat;
      p1 := FieldByName('vlr_unitario').AsFloat;
      {F - Observação Orçamento }
      ExcelWorkSheet.Cells.Item[Linha, 6].Value := FieldByName('obs_preco').AsString;
      ExcelWorkSheet.Cells.Item[Linha, 6].WrapText := True;
      ExcelWorkSheet.Cells.Item[Linha, 6].ShrinkToFit := False;

      with dmCOM.PrecoItem(FieldByname('cod_produto').AsString, FieldByName('cod_cliente').AsString, Listasnum_lista.AsInteger) do
      begin
        {G - Data Preço Lista }
        ExcelWorkSheet.Cells.Item[Linha, 7].FormulaR1C1 := FormatDateTime('DD.MM.YY', DataPreco);
        {H - Preço Lista }
        ExcelWorkSheet.Cells.Item[Linha, 8].NumberFormat := '#.##0,000000';
        ExcelWorkSheet.Cells.Item[Linha, 8].Value := PrecoItem;
        p2 := PrecoItem;
        {I - Observação Lista }
        ExcelWorkSheet.Cells.Item[Linha, 9].Value := ObsPreco;
        ExcelWorkSheet.Cells.Item[Linha, 9].WrapText := True;
        ExcelWorkSheet.Cells.Item[Linha, 9].ShrinkToFit := False;

        { calcular variação do preço entre Orçamento x Lista }
        try
          v := ((p1/p2)-1)*100;
        except
          v := 0.00;
        end;
        p1 := PrecoItem;
        {J - Percentual de Variação do Preço Orçamento x Lista }
        ExcelWorkSheet.Cells.Item[Linha, 10].NumberFormat := '##0,00';
        ExcelWorkSheet.Cells.Item[Linha, 10].Value := v;
      end;


      { Obeter última compra }
      UltimosPrecosProduto(ListaPrecocod_produto.AsString, ListaPrecocod_cliente.AsString);
      Ultimo_Pedido_Produto.First;
      {K - Preço Anterior última compra }
      ExcelWorkSheet.Cells.Item[Linha, 11].NumberFormat := '#.##0,000000';
      ExcelWorkSheet.Cells.Item[Linha, 11].Value := Ultimo_Pedido_Produtovlr_unitario.AsFloat;
      p2 := Ultimo_Pedido_Produtovlr_unitario.AsFloat;

      { calcular variação do preço }
      try
        v := ((p1/p2)-1)*100;
      except
        v := 0.00;
      end;

      {L - Observação Preço Anterior }
      ExcelWorkSheet.Cells.Item[Linha, 12].Value := 'Price of ORDER ' + trim(Ultimo_Pedido_Produtonum_pedido_cli.AsString) +
                                                   ', S/C ' + trim(Ultimo_Pedido_Produtonum_pedido_for.AsString) +
                                                   ' dated ' + FormatDateTime('DD.MM.YY', Ultimo_Pedido_Produtodat_liberacao.AsDateTime);
      ExcelWorkSheet.Cells.Item[Linha, 12].WrapText := True;
      ExcelWorkSheet.Cells.Item[Linha, 12].ShrinkToFit := False;
      {M - Percentual de Variação do Preço Lista x Última Compra }
      ExcelWorkSheet.Cells.Item[Linha, 13].NumberFormat := '##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 13].Value := v;

      { Obter Compra Anterior }
      Ultimo_Pedido_Produto.Next;
      p1 := p2;
      p2 := Ultimo_Pedido_Produtovlr_unitario.AsFloat;

      { calcular variação do preço }
      try
        v := ((p1/p2)-1)*100;
      except
        v := 0.00;
      end;

      {N - Compra Anterior - Coluna escondida }
      ExcelWorkSheet.Cells.Item[Linha, 14].NumberFormat := '#.##0,000000';
      ExcelWorkSheet.Cells.Item[Linha, 14].Value := Ultimo_Pedido_Produtovlr_unitario.AsFloat;
      {O - Observação Compra Anterior }
      ExcelWorkSheet.Cells.Item[Linha, 15].Value := 'Price of ORDER ' + trim(Ultimo_Pedido_Produtonum_pedido_cli.AsString) +
                                                   ', S/C ' + trim(Ultimo_Pedido_Produtonum_pedido_for.AsString) +
                                                   ' dated ' + FormatDateTime('DD.MM.YY', Ultimo_Pedido_Produtodat_liberacao.AsDateTime);
      ExcelWorkSheet.Cells.Item[Linha, 15].WrapText := True;
      ExcelWorkSheet.Cells.Item[Linha, 15].ShrinkToFit := False;
      {P - Percentual de Variação do Preço Última Compra x Compra Anterior}
      ExcelWorkSheet.Cells.Item[Linha, 16].NumberFormat := '##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 16].Value := v;


      ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].HorizontalAlignment := xlGeneral;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].VerticalAlignment   := xlTop;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].WrapText            := True;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Orientation         := 0;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].AddIndent           := False;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].IndentLevel         := 0;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].ShrinkToFit         := False;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].ReadingOrder        := xlContext;
      ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].MergeCells          := False;
      ExcelWorkSheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].HorizontalAlignment := xlCenter;
      ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].VerticalAlignment   := xlCenter;
      ExcelWorkSheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)].Borders.LineStyle   := xlContinuous;

      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'P' + IntToStr(Linha)] do
      begin
         Font.Name := 'Arial';
         Font.Size := 8;
      end;

      Inc(Linha);
      Inc(Seq);
      Next;
    end;
  end;

  {bordas desde o cabeçalho até ultima linha}
  with ExcelWorkSheet.Range['A5','C' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
  end;
  with ExcelWorkSheet.Range['D5','F' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
  end;
  with ExcelWorkSheet.Range['G5','J' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
  end;
  with ExcelWorkSheet.Range['K5','M' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
  end;
  with ExcelWorkSheet.Range['N5','P' + IntToStr(Linha-1)] do
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
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeRight] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeLeft] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
    with Borders[xlEdgeBottom] do
    begin
       LineStyle := xlContinuous;
       Weight := xlMedium;
       ColorIndex := xlAutomatic;
    end;
  end;
  { Esconder as colunas N, O e P }
  ExcelWorkSheet.Range['N1','P1'].EntireColumn.Hidden := True;
end;

procedure Trl_Orcamentos.actExcelExecute(Sender: TObject);
Var
  Lista: String;

begin
  inherited;
  { Gerar a Lista de preços em Excel }
  try
   ExcelApplication.Connect;
   { Pasta onde será gravada a Planilha Excel do Cliente  }
   with dmCOM.parametro_comercial do
   begin
     Close;
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     Open;
     DIR_PLANILHAS := FieldByName('dir_planilhas').AsString;
     Close;
   end;
   if trim(DIR_PLANILHAS) = '' then
   begin
     Application.MessageBox('Pasta para planilhas do Cliente, não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
     Abort;
   end;
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { diretório para planilhas, mais subpasta com código do cliente }
   DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(Clientescod_cliente.AsString);

   { se o diretório de planilhas do cliente não existe, tenta criar o diretório }
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   DIR_PLANILHAS := DIR_PLANILHAS + '\BUDGETS';
   if not DirectoryExists(DIR_PLANILHAS) then
      if not CreateDir(DIR_PLANILHAS) then
         raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

   { a planilha gerada terá como nome, o Nome do Cliente + Razão Social do Fornecedor }
   Lista := ClientesCod_Cliente.AsString + '.' + Fornecedoresraz_social_reduz.AsString;
   Lista := StringReplace(Lista, '/', '-', [rfReplaceAll]);
   Lista := StringReplace(Lista, '\', '-', [rfReplaceAll]);
   if rgOrdenar.ItemIndex = 0 then
      Lista := Lista + '.BUDGET-ENG'
   else
      Lista := Lista + '.BUDGET-POR';
   FileName := DIR_PLANILHAS + '\' + trim(Lista) + '.' + FormatDateTime('dd.mm.yy', DataHoraServidor) + '.xls';

   { Exibe a planilha enquanto cria ? }
   ExcelApplication.Visible[0] := true;
   ExcelApplication.DisplayAlerts[0] := False;

   ExcelWorkbook.ConnectTo(ExcelApplication.Workbooks.Add(xlWBATWorksheet, GetUserDefaultLCID));
   ExcelWorksheet.ConnectTo(ExcelWorkbook.Worksheets[1] as _Worksheet);

   { Página da planilha }
   ExcelWorkSheet.Name := 'Lista de Preços';
   { Itens da Lista de Preços }
   with ListaPreco do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select l."cod_cliente", l."num_lista", l."dat_cadastro", l."den_lista", l."ies_situacao",         ');
     SQL.Add('       a."cod_produto", a."dat_cadastro" "dat_preco", a."vlr_unitario", a."obs_preco",            ');
     SQL.Add('       b."den_produto", b."cod_fornecedor", b."cod_prod_fornec", d."raz_social", e."nom_cliente", ');
     SQL.Add('       b."den_produto_det", b."ncm_cod"                                                        ');
     SQL.Add('from "lista" l, "lista_preco" a, "produto" b,  "fornecedor" d, "cliente" e                        ');
     SQL.Add('where l."cod_empresa" = :cod_empresa                                                              ');
     SQL.Add('  and l."num_lista" = :num_lista                                                                  ');
     SQL.Add('  and l."ies_tip_lista" = ''O''                                                                   ');
     SQl.Add('  and a."cod_empresa" = l."cod_empresa"                                                           ');
     SQL.Add('  and a."num_lista" = l."num_lista"                                                               ');
     SQL.Add('  and d."cod_fornecedor" = :cod_fornecedor                                                        ');
     SQL.Add('  and b."cod_empresa" = a."cod_empresa"                                                           ');
     SQL.Add('  and b."cod_produto" = a."cod_produto"                                                           ');
     SQL.Add('  and d."cod_fornecedor" = b."cod_fornecedor"                                                     ');
     SQL.Add('  and e."cod_cliente" = l."cod_cliente"                                                           ');
     if rgOrdenar.ItemIndex = 0 then
        SQL.Add('order by b."den_produto_ing"');
     if rgOrdenar.ItemIndex = 1 then
        SQL.Add('order by b."den_produto"');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     ParamByName('num_lista').AsInteger := Orcamentosnum_lista.AsInteger;
     ParamByName('cod_fornecedor').AsInteger := Fornecedorescod_fornecedor.AsInteger;
     Open;
     if IsEmpty then
     begin
       FecharExcel;
       Exit;
     end;
   end;
   Linha := 1;
   { Cabeçalho da lista }
   ListaHeader;
   { Gerar Itens no Excel }
   ListaItens;

   { ajustar propriedades para impressão da página de condições }
   ExcelWorksheet.PageSetup.PrintArea := '$A$1:$P$'+IntToStr(Linha);
   with ExcelWorksheet.PageSetup do
   begin
     PrintTitleRows := '$1:$7';
     PrintTitleColumns := '';
     LeftHeader := '';
     CenterHeader := '';
     RightHeader := '';
     LeftFooter := '';
     LeftMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     RightMargin := 0;
     TopMargin := ExcelWorksheet.Application.InchesToPoints(0.590551181102362, GetUserDefaultLCID);
     BottomMargin := ExcelWorksheet.Application.InchesToPoints(0.196850393700787, GetUserDefaultLCID);
     HeaderMargin := 0;
     FooterMargin := 0;
     PrintHeadings := False;
     PrintGridlines := False;
     PrintComments := xlPrintNoComments;                
     CenterHorizontally := False;
     CenterVertically := False;
     Orientation := xlLandscape;
     Draft := False;
     PaperSize := xlPaperA4;
     FirstPageNumber := xlAutomatic;
     Order := xlDownThenOver;
     BlackAndWhite := False;
     Zoom := 75;
    end;

   { Salvar a planilha }
   ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);

  finally
   { Fechar planilha e encerrar excel }
   ExcelApplication.Quit;
   ExcelApplication.Disconnect;
 end;
end;

procedure Trl_Orcamentos.actAbrirExecute(Sender: TObject);
begin
  inherited;
  if trim(FileName) <> '' then
     AbrirPlanilha(FileName);
end;

procedure Trl_Orcamentos.UltimosPrecosProduto(CodProduto, CodCliente: String);
begin
  { última confirmação de pedido do produto }
  with Ultimo_Pedido_Produto do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := CodCliente;
    ParamByName('cod_produto').AsString := CodProduto;
    Open;                                                        
  end;
end;

                                    
procedure Trl_Orcamentos.OrcamentosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with Fornecedores do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_lista').AsInteger := Orcamentosnum_lista.AsInteger;
    Open;
    dbcFornecedor.KeyValue := Fornecedorescod_fornecedor.AsInteger;
  end;
end;

end.
