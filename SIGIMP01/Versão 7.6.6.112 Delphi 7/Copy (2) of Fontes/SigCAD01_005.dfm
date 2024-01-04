inherited fr_CadContaCorrente: Tfr_CadContaCorrente
  Left = 406
  Top = 321
  HelpType = htKeyword
  HelpKeyword = '005'
  ActiveControl = dbednum_agencia
  Caption = 'Conta corrente'
  ClientHeight = 313
  ClientWidth = 566
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 566
    Height = 277
    object Label1: TLabel [0]
      Left = 10
      Top = 55
      Width = 49
      Height = 14
      Caption = 'Ag'#234'ncia'
      FocusControl = dbednum_agencia
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 80
      Width = 105
      Height = 14
      Caption = 'N'#250'mero da Conta'
      FocusControl = dbednum_contacc
      Layout = tlBottom
    end
    object Label6: TLabel [2]
      Left = 10
      Top = 104
      Width = 63
      Height = 14
      Caption = 'Descri'#231#227'o'
      FocusControl = dbedden_contacc
      Layout = tlBottom
    end
    object Label7: TLabel [3]
      Left = 10
      Top = 152
      Width = 28
      Height = 14
      Caption = 'Fone'
      FocusControl = dbednum_fone
      Layout = tlBottom
    end
    object Label8: TLabel [4]
      Left = 10
      Top = 177
      Width = 49
      Height = 14
      Caption = 'Contato'
      FocusControl = dbednom_gerente
      Layout = tlBottom
    end
    object Label12: TLabel [5]
      Left = 10
      Top = 250
      Width = 112
      Height = 14
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    object Label13: TLabel [6]
      Left = 10
      Top = 200
      Width = 42
      Height = 14
      Caption = 'E-mail'
      FocusControl = dbede_mail
      Layout = tlBottom
    end
    object Label14: TLabel [7]
      Left = 10
      Top = 224
      Width = 35
      Height = 14
      Caption = 'http:'
      FocusControl = dbedhome_page
      Layout = tlBottom
    end
    object Label3: TLabel [8]
      Left = 10
      Top = 30
      Width = 35
      Height = 14
      Caption = 'Banco'
      FocusControl = dblklkNomBanco
      Layout = tlBottom
    end
    object Label4: TLabel [9]
      Left = 10
      Top = 131
      Width = 70
      Height = 14
      Caption = 'Fornecedor'
      FocusControl = DBLookupComboBox1
    end
    object Label5: TLabel [10]
      Left = 10
      Top = 8
      Width = 63
      Height = 14
      Caption = 'Sequencia'
      FocusControl = DBEdit1
    end
    inherited pnlF1: TPanel
      Left = 509
      TabOrder = 14
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbednum_agencia: TDBEdit
      Left = 124
      Top = 55
      Width = 75
      Height = 22
      DataField = 'num_agencia'
      DataSource = dsIBDataSet
      TabOrder = 5
    end
    object dbednum_contacc: TDBEdit
      Left = 124
      Top = 80
      Width = 301
      Height = 22
      CharCase = ecUpperCase
      DataField = 'num_contacc'
      DataSource = dsIBDataSet
      MaxLength = 50
      TabOrder = 6
    end
    object dbedden_contacc: TDBEdit
      Left = 124
      Top = 104
      Width = 400
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_contacc'
      DataSource = dsIBDataSet
      TabOrder = 7
    end
    object dbednum_fone: TDBEdit
      Left = 124
      Top = 152
      Width = 150
      Height = 22
      CharCase = ecUpperCase
      DataField = 'num_fone'
      DataSource = dsIBDataSet
      TabOrder = 9
    end
    object dbednom_gerente: TDBEdit
      Left = 124
      Top = 177
      Width = 400
      Height = 22
      DataField = 'nom_gerente'
      DataSource = dsIBDataSet
      TabOrder = 10
    end
    object dbeddat_cadastro: TDBEdit
      Left = 124
      Top = 250
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 13
    end
    object dbede_mail: TDBEdit
      Left = 124
      Top = 200
      Width = 400
      Height = 22
      DataField = 'e_mail'
      DataSource = dsIBDataSet
      TabOrder = 11
    end
    object dbedhome_page: TDBEdit
      Left = 124
      Top = 224
      Width = 400
      Height = 22
      DataField = 'home_page'
      DataSource = dsIBDataSet
      TabOrder = 12
    end
    object dbckies_situacao: TDBCheckBox
      Left = 178
      Top = 9
      Width = 63
      Height = 17
      TabStop = False
      Caption = 'Ativa'
      DataField = 'ies_situacao'
      DataSource = dsIBDataSet
      TabOrder = 1
      ValueChecked = 'A'
      ValueUnchecked = 'I'
    end
    object dblklkNomBanco: TDBLookupComboBox
      Left = 175
      Top = 30
      Width = 386
      Height = 22
      DataField = 'lkNomBanco'
      DataSource = dsIBDataSet
      DropDownRows = 15
      DropDownWidth = 350
      TabOrder = 4
    end
    object edtcod_banco: TDBEdit
      Left = 124
      Top = 30
      Width = 50
      Height = 22
      DataField = 'cod_banco'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 124
      Top = 128
      Width = 400
      Height = 22
      DataField = 'lkFornecedor'
      DataSource = dsIBDataSet
      DropDownWidth = 350
      TabOrder = 8
    end
    object DBEdit1: TDBEdit
      Left = 124
      Top = 6
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'sequencia'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 258
      Top = 9
      Width = 66
      Height = 17
      Caption = 'Default'
      DataField = 'ies_default'
      DataSource = dsIBDataSet
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 277
    Width = 566
    inherited ToolBar1: TToolBar
      Width = 566
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
    Top = 88
  end
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforeInsert = IBDataSetBeforeInsert
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "conta_corrente"'
      'where'
      '  "conta_corrente"."sequencia" = :"OLD_sequencia"')
    InsertSQL.Strings = (
      'insert into "conta_corrente"'
      
        '  ("conta_corrente"."sequencia", "conta_corrente"."cod_banco", "' +
        'conta_corrente"."num_agencia", '
      
        '   "conta_corrente"."num_contacc", "conta_corrente"."ies_situaca' +
        'o", "conta_corrente"."den_contacc", '
      
        '   "conta_corrente"."num_fone", "conta_corrente"."nom_gerente", ' +
        '"conta_corrente"."vlr_inicial", '
      
        '   "conta_corrente"."vlr_limite", "conta_corrente"."dat_abertura' +
        '", "conta_corrente"."dat_cadastro", '
      
        '   "conta_corrente"."e_mail", "conta_corrente"."home_page", "con' +
        'ta_corrente"."cod_fornecedor", '
      '   "conta_corrente"."ies_default")'
      'values'
      
        '  (:"sequencia", :"cod_banco", :"num_agencia", :"num_contacc", :' +
        '"ies_situacao", '
      
        '   :"den_contacc", :"num_fone", :"nom_gerente", :"vlr_inicial", ' +
        ':"vlr_limite", '
      
        '   :"dat_abertura", :"dat_cadastro", :"e_mail", :"home_page", :"' +
        'cod_fornecedor", '
      '   :"ies_default")')
    RefreshSQL.Strings = (
      'Select '
      '  "conta_corrente"."sequencia",'
      '  "conta_corrente"."cod_banco",'
      '  "conta_corrente"."num_agencia",'
      '  "conta_corrente"."num_contacc",'
      '  "conta_corrente"."ies_situacao",'
      '  "conta_corrente"."den_contacc",'
      '  "conta_corrente"."num_fone",'
      '  "conta_corrente"."nom_gerente",'
      '  "conta_corrente"."vlr_inicial",'
      '  "conta_corrente"."vlr_limite",'
      '  "conta_corrente"."dat_abertura",'
      '  "conta_corrente"."dat_cadastro",'
      '  "conta_corrente"."e_mail",'
      '  "conta_corrente"."home_page",'
      '  "conta_corrente"."cod_fornecedor",'
      '  "conta_corrente"."ies_default"'
      'from "conta_corrente" '
      'where'
      '  "conta_corrente"."sequencia" = :"sequencia"')
    SelectSQL.Strings = (
      'select *'
      'from "conta_corrente"'
      'order by "sequencia"')
    ModifySQL.Strings = (
      'update "conta_corrente"'
      'set'
      '  "conta_corrente"."sequencia" = :"sequencia",'
      '  "conta_corrente"."cod_banco" = :"cod_banco",'
      '  "conta_corrente"."num_agencia" = :"num_agencia",'
      '  "conta_corrente"."num_contacc" = :"num_contacc",'
      '  "conta_corrente"."ies_situacao" = :"ies_situacao",'
      '  "conta_corrente"."den_contacc" = :"den_contacc",'
      '  "conta_corrente"."num_fone" = :"num_fone",'
      '  "conta_corrente"."nom_gerente" = :"nom_gerente",'
      '  "conta_corrente"."vlr_inicial" = :"vlr_inicial",'
      '  "conta_corrente"."vlr_limite" = :"vlr_limite",'
      '  "conta_corrente"."dat_abertura" = :"dat_abertura",'
      '  "conta_corrente"."dat_cadastro" = :"dat_cadastro",'
      '  "conta_corrente"."e_mail" = :"e_mail",'
      '  "conta_corrente"."home_page" = :"home_page",'
      '  "conta_corrente"."cod_fornecedor" = :"cod_fornecedor",'
      '  "conta_corrente"."ies_default" = :"ies_default"'
      'where'
      '  "conta_corrente"."sequencia" = :"OLD_sequencia"')
    Top = 88
    object IBDataSetsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = '"conta_corrente"."sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetnum_agencia: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'num_agencia'
      Origin = '"conta_corrente"."num_agencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object IBDataSetcod_banco: TSmallintField
      DisplayLabel = 'Banco'
      FieldName = 'cod_banco'
      Origin = '"conta_corrente"."cod_banco"'
      Required = True
      Visible = False
    end
    object IBDataSetlkNomBanco: TIBStringField
      DisplayLabel = 'Banco'
      FieldKind = fkLookup
      FieldName = 'lkNomBanco'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_banco'
      LookupResultField = 'nom_banco'
      KeyFields = 'cod_banco'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object IBDataSetden_contacc: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_contacc'
      Origin = '"conta_corrente"."den_contacc"'
      Required = True
      Size = 75
    end
    object IBDataSeties_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"conta_corrente"."ies_situacao"'
      Size = 1
    end
    object IBDataSetnum_fone: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'num_fone'
      Origin = '"conta_corrente"."num_fone"'
      Size = 18
    end
    object IBDataSetnom_gerente: TIBStringField
      DisplayLabel = 'Gerente'
      FieldName = 'nom_gerente'
      Origin = '"conta_corrente"."nom_gerente"'
      Size = 50
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"conta_corrente"."dat_cadastro"'
      EditMask = '!99/99/0000;1;_'
    end
    object IBDataSete_mail: TIBStringField
      DisplayLabel = 'E-mail'
      FieldName = 'e_mail'
      Origin = '"conta_corrente"."e_mail"'
      Size = 255
    end
    object IBDataSethome_page: TIBStringField
      DisplayLabel = 'http:'
      FieldName = 'home_page'
      Origin = '"conta_corrente"."home_page"'
      Size = 255
    end
    object IBDataSetnum_contacc: TIBStringField
      FieldName = 'num_contacc'
      Origin = '"conta_corrente"."num_contacc"'
      Size = 50
    end
    object IBDataSetvlr_inicial: TIBBCDField
      FieldName = 'vlr_inicial'
      Origin = '"conta_corrente"."vlr_inicial"'
      Precision = 18
      Size = 2
    end
    object IBDataSetvlr_limite: TIBBCDField
      FieldName = 'vlr_limite'
      Origin = '"conta_corrente"."vlr_limite"'
      Precision = 18
      Size = 2
    end
    object IBDataSetdat_abertura: TDateField
      FieldName = 'dat_abertura'
      Origin = '"conta_corrente"."dat_abertura"'
    end
    object IBDataSetcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"conta_corrente"."cod_fornecedor"'
    end
    object IBDataSeties_default: TIBStringField
      FieldName = 'ies_default'
      Origin = '"conta_corrente"."ies_default"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetlkFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFornecedor'
      LookupDataSet = Fornecedor
      LookupKeyFields = 'cod_fornecedor'
      LookupResultField = 'raz_social'
      KeyFields = 'cod_fornecedor'
      Size = 50
      Lookup = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 328
    Top = 119
  end
  inherited QrAux: TIBQuery
    AfterOpen = QrAuxAfterOpen
    SQL.Strings = (
      'select "cod_banco", "nom_banco"'
      'from "banco"'
      'order by "nom_banco"')
    Left = 359
    Top = 88
    object QrAuxcod_banco: TSmallintField
      FieldName = 'cod_banco'
      Origin = '"banco"."cod_banco"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxnom_banco: TIBStringField
      FieldName = 'nom_banco'
      Origin = '"banco"."nom_banco"'
      Required = True
      Size = 50
    end
  end
  object Fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = FornecedorAfterOpen
    Active = True
    SQL.Strings = (
      'select "cod_fornecedor", "raz_social"'
      'from "fornecedor"'
      'order by "raz_social"')
    Left = 361
    Top = 120
    object Fornecedorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Fornecedorraz_social: TIBStringField
      FieldName = 'raz_social'
      Origin = '"fornecedor"."raz_social"'
      Size = 50
    end
  end
end
