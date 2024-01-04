inherited fr_CadFornecedor_Contato: Tfr_CadFornecedor_Contato
  Left = 656
  Top = 411
  HelpType = htKeyword
  HelpKeyword = '015'
  ActiveControl = dbednom_contato
  Caption = 'Contatos do Fornecedor de acordo com o Cliente'
  ClientHeight = 178
  ClientWidth = 432
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 432
    Height = 141
    object Label2: TLabel [0]
      Left = 10
      Top = 41
      Width = 49
      Height = 14
      Caption = 'Contato'
      FocusControl = dbednom_contato
      Layout = tlBottom
    end
    object Label3: TLabel [1]
      Left = 10
      Top = 65
      Width = 28
      Height = 14
      Caption = 'Fone'
      FocusControl = dbednum_fone
      Layout = tlBottom
    end
    object Label4: TLabel [2]
      Left = 10
      Top = 88
      Width = 42
      Height = 14
      Caption = 'E-mail'
      FocusControl = dbede_mail
      Layout = tlBottom
    end
    object Label1: TLabel [3]
      Left = 10
      Top = 113
      Width = 49
      Height = 14
      Caption = 'Cliente'
      FocusControl = dbede_mail
      Layout = tlBottom
    end
    inherited Button1: TButton
      Left = 280
      Width = 145
      Hint = 'Procurar outros contatos do Fornecedor'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Contatos'
      TabOrder = 4
    end
    object dbednom_contato: TDBEdit
      Left = 124
      Top = 41
      Width = 300
      Height = 22
      DataField = 'nom_contato'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
    object dbednum_fone: TDBEdit
      Left = 124
      Top = 65
      Width = 133
      Height = 22
      DataField = 'num_fone'
      DataSource = dsIBDataSet
      TabOrder = 1
    end
    object dbede_mail: TDBEdit
      Left = 124
      Top = 88
      Width = 300
      Height = 22
      DataField = 'e_mail'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 124
      Top = 112
      Width = 300
      Height = 21
      DropDownCount = 15
      DataField = 'lkpCliente'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 141
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
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "fornecedor_contato"'
      'where'
      
        '  "fornecedor_contato"."cod_fornecedor" = :"OLD_cod_fornecedor" ' +
        'and'
      '  "fornecedor_contato"."cod_contato" = :"OLD_cod_contato"')
    InsertSQL.Strings = (
      'insert into "fornecedor_contato"'
      
        '  ("fornecedor_contato"."cod_fornecedor", "fornecedor_contato"."' +
        'cod_contato", '
      
        '   "fornecedor_contato"."nom_contato", "fornecedor_contato"."num' +
        '_fone", '
      
        '   "fornecedor_contato"."e_mail", "fornecedor_contato"."cod_clie' +
        'nte")'
      'values'
      
        '  (:"cod_fornecedor", :"cod_contato", :"nom_contato", :"num_fone' +
        '", :"e_mail", '
      '   :"cod_cliente")')
    RefreshSQL.Strings = (
      'Select *'
      'from "fornecedor_contato" '
      'where'
      '  "fornecedor_contato"."cod_fornecedor" = :"cod_fornecedor" and'
      '  "fornecedor_contato"."cod_contato" = :"cod_contato"')
    SelectSQL.Strings = (
      'select *'
      'from "fornecedor_contato" '
      'where'
      '    "cod_fornecedor" = :cod_fornecedor'
      'order by "cod_contato"')
    ModifySQL.Strings = (
      'update "fornecedor_contato"'
      'set'
      '  "fornecedor_contato"."cod_fornecedor" = :"cod_fornecedor",'
      '  "fornecedor_contato"."cod_contato" = :"cod_contato",'
      '  "fornecedor_contato"."nom_contato" = :"nom_contato",'
      '  "fornecedor_contato"."num_fone" = :"num_fone",'
      '  "fornecedor_contato"."e_mail" = :"e_mail",'
      '  "fornecedor_contato"."cod_cliente" = :"cod_cliente"'
      'where'
      
        '  "fornecedor_contato"."cod_fornecedor" = :"OLD_cod_fornecedor" ' +
        'and'
      '  "fornecedor_contato"."cod_contato" = :"OLD_cod_contato"')
    object IBDataSetcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor_contato"."cod_fornecedor"'
      Required = True
      Visible = False
    end
    object IBDataSetcod_contato: TSmallintField
      DisplayLabel = 'Contato'
      FieldName = 'cod_contato'
      Origin = '"fornecedor_contato"."cod_contato"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetnom_contato: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_contato'
      Origin = '"contato"."nom_contato"'
      Required = True
      Size = 50
    end
    object IBDataSetnum_fone: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'num_fone'
      Origin = '"contato"."num_fone"'
      Size = 18
    end
    object IBDataSete_mail: TIBStringField
      DisplayLabel = 'E-mail'
      FieldName = 'e_mail'
      Origin = '"contato"."e_mail"'
      Size = 255
    end
    object IBDataSetcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"fornecedor_contato"."cod_cliente"'
      Size = 12
    end
    object IBDataSetlkpCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpCliente'
      LookupDataSet = cliente
      LookupKeyFields = 'cod_cliente'
      LookupResultField = 'cod_cliente'
      KeyFields = 'cod_cliente'
      Size = 12
      Lookup = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
  object cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_cliente"'
      'from "cliente"'
      'order by 1')
    Left = 384
    Top = 72
    object clientecod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
  object seq_contato: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select max(a."cod_contato") + 1 "prox_codigo"'
      'from "fornecedor_contato" a'
      'where a."cod_fornecedor" = :cod_fornecedor')
    Left = 344
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object seq_contatoprox_codigo: TLargeintField
      FieldName = 'prox_codigo'
    end
  end
  object dsCliente: TDataSource
    DataSet = cliente
    Left = 384
    Top = 104
  end
end
