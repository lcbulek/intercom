inherited fr_CadLista_Preco: Tfr_CadLista_Preco
  Left = 639
  Top = 288
  HelpType = htKeyword
  HelpKeyword = '005'
  Caption = 'Produtos da Cota'#231#227'o de Pre'#231'os'
  ClientHeight = 517
  ClientWidth = 858
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 858
    Height = 480
    inherited Button1: TButton
      Action = fr_FmNavigator1.acF3
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 381
      Width = 854
      Height = 97
      Align = alBottom
      Caption = 'Busca Rapida'
      TabOrder = 1
      OnEnter = GroupBox1Enter
      OnExit = GroupBox1Exit
      object Label9: TLabel
        Left = 8
        Top = 12
        Width = 105
        Height = 14
        Caption = 'Produto Cliente'
      end
      object Label10: TLabel
        Left = 166
        Top = 12
        Width = 63
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object edBuscaCodigo: TEdit
        Left = 8
        Top = 26
        Width = 153
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 20
        TabOrder = 0
        OnKeyDown = edBuscaCodigoKeyDown
      end
      object edBuscaDesc: TEdit
        Left = 166
        Top = 26
        Width = 385
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 75
        TabOrder = 1
        OnKeyDown = edBuscaDescKeyDown
      end
      object btnImportar: TBitBtn
        Left = 338
        Top = 57
        Width = 129
        Height = 33
        Action = actImportar
        Caption = 'Importar Cota'#231#245'es'
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 7
        Top = 57
        Width = 322
        Height = 33
        Action = actModelo
        Caption = 'Gerar Excel'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 123
      Width = 854
      Height = 258
      Align = alClient
      Caption = 'Produtos'
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 2
        Top = 16
        Width = 850
        Height = 240
        TabStop = False
        Align = alClient
        DataSource = dsIBDataSet
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cod_produto'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calDenProduto'
            Width = 571
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_unitario'
            Width = 109
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 854
      Height = 121
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 3
      object Label3: TLabel
        Left = 3
        Top = 2
        Width = 49
        Height = 14
        Caption = 'Produto'
        Layout = tlBottom
      end
      object Label5: TLabel
        Left = 743
        Top = 2
        Width = 98
        Height = 14
        Caption = 'Pre'#231'o Unit'#225'rio'
        FocusControl = dbevlr_unitario
        Layout = tlBottom
      end
      object Label7: TLabel
        Left = 188
        Top = 2
        Width = 63
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object Label8: TLabel
        Left = 3
        Top = 72
        Width = 70
        Height = 14
        Caption = 'Observa'#231#227'o'
      end
      object SpeedButton1: TSpeedButton
        Left = 163
        Top = 16
        Width = 22
        Height = 22
        Action = fr_FmNavigator1.acF3
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00189CCE0029A5
          D600189CD600088CC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00BDA5A5004A5A7300FF00FF00FF00FF00219CCE00A5EF
          F7006BEFFF005ADEF7004AC6E70039BDE70021A5D6000894CE000894CE00FF00
          FF00FF00FF00BDA5A500526384001073E7003994DE00FF00FF00088CC6009CDE
          EF008CFFFF0084FFFF0084FFFF007BFFFF007BF7FF0063E7F7004ACEEF0039BD
          E7007394A5005A6384001073DE0031A5FF00299CFF00FF00FF001094CE005ABD
          DE009CFFFF0073F7FF007BF7FF0073F7FF008CDEE70084D6DE007BE7EF0094BD
          C600526B8C001073D60031A5FF00319CFF00FF00FF00FF00FF0021A5D6004AC6
          E7009CEFFF007BF7FF0084DEDE00BDCEBD00DEBDA500D6B59C00AD9C8C00847B
          7300427BAD0031A5FF0039ADFF00189CD600FF00FF00FF00FF0021ADDE008C94
          A5008CCEE7008CD6D600CEB5AD00F7F7DE00FFFFDE00FFFFDE00FFFFC600CEB5
          8C00C6ADA5004AC6FF0052D6FF0042C6E700FF00FF00FF00FF0021ADE700AD73
          6B005ABDDE00B5A59C00F7F7EF00FFFFFF00FFFFE700FFFFD600FFF7C600FFE7
          A500DEA584006BD6EF005AD6FF006BE7FF000894CE00FF00FF0021ADE700B573
          6B00A5CEDE00CEB59C00FFFFEF00FFFFF700FFFFEF00FFFFD600F7DEAD00F7CE
          8400E7BD940094C6C60052D6FF007BF7FF0029ADDE00FF00FF0029B5E700BD7B
          6B00FFF7EF00D6BDA500FFFFDE00FFFFDE00FFFFE700FFFFCE00EFBD8400F7BD
          7300E7C69C0094C6C6004AD6FF007BF7FF0052D6EF00FF00FF0029ADE700C68C
          7300FFFFFF00CEAD9C00FFFFCE00FFFFCE00FFE7AD00F7C68C00F7CE9400FFEF
          B500D6AD94009CCED6007BE7FF009CFFFF0094FFFF0021A5D60029B5E700CE94
          7300FFFFF700DEC6BD00DEC69C00FFE7A500FFC68400FFD68C00FFF7E700E7DE
          CE008CA5AD006BCEE7005ABDE70063BDDE006BC6E70029A5D60029B5E700D69C
          7300FFFFF700FFFFFF00E7D6CE00EFCEA500E7C69C00E7C69C00CEB59C00B58C
          8C0073E7FF006BEFFF00109CD600FF00FF00FF00FF00FF00FF0018A5DE00DEA5
          7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFF7EF00B5847B00BD7B4A00B56B
          520052C6E70052C6E700189CD600FF00FF00FF00FF00FF00FF00FF00FF00E7A5
          7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5847B00E79C5200FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7AD
          7B00D6946B00D6946B00D6946B00D6946B00D6946B00B57B6B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object Label1: TLabel
        Left = 2
        Top = 40
        Width = 70
        Height = 14
        Caption = 'Observa'#231#227'o'
      end
      object dbevlr_unitario: TDBEdit
        Left = 743
        Top = 16
        Width = 100
        Height = 22
        DataField = 'vlr_unitario'
        DataSource = dsIBDataSet
        TabOrder = 2
      end
      object dbecod_produto: TDBEdit
        Left = 3
        Top = 16
        Width = 157
        Height = 22
        CharCase = ecUpperCase
        DataField = 'cod_produto'
        DataSource = dsIBDataSet
        TabOrder = 0
      end
      object dbeDenProd: TDBEdit
        Left = 188
        Top = 16
        Width = 549
        Height = 22
        DataField = 'calDenProduto'
        DataSource = dsIBDataSet
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 3
        Top = 54
        Width = 838
        Height = 64
        DataField = 'obs_preco'
        DataSource = dsIBDataSet
        ScrollBars = ssVertical
        TabOrder = 3
      end
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 480
    Width = 858
    inherited ToolBar1: TToolBar
      Width = 858
    end
    inherited ActionList1: TActionList
      Left = 190
      Top = 0
      inherited acFirst: TDataSetFirst
        DataSource = dsIBDataSet
      end
      inherited acPrior: TDataSetPrior
        DataSource = dsIBDataSet
      end
      inherited acNext: TDataSetNext
        DataSource = dsIBDataSet
      end
      inherited acLast: TDataSetLast
        DataSource = dsIBDataSet
      end
      inherited acInsert: TDataSetInsert
        DataSource = dsIBDataSet
      end
      inherited acDelete: TDataSetDelete
        DataSource = dsIBDataSet
      end
      inherited acEdit: TDataSetEdit
        DataSource = dsIBDataSet
      end
      inherited acPost: TDataSetPost
        DataSource = dsIBDataSet
      end
      inherited acCancel: TDataSetCancel
        DataSource = dsIBDataSet
      end
      inherited acRefresh: TDataSetRefresh
        DataSource = dsIBDataSet
      end
    end
    inherited ImageList1: TImageList
      Top = 4
    end
  end
  inherited ActionList1: TActionList
    object actModelo: TAction
      Caption = 'Gerar Excel'
      OnExecute = actModeloExecute
    end
    object actImportar: TAction
      Caption = 'Importar Cota'#231#245'es'
      OnExecute = actImportarExecute
    end
  end
  inherited IBDataSet: TIBDataSet
    OnCalcFields = IBDataSetCalcFields
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "lista_preco"'
      'where'
      '  "lista_preco"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista_preco"."num_lista" = :"OLD_num_lista" and'
      '  "lista_preco"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "lista_preco"'
      '  ("lista_preco"."cod_empresa", "lista_preco"."num_lista", '
      '"lista_preco"."cod_produto", '
      
        '   "lista_preco"."vlr_unitario", "lista_preco"."dat_cadastro", "' +
        'lista_preco"."obs_preco")'
      'values'
      
        '  (:"cod_empresa", :"num_lista", :"cod_produto", :"vlr_unitario"' +
        ', :"dat_cadastro", '
      '   :"obs_preco")')
    RefreshSQL.Strings = (
      'Select '
      '  "lista_preco"."cod_empresa",'
      '  "lista_preco"."num_lista",'
      '  "lista_preco"."cod_produto",'
      '  "lista_preco"."vlr_unitario",'
      '  "lista_preco"."dat_cadastro",'
      '  "lista_preco"."obs_preco"'
      'from "lista_preco" '
      'where'
      '  "lista_preco"."cod_empresa" = :"cod_empresa" and'
      '  "lista_preco"."num_lista" = :"num_lista" and'
      '  "lista_preco"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select a.*'
      '  from "lista_preco" a'
      ' where                                             '
      '     a."cod_empresa" = :cod_empresa                '
      ' and a."num_lista"   = :num_lista                  '
      ' order by a."cod_produto"')
    ModifySQL.Strings = (
      'update "lista_preco"'
      'set'
      '  "lista_preco"."cod_empresa" = :"cod_empresa",'
      '  "lista_preco"."num_lista" = :"num_lista",'
      '  "lista_preco"."cod_produto" = :"cod_produto",'
      '  "lista_preco"."vlr_unitario" = :"vlr_unitario",'
      '  "lista_preco"."dat_cadastro" = :"dat_cadastro",'
      '  "lista_preco"."obs_preco" = :"obs_preco"'
      'where'
      '  "lista_preco"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista_preco"."num_lista" = :"OLD_num_lista" and'
      '  "lista_preco"."cod_produto" = :"OLD_cod_produto"')
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"lista_preco"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetnum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"lista_preco"."num_lista"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetcod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"lista_preco"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = IBDataSetcod_produtoGetText
      OnValidate = IBDataSetcod_produtoValidate
      Size = 15
    end
    object IBDataSetcalDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto'
      Size = 75
      Calculated = True
    end
    object IBDataSetvlr_unitario: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'vlr_unitario'
      Origin = '"lista_preco"."vlr_unitario"'
      OnValidate = IBDataSetvlr_unitarioValidate
      DisplayFormat = '###,##0.000000'
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"lista_preco"."dat_cadastro"'
    end
    object IBDataSetobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"lista_preco"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetcalFornecedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'calFornecedor'
      Visible = False
      Size = 40
      Calculated = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 329
    Top = 72
  end
  inherited QrAux: TIBQuery
    Left = 447
    Top = 48
  end
  object qryProduto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select a."cod_produto", a."den_produto", a."cod_cliente", b."raz' +
        '_social_reduz"'
      'from "produto" a'
      '  left join "fornecedor" b'
      '  on b."cod_fornecedor" = a."cod_fornecedor"'
      'where a."cod_empresa" = :cod_empresa'
      '   and a."cod_cliente" = :cod_cliente'
      '   and a."cod_produto" = :cod_produto')
    Left = 383
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
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end>
    object qryProdutocod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryProdutoden_produto: TIBStringField
      DisplayWidth = 57
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object qryProdutocod_cliente: TIBStringField
      DisplayWidth = 12
      FieldName = 'cod_cliente'
      Origin = '"produto"."cod_cliente"'
      Size = 12
    end
    object qryProdutoraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Size = 30
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 496
    Top = 48
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 536
    Top = 48
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 576
    Top = 48
  end
  object Fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "fornecedor"')
    Left = 382
    Top = 86
    object Fornecedorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Fornecedorraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
  object Deletar_ListaPreco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    CachedUpdates = True
    SQL.Strings = (
      'delete from "lista_preco"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_lista" = :num_lista')
    Left = 246
    Top = 46
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_lista'
        ParamType = ptUnknown
      end>
  end
  object man_lista_preco: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = man_lista_precoAfterDelete
    AfterPost = man_lista_precoAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "lista_preco"'
      'where'
      '  "lista_preco"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista_preco"."num_lista" = :"OLD_num_lista" and'
      '  "lista_preco"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "lista_preco"'
      '  ("lista_preco"."cod_empresa", "lista_preco"."num_lista", '
      '"lista_preco"."cod_produto", '
      
        '   "lista_preco"."vlr_unitario", "lista_preco"."dat_cadastro", "' +
        'lista_preco"."obs_preco")'
      'values'
      
        '  (:"cod_empresa", :"num_lista", :"cod_produto", :"vlr_unitario"' +
        ', :"dat_cadastro", '
      '   :"obs_preco")')
    RefreshSQL.Strings = (
      'Select '
      '  "lista_preco"."cod_empresa",'
      '  "lista_preco"."num_lista",'
      '  "lista_preco"."cod_produto",'
      '  "lista_preco"."vlr_unitario",'
      '  "lista_preco"."dat_cadastro",'
      '  "lista_preco"."obs_preco"'
      'from "lista_preco" '
      'where'
      '  "lista_preco"."cod_empresa" = :"cod_empresa" and'
      '  "lista_preco"."num_lista" = :"num_lista" and'
      '  "lista_preco"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select * from "lista_preco" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_lista" = :num_lista'
      '  and a."cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "lista_preco"'
      'set'
      '  "lista_preco"."cod_empresa" = :"cod_empresa",'
      '  "lista_preco"."num_lista" = :"num_lista",'
      '  "lista_preco"."cod_produto" = :"cod_produto",'
      '  "lista_preco"."vlr_unitario" = :"vlr_unitario",'
      '  "lista_preco"."dat_cadastro" = :"dat_cadastro",'
      '  "lista_preco"."obs_preco" = :"obs_preco"'
      'where'
      '  "lista_preco"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista_preco"."num_lista" = :"OLD_num_lista" and'
      '  "lista_preco"."cod_produto" = :"OLD_cod_produto"')
    Left = 246
    Top = 78
    object man_lista_precocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"lista_preco"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object man_lista_preconum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"lista_preco"."num_lista"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object man_lista_precocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"lista_preco"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object man_lista_precovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"lista_preco"."vlr_unitario"'
    end
    object man_lista_precodat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"lista_preco"."dat_cadastro"'
    end
    object man_lista_precoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"lista_preco"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select "cod_empresa", "ies_modelo", "mod_lista_preco", "dir_plan' +
        'ilhas"'
      'from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 446
    Top = 86
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
    object parametro_comercialmod_lista_preco: TBlobField
      FieldName = 'mod_lista_preco'
      Origin = '"parametro_comercial"."mod_lista_preco"'
      Size = 8
    end
    object parametro_comercialdir_planilhas: TIBStringField
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
    end
  end
  object spr_atualizar_precos: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_atualizar_precos'
    Left = 246
    Top = 109
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_produto", "den_produto_detpor", "den_produto"'
      'from "produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_cliente" = :cod_cliente'
      '  and "cod_fornecedor" = :cod_fornecedor'
      'order by 3')
    Left = 620
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
      end
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object Produtoscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Produtosden_produto_detpor: TMemoField
      FieldName = 'den_produto_detpor'
      Origin = '"produto"."den_produto_detpor"'
      BlobType = ftMemo
      Size = 8
    end
    object Produtosden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
  end
  object produtos_lista: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      '/* Produtos da Cota'#231#227'o Recebida */'
      
        'select '#39'C'#39' "Origem", b."cod_produto", b."den_produto", a."vlr_un' +
        'itario", substring(a."obs_preco" from 1 for 255) "obs_preco"'
      'from "lista_preco" a, "produto" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_lista" = :num_lista'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."cod_produto" = a."cod_produto"'
      'union all'
      
        'select '#39'P'#39' "Origem", b."cod_produto", b."den_produto", CAST(NULL' +
        ' as numeric(18,6)), CAST(NULL as varchar(255)) "obs_preco"'
      'from "lista" a, "produto" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_lista" = :num_lista'
      '  and b."cod_cliente" = a."cod_cliente"'
      '  and b."cod_fornecedor" = a."cod_fornecedor"'
      '  and not exists (select c."cod_produto"'
      '                    from "lista_preco" c'
      '                   where c."cod_empresa" = a."cod_empresa"'
      '                     and c."cod_produto" = b."cod_produto"'
      '                     and c."num_lista" = a."num_lista")'
      'order by 1,3')
    Left = 652
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_lista'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_lista'
        ParamType = ptUnknown
      end>
    object produtos_listaOrigem: TIBStringField
      FieldName = 'Origem'
      Required = True
      FixedChar = True
      Size = 1
    end
    object produtos_listacod_produto: TIBStringField
      FieldName = 'cod_produto'
      Required = True
      Size = 15
    end
    object produtos_listaden_produto: TIBStringField
      FieldName = 'den_produto'
      Required = True
      Size = 100
    end
    object produtos_listavlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
    end
    object produtos_listaobs_preco: TIBStringField
      FieldName = 'obs_preco'
      Size = 255
    end
  end
end
