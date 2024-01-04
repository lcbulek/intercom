inherited fr_CadMotivo_Parada: Tfr_CadMotivo_Parada
  Left = 332
  Top = 350
  HelpType = htKeyword
  HelpKeyword = '039'
  ActiveControl = edtden_motivo_parada
  Caption = 'Motivo de parada'
  ClientHeight = 121
  ClientWidth = 450
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 450
    Height = 85
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 112
      Height = 22
      AutoSize = False
      Caption = 'Motivo de parada'
      FocusControl = edtcod_motivo_parada
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 35
      Width = 63
      Height = 22
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      FocusControl = edtden_motivo_parada
      Layout = tlBottom
    end
    object Label11: TLabel [2]
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
      Left = 393
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object edtcod_motivo_parada: TDBEdit
      Left = 126
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_motivo_parada'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object edtden_motivo_parada: TDBEdit
      Left = 126
      Top = 35
      Width = 294
      Height = 22
      DataField = 'den_motivo_parada'
      DataSource = dsIBDataSet
      TabOrder = 2
      OnExit = edtden_motivo_paradaExit
    end
    object dbeddat_cadastro: TDBEdit
      Left = 126
      Top = 58
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
    Top = 85
    Width = 450
    inherited ToolBar1: TToolBar
      Width = 450
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
      'delete from "motivo_parada"'
      'where'
      '  "motivo_parada"."cod_motivo_parada" = :"OLD_cod_motivo_parada"')
    InsertSQL.Strings = (
      'insert into "motivo_parada"'
      
        '  ("motivo_parada"."cod_motivo_parada", "motivo_parada"."dat_cad' +
        'astro", '
      '   "motivo_parada"."den_motivo_parada")'
      'values'
      '  (:"cod_motivo_parada", :"dat_cadastro", :"den_motivo_parada")')
    RefreshSQL.Strings = (
      'Select '
      '  "motivo_parada"."cod_motivo_parada",'
      '  "motivo_parada"."den_motivo_parada",'
      '  "motivo_parada"."dat_cadastro"'
      'from "motivo_parada" '
      'where'
      '  "motivo_parada"."cod_motivo_parada" = :"cod_motivo_parada"')
    SelectSQL.Strings = (
      'select "cod_motivo_parada",'
      '       "den_motivo_parada",'
      '       "dat_cadastro"'
      'from "motivo_parada"'
      'order by  "den_motivo_parada"')
    ModifySQL.Strings = (
      'update "motivo_parada"'
      'set'
      '  "motivo_parada"."cod_motivo_parada" = :"cod_motivo_parada",'
      '  "motivo_parada"."dat_cadastro" = :"dat_cadastro",'
      '  "motivo_parada"."den_motivo_parada" = :"den_motivo_parada"'
      'where'
      '  "motivo_parada"."cod_motivo_parada" = :"OLD_cod_motivo_parada"')
    object IBDataSetcod_motivo_parada: TSmallintField
      DisplayLabel = 'Motivo de parada'
      FieldName = 'cod_motivo_parada'
      Origin = '"motivo_parada"."cod_motivo_parada"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_motivo_parada: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_motivo_parada'
      Origin = '"motivo_parada"."den_motivo_parada"'
      Required = True
      Size = 75
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"motivo_parada"."dat_cadastro"'
    end
  end
end
