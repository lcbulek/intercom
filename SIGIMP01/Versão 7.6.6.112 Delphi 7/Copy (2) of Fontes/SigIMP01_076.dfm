inherited fr_CadNcm: Tfr_CadNcm
  Left = 813
  Top = 394
  Caption = 'NCM com LI ou INMETRO'
  ClientHeight = 126
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Height = 89
    object Label1: TLabel [0]
      Left = 8
      Top = 5
      Width = 21
      Height = 14
      Caption = 'NCM'
      FocusControl = DBEdit1
    end
    inherited Button1: TButton
      Left = 280
      Width = 142
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar NCM ...'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 21
      Width = 116
      Height = 22
      DataField = 'ncm_cod'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 8
      Top = 48
      Width = 146
      Height = 33
      Caption = 'Licen'#231'a Importa'#231#227'o'
      Columns = 2
      DataField = 'ncm_lic'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 2
      Values.Strings = (
        'S'
        'N')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 160
      Top = 48
      Width = 146
      Height = 33
      Caption = 'Licenciado INMETRO'
      Columns = 2
      DataField = 'ncm_imetro'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 3
      Values.Strings = (
        'S'
        'N')
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 89
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
    AfterEdit = IBDataSetAfterEdit
    BeforeDelete = IBDataSetBeforeDelete
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "ncm"'
      'where'
      '  "ncm"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "ncm"."ncm_cod" = :"OLD_ncm_cod"')
    InsertSQL.Strings = (
      'insert into "ncm"'
      
        '  ("ncm"."cod_empresa", "ncm"."ncm_cod", "ncm"."ncm_lic", "ncm".' +
        '"ncm_imetro")'
      'values'
      '  (:"cod_empresa", :"ncm_cod", :"ncm_lic", :"ncm_imetro")')
    RefreshSQL.Strings = (
      'Select '
      '  "ncm"."cod_empresa",'
      '  "ncm"."ncm_cod",'
      '  "ncm"."ncm_lic",'
      '  "ncm"."ncm_imetro"'
      'from "ncm" '
      'where'
      '  "ncm"."cod_empresa" = :"cod_empresa" and'
      '  "ncm"."ncm_cod" = :"ncm_cod"')
    SelectSQL.Strings = (
      'select * from "ncm"'
      'where "cod_empresa" = :cod_empresa')
    ModifySQL.Strings = (
      'update "ncm"'
      'set'
      '  "ncm"."cod_empresa" = :"cod_empresa",'
      '  "ncm"."ncm_cod" = :"ncm_cod",'
      '  "ncm"."ncm_lic" = :"ncm_lic",'
      '  "ncm"."ncm_imetro" = :"ncm_imetro"'
      'where'
      '  "ncm"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "ncm"."ncm_cod" = :"OLD_ncm_cod"')
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"ncm"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetncm_cod: TIntegerField
      DisplayLabel = 'NCM'
      FieldName = 'ncm_cod'
      Origin = '"ncm"."ncm_cod"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetncm_lic: TIBStringField
      DisplayLabel = 'LI'
      FieldName = 'ncm_lic'
      Origin = '"ncm"."ncm_lic"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetncm_imetro: TIBStringField
      DisplayLabel = 'IMETRO'
      FieldName = 'ncm_imetro'
      Origin = '"ncm"."ncm_imetro"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 329
    Top = 69
  end
  object spr_ncm: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_ncm'
    Left = 376
    Top = 72
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NCM_COD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OPER'
        ParamType = ptInput
      end>
  end
end
