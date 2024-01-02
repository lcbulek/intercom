inherited fr_CadTipoEmbalagem: Tfr_CadTipoEmbalagem
  Left = 309
  Top = 303
  HelpType = htKeyword
  HelpKeyword = '048'
  Caption = 'Tipo produto embalagem'
  ClientHeight = 122
  ClientWidth = 450
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 450
    Height = 86
    object Label2: TLabel [0]
      Left = 8
      Top = 40
      Width = 84
      Height = 14
      Caption = 'Tipo Produto'
      FocusControl = DBEdit2
    end
    object Label1: TLabel [1]
      Left = 9
      Top = 12
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    inherited pnlF1: TPanel
      Left = 393
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 32
      Width = 32
      Height = 22
      DataField = 'cod_tip_produto'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 128
      Top = 32
      Width = 296
      Height = 22
      DataField = 'lkTipoProduto'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 8
      Width = 32
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'seq'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 3
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 86
    Width = 450
    inherited ToolBar1: TToolBar
      Width = 450
    end
    inherited ActionList1: TActionList
      Top = 2
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
    inherited ImageList1: TImageList
      Top = 4
    end
  end
  inherited ActionList1: TActionList
    Left = 272
    Top = 8
  end
  inherited IBDataSet: TIBDataSet
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "tipo_embalagem"'
      'where'
      '  "tipo_embalagem"."seq" = :"OLD_seq"')
    InsertSQL.Strings = (
      'insert into "tipo_embalagem"'
      '  ("tipo_embalagem"."seq", "tipo_embalagem"."cod_tip_produto")'
      'values'
      '  (:"seq", :"cod_tip_produto")')
    RefreshSQL.Strings = (
      'Select '
      '  "tipo_embalagem"."seq",'
      '  "tipo_embalagem"."cod_tip_produto"'
      'from "tipo_embalagem" '
      'where'
      '  "tipo_embalagem"."seq" = :"seq"')
    SelectSQL.Strings = (
      'select * from "tipo_embalagem"'
      '')
    ModifySQL.Strings = (
      'update "tipo_embalagem"'
      'set'
      '  "tipo_embalagem"."seq" = :"seq",'
      '  "tipo_embalagem"."cod_tip_produto" = :"cod_tip_produto"'
      'where'
      '  "tipo_embalagem"."seq" = :"OLD_seq"')
    Left = 301
    Top = 8
    object IBDataSetseq: TSmallintField
      DisplayLabel = 'Seq'#252#234'ncia'
      FieldName = 'seq'
      Origin = '"tipo_embalagem"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetcod_tip_produto: TSmallintField
      DisplayLabel = 'Tipo Produto'
      FieldName = 'cod_tip_produto'
      Origin = '"tipo_embalagem"."cod_tip_produto"'
      Required = True
    end
    object IBDataSetlkTipoProduto: TStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'lkTipoProduto'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_tip_produto'
      LookupResultField = 'den_tip_produto'
      KeyFields = 'cod_tip_produto'
      Size = 40
      Lookup = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 316
    Top = 13
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select * from "tipo_produto"'
      '')
    Left = 351
    Top = 8
  end
  object ProxSeq: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select Max("seq")+1 "seq"'
      'from "tipo_embalagem"'
      '')
    Left = 352
    Top = 56
    object ProxSeqseq: TLargeintField
      FieldName = 'seq'
    end
  end
end
