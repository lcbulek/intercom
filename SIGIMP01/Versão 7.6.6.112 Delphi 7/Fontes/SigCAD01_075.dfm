inherited fr_CadCondVenda: Tfr_CadCondVenda
  Left = 599
  Top = 334
  HelpType = htKeyword
  HelpKeyword = '075'
  ActiveControl = dbedden_tip_pagamento
  Caption = 'Condi'#231#227'o de Venda (INCOTERMS)'
  ClientHeight = 112
  ClientWidth = 432
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 432
    Height = 75
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 63
      Height = 21
      AutoSize = False
      Caption = 'C'#243'digo'
      FocusControl = dbedcod_tip_pagamento
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 35
      Width = 63
      Height = 21
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      FocusControl = dbedden_tip_pagamento
      Layout = tlBottom
    end
    inherited Button1: TButton
      Left = 238
      Width = 182
      Hint = 'Procurar outras Condicoes de Venda'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Condi'#231#245'es Venda'
      TabOrder = 2
    end
    object dbedcod_tip_pagamento: TDBEdit
      Left = 139
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_tip_condicao'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object dbedden_tip_pagamento: TDBEdit
      Left = 139
      Top = 35
      Width = 281
      Height = 22
      DataField = 'den_tip_condicao'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 75
    Width = 432
    inherited ToolBar1: TToolBar
      Width = 432
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
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "condicao_venda"'
      'where'
      '  "condicao_venda"."cod_tip_condicao" = :"OLD_cod_tip_condicao"')
    InsertSQL.Strings = (
      'insert into "condicao_venda"'
      '  (  "condicao_venda"."cod_tip_condicao",'
      '  "condicao_venda"."den_tip_condicao",'
      '  "condicao_venda"."ies_situacao")'
      'values'
      '  (:"cod_tip_condicao", :"den_tip_condicao", :"ies_situacao")')
    RefreshSQL.Strings = (
      'Select '
      '  "condicao_venda"."cod_tip_condicao",'
      '  "condicao_venda"."den_tip_condicao",'
      '  "condicao_venda"."ies_situacao"'
      'from "condicao_venda" '
      'where'
      '  "condicao_venda"."cod_tip_condicao" = :"cod_tip_condicao"')
    SelectSQL.Strings = (
      'select * from "condicao_venda"'
      'order by'
      '  "cod_tip_condicao"')
    ModifySQL.Strings = (
      'update "condicao_venda"'
      'set'
      '  "condicao_venda"."cod_tip_condicao" = :"cod_tip_condicao",'
      '  "condicao_venda"."den_tip_condicao"= :"den_tip_condicao",'
      '  "condicao_venda"."ies_situacao" = :"ies_situacao"'
      'where'
      '  "condicao_venda"."cod_tip_condicao" = :"OLD_cod_tip_condicao"')
    object IBDataSetcod_tip_condicao: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_tip_condicao'
      Origin = '"condicao_venda"."cod_tip_condicao"'
      Required = True
    end
    object IBDataSetden_tip_condicao: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'den_tip_condicao'
      Origin = '"condicao_venda"."den_tip_condicao"'
      Size = 40
    end
    object IBDataSeties_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"condicao_venda"."ies_situacao"'
      OnGetText = IBDataSeties_situacaoGetText
      OnSetText = IBDataSeties_situacaoSetText
      Size = 1
    end
  end
end
