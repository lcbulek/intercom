inherited fr_CadReclamacoes: Tfr_CadReclamacoes
  Left = 593
  Top = 238
  HelpType = htKeyword
  HelpKeyword = '080'
  Caption = 'Hist'#243'rico de Reclama'#231#245'es do Produto'
  ClientHeight = 580
  ClientWidth = 611
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label7: TLabel [0]
    Left = 200
    Top = 40
    Width = 105
    Height = 14
    Caption = 'Data Ocorr'#234'ncia'
  end
  inherited Panel1: TPanel
    Width = 611
    Height = 543
    object Panel2: TPanel [0]
      Left = 2
      Top = 2
      Width = 607
      Height = 47
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object Label2: TLabel
        Left = 164
        Top = 6
        Width = 63
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object Label3: TLabel
        Left = 6
        Top = 8
        Width = 49
        Height = 14
        Caption = 'Produto'
      end
      object SpeedButton1: TSpeedButton
        Left = 120
        Top = 23
        Width = 42
        Height = 22
        Action = actPesquisar
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007B7B7B009C9C9C0039393900FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF006BC6FF004A73FF009C9C9C0039393900FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF006BC6FF004A73FF009C9C9C0039393900FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF006BC6FF004A73FF009C9C9C00FF00FF00848484007B7B
          7B006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF006BC6FF008484840084848400F7CEA500FFFF
          D600FFE7D600848484004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00A5A5A500FFE7B500FFF7D600FFFF
          D600FFFFD600FFFFFF00949494006B6B6B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00F7CEA500FFE7B500FFFFD600FFFF
          D600FFFFFF00FFFFFF00FFFFD6004A4A4A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FFF7D600FFD68C00FFF7D600FFFF
          D600FFFFD600FFFFD600FFFFD60052525200FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FFE7B500FFE7B500FFE7B500FFFF
          D600FFFFD600FFFFD600FFFFD60052525200FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00FFFFFF00FFF7D600FFE7
          B500FFE7B500FFF7D600FFAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00FFFFD600FFFF
          D600FFFFD600FFAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C6C6C600C6C6
          C600C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object DBEdit2: TDBEdit
        Left = 164
        Top = 22
        Width = 437
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'den_produto'
        DataSource = ds_produtos
        ReadOnly = True
        TabOrder = 1
      end
      object edCodProduto: TEdit
        Left = 6
        Top = 22
        Width = 110
        Height = 22
        TabOrder = 0
      end
    end
    object Panel3: TPanel [1]
      Left = 2
      Top = 49
      Width = 607
      Height = 50
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 2
      object Label4: TLabel
        Left = 9
        Top = 5
        Width = 63
        Height = 14
        Caption = 'Sequencia'
        FocusControl = DBEdit3
      end
      object Label6: TLabel
        Left = 88
        Top = 5
        Width = 105
        Height = 14
        Caption = 'Data Ocorr'#234'ncia'
      end
      object Label8: TLabel
        Left = 213
        Top = 5
        Width = 84
        Height = 14
        Caption = 'Data Solu'#231#227'o'
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 21
        Width = 65
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'sequencia'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 0
      end
      object JvDBDatePickerEdit1: TJvDBDatePickerEdit
        Left = 87
        Top = 21
        Width = 100
        Height = 22
        AllowNoDate = True
        DataField = 'dat_ocorrencia'
        DataSource = dsIBDataSet
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 329
        Top = 5
        Width = 277
        Height = 39
        Caption = 'Situa'#231#227'o'
        Columns = 2
        DataField = 'ies_situacao'
        DataSource = dsIBDataSet
        Items.Strings = (
          'N'#227'o solucionado'
          'Solucionado')
        TabOrder = 3
        Values.Strings = (
          'A'
          'F')
      end
      object JvDBDatePickerEdit2: TJvDBDatePickerEdit
        Left = 212
        Top = 21
        Width = 100
        Height = 22
        AllowNoDate = True
        DataField = 'dat_solucao'
        DataSource = dsIBDataSet
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox [2]
      Left = 2
      Top = 99
      Width = 607
      Height = 356
      Align = alClient
      Caption = 'Ocorr'#234'ncia'
      TabOrder = 3
      TabStop = True
      object dbmOcorrencia: TDBMemo
        Left = 2
        Top = 16
        Width = 603
        Height = 338
        Align = alClient
        DataField = 'txt_ocorrencia'
        DataSource = dsIBDataSet
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object DBGrid1: TDBGrid [3]
      Left = 2
      Top = 455
      Width = 607
      Height = 86
      Align = alBottom
      DataSource = dsIBDataSet
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Courier New'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'sequencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dat_ocorrencia'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calSituacao'
          Width = 201
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dat_solucao'
          Width = 138
          Visible = True
        end>
    end
    inherited Button1: TButton
      Left = 552
      Top = 8
      Width = 46
      Action = fr_FmNavigator1.acF3
      Visible = False
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 543
    Width = 611
    inherited ToolBar1: TToolBar
      Width = 611
    end
    inherited ActionList1: TActionList
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
  end
  object BitBtn1: TBitBtn [3]
    Left = 536
    Top = 545
    Width = 48
    Height = 36
    Action = actImprimir
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF007373730063636300FF00FF00FF00FF00525252007B7B
      7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0042424200F7F7F700A5A5A500524A4A00C6949400DED6D600E7E7
      E7005252520063636300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004A4A
      4A00D6D6D600F7F7F700EFEFEF00ADADAD00ADADAD00525252006B6B6B008C8C
      8C00C6C6C600FFFFFF008484840073737300FF00FF00FF00FF00A5A5A500FFFF
      FF00F7F7F700EFEFEF00E7E7E700A5A5A500ADADAD00B5B5B5009C9C9C007373
      73008C8C8C00A5A5A5007373730073737300FF00FF00FF00FF00CECECE00F7F7
      F700E7E7E70073737300C6C6C6008C8C8C006B6B6B008C8C8C00B5B5B500BDBD
      BD00BDBDBD00A5A5A5008C8C8C0073737300FF00FF00FF00FF00B5B5B5006B6B
      6B00DEDEDE00DEDEDE00D6D6D600E7E7E700BDBDBD00A5A5A500A5A5A5007373
      73008C8C8C006B9C7B006363630073737300FF00FF00FF00FF00D6D6D600E7E7
      E700DEDEDE00D6D6D600F7F7F700BDBDBD00BDBDBD00E7E7E700E7E7E700CECE
      CE00B5B5B500B5B5B5007373730073737300FF00FF00FF00FF00DEDEDE00DEDE
      DE00D6D6D600EFEFEF00BDBDBD00F7F7F700EFEFEF00EFEFEF00DEDEDE00B5B5
      B500BDBDBD00E7E7E7008C8C8C00FF00FF00FF00FF00FF00FF00FF00FF009494
      9400ADADAD00B5B5B5009494940094949400BDBDBD00EFEFEF00EFEFEF008463
      630063524A00736B630073737300FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FFFFFF00FFFFFF00C6C6C600B5B5B500BDBDBD00CECECE00D6D6D600CE84
      8400AD6B6B00E7C6C600BDC6C6006B5A52006B5A5200FF00FF00FF00FF00FF00
      FF00CEB5B500FFD6AD00FFCEAD00FFC6A500FFBD9C00FFD6BD00D6CECE00D68C
      8C00AD6B6B00AD4A4A00FFFFFF00DEA5A500CE636B0073737300FF00FF00FF00
      FF00B5848400FFDEBD00FFDEBD00FFDEBD00FFDEBD00FFDEBD0073636300D68C
      8C00AD6B6B00C6949400B5B5B500E7B5B500C663630073737300FF00FF00FF00
      FF00DEB5AD00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FF00FF00D694
      9400C6636300B5525200A5636300945A5A00CE636B0073737300FF00FF00FF00
      FF00FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700DEBDB500FF00FF00D694
      94009C636300D6DEDE00D6CECE00B59C9C00CE63630073737300FF00FF00A57B
      7B00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700847B7B00FF00FF00CE9C
      9C009C636300C6C6C600CECECE00DEDEDE00C65A5A0073737300FF00FF00CEB5
      B500CEB5B500CEB5B500CEB5B500CEB5B500CEB5B500FF00FF00FF00FF00CEA5
      A500AD8C8C00E7E7E700E7E7E700FFFFFF00C65A5A0073737300}
    Layout = blGlyphTop
  end
  inherited ActionList1: TActionList
    Left = 352
    Top = 8
    object actPesquisar: TAction
      Caption = 'F3'
      ShortCut = 114
      OnExecute = actPesquisarExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      ImageIndex = 16
      OnExecute = actImprimirExecute
    end
  end
  inherited IBDataSet: TIBDataSet
    OnCalcFields = IBDataSetCalcFields
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "produto_reclamacao"'
      'where'
      '  "produto_reclamacao"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto_reclamacao"."cod_produto" = :"OLD_cod_produto" and'
      '  "produto_reclamacao"."sequencia" = :"OLD_sequencia"')
    InsertSQL.Strings = (
      'insert into "produto_reclamacao"'
      
        '  ("produto_reclamacao"."cod_empresa", "produto_reclamacao"."cod' +
        '_produto", '
      
        '   "produto_reclamacao"."sequencia", "produto_reclamacao"."dat_o' +
        'correncia", '
      
        '   "produto_reclamacao"."dat_solucao", "produto_reclamacao"."ies' +
        '_situacao", '
      '   "produto_reclamacao"."txt_ocorrencia")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"sequencia", :"dat_ocorrenci' +
        'a", :"dat_solucao", '
      '   :"ies_situacao", :"txt_ocorrencia")')
    RefreshSQL.Strings = (
      'Select '
      '  "produto_reclamacao"."cod_empresa",'
      '  "produto_reclamacao"."cod_produto",'
      '  "produto_reclamacao"."sequencia",'
      '  "produto_reclamacao"."dat_ocorrencia",'
      '  "produto_reclamacao"."dat_solucao",'
      '  "produto_reclamacao"."ies_situacao",'
      '  "produto_reclamacao"."txt_ocorrencia"'
      'from "produto_reclamacao" '
      'where'
      '  "produto_reclamacao"."cod_empresa" = :"cod_empresa" and'
      '  "produto_reclamacao"."cod_produto" = :"cod_produto" and'
      '  "produto_reclamacao"."sequencia" = :"sequencia"')
    SelectSQL.Strings = (
      'select * from "produto_reclamacao"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto'
      'order by "dat_ocorrencia" desc'
      '')
    ModifySQL.Strings = (
      'update "produto_reclamacao"'
      'set'
      '  "produto_reclamacao"."cod_empresa" = :"cod_empresa",'
      '  "produto_reclamacao"."cod_produto" = :"cod_produto",'
      '  "produto_reclamacao"."sequencia" = :"sequencia",'
      '  "produto_reclamacao"."dat_ocorrencia" = :"dat_ocorrencia",'
      '  "produto_reclamacao"."dat_solucao" = :"dat_solucao",'
      '  "produto_reclamacao"."ies_situacao" = :"ies_situacao",'
      '  "produto_reclamacao"."txt_ocorrencia" = :"txt_ocorrencia"'
      'where'
      '  "produto_reclamacao"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto_reclamacao"."cod_produto" = :"OLD_cod_produto" and'
      '  "produto_reclamacao"."sequencia" = :"OLD_sequencia"')
    Left = 384
    Top = 8
    object IBDataSetcod_empresa: TIntegerField
      FieldName = 'cod_empresa'
      Origin = '"produto_reclamacao"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto_reclamacao"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 7
    end
    object IBDataSetsequencia: TIntegerField
      DisplayLabel = 'Sequencia'
      DisplayWidth = 3
      FieldName = 'sequencia'
      Origin = '"produto_reclamacao"."sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetdat_ocorrencia: TDateField
      DisplayLabel = 'Data Ocorr'#234'ncia'
      DisplayWidth = 15
      FieldName = 'dat_ocorrencia'
      Origin = '"produto_reclamacao"."dat_ocorrencia"'
    end
    object IBDataSetdat_solucao: TDateField
      DisplayLabel = 'Data Solu'#231#227'o'
      DisplayWidth = 12
      FieldName = 'dat_solucao'
      Origin = '"produto_reclamacao"."dat_solucao"'
    end
    object IBDataSeties_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"produto_reclamacao"."ies_situacao"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IBDataSettxt_ocorrencia: TMemoField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'txt_ocorrencia'
      Origin = '"produto_reclamacao"."txt_ocorrencia"'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetcalSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 21
      FieldKind = fkCalculated
      FieldName = 'calSituacao'
      Size = 15
      Calculated = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 396
    Top = 13
  end
  inherited QrAux: TIBQuery
    Left = 431
    Top = 8
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = ProdutosAfterScroll
    BeforeOpen = ProdutosBeforeOpen
    SQL.Strings = (
      'select p."cod_produto", p."den_produto", p."ies_situacao",  '
      '       p."cod_uni_medida", p."pes_unitario"                 '
      'from "produto" p'
      'where p."cod_empresa" = :cod_empresa                        '
      '  and p."cod_produto" = :cod_produto'
      'order by p."den_produto"')
    Left = 316
    Top = 9
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
    object Produtoscod_produto: TIBStringField
      DisplayWidth = 16
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Produtosden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
    object Produtosies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"produto"."ies_situacao"'
      Size = 1
    end
    object Produtoscod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"produto"."cod_uni_medida"'
      Required = True
    end
    object Produtospes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
  end
  object ds_produtos: TDataSource
    DataSet = Produtos
    Left = 314
    Top = 42
  end
end
