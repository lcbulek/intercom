object fr_PedidosRegistradosResumo: Tfr_PedidosRegistradosResumo
  Left = 770
  Top = 364
  HelpType = htKeyword
  HelpKeyword = '071'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pedidos Registrados no Sistema - Resumo'
  ClientHeight = 150
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
    Left = 5
    Top = 81
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Panel1: TPanel
    Left = 0
    Top = 114
    Width = 354
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object btnGerar: TBitBtn
      Left = 8
      Top = 6
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
      Top = 6
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
      Left = 272
      Top = 6
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
      Left = 167
      Top = 14
      Width = 99
      Height = 9
      BevelOuter = bvLowered
      TabOrder = 3
    end
  end
  object dbcClientes: TJvDBLookupCombo
    Left = 4
    Top = 23
    Width = 344
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
      'group by 1'
      'order by 1')
    Left = 40
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
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
    BeforeOpen = FornecedoresBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select b."cod_fornecedor", c."raz_social_reduz"'
      'from "pedido" a, "pedido_complemento" b, "fornecedor" c'
      'where'
      '      a."cod_empresa" = :cod_empresa'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido"  = a."num_pedido"'
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
  object Pedidos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnCalcFields = PedidosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select                                                          ' +
        '                      '
      
        '        a."cod_empresa",                                        ' +
        '                      '
      
        '        a."num_pedido",                                         ' +
        '                      '
      
        '        a."cod_cliente",                                        ' +
        '                      '
      
        '        a."dat_emissao",                                        ' +
        '                      '
      
        '        a."dat_entrega",                                        ' +
        '                      '
      
        '        a."dat_cadastro",                                       ' +
        '                      '
      
        '        a."dat_liberacao",                                      ' +
        '                      '
      
        '        a."cor_embarque",                                       ' +
        '                      '
      
        '        b."cod_cond_venda",                                     ' +
        '                      '
      
        '        b."cod_porto_emb",                                      ' +
        '                      '
      
        '        b."cod_porto_des",                                      ' +
        '                      '
      
        '        a."dat_embalagem",                                      ' +
        '                      '
      
        '        a."dat_ctn_marks",                                      ' +
        '                      '
      
        '        b."pes_bruto", b."vol_total", a."terms_payment",  a."txt' +
        '_observacao",              '
      
        '        a."vlr_bruto", a."vlr_liquido", a."vlr_bruto_esp", a."vl' +
        'r_liquido_esp",            '
      
        '        b."num_pedido_cli", b."num_pedido_for", b."cod_fornecedo' +
        'r", c."raz_social_reduz",  '
      
        '        a."dat_vertratadm", a."ies_li", a."dat_verli", a."ies_pr' +
        'eco_esp"                   '
      
        ' from "pedido" a, "pedido_complemento" b, "fornecedor" c        ' +
        '                      '
      
        ' where                                                          ' +
        '                      '
      '       a."cod_empresa" = :cod_empresa'
      '   and a."cod_cliente" = :cod_cliente'
      '   and b."cod_fornecedor" = :cod_fornecedor'
      '  and substr(a."dat_emissao", 1,4) = :ano'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido" = a."num_pedido"'
      '  and c."cod_fornecedor" = b."cod_fornecedor"'
      '  and a."cod_cliente" in (select "cod_cliente"'
      '                            from "usuario_cliente"'
      '                           where "login" = :login)'
      'order by a."dat_emissao" descending')
    Left = 120
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
      end
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end>
    object Pedidoscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Pedidosnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Pedidoscod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Required = True
      Size = 12
    end
    object Pedidosdat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"pedido"."dat_emissao"'
    end
    object Pedidosdat_entrega: TDateField
      FieldName = 'dat_entrega'
      Origin = '"pedido"."dat_entrega"'
    end
    object Pedidosdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"pedido"."dat_cadastro"'
    end
    object Pedidosdat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
    end
    object Pedidoscor_embarque: TSmallintField
      FieldName = 'cor_embarque'
      Origin = '"pedido"."cor_embarque"'
    end
    object Pedidoscod_cond_venda: TIntegerField
      FieldName = 'cod_cond_venda'
      Origin = '"pedido_complemento"."cod_cond_venda"'
    end
    object Pedidoscod_porto_emb: TIntegerField
      FieldName = 'cod_porto_emb'
      Origin = '"pedido_complemento"."cod_porto_emb"'
    end
    object Pedidoscod_porto_des: TIntegerField
      FieldName = 'cod_porto_des'
      Origin = '"pedido_complemento"."cod_porto_des"'
    end
    object Pedidosdat_embalagem: TDateField
      FieldName = 'dat_embalagem'
      Origin = '"pedido"."dat_embalagem"'
    end
    object Pedidosdat_ctn_marks: TDateField
      FieldName = 'dat_ctn_marks'
      Origin = '"pedido"."dat_ctn_marks"'
    end
    object Pedidospes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"pedido_complemento"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object Pedidosvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"pedido_complemento"."vol_total"'
      Precision = 18
      Size = 3
    end
    object Pedidosterms_payment: TIBStringField
      FieldName = 'terms_payment'
      Origin = '"pedido"."terms_payment"'
      Size = 255
    end
    object Pedidostxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"pedido"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object Pedidosvlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"pedido"."vlr_bruto"'
      Precision = 18
      Size = 2
    end
    object Pedidosvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object Pedidosvlr_bruto_esp: TIBBCDField
      FieldName = 'vlr_bruto_esp'
      Origin = '"pedido"."vlr_bruto_esp"'
      Precision = 18
      Size = 2
    end
    object Pedidosvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object Pedidosnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object Pedidosnum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object Pedidoscod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = '"pedido_complemento"."cod_fornecedor"'
    end
    object Pedidosraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object Pedidosdat_vertratadm: TDateField
      FieldName = 'dat_vertratadm'
      Origin = '"pedido"."dat_vertratadm"'
    end
    object Pedidosies_li: TIBStringField
      FieldName = 'ies_li'
      Origin = '"pedido"."ies_li"'
      FixedChar = True
      Size = 1
    end
    object Pedidosdat_verli: TDateField
      FieldName = 'dat_verli'
      Origin = '"pedido"."dat_verli"'
    end
    object Pedidosies_preco_esp: TIBStringField
      FieldName = 'ies_preco_esp'
      Origin = '"pedido"."ies_preco_esp"'
      FixedChar = True
      Size = 1
    end
    object Pedidosgrupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'grupo'
      Size = 1024
      Calculated = True
    end
    object Pedidosden_tip_condicao: TStringField
      FieldKind = fkCalculated
      FieldName = 'den_tip_condicao'
      Size = 40
      Calculated = True
    end
    object Pedidosporto_emb: TStringField
      FieldKind = fkCalculated
      FieldName = 'porto_emb'
      Size = 50
      Calculated = True
    end
    object Pedidosporto_dest: TStringField
      FieldKind = fkCalculated
      FieldName = 'porto_dest'
      Size = 50
      Calculated = True
    end
    object PedidoscalVlrPendente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calVlrPendente'
      Calculated = True
    end
    object PedidoscalVlrFaturado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calVlrFaturado'
      Calculated = True
    end
    object PedidoscalVlrFaturadoEsp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calVlrFaturadoEsp'
      Calculated = True
    end
    object PedidoscalPesBruto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calPesBruto'
      Calculated = True
    end
    object PedidoscalVolTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calVolTotal'
      Calculated = True
    end
    object PedidoscalVlrPendenteEsp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calVlrPendenteEsp'
      Calculated = True
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
    object parametro_comercialmod_plan_resumo_pedidos: TBlobField
      FieldName = 'mod_plan_resumo_pedidos'
      Origin = '"parametro_comercial"."mod_plan_resumo_pedidos"'
      Size = 8
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 298
    Top = 40
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 297
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 296
    Top = 72
  end
  object Grupos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a."den_tip_produto"'
      'from "tipo_produto" a'
      'where'
      '  exists (select * from "pedido_produto" b'
      '           where b."cod_empresa" = :cod_empresa'
      '             and b."num_pedido"  = :num_pedido'
      '             and exists (select * from "produto" c'
      
        '                          where c."cod_empresa" = b."cod_empresa' +
        '"'
      
        '                            and c."cod_produto" = b."cod_produto' +
        '"'
      
        '                            and c."cod_tip_produto" = a."cod_tip' +
        '_produto"))'
      'group by 1'
      'order by 1'
      '')
    Left = 155
    Top = 40
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
  end
  object cby_pedido_pendentes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "cby_pedido_pendentes"(:cod_empresa, :num_pedido);')
    Left = 155
    Top = 72
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
  end
  object CondicaoVenda: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "den_tip_condicao"'
      '  from "condicao_venda"'
      'where "cod_tip_condicao" = :"cod_tip_condicao"')
    Left = 188
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_tip_condicao'
        ParamType = ptUnknown
      end>
  end
  object Portos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "den_porto" from "portos"'
      'where "cod_porto" = :"cod_porto"')
    Left = 189
    Top = 41
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_porto'
        ParamType = ptUnknown
      end>
  end
end
