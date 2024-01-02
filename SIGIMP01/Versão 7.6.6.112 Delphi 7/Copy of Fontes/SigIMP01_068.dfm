inherited fr_CadGrupoProduto: Tfr_CadGrupoProduto
  Left = 602
  Top = 328
  HelpType = htKeyword
  HelpKeyword = '068'
  Caption = 'Grupo de Produtos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    object Label1: TLabel [0]
      Left = 8
      Top = 8
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 8
      Top = 48
      Width = 63
      Height = 14
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [2]
      Left = 8
      Top = 88
      Width = 133
      Height = 14
      Caption = 'Descri'#231#227'o em Ingl'#234's'
      FocusControl = DBEdit3
    end
    inherited pnlF1: TPanel
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 40
      Height = 22
      Color = clInfoBk
      DataField = 'cod_gru_produto'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 410
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_gru_produto'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 104
      Width = 410
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_gru_produto_ing'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
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
    BeforeInsert = IBDataSetBeforeInsert
    BeforePost = IBDataSetBeforePost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "grupo_produto"'
      'where'
      '  "grupo_produto"."cod_gru_produto" = :"OLD_cod_gru_produto"')
    InsertSQL.Strings = (
      'insert into "grupo_produto"'
      
        '  ("grupo_produto"."cod_gru_produto", "grupo_produto"."den_gru_p' +
        'roduto", '
      '   "grupo_produto"."den_gru_produto_ing")'
      'values'
      
        '  (:"cod_gru_produto", :"den_gru_produto", :"den_gru_produto_ing' +
        '")')
    RefreshSQL.Strings = (
      'Select '
      '  "grupo_produto"."cod_gru_produto",'
      '  "grupo_produto"."den_gru_produto",'
      '  "grupo_produto"."den_gru_produto_ing"'
      'from "grupo_produto" '
      'where'
      '  "grupo_produto"."cod_gru_produto" = :"cod_gru_produto"')
    SelectSQL.Strings = (
      'select * from "grupo_produto"')
    ModifySQL.Strings = (
      'update "grupo_produto"'
      'set'
      '  "grupo_produto"."cod_gru_produto" = :"cod_gru_produto",'
      '  "grupo_produto"."den_gru_produto" = :"den_gru_produto",'
      '  "grupo_produto"."den_gru_produto_ing" = :"den_gru_produto_ing"'
      'where'
      '  "grupo_produto"."cod_gru_produto" = :"OLD_cod_gru_produto"')
    object IBDataSetcod_gru_produto: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_gru_produto'
      Origin = '"grupo_produto"."cod_gru_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_gru_produto: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_gru_produto'
      Origin = '"grupo_produto"."den_gru_produto"'
      Size = 75
    end
    object IBDataSetden_gru_produto_ing: TIBStringField
      DisplayLabel = 'Descri'#231#227'o em Ingl'#234's'
      FieldName = 'den_gru_produto_ing'
      Origin = '"grupo_produto"."den_gru_produto_ing"'
      Size = 75
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
end
