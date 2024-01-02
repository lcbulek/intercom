inherited fr_CadComprador: Tfr_CadComprador
  Left = 403
  Top = 310
  HelpKeyword = '033'
  HelpContext = 33
  ActiveControl = edtcomprador
  Caption = 'Comprador'
  ClientHeight = 141
  ClientWidth = 451
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 451
    Height = 105
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 70
      Height = 21
      AutoSize = False
      Caption = 'Comprador'
      FocusControl = edtcod_comprador
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 33
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'Nome'
      FocusControl = edtcomprador
      Layout = tlBottom
    end
    object Label11: TLabel [2]
      Left = 10
      Top = 76
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = edtdat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 393
      TabOrder = 4
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object edtcod_comprador: TDBEdit
      Left = 124
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_comprador'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object edtcomprador: TDBEdit
      Left = 124
      Top = 33
      Width = 300
      Height = 22
      DataField = 'nom_comprador'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object chkies_situacao: TDBCheckBox
      Left = 8
      Top = 58
      Width = 130
      Height = 17
      TabStop = False
      Alignment = taLeftJustify
      Caption = 'Ativo'
      DataField = 'ies_situacao'
      DataSource = dsIBDataSet
      TabOrder = 2
      ValueChecked = 'Ativo'
      ValueUnchecked = 'Inativo'
      OnExit = chkies_situacaoExit
    end
    object edtdat_cadastro: TDBEdit
      Left = 124
      Top = 76
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
    Top = 105
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
    BeforeDelete = IBDataSetBeforeDelete
    BeforeEdit = IBDataSetBeforeDelete
    BeforeInsert = IBDataSetBeforeDelete
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "comprador"'
      'where'
      '  "comprador"."cod_comprador" = :"OLD_cod_comprador"')
    InsertSQL.Strings = (
      'insert into "comprador"'
      
        '  ("comprador"."cod_comprador", "comprador"."nom_comprador", "co' +
        'mprador"."ies_situacao", '
      '   "comprador"."dat_cadastro")'
      'values'
      
        '  (:"cod_comprador", :"nom_comprador", :"ies_situacao", :"dat_ca' +
        'dastro")')
    RefreshSQL.Strings = (
      'Select '
      '  "comprador"."cod_comprador",'
      '  "comprador"."nom_comprador",'
      '  "comprador"."ies_situacao",'
      '  "comprador"."dat_cadastro"'
      'from "comprador" '
      'where'
      '  "comprador"."cod_comprador" = :"cod_comprador"')
    SelectSQL.Strings = (
      'select *'
      'from "comprador"'
      'order by "cod_comprador"')
    ModifySQL.Strings = (
      'update "comprador"'
      'set'
      '  "comprador"."cod_comprador" = :"cod_comprador",'
      '  "comprador"."nom_comprador" = :"nom_comprador",'
      '  "comprador"."ies_situacao" = :"ies_situacao",'
      '  "comprador"."dat_cadastro" = :"dat_cadastro"'
      'where'
      '  "comprador"."cod_comprador" = :"OLD_cod_comprador"')
    object IBDataSetcod_comprador: TSmallintField
      FieldName = 'cod_comprador'
      Origin = '"comprador"."cod_comprador"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetnom_comprador: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_comprador'
      Origin = 'comprador.nom_comprador'
      Required = True
      Size = 50
    end
    object IBDataSeties_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = 'comprador.ies_situacao'
      Required = True
      OnGetText = IBDataSeties_situacaoGetText
      OnSetText = IBDataSeties_situacaoSetText
      Size = 1
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = 'comprador.dat_cadastro'
      Required = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
end
