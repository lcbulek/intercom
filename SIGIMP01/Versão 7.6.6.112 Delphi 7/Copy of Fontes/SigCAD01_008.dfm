inherited fr_CadCidade: Tfr_CadCidade
  Left = 289
  Top = 199
  HelpType = htKeyword
  HelpKeyword = '008'
  ActiveControl = dbednom_cidade
  Caption = 'Cidade'
  ClientHeight = 142
  ClientWidth = 451
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 451
    Height = 106
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 42
      Height = 21
      AutoSize = False
      Caption = 'Cidade'
      FocusControl = dbedcod_cidade
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 33
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'Nome'
      FocusControl = dbednom_cidade
      Layout = tlBottom
    end
    object Label3: TLabel [2]
      Left = 10
      Top = 56
      Width = 141
      Height = 21
      AutoSize = False
      Caption = 'Unidade da federa'#231#227'o'
      FocusControl = dblklkDenUnidadeFederativa
      Layout = tlBottom
    end
    object Label11: TLabel [3]
      Left = 10
      Top = 81
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 394
      TabOrder = 4
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_cidade: TDBEdit
      Left = 154
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_cidade'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object dbednom_cidade: TDBEdit
      Left = 154
      Top = 33
      Width = 269
      Height = 22
      DataField = 'nom_cidade'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object dblklkDenUnidadeFederativa: TDBLookupComboBox
      Left = 205
      Top = 56
      Width = 218
      Height = 22
      DataField = 'lkDenUnidadeFederativa'
      DataSource = dsIBDataSet
      TabOrder = 3
      OnExit = dblklkDenUnidadeFederativaExit
    end
    object edtcod_unidade_federativa: TDBEdit
      Left = 154
      Top = 56
      Width = 50
      Height = 22
      DataField = 'cod_unidade_federativa'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object dbeddat_cadastro: TDBEdit
      Left = 154
      Top = 80
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 5
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 106
    Width = 451
    inherited ToolBar1: TToolBar
      Width = 451
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
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "cidade"'
      'where'
      '  "cidade"."cod_cidade" = :"OLD_cod_cidade"')
    InsertSQL.Strings = (
      'insert into "cidade"'
      
        '  ("cidade"."cod_cidade", "cidade"."cod_unidade_federativa", "ci' +
        'dade"."dat_cadastro", '
      '   "cidade"."nom_cidade")'
      'values'
      
        '  (:"cod_cidade", :"cod_unidade_federativa", :"dat_cadastro", :"' +
        'nom_cidade")')
    RefreshSQL.Strings = (
      'Select '
      '  "cidade"."cod_cidade",'
      '  "cidade"."nom_cidade",'
      '  "cidade"."cod_unidade_federativa",'
      '  "cidade"."dat_cadastro"'
      'from "cidade" '
      'where'
      '  "cidade"."cod_cidade" = :"cod_cidade"')
    SelectSQL.Strings = (
      'select *'
      'from "cidade"'
      'order by "cod_cidade"')
    ModifySQL.Strings = (
      'update "cidade"'
      'set'
      '  "cidade"."cod_cidade" = :"cod_cidade",'
      '  "cidade"."cod_unidade_federativa" = :"cod_unidade_federativa",'
      '  "cidade"."dat_cadastro" = :"dat_cadastro",'
      '  "cidade"."nom_cidade" = :"nom_cidade"'
      'where'
      '  "cidade"."cod_cidade" = :"OLD_cod_cidade"')
    object IBDataSetcod_cidade: TSmallintField
      FieldName = 'cod_cidade'
      Origin = '"cidade"."cod_cidade"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetnom_cidade: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_cidade'
      Origin = '"cidade"."nom_cidade"'
      Required = True
      Size = 50
    end
    object IBDataSetcod_unidade_federativa: TSmallintField
      DisplayLabel = 'Unidade federativa'
      FieldName = 'cod_unidade_federativa'
      Origin = '"cidade"."cod_unidade_federativa"'
      Required = True
      Visible = False
    end
    object IBDataSetlkDenUnidadeFederativa: TIBStringField
      DisplayLabel = 'Unidade federativa'
      FieldKind = fkLookup
      FieldName = 'lkDenUnidadeFederativa'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_unidade_federativa'
      LookupResultField = 'nom_unidade_federativa'
      KeyFields = 'cod_unidade_federativa'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"cidade"."dat_cadastro"'
    end
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select "cod_unidade_federativa",    '
      
        ' ("nom_unidade_federativa" || '#39' - '#39' || "sigla") "nom_unidade_fed' +
        'erativa"'
      'from "unidade_federativa"'
      'order by 2')
    object QrAuxcod_unidade_federativa: TSmallintField
      FieldName = 'cod_unidade_federativa'
      Origin = '"unidade_federativa"."cod_unidade_federativa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxnom_unidade_federativa: TIBStringField
      FieldName = 'nom_unidade_federativa'
      Origin = '"unidade_federativa"."nom_unidade_federativa"'
      Required = True
      Size = 50
    end
  end
end
