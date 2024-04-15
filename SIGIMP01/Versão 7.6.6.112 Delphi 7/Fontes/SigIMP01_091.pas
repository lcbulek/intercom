unit SigIMP01_091;

interface

uses
  Windows, SysUtils, Classes, DB, IBCustomDataSet, IBQuery, UnType, Variants, IBSQL,
  Forms, Dialogs, Excel2000, OleServer, idHash, idHashMessageDigest;


type
  TObsPreco = record
                Obs_Preco: String;
                Obs_Preco_Esp: String;
              end;

  TdmProdList = class(TDataModule)
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialies_modelo: TIntegerField;
    parametro_comercialmod_romaneio: TBlobField;
    parametro_comercialcod_tip_embarque: TSmallintField;
    parametro_comercialdir_planilhas: TIBStringField;
    parametro_comercialmod_ship_list: TBlobField;
    parametro_comercialdias_inspecao: TSmallintField;
    parametro_comercialult_num_prod_list: TIntegerField;
    cliente: TIBQuery;
    fornecedor: TIBQuery;
    clientecod_cliente: TIBStringField;
    fornecedorcod_fornecedor: TSmallintField;
    fornecedorraz_social_reduz: TIBStringField;
    faturas_prodlist: TIBQuery;
    faturas_prodlistnum_fatura: TIBStringField;
    itens_prodlist: TIBQuery;
    prod_list: TIBQuery;
    prod_listcod_empresa: TSmallintField;
    prod_listcod_cliente: TIBStringField;
    prod_listcod_fornecedor: TSmallintField;
    prod_listnum_prod_list: TIntegerField;
    prod_listies_gerar: TIBStringField;
    prod_listies_pallets: TIBStringField;
    prod_listies_plan_default: TSmallintField;
    Saldos: TIBQuery;
    Saldosqtd_confirmada: TIBBCDField;
    Saldosqtd_embarcada: TIBBCDField;
    Saldosqtd_pendente: TIBBCDField;
    Saldosqtd_romanear: TIBBCDField;
    Saldosqtd_saldo: TIBBCDField;
    pedido_produto: TIBQuery;
    pedido_produtocod_empresa: TSmallintField;
    pedido_produtonum_pedido: TLargeintField;
    pedido_produtonum_sequencia: TSmallintField;
    pedido_produtoqtd_produto: TIBBCDField;
    pedido_produtoqtd_cancelada: TIBBCDField;
    pedido_produtoqtd_romaneada: TIBBCDField;
    pedido_produtoqtd_faturada: TIBBCDField;
    pedido_produtoqtd_pendente: TIBBCDField;
    pedido_produtoqtd_romanear: TIBBCDField;
    pedido_produtoqtd_saldo: TIBBCDField;
    pedido_produtoqtd_export_box: TIntegerField;
    pedido_produtoqtd_inner_box: TIBBCDField;
    pedido_produtovol_caixas: TIBBCDField;
    pedido_produtopes_liquido: TIBBCDField;
    pedido_produtopes_bruto: TIBBCDField;
    pedido_produtoies_caixa_fechada: TIBStringField;
    pedido_produtovlr_unitario: TFloatField;
    pedido_produtovlr_unitario_esp: TFloatField;
    pedido_produtovlr_liquido: TIBBCDField;
    pedido_produtovlr_liquido_esp: TIBBCDField;
    pedido_produtoies_result_inspecao: TIBStringField;
    pedido_produtotxt_status_producao: TMemoField;
    pedido_produtodat_inspecao: TDateField;
    pedido_produtoobs_preco: TMemoField;
    pedido_produtoobs_preco_esp: TMemoField;
    pedido_produtopes_unitario: TFloatField;
    ProdListGrupos: TIBQuery;
    ProdListEmbEsp: TIBQuery;
    ProdListPallets: TIBQuery;
    Saldosqtd_faturada: TIBBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
    function PrecoPedidoProduto(NumPedido: Int64; NumSeq: Integer): TObsPreco;

    function GetDirProdList(Criar: Boolean = False): String;

    procedure AbrirExcel(Var Caminho: String; Visivel: boolean = False);
    procedure FecharExcel;

    procedure AtualizarItensExcel(DataSet: TDataSet; Var pLinha: Integer; pNumFatura: String; fGrupo: Boolean = True);
    procedure AtualizarProdList(NumProdList: Integer; fPallet: boolean; Gerar: Boolean = False);
    procedure GerarExcelProdList(NumProdList: Integer; Abrir: boolean = False; ShowMsg: boolean = True);

  end;

var
  dmProdList: TdmProdList;
  FileName: String;

implementation

uses unConnection, SigIMP01_045;

{$R *.dfm}

function TdmProdList.PrecoPedidoProduto(NumPedido: Int64; NumSeq: Integer): TObsPreco;
begin
  with Pedido_Produto do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_pedido').Value := NumPedido;
    ParamByName('num_sequencia').Value := NumSeq;
    Open;
    Result.Obs_Preco  := 'Price of product: '+FormatFloat('#,##0.0000', FieldByName('vlr_unitario').AsFloat) + ' ' + FieldByName('obs_preco').AsString;
    Result.Obs_Preco_Esp  := 'Price of product: '+FormatFloat('#,##0.0000', FieldByName('vlr_unitario_esp').AsFloat) + ' ' + FieldByName('obs_preco_esp').AsString;
    Close;
  end;
end;

function TdmProdList.GetDirProdList(Criar: Boolean = False): String;
Var
  DIR_PLANILHAS, s, Planilha: String;
begin
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
  DIR_PLANILHAS := DIR_PLANILHAS + '\' + trim(clientecod_cliente.AsString);
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  DIR_PLANILHAS := DIR_PLANILHAS + '\PRODUCTION LISTS';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  s := trim(clientecod_cliente.AsString) + '-' + trim(fornecedorraz_social_reduz.AsString);
  s := StringReplace(s, '/', '-', [rfReplaceAll]);
  s := StringReplace(s, '\', '-', [rfReplaceAll]);

  Planilha := DIR_PLANILHAS + '\' + trim(s) + '-PROD-LIST.xls';

  { não encontrou planilha no HD, gerar uma nova planilha atualizada }
  if Not(FileExists(Planilha)) or (Criar) then
  begin
    parametro_comercialmod_ship_list.SaveToFile(Planilha);
    AbrirExcel(Planilha);
    { preencher campos default e salvar planilha }
    ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
    ExcelWorksheet.Cells.Item[02, 03].Value := clientecod_cliente.AsString;
    ExcelWorksheet.Cells.Item[03, 03].Value := fornecedorraz_social_reduz.AsString;
    ExcelWorksheet.Cells.Item[07, 01].Value := ' ';
    ExcelApplication.ActiveWorkbook.SaveAs(Planilha,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  end
  else begin
    { Backup da planilha antes de processar }
    CopyFile(PChar(Planilha), PChar(Planilha + '.BAK'), false);
    AbrirExcel(Planilha);
  end;

  Result := Planilha;
end;

procedure TdmProdList.AbrirExcel(Var Caminho: String; Visivel: boolean = False);
Var
  lcid : Cardinal;
  WkBk : _Workbook;

begin
  if trim(Caminho) = '' then  // caminho vazio, procurar planilha
  begin
    if (OpenDialog.Execute) then
       Caminho := OpenDialog.FileName
    else begin
      Application.MessageBox('Operação cancelada', 'Informação', MB_ICONINFORMATION+MB_OK);
      FecharExcel;
      Abort;
    end;
  end;

  try
    lcid := GetUserDefaultLCID;
    ExcelApplication.Visible[lcid] := Visivel;
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

procedure TdmProdList.FecharExcel;
begin
  if Not(Assigned(ExcelApplication)) then Exit; // planilha já fechada

  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
end;


procedure TdmProdList.AtualizarItensExcel(DataSet: TDataSet; Var pLinha: Integer; pNumFatura: String; fGrupo: boolean = true);
Var
  UN_I : String;
  s, msgVolume, msgPesoBruto, msgPesoLiquido, msgQtdCaixas : String;
  Linha : Integer;
  QtdMaster : Double;
  i : real;
  SeqEmbEsp, SeqPallet : Integer;
  fPallet: boolean;
  xlCorPallet, xlCorCalculos, xlCorErros, xlVerde, xlAmarelo, xlRoxo, xlCorFaturas, xlTurquesa : integer;
  sHash, sMD5: WideString;

  { Gerar linhas para os items da Prod List }
  procedure Item(DataSetItem: TDataSet);
  begin
    with DataSetItem do
    begin
      sHash := '';

      { SEQUENCIA DO ITEM NO PEDIDO }
      with ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)] do
      begin
        Value := FieldByName('num_seq_pedido').AsInteger;
        HorizontalAlignment := xlCenter;
        if GetBit(FieldByName('ies_erros').AsInteger,0) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { ORDER }
      with ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)] do
      begin
        Value := trim(FieldByName('num_pedido_cli').AsString);
        ColumnWidth := 9.22;
        HorizontalAlignment := xlCenter;
        if GetBit(FieldByName('ies_erros').AsInteger,1) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { CONFIRMATION }
      with ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)] do
      begin
        Value := trim(FieldByName('num_pedido_for').AsString);
        HorizontalAlignment := xlCenter;
        ColumnWidth := 10.78;
        if GetBit(FieldByName('ies_erros').AsInteger,2) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { PRODUTO }
      with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
      begin
        NumberFormat := '@';
        Value := FmtProdutoCliente(clientecod_cliente.AsString, FieldByName('cod_produto').AsString).fmtProduto;
        if GetBit(FieldByName('ies_erros').AsInteger,3) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
        { Indicar com Negrito e Sublinhado se houve mudanças cadastrais }
        if FieldByName('ies_cadastro').AsString = 'S' then
        begin
          Font.Bold := True;
          Font.Underline := xlUnderlineStyleSingle;
        end;

      end;
      { Obter Quantidades Confirmada, Embarcada e Pendente dos Produtos }
      { Somente para atualizar a planilha                               }
      with Saldos do
      begin
        Close;
        ParamByName('cod_empresa').Value := vgCod_Empresa;
        ParamByName('num_pedido').Value  := DataSetItem.FieldByName('num_pedido').Value;
        ParamByName('cod_produto').Value := DataSetItem.FieldByName('cod_produto').Value;
        ParamByName('num_seq_pedido').Value := DataSetItem.FieldByName('num_seq_pedido').Value;
        Open;
        { QUANTITY CONFIRMED IN THE PROFORMA }
        with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
        begin
          NumberFormat := '#.##0,0';
          Value := Saldos.FieldByName('qtd_confirmada').AsFloat;
          Interior.ColorIndex := xlVerde;
        end;
        { QUANTITY ALREADY  SHIPPED }
        with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
        begin
          NumberFormat := '#.##0,0';
          { quantidade já faturada (embarcada) }
          Value := Saldos.FieldByName('qtd_embarcada').AsFloat;
          Interior.ColorIndex := xlVerde;
        end;
        { QUANTITY PENDING OF SHIPMENT }
        with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
        begin
          NumberFormat := '#.##0,0';
          { saldo pendente após o último faturamento }
          Value := Saldos.FieldByName('qtd_pendente').AsFloat;
          Interior.ColorIndex := xlVerde;
        end;
        { QUANTITY ALREADY INVOICED, BUT NOT SHIPPED YET - QTDE FATURADA }
        with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
        begin
          NumberFormat := '#.##0,0';
          { quantidade faturada }
          Value := Saldos.FieldByName('qtd_faturada').AsFloat;
          Interior.ColorIndex := xlTurquesa;
        end;
        Close;
      end;
      { PRODUTO DESCRIÇÃO }
      with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
      begin
        with ProdutoDet(FieldByName('cod_produto').AsString, clientecod_cliente.AsString, fornecedorcod_fornecedor.AsInteger) do
        begin
          Value := Ingles;
          UN_I := Un;
          msgVolume := obsMedidas;
          msgPesoBruto := obsPesoMaster;
          msgPesoLiquido := obsPesoProduto;
          msgQtdCaixas := obsQtdMaster;
          ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Font.ColorIndex := CorNcm;
        end;
        WrapText := True;
        ShrinkToFit := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment   := xlTop;
        Interior.ColorIndex := xlVerde;
      end;

      { DATE OF BEGINNING OF PRODUCTION - Data de Confirmação do Pedido }
      with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
      begin
        if Not(FieldByName('dat_ini_producao').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('dat_ini_producao').AsDateTime)
        else Value := '';
        Interior.ColorIndex := xlVerde;
      end;
      { ETD FACTORY - Data estimada para a produção }
      with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
      begin
        if Not(FieldByName('etd_factory').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('etd_factory').AsDateTime)
        else Value := '';
        Interior.ColorIndex := xlVerde;
      end;
      { UPDATED ETD FACTORY }
      with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
      begin
        if Not(FieldByName('dat_upd_etd').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('dat_upd_etd').AsDateTime)
        else Value := '';
        Interior.ColorIndex := xlAmarelo;
      end;
      { STATUS OF PRODUCTION }
      with ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)] do
      begin
        s := trim(StringReplace(FieldByName('txt_status_producao').AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
        i := (length(s) / 80);
        i := i + 1;
        Value := s;
        WrapText := True;
        ShrinkToFit := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment   := xlTop;
        //RowHeight := 11.25 * i;
        Interior.ColorIndex := xlAmarelo;
      end;
      { DATE OF INSPECTION }
      with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
      begin
        if Not(FieldByName('dat_inspecao').IsNull) then
           Value := FormatDateTime('DD.MM.YY', FieldByName('dat_inspecao').AsDateTime)
        else Value := ' ';
        Interior.ColorIndex := xlAmarelo;
      end;
      { RESULT OF INSPECTION }
      with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
      begin
        Value :=  SetResultInspecao(FieldByName('ies_result_inspecao').AsString);
        Interior.ColorIndex := xlAmarelo;
      end;
      { QUANTITY SUGGESTED FOR THE NEXT SHIPMENT }
      with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('qtd_romanear').AsFloat;
        if (GetBit(FieldByName('ies_erros').AsInteger,4) = 1) or
           (GetBit(FieldByName('ies_erros').AsInteger,5) = 1) or
           (GetBit(FieldByName('ies_erros').AsInteger,6) = 1) then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlAmarelo;
      end;
      { INVOICE NUMER }
      with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
      begin
        Value := trim(FieldByName('num_fatura').AsString);
        if (FieldByName('ies_sit_fat').AsString = 'F') then
           Interior.ColorIndex := xlCorFaturas
        else
           Interior.ColorIndex := xlAmarelo;
      end;
      { SEQ. INVOICE ITEM }
      with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
      begin
        if (FieldByName('num_seq_nf').AsInteger > 0) then
           Value := FieldByName('num_seq_nf').AsInteger
        else Value := '';
        if (FieldByName('ies_sit_fat').AsString = 'F') then
           Interior.ColorIndex := xlCorFaturas
        else
           Interior.ColorIndex := xlAmarelo;
      end;
      { UNIT (UNIDADE DE MEDIDA) }
      with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
      begin
        Value := UN_I;
        Interior.ColorIndex := xlVerde;
      end;
      { PRICE IN US$ }
      with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000000';
        Value := FieldByName('preco_real').AsFloat;
        if GetBit(FieldByName('ies_erros').AsInteger,7) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { TOTAL US$ }
      with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
        Font.ColorIndex := 0;
        Interior.ColorIndex := xlVerde;
      end;
      { PRICE IN US$ - Preço especial }
      with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000000';
        Value := FieldByName('preco_esp').AsFloat;
        Font.ColorIndex := 0;
        { marcar preços especiais diferentes dos reais }
        if (FieldByName('preco_esp').AsFloat > 0) and
           (FieldByName('preco_real').AsFloat <> FieldByName('preco_esp').AsFloat) then
             Interior.ColorIndex := xlAmarelo
          else
             Interior.ColorIndex := xlRoxo;
        if GetBit(FieldByName('ies_erros').AsInteger,8) = 1 then
           Interior.ColorIndex := xlCorErros;
      end;
      { TOTAL US$ - Total Preço Especial}
      with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        FormulaR1C1 := '=ROUND(RC[-7]*RC[-1],2)';
        Font.ColorIndex := 0;
        if (FieldByName('preco_esp').AsFloat > 0) and
           (FieldByName('preco_real').AsFloat <> FieldByName('preco_esp').AsFloat) then
             Interior.ColorIndex := xlAmarelo
          else
             Interior.ColorIndex := xlRoxo;
      end;
      { TOTAL VOLUME IN M³ }
      with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
      begin
        NumberFormat := VolumeNumberFormat;
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(RC[3]*RC[7],' + VolumeDecimais + ')'
        else
           FormulaR1C1 := '=ROUND(RC[4]*RC[7],' + VolumeDecimais + ')';
        Interior.ColorIndex := xlVerde;
      end;
      { TOTAL GROSS WEIGHT (Kg) }
      with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUND(((RC[5]-(RC[10]*RC[4]))*RC[2])+(RC[-9]*RC[10]),2)'
        else
           FormulaR1C1 := '=ROUND(RC[3]*RC[5],2)';

        if (GetBit(FieldByName('ies_erros').AsInteger,10) = 1) then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { TOTAL NET WEIGHT (Kg) }
      with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Font.Size := 8;
        HorizontalAlignment := xlCenter;
        if (FieldByName('mesclar').AsString = 'S') then Value := FieldByName('pes_liquido').AsFloat
                                                   else FormulaR1C1 := '=ROUND(RC[-10]*RC[9],2)';
        if (GetBit(FieldByName('ies_erros').AsInteger,10) = 1) then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
      end;
      { TOTAL QUANTITY OF PACKINGS }
      with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('ies_emb_esp').AsString = 'N') then
           FormulaR1C1 := '=ROUNDUP(RC[-11]/RC[2],0)'
        else
           Value := '';

        if (FieldByName('ies_caixa_fechada').AsString = 'N') then
        begin
          Font.ColorIndex := 3;
          Font.Bold := True;
        end else begin
          Font.ColorIndex := 0;
          Font.Bold := False;
        end;
        Interior.ColorIndex := xlVerde;
      end;
      { SPECIAL CARTONS }
      with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('ies_emb_esp').AsString = 'S') then
           Value := FieldByName('qtd_caixas').AsFloat;
        Interior.ColorIndex := xlAmarelo;
      end;
      { QUANTITY OF UNITS INSIDE THE PACKING }
      with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
      begin
        if (FieldByName('ies_emb_esp').AsString = 'N') then
        begin
          Value := FieldByName('un_master').AsFloat;
        end;
        NumberFormat := '#.##0,0';
        sHash := Text;
        Interior.ColorIndex := xlAmarelo;
      end;
      { Peso Bruto de 1 Caixa - Gross Weight 1 PACKING }
      with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Value := FieldByName('pes_bruto_cx').AsFloat;
        sHash := sHash + Text;
        if GetBit(FieldByName('ies_erros').AsInteger,10) = 1 then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlAmarelo;
      end;
      { Volume }
      with ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
        Interior.ColorIndex := xlVerde;
      end;
      { Comprimento }
      with ExcelWorksheet.Range['AF'+ inttostr(linha),'AF'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('comprimento_cx').AsFloat;
        sHash := sHash + Text;
        Interior.ColorIndex := xlAmarelo;
      end;
      { Largura }
      with ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('largura_cx').AsFloat;
        sHash := sHash + Text;
        Interior.ColorIndex := xlAmarelo;
      end;
      { Altura }
      with ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0';
        Value := FieldByName('altura_cx').AsFloat;
        sHash := sHash + Text;
        Interior.ColorIndex := xlAmarelo;
      end;
      { NET WEIGHT OF THE PRODUCT (Kg) }
      with ExcelWorksheet.Range['AI'+ inttostr(linha),'AI'+inttostr(linha)] do
      begin
        NumberFormat := '##0,0000';
        Interior.ColorIndex := xlAmarelo;
        if (FieldByName('mesclar').AsString = 'N') then
        begin
          Value := FieldByName('pes_unitario').AsFloat;
          sHash := sHash + Text;
          if GetBit(FieldByName('ies_erros').AsInteger,11) = 1 then
             Interior.ColorIndex := xlCorErros
          else
             Interior.ColorIndex := xlAmarelo;
        end;
      end;
      { QUANTITY OF PALLETS }
      with ExcelWorksheet.Range['AJ'+ inttostr(linha),'AJ'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('qtd_pallet').AsInteger > 0) then
           Value := FieldByName('qtd_pallet').AsInteger
        else Value := '';
        Interior.ColorIndex := xlCorPallet;
      end;
      { PESO PALLET VAZIO }
      with ExcelWorksheet.Range['AK'+ inttostr(linha),'AK'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('pes_pallet_vazio').AsFloat > 0) then
           Value := FieldByName('pes_pallet_vazio').AsFloat
        else Value := '';
        Interior.ColorIndex := xlCorPallet;
      end;
      { PALLET GROSS WEIGHT }
      with ExcelWorksheet.Range['AL'+ inttostr(linha),'AL'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('pes_bruto_pallet').AsFloat > 0) then
           Value := FieldByName('pes_bruto_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { PALLET NET WEIGHT }
      with ExcelWorksheet.Range['AM'+ inttostr(linha),'AM'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        if (FieldByName('pes_liquido_pallet').AsFloat > 0) then
           Value := FieldByName('pes_liquido_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { COMPRIMENTO DO PALLET }
      with ExcelWorksheet.Range['AN'+ inttostr(linha),'AN'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('comprimento_pallet').AsFloat > 0) then
           Value := FieldByName('comprimento_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { LARGURA DO PALLET }
      with ExcelWorksheet.Range['AO'+ inttostr(linha),'AO'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('largura_pallet').AsFloat > 0) then
           Value := FieldByName('largura_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { ALTURA DO PALLET }
      with ExcelWorksheet.Range['AP'+ inttostr(linha),'AP'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        if (FieldByName('altura_pallet').AsFloat > 0) then
           Value := FieldByName('altura_pallet').AsFloat
        else Value := '';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;
      { PALLET VOLUME }
      with ExcelWorksheet.Range['AQ'+ inttostr(linha),'AQ'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000';
        FormulaR1C1 := '=ROUND(ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)*RC[-7],3)';
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        Interior.ColorIndex := xlCorPallet;
      end;

      { INFORMAÇÕES CALCULADAS PELO PROGRAMA }

      { TOTAL US$ }
      with ExcelWorksheet.Range['AR'+ inttostr(linha),'AR'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_vlr_liquido').IsNull) then
        begin
          Value := FieldByName('cal_vlr_liquido').AsFloat;
          if (FieldByName('vlr_liquido').AsFloat <> FieldByName('cal_vlr_liquido').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          ClearComments;
          AddComment(PrecoPedidoProduto(FieldByName('num_pedido').Value, FieldByName('num_seq_pedido').AsInteger).Obs_Preco);
          Comment.Visible := False;
        end else Value := null;
      end;
      { TOTAL US$ }
      with ExcelWorksheet.Range['AS'+ inttostr(linha),'AS'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_vlr_liquido_esp').IsNull) then
        begin
          Value := FieldByName('cal_vlr_liquido_esp').AsFloat;
          if (FieldByName('vlr_liquido_esp').AsFloat <> FieldByName('cal_vlr_liquido_esp').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          ClearComments;
          AddComment(PrecoPedidoProduto(FieldByName('num_pedido').Value, FieldByName('num_seq_pedido').AsInteger).Obs_Preco_Esp);
          Comment.Visible := False;
          end else Value := null;
      end;
      { TOTAL VOLUME }
      with ExcelWorksheet.Range['AT'+ inttostr(linha),'AT'+inttostr(linha)] do
      begin
        NumberFormat := VolumeNumberFormat;
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_vol_total').IsNull) then
        begin
          Value := FieldByName('cal_vol_total').AsFloat;
          if (FieldByName('vol_total').AsFloat <> FieldByName('cal_vol_total').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          if (msgVolume <> '') and (FieldByName('ies_emb_esp').AsString = 'N') then
          begin
            ClearComments;
            AddComment(msgVolume);
            Comment.Visible := False;
          end;
          end else Value := null;
      end;
      { TOTAL GROSS WEIGHT }
      with ExcelWorksheet.Range['AU'+ inttostr(linha),'AU'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_pes_bruto').IsNull) then
        begin
          Value := FieldByName('cal_pes_bruto').AsFloat;
          if (FieldByName('pes_bruto').AsFloat <> FieldByName('cal_pes_bruto').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;

          if (msgPesoBruto <> '') and (FieldByName('ies_emb_esp').AsString = 'N')  then
          begin
            ClearComments;
            AddComment(msgPesoBruto);
            Comment.Visible := False;
          end;
        end else Value := null;
      end;
      { TOTAL NET WEIGHT }
      with ExcelWorksheet.Range['AV'+ inttostr(linha),'AV'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,00';
        Interior.ColorIndex := xlCorCalculos;

        if Not(FieldByName('cal_pes_liquido').IsNull) then
        begin
          if (FieldByName('mesclar').Asstring = 'S') then
             Value := FieldByName('pes_liquido').AsFloat
          else
             Value := FieldByName('cal_pes_liquido').AsFloat;

          if (FieldByName('mesclar').AsString <> 'S') then
          begin
            if ((FieldByName('pes_liquido').AsFloat <> FieldByName('cal_pes_liquido').AsFloat))
               then Interior.ColorIndex := xlCorErros
               else Interior.ColorIndex := xlCorCalculos;

            if (msgPesoLiquido <> '') then
            begin
              ClearComments;
              AddComment(msgPesoLiquido);
              Comment.Visible := False;
            end;
          end;
        end else Value := null;

      end;
      { TOTAL QUANTITY OF PACKINGS }
      with ExcelWorksheet.Range['AW'+ inttostr(linha),'AW'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_qtd_caixas').IsNull) then
        begin
          Value := FieldByName('cal_qtd_caixas').AsFloat;
          if (FieldByName('qtd_caixas').AsFloat <> FieldByName('cal_qtd_caixas').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
          if (msgQtdCaixas <> '') and (FieldByName('ies_emb_esp').AsString = 'N')  then
          begin
            ClearComments;
            AddComment(msgQtdCaixas);
            Comment.Visible := False;
          end;
        end else Value := null;
      end;
      { VOLUME OF 1 PACKING }
      with ExcelWorksheet.Range['AX'+ inttostr(linha),'AX'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,0000';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_volume_caixa').IsNull) then
        begin
          Value := FieldByName('cal_volume_caixa').AsFloat;
        end else Value := null;
      end;
      { PRICE IN US$ }
      with ExcelWorksheet.Range['AY'+ inttostr(linha),'AY'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000000';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_preco_real').IsNull) then
        begin
          Value := FieldByName('cal_preco_real').AsFloat;
          if (FieldByName('preco_real').AsFloat <> FieldByName('cal_preco_real').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
        end else Value := null;
      end;
      { PRICE IN US$ }
      with ExcelWorksheet.Range['AZ'+ inttostr(linha),'AZ'+inttostr(linha)] do
      begin
        NumberFormat := '#.##0,000000';
        Interior.ColorIndex := xlCorCalculos;
        if Not(FieldByName('cal_preco_esp').IsNull) then
        begin
          Value := FieldByName('cal_preco_esp').AsFloat;
          if (FieldByName('preco_esp').AsFloat <> FieldByName('cal_preco_esp').AsFloat) then
             Interior.ColorIndex := xlCorErros
          else Interior.ColorIndex := xlCorCalculos;
        end else Value := null;
      end;

      // Calcular HASH MD5  para cada linha gerada
      with TIdHashMessageDigest5.Create do
      try
        sMD5 := TIdHash128.AsHex(HashValue(sHash));
      finally
        free;
      end;
      { HASH MD5 }
      with ExcelWorksheet.Range['BB' + IntToStr(Linha),'BB' + IntToStr(Linha)] do
           Value := sMD5;

      { Sequencia da Packing List }
      with ExcelWorksheet.Range['BC' + IntToStr(Linha),'BC' + IntToStr(Linha)] do
           Value := FieldByName('seq_pkl').Value;

      { Sequencia de Origem }
      with ExcelWorksheet.Range['BD' + IntToStr(Linha),'BD' + IntToStr(Linha)] do
           Value := FieldByName('num_sequencia_org').Value;

      { centralizar as células }
      with ExcelWorksheet.Range['A' + IntToStr(Linha),'AZ' + IntToStr(Linha)] do
      begin
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
      end;
      { Descrição do Produto }
      with ExcelWorkSheet.Range['I' + IntToStr(Linha),'I' + IntToStr(Linha)] do
      begin
        WrapText := True;
        ShrinkToFit := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment   := xlTop;
        RowHeight := 11.25;
        Orientation         := 0;
        AddIndent           := False;
        IndentLevel         := 0;
        ReadingOrder        := xlContext;
        MergeCells          := False;
      end;
      { Status da Produção }
      with ExcelWorkSheet.Range['M' + IntToStr(Linha),'M' + IntToStr(Linha)] do
      begin
        WrapText := True;
        ShrinkToFit := False;
        HorizontalAlignment := xlLeft;
        VerticalAlignment   := xlTop;
        RowHeight := 11.25;
        Orientation         := 0;
        AddIndent           := False;
        IndentLevel         := 0;
        ReadingOrder        := xlContext;
        MergeCells          := False;
      end;
      {bordas desde o cabeçalho até ultima linha}
      with ExcelWorkSheet.Range['A' + IntToStr(Linha),'AZ' + IntToStr(Linha)] do
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
    end; { with DataSetItem do ... }
    Inc(Linha);
  end;

  procedure Grupos(Num_ProdList, NumGrupo: Integer);
  begin
    { gerar linhas para Grupos de Produtos Iguais }
    with ProdListGrupos do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_prod_list').Value := Num_ProdList;
      ParamByName('grupo').Value := NumGrupo;
      Open;
      While Not(EOF) do
      begin
        Item(ProdListGrupos);
        Next;
      end;
    end;
  end;

  procedure EmbalagemEspecial(Num_ProdList, Seq_EmbEsp: Integer);
  Var
    LinIniEmbEsp : Integer;
    Mesclar : string;
  begin
    { gerar linhas para embalagens especiais }
    with ProdListEmbEsp do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_prod_list').Value := Num_ProdList;
      ParamByName('seq_emb_esp').Value := Seq_EmbEsp;
      Open;
      LinIniEmbEsp := Linha;  { salvar linha inicial da embalagem especial }
      Mesclar := FieldByName('mesclar').AsString;
      While Not(EOF) do
      begin
        Item(ProdListEmbEsp);
        Next;
      end;
      with ExcelWorkSheet.Range['X'+IntToStr(LinIniEmbEsp),'X'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlVerde;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['Y'+IntToStr(LinIniEmbEsp),'Y'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        if (GetBit(DataSet.FieldByName('ies_erros').AsInteger,10) = 1) then
           Interior.ColorIndex := xlCorErros
        else
           Interior.ColorIndex := xlVerde;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      // Mesclar coluna Peso Líquido para emb esp ?
      if (Mesclar = 'S') then
      begin
         with ExcelWorkSheet.Range['Z'+IntToStr(LinIniEmbEsp),'Z'+IntToStr(Linha-1)] do
         begin
           MergeCells := True;
           Interior.ColorIndex := xlVerde;
           HorizontalAlignment := xlCenter;
           VerticalAlignment := xlCenter;
           WrapText := True;
           ShrinkToFit := False;
         end;
      end;
      with ExcelWorkSheet.Range['AA'+IntToStr(LinIniEmbEsp),'AA'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlVerde;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AB'+IntToStr(LinIniEmbEsp),'AB'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AC'+IntToStr(LinIniEmbEsp),'AC'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AD'+IntToStr(LinIniEmbEsp),'AD'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AE'+IntToStr(LinIniEmbEsp),'AE'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlVerde;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AF'+IntToStr(LinIniEmbEsp),'AF'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AG'+IntToStr(LinIniEmbEsp),'AG'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      if (Mesclar = 'S') then
      begin
         with ExcelWorkSheet.Range['AI'+IntToStr(LinIniEmbEsp),'AI'+IntToStr(Linha-1)] do
         begin
           MergeCells := True;
           Interior.ColorIndex := xlAmarelo;
           HorizontalAlignment := xlCenter;
           VerticalAlignment := xlCenter;
           WrapText := True;
           ShrinkToFit := False;
         end;
      end;
      with ExcelWorkSheet.Range['AH'+IntToStr(LinIniEmbEsp),'AH'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      { campos calculados pelo sistema }
      with ExcelWorkSheet.Range['AT'+IntToStr(LinIniEmbEsp),'AT'+IntToStr(Linha-1)] do
      begin
         MergeCells := True;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AU'+IntToStr(LinIniEmbEsp),'AU'+IntToStr(Linha-1)] do
      begin
         MergeCells := True;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
      // Mesclar coluna Peso Líquido calculado para emb esp ?
      if (Mesclar = 'S') then
      begin
         with ExcelWorkSheet.Range['AV'+IntToStr(LinIniEmbEsp),'AV'+IntToStr(Linha-1)] do
         begin
           MergeCells := True;
           HorizontalAlignment := xlCenter;
           VerticalAlignment := xlCenter;
           WrapText := True;
           ShrinkToFit := False;
         end;
      end;
      with ExcelWorkSheet.Range['AW'+IntToStr(LinIniEmbEsp),'AW'+IntToStr(Linha-1)] do
      begin
         MergeCells := True;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AX'+IntToStr(LinIniEmbEsp),'AX'+IntToStr(Linha-1)] do
      begin
         MergeCells := True;
         HorizontalAlignment := xlCenter;
         VerticalAlignment := xlCenter;
         WrapText := True;
         ShrinkToFit := False;
      end;
    end;
  end;

  procedure Pallets(Num_ProdList, Seq_pallet: Integer);
  Var
    LinIniPallet : Integer;
  begin
    { gerar itens com pallets }
    with ProdListPallets do
    begin
      Close;
      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_prod_list').Value := Num_ProdList;
      ParamByName('seq_pallet').Value := Seq_pallet;
      Open;
      LinIniPallet := Linha;  { salvar linha inicial do pallet }
      While Not(EOF) do
      begin
        { Embalagem Padrão dentro do pallet }
        if (FieldByName('ies_emb_esp').AsString = 'N') then Item(ProdListPallets);

        { Embalagem Especial dentro do pallet }
        if ((FieldByName('ies_emb_esp').AsString = 'S') and (FieldByName('qtd_caixas').AsInteger > 0)) then
           EmbalagemEspecial(FieldByName('num_prod_list').AsInteger, FieldByName('seq_emb_esp').AsInteger);

        Next;
      end;
      with ExcelWorkSheet.Range['AJ'+IntToStr(LinIniPallet),'AJ'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AK'+IntToStr(LinIniPallet),'AK'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AL'+IntToStr(LinIniPallet),'AL'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AM'+IntToStr(LinIniPallet),'AM'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AN'+IntToStr(LinIniPallet),'AN'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AO'+IntToStr(LinIniPallet),'AO'+IntToStr(Linha-1)] do
      begin
        MergeCells := True;
        HorizontalAlignment := xlCenter;
        VerticalAlignment := xlCenter;
        WrapText := True;
        ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AP'+IntToStr(LinIniPallet),'AP'+IntToStr(Linha-1)] do
      begin
       MergeCells := True;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlCenter;
       WrapText := True;
       ShrinkToFit := False;
      end;
      with ExcelWorkSheet.Range['AQ'+IntToStr(LinIniPallet),'AQ'+IntToStr(Linha-1)] do
      begin
       MergeCells := True;
       HorizontalAlignment := xlCenter;
       VerticalAlignment := xlCenter;
       WrapText := True;
       ShrinkToFit := False;
      end;
      { alternar cores entre as embalagens }
      if (fPallet) then xlCorPallet := 44 else xlCorPallet := 45;
      fPallet := Not(fPallet);
      with ExcelWorkSheet.Range['AJ'+IntToStr(LinIniPallet),'AQ'+IntToStr(Linha-1)] do
      begin
        Interior.ColorIndex := xlCorPallet;
      end;
    end;
  end;

begin
  { Procedure AtualizarItensExcel }
  if (DataSet.IsEmpty) then Exit;

  fPallet := True; // var para alternar cores nos pallets

  xlCorPallet := 44; // cor pallets
  xlCorCalculos := 0; // cor de preenchimento para colunas calculados
  xlCorErros := 3; // cor dos erros (vermelha)
  xlVerde := 4;
  xlAmarelo := 6;
  xlRoxo := 7;
  xlCorFaturas := 8;
  xlTurquesa := 8;

  Linha := pLinha;

  { move para a planilha o Número da Fatura }
  if (pLinha = 7) then
  begin
    ExcelWorkSheet.Cells.Item[4, 3].Value := trim(pNumFatura);
  end
  else
  begin
    if (trim(pNumFatura) <> '') then
    begin
      with ExcelWorksheet.Range['A'+ inttostr(linha-1),'B'+inttostr(linha-1)] do
      begin
        Value := 'INVOICE';
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
        Font.FontStyle := 'Arial';
        Font.Size := 8;
      end;
      with ExcelWorksheet.Range['C'+ inttostr(linha-1),'D'+inttostr(linha-1)] do
      begin
        Value := trim(pNumFatura);
        MergeCells := True;
        Interior.ColorIndex := xlAmarelo;
      end;
    end;
  end;                                              

  with DataSet do
  begin
    First;
    while Not(EOF) do
    begin
      { Item Padrão - fora de pallets e de Grupos }
      if (fGrupo) then
      begin
        if ((FieldByName('seq_pallet').IsNull) and
            (FieldByName('ies_emb_esp').AsString = 'N') and
            (FieldByName('grupo').IsNull))
        then Item(DataSet);
      end else
      begin
        if ((FieldByName('seq_pallet').IsNull) and (FieldByName('ies_emb_esp').AsString = 'N')) then Item(DataSet);
      end;
      { Item de Grupo }
      if (fGrupo) then
      begin
        if ((FieldByName('seq_pallet').IsNull) and
            (FieldByName('ies_emb_esp').AsString = 'N') and
            (FieldByName('grupo').AsInteger > 0) and (FieldByName('seq_grupo').AsInteger = 1))
        then Grupos(FieldByName('num_prod_list').AsInteger,FieldByName('grupo').AsInteger);
      end;

      { Embalagem Especial - fora de pallets }
      if ((FieldByName('seq_pallet').IsNull) and (FieldByName('ies_emb_esp').AsString = 'S') and
         (FieldByName('qtd_caixas').AsInteger > 0)) then
         EmbalagemEspecial(FieldByName('num_prod_list').AsInteger, FieldByName('seq_emb_esp').AsInteger);

      { Pallets }
      if ((FieldByName('seq_pallet').AsInteger > 0) and (FieldByName('qtd_pallet').AsInteger > 0)) then
         Pallets(FieldByName('num_prod_list').AsInteger, FieldByName('seq_pallet').AsInteger);

      Next;
    end;
  end;

  { TOTAIS GERAL }
  Inc(Linha);
  ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)].Value := 'TOTAL : ';

  { TOTAL US$ }
  with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(U'+IntTostr(pLinha)+':U'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { TOTAL US$ ESPECIAL }
  with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(W'+IntTostr(pLinha)+':W'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { VOLUME TOTAL }
  with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
  begin
    NumberFormat := VolumeNumberFormat;
    Formula := '=ROUND(SUM(X'+IntTostr(pLinha)+':X'+IntTostr(Linha-1)+'),' + VolumeDecimaisTotal + ')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { PESO BRUTO }
  with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(Y'+IntTostr(pLinha)+':Y'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { PESO LÍQUIDO }
  with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(Z'+IntTostr(pLinha)+':Z'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { QUANTIDADE DE CAIXAS DE EXPORTAÇÃO - STANDARD }
  with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
  begin
    NumberFormat := '##.##0';
    Formula := '=SUM(AA'+IntTostr(pLinha)+':AA'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { CAIXAS ESPECIAIS }
  with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
  begin
    NumberFormat := '##.##0';
    Formula := '=SUM(AB'+IntTostr(pLinha)+':AB'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Totais dos Pallets }
  { QUANTIDADE }
  with ExcelWorksheet.Range['AJ'+ inttostr(linha),'AJ'+inttostr(linha)] do
  begin
    NumberFormat := '##.##0';
    Formula := '=SUM(AJ'+IntTostr(pLinha)+':AJ'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { PESO BRUTO }
  with ExcelWorksheet.Range['AL'+ inttostr(linha),'AL'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(AL'+IntTostr(pLinha)+':AL'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { PESO LÍQUIDO }
  with ExcelWorksheet.Range['AM'+ inttostr(linha),'AM'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(AM'+IntTostr(pLinha)+':AM'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { VOLUME }
  with ExcelWorksheet.Range['AQ'+ inttostr(linha),'AQ'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(AQ'+IntTostr(pLinha)+':AQ'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Totais Calculados pelo sistema }
  { TOTAL US$ - REAL }
  with ExcelWorksheet.Range['AR'+ inttostr(linha),'AR'+inttostr(linha)] do
  begin
    Formula := '=ROUND(SUM(AR'+IntTostr(pLinha)+':AR'+IntTostr(Linha-1)+'),2)';
    NumberFormat := '#.##0,00';
  end;
  { TOTAL US$ - ESPECIAL }
  with ExcelWorksheet.Range['AS'+ inttostr(linha),'AS'+inttostr(linha)] do
  begin
    Formula := '=ROUND(SUM(AS'+IntTostr(pLinha)+':AS'+IntTostr(Linha-1)+'),2)';
    NumberFormat := '#.##0,00';
  end;
  { TOTAL VOLUME IN M³ }
  with ExcelWorksheet.Range['AT'+ inttostr(linha),'AT'+inttostr(linha)] do
  begin
    Formula := '=ROUND(SUM(AT'+IntTostr(pLinha)+':AT'+IntTostr(Linha-1)+'),' + VolumeDecimaisTotal + ')';
    NumberFormat := VolumeNumberFormat;
  end;
  { TOTAL GROSS WEIGHT }
  with ExcelWorksheet.Range['AU'+ inttostr(linha),'AU'+inttostr(linha)] do
  begin
    Formula := '=ROUND(SUM(AU'+IntTostr(pLinha)+':AU'+IntTostr(Linha-1)+'),2)';
    NumberFormat := '#.##0,00';
  end;
  { TOTAL NET WEIGHT }
  with ExcelWorksheet.Range['AV'+ inttostr(linha),'AV'+inttostr(linha)] do
  begin
    Formula := '=ROUND(SUM(AV'+IntTostr(pLinha)+':AV'+IntTostr(Linha-1)+'),2)';
    NumberFormat := '#.##0,00';
  end;
  { TOTAL QUANTITY OF PACKINGS }
  with ExcelWorksheet.Range['AW'+ inttostr(linha),'AW'+inttostr(linha)] do
  begin
    Formula := '=ROUND(SUM(AW'+IntTostr(pLinha)+':AW'+IntTostr(Linha-1)+'),2)';
    NumberFormat := '##.##0';
  end;

  pLinha := Linha + 3;
end;


procedure TdmProdList.AtualizarProdList(NumProdList: Integer; fPallet: boolean; Gerar: Boolean = False);
Var
  Linha, LinhaFim : Integer;
begin
  FecharExcel;

  FileName := GetDirProdList(Gerar);

  { preencher campos default e salvar planilha }
  ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
  ExcelWorksheet.Cells.Item[02, 03].Value := clientecod_cliente.AsString;
  ExcelWorksheet.Cells.Item[03, 03].Value := fornecedorraz_social_reduz.AsString;
  ExcelWorksheet.Cells.Item[07, 01].Value := ' ';

  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;

  { Limpar todas as linhas da planilha a partir da 7ª linha }
  with ExcelWorksheet.Range['A7','AZ' + IntToStr(LinhaFim)] do
  begin
    Clear;
    Interior.ColorIndex := 0;
    ClearContents;
    Font.Size := 8;
    Font.Name := 'Arial';
    RowHeight := 11.25;
  end;

  Linha := 7;

  { Faturas das ProdList }
  with faturas_prodlist do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
  end;

  { Itens da Fatura }
  while Not(faturas_prodlist.Eof) do
  begin
    { Itens da Packing List na ProdList }
    with itens_prodlist do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from "prod_list_itens"                                                 ');
      SQL.Add(' where "cod_empresa" = :cod_empresa                                             ');
      SQL.Add('   and "num_prod_list" = :num_prod_list                                         ');
      SQL.Add('   and "num_fatura" = :num_fatura                                               ');
      SQL.Add('order by "num_fatura", "seq_pkl", "seq_pallet", "seq_emb_esp", "num_sequencia"  ');

      ParamByName('cod_empresa').Value := vgCod_Empresa;
      ParamByName('num_prod_list').Value := NumProdList;
      ParamByName('num_fatura').Value := trim(faturas_prodlistnum_fatura.AsString);
      Open;
      AtualizarItensExcel(itens_prodlist, Linha, faturas_prodlistnum_fatura.AsString, False);
    end;
    faturas_prodlist.Next;
  end;

  { Itens disponíveis para embarque }
  with itens_prodlist do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from "prod_list_itens"                                       ');
    SQL.Add(' where "cod_empresa" = :cod_empresa                                   ');
    SQL.Add('   and "num_prod_list" = :num_prod_list                               ');
    SQL.Add('   and "num_fatura" is null                                           ');
    SQL.Add(' order by "dat_emissao", "num_pedido", "num_sequencia"                ');

    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('num_prod_list').Value := NumProdList;
    Open;
    AtualizarItensExcel(itens_prodlist, Linha, '');
  end;

  faturas_prodlist.Close;

  LinhaFim := ExcelWorksheet.Cells.SpecialCells(xlLastCell,1).Row;

  { Mudar fonte a partir da linha 7 até o fim }
  with ExcelWorksheet.Range['A7','AZ' + IntToStr(LinhaFim)] do
  begin
    Font.Size := 8;
    Font.Name := 'Arial';
  end;

  { Mostrar/Esconder colunas para Pallets Packages }
  with ExcelWorksheet.Range['AJ' + IntToStr(Linha),'AQ' + IntToStr(Linha)] do
  begin
    if (fPallet) then EntireColumn.Hidden := False
    else EntireColumn.Hidden := True;
  end;
  ExcelWorkSheet.Range['BB1','BD1'].EntireColumn.Hidden := True;
  ExcelWorkSheet.Range['AK1','AK1'].EntireColumn.Hidden := True; // Peso pallets vazio
  ExcelWorkSheet.Range['E7','E7'].Select;
  ExcelApplication.ActiveWindow.FreezePanes := True;

  { Salvar a planilha na pasta do cliente subpasta PRODUCTION LISTS }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);

  FecharExcel;
end;

procedure TdmProdList.GerarExcelProdList(NumProdList: Integer; Abrir: boolean = False; ShowMsg: boolean = True);
Var
  fPallet: boolean;
begin
  { parâmetro comercial da empresa }
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  with prod_list do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_prod_list').AsInteger := NumProdList;
    Open;
    fPallet := FieldByName('ies_pallets').AsString = 'S';
  end;

  with cliente do
  begin
    Close;
    ParamByName('cod_cliente').AsString := prod_listcod_cliente.AsString;
    Open;
  end;

  with fornecedor do
  begin
    Close;
    ParamByName('cod_fornecedor').AsInteger := prod_listcod_fornecedor.AsInteger;
    Open;
  end;

  { Será gerada apenas uma Production List }
  AtualizarProdList(NumProdList, fPallet, True);

  if (ShowMsg) then
     Application.MessageBox('Planilha gerada com sucesso', 'Informação', MB_OK+MB_ICONINFORMATION);

  if (Abrir) then
     AbrirExcel(FileName, True);
end;


end.
