inherited fr_CadKit: Tfr_CadKit
  Left = 363
  Top = 245
  HelpType = htKeyword
  HelpKeyword = '032'
  ActiveControl = edtCodProduto
  Caption = 'Estrutura de venda'
  ClientHeight = 358
  ClientWidth = 725
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 725
    Height = 322
    object grbComponente: TGroupBox [0]
      Left = 272
      Top = 2
      Width = 451
      Height = 318
      Align = alClient
      Caption = 'Componente'
      TabOrder = 2
      inline fr_FmGrid2: Tfr_FmGrid
        Left = 2
        Top = 16
        Width = 447
        Height = 220
        Align = alClient
        TabOrder = 0
        inherited grdGrid: TDBGrid
          Width = 447
          Height = 220
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_produto_componente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkpDen_Produto'
              Width = 228
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtd_necessaria'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'dat_cadastro'
              Title.Alignment = taRightJustify
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              Title.Alignment = taRightJustify
              Visible = True
            end>
        end
        inherited dtsFmGrid: TDataSource
          DataSet = IBDataSet
        end
      end
      object pnlComponente: TPanel
        Left = 2
        Top = 236
        Width = 447
        Height = 80
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 10
          Top = 5
          Width = 70
          Height = 21
          AutoSize = False
          Caption = 'Componente'
          Layout = tlBottom
        end
        object Label3: TLabel
          Left = 10
          Top = 29
          Width = 112
          Height = 21
          AutoSize = False
          Caption = 'Qtde. necessaria'
          FocusControl = edtqtd_necessaria
          Layout = tlBottom
        end
        object Label11: TLabel
          Left = 10
          Top = 55
          Width = 112
          Height = 21
          AutoSize = False
          Caption = 'Data de cadastro'
          FocusControl = dbeddat_cadastro
          Layout = tlBottom
        end
        object edtcod_produto_componente: TDBEdit
          Left = 126
          Top = 5
          Width = 75
          Height = 22
          DataField = 'cod_produto_componente'
          DataSource = dsIBDataSet
          TabOrder = 0
        end
        object edtqtd_necessaria: TDBEdit
          Left = 126
          Top = 29
          Width = 75
          Height = 22
          DataField = 'qtd_necessaria'
          DataSource = dsIBDataSet
          TabOrder = 1
          OnExit = edtqtd_necessariaExit
        end
        object dbeddat_cadastro: TDBEdit
          Left = 126
          Top = 54
          Width = 85
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'dat_cadastro'
          DataSource = dsIBDataSet
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
    inherited pnlF1: TPanel
      Left = 665
      Top = 268
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object grbProduto: TGroupBox
      Left = 2
      Top = 2
      Width = 270
      Height = 318
      Align = alLeft
      Caption = 'Produto'
      TabOrder = 1
      inline fr_FmGrid1: Tfr_FmGrid
        Left = 2
        Top = 16
        Width = 266
        Height = 250
        Align = alClient
        TabOrder = 0
        inherited grdGrid: TDBGrid
          Width = 266
          Height = 250
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_produto'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'den_produto'
              Width = 250
              Visible = True
            end>
        end
        inherited dtsFmGrid: TDataSource
          DataSet = qryProduto
        end
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 266
        Width = 266
        Height = 50
        Align = alBottom
        Caption = 'Filtrar'
        TabOrder = 1
        object edtCodProduto: TEdit
          Left = 10
          Top = 18
          Width = 75
          Height = 22
          TabOrder = 0
          OnChange = edtCodProdutoChange
        end
        object edtDenProduto: TEdit
          Left = 90
          Top = 18
          Width = 169
          Height = 22
          TabOrder = 1
          OnChange = edtDenProdutoChange
        end
      end
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 322
    Width = 725
    inherited ToolBar1: TToolBar
      Width = 725
    end
    inherited ActionList1: TActionList
      Left = 457
      Top = 4
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
      Left = 508
      Top = 6
    end
  end
  object dbeDenProd: TDBEdit [2]
    Left = 480
    Top = 243
    Width = 237
    Height = 22
    DataField = 'lkpDen_Produto'
    DataSource = dsIBDataSet
    TabOrder = 2
  end
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforeInsert = IBDataSetBeforeInsert
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "kit"'
      'where'
      '  "kit"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "kit"."cod_produto" = :"OLD_cod_produto" and'
      '  "kit"."cod_produto_componente" = :"OLD_cod_produto_componente"')
    InsertSQL.Strings = (
      'insert into "kit"'
      
        '  ("kit"."cod_empresa", "kit"."cod_produto", "kit"."cod_produto_' +
        'componente", '
      '   "kit"."qtd_necessaria", "kit"."dat_cadastro")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"cod_produto_componente", :"' +
        'qtd_necessaria", '
      '   :"dat_cadastro")')
    RefreshSQL.Strings = (
      'Select '
      '  "kit"."cod_empresa",'
      '  "kit"."cod_produto",'
      '  "kit"."cod_produto_componente",'
      '  "kit"."qtd_necessaria",'
      '  "kit"."dat_cadastro"'
      'from "kit" '
      'where'
      '  "kit"."cod_empresa" = :"cod_empresa" and'
      '  "kit"."cod_produto" = :"cod_produto" and'
      '  "kit"."cod_produto_componente" = :"cod_produto_componente"')
    SelectSQL.Strings = (
      'select'
      '  "cod_empresa",'
      '  "cod_produto",'
      '  "cod_produto_componente",'
      '  "qtd_necessaria",'
      '  "dat_cadastro"'
      'from "kit"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'and  "cod_produto" = :cod_produto'
      'order by "cod_produto", "cod_produto_componente"')
    ModifySQL.Strings = (
      'update "kit"'
      'set'
      '  "kit"."cod_empresa" = :"cod_empresa",'
      '  "kit"."cod_produto" = :"cod_produto",'
      '  "kit"."cod_produto_componente" = :"cod_produto_componente",'
      '  "kit"."qtd_necessaria" = :"qtd_necessaria",'
      '  "kit"."dat_cadastro" = :"dat_cadastro"'
      'where'
      '  "kit"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "kit"."cod_produto" = :"OLD_cod_produto" and'
      '  "kit"."cod_produto_componente" = :"OLD_cod_produto_componente"')
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"kit"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"kit"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 7
    end
    object IBDataSetcod_produto_componente: TIBStringField
      DisplayLabel = 'Componente'
      FieldName = 'cod_produto_componente'
      Origin = '"kit"."cod_produto_componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object IBDataSetlkpDen_Produto: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'lkpDen_Produto'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_produto'
      LookupResultField = 'den_produto'
      KeyFields = 'cod_produto_componente'
      LookupCache = True
      Size = 75
      Lookup = True
    end
    object IBDataSetqtd_necessaria: TIBBCDField
      DisplayLabel = 'Qtde. necess'#225'ria'
      FieldName = 'qtd_necessaria'
      Origin = '"kit"."qtd_necessaria"'
      OnValidate = IBDataSetqtd_necessariaValidate
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"kit"."dat_cadastro"'
    end
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select'
      '  "cod_produto",'
      '  "den_produto"'
      'from "produto"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'order by "den_produto"')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object QrAuxcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object QrAuxden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
  end
  object qryProduto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = qryProdutoAfterScroll
    SQL.Strings = (
      'select'
      '  "cod_produto",'
      '  "den_produto"'
      'from "produto"'
      'where'
      '      "ies_situacao" = '#39'A'#39
      ' and  "cod_empresa" = :cod_empresa'
      'order by "den_produto"'
      ''
      ''
      '')
    OnFilterRecord = qryProdutoFilterRecord
    Left = 32
    Top = 50
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptInput
        Value = 0
      end>
    object qryProdutocod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object qryProdutoden_produto: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
  end
  object qryExists_Romaneio: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select first 1 "cod_produto"'
      'from "romaneio_kit"'
      'where'
      '    "cod_empresa"            = :cod_empresa'
      'and "cod_produto"            = :cod_produto'
      'and "cod_produto_componente" = :cod_produto_componente')
    Left = 326
    Top = 74
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod_produto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod_produto_componente'
        ParamType = ptInput
      end>
  end
  object qryProdComp: TIBQuery
    Left = 210
    Top = 122
  end
end
