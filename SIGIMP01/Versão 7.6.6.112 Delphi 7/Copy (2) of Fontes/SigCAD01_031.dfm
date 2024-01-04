inherited fr_CadVendedor: Tfr_CadVendedor
  Left = 459
  Top = 323
  HelpType = htKeyword
  HelpKeyword = '031'
  ActiveControl = dbedcod_vendedor
  Caption = 'Vendedor'
  ClientHeight = 345
  ClientWidth = 437
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 437
    Height = 309
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 56
      Height = 21
      AutoSize = False
      Caption = 'Vendedor'
      FocusControl = dbedcod_vendedor
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 33
      Width = 121
      Height = 21
      AutoSize = False
      Caption = 'Raz'#227'o social/Nome'
      FocusControl = dbednom_vendedor
      Layout = tlBottom
    end
    object Label6: TLabel [2]
      Left = 10
      Top = 56
      Width = 21
      Height = 21
      AutoSize = False
      Caption = 'Rua'
      FocusControl = dbedrua
      Layout = tlBottom
    end
    object Label7: TLabel [3]
      Left = 10
      Top = 79
      Width = 77
      Height = 21
      AutoSize = False
      Caption = 'Complemento'
      FocusControl = dbedcompl
      Layout = tlBottom
    end
    object Label8: TLabel [4]
      Left = 304
      Top = 79
      Width = 42
      Height = 21
      AutoSize = False
      Caption = 'N'#250'mero'
      FocusControl = dbednumero
      Layout = tlBottom
    end
    object Label9: TLabel [5]
      Left = 10
      Top = 102
      Width = 42
      Height = 21
      AutoSize = False
      Caption = 'Bairro'
      FocusControl = dbedbairro
      Layout = tlBottom
    end
    object Label10: TLabel [6]
      Left = 304
      Top = 102
      Width = 21
      Height = 21
      AutoSize = False
      Caption = 'CEP'
      FocusControl = dbedcep
      Layout = tlBottom
    end
    object Label12: TLabel [7]
      Left = 10
      Top = 126
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'Fone'
      FocusControl = dbednum_fone
      Layout = tlBottom
    end
    object Label13: TLabel [8]
      Left = 10
      Top = 150
      Width = 49
      Height = 14
      Caption = 'Celular'
      FocusControl = dbednum_fax
      Layout = tlBottom
    end
    object Label19: TLabel [9]
      Left = 10
      Top = 174
      Width = 42
      Height = 21
      AutoSize = False
      Caption = 'Cidade'
      FocusControl = dblklkNomCidade
      Layout = tlBottom
    end
    object Label20: TLabel [10]
      Left = 10
      Top = 199
      Width = 70
      Height = 14
      Caption = 'Observa'#231#227'o'
      Layout = tlBottom
    end
    object Label18: TLabel [11]
      Left = 10
      Top = 281
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 380
      TabOrder = 13
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_vendedor: TDBEdit
      Left = 131
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      DataField = 'cod_vendedor'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
    object dbednom_vendedor: TDBEdit
      Left = 131
      Top = 33
      Width = 300
      Height = 22
      DataField = 'nom_vendedor'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object dbedrua: TDBEdit
      Left = 131
      Top = 56
      Width = 300
      Height = 22
      DataField = 'rua'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object dbedcompl: TDBEdit
      Left = 131
      Top = 79
      Width = 150
      Height = 22
      DataField = 'compl'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
    object dbednumero: TDBEdit
      Left = 347
      Top = 79
      Width = 84
      Height = 22
      DataField = 'numero'
      DataSource = dsIBDataSet
      TabOrder = 4
    end
    object dbedbairro: TDBEdit
      Left = 131
      Top = 102
      Width = 172
      Height = 22
      DataField = 'bairro'
      DataSource = dsIBDataSet
      TabOrder = 5
    end
    object dbedcep: TDBEdit
      Left = 347
      Top = 102
      Width = 84
      Height = 22
      DataField = 'cep'
      DataSource = dsIBDataSet
      TabOrder = 6
    end
    object dbednum_fone: TDBEdit
      Left = 131
      Top = 126
      Width = 133
      Height = 22
      DataField = 'num_fone'
      DataSource = dsIBDataSet
      TabOrder = 7
    end
    object dbednum_fax: TDBEdit
      Left = 131
      Top = 150
      Width = 133
      Height = 22
      DataField = 'num_fax'
      DataSource = dsIBDataSet
      TabOrder = 8
    end
    object dblklkNomCidade: TDBLookupComboBox
      Left = 183
      Top = 174
      Width = 248
      Height = 22
      DataField = 'lkNomCidade'
      DataSource = dsIBDataSet
      TabOrder = 10
    end
    object dbmmobservacao: TDBMemo
      Left = 131
      Top = 199
      Width = 300
      Height = 77
      DataField = 'observacao'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 11
      OnExit = dbmmobservacaoExit
    end
    object dbeddat_cadastro: TDBEdit
      Left = 131
      Top = 281
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 12
    end
    object edtcod_cidade: TDBEdit
      Left = 131
      Top = 174
      Width = 50
      Height = 22
      DataField = 'cod_cidade'
      DataSource = dsIBDataSet
      TabOrder = 9
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 309
    Width = 437
    inherited ToolBar1: TToolBar
      Width = 437
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
      'delete from "vendedor"'
      'where'
      '  "vendedor"."cod_vendedor" = :"OLD_cod_vendedor"')
    InsertSQL.Strings = (
      'insert into "vendedor"'
      
        '  ("vendedor"."bairro", "vendedor"."cep", "vendedor"."cnpj", "ve' +
        'ndedor"."cod_cidade", '
      
        '   "vendedor"."cod_vendedor", "vendedor"."compl", "vendedor"."cx' +
        '_postal", '
      
        '   "vendedor"."dat_cadastro", "vendedor"."ies_situacao", "vended' +
        'or"."insc_estadual", '
      
        '   "vendedor"."nom_vendedor", "vendedor"."num_fax", "vendedor"."' +
        'num_fone", '
      
        '   "vendedor"."numero", "vendedor"."observacao", "vendedor"."pct' +
        '_comissao", '
      '   "vendedor"."rua")'
      'values'
      
        '  (:"bairro", :"cep", :"cnpj", :"cod_cidade", :"cod_vendedor", :' +
        '"compl", '
      
        '   :"cx_postal", :"dat_cadastro", :"ies_situacao", :"insc_estadu' +
        'al", :"nom_vendedor", '
      
        '   :"num_fax", :"num_fone", :"numero", :"observacao", :"pct_comi' +
        'ssao", '
      '   :"rua")')
    RefreshSQL.Strings = (
      'Select '
      '  "vendedor"."cod_vendedor",'
      '  "vendedor"."nom_vendedor",'
      '  "vendedor"."ies_situacao",'
      '  "vendedor"."cnpj",'
      '  "vendedor"."insc_estadual",'
      '  "vendedor"."rua",'
      '  "vendedor"."compl",'
      '  "vendedor"."numero",'
      '  "vendedor"."bairro",'
      '  "vendedor"."cep",'
      '  "vendedor"."cx_postal",'
      '  "vendedor"."num_fone",'
      '  "vendedor"."num_fax",'
      '  "vendedor"."pct_comissao",'
      '  "vendedor"."cod_cidade",'
      '  "vendedor"."dat_cadastro",'
      '  "vendedor"."observacao"'
      'from "vendedor" '
      'where'
      '  "vendedor"."cod_vendedor" = :"cod_vendedor"')
    SelectSQL.Strings = (
      'select *'
      'from "vendedor"'
      'order by "cod_vendedor"')
    ModifySQL.Strings = (
      'update "vendedor"'
      'set'
      '  "vendedor"."bairro" = :"bairro",'
      '  "vendedor"."cep" = :"cep",'
      '  "vendedor"."cnpj" = :"cnpj",'
      '  "vendedor"."cod_cidade" = :"cod_cidade",'
      '  "vendedor"."cod_vendedor" = :"cod_vendedor",'
      '  "vendedor"."compl" = :"compl",'
      '  "vendedor"."cx_postal" = :"cx_postal",'
      '  "vendedor"."dat_cadastro" = :"dat_cadastro",'
      '  "vendedor"."ies_situacao" = :"ies_situacao",'
      '  "vendedor"."insc_estadual" = :"insc_estadual",'
      '  "vendedor"."nom_vendedor" = :"nom_vendedor",'
      '  "vendedor"."num_fax" = :"num_fax",'
      '  "vendedor"."num_fone" = :"num_fone",'
      '  "vendedor"."numero" = :"numero",'
      '  "vendedor"."observacao" = :"observacao",'
      '  "vendedor"."pct_comissao" = :"pct_comissao",'
      '  "vendedor"."rua" = :"rua"'
      'where'
      '  "vendedor"."cod_vendedor" = :"OLD_cod_vendedor"')
    object IBDataSetcod_vendedor: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'cod_vendedor'
      Origin = '"vendedor"."cod_vendedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetnom_vendedor: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_vendedor'
      Origin = '"vendedor"."nom_vendedor"'
      Required = True
      Size = 50
    end
    object IBDataSeties_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"vendedor"."ies_situacao"'
      Size = 1
    end
    object IBDataSetcnpj: TIBStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Origin = '"vendedor"."cnpj"'
      Size = 18
    end
    object IBDataSetinsc_estadual: TIBStringField
      DisplayLabel = 'Insc. estadual'
      FieldName = 'insc_estadual'
      Origin = '"vendedor"."insc_estadual"'
      Size = 18
    end
    object IBDataSetrua: TIBStringField
      DisplayLabel = 'Rua'
      FieldName = 'rua'
      Origin = '"vendedor"."rua"'
      Size = 75
    end
    object IBDataSetcompl: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'compl'
      Origin = '"vendedor"."compl"'
      Size = 75
    end
    object IBDataSetnumero: TSmallintField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'numero'
      Origin = '"vendedor"."numero"'
    end
    object IBDataSetbairro: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Origin = '"vendedor"."bairro"'
      Size = 30
    end
    object IBDataSetcep: TIBStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Origin = '"vendedor"."cep"'
      EditMask = '!99.999-999;0;_'
      Size = 10
    end
    object IBDataSetcx_postal: TIBStringField
      DisplayLabel = 'Cx. postal'
      FieldName = 'cx_postal'
      Origin = '"vendedor"."cx_postal"'
      Size = 5
    end
    object IBDataSetnum_fone: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'num_fone'
      Origin = '"vendedor"."num_fone"'
      Size = 18
    end
    object IBDataSetnum_fax: TIBStringField
      DisplayLabel = 'FAX'
      FieldName = 'num_fax'
      Origin = '"vendedor"."num_fax"'
      Size = 18
    end
    object IBDataSetpct_comissao: TIBBCDField
      DisplayLabel = '% comiss'#227'o'
      FieldName = 'pct_comissao'
      Origin = '"vendedor"."pct_comissao"'
      OnValidate = IBDataSetpct_comissaoValidate
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object IBDataSetcod_cidade: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'cod_cidade'
      Origin = '"vendedor"."cod_cidade"'
      Required = True
      Visible = False
    end
    object IBDataSetlkNomCidade: TIBStringField
      DisplayLabel = 'Cidade'
      FieldKind = fkLookup
      FieldName = 'lkNomCidade'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_cidade'
      LookupResultField = 'nom_cidade'
      KeyFields = 'cod_cidade'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"vendedor"."dat_cadastro"'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object IBDataSetobservacao: TIBStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      Origin = '"vendedor"."observacao"'
      Size = 255
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      
        'select a."cod_cidade", (a."nom_cidade" || '#39' - '#39' || b."sigla") "n' +
        'om_cidade"'
      'from "cidade" a'
      
        '     join "unidade_federativa" b on b."cod_unidade_federativa" =' +
        ' a."cod_unidade_federativa"'
      'order by 2')
    object QrAuxcod_cidade: TIntegerField
      FieldName = 'cod_cidade'
      Origin = '"cidade"."cod_cidade"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxnom_cidade: TIBStringField
      FieldName = 'nom_cidade'
      Origin = '"cidade"."nom_cidade"'
      Required = True
      Size = 50
    end
  end
end
