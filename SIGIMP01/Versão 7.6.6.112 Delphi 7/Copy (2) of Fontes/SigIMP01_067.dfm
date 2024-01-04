inherited fr_CadDespachante: Tfr_CadDespachante
  Left = 524
  Top = 348
  HelpType = htKeyword
  HelpKeyword = '067'
  Caption = 'Despachante Aduaneiro'
  ClientHeight = 137
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Height = 100
    object Label1: TLabel [0]
      Left = 8
      Top = 8
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 8
      Top = 48
      Width = 77
      Height = 14
      Caption = 'Denomina'#231#227'o'
      FocusControl = DBEdit2
    end
    inherited Button1: TButton
      Left = 240
      Width = 183
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Despachantes ...'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 40
      Height = 22
      Color = clInfoBk
      DataField = 'cod_despachante'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 410
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_despachante'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 100
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
    BeforePost = IBDataSetBeforePost
    DeleteSQL.Strings = (
      'delete from "despachante"'
      'where'
      '  "despachante"."cod_despachante" = :"OLD_cod_despachante"')
    InsertSQL.Strings = (
      'insert into "despachante"'
      
        '  ("despachante"."cod_despachante", "despachante"."den_despachan' +
        'te")'
      'values'
      '  (:"cod_despachante", :"den_despachante")')
    RefreshSQL.Strings = (
      'Select '
      '  "despachante"."cod_despachante",'
      '  "despachante"."den_despachante"'
      'from "despachante" '
      'where'
      '  "despachante"."cod_despachante" = :"cod_despachante"')
    SelectSQL.Strings = (
      'select * from "despachante"'
      '')
    ModifySQL.Strings = (
      'update "despachante"'
      'set'
      '  "despachante"."cod_despachante" = :"cod_despachante",'
      '  "despachante"."den_despachante" = :"den_despachante"'
      'where'
      '  "despachante"."cod_despachante" = :"OLD_cod_despachante"')
    object IBDataSetcod_despachante: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_despachante'
      Origin = '"despachante"."cod_despachante"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_despachante: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'den_despachante'
      Origin = '"despachante"."den_despachante"'
      Size = 100
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
end
