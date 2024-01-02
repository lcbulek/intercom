object frmProductionList: TfrmProductionList
  Left = 754
  Top = 265
  HelpType = htKeyword
  HelpKeyword = '059'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Production List'
  ClientHeight = 376
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 4
    Top = 126
    Width = 178
    Height = 13
    Caption = 'Faturas Importadas da Production List'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 412
    Height = 86
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 9
      Width = 37
      Height = 13
      Caption = 'Clientes'
    end
    object Label9: TLabel
      Left = 4
      Top = 47
      Width = 65
      Height = 13
      Caption = 'Fornecedores'
    end
    object dbcClientes: TJvDBLookupCombo
      Left = 4
      Top = 23
      Width = 400
      Height = 21
      DropDownCount = 40
      DisplayAllFields = True
      DisplayEmpty = '** Escolha um Cliente **'
      EmptyValue = '0'
      LookupField = 'cod_cliente'
      LookupDisplay = 'cod_cliente'
      LookupSource = ds_Clientes
      TabOrder = 0
      OnChange = dbcClientesChange
    end
    object dbcFornecedores: TJvDBLookupCombo
      Left = 4
      Top = 61
      Width = 400
      Height = 21
      DropDownCount = 40
      DisplayAllFields = True
      DisplayEmpty = '** Escolha um Fornecedor **'
      EmptyValue = '0'
      LookupField = 'cod_fornecedor'
      LookupDisplay = 'raz_social_reduz'
      LookupSource = ds_Fornecedores
      TabOrder = 1
      OnChange = dbcFornecedoresChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 412
    Height = 44
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 7
    object lbProcess: TLabel
      Left = 8
      Top = 16
      Width = 353
      Height = 13
      AutoSize = False
      Color = clInfoBk
      ParentColor = False
    end
    object ToolBar3: TToolBar
      Left = 368
      Top = 2
      Width = 46
      Height = 40
      Align = alRight
      AutoSize = True
      BorderWidth = 2
      ButtonHeight = 33
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Color = clBtnFace
      EdgeBorders = []
      EdgeInner = esNone
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -8
      Font.Name = 'MS Serif'
      Font.Style = []
      Images = dmConnection.ImageList
      Indent = 3
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      object ToolButton1: TToolButton
        Left = 3
        Top = 0
        Action = dmConnection.acClose
        AutoSize = True
      end
    end
  end
  object btnAbrir: TBitBtn
    Left = 134
    Top = 293
    Width = 127
    Height = 33
    Action = actAbrir
    Caption = 'Abrir sem Processar'
    TabOrder = 3
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000FFFFFF000066000000660000006600000066000000660000FFFFFF000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF0000660000FFFFFF0000660000006600000066
      0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000066000000660000006600000066
      0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00006600000066000000660000006600000066
      000000660000FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object btnImportar: TBitBtn
    Left = 4
    Top = 293
    Width = 127
    Height = 33
    Action = actImportar
    Caption = 'Importar e Processar'
    TabOrder = 2
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000FFFFFF000066000000660000006600000066000000660000FFFFFF000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF0000660000FFFFFF0000660000006600000066
      0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000066000000660000006600000066
      0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00006600000066000000660000006600000066
      000000660000FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 293
    Width = 145
    Height = 33
    Action = actFaturar
    Caption = 'Faturar e Atualizar Excel'
    TabOrder = 5
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF004231
      310042313100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008C52
      18006B311800393931004231310042313100FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B552
      1800CE734200C6946300AD420000843108004A3121004231310042313100FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C663
      1000CE845A00FFE7C600FFE7C600FFE7BD00F7BD8400C6733100A53900006B31
      180042313100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C663
      1000D6AD8C00FFE7CE00FFE7C600FFDEB500FFDEB500FFDEB500FFBD7300E7A5
      6B004A312100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C673
      2900EFBD9C00FFEFD600FFE7CE004AB5CE00FFE7BD00FFDEB500FFB53900E7A5
      6B0042313100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CE73
      2100E7CEBD00FFF7DE00ADD6DE0018A5CE00F7DECE00FFBD7300CEBDA500DE94
      520039393100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0063636300CE73
      2100FFF7E700B5DEDE004AB5CE00FFE7CE004AB5CE00E7CEBD0073737300FFDE
      B500DE8C39008C5A210042313100FF00FF00FF00FF00FF00FF0063636300CE73
      2100FFF7EF00FFF7EF00FFF7E700FFF7DE00089CCE00FFE7CE00FFE7C600DE8C
      3100FFDEB500FFE7C600DE9452008C5A210042313100FF00FF0063636300C663
      1000FFFFF700FFF7EF00FFF7EF00FFF7E70084C6D600D6DECE00FFE7CE00D68C
      5A005A423100DE8C3100EFB58400F7F7EF00104AD6004A4A520063636300BD52
      0000FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7E70018A5CE00FFEFD600D68C
      5A0039394200FF00FF00FF00FF002952D6002952D600FF00FF0063636300BD52
      0000FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF0031ADCE00FFEFDE00CE73
      42004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0063636300BD52
      0000CE845A00E7CEBD00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00CE73
      42004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0063636300C65A
      0000C65A0000C65A0000C65A0000BD520000BD520000CE734200D6AD8C00C673
      31004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0063636300EFA5
      5A00EFC69C00F7B56B00DE8C3900D66B0800C65A0000C65A0000CE630000CE63
      000052525200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00636363006363630063636300EFA55A00C6AD7B00D6A5
      630063636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object dbgFaturas: TDBGridCheck
    Left = 4
    Top = 142
    Width = 399
    Height = 141
    DataSource = dsFaturasNovasPrl
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 16
    TitleRowHeight = 17
    BoolFields.Strings = (
      'ies_faturar')
    Columns = <
      item
        Expanded = False
        FieldName = 'num_fatura'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_liquido'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_liquido_esp'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ies_faturar'
        Width = 38
        Visible = True
      end>
  end
  object btnGerar: TBitBtn
    Left = 276
    Top = 90
    Width = 127
    Height = 33
    Action = actGerar
    Caption = 'Gerar Planilhas'
    TabOrder = 6
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF000066
      0000FFFFFF000066000000660000006600000066000000660000FFFFFF000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF0000660000FFFFFF0000660000006600000066
      0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000066000000660000006600000066
      0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00006600000066000000660000006600000066
      000000660000FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
      00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000066000000660000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object rgPallets: TRadioGroup
    Left = 4
    Top = 92
    Width = 229
    Height = 32
    Caption = 'Mostrar colunas de Pallets'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 1
    TabStop = True
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 353
    Top = 10
    object actImportar: TAction
      Caption = 'Importar e Processar'
      ImageIndex = 235
      OnExecute = actImportarExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir sem Processar'
      ImageIndex = 235
      OnExecute = actAbrirExecute
    end
    object actFaturar: TAction
      Caption = 'Faturar e Atualizar Excel'
      Enabled = False
      ImageIndex = 159
      OnExecute = actFaturarExecute
    end
    object actGerar: TAction
      Caption = 'Gerar Planilhas'
      ImageIndex = 235
      OnExecute = actGerarExecute
    end
  end
  object Prod_List: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = Prod_ListAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list"'
      'where'
      '  "prod_list"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "prod_list"."cod_fornecedor" = :"OLD_cod_fornecedor"')
    InsertSQL.Strings = (
      'insert into "prod_list"'
      
        '  ("prod_list"."cod_empresa", "prod_list"."cod_cliente", "prod_l' +
        'ist"."cod_fornecedor", '
      
        '   "prod_list"."num_prod_list", "prod_list"."ies_gerar", "prod_l' +
        'ist"."ies_pallets", '
      '   "prod_list"."ies_plan_default")'
      'values'
      
        '  (:"cod_empresa", :"cod_cliente", :"cod_fornecedor", :"num_prod' +
        '_list", '
      '   :"ies_gerar", :"ies_pallets", :"ies_plan_default")')
    RefreshSQL.Strings = (
      'Select '
      '  "prod_list"."cod_empresa",'
      '  "prod_list"."cod_cliente",'
      '  "prod_list"."cod_fornecedor",'
      '  "prod_list"."num_prod_list",'
      '  "prod_list"."ies_gerar",'
      '  "prod_list"."ies_pallets",'
      '  "prod_list"."ies_plan_default"'
      'from "prod_list" '
      'where'
      '  "prod_list"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list"."cod_cliente" = :"cod_cliente" and'
      '  "prod_list"."cod_fornecedor" = :"cod_fornecedor"')
    SelectSQL.Strings = (
      'select * from "prod_list"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_cliente" = :cod_cliente'
      '  and "cod_fornecedor" = :cod_fornecedor')
    ModifySQL.Strings = (
      'update "prod_list"'
      'set'
      '  "prod_list"."cod_empresa" = :"cod_empresa",'
      '  "prod_list"."cod_cliente" = :"cod_cliente",'
      '  "prod_list"."cod_fornecedor" = :"cod_fornecedor",'
      '  "prod_list"."num_prod_list" = :"num_prod_list",'
      '  "prod_list"."ies_gerar" = :"ies_gerar",'
      '  "prod_list"."ies_pallets" = :"ies_pallets",'
      '  "prod_list"."ies_plan_default" = :"ies_plan_default"'
      'where'
      '  "prod_list"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "prod_list"."cod_fornecedor" = :"OLD_cod_fornecedor"')
    Left = 90
    Top = 107
    object Prod_Listcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Prod_Listcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"prod_list"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object Prod_Listcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"prod_list"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Prod_Listnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list"."num_prod_list"'
    end
    object Prod_Listies_gerar: TIBStringField
      FieldName = 'ies_gerar'
      Origin = '"prod_list"."ies_gerar"'
      FixedChar = True
      Size = 1
    end
    object Prod_Listies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"prod_list"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object Prod_Listies_plan_default: TSmallintField
      FieldName = 'ies_plan_default'
      Origin = '"prod_list"."ies_plan_default"'
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 90
    Top = 8
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 121
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 155
    Top = 8
  end
  object QrAux: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Left = 191
    Top = 76
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 24
    Top = 73
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object parametro_comercialcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"parametro_comercial"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object parametro_comercialies_modelo: TIntegerField
      FieldName = 'ies_modelo'
      Origin = '"parametro_comercial"."ies_modelo"'
    end
    object parametro_comercialmod_romaneio: TBlobField
      FieldName = 'mod_romaneio'
      Origin = '"parametro_comercial"."mod_romaneio"'
      Size = 8
    end
    object parametro_comercialcod_tip_embarque: TSmallintField
      FieldName = 'cod_tip_embarque'
      Origin = '"parametro_comercial"."cod_tip_embarque"'
    end
    object parametro_comercialdir_planilhas: TIBStringField
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
    end
    object parametro_comercialmod_ship_list: TBlobField
      FieldName = 'mod_ship_list'
      Origin = '"parametro_comercial"."mod_ship_list"'
      Size = 8
    end
    object parametro_comercialdias_inspecao: TSmallintField
      FieldName = 'dias_inspecao'
      Origin = '"parametro_comercial"."dias_inspecao"'
    end
    object parametro_comercialult_num_prod_list: TIntegerField
      FieldName = 'ult_num_prod_list'
      Origin = '"parametro_comercial"."ult_num_prod_list"'
    end
  end
  object ProdutoEmb: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = ProdutoEmbAfterOpen
    AfterPost = ProdutoEmbAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "produto"'
      'where'
      '  "produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "produto"'
      
        '  ("produto"."cod_empresa", "produto"."cod_produto", "produto"."' +
        'pes_unitario", '
      '   "produto"."obs_peso_unitario", "produto"."dat_cad_peso")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"pes_unitario", :"obs_peso_u' +
        'nitario", '
      '   :"dat_cad_peso")')
    RefreshSQL.Strings = (
      'Select * from "produto" '
      'where'
      '  "produto"."cod_empresa" = :"cod_empresa" and'
      '  "produto"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "cod_produto", "pes_unitario", "obs_peso_u' +
        'nitario", "dat_cad_peso"'
      'from "produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "produto"'
      'set'
      '  "produto"."pes_unitario" = :"pes_unitario",'
      '  "produto"."obs_peso_unitario" = :"obs_peso_unitario",'
      '  "produto"."dat_cad_peso" = :"dat_cad_peso"'
      'where'
      '  "produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto"."cod_produto" = :"OLD_cod_produto"')
    Left = 26
    Top = 262
    object ProdutoEmbcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutoEmbcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ProdutoEmbpes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
    object ProdutoEmbobs_peso_unitario: TIBStringField
      FieldName = 'obs_peso_unitario'
      Origin = '"produto"."obs_peso_unitario"'
      Size = 255
    end
    object ProdutoEmbdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"produto"."dat_cad_peso"'
    end
  end
  object EmbalagemEmb: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = EmbalagemEmbAfterPost
    BeforePost = EmbalagemEmbBeforePost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "embalagem"'
      
        '  ("embalagem"."cod_empresa", "embalagem"."cod_produto", "embala' +
        'gem"."peso_unitario", '
      
        '   "embalagem"."altura", "embalagem"."largura", "embalagem"."pro' +
        'fundidade", '
      
        '   "embalagem"."volume", "embalagem"."area", "embalagem"."qtd_ma' +
        'ster", '
      
        '   "embalagem"."qtd_inner", "embalagem"."observacao", "embalagem' +
        '"."dat_cadastro", '
      
        '   "embalagem"."dat_cad_dimensoes", "embalagem"."dat_cad_peso", ' +
        '"embalagem"."dat_cad_master", '
      
        '   "embalagem"."dat_cad_inner", "embalagem"."obs_caixas", "embal' +
        'agem"."pes_bruto_cx")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"peso_unitario", :"altura", ' +
        ':"largura", '
      
        '   :"profundidade", :"volume", :"area", :"qtd_master", :"qtd_inn' +
        'er", :"observacao", '
      
        '   :"dat_cadastro", :"dat_cad_dimensoes", :"dat_cad_peso", :"dat' +
        '_cad_master", '
      '   :"dat_cad_inner", :"obs_caixas", :"pes_bruto_cx")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "embalagem" '
      'where'
      '  "embalagem"."cod_empresa" = :"cod_empresa" and'
      '  "embalagem"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select *'
      'from "embalagem"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "embalagem"'
      'set'
      '  "embalagem"."cod_empresa" = :"cod_empresa",'
      '  "embalagem"."cod_produto" = :"cod_produto",'
      '  "embalagem"."peso_unitario" = :"peso_unitario",'
      '  "embalagem"."altura" = :"altura",'
      '  "embalagem"."largura" = :"largura",'
      '  "embalagem"."profundidade" = :"profundidade",'
      '  "embalagem"."volume" = :"volume",'
      '  "embalagem"."area" = :"area",'
      '  "embalagem"."qtd_master" = :"qtd_master",'
      '  "embalagem"."qtd_inner" = :"qtd_inner",'
      '  "embalagem"."observacao" = :"observacao",'
      '  "embalagem"."dat_cadastro" = :"dat_cadastro",'
      '  "embalagem"."dat_cad_dimensoes" = :"dat_cad_dimensoes",'
      '  "embalagem"."dat_cad_peso" = :"dat_cad_peso",'
      '  "embalagem"."dat_cad_master" = :"dat_cad_master",'
      '  "embalagem"."dat_cad_inner" = :"dat_cad_inner",'
      '  "embalagem"."obs_caixas" = :"obs_caixas",'
      '  "embalagem"."pes_bruto_cx" = :"pes_bruto_cx"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    Left = 57
    Top = 262
    object EmbalagemEmbcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EmbalagemEmbcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object EmbalagemEmbpeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
    end
    object EmbalagemEmbaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmblargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmbprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmbvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      Precision = 18
      Size = 4
    end
    object EmbalagemEmbarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      Precision = 18
      Size = 4
    end
    object EmbalagemEmbqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmbqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmbobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem"."observacao"'
      Size = 255
    end
    object EmbalagemEmbdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem"."dat_cadastro"'
    end
    object EmbalagemEmbdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem"."dat_cad_dimensoes"'
    end
    object EmbalagemEmbdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem"."dat_cad_peso"'
    end
    object EmbalagemEmbdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem"."dat_cad_master"'
    end
    object EmbalagemEmbdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem"."dat_cad_inner"'
    end
    object EmbalagemEmbobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem"."obs_caixas"'
      Size = 255
    end
    object EmbalagemEmbpes_bruto_cx: TIBBCDField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem"."pes_bruto_cx"'
      Precision = 18
      Size = 2
    end
  end
  object Embalagem_Hist: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = Embalagem_HistAfterPost
    OnNewRecord = Embalagem_HistNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem_hist"'
      'where'
      '  "embalagem_hist"."sequencia" = :"OLD_sequencia"')
    InsertSQL.Strings = (
      'insert into "embalagem_hist"'
      
        '  ("embalagem_hist"."sequencia", "embalagem_hist"."cod_empresa",' +
        ' "embalagem_hist"."cod_produto", '
      
        '   "embalagem_hist"."peso_unitario", "embalagem_hist"."altura", ' +
        '"embalagem_hist"."largura", '
      
        '   "embalagem_hist"."profundidade", "embalagem_hist"."volume", "' +
        'embalagem_hist"."area", '
      
        '   "embalagem_hist"."qtd_master", "embalagem_hist"."qtd_inner", ' +
        '"embalagem_hist"."observacao", '
      
        '   "embalagem_hist"."dat_cadastro", "embalagem_hist"."dat_cad_di' +
        'mensoes", '
      
        '   "embalagem_hist"."dat_cad_peso", "embalagem_hist"."dat_cad_ma' +
        'ster", '
      
        '   "embalagem_hist"."dat_cad_inner", "embalagem_hist"."obs_caixa' +
        's",'
      '   "embalagem_hist"."pes_bruto_cx")'
      'values'
      
        '  (:"sequencia", :"cod_empresa", :"cod_produto", :"peso_unitario' +
        '", :"altura", '
      
        '   :"largura", :"profundidade", :"volume", :"area", :"qtd_master' +
        '", :"qtd_inner", '
      
        '   :"observacao", :"dat_cadastro", :"dat_cad_dimensoes", :"dat_c' +
        'ad_peso", '
      
        '   :"dat_cad_master", :"dat_cad_inner", :"obs_caixas", :"pes_bru' +
        'to_cx")')
    RefreshSQL.Strings = (
      'Select *'
      'from "embalagem_hist" '
      'where'
      '  "embalagem_hist"."sequencia" = :"sequencia"')
    SelectSQL.Strings = (
      'select * from "embalagem_hist"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto'
      'order by "dat_cadastro" desc')
    ModifySQL.Strings = (
      'update "embalagem_hist"'
      'set'
      '  "embalagem_hist"."sequencia" = :"sequencia",'
      '  "embalagem_hist"."cod_empresa" = :"cod_empresa",'
      '  "embalagem_hist"."cod_produto" = :"cod_produto",'
      '  "embalagem_hist"."peso_unitario" = :"peso_unitario",'
      '  "embalagem_hist"."altura" = :"altura",'
      '  "embalagem_hist"."largura" = :"largura",'
      '  "embalagem_hist"."profundidade" = :"profundidade",'
      '  "embalagem_hist"."volume" = :"volume",'
      '  "embalagem_hist"."area" = :"area",'
      '  "embalagem_hist"."qtd_master" = :"qtd_master",'
      '  "embalagem_hist"."qtd_inner" = :"qtd_inner",'
      '  "embalagem_hist"."observacao" = :"observacao",'
      '  "embalagem_hist"."dat_cadastro" = :"dat_cadastro",'
      '  "embalagem_hist"."dat_cad_dimensoes" = :"dat_cad_dimensoes",'
      '  "embalagem_hist"."dat_cad_peso" = :"dat_cad_peso",'
      '  "embalagem_hist"."dat_cad_master" = :"dat_cad_master",'
      '  "embalagem_hist"."dat_cad_inner" = :"dat_cad_inner",'
      '  "embalagem_hist"."obs_caixas" = :"obs_caixas",'
      '  "embalagem_hist"."pes_bruto_cx" = :"pes_bruto_cx"'
      'where'
      '  "embalagem_hist"."sequencia" = :"OLD_sequencia"')
    Left = 93
    Top = 262
    object Embalagem_Histsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = '"embalagem_hist"."sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Embalagem_Histdat_cadastro: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      DisplayWidth = 10
      FieldName = 'dat_cadastro'
      Origin = '"embalagem_hist"."dat_cadastro"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Embalagem_Histaltura: TIBBCDField
      DisplayLabel = 'Altura'
      DisplayWidth = 10
      FieldName = 'altura'
      Origin = '"embalagem_hist"."altura"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histlargura: TIBBCDField
      DisplayLabel = 'Largura'
      FieldName = 'largura'
      Origin = '"embalagem_hist"."largura"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histprofundidade: TIBBCDField
      DisplayLabel = 'Profundidade'
      FieldName = 'profundidade'
      Origin = '"embalagem_hist"."profundidade"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem_hist"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object Embalagem_Histcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"embalagem_hist"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 15
    end
    object Embalagem_Histvolume: TIBBCDField
      DisplayLabel = 'Volume(m'#179')'
      FieldName = 'volume'
      Origin = '"embalagem_hist"."volume"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object Embalagem_Histarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem_hist"."area"'
      Visible = False
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object Embalagem_Histobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem_hist"."observacao"'
      Visible = False
      Size = 255
    end
    object Embalagem_Histpeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem_hist"."peso_unitario"'
      Visible = False
      DisplayFormat = '#,##0.00000'
    end
    object Embalagem_Histdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem_hist"."dat_cad_dimensoes"'
    end
    object Embalagem_Histdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem_hist"."dat_cad_peso"'
    end
    object Embalagem_Histdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem_hist"."dat_cad_master"'
    end
    object Embalagem_Histdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem_hist"."dat_cad_inner"'
    end
    object Embalagem_Histobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem_hist"."obs_caixas"'
      Size = 255
    end
    object Embalagem_Histqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem_hist"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem_hist"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histpes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem_hist"."pes_bruto_cx"'
    end
  end
  object Clientes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_cliente", "nom_cliente_reduz"'
      'from "cliente"'
      'where "cod_cliente" in (select "cod_cliente"'
      '                          from "usuario_cliente"'
      '                         where "login" = :login)'
      'order by 1')
    Left = 24
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end>
    object Clientescod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
  object ds_Clientes: TDataSource
    DataSet = Clientes
    Left = 55
    Top = 8
  end
  object Fornecedores: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select b."cod_fornecedor", c."raz_social_reduz"'
      'from "pedido" a, "pedido_complemento" b, "fornecedor" c'
      'where'
      '      a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido"  = a."num_pedido"'
      '  and c."cod_fornecedor" = b."cod_fornecedor"'
      'group by 1,2'
      'order by 2')
    Left = 24
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object Fornecedorescod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
    end
    object Fornecedoresraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Required = True
      Size = 30
    end
  end
  object ds_Fornecedores: TDataSource
    DataSet = Fornecedores
    Left = 56
    Top = 40
  end
  object pedido_produto: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = pedido_produtoAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido_produto"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "pedido_produto"'
      
        '  ("pedido_produto"."cod_empresa", "pedido_produto"."num_pedido"' +
        ', "pedido_produto"."num_sequencia", '
      
        '   "pedido_produto"."qtd_produto", "pedido_produto"."qtd_cancela' +
        'da", "pedido_produto"."qtd_romaneada", '
      
        '   "pedido_produto"."qtd_faturada", "pedido_produto"."qtd_penden' +
        'te", "pedido_produto"."vlr_unitario", '
      
        '   "pedido_produto"."vlr_unitario_esp", "pedido_produto"."vlr_li' +
        'quido", '
      
        '   "pedido_produto"."vlr_liquido_esp", "pedido_produto"."dat_ins' +
        'pecao", '
      
        '   "pedido_produto"."txt_status_producao", "pedido_produto"."ies' +
        '_result_inspecao", '
      
        '   "pedido_produto"."ies_caixa_fechada", "pedido_produto"."qtd_s' +
        'aldo", '
      '   "pedido_produto"."qtd_romanear")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"num_sequencia", :"qtd_produt' +
        'o", :"qtd_cancelada", '
      
        '   :"qtd_romaneada", :"qtd_faturada", :"qtd_pendente", :"vlr_uni' +
        'tario", '
      
        '   :"vlr_unitario_esp", :"vlr_liquido", :"vlr_liquido_esp", :"da' +
        't_inspecao", '
      
        '   :"txt_status_producao", :"ies_result_inspecao", :"ies_caixa_f' +
        'echada", '
      '   :"qtd_saldo", :"qtd_romanear")')
    RefreshSQL.Strings = (
      'Select '
      '  "pedido_produto"."cod_empresa",'
      '  "pedido_produto"."num_pedido",'
      '  "pedido_produto"."num_sequencia",'
      '  "pedido_produto"."cod_produto",'
      '  "pedido_produto"."qtd_produto",'
      '  "pedido_produto"."qtd_cancelada",'
      '  "pedido_produto"."qtd_romaneada",'
      '  "pedido_produto"."qtd_faturada",'
      '  "pedido_produto"."qtd_pendente",'
      '  "pedido_produto"."vlr_unitario",'
      '  "pedido_produto"."vlr_unitario_esp",'
      '  "pedido_produto"."dat_cadastro",'
      '  "pedido_produto"."ies_situacao",'
      '  "pedido_produto"."vlr_liquido",'
      '  "pedido_produto"."vlr_liquido_esp",'
      '  "pedido_produto"."qtd_export_box",'
      '  "pedido_produto"."qtd_inner_box",'
      '  "pedido_produto"."vol_caixas",'
      '  "pedido_produto"."pes_liquido",'
      '  "pedido_produto"."pes_bruto",'
      '  "pedido_produto"."dat_preco",'
      '  "pedido_produto"."un_cx_master",'
      '  "pedido_produto"."ies_emb_esp",'
      '  "pedido_produto"."obs_preco",'
      '  "pedido_produto"."obs_preco_esp",'
      '  "pedido_produto"."pct_comissao_f",'
      '  "pedido_produto"."pct_comissao_c",'
      '  "pedido_produto"."texto",'
      '  "pedido_produto"."txt_observacao",'
      '  "pedido_produto"."dat_inspecao",'
      '  "pedido_produto"."seq_emb_esp",'
      '  "pedido_produto"."seq_pallet",'
      '  "pedido_produto"."qtd_pallet",'
      '  "pedido_produto"."pes_bruto_pallet",'
      '  "pedido_produto"."pes_liquido_pallet",'
      '  "pedido_produto"."comprimento_pallet",'
      '  "pedido_produto"."largura_pallet",'
      '  "pedido_produto"."altura_pallet",'
      '  "pedido_produto"."volume_pallet",'
      '  "pedido_produto"."seq_pkl",'
      '  "pedido_produto"."num_seq_origem",'
      '  "pedido_produto"."pes_pallet_vazio",'
      '  "pedido_produto"."ies_erros",'
      '  "pedido_produto"."ies_colunas",'
      '  "pedido_produto"."txt_status_producao",'
      '  "pedido_produto"."ies_result_inspecao",'
      '  "pedido_produto"."ies_caixa_fechada",'
      '  "pedido_produto"."qtd_saldo",'
      '  "pedido_produto"."qtd_romanear",'
      '  "pedido_produto"."dat_upd_etd",'
      '  "pedido_produto"."etd_factory",'
      '  "pedido_produto"."etd_obs_cli",'
      '  "pedido_produto"."etd_obs_for"'
      'from "pedido_produto" '
      'where'
      '  "pedido_produto"."cod_empresa" = :"cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select a."cod_empresa", a."num_pedido", a."num_sequencia",'
      
        '       a."qtd_produto", a."qtd_cancelada", a."qtd_romaneada", a.' +
        '"qtd_faturada", a."qtd_pendente", '
      '       a."qtd_romanear", a."qtd_saldo",'
      
        '       a."qtd_export_box", a."qtd_inner_box", a."vol_caixas", a.' +
        '"pes_liquido", a."pes_bruto", a."ies_caixa_fechada",'
      
        '       a."vlr_unitario", a."vlr_unitario_esp", a."vlr_liquido", ' +
        'a."vlr_liquido_esp",'
      
        '       a."ies_result_inspecao", a."txt_status_producao", a."dat_' +
        'inspecao", a."obs_preco", a."obs_preco_esp", b."pes_unitario"'
      'from "pedido_produto" a, "produto" b'
      ' where a."cod_empresa" = :cod_empresa'
      '   and a."num_pedido" = :num_pedido'
      '   and a."num_sequencia" = :num_sequencia'
      '   and b."cod_empresa" = a."cod_empresa"'
      '   and b."cod_produto" = a."cod_produto"')
    ModifySQL.Strings = (
      'update "pedido_produto"'
      'set'
      '  "pedido_produto"."cod_empresa" = :"cod_empresa",'
      '  "pedido_produto"."num_pedido" = :"num_pedido",'
      '  "pedido_produto"."num_sequencia" = :"num_sequencia",'
      '  "pedido_produto"."qtd_produto" = :"qtd_produto",'
      '  "pedido_produto"."qtd_cancelada" = :"qtd_cancelada",'
      '  "pedido_produto"."qtd_romaneada" = :"qtd_romaneada",'
      '  "pedido_produto"."qtd_faturada" = :"qtd_faturada",'
      '  "pedido_produto"."qtd_pendente" = :"qtd_pendente",'
      '  "pedido_produto"."vlr_unitario" = :"vlr_unitario",'
      '  "pedido_produto"."vlr_unitario_esp" = :"vlr_unitario_esp",'
      '  "pedido_produto"."vlr_liquido" = :"vlr_liquido",'
      '  "pedido_produto"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "pedido_produto"."dat_inspecao" = :"dat_inspecao",'
      
        '  "pedido_produto"."txt_status_producao" = :"txt_status_producao' +
        '",'
      
        '  "pedido_produto"."ies_result_inspecao" = :"ies_result_inspecao' +
        '",'
      '  "pedido_produto"."ies_caixa_fechada" = :"ies_caixa_fechada",'
      '  "pedido_produto"."qtd_saldo" = :"qtd_saldo",'
      '  "pedido_produto"."qtd_romanear" = :"qtd_romanear"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 63
    Top = 74
    object pedido_produtocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_produtonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_produto"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pedido_produtonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pedido_produtoqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"pedido_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_cancelada: TIBBCDField
      FieldName = 'qtd_cancelada'
      Origin = '"pedido_produto"."qtd_cancelada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_romaneada: TIBBCDField
      FieldName = 'qtd_romaneada'
      Origin = '"pedido_produto"."qtd_romaneada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_faturada: TIBBCDField
      FieldName = 'qtd_faturada'
      Origin = '"pedido_produto"."qtd_faturada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"pedido_produto"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_saldo: TIBBCDField
      FieldName = 'qtd_saldo'
      Origin = '"pedido_produto"."qtd_saldo"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"pedido_produto"."qtd_export_box"'
    end
    object pedido_produtovol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"pedido_produto"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object pedido_produtopes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"pedido_produto"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object pedido_produtopes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"pedido_produto"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object pedido_produtoies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"pedido_produto"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object pedido_produtovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
    end
    object pedido_produtoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"pedido_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtovlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object pedido_produtovlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = '"pedido_produto"."vlr_unitario_esp"'
    end
    object pedido_produtoobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"pedido_produto"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtovlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido_produto"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object pedido_produtoies_result_inspecao: TIBStringField
      FieldName = 'ies_result_inspecao'
      Origin = '"pedido_produto"."ies_result_inspecao"'
      FixedChar = True
      Size = 1
    end
    object pedido_produtotxt_status_producao: TMemoField
      FieldName = 'txt_status_producao'
      Origin = '"pedido_produto"."txt_status_producao"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtodat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = '"pedido_produto"."dat_inspecao"'
    end
    object pedido_produtoqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"pedido_produto"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"pedido_produto"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object pedido_produtopes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
  end
  object ProxSequencia: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select MAX(a."num_sequencia") + 1 "prox_sequencia"'
      'from "pedido_produto" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido')
    Left = 157
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido'
        ParamType = ptUnknown
      end>
    object ProxSequenciaprox_sequencia: TLargeintField
      FieldName = 'prox_sequencia'
    end
  end
  object spr_calc_pedido: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_calc_pedido'
    Left = 191
    Top = 40
  end
  object prod_list_itens: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = prod_list_itensAfterDelete
    AfterPost = prod_list_itensAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      
        '  ("prod_list_itens"."cod_empresa", "prod_list_itens"."num_prod_' +
        'list", '
      
        '   "prod_list_itens"."num_sequencia", "prod_list_itens"."num_fat' +
        'ura", '
      
        '   "prod_list_itens"."num_nota_fiscal", "prod_list_itens"."num_s' +
        'eq_nf",'
      '"prod_list_itens"."num_pedido", '
      
        '   "prod_list_itens"."num_seq_pedido", "prod_list_itens"."num_pe' +
        'dido_for", '
      
        '   "prod_list_itens"."num_pedido_cli",  "prod_list_itens"."dat_e' +
        'missao",'
      '   "prod_list_itens"."cod_produto", '
      '   "prod_list_itens"."dat_ini_producao",'
      
        '   "prod_list_itens"."etd_factory",  "prod_list_itens"."dat_upd_' +
        'etd",'
      
        '   "prod_list_itens"."txt_status_producao", "prod_list_itens"."d' +
        'at_inspecao", '
      
        '   "prod_list_itens"."ies_result_inspecao", "prod_list_itens"."q' +
        'td_romanear", '
      
        '   "prod_list_itens"."qtd_confirmada", "prod_list_itens"."qtd_pe' +
        'ndente", '
      
        '   "prod_list_itens"."qtd_embarcada", "prod_list_itens"."preco_r' +
        'eal", '
      '"prod_list_itens"."vlr_liquido", '
      
        '   "prod_list_itens"."preco_esp", "prod_list_itens"."vlr_liquido' +
        '_esp", '
      
        '   "prod_list_itens"."vol_total", "prod_list_itens"."pes_bruto",' +
        ' '
      '"prod_list_itens"."pes_liquido", '
      
        '   "prod_list_itens"."qtd_caixas", "prod_list_itens"."un_master"' +
        ', '
      '"prod_list_itens"."pes_bruto_cx", '
      
        '   "prod_list_itens"."altura_cx", "prod_list_itens"."largura_cx"' +
        ', '
      '"prod_list_itens"."comprimento_cx", '
      
        '   "prod_list_itens"."volume_caixa", "prod_list_itens"."ies_caix' +
        'a_fechada", '
      
        '   "prod_list_itens"."pes_unitario", "prod_list_itens"."seq_pall' +
        'et", '
      '"prod_list_itens"."qtd_pallet", '
      
        '   "prod_list_itens"."pes_bruto_pallet", "prod_list_itens"."pes_' +
        'liquido_pallet", '
      
        '   "prod_list_itens"."comprimento_pallet", "prod_list_itens"."la' +
        'rgura_pallet", '
      
        '   "prod_list_itens"."altura_pallet", "prod_list_itens"."volume_' +
        'pallet", '
      
        '   "prod_list_itens"."pes_pallet_vazio", "prod_list_itens"."ies_' +
        'emb_esp", '
      
        '   "prod_list_itens"."seq_emb_esp", "prod_list_itens"."ies_erros' +
        '", '
      '"prod_list_itens"."ies_cadastro", '
      
        '   "prod_list_itens"."cal_preco_real", "prod_list_itens"."cal_vl' +
        'r_liquido", '
      
        '   "prod_list_itens"."cal_preco_esp", "prod_list_itens"."cal_vlr' +
        '_liquido_esp", '
      
        '   "prod_list_itens"."cal_vol_total", "prod_list_itens"."cal_pes' +
        '_bruto", '
      
        '   "prod_list_itens"."cal_pes_liquido", "prod_list_itens"."cal_q' +
        'td_caixas", '
      
        '   "prod_list_itens"."cal_volume_caixa", "prod_list_itens"."ies_' +
        'sit_fat",'
      
        '   "prod_list_itens"."ies_pallet", "prod_list_itens"."mesclar", ' +
        '"prod_list_itens"."seq_pkl", "prod_list_itens"."num_sequencia_or' +
        'g")'
      'values'
      
        '  (:"cod_empresa", :"num_prod_list", :"num_sequencia", :"num_fat' +
        'ura", :"num_nota_fiscal", :"num_seq_nf",'
      
        '   :"num_pedido", :"num_seq_pedido", :"num_pedido_for", :"num_pe' +
        'dido_cli", :"dat_emissao", :"cod_produto",'
      
        '   :"dat_ini_producao", :"etd_factory", :"dat_upd_etd", :"txt_st' +
        'atus_producao", :"dat_inspecao",'
      
        '   :"ies_result_inspecao", :"qtd_romanear", :"qtd_confirmada", :' +
        '"qtd_pendente", '
      
        '   :"qtd_embarcada", :"preco_real", :"vlr_liquido", :"preco_esp"' +
        ', :"vlr_liquido_esp", '
      
        '   :"vol_total", :"pes_bruto", :"pes_liquido", :"qtd_caixas", :"' +
        'un_master", '
      
        '   :"pes_bruto_cx", :"altura_cx", :"largura_cx", :"comprimento_c' +
        'x", :"volume_caixa", '
      
        '   :"ies_caixa_fechada", :"pes_unitario", :"seq_pallet", :"qtd_p' +
        'allet", '
      
        '   :"pes_bruto_pallet", :"pes_liquido_pallet", :"comprimento_pal' +
        'let", :"largura_pallet", '
      
        '   :"altura_pallet", :"volume_pallet", :"pes_pallet_vazio", :"ie' +
        's_emb_esp", '
      
        '   :"seq_emb_esp", :"ies_erros", :"ies_cadastro", :"cal_preco_re' +
        'al", :"cal_vlr_liquido", '
      
        '   :"cal_preco_esp", :"cal_vlr_liquido_esp", :"cal_vol_total", :' +
        '"cal_pes_bruto", '
      
        '   :"cal_pes_liquido", :"cal_qtd_caixas", :"cal_volume_caixa", :' +
        '"ies_sit_fat", :"ies_pallet", :"mesclar", :seq_pkl, :num_sequenc' +
        'ia_org)')
    RefreshSQL.Strings = (
      'Select *'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select * from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa",'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list",'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia",'
      '  "prod_list_itens"."num_fatura" = :"num_fatura",'
      '  "prod_list_itens"."num_nota_fiscal" = :"num_nota_fiscal",'
      '  "prod_list_itens"."num_seq_nf" = :"num_seq_nf",'
      '  "prod_list_itens"."num_pedido" = :"num_pedido",'
      '  "prod_list_itens"."num_seq_pedido" = :"num_seq_pedido",'
      '  "prod_list_itens"."num_pedido_for" = :"num_pedido_for",'
      '  "prod_list_itens"."num_pedido_cli" = :"num_pedido_cli",'
      '  "prod_list_itens"."dat_emissao" = :"dat_emissao",'
      '  "prod_list_itens"."cod_produto" = :"cod_produto",'
      '  "prod_list_itens"."dat_ini_producao" = :"dat_ini_producao",'
      '  "prod_list_itens"."etd_factory" = :"etd_factory",'
      '  "prod_list_itens"."dat_upd_etd" = :"dat_upd_etd",'
      
        '  "prod_list_itens"."txt_status_producao" = :"txt_status_produca' +
        'o",'
      '  "prod_list_itens"."dat_inspecao" = :"dat_inspecao",'
      
        '  "prod_list_itens"."ies_result_inspecao" = :"ies_result_inspeca' +
        'o",'
      '  "prod_list_itens"."qtd_romanear" = :"qtd_romanear",'
      '  "prod_list_itens"."qtd_confirmada" = :"qtd_confirmada",'
      '  "prod_list_itens"."qtd_pendente" = :"qtd_pendente",'
      '  "prod_list_itens"."qtd_embarcada" = :"qtd_embarcada",'
      '  "prod_list_itens"."preco_real" = :"preco_real",'
      '  "prod_list_itens"."vlr_liquido" = :"vlr_liquido",'
      '  "prod_list_itens"."preco_esp" = :"preco_esp",'
      '  "prod_list_itens"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "prod_list_itens"."vol_total" = :"vol_total",'
      '  "prod_list_itens"."pes_bruto" = :"pes_bruto",'
      '  "prod_list_itens"."pes_liquido" = :"pes_liquido",'
      '  "prod_list_itens"."qtd_caixas" = :"qtd_caixas",'
      '  "prod_list_itens"."un_master" = :"un_master",'
      '  "prod_list_itens"."pes_bruto_cx" = :"pes_bruto_cx",'
      '  "prod_list_itens"."altura_cx" = :"altura_cx",'
      '  "prod_list_itens"."largura_cx" = :"largura_cx",'
      '  "prod_list_itens"."comprimento_cx" = :"comprimento_cx",'
      '  "prod_list_itens"."volume_caixa" = :"volume_caixa",'
      '  "prod_list_itens"."ies_caixa_fechada" = :"ies_caixa_fechada",'
      '  "prod_list_itens"."pes_unitario" = :"pes_unitario",'
      '  "prod_list_itens"."seq_pallet" = :"seq_pallet",'
      '  "prod_list_itens"."qtd_pallet" = :"qtd_pallet",'
      '  "prod_list_itens"."pes_bruto_pallet" = :"pes_bruto_pallet",'
      
        '  "prod_list_itens"."pes_liquido_pallet" = :"pes_liquido_pallet"' +
        ','
      
        '  "prod_list_itens"."comprimento_pallet" = :"comprimento_pallet"' +
        ','
      '  "prod_list_itens"."largura_pallet" = :"largura_pallet",'
      '  "prod_list_itens"."altura_pallet" = :"altura_pallet",'
      '  "prod_list_itens"."volume_pallet" = :"volume_pallet",'
      '  "prod_list_itens"."pes_pallet_vazio" = :"pes_pallet_vazio",'
      '  "prod_list_itens"."ies_emb_esp" = :"ies_emb_esp",'
      '  "prod_list_itens"."seq_emb_esp" = :"seq_emb_esp",'
      '  "prod_list_itens"."ies_erros" = :"ies_erros",'
      '  "prod_list_itens"."ies_cadastro" = :"ies_cadastro",'
      '  "prod_list_itens"."cal_preco_real" = :"cal_preco_real",'
      '  "prod_list_itens"."cal_vlr_liquido" = :"cal_vlr_liquido",'
      '  "prod_list_itens"."cal_preco_esp" = :"cal_preco_esp",'
      
        '  "prod_list_itens"."cal_vlr_liquido_esp" = :"cal_vlr_liquido_es' +
        'p",'
      '  "prod_list_itens"."cal_vol_total" = :"cal_vol_total",'
      '  "prod_list_itens"."cal_pes_bruto" = :"cal_pes_bruto",'
      '  "prod_list_itens"."cal_pes_liquido" = :"cal_pes_liquido",'
      '  "prod_list_itens"."cal_qtd_caixas" = :"cal_qtd_caixas",'
      '  "prod_list_itens"."cal_volume_caixa" = :"cal_volume_caixa",'
      '  "prod_list_itens"."ies_sit_fat" = :"ies_sit_fat",'
      '  "prod_list_itens"."ies_pallet" = :"ies_pallet", '
      '  "prod_list_itens"."mesclar" = :"mesclar",'
      '  "prod_list_itens"."seq_pkl" = :"seq_pkl",'
      '  "prod_list_itens"."num_sequencia_org" = :"num_sequencia_org"'
      'Where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 121
    Top = 109
    object prod_list_itenscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_list_itensnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_list_itensnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_list_itensnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"prod_list_itens"."num_fatura"'
      Size = 25
    end
    object prod_list_itensnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"prod_list_itens"."num_pedido"'
    end
    object prod_list_itensnum_seq_pedido: TSmallintField
      FieldName = 'num_seq_pedido'
      Origin = '"prod_list_itens"."num_seq_pedido"'
    end
    object prod_list_itensnum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"prod_list_itens"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object prod_list_itensnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"prod_list_itens"."num_pedido_cli"'
      Size = 15
    end
    object prod_list_itensdat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"prod_list_itens"."dat_emissao"'
    end
    object prod_list_itenscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"prod_list_itens"."cod_produto"'
      Required = True
      Size = 15
    end
    object prod_list_itensdat_ini_producao: TDateField
      FieldName = 'dat_ini_producao'
      Origin = '"prod_list_itens"."dat_ini_producao"'
    end
    object prod_list_itenstxt_status_producao: TMemoField
      FieldName = 'txt_status_producao'
      Origin = '"prod_list_itens"."txt_status_producao"'
      BlobType = ftMemo
      Size = 8
    end
    object prod_list_itensdat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = '"prod_list_itens"."dat_inspecao"'
    end
    object prod_list_itensies_result_inspecao: TIBStringField
      FieldName = 'ies_result_inspecao'
      Origin = '"prod_list_itens"."ies_result_inspecao"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensetd_factory: TDateField
      FieldName = 'etd_factory'
      Origin = '"prod_list_itens"."etd_factory"'
    end
    object prod_list_itensdat_upd_etd: TDateField
      FieldName = 'dat_upd_etd'
      Origin = '"prod_list_itens"."dat_upd_etd"'
    end
    object prod_list_itensqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"prod_list_itens"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object prod_list_itensqtd_confirmada: TIBBCDField
      FieldName = 'qtd_confirmada'
      Origin = '"prod_list_itens"."qtd_confirmada"'
      Precision = 18
      Size = 3
    end
    object prod_list_itensqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"prod_list_itens"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object prod_list_itensqtd_embarcada: TIBBCDField
      FieldName = 'qtd_embarcada'
      Origin = '"prod_list_itens"."qtd_embarcada"'
      Precision = 18
      Size = 3
    end
    object prod_list_itenspreco_real: TFloatField
      FieldName = 'preco_real'
      Origin = '"prod_list_itens"."preco_real"'
    end
    object prod_list_itensvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"prod_list_itens"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspreco_esp: TFloatField
      FieldName = 'preco_esp'
      Origin = '"prod_list_itens"."preco_esp"'
    end
    object prod_list_itensvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"prod_list_itens"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object prod_list_itensvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"prod_list_itens"."vol_total"'
      Precision = 18
      Size = 3
    end
    object prod_list_itenspes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"prod_list_itens"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"prod_list_itens"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object prod_list_itensqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_itens"."qtd_caixas"'
    end
    object prod_list_itensun_master: TIBBCDField
      FieldName = 'un_master'
      Origin = '"prod_list_itens"."un_master"'
      Precision = 9
      Size = 4
    end
    object prod_list_itenspes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = '"prod_list_itens"."pes_bruto_cx"'
    end
    object prod_list_itensaltura_cx: TIBBCDField
      FieldName = 'altura_cx'
      Origin = '"prod_list_itens"."altura_cx"'
      Precision = 9
      Size = 4
    end
    object prod_list_itenslargura_cx: TIBBCDField
      FieldName = 'largura_cx'
      Origin = '"prod_list_itens"."largura_cx"'
      Precision = 9
      Size = 4
    end
    object prod_list_itenscomprimento_cx: TIBBCDField
      FieldName = 'comprimento_cx'
      Origin = '"prod_list_itens"."comprimento_cx"'
      Precision = 9
      Size = 4
    end
    object prod_list_itensvolume_caixa: TIBBCDField
      FieldName = 'volume_caixa'
      Origin = '"prod_list_itens"."volume_caixa"'
      Precision = 18
      Size = 4
    end
    object prod_list_itensies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"prod_list_itens"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itenspes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"prod_list_itens"."pes_unitario"'
    end
    object prod_list_itensseq_pallet: TIntegerField
      FieldName = 'seq_pallet'
      Origin = '"prod_list_itens"."seq_pallet"'
    end
    object prod_list_itensqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = '"prod_list_itens"."qtd_pallet"'
    end
    object prod_list_itenspes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = '"prod_list_itens"."pes_bruto_pallet"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = '"prod_list_itens"."pes_liquido_pallet"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = '"prod_list_itens"."comprimento_pallet"'
      Precision = 9
      Size = 4
    end
    object prod_list_itenslargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = '"prod_list_itens"."largura_pallet"'
      Precision = 9
      Size = 4
    end
    object prod_list_itensaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = '"prod_list_itens"."altura_pallet"'
      Precision = 9
      Size = 4
    end
    object prod_list_itensvolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = '"prod_list_itens"."volume_pallet"'
      Precision = 18
      Size = 4
    end
    object prod_list_itenspes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"prod_list_itens"."pes_pallet_vazio"'
    end
    object prod_list_itensies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"prod_list_itens"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
    end
    object prod_list_itensies_erros: TIntegerField
      FieldName = 'ies_erros'
      Origin = '"prod_list_itens"."ies_erros"'
    end
    object prod_list_itensies_cadastro: TIBStringField
      FieldName = 'ies_cadastro'
      Origin = '"prod_list_itens"."ies_cadastro"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itenscal_preco_real: TFloatField
      FieldName = 'cal_preco_real'
      Origin = '"prod_list_itens"."cal_preco_real"'
    end
    object prod_list_itenscal_vlr_liquido: TIBBCDField
      FieldName = 'cal_vlr_liquido'
      Origin = '"prod_list_itens"."cal_vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscal_preco_esp: TFloatField
      FieldName = 'cal_preco_esp'
      Origin = '"prod_list_itens"."cal_preco_esp"'
    end
    object prod_list_itenscal_vlr_liquido_esp: TIBBCDField
      FieldName = 'cal_vlr_liquido_esp'
      Origin = '"prod_list_itens"."cal_vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscal_vol_total: TIBBCDField
      FieldName = 'cal_vol_total'
      Origin = '"prod_list_itens"."cal_vol_total"'
      Precision = 18
      Size = 3
    end
    object prod_list_itenscal_pes_bruto: TIBBCDField
      FieldName = 'cal_pes_bruto'
      Origin = '"prod_list_itens"."cal_pes_bruto"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscal_pes_liquido: TIBBCDField
      FieldName = 'cal_pes_liquido'
      Origin = '"prod_list_itens"."cal_pes_liquido"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscal_qtd_caixas: TIntegerField
      FieldName = 'cal_qtd_caixas'
      Origin = '"prod_list_itens"."cal_qtd_caixas"'
    end
    object prod_list_itenscal_volume_caixa: TIBBCDField
      FieldName = 'cal_volume_caixa'
      Origin = '"prod_list_itens"."cal_volume_caixa"'
      Precision = 18
      Size = 4
    end
    object prod_list_itensies_sit_fat: TIBStringField
      FieldName = 'ies_sit_fat'
      Origin = '"prod_list_itens"."ies_sit_fat"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"prod_list_itens"."num_nota_fiscal"'
    end
    object prod_list_itensnum_seq_nf: TSmallintField
      FieldName = 'num_seq_nf'
      Origin = '"prod_list_itens"."num_seq_nf"'
    end
    object prod_list_itensies_pallet: TIBStringField
      FieldName = 'ies_pallet'
      Origin = '"prod_list_itens"."ies_pallet"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensmesclar: TIBStringField
      FieldName = 'mesclar'
      Origin = '"prod_list_itens"."mesclar"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensnum_sequencia_org: TIntegerField
      FieldName = 'num_sequencia_org'
      Origin = '"prod_list_itens"."num_sequencia_org"'
    end
    object prod_list_itensseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = '"prod_list_itens"."seq_pkl"'
    end
  end
  object spr_excluir_prl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_excluir_prl'
    Left = 157
    Top = 107
  end
  object spr_check_result: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "spr_check_result"(:cod_empresa, :num_prod_list, :' +
        'num_fatura);')
    Left = 191
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object spr_check_resultFLAG: TIBStringField
      FieldName = 'FLAG'
      Origin = '"spr_check_result"."FLAG"'
      FixedChar = True
      Size = 1
    end
  end
  object dsFaturasNovasPrl: TDataSource
    DataSet = FaturasNovasPrl
    Left = 57
    Top = 141
  end
  object spr_romanear: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_romanear'
    Left = 127
    Top = 232
  end
  object qryRomaneio: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "num_romaneio", "ies_situacao"'
      '  from "romaneio"'
      ' where "cod_empresa" = :cod_empresa'
      '   and "cod_cliente" = :cod_cliente'
      '   and "num_fatura" = :num_fatura ;')
    Left = 57
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object qryRomaneionum_romaneio: TIntegerField
      FieldName = 'num_romaneio'
      Origin = '"romaneio"."num_romaneio"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRomaneioies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"romaneio"."ies_situacao"'
      Size = 1
    end
  end
  object spr_faturar: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_faturar'
    Left = 162
    Top = 232
  end
  object FaturasNovasPrl: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnCalcFields = FaturasNovasPrlCalcFields
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."num_fatura" = :"OLD_num_fatura"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      '  ("prod_list_itens"."num_fatura")'
      'values'
      '  (:"num_fatura")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."num_fatura" = :"num_fatura"')
    SelectSQL.Strings = (
      'select "num_fatura",'
      
        '       SUM("vlr_liquido") "vlr_liquido",         SUM("cal_vlr_li' +
        'quido") "cal_vlr_liquido",'
      
        '       SUM("vlr_liquido_esp") "vlr_liquido_esp", SUM("cal_vlr_li' +
        'quido_esp") "cal_vlr_liquido_esp",'
      
        '       SUM("vol_total") "vol_total",             SUM("cal_vol_to' +
        'tal") "cal_vol_total",'
      
        '       SUM("pes_bruto") "pes_bruto",             SUM("cal_pes_br' +
        'uto") "cal_pes_bruto",'
      
        '       SUM("pes_liquido") "pes_liquido",         SUM("cal_pes_li' +
        'quido") "cal_pes_liquido",'
      
        '       SUM("qtd_caixas") "qtd_caixas",           SUM("cal_qtd_ca' +
        'ixas") "cal_qtd_caixas",'
      '       MAX(cast('#39' '#39' as char(01))) "ies_faturar"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_fatura" <> '#39#39
      '  and "ies_sit_fat" = '#39'N'#39
      'group by 1'
      'order by 1')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."num_fatura" = :"num_fatura"'
      'where'
      '  "prod_list_itens"."num_fatura" = :"OLD_num_fatura"')
    Left = 61
    Top = 107
    object FaturasNovasPrlnum_fatura: TIBStringField
      DisplayLabel = 'N'#250'mero Fatura'
      FieldName = 'num_fatura'
      Size = 25
    end
    object FaturasNovasPrlies_faturar: TIBStringField
      DisplayLabel = 'Faturar'
      FieldName = 'ies_faturar'
      FixedChar = True
      Size = 1
    end
    object FaturasNovasPrlvlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlcal_vlr_liquido: TIBBCDField
      FieldName = 'cal_vlr_liquido'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Esp'
      FieldName = 'vlr_liquido_esp'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlcal_vlr_liquido_esp: TIBBCDField
      FieldName = 'cal_vlr_liquido_esp'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlvol_total: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'vol_total'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object FaturasNovasPrlcal_vol_total: TIBBCDField
      FieldName = 'cal_vol_total'
      Precision = 18
      Size = 3
    end
    object FaturasNovasPrlpes_bruto: TIBBCDField
      DisplayLabel = 'Pes Bruto'
      FieldName = 'pes_bruto'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlcal_pes_bruto: TIBBCDField
      FieldName = 'cal_pes_bruto'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlpes_liquido: TIBBCDField
      DisplayLabel = 'Pes Liquido'
      FieldName = 'pes_liquido'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlcal_pes_liquido: TIBBCDField
      FieldName = 'cal_pes_liquido'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlqtd_caixas: TLargeintField
      DisplayLabel = 'Caixas'
      FieldName = 'qtd_caixas'
      DisplayFormat = '#,##0'
    end
    object FaturasNovasPrlcal_qtd_caixas: TLargeintField
      FieldName = 'cal_qtd_caixas'
    end
    object FaturasNovasPrlFlag: TStringField
      FieldKind = fkCalculated
      FieldName = 'Flag'
      Size = 1
      Calculated = True
    end
  end
  object sqlMarcarFaturadas: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'update "prod_list_itens"'
      '   set "ies_sit_fat" = '#39'F'#39','
      '       "num_nota_fiscal" = :num_nota_fiscal'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_prod_list" = :num_prod_list'
      '   and "num_fatura" = :num_fatura;')
    Transaction = dmConnection.TransSig
    Left = 226
    Top = 107
  end
  object spr_additens_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_additens_prodlist'
    Left = 195
    Top = 232
  end
  object spr_vlr_esp_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_vlr_esp_prodlist'
    Left = 232
    Top = 232
  end
  object spr_pesos_pallets_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_pesos_pallets_prodlist'
    Left = 264
    Top = 232
  end
  object spr_additens_pedido: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_additens_pedido'
    Left = 296
    Top = 232
  end
  object ProdListEmbEsp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "prod_list_itens"                           '
      ' where "cod_empresa" = :cod_empresa                       '
      '   and "num_prod_list" = :num_prod_list                   '
      '   and "seq_emb_esp" = :seq_emb_esp'
      ' order by "num_sequencia"')
    Left = 128
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_emb_esp'
        ParamType = ptUnknown
      end>
  end
  object ProdListPallets: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "prod_list_itens"                           '
      ' where "cod_empresa" = :cod_empresa                       '
      '   and "num_prod_list" = :num_prod_list                   '
      '   and "seq_pallet" = :seq_pallet'
      ' order by "num_sequencia"')
    Left = 168
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_pallet'
        ParamType = ptUnknown
      end>
  end
  object Saldos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "spr_saldos_produtos"(:cod_empresa, :num_pedido, :' +
        'cod_produto, :num_seq_pedido);')
    Left = 232
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_seq_pedido'
        ParamType = ptUnknown
      end>
    object Saldosqtd_confirmada: TIBBCDField
      FieldName = 'qtd_confirmada'
      Origin = '"spr_saldos_produtos"."qtd_confirmada"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_embarcada: TIBBCDField
      FieldName = 'qtd_embarcada'
      Origin = '"spr_saldos_produtos"."qtd_embarcada"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"spr_saldos_produtos"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"spr_saldos_produtos"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_saldo: TIBBCDField
      FieldName = 'qtd_saldo'
      Origin = '"spr_saldos_produtos"."qtd_saldo"'
      Precision = 18
      Size = 2
    end
  end
  object spr_agrupar_prod_list: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_agrupar_prod_list'
    Left = 272
    Top = 264
  end
  object Faturas: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."num_nota_fiscal", a."serie", a."dat_embarque"'
      'from  "nota_fiscal_saida" a, "nf_saida_complemento" b'
      'where b."cod_empresa" = :cod_empresa'
      '  and b."num_fatura" = :num_fatura'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and b."serie" = a."serie"')
    Left = 258
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object Faturasnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Faturasserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object Faturasdat_embarque: TDateField
      FieldName = 'dat_embarque'
      Origin = '"nota_fiscal_saida"."dat_embarque"'
    end
  end
  object qryNotaFiscal: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "num_nota_fiscal"'
      'from "nf_saida_complemento"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_fatura" = :num_fatura')
    Left = 287
    Top = 109
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object qryNotaFiscalnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nf_saida_complemento"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryNotaFiscalProdutos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."num_nota_fiscal"'
      'from "nf_saida_complemento" a, "nota_fiscal_saida_produto" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_fatura" = :num_fatura'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and b."serie" = a."serie"'
      '  and b."num_sequencia" = :num_sequencia')
    Left = 318
    Top = 110
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_sequencia'
        ParamType = ptUnknown
      end>
  end
  object qryNumProdList: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select MAX("num_prod_list") "num_prod_list"'
      'from "prod_list"'
      'where "cod_empresa" = :cod_empresa')
    Left = 136
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object qryNumProdListnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
    end
  end
  object ProdListGrupos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select *'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "grupo" = :grupo'
      'order by "num_sequencia"')
    Left = 200
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end>
  end
  object spr_itensped_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_itensped_prodlist'
    Left = 304
    Top = 264
  end
  object sqlDesagrupar: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      '  update "prod_list_itens"'
      '    set "grupo" = null,'
      '        "seq_grupo" = null'
      '  where "cod_empresa" = :cod_empresa'
      '    and "num_prod_list" = :num_prod_list ;')
    Transaction = dmConnection.TransSig
    Left = 240
    Top = 160
  end
  object spr_prodlist_fatura: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_fatura'
    Left = 336
    Top = 264
  end
  object Produto_Fatura: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = Produto_FaturaAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "nota_fiscal_saida_produto"'
      'where'
      
        '  "nota_fiscal_saida_produto"."cod_empresa" = :"OLD_cod_empresa"' +
        ' and'
      
        '  "nota_fiscal_saida_produto"."num_nota_fiscal" = :"OLD_num_nota' +
        '_fiscal" and'
      '  "nota_fiscal_saida_produto"."serie" = :"OLD_serie" and'
      
        '  "nota_fiscal_saida_produto"."num_sequencia" = :"OLD_num_sequen' +
        'cia"')
    InsertSQL.Strings = (
      'insert into "nota_fiscal_saida_produto"'
      '  ("nota_fiscal_saida_produto"."cod_empresa", '
      '"nota_fiscal_saida_produto"."num_nota_fiscal", '
      
        '   "nota_fiscal_saida_produto"."serie", "nota_fiscal_saida_produ' +
        'to"."num_sequencia", '
      '   "nota_fiscal_saida_produto"."cod_produto", '
      '"nota_fiscal_saida_produto"."qtd_produto")'
      'values'
      
        '  (:"cod_empresa", :"num_nota_fiscal", :"serie", :"num_sequencia' +
        '", :"cod_produto", '
      '   :"qtd_produto")')
    RefreshSQL.Strings = (
      'Select '
      '  "nota_fiscal_saida_produto"."cod_empresa",'
      '  "nota_fiscal_saida_produto"."num_nota_fiscal",'
      '  "nota_fiscal_saida_produto"."serie",'
      '  "nota_fiscal_saida_produto"."num_sequencia",'
      '  "nota_fiscal_saida_produto"."cod_produto",'
      '  "nota_fiscal_saida_produto"."qtd_produto",'
      '  "nota_fiscal_saida_produto"."vlr_unitario",'
      '  "nota_fiscal_saida_produto"."vlr_unitario_esp",'
      '  "nota_fiscal_saida_produto"."texto",'
      '  "nota_fiscal_saida_produto"."txt_observacao",'
      '  "nota_fiscal_saida_produto"."dat_cadastro",'
      '  "nota_fiscal_saida_produto"."num_pedido",'
      '  "nota_fiscal_saida_produto"."num_seq_pedido",'
      '  "nota_fiscal_saida_produto"."vlr_liquido",'
      '  "nota_fiscal_saida_produto"."vlr_liquido_esp",'
      '  "nota_fiscal_saida_produto"."qtd_export_box",'
      '  "nota_fiscal_saida_produto"."qtd_inner_box",'
      '  "nota_fiscal_saida_produto"."vol_caixas",'
      '  "nota_fiscal_saida_produto"."pes_liquido",'
      '  "nota_fiscal_saida_produto"."pes_bruto",'
      '  "nota_fiscal_saida_produto"."ies_emb_esp",'
      '  "nota_fiscal_saida_produto"."ies_situacao",'
      '  "nota_fiscal_saida_produto"."obs_preco",'
      '  "nota_fiscal_saida_produto"."obs_preco_esp",'
      '  "nota_fiscal_saida_produto"."seq_emb_esp",'
      '  "nota_fiscal_saida_produto"."seq_pallet",'
      '  "nota_fiscal_saida_produto"."qtd_pallet",'
      '  "nota_fiscal_saida_produto"."pes_bruto_pallet",'
      '  "nota_fiscal_saida_produto"."pes_liquido_pallet",'
      '  "nota_fiscal_saida_produto"."comprimento_pallet",'
      '  "nota_fiscal_saida_produto"."largura_pallet",'
      '  "nota_fiscal_saida_produto"."altura_pallet",'
      '  "nota_fiscal_saida_produto"."volume_pallet",'
      '  "nota_fiscal_saida_produto"."seq_pkl",'
      '  "nota_fiscal_saida_produto"."ies_conjunto",'
      '  "nota_fiscal_saida_produto"."pes_pallet_vazio",'
      '  "nota_fiscal_saida_produto"."ies_caixa_fechada"'
      'from "nota_fiscal_saida_produto" '
      'where'
      '  "nota_fiscal_saida_produto"."cod_empresa" = :"cod_empresa" and'
      
        '  "nota_fiscal_saida_produto"."num_nota_fiscal" = :"num_nota_fis' +
        'cal" and'
      '  "nota_fiscal_saida_produto"."serie" = :"serie" and'
      '  "nota_fiscal_saida_produto"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_nota_fiscal", "serie", "num_sequencia' +
        '", "cod_produto", "qtd_produto", "ies_situacao"'
      'from "nota_fiscal_saida_produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_nota_fiscal" = :num_nota_fiscal'
      '  and "serie" = :serie'
      '  and "num_sequencia" = :num_sequencia')
    ModifySQL.Strings = (
      'update "nota_fiscal_saida_produto"'
      'set'
      '  "nota_fiscal_saida_produto"."cod_empresa" = :"cod_empresa",'
      
        '  "nota_fiscal_saida_produto"."num_nota_fiscal" = :"num_nota_fis' +
        'cal",'
      '  "nota_fiscal_saida_produto"."serie" = :"serie",'
      
        '  "nota_fiscal_saida_produto"."num_sequencia" = :"num_sequencia"' +
        ','
      '  "nota_fiscal_saida_produto"."cod_produto" = :"cod_produto",'
      '  "nota_fiscal_saida_produto"."qtd_produto" = :"qtd_produto",'
      '  "nota_fiscal_saida_produto"."ies_situacao" = :"ies_situacao"'
      'where'
      
        '  "nota_fiscal_saida_produto"."cod_empresa" = :"OLD_cod_empresa"' +
        ' and'
      
        '  "nota_fiscal_saida_produto"."num_nota_fiscal" = :"OLD_num_nota' +
        '_fiscal" and'
      '  "nota_fiscal_saida_produto"."serie" = :"OLD_serie" and'
      
        '  "nota_fiscal_saida_produto"."num_sequencia" = :"OLD_num_sequen' +
        'cia"')
    Left = 272
    Top = 160
    object Produto_Faturaqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object Produto_Faturaies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"nota_fiscal_saida_produto"."ies_situacao"'
      FixedChar = True
      Size = 1
    end
  end
  object cby_recalc_num_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'cby_recalc_num_prodlist'
    Left = 24
    Top = 296
  end
  object spr_prodlist_criarpkl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_criarpkl'
    Left = 368
    Top = 264
  end
end
