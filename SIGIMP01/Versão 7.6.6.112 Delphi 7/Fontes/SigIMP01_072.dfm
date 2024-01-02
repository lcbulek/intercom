object fr_FaturasRegistradas: Tfr_FaturasRegistradas
  Left = 804
  Top = 439
  HelpType = htKeyword
  HelpKeyword = '071'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Faturas Registradas no Sistema'
  ClientHeight = 190
  ClientWidth = 352
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
  object Label1: TLabel
    Left = 4
    Top = 9
    Width = 37
    Height = 13
    Caption = 'Clientes'
  end
  object Label2: TLabel
    Left = 4
    Top = 47
    Width = 65
    Height = 13
    Caption = 'Fornecedores'
  end
  object Label3: TLabel
    Left = 5
    Top = 81
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Panel1: TPanel
    Left = 0
    Top = 149
    Width = 352
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnGerar: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = actGerar
      Caption = 'Gerar'
      TabOrder = 0
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
    object btnAbrir: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = actAbrir
      Caption = 'Abrir'
      Enabled = False
      TabOrder = 1
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
    object BitBtn3: TBitBtn
      Left = 274
      Top = 8
      Width = 75
      Height = 25
      Action = dmConnection.acClose
      Caption = 'Fechar'
      TabOrder = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FFEF
        F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FF00FF00FF00FF00C6DEEF002184
        BD002194D600188CDE002194D600189CD6001094D60021A5E70029A5E70029AD
        E70029ADEF0010B5EF0000A5DE001094CE003984AD00FF00FF005AA5D60021AD
        FF0018ADFF0031ADFF0031B5FF0031B5FF0031BDFF0039BDFF0039CEFF0031D6
        FF0018DEFF0010D6FF0010CEFF0010BDFF0029A5EF00FFFFFF005AB5DE0018A5
        FF0039B5FF0039B5FF0039BDFF004ABDFF005AC6FF0063CEF70063D6F70052DE
        FF0031E7FF0018E7F70021E7FF0018CEFF0029B5EF00EFFFFF0052ADD60031B5
        FF004ABDFF0042BDFF0084D6F700D6FFFF00E7FFFF00CEF7FF00CEFFFF00BDFF
        FF008CE7FF0031E7FF0010E7FF0000CEFF0018B5E700EFFFFF0063ADE70039B5
        FF0052BDFF0073C6FF00C6F7FF00A5E7FF0063C6EF005ACEFF0052C6F7008CD6
        FF00D6FFFF007BE7FF0029E7FF0010CEFF0021B5EF00F7FFFF006BADE70042BD
        FF005ABDFF009CE7FF00C6EFFF0073C6F7004AC6FF0042BDFF0039CEFF0042D6
        FF0084DEF700BDFFFF0031DEFF0021CEFF0021ADE700F7FFFF0063B5DE0042C6
        FF005AC6FF00B5F7FF00ADDEFF005AC6FF0042C6FF0063CEFF004ACEFF0029CE
        FF0063DEFF00DEFFFF004ADEFF0029BDFF0031ADE700F7FFFF0063BDDE0063CE
        FF0073CEFF00B5F7FF00BDDEFF005AC6FF004ABDFF00ADF7FF005ACEFF0031C6
        FF0063CEEF00DEFFFF0042C6FF0031BDFF0031A5E700F7FFFF006BBDDE0063CE
        FF0073CEFF009CE7FF00D6FFFF006BBDF70063C6FF00BDF7FF0073C6FF0042BD
        F70084DEFF00CEF7FF0039B5F70031B5FF0029A5EF00EFFFFF0073BDDE0073CE
        FF0073D6FF007BCEF700DEFFFF00B5DEFF007BC6F700BDFFFF0073BDEF0073D6
        FF00C6FFFF007BCEFF0039ADF70042B5FF002194DE00EFFFFF0073BDDE007BCE
        FF0084D6FF007BD6FF0094CEF700BDF7FF0073BDEF00B5F7FF007BC6F70084DE
        FF0073C6F70039B5F70039BDFF0042B5FF002994D600F7FFFF0084CEE7008CD6
        FF0094DEFF0084D6FF007BCEFF0073CEFF006BCEFF00BDFFFF0084CEFF005AC6
        FF004ABDFF0039BDFF0039B5FF0042B5FF00319CDE00FFFFFF008CBDDE0094DE
        FF0094DEFF008CDEFF007BD6FF006BCEFF006BCEFF008CDEFF007BCEF7005AC6
        FF005ACEFF0052C6FF004ABDFF0039B5FF002994DE00FFFFFF00ADCEEF0094DE
        FF008CE7FF007BDEFF007BD6FF0073CEFF006BCEFF006BCEFF0063CEFF005AC6
        FF0052C6FF004AC6FF0042BDFF0039BDFF00318CCE00FFF7FF00FF00FF00ADCE
        EF008CC6DE007BBDEF0073BDE7006BBDE70073BDEF006BB5EF006BB5EF006BB5
        EF0063B5EF005AB5EF0052ADDE0063B5DE00A5C6E700FF00FF00}
    end
    object panGauge: TPanel
      Left = 171
      Top = 16
      Width = 96
      Height = 9
      BevelOuter = bvLowered
      TabOrder = 3
    end
  end
  object dbcClientes: TJvDBLookupCombo
    Left = 4
    Top = 23
    Width = 346
    Height = 21
    DropDownCount = 30
    DisplayAllFields = True
    DisplayEmpty = '* Todos *'
    EmptyValue = '0'
    LookupField = 'cod_cliente'
    LookupDisplay = 'cod_cliente'
    LookupSource = ds_Clientes
    TabOrder = 1
    OnChange = dbcClientesChange
  end
  object dbcFornecedores: TJvDBLookupCombo
    Left = 4
    Top = 61
    Width = 346
    Height = 21
    DropDownCount = 30
    DisplayAllFields = True
    DisplayEmpty = '* Todos *'
    EmptyValue = '0'
    LookupField = 'cod_fornecedor'
    LookupDisplay = 'raz_social_reduz'
    LookupSource = ds_Fornecedores
    TabOrder = 2
    OnChange = dbcFornecedoresChange
  end
  object seAno: TSpinEdit
    Left = 4
    Top = 94
    Width = 60
    Height = 22
    MaxLength = 4
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
    OnChange = seAnoChange
  end
  object rgDescricao: TRadioGroup
    Left = 4
    Top = 116
    Width = 178
    Height = 37
    Caption = 'Descri'#231#245'es dos produtos:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Ingl'#234's'
      'Portugu'#234's')
    TabOrder = 4
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 8
    Top = 8
    object actGerar: TAction
      Caption = 'Gerar'
      ImageIndex = 235
      OnExecute = actGerarExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir'
      ImageIndex = 235
      OnExecute = actAbrirExecute
    end
  end
  object Clientes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BeforeOpen = ClientesBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c."cod_cliente"'
      'from "pedido" a, "pedido_complemento" b, "cliente" c'
      'where'
      '      a."cod_empresa" = :cod_empresa'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido"  = a."num_pedido"'
      '  and c."cod_cliente" = a."cod_cliente"'
      '  and c."cod_cliente" in (select "cod_cliente"'
      '                            from "usuario_cliente"'
      '                           where "login" = :login)'
      'group by 1'
      'order by 1')
    Left = 40
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end>
    object Clientescod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Required = True
      Size = 12
    end
  end
  object ds_Clientes: TDataSource
    DataSet = Clientes
    Left = 74
    Top = 8
  end
  object Fornecedores: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BeforeOpen = FornecedoresBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select b."cod_fornecedor", c."raz_social_reduz"'
      
        'from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornecedo' +
        'r" c'
      'where a."cod_empresa" = :cod_empresa'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and b."serie" = a."serie"'
      '  and c."cod_fornecedor" = b."cod_fornecedor"'
      'group by 1,2'
      'order by 2')
    Left = 40
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object Fornecedorescod_fornecedor: TSmallintField
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
    Left = 76
    Top = 48
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = ProdutosAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '/* Produtos Faturas/Pedidos */'
      'select a."num_sequencia", a."cod_produto", c."den_produto",'
      
        '       a."qtd_produto", a."vlr_unitario", a."vlr_liquido", a."vl' +
        'r_unitario_esp", a."vlr_liquido_esp",'
      
        '       a."qtd_export_box", a."vol_caixas", a."pes_bruto", a."pes' +
        '_liquido",'
      
        '       b."num_pedido_cli", b."num_pedido_for", d."sigla", e."dat' +
        '_inspecao", e."txt_status_producao",'
      '       e."obs_preco", e."obs_preco_esp"'
      
        'from "nota_fiscal_saida_produto" a, "pedido_complemento" b, "pro' +
        'duto" c, "medida" d, "pedido_produto" e'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_nota_fiscal" = :num_nota_fiscal'
      '  and a."serie" = :serie'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido" = a."num_pedido"'
      '  and c."cod_empresa" = a."cod_empresa"'
      '  and c."cod_produto" = a."cod_produto"'
      '  and d."cod_uni_medida" = c."cod_uni_medida"'
      '  and e."cod_empresa" = a."cod_empresa"'
      '  and e."num_pedido" = a."num_pedido"'
      '  and e."num_sequencia" = a."num_seq_pedido"'
      'order by a."num_sequencia"')
    Left = 120
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_nota_fiscal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end>
    object Produtosnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"nota_fiscal_saida_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Produtoscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"nota_fiscal_saida_produto"."cod_produto"'
      Required = True
      Size = 15
    end
    object Produtosden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object Produtosqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object Produtosvlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario"'
    end
    object Produtosvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object Produtosqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"nota_fiscal_saida_produto"."qtd_export_box"'
    end
    object Produtosvol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"nota_fiscal_saida_produto"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object Produtospes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"nota_fiscal_saida_produto"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object Produtospes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"nota_fiscal_saida_produto"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object Produtosnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object Produtosnum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object Produtossigla: TIBStringField
      FieldName = 'sigla'
      Origin = '"medida"."sigla"'
      Size = 3
    end
    object Produtosdat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = '"nota_fiscal_saida_produto"."dat_inspecao"'
    end
    object Produtosvlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario_esp"'
    end
    object Produtosvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object Produtosobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"pedido_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object Produtosobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"pedido_produto"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object Produtostxt_status_producao: TMemoField
      FieldName = 'txt_status_producao'
      Origin = 'pedido_produto.txt_status_producao'
      BlobType = ftMemo
      Size = 8
    end
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 156
    Top = 8
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
    object parametro_comercialdir_planilhas: TIBStringField
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
    end
    object parametro_comercialmod_plan_itens_emb_fat: TBlobField
      FieldName = 'mod_plan_itens_emb_fat'
      Origin = '"parametro_comercial"."mod_plan_itens_emb_fat"'
      Size = 8
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 194
    Top = 8
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 233
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 200
    Top = 48
  end
  object embalagem: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "embalagem"'
      'where "cod_empresa" = :cod_empresa'
      '    and "cod_produto" = :cod_produto')
    Left = 237
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end>
    object embalagemcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object embalagemcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object embalagempeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
    end
    object embalagemaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      Precision = 9
      Size = 4
    end
    object embalagemlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      Precision = 9
      Size = 4
    end
    object embalagemprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      Precision = 9
      Size = 4
    end
    object embalagemvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      Precision = 18
      Size = 4
    end
    object embalagemarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      Precision = 18
      Size = 4
    end
    object embalagemqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object embalagemqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object embalagemobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem"."observacao"'
      Size = 255
    end
    object embalagemdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem"."dat_cadastro"'
    end
    object embalagemdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem"."dat_cad_dimensoes"'
    end
    object embalagemdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem"."dat_cad_peso"'
    end
    object embalagemdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem"."dat_cad_master"'
    end
    object embalagemdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem"."dat_cad_inner"'
    end
    object embalagemobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem"."obs_caixas"'
      Size = 255
    end
  end
  object nf_adic_desc: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "nf_adic_desc"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_nota_fiscal" = :num_nota_fiscal'
      '  and "serie" = :serie'
      'order by "ies_tipo"')
    Left = 272
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_nota_fiscal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end>
    object nf_adic_desccod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"nf_adic_desc"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nf_adic_descnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nf_adic_desc"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nf_adic_descserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nf_adic_desc"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object nf_adic_descnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"nf_adic_desc"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nf_adic_descies_tipo: TIBStringField
      FieldName = 'ies_tipo'
      Origin = '"nf_adic_desc"."ies_tipo"'
      FixedChar = True
      Size = 1
    end
    object nf_adic_descvlr_adic_desc: TIBBCDField
      FieldName = 'vlr_adic_desc'
      Origin = '"nf_adic_desc"."vlr_adic_desc"'
      Precision = 18
      Size = 2
    end
    object nf_adic_descvlr_adic_desc_esp: TIBBCDField
      FieldName = 'vlr_adic_desc_esp'
      Origin = '"nf_adic_desc"."vlr_adic_desc_esp"'
      Precision = 18
      Size = 2
    end
    object nf_adic_desctxt_descricao: TMemoField
      FieldName = 'txt_descricao'
      Origin = '"nf_adic_desc"."txt_descricao"'
      BlobType = ftMemo
      Size = 8
    end
    object nf_adic_descnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"nf_adic_desc"."num_pedido"'
    end
    object nf_adic_descnum_seq_pedido: TSmallintField
      FieldName = 'num_seq_pedido'
      Origin = '"nf_adic_desc"."num_seq_pedido"'
    end
  end
  object Faturas: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = FaturasAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select b."num_ref_volume", b."num_fatura", a."dat_embarque",  a.' +
        '"dat_emissao", a."num_nota_fiscal", a."serie"'
      'from "nota_fiscal_saida" a, "nf_saida_complemento" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and b."cod_fornecedor" = :cod_fornecedor'
      '  and substr(a."dat_emissao", 1,4) = :ano'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and b."serie" = a."serie"'
      'order by a."dat_emissao" desc, a."num_nota_fiscal" desc')
    Left = 112
    Top = 8
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
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ano'
        ParamType = ptUnknown
      end>
    object Faturasnum_ref_volume: TIBStringField
      FieldName = 'num_ref_volume'
      Origin = '"nf_saida_complemento"."num_ref_volume"'
      Size = 25
    end
    object Faturasnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
    object Faturasdat_embarque: TDateField
      FieldName = 'dat_embarque'
      Origin = '"nota_fiscal_saida"."dat_embarque"'
    end
    object Faturasdat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"nota_fiscal_saida"."dat_emissao"'
    end
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
  end
end
