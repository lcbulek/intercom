object fr_Pendentes_Embarque: Tfr_Pendentes_Embarque
  Left = 377
  Top = 334
  HelpType = htKeyword
  HelpKeyword = '069'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Produtos Pendentes de Embarque - Production List'
  ClientHeight = 191
  ClientWidth = 414
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
    Top = 85
    Width = 83
    Height = 13
    Caption = 'N'#186' Pedido Cliente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 150
    Width = 414
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
      Caption = 'Abrir'
      Enabled = False
      TabOrder = 1
      OnClick = actAbrirExecute
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
      Left = 184
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
      Left = 272
      Top = 16
      Width = 121
      Height = 9
      BevelOuter = bvLowered
      TabOrder = 3
    end
  end
  object dbcClientes: TJvDBLookupCombo
    Left = 4
    Top = 23
    Width = 345
    Height = 21
    DropDownCount = 30
    DisplayAllFields = True
    DisplayEmpty = '** Escolha um Cliente **'
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
    Width = 345
    Height = 21
    DropDownCount = 30
    DisplayAllFields = True
    DisplayEmpty = '** Escolha um Fornecedor **'
    EmptyValue = '0'
    LookupField = 'cod_fornecedor'
    LookupDisplay = 'raz_social_reduz'
    LookupSource = ds_Fornecedores
    TabOrder = 2
  end
  object rgPallets: TRadioGroup
    Left = 201
    Top = 88
    Width = 147
    Height = 32
    Caption = 'Gerar Colunas para Pallets'
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 4
  end
  object edtNumPedido: TEdit
    Left = 4
    Top = 98
    Width = 185
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object cbInspecao: TCheckBox
    Left = 4
    Top = 128
    Width = 342
    Height = 17
    Caption = 'Somente Produtos que passaram na Inspe'#231#227'o'
    TabOrder = 5
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 40
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
    SQL.Strings = (
      'select "cod_cliente"'
      'from "cliente"'
      'order by 1')
    Left = 72
    Top = 8
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
    Left = 106
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
    Left = 76
    Top = 48
  end
  object Pedidos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = PedidosAfterScroll
    SQL.Strings = (
      'select a."cod_empresa",'
      '       a."num_pedido", c."num_pedido_cli", c."num_pedido_for",'
      '       a."cod_cliente",'
      '       c."cod_fornecedor", f."raz_social",'
      '       a."dat_liberacao", a."ies_pallets"'
      
        'from "pedido" a, "pedido_complemento" c, "cliente" d, "fornecedo' +
        'r" f'
      'where'
      '     a."cod_empresa"    = :cod_empresa'
      ' and a."ies_situacao"   = '#39'N'#39
      ' and a."ies_tip_pedido" = '#39'P'#39
      ' and a."cod_cliente"    = :cod_cliente'
      ' and c."cod_fornecedor" = :cod_fornecedor'
      ' and exists (select * from "pedido_produto" b'
      '              where b."cod_empresa" = a."cod_empresa"'
      '                and b."num_pedido" = a."num_pedido"'
      '                and b."qtd_pendente" > 0)'
      ' and c."cod_empresa" = a."cod_empresa"'
      ' and c."num_pedido" = a."num_pedido"'
      ' and d."cod_cliente" = a."cod_cliente"'
      ' and f."cod_fornecedor" = c."cod_fornecedor"'
      'order by a."dat_liberacao"')
    Left = 152
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
    object Pedidoscod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Required = True
      Size = 12
    end
    object Pedidoscod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = '"pedido_complemento"."cod_fornecedor"'
    end
    object Pedidosraz_social: TIBStringField
      FieldName = 'raz_social'
      Origin = '"fornecedor"."raz_social"'
      Size = 50
    end
    object Pedidosdat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
    end
    object Pedidosies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = 'pedido.ies_pallets'
      FixedChar = True
      Size = 1
    end
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = ProdutosAfterScroll
    SQL.Strings = (
      '/* Produtos Pendentes de Embarque */'
      'select a."seq_pkl", a."seq_emb_esp", a."ies_emb_esp",'
      '       a."cod_empresa", a."num_pedido", a."cod_produto",'
      '       a."num_sequencia",b."den_produto_det",'
      
        '       a."qtd_produto", a."qtd_pendente", a."vlr_unitario", a."v' +
        'lr_unitario_esp", a."vlr_liquido",'
      
        '       a."qtd_export_box",  a."pes_bruto", a."pes_liquido", a."v' +
        'ol_caixas",'
      
        '       a."un_cx_master", c."sigla_i", b."pes_unitario", a."dat_i' +
        'nspecao", a."txt_status_producao", a."ies_result_inspecao",'
      
        '       a."seq_pallet", a."qtd_pallet", a."pes_bruto_pallet", a."' +
        'pes_liquido_pallet",'
      
        '       a."altura_pallet", a."largura_pallet", a."comprimento_pal' +
        'let", a."volume_pallet", a."pes_pallet_vazio"'
      'from "pedido_produto" a, "produto" b, "medida" c'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido'
      '  and a."qtd_pendente" > 0'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."cod_produto" = a."cod_produto"'
      '  and c."cod_uni_medida" = b."cod_uni_medida"'
      'order by a."seq_pkl"')
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
        Name = 'num_pedido'
        ParamType = ptUnknown
      end>
    object Produtoscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produtosnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_produto"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Produtoscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"pedido_produto"."cod_produto"'
      Required = True
      Size = 15
    end
    object Produtosnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Produtosden_produto_det: TMemoField
      FieldName = 'den_produto_det'
      Origin = '"produto"."den_produto_det"'
      BlobType = ftMemo
      Size = 8
    end
    object Produtosqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"pedido_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object Produtosqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"pedido_produto"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object Produtosvlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
    end
    object Produtosvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object Produtosqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"pedido_produto"."qtd_export_box"'
    end
    object Produtospes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"pedido_produto"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object Produtospes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"pedido_produto"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object Produtosvol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"pedido_produto"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object Produtosun_cx_master: TIBBCDField
      FieldName = 'un_cx_master'
      Origin = '"pedido_produto"."un_cx_master"'
      Precision = 18
      Size = 3
    end
    object Produtossigla_i: TIBStringField
      FieldName = 'sigla_i'
      Origin = '"medida"."sigla_i"'
      FixedChar = True
      Size = 5
    end
    object Produtospes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
    object Produtosdat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = '"pedido_produto"."dat_inspecao"'
    end
    object Produtosseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = 'pedido_produto.seq_pkl'
    end
    object Produtosseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = 'pedido_produto.seq_emb_esp'
    end
    object Produtosseq_pallet: TIntegerField
      FieldName = 'seq_pallet'
      Origin = 'pedido_produto.seq_pallet'
    end
    object Produtosaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = 'pedido_produto.altura_pallet'
      Precision = 9
      Size = 4
    end
    object Produtoslargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = 'pedido_produto.largura_pallet'
      Precision = 9
      Size = 4
    end
    object Produtoscomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = 'pedido_produto.comprimento_pallet'
      Precision = 9
      Size = 4
    end
    object Produtosvolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = 'pedido_produto.volume_pallet'
      Precision = 18
      Size = 4
    end
    object Produtosies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = 'pedido_produto.ies_emb_esp'
      FixedChar = True
      Size = 1
    end
    object Produtosqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = 'pedido_produto.qtd_pallet'
    end
    object Produtospes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = 'pedido_produto.pes_bruto_pallet'
      Precision = 18
      Size = 2
    end
    object Produtospes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = 'pedido_produto.pes_liquido_pallet'
      Precision = 18
      Size = 2
    end
    object Produtospes_pallet_vazio: TIBBCDField
      FieldName = 'pes_pallet_vazio'
      Origin = 'pedido_produto.pes_pallet_vazio'
      Precision = 9
      Size = 2
    end
    object Produtostxt_status_producao: TMemoField
      FieldName = 'txt_status_producao'
      Origin = 'pedido_produto.txt_status_producao'
      BlobType = ftMemo
      Size = 8
    end
    object Produtosies_result_inspecao: TIBStringField
      FieldName = 'ies_result_inspecao'
      Origin = 'pedido_produto.ies_result_inspecao'
      FixedChar = True
      Size = 1
    end
    object Produtosvlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = 'pedido_produto.vlr_unitario_esp'
    end
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 188
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
    object parametro_comercialmod_ship_list: TBlobField
      FieldName = 'mod_ship_list'
      Origin = '"parametro_comercial"."mod_ship_list"'
      Size = 8
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
  end
  object parametro_cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "parametro_cliente"'
      'where "cod_cliente" = :cod_cliente')
    Left = 159
    Top = 44
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_cliente'
        ParamType = ptInput
        Value = ''
      end>
    object parametro_clientecod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"parametro_cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object parametro_clientemas_cod_produto: TIBStringField
      DisplayLabel = 'M'#225'scara Produto'
      FieldName = 'mas_cod_produto'
      Origin = '"parametro_cliente"."mas_cod_produto"'
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 226
    Top = 8
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 265
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
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
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
      Size = 3
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
    object embalagempeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
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
  object emb_esp_ped: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "emb_especial_ped"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      '  and "seq" = :seq')
    Left = 236
    Top = 87
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'num_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq'
        ParamType = ptUnknown
      end>
    object emb_esp_pedcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"emb_especial_ped"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_pednum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"emb_especial_ped"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_pedseq: TIntegerField
      FieldName = 'seq'
      Origin = '"emb_especial_ped"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_pedden_embalagem: TIBStringField
      FieldName = 'den_embalagem'
      Origin = '"emb_especial_ped"."den_embalagem"'
      Size = 75
    end
    object emb_esp_pedqtd_total: TIBBCDField
      FieldName = 'qtd_total'
      Origin = '"emb_especial_ped"."qtd_total"'
      Precision = 18
      Size = 3
    end
    object emb_esp_pedvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"emb_especial_ped"."vol_total"'
      Precision = 18
      Size = 3
    end
    object emb_esp_pedpes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"emb_especial_ped"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object emb_esp_pedpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_ped"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object emb_esp_pedqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"emb_especial_ped"."qtd_caixas"'
    end
    object emb_esp_pedqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_ped"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object emb_esp_pedpes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"emb_especial_ped"."pes_unitario"'
    end
    object emb_esp_pedaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"emb_especial_ped"."altura"'
      Precision = 9
      Size = 4
    end
    object emb_esp_pedlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"emb_especial_ped"."largura"'
      Precision = 9
      Size = 4
    end
    object emb_esp_pedprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"emb_especial_ped"."profundidade"'
      Precision = 9
      Size = 4
    end
    object emb_esp_pedpes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = 'emb_especial_ped.pes_bruto_cx'
    end
  end
  object confirmado_embarcado: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "num_pedido", "cod_produto", "vlr_unitario",'
      
        '   SUM("qtd_produto") "qtd_confirmada", SUM("qtd_faturada") "qtd' +
        '_embarcada", SUM("qtd_pendente") "qtd_pendente",'
      '   count(*) "num_itens"'
      'from "pedido_produto"'
      'where'
      '     "cod_empresa" = :cod_empresa'
      ' and "num_pedido" = :num_pedido'
      ' and "cod_produto" = :cod_produto'
      ' and "vlr_unitario" = :vlr_unitario'
      'group by 1,2,3')
    Left = 160
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
        Name = 'cod_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlr_unitario'
        ParamType = ptUnknown
      end>
    object confirmado_embarcadoqtd_confirmada: TIBBCDField
      FieldName = 'qtd_confirmada'
      Precision = 18
      Size = 3
    end
    object confirmado_embarcadoqtd_embarcada: TIBBCDField
      FieldName = 'qtd_embarcada'
      Precision = 18
      Size = 3
    end
    object confirmado_embarcadoqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Precision = 18
      Size = 3
    end
  end
end
