inherited fr_CadGruEmbalagem: Tfr_CadGruEmbalagem
  Left = 562
  Top = 379
  HelpType = htKeyword
  HelpKeyword = '081'
  Caption = 'Grupos de embalagem'
  ClientHeight = 133
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Height = 97
    object Label1: TLabel [0]
      Left = 6
      Top = 9
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 6
      Top = 49
      Width = 63
      Height = 14
      Caption = 'Descri'#231#227'o'
      FocusControl = dbeden_gru_embalagem
    end
    inherited pnlF1: TPanel
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 25
      Width = 43
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_gru_embalagem'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object dbeden_gru_embalagem: TDBEdit
      Left = 6
      Top = 65
      Width = 400
      Height = 22
      DataField = 'den_gru_embalagem'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 97
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
      'delete from "embalagem_grupo"'
      'where'
      
        '  "embalagem_grupo"."cod_gru_embalagem" = :"OLD_cod_gru_embalage' +
        'm"')
    InsertSQL.Strings = (
      'insert into "embalagem_grupo"'
      
        '  ("embalagem_grupo"."cod_gru_embalagem", "embalagem_grupo"."den' +
        '_gru_embalagem")'
      'values'
      '  (:"cod_gru_embalagem", :"den_gru_embalagem")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem_grupo"."cod_gru_embalagem",'
      '  "embalagem_grupo"."den_gru_embalagem"'
      'from "embalagem_grupo" '
      'where'
      '  "embalagem_grupo"."cod_gru_embalagem" = :"cod_gru_embalagem"')
    SelectSQL.Strings = (
      'select * from "embalagem_grupo"')
    ModifySQL.Strings = (
      'update "embalagem_grupo"'
      'set'
      '  "embalagem_grupo"."cod_gru_embalagem" = :"cod_gru_embalagem",'
      '  "embalagem_grupo"."den_gru_embalagem" = :"den_gru_embalagem"'
      'where'
      
        '  "embalagem_grupo"."cod_gru_embalagem" = :"OLD_cod_gru_embalage' +
        'm"')
    object IBDataSetcod_gru_embalagem: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_gru_embalagem'
      Origin = '"embalagem_grupo"."cod_gru_embalagem"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_gru_embalagem: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_gru_embalagem'
      Origin = '"embalagem_grupo"."den_gru_embalagem"'
      Size = 75
    end
  end
end
