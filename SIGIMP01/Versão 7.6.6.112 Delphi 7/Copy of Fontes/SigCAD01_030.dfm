inherited fr_CadTipoPagamento: Tfr_CadTipoPagamento
  HelpType = htKeyword
  HelpKeyword = '030'
  ActiveControl = dbedden_tip_pagamento
  Caption = 'Forma de pagamento'
  ClientHeight = 170
  ClientWidth = 453
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 453
    Height = 134
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 134
      Height = 21
      AutoSize = False
      Caption = 'C'#243'digo'
      FocusControl = dbedcod_tip_pagamento
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 33
      Width = 63
      Height = 21
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      FocusControl = dbedden_tip_pagamento
      Layout = tlBottom
    end
    object Label11: TLabel [2]
      Left = 10
      Top = 107
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 396
      TabOrder = 2
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_tip_pagamento: TDBEdit
      Left = 163
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_tip_pagamento'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object dbedden_tip_pagamento: TDBEdit
      Left = 163
      Top = 33
      Width = 281
      Height = 22
      DataField = 'den_tip_pagamento'
      DataSource = dsIBDataSet
      TabOrder = 1
      OnExit = dbedden_tip_pagamentoExit
    end
    object dbeddat_cadastro: TDBEdit
      Left = 163
      Top = 106
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 3
    end
    object chkies_bloquear_pedido: TDBCheckBox
      Left = 9
      Top = 61
      Width = 168
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Bloquear pedido'
      DataField = 'ies_bloquear_pedido'
      DataSource = dsIBDataSet
      TabOrder = 4
      ValueChecked = 'Sim'
      ValueUnchecked = 'N'#227'o'
    end
    object chkies_pgto_aut: TDBCheckBox
      Left = 9
      Top = 85
      Width = 168
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Liquida'#231#227'o autom'#225'tica'
      DataField = 'ies_pgto_aut'
      DataSource = dsIBDataSet
      TabOrder = 5
      ValueChecked = 'Sim'
      ValueUnchecked = 'N'#227'o'
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 134
    Width = 453
    inherited ToolBar1: TToolBar
      Width = 453
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
      'delete from "tipo_pagamento"'
      'where'
      
        '  "tipo_pagamento"."cod_tip_pagamento" = :"OLD_cod_tip_pagamento' +
        '"')
    InsertSQL.Strings = (
      'insert into "tipo_pagamento"'
      
        '  ("tipo_pagamento"."cod_tip_pagamento", "tipo_pagamento"."dat_c' +
        'adastro", '
      
        '   "tipo_pagamento"."den_tip_pagamento", "tipo_pagamento"."ies_b' +
        'loquear_pedido",'
      '   "tipo_pagamento"."ies_pgto_aut")'
      'values'
      
        '  (:"cod_tip_pagamento", :"dat_cadastro", :"den_tip_pagamento", ' +
        ':"ies_bloquear_pedido", :"ies_pgto_aut")')
    RefreshSQL.Strings = (
      'Select '
      '  "tipo_pagamento"."cod_tip_pagamento",'
      '  "tipo_pagamento"."den_tip_pagamento",'
      '  "tipo_pagamento"."ies_bloquear_pedido",'
      '  "tipo_pagamento"."ies_pgto_aut",'
      '  "tipo_pagamento"."dat_cadastro"'
      'from "tipo_pagamento" '
      'where'
      '  "tipo_pagamento"."cod_tip_pagamento" = :"cod_tip_pagamento"')
    SelectSQL.Strings = (
      'select'
      '  "cod_tip_pagamento",'
      '  "den_tip_pagamento",'
      '  "ies_bloquear_pedido",'
      '  "ies_pgto_aut",'
      '  "dat_cadastro"'
      'from "tipo_pagamento"'
      'order by'
      '  "cod_tip_pagamento"')
    ModifySQL.Strings = (
      'update "tipo_pagamento"'
      'set'
      '  "tipo_pagamento"."cod_tip_pagamento" = :"cod_tip_pagamento",'
      '  "tipo_pagamento"."dat_cadastro" = :"dat_cadastro",'
      '  "tipo_pagamento"."den_tip_pagamento" = :"den_tip_pagamento",'
      
        '  "tipo_pagamento"."ies_bloquear_pedido" = :"ies_bloquear_pedido' +
        '",'
      '  "tipo_pagamento"."ies_pgto_aut" = :"ies_pgto_aut"'
      'where'
      
        '  "tipo_pagamento"."cod_tip_pagamento" = :"OLD_cod_tip_pagamento' +
        '"')
    object IBDataSetcod_tip_pagamento: TSmallintField
      DisplayLabel = 'Tipo pagamento'
      FieldName = 'cod_tip_pagamento'
      Origin = '"tipo_pagamento"."cod_tip_pagamento"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetden_tip_pagamento: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_tip_pagamento'
      Origin = '"tipo_pagamento"."den_tip_pagamento"'
      Required = True
      Size = 75
    end
    object IBDataSeties_bloquear_pedido: TIBStringField
      DisplayLabel = 'Bloquear pedido'
      FieldName = 'ies_bloquear_pedido'
      Origin = '"tipo_pagamento"."ies_bloquear_pedido"'
      OnGetText = IBDataSeties_bloquear_pedidoGetText
      OnSetText = IBDataSeties_bloquear_pedidoSetText
      Size = 1
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"tipo_pagamento"."dat_cadastro"'
      Required = True
    end
    object IBDataSeties_pgto_aut: TIBStringField
      FieldName = 'ies_pgto_aut'
      Origin = '"tipo_pagamento"."ies_pgto_aut"'
      OnGetText = IBDataSeties_pgto_autGetText
      OnSetText = IBDataSeties_pgto_autSetText
      Size = 1
    end
  end
end
