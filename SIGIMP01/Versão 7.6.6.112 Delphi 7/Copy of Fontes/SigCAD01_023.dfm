inherited fr_CadPagamento: Tfr_CadPagamento
  Left = 439
  Top = 394
  HelpType = htKeyword
  HelpKeyword = '023'
  Caption = 'Tipos de Pagamento'
  ClientHeight = 183
  ClientWidth = 449
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 449
    Height = 147
    object Label1: TLabel [0]
      Left = 8
      Top = 10
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = dbedcod_pagamento
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 48
      Width = 63
      Height = 14
      Caption = 'Descri'#231#227'o'
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 392
      TabOrder = 2
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_pagamento: TDBEdit
      Left = 8
      Top = 24
      Width = 43
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_pagamento'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 64
      Width = 433
      Height = 73
      DataField = 'den_pagamento'
      DataSource = dsIBDataSet
      MaxLength = 255
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 147
    Width = 449
    inherited ToolBar1: TToolBar
      Width = 449
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
    DeleteSQL.Strings = (
      'delete from "pagamento"'
      'where'
      '  "pagamento"."cod_pagamento" = :"OLD_cod_pagamento"')
    InsertSQL.Strings = (
      'insert into "pagamento"'
      '  ("pagamento"."cod_pagamento", "pagamento"."den_pagamento")'
      'values'
      '  (:"cod_pagamento", :"den_pagamento")')
    RefreshSQL.Strings = (
      'Select '
      '  "pagamento"."cod_pagamento",'
      '  "pagamento"."den_pagamento"'
      'from "pagamento" '
      'where'
      '  "pagamento"."cod_pagamento" = :"cod_pagamento"')
    SelectSQL.Strings = (
      'select *'
      'from "pagamento"'
      'order by "cod_pagamento"')
    ModifySQL.Strings = (
      'update "pagamento"'
      'set'
      '  "pagamento"."cod_pagamento" = :"cod_pagamento",'
      '  "pagamento"."den_pagamento" = :"den_pagamento"'
      'where'
      '  "pagamento"."cod_pagamento" = :"OLD_cod_pagamento"')
    object IBDataSetcod_pagamento: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_pagamento'
      Origin = '"pagamento"."cod_pagamento"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_pagamento: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'den_pagamento'
      Origin = '"pagamento"."den_pagamento"'
      Size = 255
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
end
