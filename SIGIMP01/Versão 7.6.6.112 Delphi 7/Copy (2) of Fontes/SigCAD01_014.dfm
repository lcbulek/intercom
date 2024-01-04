inherited fr_CadCliente_Contato: Tfr_CadCliente_Contato
  Left = 489
  Top = 386
  HelpType = htKeyword
  HelpKeyword = '014'
  ActiveControl = edrnom_contato
  Caption = 'Cliente - Contato'
  ClientHeight = 158
  ClientWidth = 450
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 450
    Height = 122
    object dbtxcod_cliente: TDBText [0]
      Left = 10
      Top = 10
      Width = 111
      Height = 17
      Alignment = taRightJustify
      Color = clInfoBk
      DataField = 'cod_cliente'
      DataSource = fr_CadCliente.dsIBDataSet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbtxnom_cliente: TDBText [1]
      Left = 124
      Top = 10
      Width = 250
      Height = 17
      Color = clInfoBk
      DataField = 'nom_cliente'
      DataSource = fr_CadCliente.dsIBDataSet
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel [2]
      Left = 10
      Top = 33
      Width = 49
      Height = 21
      AutoSize = False
      Caption = 'Contato'
      Layout = tlBottom
    end
    object Label2: TLabel [3]
      Left = 10
      Top = 84
      Width = 42
      Height = 21
      AutoSize = False
      Caption = 'E-mail'
      FocusControl = dbede_mail
      Layout = tlBottom
    end
    object Label3: TLabel [4]
      Left = 10
      Top = 59
      Width = 28
      Height = 21
      AutoSize = False
      Caption = 'Fone'
      FocusControl = dbednum_fone
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 393
      TabOrder = 3
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbede_mail: TDBEdit
      Left = 124
      Top = 84
      Width = 298
      Height = 22
      DataField = 'e_mail'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object dbednum_fone: TDBEdit
      Left = 124
      Top = 59
      Width = 133
      Height = 22
      DataField = 'num_fone'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object edrnom_contato: TDBEdit
      Left = 124
      Top = 33
      Width = 298
      Height = 22
      DataField = 'nom_contato'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 122
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
    BeforeEdit = IBDataSetAfterDelete
    BeforeInsert = IBDataSetAfterDelete
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "cliente_contato"'
      'where'
      '  "cliente_contato"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "cliente_contato"."cod_contato" = :"OLD_cod_contato"')
    InsertSQL.Strings = (
      'insert into "cliente_contato"'
      
        '  ("cliente_contato"."cod_cliente", "cliente_contato"."cod_conta' +
        'to", "cliente_contato"."nom_contato", '
      '   "cliente_contato"."num_fone", "cliente_contato"."e_mail")'
      'values'
      
        '  (:"cod_cliente", :"cod_contato", :"nom_contato", :"num_fone", ' +
        ':"e_mail")')
    RefreshSQL.Strings = (
      'Select '
      '  "cliente_contato"."cod_cliente",'
      '  "cliente_contato"."cod_contato",'
      '  "cliente_contato"."nom_contato",'
      '  "cliente_contato"."num_fone",'
      '  "cliente_contato"."e_mail"'
      'from "cliente_contato" '
      'where'
      '  "cliente_contato"."cod_cliente" = :"cod_cliente" and'
      '  "cliente_contato"."cod_contato" = :"cod_contato"')
    SelectSQL.Strings = (
      'select *'
      'from "cliente_contato"'
      'where'
      '       "cod_cliente" =:cod_cliente'
      'order by "cod_contato"')
    ModifySQL.Strings = (
      'update "cliente_contato"'
      'set'
      '  "cliente_contato"."cod_cliente" = :"cod_cliente",'
      '  "cliente_contato"."cod_contato" = :"cod_contato",'
      '  "cliente_contato"."nom_contato" = :"nom_contato",'
      '  "cliente_contato"."num_fone" = :"num_fone",'
      '  "cliente_contato"."e_mail" = :"e_mail"'
      'where'
      '  "cliente_contato"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "cliente_contato"."cod_contato" = :"OLD_cod_contato"')
    Left = 324
    object IBDataSetcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente_contato"."cod_cliente"'
      Required = True
      Visible = False
      Size = 12
    end
    object IBDataSetcod_contato: TSmallintField
      DisplayLabel = 'Contato'
      FieldName = 'cod_contato'
      Origin = '"cliente_contato"."cod_contato"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetnom_contato: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_contato'
      Origin = '"cliente_contato"."nom_contato"'
      Required = True
      Size = 50
    end
    object IBDataSetnum_fone: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'num_fone'
      Origin = '"cliente_contato"."num_fone"'
      Size = 18
    end
    object IBDataSete_mail: TIBStringField
      DisplayLabel = 'E-mail'
      FieldName = 'e_mail'
      Origin = '"cliente_contato"."e_mail"'
      Size = 255
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 346
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      '')
  end
  object seq_contato: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select max(a."cod_contato") + 1 "prox_codigo"'
      'from "cliente_contato" a'
      'where a."cod_cliente" = :cod_cliente')
    Left = 304
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object seq_contatoprox_codigo: TLargeintField
      FieldName = 'prox_codigo'
    end
  end
end
