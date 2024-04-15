unit SigIMP01_092;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Excel2000,
  OleServer, Spin, DateUtils, AniThread;

type
  Tfr_PedidosRegistradosResumo = class(TForm)
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
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialies_modelo: TIntegerField;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    parametro_comercialdir_planilhas: TIBStringField;
    Label3: TLabel;
    seAno: TSpinEdit;
    panGauge: TPanel;
    Clientescod_cliente: TIBStringField;
    Fornecedorescod_fornecedor: TIntegerField;
    Fornecedoresraz_social_reduz: TIBStringField;
    parametro_comercialmod_plan_resumo_pedidos: TBlobField;
    Pedidoscod_empresa: TSmallintField;
    Pedidosnum_pedido: TLargeintField;
    Pedidoscod_cliente: TIBStringField;
    Pedidosdat_emissao: TDateTimeField;
    Pedidosdat_entrega: TDateField;
    Pedidosdat_cadastro: TDateTimeField;
    Pedidosdat_liberacao: TDateField;
    Pedidoscor_embarque: TSmallintField;
    Pedidoscod_cond_venda: TIntegerField;
    Pedidoscod_porto_emb: TIntegerField;
    Pedidoscod_porto_des: TIntegerField;
    Pedidosdat_embalagem: TDateField;
    Pedidosdat_ctn_marks: TDateField;
    Pedidospes_bruto: TIBBCDField;
    Pedidosvol_total: TIBBCDField;
    Pedidosterms_payment: TIBStringField;
    Pedidostxt_observacao: TMemoField;
    Pedidosvlr_bruto: TIBBCDField;
    Pedidosvlr_liquido: TIBBCDField;
    Pedidosvlr_bruto_esp: TIBBCDField;
    Pedidosvlr_liquido_esp: TIBBCDField;
    Pedidosnum_pedido_cli: TIBStringField;
    Pedidosnum_pedido_for: TIBStringField;
    Pedidoscod_fornecedor: TIntegerField;
    Pedidosraz_social_reduz: TIBStringField;
    Pedidosdat_vertratadm: TDateField;
    Pedidosies_li: TIBStringField;
    Pedidosdat_verli: TDateField;
    Pedidosies_preco_esp: TIBStringField;
    Pedidosgrupo: TStringField;
    Grupos: TIBQuery;
    cby_pedido_pendentes: TIBQuery;
    CondicaoVenda: TIBQuery;
    Portos: TIBQuery;
    Pedidosden_tip_condicao: TStringField;
    Pedidosporto_emb: TStringField;
    Pedidosporto_dest: TStringField;
    PedidoscalVlrPendente: TFloatField;
    PedidoscalVlrFaturado: TFloatField;
    PedidoscalVlrFaturadoEsp: TFloatField;
    PedidoscalPesBruto: TFloatField;
    PedidoscalVolTotal: TFloatField;
    PedidoscalVlrPendenteEsp: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure AbrirExcel(Caminho: String);
    Procedure AbrirPlanilha(FileName: String);
    procedure FecharExcel;
    procedure FornecedoresBeforeOpen(DataSet: TDataSet);
    procedure ClientesBeforeOpen(DataSet: TDataSet);
    procedure dbcFornecedoresChange(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure PrintPedidos(Var pLinha: Integer);
    procedure PrintPedidosTotais(Linha: integer);
    procedure seAnoChange(Sender: TObject);
    function GetCondicaoVenda(Cod: integer): string;
    function GetDenPorto(Cod: integer): String;
    procedure PedidosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_PedidosRegistradosResumo: Tfr_PedidosRegistradosResumo;
  FileName : String;
  DIR_PLANILHAS : String;

implementation

uses unConnection, unMenuCompl, Math, SIGIMP01_045;

{$R *.dfm}

procedure Tfr_PedidosRegistradosResumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Pedidos.Close;
  Parametro_Comercial.Close;

  Action := caFree;
  fr_PedidosRegistradosResumo := nil;
end;

procedure Tfr_PedidosRegistradosResumo.FormCreate(Sender: TObject);
begin
  seAno.Value :=  YearOf(Buscar_DateTime);
  Clientes.Open;
  Fornecedores.Open;
end;

procedure Tfr_PedidosRegistradosResumo.dbcClientesChange(Sender: TObject);
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

procedure Tfr_PedidosRegistradosResumo.actGerarExecute(Sender: TObject);
Var
  Linha : Integer;
begin
  { Gerar Excel com Lista Resumida de Pedidos }

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

  DIR_PLANILHAS := DIR_PLANILHAS + '\ORDERS - SUMMARY';
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
  FileName := DIR_PLANILHAS + '\' + trim(FileName) + '-ORDERS SUMMARY-';
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
  parametro_comercialmod_plan_resumo_pedidos.SaveToFile(FileName);
  AbrirExcel(FileName);

  { Gerar dados para a Shipment Products }
  Screen.Cursor := crHourGlass;

  { Imprimir Pedidos }
  Linha := 4;

  PrintPedidos(Linha);
  PrintPedidosTotais(Linha);

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

procedure Tfr_PedidosRegistradosResumo.PrintPedidosTotais(Linha: integer);
begin
  { Total dos Pedidos  }
  inc (linha);

  with ExcelWorksheet.Range['A'+ inttostr(linha),'B'+inttostr(linha)] do
  begin
    Value := 'TOTAL: ';
    HorizontalAlignment := xlRight;
    VerticalAlignment := xlCenter;
    MergeCells := True;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
  end;
  { R - TOTAL REAL BRUTO }
  with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(R4:R'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { S - TOTAL REAL LIQUIDO }
  with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(S4:S'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { T - PESO BRUTO }
  with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(T4:T'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { U - VOLUME TOTAL }
  with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(U4:U'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { V - PENDENTE DE EMBARQUE - TOTAL REAL  }
  with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(V4:V'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { W - PENDENTE DE EMBARQUE - TOTAL ESPECIAL }
  with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(W4:W'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { X - PENDENTE DE EMBARQUE - TOTAL PESO BRUTO }
  with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(X4:X'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;
  { Y - PENDENTE DE EMBARQUE - TOTAL VOLUME }
  with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(Y4:Y'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
    Font.Bold := False;
    Font.Size := 8;
    Font.ColorIndex := 0;
    HorizontalAlignment := xlRight;
  end;

  {bordas na região dos totais }
  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'Y' + IntToStr(Linha)] do
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
   Interior.ColorIndex := 40;
   Font.ColorIndex := 0;
   RowHeight := 12;
  end;
end;

procedure Tfr_PedidosRegistradosResumo.PrintPedidos(Var pLinha: Integer);
Var
  Linha, LinhaAnt: Integer;
begin
  { Incluir os Pedidos na Planilha Excel }
  Linha := pLinha;

  { Pedidos }
  with Pedidos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select                                                                                       ');
    SQL.Add('        a."cod_empresa",                                                                     ');
    SQL.Add('        a."num_pedido",                                                                      ');
    SQL.Add('        a."cod_cliente",                                                                     ');
    SQL.Add('        a."dat_emissao",                                                                     ');
    SQL.Add('        a."dat_entrega",                                                                     ');
    SQL.Add('        a."dat_cadastro",                                                                    ');
    SQL.Add('        a."dat_liberacao",                                                                   ');
    SQL.Add('        a."cor_embarque",                                                                    ');
    SQL.Add('        b."cod_cond_venda",                                                                  ');
    SQL.Add('        b."cod_porto_emb",                                                                   ');
    SQL.Add('        b."cod_porto_des",                                                                   ');
    SQL.Add('        a."dat_embalagem",                                                                   ');
    SQL.Add('        a."dat_ctn_marks",                                                                   ');
    SQL.Add('        b."pes_bruto", b."vol_total", a."terms_payment",  a."txt_observacao",                ');
    SQL.Add('        a."vlr_bruto", a."vlr_liquido", a."vlr_bruto_esp", a."vlr_liquido_esp",              ');
    SQL.Add('        b."num_pedido_cli", b."num_pedido_for", b."cod_fornecedor", c."raz_social_reduz",    ');
    SQL.Add('        a."dat_vertratadm", a."ies_li", a."dat_verli", a."ies_preco_esp"                     ');
    SQL.Add(' from "pedido" a, "pedido_complemento" b, "fornecedor" c                                     ');
    SQL.Add(' where                                                                                       ');
    SQL.Add('       a."cod_empresa" = :cod_empresa                                                        ');

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

    SQL.Add('  and substr(a."dat_emissao", 1,4) = :ano');

    SQL.Add('  and b."cod_empresa" = a."cod_empresa"                                                      ');
    SQL.Add('  and b."num_pedido" = a."num_pedido"                                                        ');
    SQL.Add('  and c."cod_fornecedor" = b."cod_fornecedor"                                                ');
    SQL.Add('order by a."dat_emissao" descending                                                          ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('ano').AsString          := seAno.Text;
    Open;

    if (IsEmpty) then Exit; // sair se não existir pedidos

    LinhaAnt := Linha;

    { ler Pedidos }
    while Not(EOF) do
    begin
        { A - CLIENTE }
        with ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)] do
        begin
          Value := trim(FieldByName('cod_cliente').AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { B - FORNECEDOR }
        with ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)] do
        begin
          Value := trim(FieldByName('raz_social_reduz').AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { C - ORDER }
        with ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)] do
        begin
          Value := trim(FieldByName('num_pedido_cli').AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { D - DATA DE EMISSÃO }
        with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_emissao').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_emissao').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { E - PROFORMA }
        with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
        begin
          Value := trim(FieldByName('num_pedido_for').AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { F - DATA DE CONFIRMAÇÃO }
        with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_liberacao').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_liberacao').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { G - PREVISÃO DE PRONTIDÃO }
        with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_entrega').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_entrega').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { H - TRATAMENTO ADMINISTRATIVO }
        with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_vertratadm').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_vertratadm').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { I - LICENÇA IMPORTAÇÃO }
        with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
        begin
          Value := FieldByName('ies_li').AsString;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { J - VENCIMENTO LI }
        with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_verli').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_verli').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { K - CARTON MARKS }
        with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_ctn_marks').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_ctn_marks').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { L - DATA EMBALAGEM }
        with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_embalagem').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_embalagem').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { M - TIPO DE PRODUTOS }
        with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
        begin
          Value := trim(Pedidosgrupo.AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { N - CONDIÇÃO }
        with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
        begin
          Value := trim(Pedidosterms_payment.AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { O - INCOTERM }
        with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
        begin
          Value := trim(Pedidosden_tip_condicao.AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { P - PORTO EMBARQUE }
        with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
        begin
          Value := trim(Pedidosporto_emb.AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { Q - PORTO DESTINO }
        with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
        begin
          Value := trim(Pedidosporto_dest.AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { R - TOTAL REAL BRUTO }
        with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
        begin
          Value := Pedidosvlr_bruto.AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 6;
        end;
        { S - TOTAL LIQUIDO ESP }
        with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
        begin
          Value := Pedidosvlr_liquido_esp.AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 7;
        end;
        { T - PESO BRUTO }
        with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
        begin
          Value := Pedidospes_bruto.AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { U - VOLUME TOTAL }
        with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
        begin
          Value := Pedidosvol_total.AsFloat;
          NumberFormat := '##0,000';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { V - PENDENTE TOTAL REAL }
        with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
        begin
          Value := PedidoscalVlrPendente.AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 6;
        end;
        { W - PENDENTE TOTAL ESPECIAL }
        with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
        begin
          Value := PedidoscalVlrPendenteEsp.AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 7;
        end;
        { X - PESO BRUTO }
        with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
        begin
          Value := PedidoscalPesBruto.AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { Y - VOLUME }
        with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
        begin
          Value := PedidoscalVolTotal.AsFloat;
          NumberFormat := '##0,000';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;          
        end;
        Inc (Linha);
        Next;
    end; { Fim ler Pedidos }

  end;

   {bordas desde o cabeçalho até ultima linha}
   with ExcelWorkSheet.Range['A'+IntToStr(LinhaAnt),'Y' + IntToStr(Linha)] do
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
   pLinha := Linha;
end;


procedure Tfr_PedidosRegistradosResumo.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);
end;

procedure Tfr_PedidosRegistradosResumo.AbrirExcel(Caminho: String);
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


Procedure Tfr_PedidosRegistradosResumo.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;

Procedure Tfr_PedidosRegistradosResumo.AbrirPlanilha(FileName: String);
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

procedure Tfr_PedidosRegistradosResumo.FornecedoresBeforeOpen(
  DataSet: TDataSet);
begin
   Fornecedores.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_PedidosRegistradosResumo.ClientesBeforeOpen(DataSet: TDataSet);
begin
  Clientes.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_PedidosRegistradosResumo.dbcFornecedoresChange(Sender: TObject);
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

procedure Tfr_PedidosRegistradosResumo.seAnoChange(Sender: TObject);
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

function Tfr_PedidosRegistradosResumo.GetCondicaoVenda(Cod: integer): string;
begin
  With CondicaoVenda do
  begin
    Close;
    ParamByName('cod_tip_condicao').Value := Cod;
    Open;
    Result := trim(FieldByName('den_tip_condicao').AsString);
    Close;
  end;
end;

function Tfr_PedidosRegistradosResumo.GetDenPorto(Cod: integer): String;
begin
  With Portos do
  begin
    Close;
    ParamByName('cod_porto').Value := Cod;
    Open;
    Result := trim(FieldByName('den_porto').AsString);
    Close;
  end;
end;


procedure Tfr_PedidosRegistradosResumo.PedidosCalcFields(
  DataSet: TDataSet);
Var
   s : String;
begin
  if Pedidosnum_pedido.IsNull then Exit;

  { obter o saldo pendente do pedido }
  with cby_pedido_pendentes do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').AsFloat := DataSet.FieldByName('num_pedido').Value;
    Open;
    DataSet.FieldByName('calVlrPendente').AsFloat := FieldByName('vlr_total').AsFloat;
    DataSet.FieldByName('calVlrPendenteEsp').AsFloat := FieldByName('vlr_total_esp').AsFloat;
    DataSet.FieldByName('calPesBruto').AsFloat := FieldByName('pes_bruto').AsFloat;
    DataSet.FieldByName('calVolTotal').AsFloat := FieldByName('volume').AsFloat;
  end;

  { Grupos de Produtos }
  s := '';
  with Grupos do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').AsFloat := Pedidosnum_pedido.AsLargeInt;
    Open;
    while Not(EOF) do
    begin
      s := s + trim(FieldByName('den_tip_produto').AsString);
      Next;
      if Not(EOF) then s := s + ', ';
    end;
    if trim(s) <> '' then
       s := s + '.';
    Close;
  end;
  DataSet.FieldByName('grupo').AsString := s;

  { Condição de Venda }
  DataSet.FieldByName('den_tip_condicao').AsString := GetCondicaoVenda(DataSet.FieldByName('cod_cond_venda').AsInteger);

  { Porto Embarque }
  DataSet.FieldByName('porto_emb').AsString := GetDenPorto(DataSet.FieldByName('cod_porto_emb').AsInteger);
  { Porto Destino }
  DataSet.FieldByName('porto_dest').AsString := GetDenPorto(DataSet.FieldByName('cod_porto_des').AsInteger);
end;

end.
