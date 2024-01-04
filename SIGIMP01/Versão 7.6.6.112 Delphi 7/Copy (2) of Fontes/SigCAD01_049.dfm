inherited fr_CadEmbalagem: Tfr_CadEmbalagem
  Left = 106
  Top = 199
  HelpType = htKeyword
  HelpKeyword = '049'
  Caption = 'Embalagem'
  ClientHeight = 376
  ClientWidth = 556
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 556
    Height = 174
    Align = alTop
    object Label9: TLabel [0]
      Left = 8
      Top = 35
      Width = 98
      Height = 14
      Caption = 'Tipo Embalagem'
      FocusControl = dblkTipoEmbal
    end
    object Label10: TLabel [1]
      Left = 229
      Top = 141
      Width = 70
      Height = 14
      Caption = 'C'#243'digo NBM'
      FocusControl = DBEdit10
    end
    object Label8: TLabel [2]
      Left = 8
      Top = 144
      Width = 91
      Height = 14
      Caption = 'Peso Unit'#225'rio'
      FocusControl = DBEdit8
    end
    object Label1: TLabel [3]
      Left = 8
      Top = 14
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    inherited pnlF1: TPanel
      Left = 499
      TabOrder = 4
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 56
      Width = 549
      Height = 75
      Caption = 'Dimens'#245'es'
      TabOrder = 5
      object Label3: TLabel
        Left = 8
        Top = 19
        Width = 42
        Height = 14
        Caption = 'Altura'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 192
        Top = 19
        Width = 49
        Height = 14
        Caption = 'Largura'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 357
        Top = 24
        Width = 84
        Height = 14
        Caption = 'Profundidade'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 192
        Top = 48
        Width = 42
        Height = 14
        Caption = 'Volume'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 8
        Top = 48
        Width = 28
        Height = 14
        Caption = #193'rea'
        FocusControl = DBEdit7
      end
      object DBEdit3: TDBEdit
        Left = 58
        Top = 16
        Width = 85
        Height = 22
        DataField = 'altura'
        DataSource = dsIBDataSet
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 254
        Top = 16
        Width = 85
        Height = 22
        DataField = 'largura'
        DataSource = dsIBDataSet
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 447
        Top = 17
        Width = 85
        Height = 22
        DataField = 'profundidade'
        DataSource = dsIBDataSet
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 238
        Top = 41
        Width = 101
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'volume'
        DataSource = dsIBDataSet
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 58
        Top = 42
        Width = 85
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'area'
        DataSource = dsIBDataSet
        TabOrder = 3
      end
    end
    object dblkTipoEmbal: TDBLookupComboBox
      Left = 146
      Top = 32
      Width = 279
      Height = 22
      DataField = 'lkTipoEmbalagem'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
    object dbedTipoEmbal: TDBEdit
      Left = 111
      Top = 32
      Width = 32
      Height = 22
      CharCase = ecUpperCase
      DataField = 'cod_tip_embal'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 308
      Top = 137
      Width = 115
      Height = 22
      DataField = 'cod_nbm'
      DataSource = dsIBDataSet
      MaxLength = 10
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 111
      Top = 138
      Width = 85
      Height = 22
      DataField = 'peso_unitario'
      DataSource = dsIBDataSet
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 111
      Top = 6
      Width = 75
      Height = 22
      CharCase = ecUpperCase
      DataField = 'cod_produto_emb'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 187
      Top = 6
      Width = 237
      Height = 22
      DataField = 'lkDenProduto'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 340
    Width = 556
    inherited ToolBar1: TToolBar
      Width = 556
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
  object DBGrid1: TDBGrid [2]
    Left = 0
    Top = 174
    Width = 556
    Height = 166
    Align = alClient
    DataSource = ds_produto_embalagem
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cod_produto'
        Title.Caption = 'Produto'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkDenProduto'
        Title.Caption = 'Denomina'#231#227'o'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_padrao'
        Title.Caption = 'Qtd.Padr'#227'o'
        Width = 75
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'vol_padrao'
        ReadOnly = True
        Title.Caption = 'Vol.Padr'#227'o'
        Width = 95
        Visible = True
      end>
  end
  inherited IBDataSet: TIBDataSet
    OnCalcFields = IBDataSetCalcFields
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "embalagem"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto_emb" = :"OLD_cod_produto_emb"')
    InsertSQL.Strings = (
      'insert into "embalagem"'
      
        '  ("embalagem"."cod_empresa", "embalagem"."cod_produto_emb", "em' +
        'balagem"."peso_unitario", '
      
        '   "embalagem"."altura", "embalagem"."largura", "embalagem"."pro' +
        'fundidade", '
      
        '   "embalagem"."volume", "embalagem"."area", "embalagem"."cod_ti' +
        'p_embal", '
      '   "embalagem"."cod_nbm")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto_emb", :"peso_unitario", :"altur' +
        'a", :"largura", '
      
        '   :"profundidade", :"volume", :"area", :"cod_tip_embal", :"cod_' +
        'nbm")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem"."cod_empresa",'
      '  "embalagem"."cod_produto_emb",'
      '  "embalagem"."peso_unitario",'
      '  "embalagem"."altura",'
      '  "embalagem"."largura",'
      '  "embalagem"."profundidade",'
      '  "embalagem"."volume",'
      '  "embalagem"."area",'
      '  "embalagem"."cod_tip_embal",'
      '  "embalagem"."cod_nbm"'
      'from "embalagem" '
      'where'
      '  "embalagem"."cod_empresa" = :"cod_empresa" and'
      '  "embalagem"."cod_produto_emb" = :"cod_produto_emb"')
    SelectSQL.Strings = (
      'select * from "embalagem" '
      'where "cod_empresa" = :cod_empresa'
      '')
    ModifySQL.Strings = (
      'update "embalagem"'
      'set'
      '  "embalagem"."cod_empresa" = :"cod_empresa",'
      '  "embalagem"."cod_produto_emb" = :"cod_produto_emb",'
      '  "embalagem"."peso_unitario" = :"peso_unitario",'
      '  "embalagem"."altura" = :"altura",'
      '  "embalagem"."largura" = :"largura",'
      '  "embalagem"."profundidade" = :"profundidade",'
      '  "embalagem"."volume" = :"volume",'
      '  "embalagem"."area" = :"area",'
      '  "embalagem"."cod_tip_embal" = :"cod_tip_embal",'
      '  "embalagem"."cod_nbm" = :"cod_nbm"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto_emb" = :"OLD_cod_produto_emb"')
    object IBDataSetcod_empresa: TSmallintField
      DisplayLabel = 'Empresa'
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_produto_emb: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_produto_emb'
      Origin = '"embalagem"."cod_produto_emb"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object IBDataSetlkDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'lkDenProduto'
      LookupDataSet = Produtos
      LookupKeyFields = 'cod_produto'
      LookupResultField = 'den_produto'
      KeyFields = 'cod_produto_emb'
      Size = 75
      Lookup = True
    end
    object IBDataSetcod_tip_embal: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'cod_tip_embal'
      Origin = '"embalagem"."cod_tip_embal"'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object IBDataSetlkTipoEmbalagem: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'lkTipoEmbalagem'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_tip_embal'
      LookupResultField = 'den_tip_embal'
      KeyFields = 'cod_tip_embal'
      Size = 30
      Lookup = True
    end
    object IBDataSetpeso_unitario: TIBBCDField
      DisplayLabel = 'Peso Unit'#225'rio'
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
      DisplayFormat = '#,##0.0000'
      Precision = 9
      Size = 4
    end
    object IBDataSetaltura: TIBBCDField
      DisplayLabel = 'Altura'
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      DisplayFormat = '#,##0.0000'
      Precision = 9
      Size = 4
    end
    object IBDataSetlargura: TIBBCDField
      DisplayLabel = 'Largura'
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      DisplayFormat = '#,##0.0000'
      Precision = 9
      Size = 4
    end
    object IBDataSetprofundidade: TIBBCDField
      DisplayLabel = 'Profundidade'
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      DisplayFormat = '#,##0.0000'
      Precision = 9
      Size = 4
    end
    object IBDataSetvolume: TIBBCDField
      DisplayLabel = 'Volume'
      FieldKind = fkInternalCalc
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      DisplayFormat = '#,##0.0000'
      Precision = 9
      Size = 4
    end
    object IBDataSetarea: TIBBCDField
      DisplayLabel = #193'rea'
      FieldKind = fkInternalCalc
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      DisplayFormat = '#,##0.0000'
      Precision = 9
      Size = 4
    end
    object IBDataSetcod_nbm: TLargeintField
      DisplayLabel = 'C'#243'digo NBM'
      FieldName = 'cod_nbm'
      Origin = '"embalagem"."cod_nbm"'
    end
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select * from "tipo_embalagem"')
    object QrAuxcod_tip_embal: TIBStringField
      DisplayLabel = 'Tipo Embalagem'
      FieldName = 'cod_tip_embal'
      Origin = '"tipo_embalagem"."cod_tip_embal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object QrAuxden_tip_embal: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'den_tip_embal'
      Origin = '"tipo_embalagem"."den_tip_embal"'
      Size = 30
    end
    object QrAuxcod_tip_produto: TSmallintField
      DisplayLabel = 'Tipo Produto'
      FieldName = 'cod_tip_produto'
      Origin = '"tipo_embalagem"."cod_tip_produto"'
      Required = True
    end
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BeforeOpen = ProdutosBeforeOpen
    SQL.Strings = (
      'select p."cod_produto", p."den_produto"'
      'from "produto" p'
      'where p."cod_empresa" = :cod_empresa'
      ' and  exists (select t."cod_tip_produto"'
      '                from "tipo_embalagem" t'
      '               where t."cod_tip_produto" = p."cod_tip_produto")'
      'order by p."den_produto"')
    Left = 380
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object Produtoscod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object Produtosden_produto: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
  end
  object produto_embalagem: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterCancel = produto_embalagemAfterCancel
    AfterDelete = produto_embalagemAfterDelete
    AfterPost = produto_embalagemAfterPost
    BeforeDelete = produto_embalagemBeforeDelete
    BeforeEdit = produto_embalagemBeforeEdit
    BeforeInsert = produto_embalagemBeforeInsert
    OnCalcFields = produto_embalagemCalcFields
    OnNewRecord = produto_embalagemNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "produto_embalagem"'
      'where'
      '  "produto_embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "produto_embalagem"."cod_produto_emb" = :"OLD_cod_produto_emb"' +
        ' and'
      '  "produto_embalagem"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "produto_embalagem"'
      
        '  ("produto_embalagem"."cod_empresa", "produto_embalagem"."cod_p' +
        'roduto_emb", '
      
        '   "produto_embalagem"."cod_produto", "produto_embalagem"."qtd_p' +
        'adrao", '
      '   "produto_embalagem"."vol_padrao")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto_emb", :"cod_produto", :"qtd_pad' +
        'rao", :"vol_padrao")')
    RefreshSQL.Strings = (
      'Select '
      '  "produto_embalagem"."cod_empresa",'
      '  "produto_embalagem"."cod_produto_emb",'
      '  "produto_embalagem"."cod_produto",'
      '  "produto_embalagem"."qtd_padrao",'
      '  "produto_embalagem"."vol_padrao"'
      'from "produto_embalagem" '
      'where'
      '  "produto_embalagem"."cod_empresa" = :"cod_empresa" and'
      '  "produto_embalagem"."cod_produto_emb" = :"cod_produto_emb" and'
      '  "produto_embalagem"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select * from "produto_embalagem" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_produto_emb" = :cod_produto_emb')
    ModifySQL.Strings = (
      'update "produto_embalagem"'
      'set'
      '  "produto_embalagem"."cod_empresa" = :"cod_empresa",'
      '  "produto_embalagem"."cod_produto_emb" = :"cod_produto_emb",'
      '  "produto_embalagem"."cod_produto" = :"cod_produto",'
      '  "produto_embalagem"."qtd_padrao" = :"qtd_padrao",'
      '  "produto_embalagem"."vol_padrao" = :"vol_padrao"'
      'where'
      '  "produto_embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "produto_embalagem"."cod_produto_emb" = :"OLD_cod_produto_emb"' +
        ' and'
      '  "produto_embalagem"."cod_produto" = :"OLD_cod_produto"')
    DataSource = dsIBDataSet
    Left = 352
    Top = 264
    object produto_embalagemcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"produto_embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object produto_embalagemcod_produto_emb: TIBStringField
      FieldName = 'cod_produto_emb'
      Origin = '"produto_embalagem"."cod_produto_emb"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object produto_embalagemcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto_embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '>CCCCCCC;0;'
      Size = 7
    end
    object produto_embalagemqtd_padrao: TIBBCDField
      FieldName = 'qtd_padrao'
      Origin = '"produto_embalagem"."qtd_padrao"'
      Precision = 18
      Size = 3
    end
    object produto_embalagemvol_padrao: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vol_padrao'
      Origin = '"produto_embalagem"."vol_padrao"'
      DisplayFormat = '#,##0.0000'
      Precision = 9
      Size = 3
    end
    object produto_embalagemlkDenProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkDenProduto'
      LookupDataSet = produto
      LookupKeyFields = 'cod_produto'
      LookupResultField = 'den_produto'
      KeyFields = 'cod_produto'
      Size = 50
      Lookup = True
    end
  end
  object ds_produto_embalagem: TDataSource
    DataSet = produto_embalagem
    Left = 368
    Top = 280
  end
  object produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BeforeOpen = produtoBeforeOpen
    SQL.Strings = (
      'select p."cod_produto", p."den_produto"'
      'from "produto" p'
      'where p."cod_empresa" = :cod_empresa')
    Left = 424
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptInput
        Value = 0
      end>
    object produtocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object produtoden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
  end
  object embalagem: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select e."cod_produto_emb", p."den_produto", e."volume", e."area' +
        '"'
      'from "embalagem" e, "produto" p'
      'where e."cod_empresa" = :cod_empresa'
      '  and p."cod_produto" = :cod_produto'
      '  and p."cod_empresa" = e."cod_empresa"'
      '  and p."cod_produto" = e."cod_produto_emb"')
    Left = 464
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'cod_produto'
        ParamType = ptInput
        Value = ''
      end>
    object embalagemvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      Precision = 9
      Size = 4
    end
    object embalagemarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      Precision = 9
      Size = 4
    end
  end
  object VolProdutos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select SUM("vol_padrao") "vol_total"'
      'from "produto_embalagem"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto_emb" = :cod_produto_emb'
      '  and "cod_produto" <> :cod_produto')
    Left = 496
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'cod_produto_emb'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'cod_produto'
        ParamType = ptInput
        Value = ''
      end>
    object VolProdutosvol_total: TIBBCDField
      FieldName = 'vol_total'
      Precision = 18
      Size = 3
    end
  end
end
