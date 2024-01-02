unit SigIMP01_090;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Excel2000, OleServer, ActnList, StdCtrls, Buttons, ExtCtrls,
  JvExControls, JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Spin, AniThread, DateUtils,
  IBStoredProc;

type
  TfrmPagamentosFaturas = class(TForm)
    Clientes: TIBQuery;
    Clientescod_cliente: TIBStringField;
    ds_Clientes: TDataSource;
    Fornecedores: TIBQuery;
    Fornecedorescod_fornecedor: TIntegerField;
    Fornecedoresraz_social_reduz: TIBStringField;
    ds_Fornecedores: TDataSource;
    Label1: TLabel;
    dbcClientes: TJvDBLookupCombo;                                                            
    Label2: TLabel;
    dbcFornecedores: TJvDBLookupCombo;
    Panel1: TPanel;
    btnGerar: TBitBtn;
    btnAbrir: TBitBtn;
    BitBtn3: TBitBtn;
    panGauge: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    actAbrir: TAction;
    ExcelApplication: TExcelApplication;                                                          
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    Label3: TLabel;
    seAno: TSpinEdit;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialies_modelo: TIntegerField;
    parametro_comercialdir_planilhas: TIBStringField;
    parametro_comercialdias_inspecao: TSmallintField;
    parametro_comercialmod_plan_excel: TBlobField;
    Faturas: TIBQuery;
    Faturasnum_nota_fiscal: TIntegerField;
    Faturasserie: TIBStringField;
    Faturasnum_fatura: TIBStringField;
    Faturasdat_emissao: TDateTimeField;
    Faturasnum_ref_volume: TIBStringField;
    Faturascod_fornecedor: TSmallintField;
    Faturasvlr_liquido: TIBBCDField;
    Faturasvlr_liquido_esp: TIBBCDField;
    Faturasvlr_pendente: TIBBCDField;
    Faturasvlr_pendente_esp: TIBBCDField;
    Faturasvlr_pago: TIBBCDField;
    Faturasvlr_pago_esp: TIBBCDField;
    Faturasvlr_saldo: TIBBCDField;
    Faturasvlr_saldo_esp: TIBBCDField;
    spr_saldo_confirmacao: TIBQuery;
    spr_saldo_confirmacaonum_pedido: TLargeintField;
    spr_saldo_confirmacaonum_pedido_for: TIBStringField;
    spr_saldo_confirmacaonum_pedido_cli: TIBStringField;
    spr_saldo_confirmacaodat_liberacao: TDateField;
    spr_saldo_confirmacaovlr_pedido: TIBBCDField;
    spr_saldo_confirmacaovlr_pedido_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_produtos: TIBBCDField;
    spr_saldo_confirmacaovlr_produtos_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_faturado: TIBBCDField;
    spr_saldo_confirmacaovlr_faturado_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_adicional: TIBBCDField;
    spr_saldo_confirmacaovlr_adicional_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_desconto: TIBBCDField;
    spr_saldo_confirmacaovlr_desconto_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_tot_faturado: TIBBCDField;
    spr_saldo_confirmacaovlr_tot_faturado_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_pagamento: TIBBCDField;
    spr_saldo_confirmacaovlr_pagamento_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_fat: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_fat_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_ant: TIBBCDField;
    spr_saldo_confirmacaovlr_saldo_ant_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_pendente: TIBBCDField;
    spr_saldo_confirmacaovlr_pendente_esp: TIBBCDField;
    spr_saldo_confirmacaovlr_condicao: TIBBCDField;
    fatura_pagamento: TIBQuery;
    fatura_pagamentocod_empresa: TSmallintField;
    fatura_pagamentonum_nota_fiscal: TIntegerField;
    fatura_pagamentoserie: TIBStringField;
    fatura_pagamentonum_sequencia: TSmallintField;
    fatura_pagamentovlr_pagamento: TIBBCDField;
    fatura_pagamentovlr_pagamento_esp: TIBBCDField;
    fatura_pagamentodat_pagamento: TDateField;
    fatura_pagamentotxt_pagamento: TMemoField;
    fatura_pagamentonum_pedido: TLargeintField;
    Faturascod_cliente: TIBStringField;
    Faturasraz_social_reduz: TIBStringField;
    Label4: TLabel;
    Faturasies_preco_esp: TIBStringField;
    spr_fatura_pedido_ptgadiantado: TIBQuery;
    spr_fatura_pedido_ptgadiantadodat_pagamento: TDateField;
    spr_fatura_pedido_ptgadiantadovlr_pagamento: TIBBCDField;
    spr_fatura_pedido_ptgadiantadovlr_pagamento_esp: TIBBCDField;
    spr_fatura_pedido_ptgadiantadonum_pedido_cli: TIBStringField;
    procedure AbrirExcel(Caminho: String; Show: boolean = False);
    procedure FecharExcel;
    Procedure AbrirPlanilha(FileName: String);

    procedure AbrirFaturas;
    procedure HeaderExcelFaturas;
    procedure GravarLinhaFaturas;

    procedure actGerarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagamentosFaturas: TfrmPagamentosFaturas;
  FileName : String;
  DIR_PLANILHAS : String;
  Linha, LinFat, LinPed, LinPgtAd, LinPgtEf : Integer;

implementation

uses unConnection, unMenuCompl, SigIMP01_045, Math;

{$R *.dfm}


Procedure TfrmPagamentosFaturas.AbrirPlanilha(FileName: String);
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

procedure TfrmPagamentosFaturas.AbrirExcel(Caminho: String; Show: Boolean = False);
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
  ExcelApplication.Visible[lcid] := Show;
  ExcelApplication.DisplayAlerts[lcid] := False;
  except
    Application.MessageBox('Problemas na abertura da planilha Excel', 'Erro', MB_ICONERROR+MB_OK);
    FecharExcel;
    Abort;
  end;
end;

Procedure TfrmPagamentosFaturas.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;


procedure TfrmPagamentosFaturas.AbrirFaturas;
begin
  (* Selecionar as faturas conforme os parâmetros indicados no form *)
  with Faturas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select a."cod_cliente", c."raz_social_reduz", a."dat_emissao",                       ');
    SQL.Add('       a."num_nota_fiscal", a."serie", b."num_fatura",                               ');
    SQL.Add('       b."num_ref_volume", b."cod_fornecedor", a."vlr_liquido", a."vlr_liquido_esp", ');
    SQL.Add('       a."vlr_pendente", a."vlr_pendente_esp", a."vlr_pago", a."vlr_pago_esp",       ');
    SQL.Add('       a."vlr_saldo", a."vlr_saldo_esp", a."ies_preco_esp"                           ');
    SQL.Add('from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c                 ');
    SQL.Add('where a."cod_empresa" =:cod_empresa                                                  ');

    if (trim(seAno.Text) <> '') then
    begin
      SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano');
      ParamByName('ano').AsString := seAno.Text;
    end;

    if (dbcClientes.Value <> '0') then
    begin
      SQL.Add('   and a."cod_cliente" = :"cod_cliente"                                               ');
      ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    end;

    if (dbcFornecedores.Value <> '0') then
    begin
      SQL.Add('   and b."cod_fornecedor" = :"cod_fornecedor"                                         ');
      ParamByName('cod_fornecedor').AsString := Fornecedorescod_fornecedor.AsString;
    end;

    SQL.Add('  and b."cod_empresa" = a."cod_empresa"                          ');
    SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                  ');
    SQL.Add('  and b."serie" = a."serie"                                      ');
    SQL.Add('  and c."cod_fornecedor" = b."cod_fornecedor"                    ');

    if (dbcClientes.Value = '0') and
       (dbcFornecedores.Value <> '0') then
    begin
      SQL.Add(' order by 1, 3 descending ');
    end else
    if (dbcClientes.Value <> '0') and
       (dbcFornecedores.Value = '0') then
    begin
      SQL.Add(' order by 2, 3 descending ');
    end else
      SQL.Add(' order by 1,2, 3 descending ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;

    Open;
  end;
end;

procedure TfrmPagamentosFaturas.HeaderExcelFaturas;
Var
  s,t : String;
begin
    if (trim(seAno.Text) <> '') then t := seAno.Text
                                else t := ' TODOS';

    { Header1 }
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'M' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 40;
      if (dbcClientes.Value <> '0') and
         (dbcFornecedores.Value <> '0') then
      begin
        s := 'PAGAMENTOS EFETUADOS POR FATURAS: ' + trim(Clientescod_cliente.AsString) + ' - ' + trim(Fornecedoresraz_social_reduz.AsString) + ' ANO: ' + t;
      end else
      if (dbcClientes.Value <> '0') and
         (dbcFornecedores.Value = '0') then
      begin
        s := 'PAGAMENTOS EFETUADOS POR FATURAS: TODOS OS FORNECEDORES DO CLIENTE ' + trim(Clientescod_cliente.AsString) + ' ANO: ' + t;
      end else
      if (dbcClientes.Value = '0') and
         (dbcFornecedores.Value <> '0') then
      begin
        s := 'PAGAMENTOS EFETUADOS POR FATURAS: TODOS OS CLIENTE DO FORNECEDOR ' + trim(Fornecedoresraz_social_reduz.AsString) + ' ANO: ' + t;
      end else
      if (dbcClientes.Value = '0') and
         (dbcFornecedores.Value = '0') then
      begin
        s := 'PAGAMENTOS EFETUADOS POR FATURAS: TODOS OS CLIENTES TODOS OS FORNECEDORES' + ' ANO: ' + t;
      end;

      Value := s;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    Inc(Linha);

    { Header2 }
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'B' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 4;
      Value := 'FATURAS';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['C' + IntToStr(Linha),'D' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 6;
      Value := 'PEDIDOS';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['E' + IntToStr(Linha),'G' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 35;
      Value := 'PAGAMENTOS ADIANTADOS';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['H' + IntToStr(Linha),'I' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 50;
      Value := 'PENDENTE DE PAGAMENTO';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['J' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 35;
      Value := 'PAGAMENTOS NA FATURA';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 4;
      Value := 'SALDO';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      Font.Bold := True;
      Rows.RowHeight := 27.00;
    end;
    Inc(Linha);

    { Faturas }
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
    begin
      Value := 'FATURA / LOTE / DATA EMISSÃO';
      ColumnWidth := 42.00;
      Interior.ColorIndex := 4;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
    begin
      Value := 'TOTAL FATURA';
      ColumnWidth := 8.29;
      Interior.ColorIndex := 4;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;


    { Pedidos }
    with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
    begin
      Value := 'PEDIDO / CONFIRMAÇÃO / DATA';
      ColumnWidth := 42.00;
      Interior.ColorIndex := 6;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
    begin
      Value := 'TOTAL EMBARCADO';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 6;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    { Pagamentos Adiantados }
    with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Value := 'PEDIDO';
      ColumnWidth := 8.00;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
    begin
      Value := 'DATA';
      ColumnWidth := 8.00;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
    begin
      Value := 'VALOR';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    { Pendentes de Pagamento }
    with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
    begin
      Value := 'PEDIDO';
      ColumnWidth := 13.86;
      Interior.ColorIndex := 50;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
    begin
      Value := 'VALOR';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 50;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    { Pagamentos na Fatura }
    with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
    begin
      Value := 'PEDIDO';
      ColumnWidth := 13.86;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
    begin
      Value := 'DATA';
      ColumnWidth := 8.00;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Value := 'VALOR';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    { Saldo }
    with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
    begin
      Value := 'SALDO';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 4;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
      Rows.RowHeight := 27.00;
    end;

    { Bordas no cabeçalho }
    with ExcelWorkSheet.Range['A1', 'M'+IntToStr(Linha)] do
    begin
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
      with Borders[xlInsideVertical] do
      begin
         LineStyle := xlContinuous;
         Weight := xlMedium;
         ColorIndex := xlAutomatic;
      end;
      with Borders[xlInsideHorizontal] do
      begin
         LineStyle := xlContinuous;
         Weight := xlMedium;
         ColorIndex := xlAutomatic;
      end;
      Font.Size := 8;
      VerticalAlignment := xlCenter;
      WrapText := True;
    end;

    Inc(Linha);
end;

procedure TfrmPagamentosFaturas.GravarLinhaFaturas;
Var
  xlCorBloco : integer;
  fFatura : boolean;
  fEsp : boolean;
begin
  fFatura := True;

  while Not(Faturas.Eof) do
  begin

    fEsp := Faturasies_preco_esp.AsString = 'S';

    if (fFatura) then xlCorBloco := 35 else xlCorBloco := 36;
    fFatura := Not(fFatura);

    { A - Fatura/Lote/Data Emissão }
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
    begin
      Value := trim(Faturasnum_fatura.AsString) + ' / ' + trim(Faturasnum_ref_volume.AsString) + ' - '
               + FormatDateTime('DD.MM.YY', Faturasdat_emissao.AsDateTime);
      Font.Size := 8;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
    end;
    with ExcelWorksheet.Range['A' + IntToStr(Linha+1),'A' + IntToStr(Linha+1)] do
    begin
      Value := trim(Faturascod_cliente.AsString) + ' / ' + trim(Faturasraz_social_reduz.AsString);
      Font.Size := 8;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
    end;
    { B - Total fatura }
    with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
    begin
      if fEsp then Value := Faturasvlr_liquido_esp.AsFloat
              else Value := Faturasvlr_liquido.AsFloat;
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;

    LinFat := Linha;

    { Pedidos da Fatura }
    with spr_saldo_confirmacao do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_nota_fiscal').AsInteger := Faturasnum_nota_fiscal.AsInteger;
      ParamByName('serie').AsString := Faturasserie.AsString;
      Open;

      while Not(EOF) do
      begin
        { C - Pedido/Confirmação/Data }
        with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
        begin
          Value := trim(FieldByName('num_pedido_cli').AsString) + ' / ' + trim(FieldByName('num_pedido_for').AsString) + ' - ' + FormatDateTime('DD.MM.YY', FieldByName('dat_liberacao').AsDateTime);
          Font.Size := 8;
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlTop;
        end;
        { D - Total Embarcado }
        with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
        begin
          if fEsp then Value := FieldByName('vlr_faturado_esp').AsFloat
                  else Value := FieldByName('vlr_faturado').AsFloat;
          Font.Size := 8;
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlTop;
          NumberFormat := '#.##0,00';
        end;
        { H - Pedido }
        with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
        begin
          Value := trim(FieldByName('num_pedido_cli').AsString);
          Font.Size := 8;
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlTop;
          NumberFormat := '#.##0,00';
        end;
        { I - Valor Pendente }
        with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
        begin
          if fEsp then Value := FieldByName('vlr_saldo_fat_esp').AsFloat
                  else Value := FieldByName('vlr_saldo_fat').AsFloat;;
          Font.Size := 8;
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlTop;
          NumberFormat := '#.##0,00';
        end;

        LinPed := Linha;

        with spr_fatura_pedido_ptgadiantado do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_nota_fiscal').AsInteger := Faturasnum_nota_fiscal.AsInteger;
          ParamByName('num_pedido').Value := spr_saldo_confirmacaonum_pedido.AsLargeInt;
          Open;

          { Inicializar colunas com valores default PEDIDO e VALOR = 0,00 }

          { E - Pedido }
          with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
          begin
             Value := trim(spr_saldo_confirmacaonum_pedido_cli.AsString);
             Font.Size := 8;
             HorizontalAlignment := xlLeft;
             VerticalAlignment := xlTop;
          end;
          { G - Valor = 0,00 }
          with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
          begin
             Value := 0.00;
             Font.Size := 8;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlTop;
             NumberFormat := '#.##0,00';
          end;

          while Not(EOF) do
          begin
            { E - Pedido }
            with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
            begin
               Value := trim(spr_saldo_confirmacaonum_pedido_cli.AsString);
               Font.Size := 8;
               HorizontalAlignment := xlLeft;
               VerticalAlignment := xlTop;
            end;
            { F - Data Pagamento Adiantado }
            with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
            begin
               Value := FormatDateTime('DD.MM.YY', spr_fatura_pedido_ptgadiantadodat_pagamento.AsDateTime);
               Font.Size := 8;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlTop;
            end;
            { G - Valor Pagamento Adiantado }
            with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
            begin
               if fEsp then Value := spr_fatura_pedido_ptgadiantadovlr_pagamento_esp.AsFloat
                       else Value := spr_fatura_pedido_ptgadiantadovlr_pagamento.AsFloat;
               Font.Size := 8;
               HorizontalAlignment := xlRight;
               VerticalAlignment := xlTop;
               NumberFormat := '#.##0,00';
            end;
            Next;
            if Not(EOF) then Inc(Linha);
          end;
          LinPgtAd := Linha;
        end;

        Linha := LinPed;

        { Pagamentos da Fatura }
        with fatura_pagamento do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_nota_fiscal').AsInteger := Faturasnum_nota_fiscal.AsInteger;
          ParamByName('serie').AsString := Faturasserie.AsString;
          ParamByName('num_pedido').Value := spr_saldo_confirmacaonum_pedido.AsLargeInt;
          Open;

          { Inicializar colunas com valores default PEDIDO e VALOR = 0,00 }

          { J - Pedido }
          with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
          begin
             Value := trim(spr_saldo_confirmacaonum_pedido_cli.AsString);
             Font.Size := 8;
             HorizontalAlignment := xlLeft;
             VerticalAlignment := xlTop;
          end;
          { L - Valor = 0,00 }
          with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
          begin
             Value := 0.00;
             Font.Size := 8;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlTop;
             NumberFormat := '#.##0,00';
          end;

          while Not(EOF) do
          begin
            { K - Data do Pagamento }
            with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
            begin
              Value := FormatDateTime('DD.MM.YY', FieldByName('dat_pagamento').AsDateTime);
              Font.Size := 8;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlTop;
            end;
            { L - Valor Pagamento }
            with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
            begin
              if fEsp then Value := FieldByName('vlr_pagamento_esp').AsFloat
                           else Value := FieldByName('vlr_pagamento').AsFloat;
              Font.Size := 8;
              HorizontalAlignment := xlRight;
              VerticalAlignment := xlTop;
              NumberFormat := '#.##0,00';
            end;
            Next;
            if Not(EOF) then Inc(Linha);
          end;
          LinPgtEf := Linha; { última linha das colunas de pagamentos }
        end;

        Next;
        if Not(EOF) then Inc(Linha);
      end;
      Linha := LinPed; { última linha dos Pedidos }
    end;


    Faturas.Next;

    { Atribuir à Linha, a última linha do bloco maior de colunas }
    Linha := MaxIntValue([LinFat, LinPed, LinPgtAd, LinPgtEf]);

    inc(linha);

    { TOTAIS }
    { D - Total Embarcado }
    with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(D'+IntTostr(LinFat)+':D'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { G - Pagamento Adiantado }
    with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(G'+IntTostr(LinFat)+':G'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { I - Pendente de Pagamento }
    with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(I'+IntTostr(LinFat)+':I'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { L - Pagamentos na Fatura }
    with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(L'+IntTostr(LinFat)+':L'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { M - SALDO }
    with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
    begin
      FormulaR1C1 := '=RC[-9]-RC[-6]-RC[-1]';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00;"0,00"';  // mostrar zero caso saldo seja credor 
    end;

    with ExcelWorkSheet.Range['A'+IntToStr(LinFat), 'M'+IntToStr(Linha)] do
    begin
      with Borders[xlInsideVertical] do
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
      with Borders[xlEdgeTop] do
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
      Interior.ColorIndex := xlCorBloco;
    end;

    with ExcelWorkSheet.Range['B'+IntToStr(Linha), 'M'+IntToStr(Linha)] do
    begin
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
      with Borders[xlEdgeTop] do
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

    Inc(Linha);
  end;
end;

procedure TfrmPagamentosFaturas.actGerarExecute(Sender: TObject);
Var
  Plan : String;
begin
  { Gerar planilha com Pagamentos Efetuados nos Pedidos e Faturas }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  { Pasta onde será gravada a planilha de Pagamentos }
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
  if (dbcClientes.Value <> '0') then
     DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(clientescod_cliente.AsString);
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\PAYMENTS';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnGerar.Enabled := False;
  Application.ProcessMessages;


  { Nome da Planilha = Código do Cliente + Plan Fornecedor Reduzido }
  if (dbcClientes.Value <> '0') and (dbcFornecedores.Value <> '0') then
     Plan := trim(Clientescod_cliente.AsString) + '-' + trim(Fornecedoresraz_social_reduz.AsString)
  else if (dbcClientes.Value <> '0') and (dbcFornecedores.Value = '0') then
     Plan := ' TODOS FORNECEDORES DO CLIENTE-' + trim(Clientescod_cliente.AsString)
  else if (dbcClientes.Value = '0') and (dbcFornecedores.Value <> '0') then
     Plan := ' TODOS CLIENTES DO FORNECEDOR-' + trim(Fornecedoresraz_social_reduz.AsString)
  else if (dbcClientes.Value = '0') and (dbcFornecedores.Value = '0') then
     Plan := ' TODOS OS CLIENTES TODOS OS FORNECEDORES';

  Plan := StringReplace(Plan, '/', '-', [rfReplaceAll]);
  Plan := StringReplace(Plan, '\', '-', [rfReplaceAll]);
  FileName := DIR_PLANILHAS + '\' + trim(Plan) + '-PAYMENTS INVOICES-';

  { acrescentar o Ano escolhido ao nome da planilha }
  if (seAno.Text <> '') then FileName := FileName + 'YEAR ' + seAno.Text + '.xls'
                        else FileName := FileName + 'ALL YEARS.xls';

  { Criar a planilha em branco }
  parametro_comercialmod_plan_excel.SaveToFile(FileName);
  AbrirExcel(FileName);

  { Pagamentos das Faturas }
  Linha := 1;
  LinFat := 0;
  LinPed := 0;
  LinPgtAd := 0;
  LinPgtEf := 0;
  { Selecionar Faturas }
  AbrirFaturas;
  { Cabeçalho da planilha }
  HeaderExcelFaturas;
  { Ler Faturas e enviar para Excel }
  GravarLinhaFaturas;

  { congelar painéis }
  ExcelWorkSheet.Range['C4','C4'].Select;
  ExcelApplication.ActiveWindow.FreezePanes := True;
  { Salvar Planilha Gerada e Fechar o Excel }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  FecharExcel;
  btnAbrir.Enabled := True;
  Screen.Cursor := crDefault;

  { finalizar progress bar }
  btnGerar.Enabled := True;
  Ani.Terminate;
  AbrirPlanilha(FileName);
end;

procedure TfrmPagamentosFaturas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Parametro_Comercial.Close;

  Action := caFree;
  frmPagamentosFaturas := nil;
end;

procedure TfrmPagamentosFaturas.FormCreate(Sender: TObject);
begin
  with Clientes do
  begin
    ParamByName('login').Value := vgLogin;
    Open;
  end;
  with Fornecedores do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('login').Value := vgLogin;
    Open;
  end;

  seAno.Value :=  YearOf(Buscar_DateTime);
end;

procedure TfrmPagamentosFaturas.dbcClientesChange(Sender: TObject);
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
     end else
     begin
        SQL.Add('  and a."cod_cliente" in (select "cod_cliente"');
        SQL.Add('                            from "usuario_cliente"');
        SQL.Add('                           where "login" = :login)');
        ParamByName('login').Value := vgLogin;
     end;

     SQL.Add('   and b."cod_empresa" = a."cod_empresa"                  ');
     SQL.Add('   and b."num_pedido"  = a."num_pedido"                   ');
     SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"            ');
     SQL.Add('group by 1,2                                              ');
     SQL.Add('order by 2                                                ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;

     Open;
   end;
end;

procedure TfrmPagamentosFaturas.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);
end;

end.
