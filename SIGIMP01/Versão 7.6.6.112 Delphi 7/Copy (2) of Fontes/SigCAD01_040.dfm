inherited fr_CadEquipamento: Tfr_CadEquipamento
  Top = 380
  HelpType = htKeyword
  HelpKeyword = '040'
  ActiveControl = edtden_equipamento
  Caption = 'Equipamento'
  ClientHeight = 123
  ClientWidth = 452
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 452
    Height = 87
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 77
      Height = 21
      AutoSize = False
      Caption = 'Equipamento'
      FocusControl = edtcod_equipamento
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 34
      Width = 63
      Height = 21
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      FocusControl = edtden_equipamento
      Layout = tlBottom
    end
    object Label4: TLabel [2]
      Left = 10
      Top = 59
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 395
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object edtcod_equipamento: TDBEdit
      Left = 131
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_equipamento'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object edtden_equipamento: TDBEdit
      Left = 131
      Top = 34
      Width = 290
      Height = 22
      DataField = 'den_equipamento'
      DataSource = dsIBDataSet
      TabOrder = 2
      OnExit = edtden_equipamentoExit
    end
    object dbeddat_cadastro: TDBEdit
      Left = 131
      Top = 59
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 3
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 87
    Width = 452
    inherited ToolBar1: TToolBar
      Width = 452
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
      'delete from "equipamento"'
      'where'
      '  "equipamento"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "equipamento"."cod_equipamento" = :"OLD_cod_equipamento"')
    InsertSQL.Strings = (
      'insert into "equipamento"'
      
        '  ("equipamento"."cod_empresa", "equipamento"."cod_equipamento",' +
        ' "equipamento"."dat_cadastro", '
      '   "equipamento"."den_equipamento")'
      'values'
      
        '  (:"cod_empresa", :"cod_equipamento", :"dat_cadastro", :"den_eq' +
        'uipamento")')
    RefreshSQL.Strings = (
      'Select '
      '  "equipamento"."cod_empresa",'
      '  "equipamento"."cod_equipamento",'
      '  "equipamento"."den_equipamento",'
      '  "equipamento"."ies_situacao",'
      '  "equipamento"."dat_cadastro"'
      'from "equipamento" '
      'where'
      '  "equipamento"."cod_empresa" = :"cod_empresa" and'
      '  "equipamento"."cod_equipamento" = :"cod_equipamento"')
    SelectSQL.Strings = (
      'select "cod_empresa",'
      '       "cod_equipamento",'
      '       "den_equipamento",'
      '       "dat_cadastro"'
      'from "equipamento"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'order by 2')
    ModifySQL.Strings = (
      'update "equipamento"'
      'set'
      '  "equipamento"."cod_empresa" = :"cod_empresa",'
      '  "equipamento"."cod_equipamento" = :"cod_equipamento",'
      '  "equipamento"."dat_cadastro" = :"dat_cadastro",'
      '  "equipamento"."den_equipamento" = :"den_equipamento"'
      'where'
      '  "equipamento"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "equipamento"."cod_equipamento" = :"OLD_cod_equipamento"')
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"equipamento"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_equipamento: TSmallintField
      DisplayLabel = 'Equipamento'
      FieldName = 'cod_equipamento'
      Origin = '"equipamento"."cod_equipamento"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_equipamento: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_equipamento'
      Origin = '"equipamento"."den_equipamento"'
      Required = True
      Size = 75
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"equipamento"."dat_cadastro"'
    end
  end
end
