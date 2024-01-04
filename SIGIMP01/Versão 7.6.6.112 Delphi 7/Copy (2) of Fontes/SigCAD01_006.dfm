inherited fr_CadPais: Tfr_CadPais
  HelpType = htKeyword
  HelpKeyword = '006'
  Caption = 'Pais'
  ClientHeight = 120
  ClientWidth = 449
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 449
    Height = 83
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 47
      Height = 21
      AutoSize = False
      Caption = 'C'#243'digo'
      FocusControl = dbedcod_pais
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 34
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'Nome'
      FocusControl = dbednom_pais
      Layout = tlBottom
    end
    object Label11: TLabel [2]
      Left = 10
      Top = 59
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 392
      TabOrder = 2
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_pais: TDBEdit
      Left = 125
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_pais'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object dbednom_pais: TDBEdit
      Left = 125
      Top = 34
      Width = 295
      Height = 22
      DataField = 'nom_pais'
      DataSource = dsIBDataSet
      TabOrder = 1
      OnExit = dbednom_paisExit
    end
    object dbeddat_cadastro: TDBEdit
      Left = 125
      Top = 58
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 3
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 83
    Width = 449
    inherited ToolBar1: TToolBar
      Width = 449
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
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "pais"'
      'where'
      '  "pais"."cod_pais" = :"OLD_cod_pais"')
    InsertSQL.Strings = (
      'insert into "pais"'
      '  ("pais"."cod_pais", "pais"."dat_cadastro", "pais"."nom_pais")'
      'values'
      '  (:"cod_pais", :"dat_cadastro", :"nom_pais")')
    RefreshSQL.Strings = (
      'Select '
      '  "pais"."cod_pais",'
      '  "pais"."nom_pais",'
      '  "pais"."dat_cadastro"'
      'from "pais" '
      'where'
      '  "pais"."cod_pais" = :"cod_pais"')
    SelectSQL.Strings = (
      'select *'
      'from "pais"'
      'order by "cod_pais"')
    ModifySQL.Strings = (
      'update "pais"'
      'set'
      '  "pais"."cod_pais" = :"cod_pais",'
      '  "pais"."dat_cadastro" = :"dat_cadastro",'
      '  "pais"."nom_pais" = :"nom_pais"'
      'where'
      '  "pais"."cod_pais" = :"OLD_cod_pais"')
    object IBDataSetcod_pais: TSmallintField
      DisplayLabel = 'Pais'
      FieldName = 'cod_pais'
      Origin = '"pais"."cod_pais"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetnom_pais: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_pais'
      Origin = '"pais"."nom_pais"'
      Required = True
      Size = 50
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"pais"."dat_cadastro"'
    end
  end
end
