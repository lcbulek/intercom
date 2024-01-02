inherited fr_Cad_Traducoes: Tfr_Cad_Traducoes
  Left = 398
  Top = 226
  HelpType = htKeyword
  HelpKeyword = '047'
  ActiveControl = dlcIdioma
  Caption = 'Tradu'#231#245'es - SIGCAD01_047'
  ClientHeight = 289
  ClientWidth = 536
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 536
    Height = 253
    inherited pnlF1: TPanel
      Left = 479
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 532
      Height = 63
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 17
        Width = 42
        Height = 14
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 8
        Top = 41
        Width = 63
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object edtCodigo: TEdit
        Left = 73
        Top = 9
        Width = 88
        Height = 22
        TabStop = False
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 0
      end
      object edtDescricao: TEdit
        Left = 73
        Top = 33
        Width = 450
        Height = 22
        TabStop = False
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
      end
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 129
      Width = 532
      Height = 122
      Align = alClient
      DataSource = dsIBDataSet
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Courier New'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'lkIdioma'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'den_trad'
          Width = 430
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 65
      Width = 532
      Height = 64
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 3
      object Label3: TLabel
        Left = 8
        Top = 13
        Width = 42
        Height = 14
        Caption = 'Idioma'
        FocusControl = dlcIdioma
      end
      object Label4: TLabel
        Left = 8
        Top = 35
        Width = 63
        Height = 14
        Caption = 'Descri'#231#227'o'
        FocusControl = dbdDescricao
      end
      object dlcIdioma: TDBLookupComboBox
        Left = 72
        Top = 8
        Width = 105
        Height = 22
        DataField = 'lkIdioma'
        DataSource = dsIBDataSet
        TabOrder = 0
      end
      object dbdDescricao: TDBEdit
        Left = 72
        Top = 32
        Width = 450
        Height = 22
        DataField = 'den_trad'
        DataSource = dsIBDataSet
        TabOrder = 1
      end
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 253
    Width = 536
    inherited ToolBar1: TToolBar
      Width = 536
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
    BeforeInsert = IBDataSetBeforeInsert
    BeforePost = IBDataSetBeforePost
    DeleteSQL.Strings = (
      'delete from "tradutor_item"'
      'where'
      '  "tradutor_item"."cod_trad" = :"OLD_cod_trad" and'
      '  "tradutor_item"."cod_idioma" = :"OLD_cod_idioma"')
    InsertSQL.Strings = (
      'insert into "tradutor_item"'
      
        '  ("tradutor_item"."cod_trad", "tradutor_item"."cod_idioma", "tr' +
        'adutor_item"."den_trad")'
      'values'
      '  (:"cod_trad", :"cod_idioma", :"den_trad")')
    RefreshSQL.Strings = (
      'Select '
      '  "tradutor_item"."cod_trad",'
      '  "tradutor_item"."cod_idioma",'
      '  "tradutor_item"."den_trad"'
      'from "tradutor_item" '
      'where'
      '  "tradutor_item"."cod_trad" = :"cod_trad" and'
      '  "tradutor_item"."cod_idioma" = :"cod_idioma"')
    SelectSQL.Strings = (
      'select * from "tradutor_item"'
      'where "cod_trad" = :cod_trad'
      '')
    ModifySQL.Strings = (
      'update "tradutor_item"'
      'set'
      '  "tradutor_item"."cod_trad" = :"cod_trad",'
      '  "tradutor_item"."cod_idioma" = :"cod_idioma",'
      '  "tradutor_item"."den_trad" = :"den_trad"'
      'where'
      '  "tradutor_item"."cod_trad" = :"OLD_cod_trad" and'
      '  "tradutor_item"."cod_idioma" = :"OLD_cod_idioma"')
    object IBDataSetcod_trad: TIntegerField
      FieldName = 'cod_trad'
      Origin = '"tradutor_item"."cod_trad"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetcod_idioma: TIntegerField
      DisplayLabel = 'Idioma'
      FieldName = 'cod_idioma'
      Origin = '"tradutor_item"."cod_idioma"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_trad: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_trad'
      Origin = '"tradutor_item"."den_trad"'
      Size = 70
    end
    object IBDataSetlkIdioma: TStringField
      DisplayLabel = 'Idioma'
      FieldKind = fkLookup
      FieldName = 'lkIdioma'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_idioma'
      LookupResultField = 'den_idioma'
      KeyFields = 'cod_idioma'
      Size = 30
      Lookup = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select * from "idiomas"')
    object QrAuxcod_idioma: TSmallintField
      FieldName = 'cod_idioma'
      Origin = '"idiomas"."cod_idioma"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxden_idioma: TIBStringField
      FieldName = 'den_idioma'
      Origin = '"idiomas"."den_idioma"'
      Size = 30
    end
  end
  object tradutor_mestre: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from "tradutor_mestre"'
      'where'
      '  "tradutor_mestre"."cod_trad" = :"OLD_cod_trad"')
    InsertSQL.Strings = (
      'insert into "tradutor_mestre"'
      '  ("tradutor_mestre"."cod_trad", "tradutor_mestre"."tabela", '
      '"tradutor_mestre"."campo", '
      '   "tradutor_mestre"."chave1", "tradutor_mestre"."chave2", '
      '"tradutor_mestre"."chave3", '
      '   "tradutor_mestre"."chave4", "tradutor_mestre"."chave5")'
      'values'
      
        '  (:"cod_trad", :"tabela", :"campo", :"chave1", :"chave2", :"cha' +
        've3", :"chave4", '
      '   :"chave5")')
    RefreshSQL.Strings = (
      'Select '
      '  "tradutor_mestre"."cod_trad",'
      '  "tradutor_mestre"."tabela",'
      '  "tradutor_mestre"."campo",'
      '  "tradutor_mestre"."chave1",'
      '  "tradutor_mestre"."chave2",'
      '  "tradutor_mestre"."chave3",'
      '  "tradutor_mestre"."chave4",'
      '  "tradutor_mestre"."chave5"'
      'from "tradutor_mestre" '
      'where'
      '  "tradutor_mestre"."cod_trad" = :"cod_trad"')
    SelectSQL.Strings = (
      'select * from "tradutor_mestre"')
    ModifySQL.Strings = (
      'update "tradutor_mestre"'
      'set'
      '  "tradutor_mestre"."cod_trad" = :"cod_trad",'
      '  "tradutor_mestre"."tabela" = :"tabela",'
      '  "tradutor_mestre"."campo" = :"campo",'
      '  "tradutor_mestre"."chave1" = :"chave1",'
      '  "tradutor_mestre"."chave2" = :"chave2",'
      '  "tradutor_mestre"."chave3" = :"chave3",'
      '  "tradutor_mestre"."chave4" = :"chave4",'
      '  "tradutor_mestre"."chave5" = :"chave5"'
      'where'
      '  "tradutor_mestre"."cod_trad" = :"OLD_cod_trad"')
    Left = 336
    Top = 104
    object tradutor_mestrecod_trad: TIntegerField
      FieldName = 'cod_trad'
      Origin = '"tradutor_mestre"."cod_trad"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tradutor_mestretabela: TIBStringField
      FieldName = 'tabela'
      Origin = '"tradutor_mestre"."tabela"'
      FixedChar = True
    end
    object tradutor_mestrecampo: TIBStringField
      FieldName = 'campo'
      Origin = '"tradutor_mestre"."campo"'
      FixedChar = True
    end
    object tradutor_mestrechave1: TIBStringField
      FieldName = 'chave1'
      Origin = '"tradutor_mestre"."chave1"'
      FixedChar = True
      Size = 10
    end
    object tradutor_mestrechave2: TIBStringField
      FieldName = 'chave2'
      Origin = '"tradutor_mestre"."chave2"'
      FixedChar = True
      Size = 10
    end
    object tradutor_mestrechave3: TIBStringField
      FieldName = 'chave3'
      Origin = '"tradutor_mestre"."chave3"'
      FixedChar = True
      Size = 10
    end
    object tradutor_mestrechave4: TIBStringField
      FieldName = 'chave4'
      Origin = '"tradutor_mestre"."chave4"'
      FixedChar = True
      Size = 10
    end
    object tradutor_mestrechave5: TIBStringField
      FieldName = 'chave5'
      Origin = '"tradutor_mestre"."chave5"'
      FixedChar = True
      Size = 10
    end
  end
  object prox_cod_trad: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select SIG_NVL(MAX(t."cod_trad"))+1 "cod_trad"'
      'from "tradutor_mestre" t')
    Left = 296
    Top = 104
    object prox_cod_tradcod_trad: TFloatField
      FieldName = 'cod_trad'
    end
  end
end
