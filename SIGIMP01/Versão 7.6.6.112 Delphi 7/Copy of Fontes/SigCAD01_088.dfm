inherited fr_ClienteFilial: Tfr_ClienteFilial
  Left = 788
  Top = 350
  HelpType = htKeyword
  HelpKeyword = '004'
  ActiveControl = dbeNomFilial
  Caption = 'Filiais do Cliente'
  ClientHeight = 330
  ClientWidth = 624
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 624
    Height = 293
    object Label2: TLabel [0]
      Left = 4
      Top = 4
      Width = 98
      Height = 14
      Caption = 'Nome da Filial'
      FocusControl = dbeNomFilial
      Layout = tlBottom
    end
    object Label5: TLabel [1]
      Left = 4
      Top = 42
      Width = 210
      Height = 14
      Caption = 'Informa'#231#245'es para os documentos'
      FocusControl = DBMemo1
    end
    inherited Button1: TButton
      Left = 502
      Top = 15
      Width = 114
      Hint = 'Procurar outros bancos do fornecedor'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Filial'
      TabOrder = 2
    end
    object dbeNomFilial: TDBEdit
      Left = 4
      Top = 20
      Width = 460
      Height = 22
      CharCase = ecUpperCase
      DataField = 'nom_filial'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 4
      Top = 58
      Width = 613
      Height = 222
      DataField = 'endereco_filial'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 293
    Width = 624
    inherited ToolBar1: TToolBar
      Width = 624
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
    Top = 160
  end
  inherited IBDataSet: TIBDataSet
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "cliente_filial"'
      'where'
      '  "cliente_filial"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "cliente_filial"."seq_filial" = :"OLD_seq_filial"')
    InsertSQL.Strings = (
      'insert into "cliente_filial"'
      
        '  ("cliente_filial"."cod_cliente", "cliente_filial"."nom_filial"' +
        ', "cliente_filial"."seq_filial", '
      '   "cliente_filial"."endereco_filial")'
      'values'
      
        '  (:"cod_cliente", :"nom_filial", :"seq_filial", :"endereco_fili' +
        'al")')
    RefreshSQL.Strings = (
      'Select '
      '  "cliente_filial"."cod_cliente",'
      '  "cliente_filial"."nom_filial",'
      '  "cliente_filial"."seq_filial",'
      '  "cliente_filial"."endereco_filial"'
      'from "cliente_filial" '
      'where'
      '  "cliente_filial"."cod_cliente" = :"cod_cliente" and'
      '  "cliente_filial"."seq_filial" = :"seq_filial"')
    SelectSQL.Strings = (
      'select *'
      'from "cliente_filial"'
      'where "cod_cliente" = :cod_cliente'
      'order by "nom_filial"')
    ModifySQL.Strings = (
      'update "cliente_filial"'
      'set'
      '  "cliente_filial"."cod_cliente" = :"cod_cliente",'
      '  "cliente_filial"."nom_filial" = :"nom_filial",'
      '  "cliente_filial"."seq_filial" = :"seq_filial",'
      '  "cliente_filial"."endereco_filial" = :"endereco_filial"'
      'where'
      '  "cliente_filial"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "cliente_filial"."seq_filial" = :"OLD_seq_filial"')
    Top = 160
    object IBDataSetcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente_filial"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object IBDataSetnom_filial: TIBStringField
      FieldName = 'nom_filial'
      Origin = '"cliente_filial"."nom_filial"'
      Size = 50
    end
    object IBDataSetseq_filial: TIntegerField
      FieldName = 'seq_filial'
      Origin = '"cliente_filial"."seq_filial"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetendereco_filial: TMemoField
      FieldName = 'endereco_filial'
      Origin = '"cliente_filial"."endereco_filial"'
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 329
    Top = 191
  end
  inherited QrAux: TIBQuery
    Left = 362
    Top = 160
  end
end
