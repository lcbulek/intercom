inherited fr_CadTipoEmbarque: Tfr_CadTipoEmbarque
  Left = 480
  Top = 304
  HelpType = htKeyword
  HelpKeyword = '065'
  Caption = 'Modalidades de Embarque'
  ClientHeight = 139
  OldCreateOrder = True
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
      Width = 133
      Height = 14
      Caption = 'Descri'#231#227'o em Ingl'#234's'
      FocusControl = DBEdit2
    end
    inherited Button1: TButton
      Left = 256
      Width = 166
      Hint = 'Procurar outras modalidades de embarque'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar modalidades'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 40
      Height = 22
      Color = clInfoBk
      DataField = 'cod_tip_embarque'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 400
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_tip_embarque'
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
      'delete from "tipo_embarque"'
      'where'
      '  "tipo_embarque"."cod_tip_embarque" = :"OLD_cod_tip_embarque"')
    InsertSQL.Strings = (
      'insert into "tipo_embarque"'
      
        '  ("tipo_embarque"."cod_tip_embarque", "tipo_embarque"."den_tip_' +
        'embarque")'
      'values'
      '  (:"cod_tip_embarque", :"den_tip_embarque")')
    RefreshSQL.Strings = (
      'Select '
      '  "tipo_embarque"."cod_tip_embarque",'
      '  "tipo_embarque"."den_tip_embarque"'
      'from "tipo_embarque" '
      'where'
      '  "tipo_embarque"."cod_tip_embarque" = :"cod_tip_embarque"')
    SelectSQL.Strings = (
      'select * from "tipo_embarque"')
    ModifySQL.Strings = (
      'update "tipo_embarque"'
      'set'
      '  "tipo_embarque"."cod_tip_embarque" = :"cod_tip_embarque",'
      '  "tipo_embarque"."den_tip_embarque" = :"den_tip_embarque"'
      'where'
      '  "tipo_embarque"."cod_tip_embarque" = :"OLD_cod_tip_embarque"')
    object IBDataSetcod_tip_embarque: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_tip_embarque'
      Origin = '"tipo_embarque"."cod_tip_embarque"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_tip_embarque: TIBStringField
      DisplayLabel = 'Descri'#231#227'o em Ingl'#234's'
      FieldName = 'den_tip_embarque'
      Origin = '"tipo_embarque"."den_tip_embarque"'
      Size = 80
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
end
