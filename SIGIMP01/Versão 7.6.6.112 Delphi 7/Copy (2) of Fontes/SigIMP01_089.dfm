inherited fr_Fabricantes: Tfr_Fabricantes
  Left = 804
  Top = 299
  Caption = 'Fabricantes'
  ClientHeight = 344
  ClientWidth = 584
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 584
    Height = 307
    object Label1: TLabel [0]
      Left = 8
      Top = 16
      Width = 28
      Height = 14
      Caption = 'Nome'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 8
      Top = 64
      Width = 77
      Height = 14
      Caption = 'Observa'#231#245'es'
      FocusControl = DBMemo1
    end
    inherited Button1: TButton
      Left = 408
      Top = 6
      Width = 156
      Hint = 'Procurar outros fabricantes'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Fabricantes'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 570
      Height = 22
      CharCase = ecUpperCase
      DataField = 'nome'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 80
      Width = 569
      Height = 217
      DataField = 'descricao'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 307
    Width = 584
    inherited ToolBar1: TToolBar
      Width = 584
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
    BeforePost = IBDataSetBeforePost
    DeleteSQL.Strings = (
      'delete from "fabricantes"'
      'where'
      '  "fabricantes"."cod_fabricante" = :"OLD_cod_fabricante"')
    InsertSQL.Strings = (
      'insert into "fabricantes"'
      
        '  ("fabricantes"."cod_fabricante", "fabricantes"."nome", "fabric' +
        'antes"."descricao")'
      'values'
      '  (:"cod_fabricante", :"nome", :"descricao")')
    RefreshSQL.Strings = (
      'Select '
      '  "fabricantes"."cod_fabricante",'
      '  "fabricantes"."nome",'
      '  "fabricantes"."descricao"'
      'from "fabricantes" '
      'where'
      '  "fabricantes"."cod_fabricante" = :"cod_fabricante"')
    SelectSQL.Strings = (
      'select * from "fabricantes"'
      'where "cod_fabricante" <> 0')
    ModifySQL.Strings = (
      'update "fabricantes"'
      'set'
      '  "fabricantes"."cod_fabricante" = :"cod_fabricante",'
      '  "fabricantes"."nome" = :"nome",'
      '  "fabricantes"."descricao" = :"descricao"'
      'where'
      '  "fabricantes"."cod_fabricante" = :"OLD_cod_fabricante"')
    object IBDataSetcod_fabricante: TSmallintField
      FieldName = 'cod_fabricante'
      Origin = '"fabricantes"."cod_fabricante"'
      Required = True
    end
    object IBDataSetnome: TIBStringField
      FieldName = 'nome'
      Origin = '"fabricantes"."nome"'
      Size = 50
    end
    object IBDataSetdescricao: TMemoField
      FieldName = 'descricao'
      Origin = '"fabricantes"."descricao"'
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 77
  end
end
