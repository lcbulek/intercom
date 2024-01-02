inherited fr_CadArmadores: Tfr_CadArmadores
  Left = 522
  Top = 330
  HelpType = htKeyword
  HelpKeyword = '066'
  Caption = 'Armadores Cadastrados'
  ClientHeight = 139
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Height = 102
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
      Left = 280
      Width = 142
      Hint = 'Procurar outros armadores cadastrados'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Armadores'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 40
      Height = 22
      Color = clInfoBk
      DataField = 'cod_armador'
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
      DataField = 'den_armador'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 102
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
    DeleteSQL.Strings = (
      'delete from "armadores"'
      'where'
      '  "armadores"."cod_armador" = :"OLD_cod_armador"')
    InsertSQL.Strings = (
      'insert into "armadores"'
      '  ("armadores"."cod_armador", "armadores"."den_armador")'
      'values'
      '  (:"cod_armador", :"den_armador")')
    RefreshSQL.Strings = (
      'Select '
      '  "armadores"."cod_armador",'
      '  "armadores"."den_armador"'
      'from "armadores" '
      'where'
      '  "armadores"."cod_armador" = :"cod_armador"')
    SelectSQL.Strings = (
      'select * from "armadores"')
    ModifySQL.Strings = (
      'update "armadores"'
      'set'
      '  "armadores"."cod_armador" = :"cod_armador",'
      '  "armadores"."den_armador" = :"den_armador"'
      'where'
      '  "armadores"."cod_armador" = :"OLD_cod_armador"')
    object IBDataSetcod_armador: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_armador'
      Origin = '"armadores"."cod_armador"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_armador: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'den_armador'
      Origin = '"armadores"."den_armador"'
      Size = 100
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 77
  end
end
