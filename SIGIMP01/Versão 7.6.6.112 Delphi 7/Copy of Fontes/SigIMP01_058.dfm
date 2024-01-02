inherited fr_CadPortos: Tfr_CadPortos
  Left = 426
  Top = 245
  HelpType = htKeyword
  HelpKeyword = '058'
  Caption = 'Portos Cadastrados'
  ClientHeight = 164
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Height = 127
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
      FocusControl = dbeden_porto
    end
    inherited Button1: TButton
      Left = 304
      Width = 118
      Hint = 'Procurar outros portos cadastrados'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Portos'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 40
      Height = 22
      Color = clInfoBk
      DataField = 'cod_porto'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object dbeden_porto: TDBEdit
      Left = 8
      Top = 64
      Width = 350
      Height = 22
      Hint = 'Escreva o Nome do Porto / Pa'#237's '
      CharCase = ecUpperCase
      DataField = 'den_porto'
      DataSource = dsIBDataSet
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 8
      Top = 88
      Width = 350
      Height = 34
      Caption = 'Tipo'
      Columns = 2
      DataField = 'ies_tipo'
      DataSource = dsIBDataSet
      Items.Strings = (
        '&Embarque'
        '&Desembarque')
      TabOrder = 3
      Values.Strings = (
        'E'
        'D')
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 127
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
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "portos"'
      'where'
      '  "portos"."cod_porto" = :"OLD_cod_porto"')
    InsertSQL.Strings = (
      'insert into "portos"'
      
        '  ("portos"."cod_porto", "portos"."den_porto", "portos"."ies_tip' +
        'o")'
      'values'
      '  (:"cod_porto", :"den_porto", :"ies_tipo")')
    RefreshSQL.Strings = (
      'Select '
      '  "portos"."cod_porto",'
      '  "portos"."den_porto",'
      '  "portos"."ies_tipo"'
      'from "portos" '
      'where'
      '  "portos"."cod_porto" = :"cod_porto"')
    SelectSQL.Strings = (
      'select * from "portos"')
    ModifySQL.Strings = (
      'update "portos"'
      'set'
      '  "portos"."cod_porto" = :"cod_porto",'
      '  "portos"."den_porto" = :"den_porto",'
      '  "portos"."ies_tipo" = :"ies_tipo"'
      'where'
      '  "portos"."cod_porto" = :"OLD_cod_porto"')
    object IBDataSetcod_porto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_porto'
      Origin = '"portos"."cod_porto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_porto: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'den_porto'
      Origin = '"portos"."den_porto"'
      Size = 50
    end
    object IBDataSeties_tipo: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ies_tipo'
      Origin = '"portos"."ies_tipo"'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 324
    Top = 61
  end
end
