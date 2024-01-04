inherited fr_CadBanco: Tfr_CadBanco
  Left = 707
  Top = 305
  HelpType = htKeyword
  HelpKeyword = '004'
  ActiveControl = dbeNomBanco
  Caption = 'Bancos'
  ClientHeight = 371
  ClientWidth = 624
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 624
    Height = 334
    object Label2: TLabel [0]
      Left = 4
      Top = 50
      Width = 91
      Height = 14
      Caption = 'Nome do Banco'
      FocusControl = dbeNomBanco
      Layout = tlBottom
    end
    object Label5: TLabel [1]
      Left = 4
      Top = 88
      Width = 560
      Height = 14
      Caption = 
        'Dados do banco aonde o fornecedor tem a sua conta e dados do ban' +
        'co intermediario'
      FocusControl = DBMemo1
    end
    object Label1: TLabel [2]
      Left = 4
      Top = 10
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    inherited Button1: TButton
      Left = 502
      Top = 15
      Width = 114
      Hint = 'Procurar outros bancos do fornecedor'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Bancos'
      TabOrder = 4
    end
    object dbeNomBanco: TDBEdit
      Left = 4
      Top = 66
      Width = 460
      Height = 22
      CharCase = ecUpperCase
      DataField = 'nom_banco'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 4
      Top = 104
      Width = 613
      Height = 222
      DataField = 'txt_descricao'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 55
      Top = 9
      Width = 127
      Height = 37
      Caption = 'Banco Atual'
      Columns = 2
      DataField = 'ies_default'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 1
      Values.Strings = (
        'S'
        'N')
    end
    object DBEdit1: TDBEdit
      Left = 4
      Top = 26
      Width = 41
      Height = 22
      Color = clInfoBk
      DataField = 'cod_banco'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 334
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
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "banco"'
      'where'
      '  "banco"."cod_banco" = :"OLD_cod_banco"')
    InsertSQL.Strings = (
      'insert into "banco"'
      
        '  ("banco"."cod_banco", "banco"."nom_banco", "banco"."cod_fornec' +
        'edor", '
      
        '   "banco"."ies_tipo", "banco"."ies_default", "banco"."txt_descr' +
        'icao")'
      'values'
      
        '  (:"cod_banco", :"nom_banco", :"cod_fornecedor", :"ies_tipo", :' +
        '"ies_default", '
      '   :"txt_descricao")')
    RefreshSQL.Strings = (
      'Select '
      '  "banco"."cod_banco",'
      '  "banco"."nom_banco",'
      '  "banco"."cod_fornecedor",'
      '  "banco"."ies_tipo",'
      '  "banco"."ies_default",'
      '  "banco"."txt_descricao"'
      'from "banco" '
      'where'
      '  "banco"."cod_banco" = :"cod_banco"')
    SelectSQL.Strings = (
      'select * from "banco"'
      'where "cod_fornecedor" = :cod_fornecedor'
      'order by "ies_default" desc')
    ModifySQL.Strings = (
      'update "banco"'
      'set'
      '  "banco"."cod_banco" = :"cod_banco",'
      '  "banco"."nom_banco" = :"nom_banco",'
      '  "banco"."cod_fornecedor" = :"cod_fornecedor",'
      '  "banco"."ies_tipo" = :"ies_tipo",'
      '  "banco"."ies_default" = :"ies_default",'
      '  "banco"."txt_descricao" = :"txt_descricao"'
      'where'
      '  "banco"."cod_banco" = :"OLD_cod_banco"')
    Top = 160
    object IBDataSetcod_banco: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_banco'
      Origin = '"banco"."cod_banco"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetnom_banco: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'nom_banco'
      Origin = '"banco"."nom_banco"'
      Size = 255
    end
    object IBDataSetcod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = '"banco"."cod_fornecedor"'
      Visible = False
    end
    object IBDataSeties_tipo: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ies_tipo'
      Origin = '"banco"."ies_tipo"'
      FixedChar = True
      Size = 1
    end
    object IBDataSeties_default: TIBStringField
      DisplayLabel = 'Default'
      FieldName = 'ies_default'
      Origin = '"banco"."ies_default"'
      FixedChar = True
      Size = 1
    end
    object IBDataSettxt_descricao: TMemoField
      DisplayLabel = 'Dados Banc'#225'rios'
      FieldName = 'txt_descricao'
      Origin = '"banco"."txt_descricao"'
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
  object spr_muda_default_banco: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_muda_default_banco'
    Left = 368
    Top = 192
  end
end
