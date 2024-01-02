inherited fr_CadComponentes: Tfr_CadComponentes
  Left = 431
  Top = 339
  HelpType = htKeyword
  HelpKeyword = '077'
  Caption = 'Componentes da embalagem'
  ClientHeight = 172
  ClientWidth = 433
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 433
    Height = 136
    object Label1: TLabel [0]
      Left = 5
      Top = 8
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 5
      Top = 88
      Width = 77
      Height = 14
      Caption = 'Denomina'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [2]
      Left = 5
      Top = 48
      Width = 35
      Height = 14
      Caption = 'Grupo'
      FocusControl = DBLookupComboBox1
    end
    inherited pnlF1: TPanel
      Left = 376
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object DBEdit1: TDBEdit
      Left = 5
      Top = 24
      Width = 40
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_componente'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 5
      Top = 104
      Width = 417
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_componente'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 5
      Top = 64
      Width = 417
      Height = 22
      DataField = 'lkGrupo'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 136
    Width = 433
    inherited ToolBar1: TToolBar
      Width = 433
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
    BeforePost = IBDataSetBeforePost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem_componente"'
      'where'
      
        '  "embalagem_componente"."cod_componente" = :"OLD_cod_componente' +
        '"')
    InsertSQL.Strings = (
      'insert into "embalagem_componente"'
      
        '  ("embalagem_componente"."cod_componente", "embalagem_component' +
        'e"."den_componente", '
      '   "embalagem_componente"."cod_gru_embalagem")'
      'values'
      '  (:"cod_componente", :"den_componente", :"cod_gru_embalagem")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem_componente"."cod_componente",'
      '  "embalagem_componente"."den_componente",'
      '  "embalagem_componente"."cod_gru_embalagem"'
      'from "embalagem_componente" '
      'where'
      '  "embalagem_componente"."cod_componente" = :"cod_componente"')
    SelectSQL.Strings = (
      'select * from "embalagem_componente"')
    ModifySQL.Strings = (
      'update "embalagem_componente"'
      'set'
      '  "embalagem_componente"."cod_componente" = :"cod_componente",'
      '  "embalagem_componente"."den_componente" = :"den_componente",'
      
        '  "embalagem_componente"."cod_gru_embalagem" = :"cod_gru_embalag' +
        'em"'
      'where'
      
        '  "embalagem_componente"."cod_componente" = :"OLD_cod_componente' +
        '"')
    object IBDataSetcod_componente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_componente'
      Origin = '"embalagem_componente"."cod_componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_componente: TIBStringField
      DisplayLabel = 'Componente'
      FieldName = 'den_componente'
      Origin = '"embalagem_componente"."den_componente"'
      Size = 100
    end
    object IBDataSetcod_gru_embalagem: TIntegerField
      DisplayLabel = 'C'#243'digo grupo'
      FieldName = 'cod_gru_embalagem'
      Origin = '"embalagem_componente"."cod_gru_embalagem"'
      Visible = False
    end
    object IBDataSetlkGrupo: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'lkGrupo'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_gru_embalagem'
      LookupResultField = 'den_gru_embalagem'
      KeyFields = 'cod_gru_embalagem'
      Size = 75
      Lookup = True
    end
  end
  inherited QrAux: TIBQuery
    Active = True
    SQL.Strings = (
      'select * from "embalagem_grupo"')
    object QrAuxcod_gru_embalagem: TIntegerField
      FieldName = 'cod_gru_embalagem'
      Origin = '"embalagem_grupo"."cod_gru_embalagem"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxden_gru_embalagem: TIBStringField
      FieldName = 'den_gru_embalagem'
      Origin = '"embalagem_grupo"."den_gru_embalagem"'
      Size = 75
    end
  end
end
