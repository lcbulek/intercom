inherited fr_CadFilial: Tfr_CadFilial
  Left = 353
  Top = 330
  HelpType = htKeyword
  HelpKeyword = '043'
  Caption = 'Filial'
  ClientHeight = 99
  ClientWidth = 451
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 451
    Height = 63
    object Label18: TLabel [0]
      Left = 10
      Top = 35
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    object Label1: TLabel [1]
      Left = 10
      Top = 10
      Width = 42
      Height = 21
      AutoSize = False
      Caption = 'Filial'
      FocusControl = lkpNom_Filial
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 394
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbeddat_cadastro: TDBEdit
      Left = 124
      Top = 34
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object lkpNom_Filial: TDBLookupComboBox
      Left = 124
      Top = 10
      Width = 250
      Height = 22
      DataField = 'lkpNom_Filial'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 63
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
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "filial"'
      'where'
      '  "filial"."cod_filial" = :"OLD_cod_filial"')
    InsertSQL.Strings = (
      'insert into "filial"'
      
        '  ("filial"."cod_filial", "filial"."cod_matriz", "filial"."dat_c' +
        'adastro")'
      'values'
      '  (:"cod_filial", :"cod_matriz", :"dat_cadastro")')
    RefreshSQL.Strings = (
      'Select '
      '  "filial"."cod_filial",'
      '  "filial"."cod_matriz",'
      '  "filial"."dat_cadastro"'
      'from "filial" '
      'where'
      '  "filial"."cod_filial" = :"cod_filial"')
    SelectSQL.Strings = (
      'select *'
      'from "filial"'
      'where'
      '   "cod_matriz" = :cod_empresa')
    ModifySQL.Strings = (
      'update "filial"'
      'set'
      '  "filial"."cod_filial" = :"cod_filial",'
      '  "filial"."cod_matriz" = :"cod_matriz",'
      '  "filial"."dat_cadastro" = :"dat_cadastro"'
      'where'
      '  "filial"."cod_filial" = :"OLD_cod_filial"')
    object IBDataSetcod_filial: TSmallintField
      DisplayLabel = 'Filial'
      FieldName = 'cod_filial'
      Origin = '"filial"."cod_filial"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_matriz: TSmallintField
      DisplayLabel = 'Matriz'
      FieldName = 'cod_matriz'
      Origin = '"filial"."cod_matriz"'
      Required = True
      Visible = False
    end
    object IBDataSetlkpNom_Filial: TIBStringField
      DisplayLabel = 'Filial'
      FieldKind = fkLookup
      FieldName = 'lkpNom_Filial'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_empresa'
      LookupResultField = 'nom_empresa'
      KeyFields = 'cod_filial'
      Size = 75
      Lookup = True
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"filial"."dat_cadastro"'
    end
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select a."cod_empresa", a."nom_empresa", a."cnpj"'
      'from "empresa" a'
      'where'
      '    a."cod_empresa" != :cod_empresa'
      'and not exists ( select b."cod_matriz"'
      '                 from "filial" b'
      '                 where'
      '                     b."cod_matriz" = a."cod_empresa" )'
      'and not exists ( select distinct c."cod_empresa"'
      'from "empresa" c'
      '     join "filial" d on d."cod_matriz" = c."cod_empresa"'
      'where'
      '    c."cod_empresa" != :cod_empresa)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
  end
end
