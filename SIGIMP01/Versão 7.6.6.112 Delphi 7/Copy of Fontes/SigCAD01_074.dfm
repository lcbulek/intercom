inherited fr_CadTec: Tfr_CadTec
  Left = 2
  Top = 50
  HelpType = htKeyword
  HelpKeyword = '074'
  ActiveControl = dbednomtec
  Caption = 'T'#233'cnico'
  ClientHeight = 125
  ClientWidth = 454
  OldCreateOrder = True
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 454
    Height = 89
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 49
      Height = 14
      Caption = 'T'#233'cnico'
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 36
      Width = 28
      Height = 14
      Caption = 'Nome'
    end
    object Label4: TLabel [2]
      Left = 10
      Top = 61
      Width = 112
      Height = 14
      Caption = 'Data de Cadastro'
    end
    inherited pnlF1: TPanel
      Left = 397
      TabOrder = 1
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_tec: TDBEdit
      Left = 129
      Top = 5
      Width = 47
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_tecnico'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 3
    end
    object dbednomtec: TDBEdit
      Left = 129
      Top = 31
      Width = 288
      Height = 22
      HelpType = htKeyword
      HelpKeyword = '074'
      DataField = 'nom_tecnico'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 129
      Top = 57
      Width = 85
      Height = 22
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 89
    Width = 454
    inherited ToolBar1: TToolBar
      Width = 454
      Height = 33
      AutoSize = True
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
    Left = 290
    Top = 79
  end
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforeEdit = IBDataSetBeforeEdit
    BeforeInsert = IBDataSetBeforeInsert
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "tecnico"'
      'where'
      '  "tecnico"."cod_tecnico" = :"OLD_cod_tecnico"')
    InsertSQL.Strings = (
      ' insert into "tecnico"'
      
        ' ( "tecnico"."cod_tecnico", "tecnico"."nom_tecnico", "tecnico"."' +
        'dat_cadastro")'
      '    values'
      '  (:"cod_tecnico", :"nom_tecnico", :"dat_cadastro")')
    RefreshSQL.Strings = (
      'Select'
      '    "tecnico"."cod_tecnico",'
      '    "tecnico"."nom_tecnico",'
      '    "tecnico"."dat_cadastro"'
      'from "tecnico"'
      ''
      'where'
      '  "tecnico"."cod_tecnico" = :"cod_tecnico"')
    SelectSQL.Strings = (
      'select *'
      'from "tecnico"'
      'order by "cod_tecnico"'
      '')
    ModifySQL.Strings = (
      'update "tecnico"'
      'set'
      ' "tecnico"."cod_tecnico"   = :"cod_tecnico",'
      ' "tecnico"."nom_tecnico"  = :"nome_tecnico",'
      ' "tecnico"."dat_cadastro"  = :"dat_cadastro"'
      ' where'
      ' "tecnico"."cod_tecnico" = :"old_cod_tecnico"')
    Left = 320
    Top = 81
    object IBDataSetcod_tecnico: TSmallintField
      FieldName = 'cod_tecnico'
      Origin = '"tecnico"."cod_tecnico"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetnom_tecnico: TIBStringField
      FieldName = 'nom_tecnico'
      Origin = '"tecnico"."nom_tecnico"'
      Required = True
      Size = 40
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"tecnico"."dat_cadastro"'
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 348
    Top = 80
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select  "cod_empresa", "nom_empresa_reduz"'
      'from "empresa" '
      'order by 2')
    Left = 383
    Top = 80
    object QrAuxcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"empresa"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxnom_empresa_reduz: TIBStringField
      FieldName = 'nom_empresa_reduz'
      Origin = '"empresa"."nom_empresa_reduz"'
      Required = True
      Size = 30
    end
  end
end
