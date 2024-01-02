object fr_HistoricoComprasEmbarque: Tfr_HistoricoComprasEmbarque
  Left = 705
  Top = 205
  HelpType = htKeyword
  HelpKeyword = '071'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico de Compras e embarque dos produtos '
  ClientHeight = 435
  ClientWidth = 394
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbClientes: TLabel
    Left = 4
    Top = 9
    Width = 37
    Height = 13
    Caption = 'Clientes'
    Visible = False
  end
  object lbFornecedores: TLabel
    Left = 4
    Top = 47
    Width = 65
    Height = 13
    Caption = 'Fornecedores'
    Visible = False
  end
  object lbAno: TLabel
    Left = 132
    Top = 89
    Width = 19
    Height = 13
    Caption = 'Ano'
    Visible = False
  end
  object lbCodProduto: TLabel
    Left = 4
    Top = 85
    Width = 88
    Height = 13
    Caption = 'C'#243'digo do Produto'
    Visible = False
  end
  object lbListaProdutos: TLabel
    Left = 4
    Top = 122
    Width = 82
    Height = 13
    Caption = 'Lista de Produtos'
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 399
    Width = 394
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
      Left = 278
      Top = 6
      Width = 72
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
      Width = 108
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
    DisplayEmpty = '* Escolha um Cliente *'
    EmptyValue = '0'
    LookupField = 'cod_cliente'
    LookupDisplay = 'cod_cliente'
    LookupSource = ds_Clientes
    TabOrder = 1
    Visible = False
    OnChange = dbcClientesChange
  end
  object dbcFornecedores: TJvDBLookupCombo
    Left = 4
    Top = 61
    Width = 346
    Height = 21
    DropDownCount = 30
    DisplayAllFields = True
    DisplayEmpty = '* Todos os Fornecedores *'
    EmptyValue = '0'
    LookupField = 'cod_fornecedor'
    LookupDisplay = 'raz_social_reduz'
    LookupSource = ds_Fornecedores
    TabOrder = 2
    Visible = False
    OnChange = dbcFornecedoresChange
  end
  object seAno: TSpinEdit
    Left = 131
    Top = 102
    Width = 60
    Height = 22
    MaxLength = 4
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 0
    Visible = False
  end
  object edtCodProduto: TEdit
    Left = 4
    Top = 101
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    Visible = False
  end
  object memListaProdutos: TMemo
    Left = 4
    Top = 136
    Width = 141
    Height = 257
    ScrollBars = ssVertical
    TabOrder = 5
    Visible = False
  end
  object stInfo: TStaticText
    Left = 152
    Top = 136
    Width = 197
    Height = 68
    AutoSize = False
    Caption = 
      'Selecionar o Cliente.'#13#10'Digitar ou Colar os C'#243'digos dos Produtos ' +
      'no campo ao lado ou usar o bot'#227'o "Importar Lista" para importar ' +
      'uma lista de produtos de um Excel.'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object bbImportar: TBitBtn
    Left = 152
    Top = 221
    Width = 97
    Height = 25
    Action = actImportar
    Caption = 'Importar Lista'
    TabOrder = 7
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
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 48
    Top = 8
    object actGerar: TAction
      Caption = 'Gerar'
      ImageIndex = 235
      OnExecute = actGerarExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir'
      Enabled = False
      ImageIndex = 235
      OnExecute = actAbrirExecute
    end
    object actImportar: TAction
      Caption = 'Importar Lista'
      Enabled = False
      ImageIndex = 235
      OnExecute = actImportarExecute
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
    Left = 84
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
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
  object ds_Clientes: TDataSource
    DataSet = Clientes
    Left = 114
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
    Left = 56
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
    Left = 92
    Top = 48
  end
  object PedidoProdutos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "spr_produtos_embarcados"(:cod_empresa, :cod_produ' +
        'to, :cod_cliente, :cod_fornecedor, :ano);')
    Left = 136
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
    object PedidoProdutosnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"spr_produtos_embarcados"."num_sequencia"'
    end
    object PedidoProdutoscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"spr_produtos_embarcados"."cod_produto"'
      Size = 15
    end
    object PedidoProdutosnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"spr_produtos_embarcados"."num_pedido"'
    end
    object PedidoProdutosdat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"spr_produtos_embarcados"."dat_liberacao"'
    end
    object PedidoProdutosnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"spr_produtos_embarcados"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object PedidoProdutosnum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"spr_produtos_embarcados"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object PedidoProdutosnum_ref_volume: TIBStringField
      FieldName = 'num_ref_volume'
      Origin = '"spr_produtos_embarcados"."num_ref_volume"'
      FixedChar = True
      Size = 25
    end
    object PedidoProdutosqtd_pedido: TIBBCDField
      FieldName = 'qtd_pedido'
      Origin = '"spr_produtos_embarcados"."qtd_pedido"'
      Precision = 18
      Size = 3
    end
    object PedidoProdutosvlr_unit_pedido: TFloatField
      FieldName = 'vlr_unit_pedido'
      Origin = '"spr_produtos_embarcados"."vlr_unit_pedido"'
    end
    object PedidoProdutosvlr_unit_ped_esp: TFloatField
      FieldName = 'vlr_unit_ped_esp'
      Origin = '"spr_produtos_embarcados"."vlr_unit_ped_esp"'
    end
    object PedidoProdutosvlr_pedido: TIBBCDField
      FieldName = 'vlr_pedido'
      Origin = '"spr_produtos_embarcados"."vlr_pedido"'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosvlr_pedido_esp: TIBBCDField
      FieldName = 'vlr_pedido_esp'
      Origin = '"spr_produtos_embarcados"."vlr_pedido_esp"'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"spr_produtos_embarcados"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object PedidoProdutosnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"spr_produtos_embarcados"."num_fatura"'
      Size = 25
    end
    object PedidoProdutosdat_fatura: TDateField
      FieldName = 'dat_fatura'
      Origin = '"spr_produtos_embarcados"."dat_fatura"'
    end
    object PedidoProdutosqtd_fatura: TIBBCDField
      FieldName = 'qtd_fatura'
      Origin = '"spr_produtos_embarcados"."qtd_fatura"'
      Precision = 18
      Size = 3
    end
    object PedidoProdutosvlr_unit_fatura: TFloatField
      FieldName = 'vlr_unit_fatura'
      Origin = '"spr_produtos_embarcados"."vlr_unit_fatura"'
    end
    object PedidoProdutosvlr_fatura: TIBBCDField
      FieldName = 'vlr_fatura'
      Origin = '"spr_produtos_embarcados"."vlr_fatura"'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosvlr_fatura_esp: TIBBCDField
      FieldName = 'vlr_fatura_esp'
      Origin = '"spr_produtos_embarcados"."vlr_fatura_esp"'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"spr_produtos_embarcados"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object PedidoProdutosvlr_pendente: TIBBCDField
      FieldName = 'vlr_pendente'
      Origin = '"spr_produtos_embarcados"."vlr_pendente"'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosvlr_pendente_esp: TIBBCDField
      FieldName = 'vlr_pendente_esp'
      Origin = '"spr_produtos_embarcados"."vlr_pendente_esp"'
      Precision = 18
      Size = 2
    end
    object PedidoProdutospes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"spr_produtos_embarcados"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"spr_produtos_embarcados"."volume"'
      Precision = 18
      Size = 3
    end
    object PedidoProdutosdat_embarque: TDateField
      FieldName = 'dat_embarque'
      Origin = '"spr_produtos_embarcados"."dat_embarque"'
    end
    object PedidoProdutosobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"spr_produtos_embarcados"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object PedidoProdutosobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"spr_produtos_embarcados"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = ProdutosAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '/* selecionar produtos Embarcados do cliente e fornecedor */'
      'select a."cod_produto"'
      'from "produto" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and a."cod_fornecedor" = :cod_fornecedor'
      
        '  and exists (select * from "pedido" p , "pedido_complemento" c,' +
        ' "pedido_produto" b'
      '               where p."cod_empresa" = a."cod_empresa"'
      '                 and p."ies_tip_pedido" = '#39'P'#39
      '                 and p."cod_cliente" = a."cod_cliente"'
      '                 and c."cod_fornecedor" = a."cod_fornecedor"'
      '                 and substr(p."dat_liberacao", 1, 4) = :ano'
      '                 and c."cod_empresa" = p."cod_empresa"'
      '                 and c."num_pedido" = p."num_pedido"'
      '                 and b."cod_empresa" = p."cod_empresa"'
      '                 and b."num_pedido" = p."num_pedido"'
      '                 and b."cod_produto" = a."cod_produto"'
      
        '                 and (((b."qtd_faturada" + b."qtd_romaneada") > ' +
        '0)'
      
        '                   or ((b."qtd_faturada" + b."qtd_romaneada") = ' +
        '0)))'
      'order by a."cod_produto"')
    Left = 160
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
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 196
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
    object parametro_comercialmod_plan_itens_emb_prod: TBlobField
      FieldName = 'mod_plan_itens_emb_prod'
      Origin = '"parametro_comercial"."mod_plan_itens_emb_prod"'
      Size = 8
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 234
    Top = 8
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 273
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 216
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
    Left = 253
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
  object pedido_adic_desc: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "pedido_adic_desc"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      'order by "ies_tipo"')
    Left = 320
    Top = 8
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
  object t_histcompras: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = t_histcomprasAfterDelete
    AfterPost = t_histcomprasAfterPost
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "t_histcompras"'
      'where'
      '  "t_histcompras"."login" = :"OLD_login" and'
      '  "t_histcompras"."t_idx" = :"OLD_t_idx"')
    InsertSQL.Strings = (
      'insert into "t_histcompras"'
      
        '  ("t_histcompras"."login", "t_histcompras"."t_idx", "t_histcomp' +
        'ras"."cod_produto", '
      
        '   "t_histcompras"."cod_cliente", "t_histcompras"."cod_fornecedo' +
        'r", '
      '"t_histcompras"."nom_fornecedor")'
      'values'
      
        '  (:"login", :"t_idx", :"cod_produto", :"cod_cliente", :"cod_for' +
        'necedor", '
      '   :"nom_fornecedor")')
    RefreshSQL.Strings = (
      'Select '
      '  "t_histcompras"."login",'
      '  "t_histcompras"."t_idx",'
      '  "t_histcompras"."cod_produto",'
      '  "t_histcompras"."cod_cliente",'
      '  "t_histcompras"."cod_fornecedor",'
      '  "t_histcompras"."nom_fornecedor"'
      'from "t_histcompras" '
      'where'
      '  "t_histcompras"."login" = :"login" and'
      '  "t_histcompras"."t_idx" = :"t_idx"')
    SelectSQL.Strings = (
      'select * from "t_histcompras"'
      'where "login" = :login'
      '  and "t_idx" = :"t_idx"'
      'order by "cod_cliente", "nom_fornecedor", "cod_produto"')
    ModifySQL.Strings = (
      'update "t_histcompras"'
      'set'
      '  "t_histcompras"."login" = :"login",'
      '  "t_histcompras"."t_idx" = :"t_idx",'
      '  "t_histcompras"."cod_produto" = :"cod_produto",'
      '  "t_histcompras"."cod_cliente" = :"cod_cliente",'
      '  "t_histcompras"."cod_fornecedor" = :"cod_fornecedor",'
      '  "t_histcompras"."nom_fornecedor" = :"nom_fornecedor"'
      'where'
      '  "t_histcompras"."login" = :"OLD_login" and'
      '  "t_histcompras"."t_idx" = :"OLD_t_idx"')
    Left = 216
    Top = 88
    object t_histcompraslogin: TIBStringField
      FieldName = 'login'
      Origin = '"t_histcompras"."login"'
      Size = 18
    end
    object t_histcomprast_idx: TIntegerField
      FieldName = 't_idx'
      Origin = '"t_histcompras"."t_idx"'
    end
    object t_histcomprascod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"t_histcompras"."cod_produto"'
      Size = 15
    end
    object t_histcomprascod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"t_histcompras"."cod_cliente"'
      Size = 12
    end
    object t_histcomprascod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = '"t_histcompras"."cod_fornecedor"'
    end
    object t_histcomprasnom_fornecedor: TIBStringField
      FieldName = 'nom_fornecedor'
      Origin = '"t_histcompras"."nom_fornecedor"'
      Size = 30
    end
  end
  object qryProdutos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a."cod_produto", a."cod_cliente", a."cod_fornecedor", b."' +
        'raz_social_reduz"'
      'from "produto" a, "fornecedor" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_produto"  like :cod_produto || '#39'%'#39
      '  and a."cod_cliente" = :"cod_cliente"'
      '  and b."cod_fornecedor" = a."cod_fornecedor"')
    Left = 256
    Top = 88
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
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
  end
end
