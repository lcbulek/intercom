unit SigIMP01_078;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Excel2000,
  OleServer, Spin, DateUtils, AniThread, ComCtrls, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker;

type
  TTotalComissao = record
                     TotalValorFatura : double;
                     TotalValorComissao : double;
                   end;

  TfrmRelComissoes = class(TForm)
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
    dlcClientes: TJvDBLookupCombo;
    Label2: TLabel;
    dlcFornecedores: TJvDBLookupCombo;
    Produtos: TIBQuery;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;             
    parametro_comercialies_modelo: TIntegerField;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    parametro_comercialdir_planilhas: TIBStringField;
    panGauge: TPanel;
    Faturas: TIBQuery;
    Clientescod_cliente: TIBStringField;
    parametro_comercialmod_plan_excel: TBlobField;
    TotalComissaoFatura: TIBQuery;
    ExcelWorkBook: TExcelWorkbook;
    Produtosnum_sequencia: TSmallintField;
    Produtosnum_pedido_cli: TIBStringField;
    Produtoscod_produto: TIBStringField;
    Produtosden_produto: TIBStringField;
    Produtosqtd_produto: TIBBCDField;
    Produtosvlr_unitario_esp: TFloatField;
    Produtosvlr_liquido_esp: TIBBCDField;
    Produtospct_comissao_f: TIBBCDField;
    Produtospct_comissao_c: TIBBCDField;
    Fornecedorescod_fornecedor: TSmallintField;
    Fornecedoresraz_social_reduz: TIBStringField;
    Produtosvlr_unitario: TFloatField;
    Produtosvlr_liquido: TIBBCDField;
    Produtosies_base_comissao: TIBStringField;
    Faturasdat_liquidacao: TDateField;
    Faturasnum_fatura: TIBStringField;
    Faturasnum_ref_volume: TIBStringField;
    Faturascod_fornecedor: TSmallintField;
    Faturasraz_social_reduz: TIBStringField;
    Faturascod_cliente: TIBStringField;
    Faturasnum_nota_fiscal: TIntegerField;
    Faturasserie: TIBStringField;
    Faturasdat_embarque: TDateField;
    Faturasoverprice_com_c: TIBBCDField;
    Faturasoverprice_com_f: TIBBCDField;
    TotalComissaoFaturavlr_total_fatura: TIBBCDField;
    TotalComissaoFaturavlr_total_comissao: TIBBCDField;
    rgTipoComissao: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dlcClientesChange(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure AbrirExcel(Caminho: String);
    Procedure AbrirPlanilha(FileName: String);
    procedure FecharExcel;
    procedure ClientesBeforeOpen(DataSet: TDataSet);
    procedure FornecedoresBeforeOpen(DataSet: TDataSet);
    procedure dlcFornecedoresChange(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    function GetTotalComissaoFatura(NumNotaFiscal: integer; Serie, Tipo: String): TTotalComissao;
    procedure HeaderFaturas(Tipo: String);
    procedure GerarFaturas(Tipo: String);
    procedure HeaderProdutos(Tipo: String);
    procedure HeaderProdutos2(NumFatura, NumLote, Cliente, Fornecedor, Tipo: String);
    procedure GerarProdutos(Tipo: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelComissoes: TfrmRelComissoes;
  FileName : String;
  DIR_PLANILHAS : String;
  NomePlan : String;
  Linha, LinhaAux, LinhaAnt : Integer;

implementation

uses unConnection, unMenuCompl, Math, SIGIMP01_045;

{$R *.dfm}

procedure TfrmRelComissoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Produtos.Close;
  Faturas.Close;
  Parametro_Comercial.Close;

  Action := caFree;
  frmRelComissoes := nil;
end;

procedure TfrmRelComissoes.FormCreate(Sender: TObject);
begin
  with Clientes do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    Open;
  end;
  with Fornecedores do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    Open;
  end;
end;

procedure TfrmRelComissoes.dlcClientesChange(Sender: TObject);
begin
   with Fornecedores do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select b."cod_fornecedor", c."raz_social_reduz"                       ');
     SQL.Add('from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c  ');
     SQL.Add('where a."cod_empresa" = :cod_empresa                                  ');
     if (dlcClientes.Value <> '0') then
     begin
        SQL.Add('   and a."cod_cliente" = :cod_cliente                     ');
        ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
     end;
     SQL.Add('  and b."cod_empresa" = a."cod_empresa"                               ');
     SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                       ');
     SQL.Add('  and b."serie" = a."serie"                                           ');
     SQL.Add('  and c."cod_fornecedor" = b."cod_fornecedor"                         ');
     SQL.Add('group by 1,2                                                          ');
     SQL.Add('order by 2                                                            ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     Open;
   end;

   if ((dlcFornecedores.Value <> '0') and (dlcClientes.Value <> '0'))
   then
      rgTipoComissao.Enabled := True
   else
      rgTipoComissao.Enabled := False;

end;

procedure TfrmRelComissoes.HeaderFaturas(Tipo: String);
begin
  ExcelWorkSheet.Name := 'Invoices';
  Linha := 1;
  with ExcelWorkSheet.Range['A' + IntToStr(Linha),'G' + IntToStr(Linha)] do
  begin
   Value := NomePlan;
   Font.Bold := True;
   Font.Size := 12;
   MergeCells := True;
   Interior.ColorIndex := 6;
   Borders.LineStyle := xlContinuous;
   HorizontalAlignment := xlLeft;
   VerticalAlignment := xlCenter;
   WrapText := True;
   ShrinkToFit := False;
  end;
  Inc(Linha);
  LinhaAux := Linha;

  { cabeçalho das colunas }
  ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'INVOICE NUMBER';
  ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'CLIENT';
  ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'SUPPLIER';
  ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'AMOUNT OF THE INVOICE';
  ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'LOT NUMBER';
  ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'VALUE OF COMMISSION (USD)';
  ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'SHIPPING DATE';

  { Tamanho das colunas }
  ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 30.00;
  ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 30.00;
  ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 40.00;
  ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 20.00;
  ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 20.00;
  ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 15.00;
  ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 9.86;

  { formatação cabeçalho dos items }
  with ExcelWorkSheet.Range['A' + IntToStr(LinhaAux),'G' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 9;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 6;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlCenter;
     WrapText := True;
     ShrinkToFit := False;
  end;
  Linha := 3;
end;


function TfrmRelComissoes.GetTotalComissaoFatura(NumNotaFiscal: integer; Serie, Tipo: string): TTotalComissao;
begin
  { Retornar o Valor Total da Fatura e da Comissão + Overprice }
  with TotalComissaoFatura do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_nota_fiscal').Value := NumNotaFiscal;
    ParamByName('serie').Value := Serie;
    ParamByName('tipo').Value := Tipo;
    Open;
    Result.TotalValorFatura := TotalComissaoFaturavlr_total_fatura.AsFloat;
    Result.TotalValorComissao := TotalComissaoFaturavlr_total_comissao.AsFloat;
    Close;
  end;
end;                                                      


procedure TfrmRelComissoes.GerarFaturas(Tipo: String);
Var
  TotalFatura, TotalComissao : double;
begin
  { Selecionar as Comissões não Pagas para Fornecedor ou Cliente }
  with Faturas do
  begin
    SQL.Clear;
    SQL.Add('select a."dat_liquidacao", b."num_fatura", b."num_ref_volume", b."cod_fornecedor", c."raz_social_reduz",   ');
    SQL.Add('       a."cod_cliente", a."num_nota_fiscal", a."serie", a."dat_embarque",                                  ');
    SQL.Add('       a."overprice_com_c", a."overprice_com_f"                                                            ');
    SQL.Add('  from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c                                     ');
    SQL.Add(' where a."cod_empresa" = :cod_empresa                                                                      ');

    if (Tipo = 'F') then
    begin
      SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor                   ');
      SQL.Add('  and a."dat_pgto_comis_f" is null                           ');
      SQL.Add('  and a."ies_comissao" in (1,3)                              ');
      ParamByName('cod_fornecedor').Value := Fornecedorescod_fornecedor.AsInteger;
      if (dlcClientes.Value <> '0') then
      begin
         SQL.Add('  and a."cod_cliente" = :cod_cliente                        ');
         ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
      end;
    end else if (Tipo = 'C') then
    begin
       SQL.Add('  and a."cod_cliente" = :cod_cliente                        ');
       SQL.Add('  and a."dat_pgto_comis_c" is null                          ');
       SQL.Add('  and a."ies_comissao" in (2,3)                             ');
       ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
       if (dlcFornecedores.Value <> '0') then
       begin
         SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor                   ');
         ParamByName('cod_fornecedor').Value := Fornecedorescod_fornecedor.AsInteger;
       end;
    end;

    SQL.Add('  and not(a."dat_liquidacao" is null)                          ');
    SQL.Add('  and b."cod_empresa" = a."cod_empresa"                        ');
    SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                ');
    SQL.Add('  and b."serie" = a."serie"                                    ');
    SQL.Add('  and c."cod_fornecedor" = b."cod_fornecedor"                  ');
    if (Tipo = 'C') then SQL.Add('order by c."raz_social_reduz", a."dat_embarque"')
    else if (Tipo = 'F') then SQL.Add('order by a."cod_cliente", a."dat_embarque"');

    ParamByName('cod_empresa').Value := vgCod_Empresa;
    //SQL.SaveToFile('C:\sig\comissao.sql');
    Open;

    HeaderFaturas(Tipo);
    LinhaAnt := Linha;

    { Ler as Faturas para Resumo }
    while Not(Eof) do
    begin
      { A - Invoice Number }
      ExcelWorkSheet.Cells.Item[Linha, 1].Value := trim(FieldByName('num_fatura').AsString);
      ExcelWorkSheet.Cells.Item[Linha, 1].HorizontalAlignment := xlLeft;
      { B - CÓDIGO DO CLIENTE }
      ExcelWorkSheet.Cells.Item[Linha, 2].Value := FieldByName('cod_cliente').AsString;
      { C - FORNECEDOR }
      ExcelWorkSheet.Cells.Item[Linha, 3].Value := FieldByName('raz_social_reduz').AsString;

      { Obter valor total da Fatura e Comissões + Overprice }
      with GetTotalComissaoFatura(FieldByName('num_nota_fiscal').AsInteger, FieldByName('serie').AsString, Tipo) do
      begin
        TotalFatura := TotalValorFatura;
        TotalComissao := TotalValorComissao;
      end;

      { D - Valor Total da Fatura }
      ExcelWorkSheet.Cells.Item[Linha, 4].NumberFormat := '###.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 4].Value := TotalFatura;
      { E - LOT NUMBER }
      ExcelWorkSheet.Cells.Item[Linha, 5].Value := trim(FieldByName('num_ref_volume').AsString);
      ExcelWorkSheet.Cells.Item[Linha, 5].HorizontalAlignment := xlLeft;
      { F - VALUE OF COMMISSION (USD) }
      ExcelWorkSheet.Cells.Item[Linha, 6].NumberFormat := '###.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 6].Value := TotalComissao;

      { indicar em vermelho quando o percentual for zero }
      if (ExcelWorkSheet.Cells.Item[Linha, 6].Value = 0) then ExcelWorkSheet.Cells.Item[Linha, 6].Font.ColorIndex := 3
                                                         else ExcelWorkSheet.Cells.Item[Linha, 6].Font.ColorIndex := 0;

      { G - SHIPPING DATE }
      if not(FieldByName('dat_embarque').IsNull) then
         ExcelWorkSheet.Cells.Item[Linha, 7].Value := FormatDateTime('dd.mm.yy', FieldByName('dat_embarque').AsDateTime)
      else ExcelWorkSheet.Cells.Item[Linha, 7].Value := '';
      ExcelWorkSheet.Cells.Item[Linha, 7].HorizontalAlignment := xlCenter;

      Inc(Linha);
      Next;
    end; // while Not(Eof)

    Inc(Linha);
    Inc(Linha);
    { Total Resumo Faturas }
    ExcelWorkSheet.Cells.Item[Linha, 3].Value := 'TOTAL : ';
    ExcelWorkSheet.Cells.Item[Linha, 4].Formula := '=SUM(D3:D'+IntTostr(Linha-2)+')';
    ExcelWorkSheet.Cells.Item[Linha, 4].NumberFormat := '###.##0,00';

    ExcelWorkSheet.Cells.Item[Linha, 6].Formula := '=SUM(F3:F'+IntTostr(Linha-2)+')';
    ExcelWorkSheet.Cells.Item[Linha, 6].NumberFormat := '###.##0,00';



    {bordas desde o cabeçalho até ultima linha}
    with ExcelWorkSheet.Range['A' + IntToStr(LinhaAnt),'G' + IntToStr(Linha)] do
    begin
      Font.Name := 'Arial';
      Font.Bold := False;
      Font.Size := 10;
    end;
  end; //with Faturas
end;

procedure TfrmRelComissoes.HeaderProdutos(Tipo: String);
begin
  { Cabeçalho da Página de Produtos }
  Linha := 1;
  with ExcelWorkSheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)] do
  begin
   Value := NomePlan;
   Font.Name := 'Arial';
   Font.Bold := True;
   Font.Size := 12;
   MergeCells := True;
   Interior.ColorIndex := 6;
   Borders.LineStyle := xlContinuous;
   HorizontalAlignment := xlLeft;
   VerticalAlignment := xlTop;
   WrapText := True;
   ShrinkToFit := False;
  end;
  Inc(Linha);
end;

procedure TfrmRelComissoes.HeaderProdutos2(NumFatura, NumLote, Cliente, Fornecedor, Tipo: String);
begin
  { Cabeçalho para Itens da Fatura na página de Produtos }
  with ExcelWorkSheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)] do
  begin
   Value := 'PRODUCTS OF THE INVOICE : ' + trim(NumFatura) + '  LOT : ' + trim(NumLote) + '     CLIENT : ' + Cliente + '  SUPPLIER : ' + Fornecedor;
   Font.Bold := True;
   Font.Size := 10;
   MergeCells := True;
   Interior.ColorIndex := 6;
   Borders.LineStyle := xlContinuous;
   HorizontalAlignment := xlLeft;
   VerticalAlignment := xlTop;                                              
   WrapText := True;
   ShrinkToFit := False;
  end;
  inc(Linha);
  ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].Value2 := 'SEQ';
  ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].Value2 := 'ORDER NUMBER';
  ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].Value2 := 'PRODUCT CODE';
  ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].Value2 := 'PRODUCT DESCRIPTION';
  ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].Value2 := 'QUANTITY';
  ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].Value2 := 'PRICE IN USD';
  ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].Value2 := 'TOTAL US$';
  ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].Value2 := 'COMMISSION (%)';
  ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].Value2 := 'VALUE OF COMMISSION USD';

  { Tamanho das colunas }
  ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)].ColumnWidth := 3.71;
  ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)].ColumnWidth := 15.00;
  ExcelWorkSheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)].ColumnWidth := 15.00;
  ExcelWorkSheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)].ColumnWidth := 80.00;
  ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)].ColumnWidth := 10.86;
  ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)].ColumnWidth := 10.86;
  ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)].ColumnWidth := 10.86;
  ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)].ColumnWidth := 10.86;
  ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)].ColumnWidth := 10.86;

  with ExcelWorkSheet.Range['A' + IntToStr(Linha),'I' + IntToStr(Linha)] do
  begin
     Font.Name := 'Arial';
     Font.Bold := True;
     Font.Size := 9;
     Interior.Pattern := xlSolid;
     Interior.ColorIndex := 6;
     Borders.LineStyle := xlContinuous;
     HorizontalAlignment := xlCenter;
     VerticalAlignment := xlCenter;
     WrapText := True;
     ShrinkToFit := False;
  end;
  Inc(Linha);
end;


procedure TfrmRelComissoes.GerarProdutos(Tipo: String);
Var
  Seq, xlVerde, xlRoxo : integer;

begin
  { Produtos das Faturas para Comissões }

  xlVerde := 4;
  xlRoxo := 7;


  { detalhes de comissões por produtos }
  ExcelWorkSheet.ConnectTo(ExcelWorkBook.Worksheets.Add(EmptyParam, ExcelWorkBook.Worksheets['Invoices'], 1, EmptyParam, GetUserDefaultLCID) as _WorkSheet);
  ExcelWorkSheet.Name := 'Products';

  HeaderProdutos(Tipo);

  with Faturas do
  begin
    First;
    while Not(Eof) do
    begin
      HeaderProdutos2(Faturasnum_fatura.AsString, Faturasnum_ref_volume.AsString, Faturascod_cliente.AsString, Faturasraz_social_reduz.AsString, Tipo);
      LinhaAnt := Linha;
      Produtos.Close;
      Produtos.ParamByName('cod_empresa').Value := vgCod_Empresa;
      Produtos.ParamByName('num_nota_fiscal').Value := Faturasnum_nota_fiscal.Value;
      Produtos.ParamByName('serie').Value := Faturasserie.Value;
      produtos.Open;
      Seq := 1;
      while Not(Produtos.Eof) do
      begin
         { A - SEQ }
         with ExcelWorkSheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
         begin
           Value := Seq;
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 9;
           HorizontalAlignment := xlCenter;
           VerticalAlignment := xlCenter;
           Rows.RowHeight := 12.75;
         end;
         { B - ORDER NUMBER }
         with ExcelWorkSheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
         begin
           Value := Produtosnum_pedido_cli.AsString;
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 9;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlCenter;
         end;
         { C - PRODUCT CODE }
         with ExcelWorkSheet.Range['C'+IntToStr(Linha),'C'+IntToStr(Linha)] do
         begin
           NumberFormat := '@';
           Value := FmtProdutoCliente(Faturascod_cliente.AsString, Produtoscod_produto.AsString).fmtProduto;
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 9;
           MergeCells := False;
           Interior.ColorIndex := 0;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlCenter;
           WrapText := True;
           ShrinkToFit := False;
         end;
         { D - PRODUCT DESCRIPTION }
         with ExcelWorkSheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)] do
         begin
           Value := ProcurarProduto(Produtoscod_produto.AsString, Faturascod_cliente.AsString, Faturascod_fornecedor.AsInteger).DenProdutoIng;
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 8;
           MergeCells := False;
           Interior.ColorIndex := 0;
           HorizontalAlignment := xlLeft;
           VerticalAlignment := xlTop;
           WrapText := True;
           ShrinkToFit := False;
         end;
         { E - QUANTITY }
         with ExcelWorkSheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
         begin
           Value := Produtosqtd_produto.AsFloat;
           NumberFormat := '###.##0,0';
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 9;
           HorizontalAlignment := xlRight;
           VerticalAlignment := xlCenter;
         end;
         { F - PRICE IN US$ }
         with ExcelWorkSheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
         begin
           { O preço unitário de acordo com o indicado em base de comissão no Pedido (1=For(ESP) Cli(REAL) 2=For(REAL) Cli(ESP) }

           { Se as comissões for para Fornecedor }
           if (Tipo = 'F') then
           begin
             if (Produtosies_base_comissao.Value = '1') then begin
                                                               Value := Produtosvlr_unitario.AsFloat;
                                                               Interior.ColorIndex := xlVerde;
                                                             end
             else if (Produtosies_base_comissao.Value = '2') then begin
                                                                    Value := Produtosvlr_unitario_esp.AsFloat;
                                                                    Interior.ColorIndex := xlRoxo;
                                                                  end;
           end;

           { Se as comissões for para Cliente }
           if (Tipo = 'C') then
           begin
             if (Produtosies_base_comissao.Value = '1') then begin
                                                               Value := Produtosvlr_unitario_esp.AsFloat;
                                                               Interior.ColorIndex := xlVerde;
                                                             end
             else if (Produtosies_base_comissao.Value = '2') then begin
                                                                    Value := Produtosvlr_unitario.AsFloat;
                                                                    Interior.ColorIndex := xlRoxo;
                                                                  end;
           end;



           { indicar em vermelho quando o Preço for zero, porque não foi definido a base de comissão na Fatura }
           if (Value = 0) then Font.ColorIndex := 3
                          else Font.ColorIndex := 0;

           NumberFormat := '###.##0,000000';
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 9;
           HorizontalAlignment := xlRight;
           VerticalAlignment := xlCenter;
         end;
         { G - TOTAL US$ }
         with ExcelWorkSheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
         begin
           FormulaR1C1 := '=RC[-1]*RC[-2]';
           NumberFormat := '###.##0,00';
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 9;
           HorizontalAlignment := xlRight;
           VerticalAlignment := xlCenter;
         end;
         { H - COMISSION (%) }
         with ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
         begin
           { de quem está sendo requerida a comissão (Fornecedor ou Cliente) }
           if (Tipo = 'F') then Value := Produtospct_comissao_f.AsFloat
           else if (Tipo = 'C') then Value := Produtospct_comissao_c.AsFloat;

           { indicar em vermelho quando o percentual for zero }
           if (Value = 0) then Font.ColorIndex := 3
                          else Font.ColorIndex := 0;

           NumberFormat := '##0,00';
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 9;
           HorizontalAlignment := xlCenter;
           VerticalAlignment := xlCenter;
         end;
         { I - VALUE OF COMMISSION }
         with ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
         begin
           FormulaR1C1 := '=ROUND(RC[-1]*RC[-2]/100,2)';

           { indicar em vermelho quando o valor da comissão for zero }
           if (Value = 0) then Font.ColorIndex := 3
                          else Font.ColorIndex := 0;


           NumberFormat := '###.##0,00';
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 9;
           HorizontalAlignment := xlRight;
           VerticalAlignment := xlCenter;
         end;
         Inc(Seq);
         Produtos.Next;
         Inc(Linha);
      end; // produtos

      Inc(Linha);

      if ((Faturasoverprice_com_c.AsFloat > 0) or (Faturasoverprice_com_f.AsFloat > 0)) then
      begin
         { D - OVERPRICE }
         with ExcelWorkSheet.Range['D'+IntToStr(Linha),'D'+IntToStr(Linha)] do
         begin
           Value := 'OVERPRICE';
           Font.Name := 'Arial';
           Font.Bold := False;
           Font.Size := 10;
           MergeCells := False;
           Interior.ColorIndex := 0;
           HorizontalAlignment := xlRight;
           VerticalAlignment := xlTop;
           WrapText := True;
           ShrinkToFit := False;
         end;
         { I - OVERPRICE }
         with ExcelWorkSheet.Range['I'+IntToStr(Linha),'I'+IntToStr(Linha)] do
         begin
           if (Tipo = 'C') then Value := Faturasoverprice_com_c.AsFloat
           else Value := Faturasoverprice_com_f.AsFloat;
           Font.Name := 'Arial';
           NumberFormat := '###.##0,00';
           Font.Bold := False;
           Font.Size := 10;
           MergeCells := False;
           Interior.ColorIndex := 0;
           HorizontalAlignment := xlRight;
           VerticalAlignment := xlTop;
           WrapText := True;
           ShrinkToFit := False;
         end;

         Inc(Linha);
      end;

      { Total da Fatura }
      ExcelWorkSheet.Cells.Item[Linha, 7].Formula := '=SUM(G'+IntTostr(LinhaAnt)+':G'+IntTostr(Linha-1)+')';
      ExcelWorkSheet.Cells.Item[Linha, 7].NumberFormat := '###.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 7].Font.Name := 'Arial';
      ExcelWorkSheet.Cells.Item[Linha, 7].Font.Bold := False;
      ExcelWorkSheet.Cells.Item[Linha, 7].Font.Size := 10;

      ExcelWorkSheet.Cells.Item[Linha, 9].Formula := '=SUM(I'+IntTostr(LinhaAnt)+':I'+IntTostr(Linha-1)+')';
      ExcelWorkSheet.Cells.Item[Linha, 9].NumberFormat := '###.##0,00';
      ExcelWorkSheet.Cells.Item[Linha, 9].Font.Name := 'Arial';
      ExcelWorkSheet.Cells.Item[Linha, 9].Font.Bold := False;
      ExcelWorkSheet.Cells.Item[Linha, 9].Font.Size := 10;

      Linha := Linha + 2;
      Next;
    end; // Faturas
    Close;
  end;


end;


procedure TfrmRelComissoes.actGerarExecute(Sender: TObject);
Var
  Tipo, Cliente, Fornecedor  : String;

begin
  { Não permitir gerar planilha para todos os Fornecedores/Clientes }
  if ((dlcFornecedores.Text = '* Todos *') and (dlcClientes.Text = '* Todos *')) then
  begin
    Application.MessageBox('Escolha um Fornecedor e Todos os clientes ou um Cliente e Todos os Fornecedores', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;

  { Identificar de quem será requisitada a Comissão (Fornecedor ou Cliente) }

  // Um Fornecedor - Todos os Clientes
  if ((dlcFornecedores.Value <> '0') and (dlcClientes.Value = '0')) then rgTipoComissao.ItemIndex := 1; // Tipo = 'C'
  // Todos os Fornecedores - Um Cliente
  if ((dlcFornecedores.Value = '0') and (dlcClientes.Value <> '0')) then rgTipoComissao.ItemIndex := 0; // Tipo = 'F'


  // Um Fornecedor -  Um Cliente
  if (rgTipoComissao.ItemIndex = -1) then
  begin
    Application.MessageBox('Escolha requisitar comissão de Fornecedor ou Cliente', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;

  if (rgTipoComissao.ItemIndex = 0) then Tipo := 'C'
  else if (rgTipoComissao.ItemIndex = 1) then Tipo := 'F'
  else begin
    Application.MessageBox('Escolha um Fornecedor ou um Cliente', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;

  { Gerar a Planilha de Comissões }                                           
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
  { Modelo de Planilha em Branco }
  if GetBit(parametro_comercialies_modelo.AsInteger, 7) = 0 then
  begin
    Application.MessageBox('O modelo de planilha não foi definido', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
  { Pasta onde será gravada a planilha de Comissões  }
  DIR_PLANILHAS := parametro_comercialdir_planilhas.AsString;
  if trim(DIR_PLANILHAS) = '' then
  begin
    Application.MessageBox('Pasta para os documentos não definada nos parâmetros', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { diretório de Planilhas, mais subpasta de Comissões }
  DIR_PLANILHAS := DIR_PLANILHAS + '\COMISSÕES\';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  (* Nome da Planilha :
     1. todos fornecedores, 1 cliente    = PENDING COMMISSIONS CLIENT (nome do cliente) dd.mm.yyyy
     2. todos os clientes, 1 fornecedor  = PENDING COMMISSIONS ISSUER (nome do fornecedor) dd.mm.yyyy
  *)
  Fornecedor := trim(dlcFornecedores.Text);
  Fornecedor := StringReplace(Fornecedor, '/', '-', [rfReplaceAll]);
  Fornecedor := StringReplace(Fornecedor, '\', '-', [rfReplaceAll]);

  Cliente := trim(dlcClientes.Text);
  Cliente := StringReplace(Cliente, '/', '-', [rfReplaceAll]);
  Cliente := StringReplace(Cliente, '\', '-', [rfReplaceAll]);
                                                                              
  if (Tipo = 'C') then
    FileName := DIR_PLANILHAS + 'PENDING COMMISSIONS CLIENT (' + Cliente + ') ALL SUPPLIERS - DATE ' + FormatDateTime('dd.mm.yyyy', DataHoraServidor)
  else if (Tipo = 'F') then
  FileName := DIR_PLANILHAS + 'PENDING COMMISSIONS SUPPLIER (' + Fornecedor + ') ALL CLIENTS - DATE ' + FormatDateTime('dd.mm.yyyy', DataHoraServidor);

  NomePlan := Copy(FileName, Pos('PENDING', FileName), Length(FileName));

  FileName := FileName + '.xls';
                                                                              
  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);                                  
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnGerar.Enabled := False;
  btnAbrir.Enabled := False;
  Application.ProcessMessages;

  { Criar a Planilha  }
  parametro_comercialmod_plan_excel.SaveToFile(FileName);

  { conectar-se ao excel }
  ExcelApplication.Visible[0] := False;
  ExcelApplication.DisplayAlerts[0] := False;
  ExcelWorkbook.ConnectTo(ExcelApplication.Workbooks.Add(xlWBATWorksheet, GetUserDefaultLCID));
  ExcelWorksheet.ConnectTo(ExcelWorkbook.Worksheets[1] as _Worksheet);

  Screen.Cursor := crHourGlass;

  Linha := 1;

  GerarFaturas(Tipo);
  GerarProdutos(Tipo);

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

procedure TfrmRelComissoes.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);
end;

procedure TfrmRelComissoes.AbrirExcel(Caminho: String);
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


Procedure TfrmRelComissoes.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;

Procedure TfrmRelComissoes.AbrirPlanilha(FileName: String);
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

procedure TfrmRelComissoes.ClientesBeforeOpen(
  DataSet: TDataSet);
begin
  Clientes.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure TfrmRelComissoes.FornecedoresBeforeOpen(
  DataSet: TDataSet);
begin
   Fornecedores.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure TfrmRelComissoes.dlcFornecedoresChange(
  Sender: TObject);
begin
   with Clientes do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select a."cod_cliente"                                              ');
     SQL.Add('from "nota_fiscal_saida" a, "nf_saida_complemento" b, "cliente" c   ');
     SQL.Add('where a."cod_empresa" = :cod_empresa                                ');
     if (dlcFornecedores.Value <> '0') then
     begin
       SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor                        ');
       ParamByName('cod_fornecedor').Value := dlcFornecedores.Value;
     end;
     SQL.Add('  and b."cod_empresa" = a."cod_empresa"                             ');
     SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                     ');
     SQL.Add('  and b."serie" = a."serie"                                         ');
     SQL.Add('  and c."cod_cliente" = a."cod_cliente"                             ');
     SQL.Add('group by 1                                                          ');
     SQL.Add('order by 1                                                          ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
     Open;
   end;

   if ((dlcFornecedores.Value <> '0') and (dlcClientes.Value <> '0'))
   then
      rgTipoComissao.Enabled := True
   else
      rgTipoComissao.Enabled := False;

end;


end.
