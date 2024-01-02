inherited fr_CadEstrutura: Tfr_CadEstrutura
  Left = 119
  Top = 210
  HelpKeyword = '034'
  HelpContext = 34
  Caption = 'Estrutura'
  ClientHeight = 347
  ClientWidth = 725
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 725
    Height = 311
    inherited pnlF1: TPanel
      Left = 668
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
      Height = 307
      Align = alLeft
      Caption = 'Produto'
      TabOrder = 1
      inline fr_FmGrid1: Tfr_FmGrid
        Left = 2
        Top = 16
        Width = 266
        Height = 239
        Align = alClient
        TabOrder = 0
        inherited grdGrid: TDBGrid
          Width = 266
          Height = 239
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_produto'
              Width = 65
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
        Top = 255
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
    object grbComponente: TGroupBox
      Left = 272
      Top = 2
      Width = 451
      Height = 307
      Align = alClient
      Caption = 'Componente'
      TabOrder = 2
      inline fr_FmGrid2: Tfr_FmGrid
        Left = 2
        Top = 16
        Width = 447
        Height = 200
        Align = alClient
        TabOrder = 0
        inherited grdGrid: TDBGrid
          Width = 447
          Height = 200
          ReadOnly = True
          Columns = <
            item
              Expanded = False
              FieldName = 'cod_produto_componente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkpDenProdutoComp'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtd_necessaria'
              Title.Alignment = taRightJustify
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pct_refugo'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
        inherited dtsFmGrid: TDataSource
          DataSet = IBDataSet
        end
      end
      object grbCadastro: TGroupBox
        Left = 2
        Top = 216
        Width = 447
        Height = 89
        Align = alBottom
        Caption = 'Cadastro'
        TabOrder = 1
        object Label2: TLabel
          Left = 10
          Top = 12
          Width = 70
          Height = 21
          AutoSize = False
          Caption = 'Componente'
          Layout = tlBottom
        end
        object Label4: TLabel
          Left = 205
          Top = 36
          Width = 56
          Height = 21
          AutoSize = False
          Caption = '% refugo'
          FocusControl = edtpct_refugo
          Layout = tlBottom
        end
        object Label3: TLabel
          Left = 10
          Top = 36
          Width = 112
          Height = 21
          AutoSize = False
          Caption = 'Qtde. necessaria'
          FocusControl = edtqtd_necessaria
          Layout = tlBottom
        end
        object Label11: TLabel
          Left = 10
          Top = 62
          Width = 112
          Height = 21
          AutoSize = False
          Caption = 'Data de cadastro'
          FocusControl = dbeddat_cadastro
          Layout = tlBottom
        end
        object edtcod_produto_componente: TDBEdit
          Left = 126
          Top = 12
          Width = 75
          Height = 22
          DataField = 'cod_produto_componente'
          DataSource = dsIBDataSet
          TabOrder = 0
        end
        object lkpDenProdutoComp: TDBLookupComboBox
          Left = 205
          Top = 12
          Width = 236
          Height = 22
          DataField = 'lkpDenProdutoComp'
          DataSource = dsIBDataSet
          TabOrder = 1
        end
        object edtpct_refugo: TDBEdit
          Left = 265
          Top = 36
          Width = 50
          Height = 22
          DataField = 'pct_refugo'
          DataSource = dsIBDataSet
          TabOrder = 3
          OnExit = edtpct_refugoExit
        end
        object edtqtd_necessaria: TDBEdit
          Left = 126
          Top = 36
          Width = 75
          Height = 22
          DataField = 'qtd_necessaria'
          DataSource = dsIBDataSet
          TabOrder = 2
        end
        object dbeddat_cadastro: TDBEdit
          Left = 126
          Top = 61
          Width = 85
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'dat_cadastro'
          DataSource = dsIBDataSet
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 311
    Width = 725
    inherited ToolBar1: TToolBar
      Width = 725
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
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforeEdit = IBDataSetBeforeEdit
    BeforeInsert = IBDataSetBeforeInsert
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "estrutura"'
      'where'
      '  "estrutura"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "estrutura"."cod_produto" = :"OLD_cod_produto" and'
      
        '  "estrutura"."cod_produto_componente" = :"OLD_cod_produto_compo' +
        'nente"')
    InsertSQL.Strings = (
      'insert into "estrutura"'
      
        '  ("estrutura"."cod_empresa", "estrutura"."cod_produto", "estrut' +
        'ura"."cod_produto_componente", '
      
        '   "estrutura"."dat_cadastro", "estrutura"."pct_refugo", "estrut' +
        'ura"."qtd_necessaria")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"cod_produto_componente", :"' +
        'dat_cadastro", '
      '   :"pct_refugo", :"qtd_necessaria")')
    RefreshSQL.Strings = (
      'Select '
      '  "estrutura"."cod_empresa",'
      '  "estrutura"."cod_produto",'
      '  "estrutura"."cod_produto_componente",'
      '  "estrutura"."qtd_necessaria",'
      '  "estrutura"."pct_refugo",'
      '  "estrutura"."dat_cadastro"'
      'from "estrutura" '
      'where'
      '  "estrutura"."cod_empresa" = :"cod_empresa" and'
      '  "estrutura"."cod_produto" = :"cod_produto" and'
      
        '  "estrutura"."cod_produto_componente" = :"cod_produto_component' +
        'e"')
    SelectSQL.Strings = (
      'select *'
      'from "estrutura"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'order by "cod_produto", "cod_produto_componente"')
    ModifySQL.Strings = (
      'update "estrutura"'
      'set'
      '  "estrutura"."cod_empresa" = :"cod_empresa",'
      '  "estrutura"."cod_produto" = :"cod_produto",'
      
        '  "estrutura"."cod_produto_componente" = :"cod_produto_component' +
        'e",'
      '  "estrutura"."dat_cadastro" = :"dat_cadastro",'
      '  "estrutura"."pct_refugo" = :"pct_refugo",'
      '  "estrutura"."qtd_necessaria" = :"qtd_necessaria"'
      'where'
      '  "estrutura"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "estrutura"."cod_produto" = :"OLD_cod_produto" and'
      
        '  "estrutura"."cod_produto_componente" = :"OLD_cod_produto_compo' +
        'nente"')
    OnFilterRecord = IBDataSetFilterRecord
    Left = 324
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"estrutura"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"estrutura"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object IBDataSetlkpDenProduto: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'lkpDenProduto'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_produto'
      LookupResultField = 'den_produto'
      KeyFields = 'cod_produto'
      LookupCache = True
      Size = 75
      Lookup = True
    end
    object IBDataSetcod_produto_componente: TIBStringField
      DisplayLabel = 'Componente'
      FieldName = 'cod_produto_componente'
      Origin = '"estrutura"."cod_produto_componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = IBDataSetcod_produto_componenteValidate
      Size = 7
    end
    object IBDataSetlkpDenProdutoComp: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'lkpDenProdutoComp'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_produto'
      LookupResultField = 'den_produto'
      KeyFields = 'cod_produto_componente'
      Size = 75
      Lookup = True
    end
    object IBDataSetqtd_necessaria: TIBBCDField
      DisplayLabel = 'Qtde. necessaria'
      FieldName = 'qtd_necessaria'
      Origin = '"estrutura"."qtd_necessaria"'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object IBDataSetpct_refugo: TIBBCDField
      DisplayLabel = '% refugo'
      FieldName = 'pct_refugo'
      Origin = '"estrutura"."pct_refugo"'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"estrutura"."dat_cadastro"'
    end
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select "cod_produto", "den_produto"'
      'from "produto"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'order by "den_produto"')
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
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
      'select "cod_produto", "den_produto"'
      'from "produto"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'order by "cod_produto"')
    OnFilterRecord = qryProdutoFilterRecord
    Left = 378
    Top = 72
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
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
end
