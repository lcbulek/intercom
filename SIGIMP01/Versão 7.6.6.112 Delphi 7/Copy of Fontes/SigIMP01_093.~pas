unit SigIMP01_093;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls,
  JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Excel2000,
  OleServer, Spin, DateUtils, AniThread;

type
  Tfr_FaturasRegistradasResumo = class(TForm)
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
    Faturas: TIBQuery;
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
    CondicaoVenda: TIBQuery;
    Portos: TIBQuery;
    parametro_comercialmod_plan_resumo_faturas: TBlobField;
    Faturascod_empresa: TSmallintField;
    Faturasnum_nota_fiscal: TIntegerField;
    Faturasserie: TIBStringField;
    Faturascod_cliente: TIBStringField;
    Faturasdat_emissao: TDateTimeField;
    Faturasdat_liquidacao: TDateField;
    Faturasdat_cadastro: TDateTimeField;
    Faturasies_situacao: TIBStringField;
    Faturasvlr_bruto: TIBBCDField;
    Faturasvlr_bruto_esp: TIBBCDField;
    Faturasvlr_liquido: TIBBCDField;
    Faturasvlr_liquido_esp: TIBBCDField;
    Faturaspes_bru_geral: TIBBCDField;
    Faturaspes_liq_geral: TIBBCDField;
    Faturasdat_embarque: TDateField;
    Faturascod_cond_venda: TIntegerField;
    Faturascod_porto_emb: TIntegerField;
    Faturascod_porto_dest: TIntegerField;
    Faturasdat_env_originais: TDateField;
    Faturasdat_rec_originais: TDateField;
    Faturasdat_coleta: TDateField;
    Faturasdat_eda_br: TDateField;
    Faturasvol_geral: TIBBCDField;
    Faturasqtd_caixas: TIntegerField;
    Faturasqtd_pallets: TIntegerField;
    Faturasnum_ref_volume: TIBStringField;
    Faturasnum_fatura: TIBStringField;
    Faturascod_fornecedor: TSmallintField;
    Faturasraz_social_reduz: TIBStringField;
    Faturastxt_observacao: TMemoField;
    Faturasvlr_comissao_f: TFloatField;
    Faturasdat_pgto_comis_f: TDateField;
    Faturasdat_vertratadm: TDateField;
    Faturasies_li: TIBStringField;
    Faturasdat_verli: TDateField;
    Faturasvlr_comissao_c: TFloatField;
    Faturasdat_pgto_comis_c: TDateField;
    Faturasdat_acerto_com: TDateField;
    Faturasdat_acerto_com1: TDateField;
    Faturascor_embarque: TSmallintField;
    Faturasdat_fotos: TDateField;
    Faturasdat_instBL: TDateField;
    Faturasdat_mod_doc: TDateField;
    Faturasdat_env_bl: TDateField;
    Faturasdat_rec_bl: TDateField;
    Faturasdat_pl_des: TDateField;
    Faturasdat_apro_bl: TDateField;
    Faturasies_preco_esp: TIBStringField;
    Faturasden_tip_condicao: TStringField;
    Faturasporto_emb: TStringField;
    Faturasporto_dest: TStringField;
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
    procedure PrintFaturas(Var pLinha: Integer);
    procedure PrintFaturasTotais(Linha: integer);
    procedure seAnoChange(Sender: TObject);
    function GetCondicaoVenda(Cod: integer): string;
    function GetDenPorto(Cod: integer): String;
    procedure FaturasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FaturasRegistradasResumo: Tfr_FaturasRegistradasResumo;
  FileName : String;
  DIR_PLANILHAS : String;

implementation

uses unConnection, unMenuCompl, Math, SIGIMP01_045;

{$R *.dfm}

procedure Tfr_FaturasRegistradasResumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Faturas.Close;
  Parametro_Comercial.Close;

  Action := caFree;
  fr_FaturasRegistradasResumo := nil;
end;

procedure Tfr_FaturasRegistradasResumo.FormCreate(Sender: TObject);
begin
  seAno.Value :=  YearOf(Buscar_DateTime);
  Clientes.Open;
  Fornecedores.Open;
end;

procedure Tfr_FaturasRegistradasResumo.dbcClientesChange(Sender: TObject);
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
        SQL.Add('  and a."cod_cliente" in (select "cod_cliente"        ');
        SQL.Add('                            from "usuario_cliente"    ');
        SQL.Add('                           where "login" = :login)    ');
        ParamByName('login').Value := vgLogin;
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

procedure Tfr_FaturasRegistradasResumo.actGerarExecute(Sender: TObject);
Var
  Linha : Integer;
begin
  { Gerar Excel com Lista Resumida de Faturas }

  if (Clientes.IsEmpty) then
  begin
    MessageDlg('Não existe Faturas de clientes para o ano de ' + seAno.Text, mtWarning, [mbOk], 0);
    dbcClientes.SetFocus;
    Abort;
  end;

  if (Fornecedores.IsEmpty) then
  begin
    MessageDlg('Não existe Faturas de fornecedores para o ano de ' + seAno.Text, mtWarning, [mbOk], 0);
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

  DIR_PLANILHAS := DIR_PLANILHAS + '\LOTS - SUMMARY';
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
  FileName := DIR_PLANILHAS + '\' + trim(FileName) + '-LOTS SUMMARY-';
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
  parametro_comercialmod_plan_resumo_faturas.SaveToFile(FileName);
  AbrirExcel(FileName);

  { Gerar dados para a Shipment Products }
  Screen.Cursor := crHourGlass;

  { Imprimir Faturas }
  Linha := 4;

  PrintFaturas(Linha);
  PrintFaturasTotais(Linha);

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

procedure Tfr_FaturasRegistradasResumo.PrintFaturasTotais(Linha: integer);
begin
  { Total dos Faturas  }
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
  { X - TOTAL REAL LIQUIDO }
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
  { Y - TOTAL REAL LIQUIDO ESP }
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
  with ExcelWorkSheet.Range['A'+IntToStr(Linha),'AD' + IntToStr(Linha)] do
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

procedure Tfr_FaturasRegistradasResumo.PrintFaturas(Var pLinha: Integer);
Var
  Linha, LinhaAnt: Integer;
begin
  { Incluir os Faturas na Planilha Excel }
  Linha := pLinha;

  { Faturas }
  with Faturas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select                                                                                  ');
    SQL.Add('  a."cod_empresa",a."num_nota_fiscal",a."serie",a."cod_cliente",                        ');
    SQL.Add('  a."dat_emissao",a."dat_liquidacao",a."dat_cadastro",a."ies_situacao",                 ');
    SQL.Add('  a."vlr_bruto", a."vlr_bruto_esp", a."vlr_liquido",a."vlr_liquido_esp",                ');
    SQL.Add('  b."pes_bru_geral",b."pes_liq_geral", a."dat_embarque",                                ');
    SQL.Add('  b."cod_cond_venda", b."cod_porto_emb", b."cod_porto_dest",                            ');
    SQL.Add('  a."dat_env_originais", a."dat_rec_originais", a."dat_coleta", a."dat_eda_br",         ');
    SQL.Add('  b."vol_geral",b."qtd_caixas", b."qtd_pallets", b."num_ref_volume",                    ');
    SQL.Add('  b."num_fatura", c."cod_fornecedor",c."raz_social_reduz", a."txt_observacao",          ');
    SQL.Add('  a."vlr_comissao_f" + sig_nvl(a."overprice_com_f") "vlr_comissao_f",                   ');
    SQL.Add('  a."dat_pgto_comis_f", a."dat_vertratadm", a."ies_li", a."dat_verli",                  ');
    SQL.Add('  a."vlr_comissao_c" + sig_nvl(a."overprice_com_c") "vlr_comissao_c",                   ');
    SQL.Add('  a."dat_pgto_comis_c", a."dat_acerto_com", a."dat_acerto_com", a."cor_embarque",       ');
    SQL.Add('  a."dat_fotos", a."dat_instBL", a."dat_mod_doc", a."dat_env_bl", a."dat_rec_bl",       ');
    SQL.Add('  a."dat_pl_des", a."dat_apro_bl", a."ies_preco_esp"                                    ');
    SQL.Add('  from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedor" c                  ');
    SQL.Add(' where                                                                                  ');
    SQL.Add('       a."cod_empresa"      = :cod_empresa                                              ');

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
    SQL.Add('  and b."num_nota_fiscal" = a."num_nota_fiscal"                                              ');
    SQL.Add('  and b."serie"            = a."serie"                                                       ');
    SQL.Add('  and c."cod_fornecedor" = b."cod_fornecedor"                                                ');
    SQL.Add('  and a."cod_cliente" in (select "cod_cliente"                                               ');
    SQL.Add('                            from "usuario_cliente"                                           ');
    SQL.Add('                           where "login" = :login)                                           ');
    SQL.Add('order by a."dat_emissao" descending                                                          ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('ano').AsString          := seAno.Text;
    ParamByName('login').AsString        := vgLogin;

    Open;

    if (IsEmpty) then Exit; // sair se não existir faturas

    LinhaAnt := Linha;

    { ler Faturas }
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
        { C - DATA DE EMISSÃO }
        with ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)] do
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
        { D - INVOICE }
        with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
        begin
          Value := trim(FieldByName('num_fatura').AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { E - VTA }
        with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
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
        { F - LICENÇA IMPORTAÇÃO }
        with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
        begin
          Value := FieldByName('ies_li').AsString;
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { G - VENCIMENTO LI }
        with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
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
        { H - LOTE }
        with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
        begin
          Value := trim(FieldByName('num_ref_volume').AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 4;
        end;
        { I - PORTO EMBARQUE }
        with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
        begin
          Value := trim(FieldByName('porto_emb').AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { J - PORTO DESTINO }
        with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
        begin
          Value := trim(FieldByName('porto_dest').AsString);
          HorizontalAlignment := xlLeft;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { K - PREVISÃO DE PRONTIDÃO }
        with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_instBL').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_instBL').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { L - APROV BL }
        with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_apro_bl').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_apro_bl').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { M - MOD DOC }
        with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_mod_doc').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_mod_doc').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { N - FOTOS }
        with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_fotos').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_fotos').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { O - DATA LIQUIDAÇÃO }
        with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_liquidacao').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_liquidacao').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { P - DATA PREVISÃO EMBARQUE }
        with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_coleta').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_coleta').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { Q - DATA DE EMBARQUE }
        with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_embarque').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_embarque').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { R - ETA BRA }
        with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_eda_br').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_eda_br').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { S - I/PL DES }
        with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_pl_des').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_pl_des').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { T - ENV I/PL }
        with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_env_originais').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_env_originais').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { U - REC I/PL }
        with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_rec_originais').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_rec_originais').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { V - ENV B/L }
        with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_env_bl').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_env_bl').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { W - REC B/L }
        with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
        begin
          if Not(FieldByName('dat_rec_bl').IsNull) then
             Value := FormatDateTime('dd.mm.yy', FieldByName('dat_rec_bl').AsDateTime);
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 24;
        end;
        { X - TOTAL REAL LIQUIDO }
        with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
        begin
          Value := FieldByName('vlr_liquido').AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 6;
        end;
        { Y - TOTAL LIQUIDO ESP }
        with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
        begin
          Value := FieldByName('vlr_liquido_esp').AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 7;
        end;
        { Z - PESO BRUTO }
        with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
        begin
          Value := FieldByName('pes_bru_geral').AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 39;
        end;
        { AA - PESO LIQUIDO }
        with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
        begin
          Value := FieldByName('pes_liq_geral').AsFloat;
          NumberFormat := '#.##0,00';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 39;
        end;
        { AB - VOLUME TOTAL }
        with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
        begin
          Value := FieldByName('vol_geral').AsFloat;
          NumberFormat := '##0,000';
          HorizontalAlignment := xlRight;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 39;
        end;
        { AC - CAIXAS }
        with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
        begin
          Value := FieldByName('qtd_caixas').AsInteger;
          NumberFormat := '##0';
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 39;
        end;
        { AD - CAIXAS }
        with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
        begin
          Value := FieldByName('qtd_pallets').AsInteger;
          NumberFormat := '###';
          HorizontalAlignment := xlCenter;
          VerticalAlignment := xlCenter;
          Font.Bold := False;
          Font.Size := 8;
          Font.ColorIndex := 0;
          Interior.ColorIndex := 39;
        end;
        Inc (Linha);
        Next;
    end; { Fim ler Faturas }

  end;

   {bordas desde o cabeçalho até ultima linha}
   with ExcelWorkSheet.Range['A'+IntToStr(LinhaAnt),'AD' + IntToStr(Linha)] do
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


procedure Tfr_FaturasRegistradasResumo.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);
end;

procedure Tfr_FaturasRegistradasResumo.AbrirExcel(Caminho: String);
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


Procedure Tfr_FaturasRegistradasResumo.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;

Procedure Tfr_FaturasRegistradasResumo.AbrirPlanilha(FileName: String);
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

procedure Tfr_FaturasRegistradasResumo.FornecedoresBeforeOpen(
  DataSet: TDataSet);
begin
   Fornecedores.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_FaturasRegistradasResumo.ClientesBeforeOpen(DataSet: TDataSet);
begin
  Clientes.ParamByName('cod_empresa').Value := vgCod_Empresa;
end;

procedure Tfr_FaturasRegistradasResumo.dbcFornecedoresChange(Sender: TObject);
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
    SQL.Add('  and c."cod_cliente" in (select "cod_cliente"        ');
    SQL.Add('                            from "usuario_cliente"    ');
    SQL.Add('                           where "login" = :login)    ');
    if (dbcFornecedores.Value <> '0') then
    begin
      SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor          ');
      ParamByName('cod_fornecedor').Value := dbcFornecedores.Value;
    end;
     SQL.Add('   and substr(a."dat_emissao", 1,4) = :ano              ');
    SQL.Add('group by 1                                            ');
    SQL.Add('order by 1                                            ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('login').Value := vgLogin;
    ParamByName('ano').Value := seAno.Text;
    Open;
  end;
end;

procedure Tfr_FaturasRegistradasResumo.seAnoChange(Sender: TObject);
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
    SQL.Add('  and c."cod_cliente" in (select "cod_cliente"        ');
    SQL.Add('                            from "usuario_cliente"    ');
    SQL.Add('                           where "login" = :login)    ');
    if (dbcFornecedores.Value <> '0') then
    begin
      SQL.Add('  and b."cod_fornecedor" = :cod_fornecedor          ');
      ParamByName('cod_fornecedor').Value := dbcFornecedores.Value;
    end;
     SQL.Add('   and substr(a."dat_emissao", 1,4) = :ano              ');
    SQL.Add('group by 1                                            ');
    SQL.Add('order by 1                                            ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('login').Value := vgLogin;
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
    end else
    begin
       SQL.Add('  and a."cod_cliente" in (select "cod_cliente"        ');
       SQL.Add('                            from "usuario_cliente"    ');
       SQL.Add('                           where "login" = :login)    ');
       ParamByName('login').Value := vgLogin;
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

function Tfr_FaturasRegistradasResumo.GetCondicaoVenda(Cod: integer): string;
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

function Tfr_FaturasRegistradasResumo.GetDenPorto(Cod: integer): String;
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


procedure Tfr_FaturasRegistradasResumo.FaturasCalcFields(
  DataSet: TDataSet);
begin
  { Condição de Venda }
  DataSet.FieldByName('den_tip_condicao').AsString := GetCondicaoVenda(DataSet.FieldByName('cod_cond_venda').AsInteger);
  { Porto Embarque }
  DataSet.FieldByName('porto_emb').AsString := GetDenPorto(DataSet.FieldByName('cod_porto_emb').AsInteger);
  { Porto Destino }
  DataSet.FieldByName('porto_dest').AsString := GetDenPorto(DataSet.FieldByName('cod_porto_dest').AsInteger);
end;

end.
