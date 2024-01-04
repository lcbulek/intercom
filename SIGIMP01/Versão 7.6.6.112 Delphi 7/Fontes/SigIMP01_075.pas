unit SigIMP01_075;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Excel2000, OleServer, ActnList, StdCtrls, Buttons, ExtCtrls,
  JvExControls, JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Spin, AniThread, DateUtils,
  IBStoredProc;

type
  TfrmPagamentosPedidos = class(TForm)
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
    Pedidos: TIBQuery;
    pedido_pagamento_ad: TIBQuery;
    Label3: TLabel;
    seAno: TSpinEdit;
    pedido_adic_desc: TIBQuery;
    pedido_adic_desccod_empresa: TSmallintField;
    pedido_adic_descnum_pedido: TLargeintField;
    pedido_adic_descnum_sequencia: TSmallintField;
    pedido_adic_descies_tipo: TIBStringField;
    pedido_adic_descvlr_adic_desc: TIBBCDField;
    pedido_adic_descvlr_adic_desc_esp: TIBBCDField;
    pedido_adic_desctxt_descricao: TMemoField;
    pedido_adic_descnum_nota_fiscal: TIntegerField;
    pedido_adic_descserie: TIBStringField;
    pedido_adic_descies_faturado: TIBStringField;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialies_modelo: TIntegerField;
    parametro_comercialdir_planilhas: TIBStringField;
    parametro_comercialdias_inspecao: TSmallintField;
    parametro_comercialmod_plan_excel: TBlobField;
    Pedidoscod_empresa: TSmallintField;
    Pedidosnum_pedido: TLargeintField;
    Pedidosnum_pedido_cli: TIBStringField;
    Pedidosnum_pedido_for: TIBStringField;
    Pedidosdat_pedido: TDateField;
    Pedidosden_tip_condicao: TIBStringField;
    Pedidosvlr_liquido: TIBBCDField;
    Pedidosvlr_liquido_esp: TIBBCDField;
    cby_pedido_faturados: TIBQuery;
    spr_faturas_pedido: TIBQuery;
    spr_faturas_pedidonum_nota_fiscal: TIntegerField;
    spr_faturas_pedidoserie: TIBStringField;
    spr_faturas_pedidodat_emissao: TDateTimeField;
    spr_faturas_pedidonum_fatura: TIBStringField;
    spr_faturas_pedidonum_ref_volume: TIBStringField;
    spr_faturas_pedidonum_romaneio: TIntegerField;
    spr_faturas_pedidovlr_total: TIBBCDField;
    spr_faturas_pedidovlr_total_esp: TIBBCDField;
    spr_faturas_pedidovolume: TIBBCDField;
    spr_faturas_pedidoqtd_caixas: TIntegerField;
    spr_faturas_pedidopes_liquido: TIBBCDField;
    spr_faturas_pedidopes_bruto: TIBBCDField;
    Pedidoscod_cliente: TIBStringField;
    Pedidosraz_social_reduz: TIBStringField;
    Label4: TLabel;
    cby_pedido_faturadosvlr_bruto: TIBBCDField;
    cby_pedido_faturadosvlr_adicional: TIBBCDField;
    cby_pedido_faturadosvlr_desconto: TIBBCDField;
    cby_pedido_faturadosvlr_liquido: TIBBCDField;
    cby_pedido_faturadosvlr_bruto_esp: TIBBCDField;
    cby_pedido_faturadosvlr_adicional_esp: TIBBCDField;
    cby_pedido_faturadosvlr_desconto_esp: TIBBCDField;
    cby_pedido_faturadosvlr_liquido_esp: TIBBCDField;
    cby_pedido_faturadosvlr_total_fat: TIBBCDField;
    cby_pedido_faturadosvlr_total_fat_esp: TIBBCDField;
    cby_pedido_faturadosvlr_total_pend: TIBBCDField;
    cby_pedido_faturadosvlr_total_pend_esp: TIBBCDField;
    cby_pedido_faturadosvlr_total_canc: TIBBCDField;
    cby_pedido_faturadosvlr_total_canc_esp: TIBBCDField;
    cby_pedido_faturadostot_pagamento_real: TIBBCDField;
    cby_pedido_faturadostot_pagamento_esp: TIBBCDField;
    cby_pedido_faturadossaldo_real: TIBBCDField;
    cby_pedido_faturadossaldo_esp: TIBBCDField;
    cby_pedido_faturadosvolume: TIBBCDField;
    cby_pedido_faturadosqtd_caixas: TIntegerField;
    cby_pedido_faturadospes_liquido: TIBBCDField;
    cby_pedido_faturadospes_bruto: TIBBCDField;
    Pedidosies_preco_esp: TIBStringField;
    spr_faturas_pedidopend_pag_real: TIBBCDField;
    spr_faturas_pedidopend_pag_esp: TIBBCDField;
    spr_faturas_pedidovlr_faturado: TIBBCDField;
    spr_faturas_pedidovlr_faturado_esp: TIBBCDField;
    spr_faturas_pedidovlr_saldo: TIBBCDField;
    spr_faturas_pedidovlr_saldo_esp: TIBBCDField;
    pedido_pagamento_ef: TIBQuery;
    pedido_pagamento_efcod_empresa: TSmallintField;
    pedido_pagamento_efnum_pedido: TLargeintField;
    pedido_pagamento_efnum_sequencia: TSmallintField;
    pedido_pagamento_efvlr_pagamento: TIBBCDField;
    pedido_pagamento_efdat_pagamento: TDateField;
    pedido_pagamento_eftxt_pagamento: TMemoField;
    pedido_pagamento_eftot_pagamentos: TIBBCDField;
    pedido_pagamento_efvlr_pagamento_esp: TIBBCDField;
    pedido_pagamento_eftot_pagamentos_esp: TIBBCDField;
    pedido_pagamento_efnum_seq_fatpag: TIntegerField;
    pedido_pagamento_efnum_nota_fiscal: TIntegerField;
    pedido_pagamento_efserie: TIBStringField;
    pedido_pagamento_efnum_fatura: TIBStringField;
    pedido_pagamento_adcod_empresa: TSmallintField;
    pedido_pagamento_adnum_pedido: TLargeintField;
    pedido_pagamento_adnum_sequencia: TSmallintField;
    pedido_pagamento_advlr_pagamento: TIBBCDField;
    pedido_pagamento_addat_pagamento: TDateField;
    pedido_pagamento_adtxt_pagamento: TMemoField;
    pedido_pagamento_adtot_pagamentos: TIBBCDField;
    pedido_pagamento_advlr_pagamento_esp: TIBBCDField;
    pedido_pagamento_adtot_pagamentos_esp: TIBBCDField;
    pedido_pagamento_adnum_seq_fatpag: TIntegerField;
    pedido_pagamento_adnum_nota_fiscal: TIntegerField;
    pedido_pagamento_adserie: TIBStringField;
    pedido_pagamento_adnum_fatura: TIBStringField;
    procedure AbrirExcel(Caminho: String; Show: boolean = False);
    procedure FecharExcel;
    Procedure AbrirPlanilha(FileName: String);

    procedure AbrirPedidos;
    procedure HeaderExcelPedidos;
    procedure GravarLinhaPedidos;

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
  frmPagamentosPedidos: TfrmPagamentosPedidos;
  FileName : String;
  DIR_PLANILHAS : String;
  Linha, LinPed, LinFat, LinPgtAd, LinPgtEf : Integer;

implementation

uses unConnection, unMenuCompl, SigIMP01_045, Math;

{$R *.dfm}


Procedure TfrmPagamentosPedidos.AbrirPlanilha(FileName: String);
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

procedure TfrmPagamentosPedidos.AbrirExcel(Caminho: String; Show: Boolean = False);
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

Procedure TfrmPagamentosPedidos.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;


procedure TfrmPagamentosPedidos.AbrirPedidos;
begin
  (* Selecionar os pedidos conforme os parâmetros indicados no form *)
  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select  a."cod_empresa", a."num_pedido", b."num_pedido_cli", b."num_pedido_for",  ');
    SQL.Add('        a."cod_cliente", c."raz_social_reduz",                                    ');
    SQL.Add('        case when a."ies_tip_pedido" = ''O'' then cast(a."dat_emissao"  as DATE)  ');
    SQL.Add('                                           else cast(a."dat_liberacao"  as DATE)  ');
    SQL.Add('        end "dat_pedido", d."den_tip_condicao",                                   ');
    SQL.Add('        a."vlr_liquido", a."vlr_liquido_esp", a."ies_preco_esp"                   ');
    SQL.Add(' from "pedido" a, "pedido_complemento" b                                          ');
    SQL.Add('      left join "condicao_venda" d                                                ');
    SQL.Add('      on d."cod_tip_condicao" = b."cod_cond_venda",                               ');
    SQL.Add('      "fornecedor" c                                                              ');
    SQL.Add(' where                                                                            ');
    SQL.Add('       a."cod_empresa" = :"cod_empresa"                                           ');

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

    SQL.Add('   and b."cod_empresa" = a."cod_empresa"                                              ');
    SQL.Add('   and b."num_pedido" = a."num_pedido"                                                ');
    SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"                                        ');

    if (dbcClientes.Value = '0') and
       (dbcFornecedores.Value <> '0') then
    begin
      SQL.Add(' order by 5, 7 descending ');
    end else
    if (dbcClientes.Value <> '0') and
       (dbcFornecedores.Value = '0') then
    begin
      SQL.Add(' order by 6, 7 descending ');
    end else
      SQL.Add(' order by 5,6, 7 descending ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
end;

procedure TfrmPagamentosPedidos.HeaderExcelPedidos;
Var
  s, t : String;

begin
    if (trim(seAno.Text) <> '') then t := seAno.Text
                                else t := ' TODOS';

    with ExcelWorksheet.Range['A' + IntToStr(Linha),'T' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 40;

      if (dbcClientes.Value <> '0') and
         (dbcFornecedores.Value <> '0') then
      begin
        s := 'PAGAMENTOS EFETUADOS POR PEDIDOS: ' + trim(Clientescod_cliente.AsString) + ' - ' + trim(Fornecedoresraz_social_reduz.AsString) + ' ANO: ' + t;
      end else
      if (dbcClientes.Value <> '0') and
         (dbcFornecedores.Value = '0') then
      begin
        s := 'PAGAMENTOS EFETUADOS POR PEDIDOS: TODOS OS FORNECEDORES DO CLIENTE ' + trim(Clientescod_cliente.AsString) + ' ANO: ' + t;
      end else
      if (dbcClientes.Value = '0') and
         (dbcFornecedores.Value <> '0') then
      begin
        s := 'PAGAMENTOS EFETUADOS POR PEDIDOS: TODOS OS CLIENTE DO FORNECEDOR ' + trim(Fornecedoresraz_social_reduz.AsString) + ' ANO: ' + t;
      end else
      if (dbcClientes.Value = '0') and
         (dbcFornecedores.Value = '0') then
      begin
        s := 'PAGAMENTOS EFETUADOS POR PEDIDOS: TODOS OS CLIENTES TODOS OS FORNECEDORES' + ' ANO: ' + t;
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

    with ExcelWorksheet.Range['A' + IntToStr(Linha),'H' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 40;
      Value := 'ORDERS/PEDIDOS';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['I' + IntToStr(Linha),'J' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 40;
      Value := 'ADVANCED PAYMENT ON ORDER  PAGAMENTOS ADIANTADOS NO PEDIDO';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['K' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 6;
      Value := 'INVOICES/FATURAS';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['M' + IntToStr(Linha),'N' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 35;
      Value := 'PENDING PAYMENTS ON INVOICES                      PAGAMENTOS PENDENTES NAS FATURAS';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['O' + IntToStr(Linha),'Q' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 35;
      Value := 'PAYMENTS EFFECTED  ON INVOICES PAGAMENTOS EFETUADOS NAS FATURAS';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['R' + IntToStr(Linha),'S' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 35;
      Value := 'SALDO A PAGAR NAS FATURAS          BALANCE PAYMENTS ON INVOICES';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
    end;

    with ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 40;
      Value := '';
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := True;
      Rows.RowHeight := 57.75
    end;

    Inc(Linha);

    { PEDIDOS }
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
    begin
      Value := 'ORDER                                              PEDIDO';
      ColumnWidth := 12.00;
      Interior.ColorIndex := 40;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
    begin
      Value := ' S/C DATE                                                  S/C DATA';
      ColumnWidth := 20.00;
      Interior.ColorIndex := 40;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
    begin
      Value := 'PRODUCTS TOTAL       TOTAL PRODUTOS';
      ColumnWidth :=10.43;
      Interior.ColorIndex := 40;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
    begin
      Value := 'CANCELLED CANCELADO';
      ColumnWidth := 9.71;;
      Interior.ColorIndex := 40;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Value := 'ADDITIONALS ADICIONAIS';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 40;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
    begin
      Value := 'DISCOUNTS  DESCONTOS';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 40;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
    begin
      Value := 'ADC/DESC PREÇOS ADD/DISC PRICES';
      ColumnWidth := 8.29;
      Interior.ColorIndex := 7;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
    begin
      Value := 'FINAL VALUE VALOR FINAL';
      ColumnWidth := 9.86;
      Interior.ColorIndex := 40;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    { PAGAMENTOS DO PEDIDO }
    with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
    begin
      Value := 'DATE  DATA';
      ColumnWidth := 6.29;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
    begin
      Value := 'VALUE        VALOR';
      ColumnWidth := 11.00;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    { FATURAS }
    with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
    begin
      Value := 'INVOICE DATE                                                DATA DA FATURA';
      ColumnWidth := 22.00;
      Interior.ColorIndex := 6;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Value := 'TOTAL VALUE  VALOR FATURADO';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 6;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
    begin
      Value := 'INVOICE NUMBER     NÚMERO DA FATURA';
      ColumnWidth := 13.30;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)] do
    begin
      Value := 'VALUE      VALOR';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)] do
    begin
      Value := 'INVOICE NUMBER     NÚMERO DA FATURA';
      ColumnWidth := 13.30;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)] do
    begin
      Value := 'DATE  DATA';
      ColumnWidth := 6.29;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)] do
    begin
      Value := 'VALUE        VALOR';
      ColumnWidth := 9.71;
      Interior.ColorIndex := 35;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
    end;

    { SALDO A PAGAR NAS FATURAS }
    with ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 35;
      Value := 'FATURA                  INVOICE';
      ColumnWidth := 14.00;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := False;
    end;

    with ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)] do
    begin
      Font.Size := 10;
      Interior.ColorIndex := 35;
      Value := 'SALDO BALANCE PAYMENTS';
      ColumnWidth := 9.71;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      ShrinkToFit := False;
      MergeCells := True;
      Font.Bold := False;
    end;


    with ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)] do
    begin
      Value := 'PENDING OF SHIPMENT                             PENDENTE DE EMBARQUE';
      ColumnWidth := 11.00;
      Interior.ColorIndex := 40;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlCenter;
      WrapText := True;
      Font.Bold := False;
      Rows.RowHeight := 57.00;
    end;

    { Bordas no cabeçalho }
    with ExcelWorkSheet.Range['A1', 'T'+IntToStr(Linha)] do
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

procedure TfrmPagamentosPedidos.GravarLinhaPedidos;
Var
  xlCorBloco : integer;
  fPedido : boolean;
  s : String;
  Fesp : boolean;
  Valor : double;
  PgtoPendFat, PgtoEfetFat,  SaldoPagtoFat : double;
begin
  { PEDIDOS }
  fPedido := True; { usado para alternar cores nos blocos das células dos pedidos }

  while Not(Pedidos.Eof) do
  begin

    with cby_pedido_faturados do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := Pedidoscod_empresa.AsInteger;
      ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
      Open;
    end;

    { indicar se Pedido tem Preços Especiais }
    fEsp := Pedidosies_preco_esp.AsString = 'S';

    if (fPedido) then xlCorBloco := 35 else xlCorBloco := 36;
    fPedido := Not(fPedido);

    { A - PEDIDO }
    with ExcelWorksheet.Range['A' + IntToStr(Linha),'A' + IntToStr(Linha)] do
    begin
      Value := trim(Pedidosnum_pedido_cli.AsString);
      Font.Size := 8;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlTop;
    end;
    { A+1 - CLIENTE }
    with ExcelWorksheet.Range['A' + IntToStr(Linha+1),'A' + IntToStr(Linha+1)] do
    begin
      Value := trim(Pedidoscod_cliente.AsString);
      Font.Size := 8;
      HorizontalAlignment := xlCenter;
      VerticalAlignment := xlTop;
    end;
    { B - CONFIRMAÇÃO + DATA }
    with ExcelWorksheet.Range['B' + IntToStr(Linha),'B' + IntToStr(Linha)] do
    begin
      Value := trim(Pedidosnum_pedido_for.AsString) + ' - ' + FormatDateTime('DD.MM.YY', Pedidosdat_pedido.AsDateTime);
      Font.Size := 8;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
    end;
    { B+1 - FORNECEDOR }
    with ExcelWorksheet.Range['B' + IntToStr(Linha+1),'B' + IntToStr(Linha+1)] do
    begin
      Value := trim(Pedidosraz_social_reduz.AsString);
      Font.Size := 8;
      HorizontalAlignment := xlLeft;
      VerticalAlignment := xlTop;
      WrapText := True;
    end;

    { PEDIDOS }

    { C - TOTAL PRODUTOS }
    with ExcelWorksheet.Range['C' + IntToStr(Linha),'C' + IntToStr(Linha)] do
    begin
      Value := cby_pedido_faturadosvlr_bruto.AsFloat;
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;

    { D - CANCELADO }
    with ExcelWorksheet.Range['D' + IntToStr(Linha),'D' + IntToStr(Linha)] do
    begin
      Value := cby_pedido_faturadosvlr_total_canc.AsFloat;
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;

    { E - ADICIONAIS }
    with ExcelWorksheet.Range['E' + IntToStr(Linha),'E' + IntToStr(Linha)] do
    begin
      Value := cby_pedido_faturadosvlr_adicional.AsFloat;
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;

    { F - DESCONTOS }
    with ExcelWorksheet.Range['F' + IntToStr(Linha),'F' + IntToStr(Linha)] do
    begin
      Value := cby_pedido_faturadosvlr_desconto.AsFloat;
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;

    { G - ADC/DESC PREÇOS }
    with ExcelWorksheet.Range['G' + IntToStr(Linha),'G' + IntToStr(Linha)] do
    begin
      Value := cby_pedido_faturadosvlr_bruto_esp.AsFloat - cby_pedido_faturadosvlr_bruto.AsFloat;
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '+#.##0,00;-#.##0,00';
    end;

    { H - VALOR FINAL }
    with ExcelWorksheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
    begin
      FormulaR1C1 := '=RC[-5]-RC[-4]+RC[-3]-RC[-2]+RC[-1]';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;

    { T - PENDENTE DE EMBARQUE }
    with ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)] do
    begin
      if fEsp then Value := cby_pedido_faturadosvlr_total_pend_esp.AsFloat
              else Value := cby_pedido_faturadosvlr_total_pend.AsFloat;
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;

    { PAGAMENTOS ADIANTADOS NO PEDIDO }

    LinPed := Linha; { Salvar Linha do Pedido }

    with pedido_pagamento_ad do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
      Open;
      while Not(EOF) do
      begin
        if (pedido_pagamento_adnum_nota_fiscal.IsNull) then
        begin
           { I - DATA }
           with ExcelWorksheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
           begin
             Value := FormatDateTime('DD.MM.YY', pedido_pagamento_addat_pagamento.AsDateTime);
             Font.Size := 8;
             HorizontalAlignment := xlCenter;
             VerticalAlignment := xlTop;
           end;
           { J - VALOR }
           with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
           begin
             if fEsp then Value := pedido_pagamento_advlr_pagamento_esp.AsFloat
                     else Value := pedido_pagamento_advlr_pagamento.AsFloat;
             Font.Size := 8;
             HorizontalAlignment := xlRight;
             VerticalAlignment := xlTop;
             NumberFormat := '#.##0,00';
           end;
        end;

        Next;
        if Not(EOF) then Inc(Linha);
      end;
      LinPgtAd := Linha; { última linha das colunas de pagamentos adiantados }
    end;

    { FATURAS DO PEDIDO }

    Linha := LinPed; { retornar à linha inicial dos pedidos }

    with spr_faturas_pedido do
    begin
      Close;
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
      Open;
      while Not(EOF) do
      begin
        { K - NUM FATURA + DATA EMISSÃO }
        with ExcelWorksheet.Range['K' + IntToStr(Linha),'K' + IntToStr(Linha)] do
        begin
          Value := trim(FieldByName('num_fatura').AsString) + ' - ' + FormatDateTime('DD.MM.YY', FieldByName('dat_emissao').AsDateTime);
          Font.Size := 8;
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlTop;
          WrapText := True;
        end;
        { L - VALOR FATURADO }
        with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
        begin
          if fEsp then Value := FieldByName('vlr_total_esp').AsFloat
                  else Value := FieldByName('vlr_total').AsFloat;
          Font.Size := 8;
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlTop;
          NumberFormat := '#.##0,00';
        end;
        {  PAGAMENTOS PENDENTES NAS FATURAS }

        if fEsp then Valor := FieldByName('vlr_saldo_esp').AsFloat
                else Valor := FieldByName('vlr_saldo').AsFloat;

        { M - NÚMERO DA FATURA }
        with ExcelWorksheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
        begin
          if Valor <= 0 then Value := trim(FieldByName('num_fatura').AsString)
          else if Valor > 0 then  Value := trim(FieldByName('num_fatura').AsString);
          Font.Size := 8;
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlTop;
          WrapText := True;
        end;
        { N - VALOR }
        with ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)] do
        begin
          if Valor < 0 then Value := Valor * -1 // mostrar apenas Saldo devedor
          else if Valor >= 0 then Value := 0.00;

          PgtoPendFat := 0.0;
          if Valor < 0 then PgtoPendFat := Valor * -1;

          Font.Size := 8;
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlTop;
          NumberFormat := '#.##0,00';
        end;

        PgtoEfetFat := 0.00;
        SaldoPagtoFat := 0.00;

        { PAGAMENTOS EFETUADOS NAS FATURAS }
        with pedido_pagamento_ef do
        begin
          Close;
          ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
          ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
          ParamByName('num_nota_fiscal').AsInteger := spr_faturas_pedidonum_nota_fiscal.AsInteger;
          Open;
          while Not(EOF) do
          begin
            { O - NÚMERO DA FATURA }
            with ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)] do
            begin
              Value := trim(pedido_pagamento_efnum_fatura.AsString);
              Font.Size := 8;
              HorizontalAlignment := xlLeft;
              VerticalAlignment := xlTop;
              WrapText := True;
            end;

            { P - DATA }
            with ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)] do
            begin
              Value := FormatDateTime('DD.MM.YY', pedido_pagamento_efdat_pagamento.AsDateTime);
              Font.Size := 8;
              HorizontalAlignment := xlCenter;
              VerticalAlignment := xlTop;
            end;

            { Q - VALOR }
            with ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)] do
            begin
              if fEsp then begin
                             Value := pedido_pagamento_efvlr_pagamento_esp.AsFloat;
                             PgtoEfetFat := PgtoEfetFat + pedido_pagamento_efvlr_pagamento_esp.AsFloat;
                           end
                      else begin
                             Value := pedido_pagamento_efvlr_pagamento.AsFloat;
                             PgtoEfetFat := PgtoEfetFat + pedido_pagamento_efvlr_pagamento.AsFloat;
                           end;
              Font.Size := 8;
              HorizontalAlignment := xlRight;
              VerticalAlignment := xlTop;
              NumberFormat := '#.##0,00';
            end;

            Next;
            if Not(EOF) then Inc(Linha);
          end;
          LinPgtEf := Linha; { última linha das colunas de pagamentos efetuados }
        end;

        SaldoPagtoFat := PgtoPendFat - PgtoEfetFat;

        { R - NÚMERO DA FATURA }
        with ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)] do
        begin
          if (SaldoPagtoFat >=0) then Value := trim(FieldByName('num_fatura').AsString);
          Font.Size := 8;
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlTop;
          WrapText := True;
        end;

        { S - SALDO PENDENTE NAS FATURAS }
        with ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)] do
        begin
          if (SaldoPagtoFat >=0) then Value := SaldoPagtoFat;
          Font.Size := 8;
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlTop;
          NumberFormat := '#.##0,00';
        end;

        Linha := LinPgtEf;

        Next;

        if Not(EOF) then Inc(Linha);
      end;
      LinFat := Linha; { última linha das Faturas }
    end;

    Linha := LinPed; { retornar à linha inicial dos pedidos }

    Pedidos.Next;

    { Atribuir à Linha, a última linha do bloco maior de colunas }
    Linha := MaxIntValue([LinFat, LinPgtAd, LinPgtEf]);

    //if not(Pedidos.Eof) then Inc(Linha);
    inc(linha);

    { TOTAIS DOS PEDIDOS, FATURAS E PAGAMENTOS }
    { J - PAGAMENTOS ADIANTADOS NO PEDIDO }
    with ExcelWorksheet.Range['J' + IntToStr(Linha),'J' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(J'+IntTostr(LinPed)+':J'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { L - VALOR FATURADO }
    with ExcelWorksheet.Range['L' + IntToStr(Linha),'L' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(L'+IntTostr(LinPed)+':L'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { N - PAGAMENTOS PENDENTES NA FATURA }
    with ExcelWorksheet.Range['N' + IntToStr(Linha),'N' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(N'+IntTostr(LinPed)+':N'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { Q - PAGAMENTOS EFETUADOS NAS FATURAS }
    with ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(Q'+IntTostr(LinPed)+':Q'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { S - SALDO PAGAMENTOS NAS FATURAS }
    with ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(S'+IntTostr(LinPed)+':S'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;
    { T - PENDENTE DE EMBARQUE }
    with ExcelWorksheet.Range['T' + IntToStr(Linha),'T' + IntToStr(Linha)] do
    begin
      Formula := '=SUM(T'+IntTostr(LinPed)+':T'+IntTostr(Linha-1)+')';
      Font.Size := 8;
      HorizontalAlignment := xlRight;
      VerticalAlignment := xlTop;
      NumberFormat := '#.##0,00';
    end;

    with ExcelWorkSheet.Range['A'+IntToStr(LinPed), 'T'+IntToStr(Linha)] do
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
    
    with ExcelWorkSheet.Range['B'+IntToStr(Linha), 'T'+IntToStr(Linha)] do
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

procedure TfrmPagamentosPedidos.actGerarExecute(Sender: TObject);
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

  FileName := DIR_PLANILHAS + '\' + trim(Plan) + '-PAYMENTS ORDERS-';

  { acrescentar o Ano escolhido ao nome da planilha }
  if (seAno.Text <> '') then FileName := FileName + 'YEAR ' + seAno.Text + '.xls'
                        else FileName := FileName + 'ALL YEARS.xls';

  { Criar a planilha em branco }
  parametro_comercialmod_plan_excel.SaveToFile(FileName);
  AbrirExcel(FileName);

  { Pagamentos nos Pedidos }
  Linha := 1;
  LinPed := 0;
  LinFat := 0;
  LinPgtAd := 0;
  LinPgtEf := 0;
  { Selecionar Pedidos }
  AbrirPedidos;
  { Cabeçalho da planilha }
  HeaderExcelPedidos;
  { Ler Pedidos e enviar para Excel }
  GravarLinhaPedidos;

  { congelar painéis }
  ExcelWorkSheet.Range['B4','B4'].Select;
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

procedure TfrmPagamentosPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Pedidos.Close;
  Parametro_Comercial.Close;

  Action := caFree;
  frmPagamentosPedidos := nil;
end;

procedure TfrmPagamentosPedidos.FormCreate(Sender: TObject);
begin
  with Clientes do
  begin
    Open;
  end;
  with Fornecedores do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    Open;
  end;

  seAno.Value :=  YearOf(Buscar_DateTime);
end;

procedure TfrmPagamentosPedidos.dbcClientesChange(Sender: TObject);
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

     SQL.Add('   and b."cod_empresa" = a."cod_empresa"                  ');
     SQL.Add('   and b."num_pedido"  = a."num_pedido"                   ');
     SQL.Add('   and c."cod_fornecedor" = b."cod_fornecedor"            ');
     SQL.Add('group by 1,2                                              ');
     SQL.Add('order by 2                                                ');
     ParamByName('cod_empresa').AsInteger := vgCod_Empresa;

     Open;
   end;
end;

procedure TfrmPagamentosPedidos.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);
end;

end.
