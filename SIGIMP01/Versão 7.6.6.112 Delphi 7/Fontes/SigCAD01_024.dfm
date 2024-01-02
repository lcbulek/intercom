inherited fr_CadCondicoesPgto: Tfr_CadCondicoesPgto
  Left = 320
  Top = 382
  HelpType = htKeyword
  HelpKeyword = '023'
  Caption = 'Condi'#231#245'es de Pagamento'
  ClientHeight = 182
  ClientWidth = 1076
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 1076
    Height = 146
    object Label2: TLabel [0]
      Left = 8
      Top = 16
      Width = 133
      Height = 14
      Caption = 'Descri'#231#227'o em ingl'#234's'
      Layout = tlBottom
    end
    object Label3: TLabel [1]
      Left = 8
      Top = 56
      Width = 154
      Height = 14
      Caption = 'Descri'#231#227'o em portugu'#234's'
      Layout = tlBottom
    end
    object Label4: TLabel [2]
      Left = 8
      Top = 96
      Width = 147
      Height = 14
      Caption = 'Descri'#231#227'o em espanhol'
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 1019
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 1061
      Height = 22
      DataField = 'den_condicao'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 71
      Width = 1061
      Height = 22
      DataField = 'den_condicao_ptb'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 111
      Width = 1061
      Height = 22
      DataField = 'den_condicao_esp'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 146
    Width = 1076
    inherited ToolBar1: TToolBar
      Width = 1076
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
    BeforePost = IBDataSetBeforePost
    DeleteSQL.Strings = (
      'delete from "condicao"'
      'where'
      '  "condicao"."cod_condicao" = :"OLD_cod_condicao"')
    InsertSQL.Strings = (
      'insert into "condicao"'
      
        '  ("condicao"."cod_condicao", "condicao"."den_condicao", "condic' +
        'ao"."den_condicao_ptb", '
      '   "condicao"."den_condicao_esp")'
      'values'
      
        '  (:"cod_condicao", :"den_condicao", :"den_condicao_ptb", :"den_' +
        'condicao_esp")')
    RefreshSQL.Strings = (
      'Select '
      '  "condicao"."cod_condicao",'
      '  "condicao"."den_condicao",'
      '  "condicao"."den_condicao_ptb",'
      '  "condicao"."den_condicao_esp"'
      'from "condicao" '
      'where'
      '  "condicao"."cod_condicao" = :"cod_condicao"')
    SelectSQL.Strings = (
      'select * from "condicao"')
    ModifySQL.Strings = (
      'update "condicao"'
      'set'
      '  "condicao"."cod_condicao" = :"cod_condicao",'
      '  "condicao"."den_condicao" = :"den_condicao",'
      '  "condicao"."den_condicao_ptb" = :"den_condicao_ptb",'
      '  "condicao"."den_condicao_esp" = :"den_condicao_esp"'
      'where'
      '  "condicao"."cod_condicao" = :"OLD_cod_condicao"')
    object IBDataSetcod_condicao: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_condicao'
      Origin = '"condicao"."cod_condicao"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetden_condicao: TIBStringField
      DisplayLabel = 'Descri'#231#227'o Ingl'#234's'
      FieldName = 'den_condicao'
      Origin = '"condicao"."den_condicao"'
      Size = 255
    end
    object IBDataSetden_condicao_ptb: TIBStringField
      DisplayLabel = 'Descri'#231#227'o Portugu'#234's'
      FieldName = 'den_condicao_ptb'
      Origin = '"condicao"."den_condicao_ptb"'
      Size = 255
    end
    object IBDataSetden_condicao_esp: TIBStringField
      DisplayLabel = 'Descri'#231#227'o Espanhol'
      FieldName = 'den_condicao_esp'
      Origin = '"condicao"."den_condicao_esp"'
      Size = 255
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
end
