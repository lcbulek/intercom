inherited fr_CadFornecedor_Transportadora: Tfr_CadFornecedor_Transportadora
  Left = 580
  Top = 267
  HelpType = htKeyword
  HelpKeyword = '042'
  ActiveControl = edtcod_transportadora
  Caption = 'Fornecedor - Transportadora'
  ClientHeight = 145
  ClientWidth = 464
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 464
    Height = 109
    object dbtxcod_fornecedor: TDBText [0]
      Left = 10
      Top = 10
      Width = 50
      Height = 17
      Alignment = taRightJustify
      Color = clInfoBk
      DataField = 'cod_fornecedor'
      DataSource = fr_CadFornecedor.dsIBDataSet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbtxraz_social: TDBText [1]
      Left = 65
      Top = 10
      Width = 343
      Height = 17
      Color = clInfoBk
      DataField = 'raz_social'
      DataSource = fr_CadFornecedor.dsIBDataSet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel [2]
      Left = 10
      Top = 81
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    object Label1: TLabel [3]
      Left = 10
      Top = 31
      Width = 119
      Height = 21
      AutoSize = False
      Caption = 'Transportadora'
      FocusControl = lkpNom_Transportadora
      Layout = tlBottom
    end
    object Label2: TLabel [4]
      Left = 10
      Top = 57
      Width = 56
      Height = 21
      AutoSize = False
      Caption = 'CNPJ\CPF'
      FocusControl = edtcnpj
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 407
      TabOrder = 4
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbeddat_cadastro: TDBEdit
      Left = 124
      Top = 80
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 3
    end
    object lkpNom_Transportadora: TDBLookupComboBox
      Left = 176
      Top = 31
      Width = 281
      Height = 22
      DataField = 'lkpNom_Transportadora'
      DataSource = dsIBDataSet
      TabOrder = 1
      OnExit = lkpNom_TransportadoraExit
    end
    object edtcnpj: TDBEdit
      Left = 124
      Top = 57
      Width = 150
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cnpj'
      DataSource = dtsAux
      ReadOnly = True
      TabOrder = 2
    end
    object edtcod_transportadora: TDBEdit
      Left = 124
      Top = 31
      Width = 50
      Height = 22
      DataField = 'cod_transportadora'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 109
    Width = 464
    inherited ToolBar1: TToolBar
      Width = 464
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
      'delete from "fornecedor_transportadora"'
      'where'
      
        '  "fornecedor_transportadora"."cod_fornecedor" = :"OLD_cod_forne' +
        'cedor" and'
      
        '  "fornecedor_transportadora"."cod_transportadora" = :"OLD_cod_t' +
        'ransportadora"')
    InsertSQL.Strings = (
      'insert into "fornecedor_transportadora"'
      
        '  ("fornecedor_transportadora"."cod_fornecedor", "fornecedor_tra' +
        'nsportadora"."cod_transportadora", '
      '   "fornecedor_transportadora"."dat_cadastro")'
      'values'
      '  (:"cod_fornecedor", :"cod_transportadora", :"dat_cadastro")')
    RefreshSQL.Strings = (
      'Select '
      '  "fornecedor_transportadora"."cod_fornecedor",'
      '  "fornecedor_transportadora"."cod_transportadora",'
      '  "fornecedor_transportadora"."dat_cadastro"'
      'from "fornecedor_transportadora" '
      'where'
      
        '  "fornecedor_transportadora"."cod_fornecedor" = :"cod_fornecedo' +
        'r" and'
      
        '  "fornecedor_transportadora"."cod_transportadora" = :"cod_trans' +
        'portadora"')
    SelectSQL.Strings = (
      'select *'
      'from "fornecedor_transportadora" '
      'where'
      '    "cod_fornecedor" = :cod_fornecedor'
      'order by "cod_transportadora"')
    ModifySQL.Strings = (
      'update "fornecedor_transportadora"'
      'set'
      
        '  "fornecedor_transportadora"."cod_fornecedor" = :"cod_fornecedo' +
        'r",'
      
        '  "fornecedor_transportadora"."cod_transportadora" = :"cod_trans' +
        'portadora",'
      '  "fornecedor_transportadora"."dat_cadastro" = :"dat_cadastro"'
      'where'
      
        '  "fornecedor_transportadora"."cod_fornecedor" = :"OLD_cod_forne' +
        'cedor" and'
      
        '  "fornecedor_transportadora"."cod_transportadora" = :"OLD_cod_t' +
        'ransportadora"')
    object IBDataSetcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor_transportadora"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_transportadora: TSmallintField
      DisplayLabel = 'Transportadora'
      FieldName = 'cod_transportadora'
      Origin = '"fornecedor_transportadora"."cod_transportadora"'
      Required = True
      OnValidate = IBDataSetcod_transportadoraValidate
    end
    object IBDataSetlkpNom_Transportadora: TIBStringField
      DisplayLabel = 'Raz'#227'o social\Nome'
      FieldKind = fkLookup
      FieldName = 'lkpNom_Transportadora'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_transportadora'
      LookupResultField = 'nom_transportadora'
      KeyFields = 'cod_transportadora'
      LookupCache = True
      Size = 75
      Lookup = True
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"fornecedor_transportadora"."dat_cadastro"'
    end
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select a."cod_transportadora", a."nom_transportadora", a."cnpj",'
      '       a."ies_situacao"'
      'from "transportadora" a'
      'order by "nom_transportadora"')
    object QrAuxcod_transportadora: TSmallintField
      FieldName = 'cod_transportadora'
      Origin = '"transportadora"."cod_transportadora"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxnom_transportadora: TIBStringField
      FieldName = 'nom_transportadora'
      Origin = '"transportadora"."nom_transportadora"'
      Required = True
      Size = 50
    end
    object QrAuxcnpj: TIBStringField
      DisplayLabel = 'CNPJ\CPF'
      FieldName = 'cnpj'
      Origin = '"transportadora"."cnpj"'
      OnGetText = QrAuxcnpjGetText
      Size = 18
    end
    object QrAuxies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"transportadora"."ies_situacao"'
      Size = 1
    end
  end
  object dtsAux: TDataSource
    AutoEdit = False
    DataSet = QrAux
    Left = 385
    Top = 55
  end
end
