inherited fr_CadAEN: Tfr_CadAEN
  Left = 354
  Top = 249
  HelpKeyword = '003'
  HelpContext = 3
  Caption = 'AEN'
  ClientHeight = 188
  ClientWidth = 454
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 454
    Height = 152
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'AEN1'
      FocusControl = edtaen1
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 33
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'AEN2'
      FocusControl = edtaen2
      Layout = tlBottom
    end
    object Label3: TLabel [2]
      Left = 10
      Top = 56
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'AEN3'
      FocusControl = edtaen3
      Layout = tlBottom
    end
    object Label4: TLabel [3]
      Left = 10
      Top = 79
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'AEN4'
      FocusControl = edtaen4
      Layout = tlBottom
    end
    object Label5: TLabel [4]
      Left = 10
      Top = 103
      Width = 63
      Height = 21
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      FocusControl = edtden_aen
      Layout = tlBottom
    end
    object Label11: TLabel [5]
      Left = 10
      Top = 127
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = edtdat_cadastro
      Layout = tlBottom
    end
    object spbTraduzir: TSpeedButton [6]
      Left = 424
      Top = 103
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = TraduzirExecute
    end
    inherited pnlF1: TPanel
      Left = 397
      TabOrder = 5
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object edtaen1: TDBEdit
      Left = 125
      Top = 10
      Width = 50
      Height = 22
      DataField = 'aen1'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
    object edtaen2: TDBEdit
      Left = 125
      Top = 33
      Width = 50
      Height = 22
      DataField = 'aen2'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object edtaen3: TDBEdit
      Left = 125
      Top = 56
      Width = 50
      Height = 22
      DataField = 'aen3'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object edtaen4: TDBEdit
      Left = 125
      Top = 79
      Width = 50
      Height = 22
      DataField = 'aen4'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
    object edtden_aen: TDBEdit
      Left = 125
      Top = 103
      Width = 296
      Height = 22
      DataField = 'den_aen'
      DataSource = dsIBDataSet
      TabOrder = 4
      OnExit = edtden_aenExit
    end
    object edtdat_cadastro: TDBEdit
      Left = 125
      Top = 126
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 6
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 152
    Width = 454
    inherited ToolBar1: TToolBar
      Width = 454
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
    BeforeDelete = IBDataSetBeforeDelete
    BeforeEdit = IBDataSetBeforeEdit
    BeforeInsert = IBDataSetBeforeInsert
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "aen"'
      'where'
      '  "aen"."aen1" = :"OLD_aen1" and'
      '  "aen"."aen2" = :"OLD_aen2" and'
      '  "aen"."aen3" = :"OLD_aen3" and'
      '  "aen"."aen4" = :"OLD_aen4"')
    InsertSQL.Strings = (
      'insert into "aen"'
      
        '  ("aen"."aen1", "aen"."aen2", "aen"."aen3", "aen"."aen4", "aen"' +
        '."dat_cadastro", '
      '   "aen"."den_aen")'
      'values'
      
        '  (:"aen1", :"aen2", :"aen3", :"aen4", :"dat_cadastro", :"den_ae' +
        'n")')
    RefreshSQL.Strings = (
      'Select '
      '  "aen"."aen1",'
      '  "aen"."aen2",'
      '  "aen"."aen3",'
      '  "aen"."aen4",'
      '  "aen"."den_aen",'
      '  "aen"."dat_cadastro"'
      'from "aen" '
      'where'
      '  "aen"."aen1" = :"aen1" and'
      '  "aen"."aen2" = :"aen2" and'
      '  "aen"."aen3" = :"aen3" and'
      '  "aen"."aen4" = :"aen4"')
    SelectSQL.Strings = (
      'select *'
      'from "aen"'
      'order by "aen1", "aen2", "aen3","aen4"')
    ModifySQL.Strings = (
      'update "aen"'
      'set'
      '  "aen"."aen1" = :"aen1",'
      '  "aen"."aen2" = :"aen2",'
      '  "aen"."aen3" = :"aen3",'
      '  "aen"."aen4" = :"aen4",'
      '  "aen"."dat_cadastro" = :"dat_cadastro",'
      '  "aen"."den_aen" = :"den_aen"'
      'where'
      '  "aen"."aen1" = :"OLD_aen1" and'
      '  "aen"."aen2" = :"OLD_aen2" and'
      '  "aen"."aen3" = :"OLD_aen3" and'
      '  "aen"."aen4" = :"OLD_aen4"')
    object IBDataSetaen1: TSmallintField
      DisplayLabel = 'AEN1'
      FieldName = 'aen1'
      Origin = '"aen"."aen1"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetaen2: TSmallintField
      DisplayLabel = 'AEN2'
      FieldName = 'aen2'
      Origin = '"aen"."aen2"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetaen3: TSmallintField
      DisplayLabel = 'AEN3'
      FieldName = 'aen3'
      Origin = '"aen"."aen3"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetaen4: TSmallintField
      DisplayLabel = 'AEN4'
      FieldName = 'aen4'
      Origin = '"aen"."aen4"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = IBDataSetaen4Validate
    end
    object IBDataSetden_aen: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_aen'
      Origin = '"aen"."den_aen"'
      Required = True
      Size = 75
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"aen"."dat_cadastro"'
    end
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select "aen1"'
      'from "aen"'
      'where'
      '    "aen1" = :aen1'
      'and "aen2" = :aen2'
      'and "aen3" = :aen3'
      'and "aen4" = :aen4')
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'aen1'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'aen2'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'aen3'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'aen4'
        ParamType = ptInput
      end>
  end
end
