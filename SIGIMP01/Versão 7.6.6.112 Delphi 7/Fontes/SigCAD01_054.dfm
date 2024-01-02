inherited fr_CadParametrofornecedor: Tfr_CadParametrofornecedor
  Left = 633
  Top = 419
  HelpType = htKeyword
  HelpKeyword = '054'
  Caption = 'Par'#226'metro fornecedor'
  ClientHeight = 148
  ClientWidth = 506
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 506
    Height = 112
    object Label1: TLabel [0]
      Left = 6
      Top = 34
      Width = 70
      Height = 14
      Caption = 'Fornecedor'
      FocusControl = dbeCodFornecedor
    end
    object Label2: TLabel [1]
      Left = 6
      Top = 57
      Width = 119
      Height = 14
      Caption = 'M'#225'scara C'#243'd.Prod.'
      FocusControl = dbeMascara
    end
    object Label4: TLabel [2]
      Left = 6
      Top = 81
      Width = 49
      Height = 14
      Caption = 'Tamanho'
      FocusControl = dbeTamanho
    end
    inherited pnlF1: TPanel
      Left = 449
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbeCodFornecedor: TDBEdit
      Left = 125
      Top = 31
      Width = 75
      Height = 22
      CharCase = ecUpperCase
      DataField = 'cod_fornecedor'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object dlkFornecedor: TDBLookupComboBox
      Left = 202
      Top = 31
      Width = 300
      Height = 22
      DataField = 'lkraz_social'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object dbeMascara: TDBEdit
      Left = 125
      Top = 55
      Width = 120
      Height = 22
      CharCase = ecUpperCase
      DataField = 'mas_cod_produto'
      DataSource = dsIBDataSet
      TabOrder = 3
      OnKeyPress = dbeMascaraKeyPress
    end
    object dbeTamanho: TDBEdit
      Left = 125
      Top = 80
      Width = 31
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'tam_cod_produto'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 4
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 112
    Width = 506
    inherited ToolBar1: TToolBar
      Width = 506
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
    OnCalcFields = IBDataSetCalcFields
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "parametro_fornecedor"'
      'where'
      
        '  "parametro_fornecedor"."cod_fornecedor" = :"OLD_cod_fornecedor' +
        '"')
    InsertSQL.Strings = (
      'insert into "parametro_fornecedor"'
      
        '  ("parametro_fornecedor"."cod_fornecedor", "parametro_fornecedo' +
        'r"."mas_cod_produto")'
      'values'
      '  (:"cod_fornecedor", :"mas_cod_produto")')
    RefreshSQL.Strings = (
      'Select '
      '  "parametro_fornecedor"."cod_fornecedor",'
      '  "parametro_fornecedor"."mas_cod_produto"'
      'from "parametro_fornecedor" '
      'where'
      '  "parametro_fornecedor"."cod_fornecedor" = :"cod_fornecedor"')
    SelectSQL.Strings = (
      'select * from "parametro_fornecedor"'
      '')
    ModifySQL.Strings = (
      'update "parametro_fornecedor"'
      'set'
      '  "parametro_fornecedor"."cod_fornecedor" = :"cod_fornecedor",'
      '  "parametro_fornecedor"."mas_cod_produto" = :"mas_cod_produto"'
      'where'
      
        '  "parametro_fornecedor"."cod_fornecedor" = :"OLD_cod_fornecedor' +
        '"')
    object IBDataSetcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"parametro_fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetmas_cod_produto: TIBStringField
      FieldName = 'mas_cod_produto'
      Origin = '"parametro_fornecedor"."mas_cod_produto"'
    end
    object IBDataSetlkraz_social: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'lkraz_social'
      LookupDataSet = fornecedor
      LookupKeyFields = 'cod_fornecedor'
      LookupResultField = 'raz_social'
      KeyFields = 'cod_fornecedor'
      Size = 100
      Lookup = True
    end
    object IBDataSettam_cod_produto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tam_cod_produto'
      Calculated = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 364
    Top = 37
  end
  inherited QrAux: TIBQuery
    Left = 399
  end
  object fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Active = True
    SQL.Strings = (
      'select c."cod_fornecedor", c."raz_social"'
      'from "fornecedor" c'
      'order by c."raz_social"')
    Left = 344
    Top = 80
    object fornecedorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fornecedorraz_social: TIBStringField
      FieldName = 'raz_social'
      Origin = '"fornecedor"."raz_social"'
      Size = 100
    end
  end
end
