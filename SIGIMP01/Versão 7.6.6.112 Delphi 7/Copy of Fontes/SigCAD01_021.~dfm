inherited fr_CadMoeda: Tfr_CadMoeda
  Left = 472
  Top = 462
  HelpType = htKeyword
  HelpKeyword = '021'
  ActiveControl = dbedden_moeda
  Caption = 'Moedas'
  ClientHeight = 127
  ClientWidth = 357
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 357
    Height = 90
    object Label1: TLabel [0]
      Left = 8
      Top = 34
      Width = 35
      Height = 21
      AutoSize = False
      Caption = 'Moeda'
      Layout = tlBottom
    end
    object Label3: TLabel [1]
      Left = 8
      Top = 66
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    inherited Button1: TButton
      Left = 229
      Width = 118
      Hint = 'Procurar outras moedas do sistema'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Moedas'
      TabOrder = 2
    end
    object dbedden_moeda: TDBEdit
      Left = 54
      Top = 33
      Width = 294
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_moeda'
      DataSource = dsIBDataSet
      TabOrder = 0
      OnExit = dbedden_moedaExit
    end
    object DBEdit1: TDBEdit
      Left = 54
      Top = 58
      Width = 46
      Height = 22
      CharCase = ecUpperCase
      DataField = 'codigo'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 90
    Width = 357
    inherited ToolBar1: TToolBar
      Width = 357
      inherited ToolButton9: TToolButton
        Left = 3
        Wrap = True
      end
      inherited ToolButton5: TToolButton
        Left = 3
        Top = 36
      end
      inherited ToolButton6: TToolButton
        Left = 41
        Top = 36
      end
      inherited ToolButton7: TToolButton
        Left = 79
        Top = 36
      end
      inherited ToolButton8: TToolButton
        Left = 117
        Top = 36
      end
      inherited ToolButton11: TToolButton
        Left = 155
        Top = 36
      end
      inherited ToolButton10: TToolButton
        Left = 158
        Top = 36
      end
      inherited ToolButton13: TToolButton
        Left = 196
        Top = 36
      end
      inherited ToolButton12: TToolButton
        Left = 234
        Top = 36
      end
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
  inherited ActionList1: TActionList
    Left = 240
    Top = 48
  end
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "moeda"'
      'where'
      '  "moeda"."cod_moeda" = :"OLD_cod_moeda"')
    InsertSQL.Strings = (
      'insert into "moeda"'
      
        '  ("moeda"."cod_moeda", "moeda"."dat_cadastro", "moeda"."den_moe' +
        'da", '
      '   "moeda"."codigo")'
      'values'
      '  (:"cod_moeda", :"dat_cadastro", :"den_moeda", :"codigo")')
    RefreshSQL.Strings = (
      'Select *'
      'from "moeda" '
      'where'
      '  "moeda"."cod_moeda" = :"cod_moeda"')
    SelectSQL.Strings = (
      'select *'
      'from "moeda"'
      'order by "den_moeda"')
    ModifySQL.Strings = (
      'update "moeda"'
      'set'
      '  "moeda"."cod_moeda" = :"cod_moeda",'
      '  "moeda"."dat_cadastro" = :"dat_cadastro",'
      '  "moeda"."den_moeda" = :"den_moeda",'
      '  "moeda"."codigo" = :"codigo"'
      'where'
      '  "moeda"."cod_moeda" = :"OLD_cod_moeda"')
    Left = 263
    Top = 48
    object IBDataSetcodigo: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Origin = '"moeda"."codigo"'
      FixedChar = True
      Size = 3
    end
    object IBDataSetcod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"moeda"."cod_moeda"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetden_moeda: TIBStringField
      DisplayLabel = 'Moeda'
      FieldName = 'den_moeda'
      Origin = '"moeda"."den_moeda"'
      Required = True
      Size = 75
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"moeda"."dat_cadastro"'
      Visible = False
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 284
    Top = 53
  end
end
