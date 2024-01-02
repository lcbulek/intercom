inherited fr_CadUnidadeFederativa: Tfr_CadUnidadeFederativa
  Left = 295
  Top = 227
  HelpType = htKeyword
  HelpKeyword = '007'
  Caption = 'Unidade da federa'#231#227'o'
  ClientHeight = 142
  ClientWidth = 450
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 450
    Height = 106
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 141
      Height = 21
      AutoSize = False
      Caption = 'Unidade da federa'#231#227'o'
      FocusControl = dbedcod_unidade_federativa
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 33
      Width = 63
      Height = 21
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      FocusControl = dbednom_unidade_federativa
      Layout = tlBottom
    end
    object Label3: TLabel [2]
      Left = 336
      Top = 33
      Width = 35
      Height = 21
      AutoSize = False
      Caption = 'Sigla'
      FocusControl = dbbedsigla
      Layout = tlBottom
    end
    object Label4: TLabel [3]
      Left = 10
      Top = 56
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'Pais'
      FocusControl = dblklkNomPais
      Layout = tlBottom
    end
    object Label11: TLabel [4]
      Left = 10
      Top = 82
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 393
      TabOrder = 5
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_unidade_federativa: TDBEdit
      Left = 153
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_unidade_federativa'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object dbednom_unidade_federativa: TDBEdit
      Left = 153
      Top = 33
      Width = 181
      Height = 22
      DataField = 'nom_unidade_federativa'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object dbbedsigla: TDBEdit
      Left = 375
      Top = 33
      Width = 46
      Height = 22
      CharCase = ecUpperCase
      DataField = 'sigla'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object dblklkNomPais: TDBLookupComboBox
      Left = 203
      Top = 56
      Width = 219
      Height = 22
      DataField = 'lkNomPais'
      DataSource = dsIBDataSet
      TabOrder = 4
      OnExit = dblklkNomPaisExit
    end
    object edtcod_pais: TDBEdit
      Left = 153
      Top = 56
      Width = 46
      Height = 22
      DataField = 'cod_pais'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
    object dbeddat_cadastro: TDBEdit
      Left = 153
      Top = 81
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
    Top = 106
    Width = 450
    inherited ToolBar1: TToolBar
      Width = 450
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
    Top = 50
  end
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforeEdit = IBDataSetBeforeEdit
    BeforeInsert = IBDataSetBeforeInsert
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "unidade_federativa"'
      'where'
      
        '  "unidade_federativa"."cod_unidade_federativa" = :"OLD_cod_unid' +
        'ade_federativa"')
    InsertSQL.Strings = (
      'insert into "unidade_federativa"'
      
        '  ("unidade_federativa"."cod_pais", "unidade_federativa"."cod_un' +
        'idade_federativa", '
      
        '   "unidade_federativa"."dat_cadastro", "unidade_federativa"."no' +
        'm_unidade_federativa", '
      '   "unidade_federativa"."sigla")'
      'values'
      
        '  (:"cod_pais", :"cod_unidade_federativa", :"dat_cadastro", :"no' +
        'm_unidade_federativa", '
      '   :"sigla")')
    RefreshSQL.Strings = (
      'Select '
      '  "unidade_federativa"."cod_unidade_federativa",'
      '  "unidade_federativa"."nom_unidade_federativa",'
      '  "unidade_federativa"."sigla",'
      '  "unidade_federativa"."cod_pais",'
      '  "unidade_federativa"."dat_cadastro"'
      'from "unidade_federativa" '
      'where'
      
        '  "unidade_federativa"."cod_unidade_federativa" = :"cod_unidade_' +
        'federativa"')
    SelectSQL.Strings = (
      'select *'
      'from  "unidade_federativa"'
      'order by "cod_unidade_federativa"')
    ModifySQL.Strings = (
      'update "unidade_federativa"'
      'set'
      '  "unidade_federativa"."cod_pais" = :"cod_pais",'
      
        '  "unidade_federativa"."cod_unidade_federativa" = :"cod_unidade_' +
        'federativa",'
      '  "unidade_federativa"."dat_cadastro" = :"dat_cadastro",'
      
        '  "unidade_federativa"."nom_unidade_federativa" = :"nom_unidade_' +
        'federativa",'
      '  "unidade_federativa"."sigla" = :"sigla"'
      'where'
      
        '  "unidade_federativa"."cod_unidade_federativa" = :"OLD_cod_unid' +
        'ade_federativa"')
    Top = 50
    object IBDataSetcod_unidade_federativa: TSmallintField
      DisplayLabel = 'Unidade federativa'
      FieldName = 'cod_unidade_federativa'
      Origin = '"unidade_federativa"."cod_unidade_federativa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetnom_unidade_federativa: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_unidade_federativa'
      Origin = '"unidade_federativa"."nom_unidade_federativa"'
      Required = True
      Size = 50
    end
    object IBDataSetsigla: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sigla'
      Origin = '"unidade_federativa"."sigla"'
      Required = True
      Size = 3
    end
    object IBDataSetcod_pais: TSmallintField
      DisplayLabel = 'Pais'
      FieldName = 'cod_pais'
      Origin = '"unidade_federativa"."cod_pais"'
      Required = True
      Visible = False
    end
    object IBDataSetlkNomPais: TIBStringField
      DisplayLabel = 'Pais'
      FieldKind = fkLookup
      FieldName = 'lkNomPais'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_pais'
      LookupResultField = 'nom_pais'
      KeyFields = 'cod_pais'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"unidade_federativa"."dat_cadastro"'
    end
  end
  inherited dsIBDataSet: TDataSource
    Top = 55
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select *'
      'from "pais"'
      'order by "nom_pais"')
    Top = 50
    object QrAuxcod_pais: TSmallintField
      FieldName = 'cod_pais'
      Origin = '"pais"."cod_pais"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxnom_pais: TIBStringField
      FieldName = 'nom_pais'
      Origin = '"pais"."nom_pais"'
      Required = True
      Size = 50
    end
  end
end
