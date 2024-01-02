inherited frmNCM: TfrmNCM
  Left = 439
  Top = 362
  Caption = 'NCM'
  ClientHeight = 140
  ClientWidth = 432
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 432
    Height = 104
    object Label1: TLabel [0]
      Left = 8
      Top = 8
      Width = 21
      Height = 14
      Caption = 'NCM'
      FocusControl = DBEdit1
    end
    object Label3: TLabel [1]
      Left = 8
      Top = 48
      Width = 77
      Height = 14
      Caption = 'Denomina'#231#227'o'
      FocusControl = DBEdit3
    end
    inherited pnlF1: TPanel
      Left = 375
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 89
      Height = 22
      DataField = 'ncm_cod'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 97
      Top = 24
      Width = 18
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ncm_letra'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 64
      Width = 289
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ncm_den'
      DataSource = dsIBDataSet
      TabOrder = 4
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 151
      Top = 17
      Width = 142
      Height = 40
      Caption = 'Licen'#231'a Importa'#231#227'o'
      Columns = 2
      DataField = 'ncm_lic'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 3
      TabStop = True
      Values.Strings = (
        'S'
        'N')
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 104
    Width = 432
    inherited ToolBar1: TToolBar
      Width = 432
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
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "ncm"'
      'where'
      '  "ncm"."ncm_cod" = :"OLD_ncm_cod"')
    InsertSQL.Strings = (
      'insert into "ncm"'
      
        '  ("ncm"."ncm_cod", "ncm"."ncm_letra", "ncm"."ncm_den", "ncm"."n' +
        'cm_lic")'
      'values'
      '  (:"ncm_cod", :"ncm_letra", :"ncm_den", :"ncm_lic")')
    RefreshSQL.Strings = (
      'Select '
      '  "ncm"."ncm_cod",'
      '  "ncm"."ncm_letra",'
      '  "ncm"."ncm_den",'
      '  "ncm"."ncm_lic"'
      'from "ncm" '
      'where'
      '  "ncm"."ncm_cod" = :"ncm_cod"')
    SelectSQL.Strings = (
      'select * from "ncm"')
    ModifySQL.Strings = (
      'update "ncm"'
      'set'
      '  "ncm"."ncm_cod" = :"ncm_cod",'
      '  "ncm"."ncm_letra" = :"ncm_letra",'
      '  "ncm"."ncm_den" = :"ncm_den",'
      '  "ncm"."ncm_lic" = :"ncm_lic"'
      'where'
      '  "ncm"."ncm_cod" = :"OLD_ncm_cod"')
    object IBDataSetncm_cod: TIntegerField
      DisplayLabel = 'NCM'
      FieldName = 'ncm_cod'
      Origin = 'ncm.ncm_cod'
      Required = True
      OnGetText = IBDataSetncm_codGetText
    end
    object IBDataSetncm_letra: TIBStringField
      DisplayLabel = 'Letra'
      FieldName = 'ncm_letra'
      Origin = 'ncm.ncm_letra'
      FixedChar = True
      Size = 1
    end
    object IBDataSetncm_den: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'ncm_den'
      Origin = 'ncm.ncm_den'
      Size = 30
    end
    object IBDataSetncm_lic: TIBStringField
      DisplayLabel = 'Licen'#231'a Importa'#231#227'o'
      FieldName = 'ncm_lic'
      Origin = 'ncm.ncm_lic'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 329
    Top = 69
  end
  inherited QrAux: TIBQuery
    Left = 362
  end
end
