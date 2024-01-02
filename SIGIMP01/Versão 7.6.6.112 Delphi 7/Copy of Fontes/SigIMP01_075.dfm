object frmPagamentosPedidos: TfrmPagamentosPedidos
  Left = 881
  Top = 341
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pagamentos Efetuados por Pedido'
  ClientHeight = 183
  ClientWidth = 354
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
    Left = 4
    Top = 86
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label4: TLabel
    Left = 4
    Top = 124
    Width = 244
    Height = 13
    Caption = 'Para todos os anos, deixe o campo Ano em branco.'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object dbcClientes: TJvDBLookupCombo
    Left = 4
    Top = 23
    Width = 345
    Height = 21
    DropDownCount = 30
    DisplayAllFields = True
    DisplayEmpty = '* Todos *'
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
    Width = 345
    Height = 21
    DropDownCount = 30
    DisplayAllFields = True
    DisplayEmpty = '* Todos *'
    EmptyValue = '0'
    LookupField = 'cod_fornecedor'
    LookupDisplay = 'raz_social_reduz'
    LookupSource = ds_Fornecedores
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 142
    Width = 354
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
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
      Left = 168
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
      Left = 248
      Top = 16
      Width = 96
      Height = 9
      BevelOuter = bvLowered
      TabOrder = 3
    end
  end
  object seAno: TSpinEdit
    Left = 4
    Top = 99
    Width = 60
    Height = 22
    Hint = 'Para todos os anos, deixe o campo em branco.'
    MaxLength = 4
    MaxValue = 0
    MinValue = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Value = 0
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
    Left = 40
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
    Left = 74
    Top = 8
  end
  object Fornecedores: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."raz_social_reduz",  a."cod_fornecedor"'
      '  from "fornecedor" a, "produto" b'
      '  where'
      '        b."cod_empresa" = :cod_empresa'
      '    and b."cod_fornecedor" = a."cod_fornecedor"'
      '    and b."cod_cliente" in (select "cod_cliente"'
      '                              from "usuario_cliente"'
      '                             where "login" = :login)'
      'group by 1,2'
      'order by 1')
    Left = 40
    Top = 48
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
    Left = 76
    Top = 48
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 80
    Top = 96
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
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 146
    Top = 8
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 185
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 224
    Top = 8
  end
  object Pedidos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    CachedUpdates = True
    SQL.Strings = (
      
        'select  a."cod_empresa", a."num_pedido", b."num_pedido_cli", b."' +
        'num_pedido_for",'
      '        a."cod_cliente", c."raz_social_reduz",'
      
        '        case when a."ies_tip_pedido" = '#39'O'#39' then cast(a."dat_emis' +
        'sao"  as DATE)'
      
        '                                           else cast(a."dat_libe' +
        'racao"  as DATE) '
      '        end "dat_pedido",'
      
        '        d."den_tip_condicao", a."vlr_liquido", a."vlr_liquido_es' +
        'p", a."ies_preco_esp"'
      
        ' from "pedido" a, "pedido_complemento" b                        ' +
        '                 '
      
        '      left join "condicao_venda" d                              ' +
        '                 '
      
        '      on d."cod_tip_condicao" = b."cod_cond_venda",             ' +
        '                 '
      
        '      "fornecedor" c                                            ' +
        '                 '
      ' where '
      '    1=2')
    Left = 117
    Top = 48
    object Pedidoscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = 'pedido.cod_empresa'
      Required = True
    end
    object Pedidosnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = 'pedido.num_pedido'
    end
    object Pedidosnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = 'pedido_complemento.num_pedido_cli'
      FixedChar = True
      Size = 15
    end
    object Pedidosnum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = 'pedido_complemento.num_pedido_for'
      FixedChar = True
      Size = 15
    end
    object Pedidosdat_pedido: TDateField
      FieldName = 'dat_pedido'
    end
    object Pedidosden_tip_condicao: TIBStringField
      FieldName = 'den_tip_condicao'
      Origin = 'condicao_venda.den_tip_condicao'
      Size = 40
    end
    object Pedidosvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = 'pedido.vlr_liquido'
      Precision = 18
      Size = 2
    end
    object Pedidosvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = 'pedido.vlr_liquido_esp'
      Precision = 18
      Size = 2
    end
    object Pedidoscod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = 'pedido.cod_cliente'
      Required = True
      Size = 12
    end
    object Pedidosraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = 'fornecedor.raz_social_reduz'
      Required = True
      Size = 30
    end
    object Pedidosies_preco_esp: TIBStringField
      FieldName = 'ies_preco_esp'
      Origin = '"pedido"."ies_preco_esp"'
      FixedChar = True
      Size = 1
    end
  end
  object pedido_pagamento_ad: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      '   select a.*, b."num_fatura"'
      '     from "pedido_pagamento" a'
      '      left join "nf_saida_complemento" b'
      '            on b."cod_empresa" = a."cod_empresa"'
      '           and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '           and b."serie" = a."serie"'
      '    where a."cod_empresa" = :cod_empresa'
      '      and a."num_pedido" = :num_pedido'
      '      and a."num_nota_fiscal" is null'
      '    order by a."dat_pagamento"')
    Left = 149
    Top = 48
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
    object pedido_pagamento_adcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_pagamento"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamento_adnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_pagamento"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamento_adnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_pagamento"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamento_advlr_pagamento: TIBBCDField
      FieldName = 'vlr_pagamento'
      Origin = '"pedido_pagamento"."vlr_pagamento"'
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_addat_pagamento: TDateField
      FieldName = 'dat_pagamento'
      Origin = '"pedido_pagamento"."dat_pagamento"'
    end
    object pedido_pagamento_adtxt_pagamento: TMemoField
      FieldName = 'txt_pagamento'
      Origin = '"pedido_pagamento"."txt_pagamento"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_pagamento_adtot_pagamentos: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'tot_pagamentos'
      Origin = '"pedido_pagamento"."tot_pagamentos"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_advlr_pagamento_esp: TIBBCDField
      FieldName = 'vlr_pagamento_esp'
      Origin = '"pedido_pagamento"."vlr_pagamento_esp"'
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_adtot_pagamentos_esp: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'tot_pagamentos_esp'
      Origin = '"pedido_pagamento"."tot_pagamentos_esp"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_adnum_seq_fatpag: TIntegerField
      FieldName = 'num_seq_fatpag'
      Origin = '"pedido_pagamento"."num_seq_fatpag"'
    end
    object pedido_pagamento_adnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"pedido_pagamento"."num_nota_fiscal"'
    end
    object pedido_pagamento_adserie: TIBStringField
      FieldName = 'serie'
      Origin = '"pedido_pagamento"."serie"'
      FixedChar = True
      Size = 4
    end
    object pedido_pagamento_adnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
  end
  object pedido_adic_desc: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "pedido_adic_desc"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      'order by "ies_tipo"')
    Left = 184
    Top = 48
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
    object pedido_adic_desccod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = 'pedido_adic_desc.cod_empresa'
      Required = True
    end
    object pedido_adic_descnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = 'pedido_adic_desc.num_pedido'
      Required = True
    end
    object pedido_adic_descnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = 'pedido_adic_desc.num_sequencia'
      Required = True
    end
    object pedido_adic_descies_tipo: TIBStringField
      FieldName = 'ies_tipo'
      Origin = 'pedido_adic_desc.ies_tipo'
      FixedChar = True
      Size = 1
    end
    object pedido_adic_descvlr_adic_desc: TIBBCDField
      FieldName = 'vlr_adic_desc'
      Origin = 'pedido_adic_desc.vlr_adic_desc'
      Precision = 18
      Size = 2
    end
    object pedido_adic_descvlr_adic_desc_esp: TIBBCDField
      FieldName = 'vlr_adic_desc_esp'
      Origin = 'pedido_adic_desc.vlr_adic_desc_esp'
      Precision = 18
      Size = 2
    end
    object pedido_adic_desctxt_descricao: TMemoField
      FieldName = 'txt_descricao'
      Origin = 'pedido_adic_desc.txt_descricao'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_adic_descnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = 'pedido_adic_desc.num_nota_fiscal'
    end
    object pedido_adic_descserie: TIBStringField
      FieldName = 'serie'
      Origin = 'pedido_adic_desc.serie'
      Required = True
      Size = 4
    end
    object pedido_adic_descies_faturado: TIBStringField
      FieldName = 'ies_faturado'
      Origin = 'pedido_adic_desc.ies_faturado'
      FixedChar = True
      Size = 1
    end
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 116
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
    object parametro_comercialdias_inspecao: TSmallintField
      FieldName = 'dias_inspecao'
      Origin = '"parametro_comercial"."dias_inspecao"'
    end
    object parametro_comercialmod_plan_excel: TBlobField
      FieldName = 'mod_plan_excel'
      Origin = 'parametro_comercial.mod_plan_excel'
      Size = 8
    end
  end
  object cby_pedido_faturados: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from  "cby_pedido_faturados"(:cod_empresa, :num_pedido)' +
        ';')
    Left = 264
    Top = 48
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
    object cby_pedido_faturadosvlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"cby_pedido_faturados"."vlr_bruto"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_adicional: TIBBCDField
      FieldName = 'vlr_adicional'
      Origin = '"cby_pedido_faturados"."vlr_adicional"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_desconto: TIBBCDField
      FieldName = 'vlr_desconto'
      Origin = '"cby_pedido_faturados"."vlr_desconto"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"cby_pedido_faturados"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_bruto_esp: TIBBCDField
      FieldName = 'vlr_bruto_esp'
      Origin = '"cby_pedido_faturados"."vlr_bruto_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_adicional_esp: TIBBCDField
      FieldName = 'vlr_adicional_esp'
      Origin = '"cby_pedido_faturados"."vlr_adicional_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_desconto_esp: TIBBCDField
      FieldName = 'vlr_desconto_esp'
      Origin = '"cby_pedido_faturados"."vlr_desconto_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"cby_pedido_faturados"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_fat: TIBBCDField
      FieldName = 'vlr_total_fat'
      Origin = '"cby_pedido_faturados"."vlr_total_fat"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_fat_esp: TIBBCDField
      FieldName = 'vlr_total_fat_esp'
      Origin = '"cby_pedido_faturados"."vlr_total_fat_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_pend: TIBBCDField
      FieldName = 'vlr_total_pend'
      Origin = '"cby_pedido_faturados"."vlr_total_pend"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_pend_esp: TIBBCDField
      FieldName = 'vlr_total_pend_esp'
      Origin = '"cby_pedido_faturados"."vlr_total_pend_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_canc: TIBBCDField
      FieldName = 'vlr_total_canc'
      Origin = '"cby_pedido_faturados"."vlr_total_canc"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_canc_esp: TIBBCDField
      FieldName = 'vlr_total_canc_esp'
      Origin = '"cby_pedido_faturados"."vlr_total_canc_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadostot_pagamento_real: TIBBCDField
      FieldName = 'tot_pagamento_real'
      Origin = '"cby_pedido_faturados"."tot_pagamento_real"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadostot_pagamento_esp: TIBBCDField
      FieldName = 'tot_pagamento_esp'
      Origin = '"cby_pedido_faturados"."tot_pagamento_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadossaldo_real: TIBBCDField
      FieldName = 'saldo_real'
      Origin = '"cby_pedido_faturados"."saldo_real"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadossaldo_esp: TIBBCDField
      FieldName = 'saldo_esp'
      Origin = '"cby_pedido_faturados"."saldo_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"cby_pedido_faturados"."volume"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"cby_pedido_faturados"."qtd_caixas"'
    end
    object cby_pedido_faturadospes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"cby_pedido_faturados"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadospes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"cby_pedido_faturados"."pes_bruto"'
      Precision = 18
      Size = 2
    end
  end
  object spr_faturas_pedido: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "spr_faturas_pedido"(:cod_empresa, :num_pedido);')
    Left = 224
    Top = 48
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
    object spr_faturas_pedidonum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = 'spr_faturas_pedido.num_nota_fiscal'
    end
    object spr_faturas_pedidoserie: TIBStringField
      FieldName = 'serie'
      Origin = 'spr_faturas_pedido.serie'
      FixedChar = True
      Size = 4
    end
    object spr_faturas_pedidodat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = 'spr_faturas_pedido.dat_emissao'
    end
    object spr_faturas_pedidonum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = 'spr_faturas_pedido.num_fatura'
      FixedChar = True
      Size = 25
    end
    object spr_faturas_pedidonum_ref_volume: TIBStringField
      FieldName = 'num_ref_volume'
      Origin = 'spr_faturas_pedido.num_ref_volume'
      FixedChar = True
      Size = 25
    end
    object spr_faturas_pedidonum_romaneio: TIntegerField
      FieldName = 'num_romaneio'
      Origin = 'spr_faturas_pedido.num_romaneio'
    end
    object spr_faturas_pedidovlr_total: TIBBCDField
      FieldName = 'vlr_total'
      Origin = 'spr_faturas_pedido.vlr_total'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidovlr_total_esp: TIBBCDField
      FieldName = 'vlr_total_esp'
      Origin = 'spr_faturas_pedido.vlr_total_esp'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidovolume: TIBBCDField
      FieldName = 'volume'
      Origin = 'spr_faturas_pedido.volume'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidoqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = 'spr_faturas_pedido.qtd_caixas'
    end
    object spr_faturas_pedidopes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = 'spr_faturas_pedido.pes_liquido'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidopes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = 'spr_faturas_pedido.pes_bruto'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidopend_pag_real: TIBBCDField
      FieldName = 'pend_pag_real'
      Origin = '"spr_faturas_pedido"."pend_pag_real"'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidopend_pag_esp: TIBBCDField
      FieldName = 'pend_pag_esp'
      Origin = '"spr_faturas_pedido"."pend_pag_esp"'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidovlr_faturado: TIBBCDField
      FieldName = 'vlr_faturado'
      Origin = '"spr_faturas_pedido"."vlr_faturado"'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidovlr_faturado_esp: TIBBCDField
      FieldName = 'vlr_faturado_esp'
      Origin = '"spr_faturas_pedido"."vlr_faturado_esp"'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidovlr_saldo: TIBBCDField
      FieldName = 'vlr_saldo'
      Origin = '"spr_faturas_pedido"."vlr_saldo"'
      Precision = 18
      Size = 2
    end
    object spr_faturas_pedidovlr_saldo_esp: TIBBCDField
      FieldName = 'vlr_saldo_esp'
      Origin = '"spr_faturas_pedido"."vlr_saldo_esp"'
      Precision = 18
      Size = 2
    end
  end
  object pedido_pagamento_ef: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      '   select a.*, b."num_fatura"'
      '     from "pedido_pagamento" a'
      '      left join "nf_saida_complemento" b'
      '            on b."cod_empresa" = a."cod_empresa"'
      '           and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '           and b."serie" = a."serie"'
      '    where a."cod_empresa" = :cod_empresa'
      '      and a."num_pedido" = :num_pedido'
      '      and a."num_nota_fiscal" = :num_nota_fiscal'
      '      and a."serie" = '#39'1'#39
      '    order by a."dat_pagamento"')
    Left = 149
    Top = 80
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
        Name = 'num_nota_fiscal'
        ParamType = ptUnknown
      end>
    object pedido_pagamento_efcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_pagamento"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamento_efnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_pagamento"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamento_efnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_pagamento"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamento_efvlr_pagamento: TIBBCDField
      FieldName = 'vlr_pagamento'
      Origin = '"pedido_pagamento"."vlr_pagamento"'
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_efdat_pagamento: TDateField
      FieldName = 'dat_pagamento'
      Origin = '"pedido_pagamento"."dat_pagamento"'
    end
    object pedido_pagamento_eftxt_pagamento: TMemoField
      FieldName = 'txt_pagamento'
      Origin = '"pedido_pagamento"."txt_pagamento"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_pagamento_eftot_pagamentos: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'tot_pagamentos'
      Origin = '"pedido_pagamento"."tot_pagamentos"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_efvlr_pagamento_esp: TIBBCDField
      FieldName = 'vlr_pagamento_esp'
      Origin = '"pedido_pagamento"."vlr_pagamento_esp"'
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_eftot_pagamentos_esp: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'tot_pagamentos_esp'
      Origin = '"pedido_pagamento"."tot_pagamentos_esp"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_efnum_seq_fatpag: TIntegerField
      FieldName = 'num_seq_fatpag'
      Origin = '"pedido_pagamento"."num_seq_fatpag"'
    end
    object pedido_pagamento_efnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"pedido_pagamento"."num_nota_fiscal"'
    end
    object pedido_pagamento_efserie: TIBStringField
      FieldName = 'serie'
      Origin = '"pedido_pagamento"."serie"'
      FixedChar = True
      Size = 4
    end
    object pedido_pagamento_efnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
  end
end
