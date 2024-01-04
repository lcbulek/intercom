inherited fr_CadTipo_NF: Tfr_CadTipo_NF
  Left = 415
  Top = 227
  HelpType = htKeyword
  HelpKeyword = '029'
  ActiveControl = dbedcod_tip_nota_fiscal
  Caption = 'Tipo Fatura'
  ClientHeight = 149
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Height = 113
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Tipo Fatura'
      FocusControl = dbedcod_tip_nota_fiscal
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 33
      Width = 63
      Height = 21
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      FocusControl = dbedden_tip_nota_fiscal
      Layout = tlBottom
    end
    object Label11: TLabel [2]
      Left = 10
      Top = 84
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_tip_nota_fiscal: TDBEdit
      Left = 155
      Top = 10
      Width = 50
      Height = 22
      CharCase = ecUpperCase
      DataField = 'cod_tip_nota_fiscal'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object dbedden_tip_nota_fiscal: TDBEdit
      Left = 155
      Top = 33
      Width = 264
      Height = 22
      DataField = 'den_tip_nota_fiscal'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object dbckies_gera_documento: TDBCheckBox
      Left = 8
      Top = 64
      Width = 161
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Gera doc. Financeiro'
      DataField = 'ies_gera_documento'
      DataSource = dsIBDataSet
      TabOrder = 3
      ValueChecked = 'Sim'
      ValueUnchecked = 'N'#227'o'
      OnExit = dbckies_gera_documentoExit
    end
    object dbeddat_cadastro: TDBEdit
      Left = 157
      Top = 83
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 4
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 113
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
      'delete from "tipo_nota_fiscal"'
      'where'
      
        '  "tipo_nota_fiscal"."cod_tip_nota_fiscal" = :"OLD_cod_tip_nota_' +
        'fiscal"')
    InsertSQL.Strings = (
      'insert into "tipo_nota_fiscal"'
      
        '  ("tipo_nota_fiscal"."cod_tip_nota_fiscal", "tipo_nota_fiscal".' +
        '"dat_cadastro", '
      
        '   "tipo_nota_fiscal"."den_tip_nota_fiscal", "tipo_nota_fiscal".' +
        '"ies_gera_documento", '
      '   "tipo_nota_fiscal"."ies_tip_nota_fiscal")'
      'values'
      
        '  (:"cod_tip_nota_fiscal", :"dat_cadastro", :"den_tip_nota_fisca' +
        'l", :"ies_gera_documento", '
      '   :"ies_tip_nota_fiscal")')
    RefreshSQL.Strings = (
      'Select '
      '  "tipo_nota_fiscal"."cod_tip_nota_fiscal",'
      '  "tipo_nota_fiscal"."den_tip_nota_fiscal",'
      '  "tipo_nota_fiscal"."ies_tip_nota_fiscal",'
      '  "tipo_nota_fiscal"."ies_gera_documento",'
      '  "tipo_nota_fiscal"."dat_cadastro"'
      'from "tipo_nota_fiscal" '
      'where'
      
        '  "tipo_nota_fiscal"."cod_tip_nota_fiscal" = :"cod_tip_nota_fisc' +
        'al"')
    SelectSQL.Strings = (
      'select *'
      'from "tipo_nota_fiscal"'
      'where'
      '    "ies_tip_nota_fiscal" = '#39'S'#39
      'order by "cod_tip_nota_fiscal"')
    ModifySQL.Strings = (
      'update "tipo_nota_fiscal"'
      'set'
      
        '  "tipo_nota_fiscal"."cod_tip_nota_fiscal" = :"cod_tip_nota_fisc' +
        'al",'
      '  "tipo_nota_fiscal"."dat_cadastro" = :"dat_cadastro",'
      
        '  "tipo_nota_fiscal"."den_tip_nota_fiscal" = :"den_tip_nota_fisc' +
        'al",'
      
        '  "tipo_nota_fiscal"."ies_gera_documento" = :"ies_gera_documento' +
        '",'
      
        '  "tipo_nota_fiscal"."ies_tip_nota_fiscal" = :"ies_tip_nota_fisc' +
        'al"'
      'where'
      
        '  "tipo_nota_fiscal"."cod_tip_nota_fiscal" = :"OLD_cod_tip_nota_' +
        'fiscal"')
    Left = 330
    object IBDataSetcod_tip_nota_fiscal: TIBStringField
      FieldName = 'cod_tip_nota_fiscal'
      Origin = '"tipo_nota_fiscal"."cod_tip_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object IBDataSetden_tip_nota_fiscal: TIBStringField
      FieldName = 'den_tip_nota_fiscal'
      Origin = '"tipo_nota_fiscal"."den_tip_nota_fiscal"'
      Required = True
      Size = 75
    end
    object IBDataSeties_tip_nota_fiscal: TIBStringField
      FieldName = 'ies_tip_nota_fiscal'
      Origin = '"tipo_nota_fiscal"."ies_tip_nota_fiscal"'
      Size = 1
    end
    object IBDataSeties_gera_documento: TIBStringField
      FieldName = 'ies_gera_documento'
      Origin = '"tipo_nota_fiscal"."ies_gera_documento"'
      OnGetText = IBDataSeties_gera_documentoGetText
      OnSetText = IBDataSeties_gera_documentoSetText
      Size = 1
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"tipo_nota_fiscal"."dat_cadastro"'
    end
  end
end
