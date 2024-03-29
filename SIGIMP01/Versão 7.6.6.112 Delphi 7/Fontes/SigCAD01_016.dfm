inherited fr_CadFornecedor: Tfr_CadFornecedor
  Left = 341
  Top = 174
  HelpType = htKeyword
  HelpKeyword = '016'
  ActiveControl = dbedraz_social
  Caption = 'Fornecedor'
  ClientHeight = 539
  ClientWidth = 1017
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 1017
    Height = 502
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 70
      Height = 21
      AutoSize = False
      Caption = 'C'#243'digo'
      FocusControl = dbedcod_fornecedor
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 32
      Width = 120
      Height = 21
      AutoSize = False
      Caption = 'Raz'#227'o social/Nome'
      FocusControl = dbedraz_social
      Layout = tlBottom
    end
    object Label3: TLabel [2]
      Left = 10
      Top = 63
      Width = 91
      Height = 14
      Caption = 'Nome Reduzido'
      FocusControl = dbedraz_social_reduz
      Layout = tlBottom
    end
    object Label22: TLabel [3]
      Left = 10
      Top = 355
      Width = 427
      Height = 14
      Caption = 'Informa'#231#245'es complementares - somente para consulta nessa tela'
      Layout = tlBottom
    end
    object Label6: TLabel [4]
      Left = 638
      Top = 152
      Width = 224
      Height = 14
      Caption = 'Idioma Padr'#227'o para os documentos'
      WordWrap = True
    end
    object Label7: TLabel [5]
      Left = 634
      Top = 202
      Width = 196
      Height = 14
      Caption = 'Formata'#231#227'o C'#243'digo do Produto'
      FocusControl = dbeMascara
    end
    object Label8: TLabel [6]
      Left = 10
      Top = 78
      Width = 420
      Height = 14
      Caption = 'Informa'#231#245'es para os documentos - endere'#231'o, telefone, fax ...'
    end
    object Label4: TLabel [7]
      Left = 192
      Top = 9
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    object Label5: TLabel [8]
      Left = 634
      Top = 35
      Width = 105
      Height = 14
      Caption = 'Pa'#237's de Origem '
      FocusControl = DBEdit1
    end
    object Label9: TLabel [9]
      Left = 634
      Top = 75
      Width = 119
      Height = 14
      Caption = 'Pa'#237's de Aquisi'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label10: TLabel [10]
      Left = 634
      Top = 115
      Width = 133
      Height = 14
      Caption = 'Pa'#237's de Proced'#234'ncia'
      FocusControl = DBEdit3
    end
    object Label11: TLabel [11]
      Left = 632
      Top = 226
      Width = 133
      Height = 14
      Caption = 'Moeda de Exporta'#231#227'o'
    end
    inherited Button1: TButton
      Left = 851
      Top = 15
      Width = 159
      Hint = 'Procurar outros Fornecedores '
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Fornecedores'
      TabOrder = 13
    end
    object dbedcod_fornecedor: TDBEdit
      Left = 135
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_fornecedor'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object dbedraz_social: TDBEdit
      Left = 135
      Top = 32
      Width = 491
      Height = 22
      CharCase = ecUpperCase
      DataField = 'raz_social'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object dbedraz_social_reduz: TDBEdit
      Left = 135
      Top = 55
      Width = 393
      Height = 22
      CharCase = ecUpperCase
      DataField = 'raz_social_reduz'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
    object dbmmobservacao: TDBMemo
      Left = 10
      Top = 371
      Width = 620
      Height = 126
      DataField = 'observacao'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 634
      Top = 255
      Width = 343
      Height = 51
      Caption = 'Cadastros complementares'
      TabOrder = 12
      object BitBtn1: TBitBtn
        Left = 6
        Top = 22
        Width = 229
        Height = 21
        Action = actCad_Contato
        Caption = 'Contato de acordo com o cliente'
        TabOrder = 0
      end
      object BitBtn3: TBitBtn
        Left = 240
        Top = 22
        Width = 92
        Height = 21
        Action = actBancos
        Caption = 'Bancos'
        TabOrder = 1
      end
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 633
      Top = 163
      Width = 378
      Height = 34
      Columns = 3
      DataField = 'ies_idioma'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Portugu'#234's'
        'Ingl'#234's'
        'Espanhol')
      TabOrder = 9
      TabStop = True
      Values.Strings = (
        'P'
        'I'
        'E')
    end
    object dbeMascara: TDBEdit
      Left = 837
      Top = 200
      Width = 120
      Height = 22
      CharCase = ecUpperCase
      DataField = 'mas_cod_produto'
      DataSource = dsIBDataSet
      TabOrder = 10
      OnKeyPress = dbeMascaraKeyPress
    end
    object DBMemo1: TDBMemo
      Left = 10
      Top = 93
      Width = 615
      Height = 257
      DataField = 'endereco'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object dbeddat_cadastro: TDBEdit
      Left = 311
      Top = 9
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 634
      Top = 51
      Width = 378
      Height = 22
      CharCase = ecUpperCase
      DataField = 'pais_origem'
      DataSource = dsIBDataSet
      TabOrder = 6
    end
    object DBEdit2: TDBEdit
      Left = 634
      Top = 91
      Width = 378
      Height = 22
      CharCase = ecUpperCase
      DataField = 'pais_aquisicao'
      DataSource = dsIBDataSet
      TabOrder = 7
    end
    object DBEdit3: TDBEdit
      Left = 634
      Top = 131
      Width = 378
      Height = 22
      CharCase = ecUpperCase
      DataField = 'pais_procedencia'
      DataSource = dsIBDataSet
      TabOrder = 8
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 835
      Top = 224
      Width = 133
      Height = 21
      DataField = 'cod_moeda'
      DataSource = dsIBDataSet
      LookupField = 'cod_moeda'
      LookupDisplay = 'codigo;den_moeda'
      LookupSource = dsMoedas
      TabOrder = 11
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 502
    Width = 1017
    inherited ToolBar1: TToolBar
      Width = 1017
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
    object actCad_Contato: TAction
      Caption = 'Contato de acordo com o cliente'
      OnExecute = actCad_ContatoExecute
    end
    object actBancos: TAction
      Caption = 'Bancos'
      OnExecute = actBancosExecute
    end
  end
  inherited IBDataSet: TIBDataSet
    AfterScroll = IBDataSetAfterScroll
    BeforeDelete = IBDataSetBeforeDelete
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "fornecedor"'
      'where'
      '  "fornecedor"."cod_fornecedor" = :"OLD_cod_fornecedor"')
    InsertSQL.Strings = (
      'insert into "fornecedor"'
      
        '  ("fornecedor"."cod_fornecedor", "fornecedor"."raz_social", "fo' +
        'rnecedor"."raz_social_reduz", '
      
        '   "fornecedor"."ies_situacao", "fornecedor"."e_mail", "forneced' +
        'or"."cod_tip_fornecedor",'
      '   "fornecedor"."observacao", "fornecedor"."dat_cadastro",'
      
        '   "fornecedor"."ies_idioma", "fornecedor"."mas_cod_produto", "f' +
        'ornecedor"."endereco",'
      
        '   "fornecedor"."pais_origem", "fornecedor"."pais_aquisicao", "f' +
        'ornecedor"."pais_procedencia",'
      '   "fornecedor"."cod_moeda")'
      'values'
      
        '  (:"cod_fornecedor", :"raz_social", :"raz_social_reduz", :"ies_' +
        'situacao", '
      
        '   :"e_mail", :"cod_tip_fornecedor", :"observacao", :"dat_cadast' +
        'ro", :"ies_idioma",'
      
        '   :"mas_cod_produto", :"endereco", :"pais_origem", :"pais_aquis' +
        'icao", :"pais_procedencia",'
      '   :"cod_moeda")')
    RefreshSQL.Strings = (
      'Select *'
      'from "fornecedor" '
      'where'
      '  "fornecedor"."cod_fornecedor" = :"cod_fornecedor"')
    SelectSQL.Strings = (
      'select *'
      'from "fornecedor"'
      'where  "ies_situacao" = '#39'A'#39
      'order by "raz_social"')
    ModifySQL.Strings = (
      'update "fornecedor"'
      'set'
      '  "fornecedor"."cod_fornecedor" = :"cod_fornecedor",'
      '  "fornecedor"."raz_social" = :"raz_social",'
      '  "fornecedor"."raz_social_reduz" = :"raz_social_reduz",'
      '  "fornecedor"."ies_situacao" = :"ies_situacao",'
      '  "fornecedor"."e_mail" = :"e_mail",'
      '  "fornecedor"."observacao" = :"observacao",'
      '  "fornecedor"."dat_cadastro" = :"dat_cadastro",'
      '  "fornecedor"."ies_idioma" = :"ies_idioma", '
      '  "fornecedor"."mas_cod_produto" = :"mas_cod_produto",'
      '  "fornecedor"."endereco" = :"endereco",'
      '  "fornecedor"."pais_origem" = :"pais_origem",'
      '  "fornecedor"."pais_aquisicao" = :"pais_aquisicao",'
      '  "fornecedor"."pais_procedencia" = :"pais_procedencia",'
      '  "fornecedor"."cod_moeda" = :"cod_moeda"'
      'where'
      '  "fornecedor"."cod_fornecedor" = :"OLD_cod_fornecedor"')
    object IBDataSetcod_fornecedor: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetraz_social: TIBStringField
      DisplayLabel = 'Raz'#227'o social\Nome'
      DisplayWidth = 100
      FieldName = 'raz_social'
      Origin = '"fornecedor"."raz_social"'
      Required = True
      Size = 100
    end
    object IBDataSetraz_social_reduz: TIBStringField
      DisplayLabel = 'Reduzida'
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object IBDataSeties_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"fornecedor"."ies_situacao"'
      Required = True
      Size = 1
    end
    object IBDataSetendereco: TMemoField
      FieldName = 'endereco'
      Origin = '"fornecedor"."endereco"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetobservacao: TIBStringField
      DisplayLabel = 'Oberva'#231#227'o'
      FieldName = 'observacao'
      Origin = '"fornecedor"."observacao"'
      Size = 255
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"fornecedor"."dat_cadastro"'
    end
    object IBDataSeties_idioma: TIBStringField
      DisplayLabel = 'Idioma Padr'#227'o'
      FieldName = 'ies_idioma'
      Origin = '"fornecedor"."ies_idioma"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetmas_cod_produto: TIBStringField
      FieldName = 'mas_cod_produto'
      Origin = '"fornecedor"."mas_cod_produto"'
    end
    object IBDataSetcod_tip_fornecedor: TSmallintField
      FieldName = 'cod_tip_fornecedor'
      Origin = '"fornecedor"."cod_tip_fornecedor"'
      Required = True
    end
    object IBDataSetpais_origem: TIBStringField
      DisplayLabel = 'Pa'#237's de Origem '
      FieldName = 'pais_origem'
      Origin = '"fornecedor"."pais_origem"'
      Size = 50
    end
    object IBDataSetpais_aquisicao: TIBStringField
      DisplayLabel = 'Pa'#237's de Aquisi'#231#227'o'
      FieldName = 'pais_aquisicao'
      Origin = '"fornecedor"."pais_aquisicao"'
      Size = 50
    end
    object IBDataSetpais_procedencia: TIBStringField
      DisplayLabel = 'Pa'#237's de Proced'#234'ncia'
      FieldName = 'pais_procedencia'
      Origin = '"fornecedor"."pais_procedencia"'
      Size = 50
    end
    object IBDataSetcod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"fornecedor"."cod_moeda"'
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 77
  end
  inherited QrAux: TIBQuery
    object QrAuxcod_contato: TSmallintField
      FieldName = 'cod_contato'
      Origin = '"contato"."cod_contato"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxnom_contato: TIBStringField
      FieldName = 'nom_contato'
      Origin = '"contato"."nom_contato"'
      Required = True
      Size = 50
    end
  end
  object Moedas: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_moeda", "codigo", "den_moeda"'
      'from "moeda"'
      'order by "den_moeda"')
    Left = 328
    Top = 112
    object Moedascod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"moeda"."cod_moeda"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Moedascodigo: TIBStringField
      FieldName = 'codigo'
      Origin = '"moeda"."codigo"'
      FixedChar = True
      Size = 3
    end
    object Moedasden_moeda: TIBStringField
      FieldName = 'den_moeda'
      Origin = '"moeda"."den_moeda"'
      Required = True
      Size = 75
    end
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 336
    Top = 152
  end
end
