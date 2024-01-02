inherited fr_Cad_Idiomas: Tfr_Cad_Idiomas
  Left = 144
  Top = 392
  HelpType = htKeyword
  HelpKeyword = '046'
  Caption = 'Idiomas'
  ClientHeight = 104
  ClientWidth = 453
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 453
    Height = 68
    object Label1: TLabel [0]
      Left = 6
      Top = 15
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 6
      Top = 39
      Width = 42
      Height = 14
      Caption = 'Idioma'
      FocusControl = DBEdit2
    end
    inherited pnlF1: TPanel
      Left = 396
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 8
      Width = 30
      Height = 22
      DataField = 'cod_idioma'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 32
      Width = 100
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_idioma'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 68
    Width = 453
    inherited ToolBar1: TToolBar
      Width = 453
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
    Left = 200
  end
  inherited IBDataSet: TIBDataSet
    DeleteSQL.Strings = (
      'delete from "idiomas"'
      'where'
      '  "idiomas"."cod_idioma" = :"OLD_cod_idioma"')
    InsertSQL.Strings = (
      'insert into "idiomas"'
      '  ("idiomas"."cod_idioma", "idiomas"."den_idioma")'
      'values'
      '  (:"cod_idioma", :"den_idioma")')
    RefreshSQL.Strings = (
      'Select '
      '  "idiomas"."cod_idioma",'
      '  "idiomas"."den_idioma"'
      'from "idiomas" '
      'where'
      '  "idiomas"."cod_idioma" = :"cod_idioma"')
    SelectSQL.Strings = (
      'select * from "idiomas"')
    ModifySQL.Strings = (
      'update "idiomas"'
      'set'
      '  "idiomas"."cod_idioma" = :"cod_idioma",'
      '  "idiomas"."den_idioma" = :"den_idioma"'
      'where'
      '  "idiomas"."cod_idioma" = :"OLD_cod_idioma"')
    Left = 229
    object IBDataSetcod_idioma: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_idioma'
      Origin = '"idiomas"."cod_idioma"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_idioma: TIBStringField
      DisplayLabel = 'Idioma'
      FieldName = 'den_idioma'
      Origin = '"idiomas"."den_idioma"'
      Size = 30
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 244
  end
  inherited QrAux: TIBQuery
    Left = 279
  end
end
