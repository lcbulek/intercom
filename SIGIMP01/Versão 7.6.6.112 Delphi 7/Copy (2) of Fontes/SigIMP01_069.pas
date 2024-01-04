unit SigIMP01_069;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, JvExControls, DateUtils,
  JvComponent, JvDBLookup, DB, IBCustomDataSet, IBQuery, Excel2000,
  OleServer, AniThread;

type
  Tfr_Pendentes_Embarque = class(TForm)
    Panel1: TPanel;
    btnGerar: TBitBtn;
    btnAbrir: TBitBtn;
    BitBtn3: TBitBtn;
    ActionList1: TActionList;
    actGerar: TAction;
    actAbrir: TAction;
    Clientes: TIBQuery;
    Clientescod_cliente: TIBStringField;
    ds_Clientes: TDataSource;
    Fornecedores: TIBQuery;
    ds_Fornecedores: TDataSource;
    Label1: TLabel;
    dbcClientes: TJvDBLookupCombo;
    Label2: TLabel;
    dbcFornecedores: TJvDBLookupCombo;
    Fornecedorescod_fornecedor: TIntegerField;
    Fornecedoresraz_social_reduz: TIBStringField;
    Pedidos: TIBQuery;
    Produtos: TIBQuery;
    Pedidoscod_empresa: TSmallintField;
    Pedidosnum_pedido: TLargeintField;
    Pedidosnum_pedido_cli: TIBStringField;
    Pedidosnum_pedido_for: TIBStringField;
    Pedidoscod_cliente: TIBStringField;
    Pedidoscod_fornecedor: TIntegerField;
    Pedidosraz_social: TIBStringField;
    Pedidosdat_liberacao: TDateField;
    parametro_comercial: TIBQuery;
    parametro_comercialcod_empresa: TSmallintField;
    parametro_comercialies_modelo: TIntegerField;
    parametro_cliente: TIBQuery;
    parametro_clientecod_cliente: TIBStringField;
    parametro_clientemas_cod_produto: TIBStringField;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    OpenDialog: TOpenDialog;
    Produtoscod_empresa: TSmallintField;
    Produtosnum_pedido: TLargeintField;
    Produtoscod_produto: TIBStringField;
    Produtosnum_sequencia: TSmallintField;
    Produtosden_produto_det: TMemoField;
    Produtosqtd_produto: TIBBCDField;
    Produtosqtd_pendente: TIBBCDField;
    Produtosvlr_unitario: TFloatField;
    Produtosvlr_liquido: TIBBCDField;
    Produtosqtd_export_box: TIntegerField;
    Produtospes_bruto: TIBBCDField;
    Produtospes_liquido: TIBBCDField;
    Produtosvol_caixas: TIBBCDField;
    Produtosun_cx_master: TIBBCDField;
    Produtossigla_i: TIBStringField;
    Produtospes_unitario: TFloatField;
    embalagem: TIBQuery;
    embalagemcod_empresa: TSmallintField;
    embalagemcod_produto: TIBStringField;
    embalagemaltura: TIBBCDField;
    embalagemlargura: TIBBCDField;
    embalagemprofundidade: TIBBCDField;
    embalagemvolume: TIBBCDField;
    embalagemarea: TIBBCDField;
    embalagemqtd_master: TIBBCDField;
    embalagemqtd_inner: TIBBCDField;
    embalagemobservacao: TIBStringField;
    embalagemdat_cadastro: TDateTimeField;
    embalagempeso_unitario: TFloatField;
    embalagemdat_cad_dimensoes: TDateField;
    embalagemdat_cad_peso: TDateField;
    embalagemdat_cad_master: TDateField;
    embalagemdat_cad_inner: TDateField;
    embalagemobs_caixas: TIBStringField;
    parametro_comercialmod_ship_list: TBlobField;
    parametro_comercialdir_planilhas: TIBStringField;
    parametro_comercialdias_inspecao: TSmallintField;
    Produtosdat_inspecao: TDateField;
    rgPallets: TRadioGroup;
    Produtosseq_pkl: TIntegerField;
    Produtosseq_emb_esp: TIntegerField;
    Produtosseq_pallet: TIntegerField;
    Produtosaltura_pallet: TIBBCDField;
    Produtoslargura_pallet: TIBBCDField;
    Produtoscomprimento_pallet: TIBBCDField;
    Produtosvolume_pallet: TIBBCDField;
    emb_esp_ped: TIBQuery;
    emb_esp_pedcod_empresa: TSmallintField;
    emb_esp_pednum_pedido: TLargeintField;
    emb_esp_pedseq: TIntegerField;
    emb_esp_pedden_embalagem: TIBStringField;
    emb_esp_pedqtd_total: TIBBCDField;
    emb_esp_pedvol_total: TIBBCDField;
    emb_esp_pedpes_bruto: TIBBCDField;
    emb_esp_pedpes_liquido: TIBBCDField;
    emb_esp_pedqtd_caixas: TIntegerField;
    emb_esp_pedqtd_produto: TIBBCDField;
    emb_esp_pedpes_unitario: TFloatField;
    emb_esp_pedaltura: TIBBCDField;
    emb_esp_pedlargura: TIBBCDField;
    emb_esp_pedprofundidade: TIBBCDField;
    Produtosies_emb_esp: TIBStringField;
    Pedidosies_pallets: TIBStringField;
    Produtosqtd_pallet: TIntegerField;
    Produtospes_bruto_pallet: TIBBCDField;
    Produtospes_liquido_pallet: TIBBCDField;
    Produtospes_pallet_vazio: TIBBCDField;
    panGauge: TPanel;
    Label3: TLabel;
    edtNumPedido: TEdit;
    emb_esp_pedpes_bruto_cx: TFloatField;
    Produtostxt_status_producao: TMemoField;
    Produtosies_result_inspecao: TIBStringField;
    cbInspecao: TCheckBox;
    confirmado_embarcado: TIBQuery;
    confirmado_embarcadoqtd_confirmada: TIBBCDField;
    confirmado_embarcadoqtd_embarcada: TIBBCDField;
    confirmado_embarcadoqtd_pendente: TIBBCDField;
    Produtosvlr_unitario_esp: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure PedidosAfterScroll(DataSet: TDataSet);
    procedure AbrirExcel(Caminho: String);
    Procedure AbrirPlanilha(FileName: String);
    procedure FecharExcel;
    procedure ProdutosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Pendentes_Embarque: Tfr_Pendentes_Embarque;
  FileName : String;
  DIR_PLANILHAS : String;


implementation

uses unConnection, unMenuCompl,  SIGIMP01_045;

{$R *.dfm}

procedure Tfr_Pendentes_Embarque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clientes.Close;
  Fornecedores.Close;
  Produtos.Close;
  Pedidos.Close;
  Embalagem.close;
  Parametro_Comercial.Close;
  Parametro_Cliente.Close;

  Action := caFree;
  fr_Pendentes_Embarque := nil;
end;

procedure Tfr_Pendentes_Embarque.FormCreate(Sender: TObject);
begin
  Clientes.Open;
  Fornecedores.Open;
end;

procedure Tfr_Pendentes_Embarque.dbcClientesChange(Sender: TObject);
begin
  with Fornecedores do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := Clientescod_cliente.AsString;
    Open;
  end;
end;

procedure Tfr_Pendentes_Embarque.actGerarExecute(Sender: TObject);
Var
  Nome, LI : String;
  Linha : Integer;
  QtdMaster : Double;
  SeqEmbEsp, SeqPallet, LinIniPallet, LinIniEmbEsp : Integer;
  fPallet : boolean;
  xlCorPallet : integer;
begin
  { Gerar planilha com Produtos Pendentes de Embarque - Production List }

  { escolher cliente e fornecedor para gerar a planilha }
  if (dbcClientes.Value = '0') and
     (dbcFornecedores.Value = '0') and
     (edtNumPedido.Text = '')then
  begin
    dbcClientes.SetFocus;
    Exit;
  end;
  { Pedidos Pendentes }
  with Pedidos do
  begin
    Close;
    SQl.Clear;
    SQL.Add('select a."cod_empresa",                                              ');
    SQL.Add('       a."num_pedido", c."num_pedido_cli", c."num_pedido_for",       ');
    SQL.Add('       a."cod_cliente",                                              ');
    SQL.Add('       c."cod_fornecedor", f."raz_social",                           ');
    SQL.Add('       a."dat_liberacao", a."ies_pallets"                            ');
    SQL.Add('from "pedido" a, "pedido_complemento" c, "cliente" d, "fornecedor" f ');
    SQL.Add('where                                                                ');
    SQL.Add('     a."cod_empresa"    = :cod_empresa                               ');
    SQL.Add(' and a."ies_situacao"   = ''N''                                      ');
    SQL.Add(' and a."ies_tip_pedido" = ''P''                                      ');
    if (dbcClientes.Value <> '0') then
    begin
       SQL.Add(' and a."cod_cliente"    = :cod_cliente                            ');
       ParamByName('cod_cliente').Value     := Clientescod_cliente.AsString;
    end;
    if (dbcFornecedores.Value <> '0') then
    begin
       SQL.Add(' and c."cod_fornecedor" = :cod_fornecedor                         ');
       ParamByName('cod_fornecedor').Value  := Fornecedorescod_fornecedor.AsInteger;
    end;
    if trim(edtNumPedido.Text) <> '' then
    begin
       SQL.Add(' and c."num_pedido_cli" = :num_pedido_cli                         ');
       ParamByName('num_pedido_cli').Value := trim(edtNumPedido.Text);
    end;
    SQL.Add(' and exists (select * from "pedido_produto" b                        ');
    SQL.Add('              where b."cod_empresa" = a."cod_empresa"                ');
    SQL.Add('                and b."num_pedido" = a."num_pedido"                  ');
    SQL.Add('                and b."qtd_pendente" > 0)                            ');
    SQL.Add(' and c."cod_empresa" = a."cod_empresa"                               ');
    SQL.Add(' and c."num_pedido" = a."num_pedido"                                 ');
    SQL.Add(' and d."cod_cliente" = a."cod_cliente"                               ');
    SQL.Add(' and f."cod_fornecedor" = c."cod_fornecedor"                         ');
    SQL.Add('order by a."dat_liberacao"                                           ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;

    Open;
  end;

  dbcClientes.KeyValue := Pedidoscod_cliente.AsString;
  dbcFornecedores.KeyValue := Pedidoscod_fornecedor.AsInteger;

  { obter modelo da planilha de romaneio  }                       
  with parametro_comercial do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;

  if GetBit(parametro_comercialies_modelo.AsInteger, 2) = 0 then
  begin
    Application.MessageBox('O modelo de planilha para a Importação da Shipping List não foi definido', 'Informação', MB_ICONINFORMATION+MB_OK);
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

  DIR_PLANILHAS := DIR_PLANILHAS + '\PRODUCTION LISTS';
  if not DirectoryExists(DIR_PLANILHAS) then
     if not CreateDir(DIR_PLANILHAS) then
        raise Exception.Create('Não foi possível criar ' + DIR_PLANILHAS);

  { inicializar progress bar }
  Rect := panGauge.ClientRect;
  InflateRect(Rect, - panGauge.BevelWidth, - panGauge.BevelWidth);
  Ani := TAnimationThread.Create(panGauge, Rect, panGauge.color, clBlue, 25);
  btnGerar.Enabled := False;
  Application.ProcessMessages;


  { Nome da Planilha = Código do Cliente + Nome Fornecedor Reduzido }
  Nome := trim(Clientescod_cliente.AsString) + '-' + trim(Fornecedoresraz_social_reduz.AsString);
  Nome := StringReplace(Nome, '/', '-', [rfReplaceAll]);
  Nome := StringReplace(Nome, '\', '-', [rfReplaceAll]);
  FileName := DIR_PLANILHAS + '\' + trim(Nome) + '-PROD.LIST ' + FormatDateTime('dd.mm.yy', DataHoraServidor) + '.xls';

  { Criar a Planilha de Shipping List, sobrepondo a mesma se existir }
  parametro_comercialmod_ship_list.SaveToFile(FileName);
  AbrirExcel(FileName);

  { preencher campos default e salvar planilha }
  ExcelWorkSheet.Cells.Item[01, 03].Value := vgCod_Empresa;
  ExcelWorksheet.Cells.Item[02, 03].Value := clientescod_cliente.AsString;
  ExcelWorksheet.Cells.Item[03, 03].Value := Fornecedoresraz_social_reduz.AsString;
  { Gerar dados para a Shipping List }
  Screen.Cursor := crHourGlass;
  Linha := 7;                                                                            
  { Pedidos }
  with Pedidos do
  begin
    First;

    fPallet := True; // var para altenar cores nos pallets
        
    while Not(EOF) do
    begin
      with Produtos do
      begin
        First;
        { inicializar sequencias embalagens e pallets }
        SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
        if (SeqEmbEsp > 0) then LinIniEmbEsp := Linha
                           else LinIniEmbEsp := 0;
        SeqPallet := FieldByName('seq_pallet').AsInteger;
        if (SeqPallet > 0) then LinIniPallet := Linha
                           else LinIniPallet := 0;
        while Not(EOF) do
        begin
          { Limpar as colunas }
          with ExcelWorksheet.Range['A' + IntToStr(Linha),'AU' + IntToStr(Linha)] do
          begin
            Clear;
            Interior.ColorIndex := 0;
            ClearContents;                                                                        
            Font.Size := 8;
          end;

          { A - SEQUENCIA DO ITEM NO PEDIDO }
          ExcelWorksheet.Range['A'+ inttostr(linha),'A'+inttostr(linha)].Value := Produtosnum_sequencia.AsInteger;
          { B - ORDER }
          ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].Value := Pedidosnum_pedido_cli.AsString;
          ExcelWorksheet.Range['B'+ inttostr(linha),'B'+inttostr(linha)].ColumnWidth := 9.22;
          { C - S/C }
          ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].Value := Pedidosnum_pedido_for.AsString;
          ExcelWorksheet.Range['C'+ inttostr(linha),'C'+inttostr(linha)].ColumnWidth := 10.78;
          { D - PRODUTO }
          ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].NumberFormat := '@';
          ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)].Value := FmtProdutoCliente(Pedidoscod_cliente.AsString, Produtoscod_produto.AsString).fmtProduto;;

          { Obter quantidades Confirmada e Embarcada do PRODUTO }
          with confirmado_embarcado do
          begin
            Close;
            ParamByName('cod_empresa').Value := Produtoscod_empresa.AsInteger;
            ParamByName('num_pedido').Value := Produtosnum_pedido.AsLargeInt;
            ParamByname('cod_produto').Value := Produtoscod_produto.AsString;
            ParamByName('vlr_unitario').Value := Produtosvlr_unitario.AsFloat;
            Open;
            { E - QUANTITY CONFIRMED IN THE PROFORMA }
            with ExcelWorksheet.Range['E'+ inttostr(linha),'E'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,0';
              Value := FieldByName('qtd_confirmada').AsFloat;
            end;
            { F - QUANTITY ALREADY  SHIPPED }
            with ExcelWorksheet.Range['F'+ inttostr(linha),'F'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,0';
              Value := FieldByName('qtd_embarcada').AsFloat;
            end;
            { G - QUANTITY PENDING OF SHIPMENT }
            with ExcelWorksheet.Range['G'+ inttostr(linha),'G'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,0';
              Value := FieldByName('qtd_pendente').AsFloat;
            end;
          end;
          { H - PRODUTO DESCRIÇÃO }
          with ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)] do
          begin
            with ProdutoDet(Produtoscod_produto.AsString) do
            begin
              Value := Ingles;
              LI := Lic;
            end;
            WrapText := False;
            ShrinkToFit := False;
          end;

          if (LI = 'S') then
          begin
            with ExcelWorksheet.Range['D'+ inttostr(linha),'D'+inttostr(linha)] do
            begin
              Font.ColorIndex := 3;
              Font.Bold := True;              
            end;
          end;

          { I - DATE OF BEGINNING OF PRODUCTION - Data de Confirmação do Pedido }
          with ExcelWorksheet.Range['I'+ inttostr(linha),'I'+inttostr(linha)] do
          begin
            Value := FormatDateTime('DD.MM.YY', Pedidosdat_liberacao.AsDateTime);
          end;
          { J - ESTIMATED DATE OF INSPECTION READY - Data estimada para a inspeção ficar pronta }
          with ExcelWorksheet.Range['J'+ inttostr(linha),'J'+inttostr(linha)] do
          begin
            Value := FormatDateTime('DD.MM.YY', IncDay(Pedidosdat_liberacao.AsDateTime, parametro_comercialdias_inspecao.AsInteger));
          end;
          { K - STATUS OF PRODUCTION }
          with ExcelWorksheet.Range['K'+ inttostr(linha),'K'+inttostr(linha)] do
          begin
            Value := trim(StringReplace(Produtostxt_status_producao.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
            WrapText := True;
            ShrinkToFit := False;
            HorizontalAlignment := xlLeft;
            VerticalAlignment   := xlTop;
          end;
          { L - DATE OF INSPECTION }
          with ExcelWorksheet.Range['L'+ inttostr(linha),'L'+inttostr(linha)] do
          begin
            if Not(Produtosdat_inspecao.IsNull) then
               Value := FormatDateTime('DD.MM.YY', Produtosdat_inspecao.AsDateTime)
            else Value := ' ';
          end;
          { M - RESULT OF INSPECTION }
          ExcelWorksheet.Range['M'+ inttostr(linha),'M'+inttostr(linha)].Value :=  SetResultInspecao(Produtosies_result_inspecao.AsString);
          { N - QUANTITY SUGGESTED FOR THE NEXT SHIPMENT }
          with ExcelWorksheet.Range['N'+ inttostr(linha),'N'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,0';
            Value := Produtosqtd_pendente.AsFloat;
          end;
          { O - UNIT (UNIDADE DE MEDIDA) }
          with ExcelWorksheet.Range['O'+ inttostr(linha),'O'+inttostr(linha)] do
          begin
            Value := Produtossigla_i.AsString;
          end;
          { P - PRICE IN US$ }
          with ExcelWorksheet.Range['P'+ inttostr(linha),'P'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000000';
            Value := Produtosvlr_unitario.AsFloat;
          end;
          { Q - TOTAL US$ }
          with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            FormulaR1C1 := '=ROUND(RC[-3]*RC[-1],2)';
          end;
          { R - PRICE IN US$ - Preço especial }
          with ExcelWorksheet.Range['R'+ inttostr(linha),'R'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000000';
            Value := Produtosvlr_unitario_esp.AsFloat;
          end;
          { S - TOTAL US$ - Total Preço Especial}
          with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
            FormulaR1C1 := '=ROUND(RC[-5]*RC[-1],2)';
          end;
          { T - TOTAL VOLUME IN M³ }
          with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000';
            FormulaR1C1 := '=ROUND(RC[3]*RC[6],3)';
          end;
          { AT - PRICE IN US$ }
          with ExcelWorksheet.Range['AT'+ inttostr(linha),'AT'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000000';
            Value := Produtosvlr_unitario.AsFloat;
          end;
          { AU - PRICE IN US$(*) }
          with ExcelWorksheet.Range['AU'+ inttostr(linha),'AU'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,000000';
            Value := Produtosvlr_unitario.AsFloat;
          end;
          { AM - TOTAL US$ }
          with ExcelWorksheet.Range['AM'+ inttostr(linha),'AM'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
          end;
          { AN - TOTAL US$(*) }
          with ExcelWorksheet.Range['AN'+ inttostr(linha),'AN'+inttostr(linha)] do
          begin
            NumberFormat := '#.##0,00';
          end;
          { EMBALAGENS ESPECIAIS }
          if (FieldByName('ies_emb_esp').AsString = 'S') then
          begin
             { procurar dados da embalagem especial }
             with emb_esp_ped do
             begin
               Close;
               ParamByName('cod_empresa').AsInteger	:= vgCod_Empresa;
               ParamByName('num_pedido').Value 	:= Pedidosnum_pedido.AsLargeInt;
               ParamByName('seq').AsInteger := SeqEmbEsp;
               Open;
             end;
             { U - Peso Bruto  - campo calulado em função do peso bruto da caixa }
             with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0,00';
               FormulaR1C1 := '=ROUND(RC[2]*RC[4],2)';
             end;
             { V - Peso Líquido }
             with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0,00';
               FormulaR1C1 := '=ROUND(RC[-8]*RC[8]/1000,2)';
             end;
             { W - Quantidade de caixas }
             with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0';
               Value := emb_esp_pedqtd_caixas.AsFloat;
             end;
             { Y - Peso Bruto de 1 Caixa - Gross Weight 1 Export Carton }
             with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0,00';
               Value := emb_esp_pedpes_bruto_cx.AsFloat;
             end;
             { Z - Volume }
             with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0,0000';
               FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
             end;
             { AA - Comprimento }
             with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0,0';
               Value := emb_esp_pedprofundidade.AsFloat;
             end;
             { AB - Largura }
             with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0,0';
               Value := emb_esp_pedlargura.AsFloat;
             end;
             { AC - Altura }
             with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0,0';
               Value := emb_esp_pedaltura.AsFloat;
             end;
             { AD - NET WEIGHT OF THE PRODUCT (GRAMS) }
             with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
             begin
               NumberFormat := '#.##0,00';
               Value := Produtospes_unitario.AsFloat * 1000;
             end;
             { Repetir para somar ao peso dos pallets }
             if (Pedidosies_pallets.AsString = 'S') and (FieldByName('seq_pallet').IsNull) then
             begin
               { Peso Bruto (AG), Peso Líquido (AH) e Volume (AL) }
               ExcelWorkSheet.Cells.Item[Linha, 33].NumberFormat := '#.##0,00';
               ExcelWorkSheet.Cells.Item[Linha, 33].FormulaR1C1 := '=RC[-12]';
               ExcelWorkSheet.Cells.Item[Linha, 34].NumberFormat := '#.##0,00';
               ExcelWorkSheet.Cells.Item[Linha, 34].FormulaR1C1 := '=RC[-13]';
               ExcelWorkSheet.Cells.Item[Linha, 38].NumberFormat := '#.##0,000';
               ExcelWorkSheet.Cells.Item[Linha, 38].FormulaR1C1 := '=RC[-18]';
             end;
           end;  { EMBALAGENS ESPECIAIS }
          { PALLETS }
          if (Pedidosies_pallets.AsString = 'S') then
          begin
            if (FieldByName('seq_pallet').AsInteger > 0) then { enviar para excel quando pallet existente }
            begin
              { AE - QUANTITY OF PALLETS }
              ExcelWorkSheet.Cells.Item[Linha, 31].NumberFormat := '#.##0';
              ExcelWorkSheet.Cells.Item[Linha, 31].Value := FieldByName('qtd_pallet').AsInteger;
              { AF - PESO PALLET VAZIO }
              ExcelWorkSheet.Cells.Item[Linha, 32].NumberFormat := '#0,00';
              ExcelWorkSheet.Cells.Item[Linha, 32].Value := FieldByName('pes_pallet_vazio').AsFloat;
              { AG - PALLET GROSS WEIGHT }
              ExcelWorkSheet.Cells.Item[Linha, 33].NumberFormat := '#.##0,00';
              ExcelWorkSheet.Cells.Item[Linha, 33].Value := FieldByName('pes_bruto_pallet').AsFloat;
              ExcelWorkSheet.Cells.Item[Linha, 33].HorizontalAlignment := xlCenter;
              ExcelWorkSheet.Cells.Item[Linha, 33].VerticalAlignment := xlCenter;
              { AH - PALLET NET WEIGHT }
              ExcelWorkSheet.Cells.Item[Linha, 34].NumberFormat := '#.##0,00';
              ExcelWorkSheet.Cells.Item[Linha, 34].Value := FieldByName('pes_liquido_pallet').AsFloat;
              ExcelWorkSheet.Cells.Item[Linha, 34].HorizontalAlignment := xlCenter;
              ExcelWorkSheet.Cells.Item[Linha, 34].VerticalAlignment := xlCenter;
              { AI - ALTURA DO PALLET }
              ExcelWorkSheet.Cells.Item[Linha, 35].NumberFormat := '#.##0';
              ExcelWorkSheet.Cells.Item[Linha, 35].Value := FieldByName('altura_pallet').AsFloat;
              ExcelWorkSheet.Cells.Item[Linha, 35].HorizontalAlignment := xlCenter;
              ExcelWorkSheet.Cells.Item[Linha, 35].VerticalAlignment := xlCenter;
              { AJ - LARGURA DO PALLET }
              ExcelWorkSheet.Cells.Item[Linha, 36].NumberFormat := '#.##0';
              ExcelWorkSheet.Cells.Item[Linha, 36].Value := FieldByName('largura_pallet').AsFloat;
              ExcelWorkSheet.Cells.Item[Linha, 36].HorizontalAlignment := xlCenter;
              ExcelWorkSheet.Cells.Item[Linha, 36].VerticalAlignment := xlCenter;
              { AK - COMPRIMENTO DO PALLET }
              ExcelWorkSheet.Cells.Item[Linha, 37].NumberFormat := '#.##0';
              ExcelWorkSheet.Cells.Item[Linha, 37].Value := FieldByName('comprimento_pallet').AsFloat;
              ExcelWorkSheet.Cells.Item[Linha, 37].HorizontalAlignment := xlCenter;
              ExcelWorkSheet.Cells.Item[Linha, 37].VerticalAlignment := xlCenter;
              { AL - PALLET VOLUME }
              ExcelWorkSheet.Cells.Item[Linha, 38].NumberFormat := '#.##0,000';
              ExcelWorkSheet.Cells.Item[Linha, 38].FormulaR1C1 := '=ROUND(ROUND(RC[-1]*RC[-2]*RC[-3]/1000000,4)*RC[-7],3)';
              ExcelWorkSheet.Cells.Item[Linha, 38].HorizontalAlignment := xlCenter;
              ExcelWorkSheet.Cells.Item[Linha, 38].VerticalAlignment := xlCenter;
            end;
          end; { PALLETS }
          { ITENS NORMAIS }
          if (FieldByName('ies_emb_esp').AsString = 'N') then
          begin
            { U - TOTAL GROSS WEIGHT (Kg) }
            with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,00';
              FormulaR1C1 := '=ROUND(((RC[4]-(RC[9]/1000*RC[3]))*RC[2])+(RC[-7]*RC[9]/1000),2)';
            end;
            { V - TOTAL NET WEIGHT (Kg) }
            with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,00';
              FormulaR1C1 := '=ROUND(RC[-8]*RC[8]/1000,2)';
            end;
            { W - TOTAL QUANTITY OF EXPORT CARTONS }
            with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0';
              FormulaR1C1 := '=ROUNDUP(RC[-9]/RC[1],0)';
            end;
            { X - QUANTITY OF UNITS INSIDE THE EXPORT CARTON }
            with ExcelWorksheet.Range['X'+ inttostr(linha),'X'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0';
              Value := embalagemqtd_master.AsFloat;
              QtdMaster := embalagemqtd_master.AsFloat;
            end;
            { Y - GROSS WEIGHT OF 1 EXPORT CARTON (KGS.) }
            with dmCOM.CalcEmbalagem(Produtoscod_produto.AsString, QtdMaster) do
            begin
               with ExcelWorksheet.Range['Y'+ inttostr(linha),'Y'+inttostr(linha)] do
               begin
                 NumberFormat := '#.##0,00';
                 Value := PesBrutoCxMaster;
               end;
            end;
            { AA - COMPRIMENTO }
            with ExcelWorksheet.Range['AA'+ inttostr(linha),'AA'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,0';
              Value := embalagemprofundidade.AsFloat * 100;
            end;
            { AB - LARGURA }
            with ExcelWorksheet.Range['AB'+ inttostr(linha),'AB'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,0';
              Value := embalagemlargura.AsFloat * 100;
            end;
            { AC - ALTURA }
            with ExcelWorksheet.Range['AC'+ inttostr(linha),'AC'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,0';
              Value := embalagemaltura.AsFloat * 100;
            end;
            { AN - TOTAL VOLUME IN M³ }
            with ExcelWorksheet.Range['AN'+ inttostr(linha),'AN'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,0000';
            end;
            { AD - NET WEIGHT OF THE PRODUCT (GRAMS) }
            with ExcelWorksheet.Range['AD'+ inttostr(linha),'AD'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,00';
              Value := Produtospes_unitario.AsFloat * 1000;
            end;
            { Z - VOLUME EXPORT CARTON }
            with ExcelWorksheet.Range['Z'+ inttostr(linha),'Z'+inttostr(linha)] do
            begin
              NumberFormat := '#.##0,0000';
              FormulaR1C1 := '=ROUND(RC[1]*RC[2]*RC[3]/1000000,4)';
            end;
            { Repetir para somar ao peso dos pallets }
            if (Pedidosies_pallets.AsString = 'S') and (FieldByName('seq_pallet').IsNull) then
            begin
               { Peso Bruto (AG), Peso Líquido (AH) e Volume (AL) }
               ExcelWorkSheet.Cells.Item[Linha, 33].NumberFormat := '#.##0,00';
               ExcelWorkSheet.Cells.Item[Linha, 33].FormulaR1C1 := '=RC[-12]';
               ExcelWorkSheet.Cells.Item[Linha, 34].NumberFormat := '#.##0,00';
               ExcelWorkSheet.Cells.Item[Linha, 34].FormulaR1C1 := '=RC[-13]';
               ExcelWorkSheet.Cells.Item[Linha, 38].NumberFormat := '#.##0,000';
               ExcelWorkSheet.Cells.Item[Linha, 38].FormulaR1C1 := '=RC[-18]';
            end;
          end; { ITENS NORMAIS }
          with ExcelWorksheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
          begin
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
          end;
          with ExcelWorksheet.Range['L' + IntToStr(Linha),'AS' + IntToStr(Linha)] do
          begin
            HorizontalAlignment := xlCenter;
            VerticalAlignment := xlCenter;
          end;
          { Descrição do Produto }
          with ExcelWorkSheet.Range['H' + IntToStr(Linha),'H' + IntToStr(Linha)] do
          begin
            HorizontalAlignment := xlGeneral;
            VerticalAlignment   := xlTop;
            WrapText            := False;
            Orientation         := 0;
            AddIndent           := False;
            IndentLevel         := 0;
            ShrinkToFit         := False;
            ReadingOrder        := xlContext;
            MergeCells          := False;
          end;
          { Cores nas colunas }
          { amarela }
          with ExcelWorksheet.Range['K' + IntToStr(Linha),'N' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 6;
          end;
          with ExcelWorksheet.Range['P' + IntToStr(Linha),'P' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 6;
          end;
          with ExcelWorksheet.Range['R' + IntToStr(Linha),'R' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 6;
          end;
          with ExcelWorksheet.Range['X' + IntToStr(Linha),'Y' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 6;
          end;
          with ExcelWorksheet.Range['AA' + IntToStr(Linha),'AD' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 6;
          end;
          { verde }
          with ExcelWorksheet.Range['A' + IntToStr(Linha),'J' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 4;
          end;
          with ExcelWorksheet.Range['O' + IntToStr(Linha),'O' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 4;
          end;
          with ExcelWorksheet.Range['Q' + IntToStr(Linha),'Q' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 4;
          end;
          with ExcelWorksheet.Range['T' + IntToStr(Linha),'W' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 4;
          end;
          with ExcelWorksheet.Range['Z' + IntToStr(Linha),'Z' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 4;
          end;
          { roxa }
          with ExcelWorksheet.Range['S' + IntToStr(Linha),'S' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 7;
          end;
          { alaranjado }
          with ExcelWorksheet.Range['AE' + IntToStr(Linha),'AL' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 45;
          end;
          { verde-claro }
          with ExcelWorksheet.Range['AM' + IntToStr(Linha),'AU' + IntToStr(Linha)] do
          begin
            Interior.ColorIndex := 35;
          end;
          {bordas desde o cabeçalho até ultima linha}
          with ExcelWorkSheet.Range['A' + IntToStr(Linha),'AU' + IntToStr(Linha)] do
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

          Next;

         { mesclar células de embalagens especiais }
         if (FieldByName('seq_emb_esp').AsInteger <> SeqEmbEsp) or (EOF) then
         begin
          if (SeqEmbEsp > 0) then
          begin
             with ExcelWorkSheet.Range['T'+IntToStr(LinIniEmbEsp),'T'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 4;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             with ExcelWorkSheet.Range['U'+IntToStr(LinIniEmbEsp),'U'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 4;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             with ExcelWorkSheet.Range['W'+IntToStr(LinIniEmbEsp),'W'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 4;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             with ExcelWorkSheet.Range['X'+IntToStr(LinIniEmbEsp),'X'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 6;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             with ExcelWorkSheet.Range['Y'+IntToStr(LinIniEmbEsp),'Y'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 6;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             with ExcelWorkSheet.Range['Z'+IntToStr(LinIniEmbEsp),'Z'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 4;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             with ExcelWorkSheet.Range['AA'+IntToStr(LinIniEmbEsp),'AA'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 6;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             with ExcelWorkSheet.Range['AB'+IntToStr(LinIniEmbEsp),'AB'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 6;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             with ExcelWorkSheet.Range['AC'+IntToStr(LinIniEmbEsp),'AC'+IntToStr(Linha)] do
             begin
               MergeCells := True;
               Interior.ColorIndex := 6;
               HorizontalAlignment := xlCenter;
               VerticalAlignment := xlCenter;
               WrapText := True;
               ShrinkToFit := False;
             end;
             if (SeqPallet = 0) then
             begin
                with ExcelWorkSheet.Range['AE'+IntToStr(LinIniEmbEsp),'AE'+IntToStr(Linha)] do
                begin
                  MergeCells := True;
                  Interior.ColorIndex := 6;
                  HorizontalAlignment := xlCenter;
                  VerticalAlignment := xlCenter;
                  WrapText := True;
                  ShrinkToFit := False;
                end;
                with ExcelWorkSheet.Range['AF'+IntToStr(LinIniEmbEsp),'AF'+IntToStr(Linha)] do
                begin
                  MergeCells := True;
                  Interior.ColorIndex := 6;
                  HorizontalAlignment := xlCenter;
                  VerticalAlignment := xlCenter;
                  WrapText := True;
                  ShrinkToFit := False;
                end;
                with ExcelWorkSheet.Range['AG'+IntToStr(LinIniEmbEsp),'AG'+IntToStr(Linha)] do
                begin
                  MergeCells := True;
                  Interior.ColorIndex := 6;
                  HorizontalAlignment := xlCenter;
                  VerticalAlignment := xlCenter;
                  WrapText := True;
                  ShrinkToFit := False;
                end;
                with ExcelWorkSheet.Range['AH'+IntToStr(LinIniEmbEsp),'AH'+IntToStr(Linha)] do
                begin
                  MergeCells := True;
                  Interior.ColorIndex := 6;
                  HorizontalAlignment := xlCenter;
                  VerticalAlignment := xlCenter;
                  WrapText := True;
                  ShrinkToFit := False;
                end;
                with ExcelWorkSheet.Range['AI'+IntToStr(LinIniEmbEsp),'AI'+IntToStr(Linha)] do
                begin
                  MergeCells := True;
                  Interior.ColorIndex := 6;
                  HorizontalAlignment := xlCenter;
                  VerticalAlignment := xlCenter;
                  WrapText := True;
                  ShrinkToFit := False;
                end;
                with ExcelWorkSheet.Range['AJ'+IntToStr(LinIniEmbEsp),'AJ'+IntToStr(Linha)] do
                begin
                  MergeCells := True;
                  Interior.ColorIndex := 6;
                  HorizontalAlignment := xlCenter;
                  VerticalAlignment := xlCenter;
                  WrapText := True;
                  ShrinkToFit := False;
                end;
                with ExcelWorkSheet.Range['AK'+IntToStr(LinIniEmbEsp),'AK'+IntToStr(Linha)] do
                begin
                  MergeCells := True;
                  Interior.ColorIndex := 6;
                  HorizontalAlignment := xlCenter;
                  VerticalAlignment := xlCenter;
                  WrapText := True;
                  ShrinkToFit := False;
                end;
                with ExcelWorkSheet.Range['AL'+IntToStr(LinIniEmbEsp),'AL'+IntToStr(Linha)] do
                begin
                  MergeCells := True;
                  Interior.ColorIndex := 6;
                  HorizontalAlignment := xlCenter;
                  VerticalAlignment := xlCenter;
                  WrapText := True;
                  ShrinkToFit := False;
                end;
             end;
          end;
          SeqEmbEsp := FieldByName('seq_emb_esp').AsInteger;
          LinIniEmbEsp := Linha + 1;
         end;
         { mesclar células de pallets }
         if (Pedidosies_pallets.AsString = 'S') then
         begin
           if (FieldByname('seq_pallet').AsInteger <> SeqPallet) or (EOF) then
           begin
               if (SeqPallet > 0) then
               begin
                  with ExcelWorkSheet.Range['AE'+IntToStr(LinIniPallet),'AE'+IntToStr(Linha)] do
                  begin
                    MergeCells := True;
                    Interior.ColorIndex := 0;
                    HorizontalAlignment := xlCenter;
                    VerticalAlignment := xlCenter;
                    WrapText := True;
                    ShrinkToFit := False;
                  end;
                  with ExcelWorkSheet.Range['AF'+IntToStr(LinIniPallet),'AF'+IntToStr(Linha)] do
                  begin
                    MergeCells := True;
                    Interior.ColorIndex := 0;
                    HorizontalAlignment := xlCenter;
                    VerticalAlignment := xlCenter;
                    WrapText := True;
                    ShrinkToFit := False;
                  end;
                  with ExcelWorkSheet.Range['AG'+IntToStr(LinIniPallet),'AG'+IntToStr(Linha)] do
                  begin
                    MergeCells := True;
                    Interior.ColorIndex := 0;
                    HorizontalAlignment := xlCenter;
                    VerticalAlignment := xlCenter;
                    WrapText := True;
                    ShrinkToFit := False;
                  end;
                  with ExcelWorkSheet.Range['AH'+IntToStr(LinIniPallet),'AH'+IntToStr(Linha)] do
                  begin
                    MergeCells := True;
                    Interior.ColorIndex := 0;
                    HorizontalAlignment := xlCenter;
                    VerticalAlignment := xlCenter;
                    WrapText := True;
                    ShrinkToFit := False;
                  end;
                  with ExcelWorkSheet.Range['AI'+IntToStr(LinIniPallet),'AI'+IntToStr(Linha)] do
                  begin
                    MergeCells := True;
                    Interior.ColorIndex := 0;
                    HorizontalAlignment := xlCenter;
                    VerticalAlignment := xlCenter;
                    WrapText := True;
                    ShrinkToFit := False;
                  end;
                  with ExcelWorkSheet.Range['AJ'+IntToStr(LinIniPallet),'AJ'+IntToStr(Linha)] do
                  begin
                    MergeCells := True;
                    Interior.ColorIndex := 0;
                    HorizontalAlignment := xlCenter;
                    VerticalAlignment := xlCenter;
                    WrapText := True;
                    ShrinkToFit := False;
                  end;
                  with ExcelWorkSheet.Range['AK'+IntToStr(LinIniPallet),'AK'+IntToStr(Linha)] do
                  begin
                   MergeCells := True;
                   Interior.ColorIndex := 0;
                   HorizontalAlignment := xlCenter;
                   VerticalAlignment := xlCenter;
                   WrapText := True;
                   ShrinkToFit := False;
                  end;
                  with ExcelWorkSheet.Range['AL'+IntToStr(LinIniPallet),'AL'+IntToStr(Linha)] do
                  begin
                   MergeCells := True;
                   Interior.ColorIndex := 0;
                   HorizontalAlignment := xlCenter;
                   VerticalAlignment := xlCenter;
                   WrapText := True;
                   ShrinkToFit := False;
                  end;
                  { alternar cores entre as embalagens }
                  if (fPallet) then xlCorPallet := 4 else xlCorPallet := 6;
                  fPallet := Not(fPallet);
                  with ExcelWorkSheet.Range['A'+IntToStr(LinIniPallet),'AL'+IntToStr(Linha)] do
                  begin
                    Interior.ColorIndex := xlCorPallet;
                  end;

                  end;
                  SeqPallet := FieldByName('seq_pallet').AsInteger;
                  LinIniPallet := Linha + 1;
               end;
         end; { ies_pallet = 'S' }

         Inc(Linha);

        end; { Produtos }
      end;
      Next;
    end; { Pedidos }
  end;

  { TOTAIS }
  Inc(Linha);
  ExcelWorksheet.Range['H'+ inttostr(linha),'H'+inttostr(linha)].Value := 'TOTAL : ';

  { Q - TOTAL US$ }
  with ExcelWorksheet.Range['Q'+ inttostr(linha),'Q'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(Q7:Q'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { S - TOTAL US$ EXPECIAL }
  with ExcelWorksheet.Range['S'+ inttostr(linha),'S'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(S7:S'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { T - VOLUME }
  with ExcelWorksheet.Range['T'+ inttostr(linha),'T'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=ROUND(SUM(T7:T'+IntTostr(Linha-1)+'),2)';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { U - PESO BRUTO }
  with ExcelWorksheet.Range['U'+ inttostr(linha),'U'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(U7:U'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { V - PESO LÍQUIDO }
  with ExcelWorksheet.Range['V'+ inttostr(linha),'V'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(V7:V'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { W - QUANTIDADE DE CAIXAS DE EXPORTAÇÃO }
  with ExcelWorksheet.Range['W'+ inttostr(linha),'W'+inttostr(linha)] do
  begin
    NumberFormat := '#.##0,00';
    Formula := '=SUM(W7:W'+IntTostr(Linha-1)+')';
    Interior.ColorIndex := 0;
    Font.ColorIndex := 0;
  end;
  { Totais dos Pallets }
  if (Pedidosies_pallets.AsString = 'S') then
  begin
     { AE - QUANTIDADE }
     with ExcelWorksheet.Range['AE'+ inttostr(linha),'AE'+inttostr(linha)] do
     begin
       NumberFormat := '#.##0';
       Formula := '=SUM(AE7:AE'+IntTostr(Linha-1)+')';
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
     end;
     { AG - PESO BRUTO }
     with ExcelWorksheet.Range['AG'+ inttostr(linha),'AG'+inttostr(linha)] do
     begin
       NumberFormat := '#.##0,00';
       Formula := '=SUM(AG7:AG'+IntTostr(Linha-1)+')';
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
     end;
     { AH - PESO LÍQUIDO }
     with ExcelWorksheet.Range['AH'+ inttostr(linha),'AH'+inttostr(linha)] do
     begin
       NumberFormat := '#.##0,00';
       Formula := '=SUM(AH7:AH'+IntTostr(Linha-1)+')';
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
     end;
     { AL - VOLUME }
     with ExcelWorksheet.Range['AL'+ inttostr(linha),'AL'+inttostr(linha)] do
     begin
       NumberFormat := '#.##0,00';
       Formula := '=ROUND(SUM(AL7:AL'+IntTostr(Linha-1)+'),2)';
       Interior.ColorIndex := 0;
       Font.ColorIndex := 0;
     end;
  end;
  { Mostrar/Esconder colunas para Pallets Packages }
  with ExcelWorksheet.Range['AE' + IntToStr(Linha),'AL' + IntToStr(Linha)] do
  begin
    if (rgPallets.ItemIndex = 0) then EntireColumn.Hidden := False
    else EntireColumn.Hidden := True;
  end;
  { congelar painéis }
  ExcelWorkSheet.Range['E7','E7'].Select;
  ExcelApplication.ActiveWindow.FreezePanes := True;
  { Salvar Planilha Gerada e Fechar o Excel }
  ExcelApplication.ActiveWorkbook.SaveAs(FileName,xlNormal,'','',false,false,xlNochange,false,xlUserResolution,False,EmptyParam,0);
  FecharExcel;
  btnAbrir.Enabled := True;
  Screen.Cursor := crDefault;
  cbInspecao.State := cbUnchecked;

  { finalizar progress bar }
  btnGerar.Enabled := True;
  Ani.Terminate;
end;                                                                                

procedure Tfr_Pendentes_Embarque.actAbrirExecute(Sender: TObject);
begin
  { Abrir a Planilha Gerada Anteriormente }
  AbrirPlanilha(FileName);
end;

procedure Tfr_Pendentes_Embarque.PedidosAfterScroll(DataSet: TDataSet);
begin
  { Produtos Pendentes de Embarque }
  with Produtos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select a."seq_pkl", a."seq_emb_esp", a."ies_emb_esp",                                                                      ');
    SQL.Add('       a."cod_empresa", a."num_pedido", a."cod_produto",                                                                   ');
    SQL.Add('       a."num_sequencia",b."den_produto_det",                                                                              ');
    SQL.Add('       a."qtd_produto", a."qtd_pendente", a."vlr_unitario", a."vlr_unitario_esp", a."vlr_liquido",                         ');
    SQL.Add('       a."qtd_export_box",  a."pes_bruto", a."pes_liquido", a."vol_caixas",                                                ');
    SQL.Add('       a."un_cx_master", c."sigla_i", b."pes_unitario", a."dat_inspecao", a."txt_status_producao", a."ies_result_inspecao",');
    SQL.Add('       a."seq_pallet", a."qtd_pallet", a."pes_bruto_pallet", a."pes_liquido_pallet",                                       ');
    SQL.Add('       a."altura_pallet", a."largura_pallet", a."comprimento_pallet", a."volume_pallet", a."pes_pallet_vazio"              ');
    SQL.Add('from "pedido_produto" a, "produto" b, "medida" c                                                                           ');
    SQL.Add('where a."cod_empresa" = :cod_empresa                                                                                       ');
    SQL.Add('  and a."num_pedido" = :num_pedido                                                                                         ');
    SQL.Add('  and a."qtd_pendente" > 0                                                                                                 ');
    if (cbInspecao.Checked) then
       SQL.Add('  and a."ies_result_inspecao" <> ''0''                                                                                  ');
    SQL.Add('  and b."cod_empresa" = a."cod_empresa"                                                                                    ');
    SQL.Add('  and b."cod_produto" = a."cod_produto"                                                                                    ');
    SQL.Add('  and c."cod_uni_medida" = b."cod_uni_medida"                                                                              ');
    SQL.Add('order by "ies_result_inspecao" descending, "seq_pkl"                                                                       ');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('num_pedido').Value := Pedidosnum_pedido.AsLargeInt;
    Open;
  end;
end;

procedure Tfr_Pendentes_Embarque.AbrirExcel(Caminho: String);
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


Procedure Tfr_Pendentes_Embarque.FecharExcel;
begin
  { caso esteja fechada, evita fechar novamente para não gerar erro }
  if Not(Assigned(ExcelApplication)) then Exit;
  ExcelWorkSheet.Disconnect;
  ExcelApplication.Quit;
  ExcelApplication.Disconnect;
  Screen.Cursor := crDefault;
end;

Procedure Tfr_Pendentes_Embarque.AbrirPlanilha(FileName: String);
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

procedure Tfr_Pendentes_Embarque.ProdutosAfterScroll(DataSet: TDataSet);
begin
  with embalagem do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := trim(Produtoscod_produto.AsString);
    Open;
  end;
end;

end.
