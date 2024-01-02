inherited fr_CadAdicDescPendentes: Tfr_CadAdicDescPendentes
  Left = 517
  Top = 384
  Caption = 'Adicionais e Descontos Pendentes'
  ClientHeight = 313
  ClientWidth = 466
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 466
    Height = 277
    object Label5: TLabel [0]
      Left = 3
      Top = 3
      Width = 49
      Height = 14
      Caption = 'Cliente'
    end
    object Label3: TLabel [1]
      Left = 3
      Top = 39
      Width = 70
      Height = 14
      Caption = 'Fornecedor'
    end
    object Label1: TLabel [2]
      Left = 3
      Top = 112
      Width = 70
      Height = 14
      Caption = 'Valor Real'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [3]
      Left = 149
      Top = 112
      Width = 98
      Height = 14
      Caption = 'Valor Especial'
      FocusControl = DBEdit2
    end
    object Label4: TLabel [4]
      Left = 3
      Top = 152
      Width = 63
      Height = 14
      Caption = 'Descri'#231#227'o'
    end
    inherited pnlF1: TPanel
      Left = 409
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dlcCliente: TJvDBLookupCombo
      Left = 3
      Top = 17
      Width = 410
      Height = 21
      DropDownCount = 15
      DataField = 'lkpcliente'
      DataSource = dsIBDataSet
      DisplayEmpty = 'ESCOLHA UM CLIENTE'
      EmptyValue = '0'
      TabOrder = 1
    end
    object dlcFornecedor: TJvDBLookupCombo
      Left = 3
      Top = 52
      Width = 410
      Height = 21
      DropDownCount = 15
      DataField = 'lkpraz_social_reduz'
      DataSource = dsIBDataSet
      DisplayEmpty = 'ESCOLHA UM FORNECEDOR'
      EmptyValue = '0'
      TabOrder = 2
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 3
      Top = 77
      Width = 137
      Height = 36
      Caption = 'Usar em comiss'#245'es'
      Columns = 2
      DataField = 'ies_comissao'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 3
      Values.Strings = (
        'S'
        'N')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 149
      Top = 77
      Width = 263
      Height = 36
      Caption = 'Tipo'
      Columns = 2
      DataField = 'ies_tipo'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Adicional'
        'Desconto')
      TabOrder = 4
      Values.Strings = (
        'A'
        'D')
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 128
      Width = 96
      Height = 22
      DataField = 'vlr_adic_desc'
      DataSource = dsIBDataSet
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 149
      Top = 128
      Width = 96
      Height = 22
      DataField = 'vlr_adic_desc_esp'
      DataSource = dsIBDataSet
      TabOrder = 6
    end
    object DBMemo1: TDBMemo
      Left = 3
      Top = 166
      Width = 456
      Height = 101
      DataField = 'txt_descricao'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 7
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 277
    Width = 466
    inherited ToolBar1: TToolBar
      Width = 466
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
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "adicional_desconto"'
      'where'
      '  "adicional_desconto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "adicional_desconto"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "adicional_desconto"'
      
        '  ("adicional_desconto"."cod_empresa", "adicional_desconto"."num' +
        '_sequencia", '
      
        '   "adicional_desconto"."cod_cliente", "adicional_desconto"."cod' +
        '_fornecedor", '
      
        '   "adicional_desconto"."ies_comissao", "adicional_desconto"."ie' +
        's_tipo", '
      
        '   "adicional_desconto"."vlr_adic_desc", "adicional_desconto"."v' +
        'lr_adic_desc_esp", '
      '   "adicional_desconto"."txt_descricao")'
      'values'
      
        '  (:"cod_empresa", :"num_sequencia", :"cod_cliente", :"cod_forne' +
        'cedor", '
      
        '   :"ies_comissao", :"ies_tipo", :"vlr_adic_desc", :"vlr_adic_de' +
        'sc_esp", '
      '   :"txt_descricao")')
    RefreshSQL.Strings = (
      'Select '
      '  "adicional_desconto"."cod_empresa",'
      '  "adicional_desconto"."num_sequencia",'
      '  "adicional_desconto"."cod_cliente",'
      '  "adicional_desconto"."cod_fornecedor",'
      '  "adicional_desconto"."ies_comissao",'
      '  "adicional_desconto"."ies_tipo",'
      '  "adicional_desconto"."vlr_adic_desc",'
      '  "adicional_desconto"."vlr_adic_desc_esp",'
      '  "adicional_desconto"."txt_descricao"'
      'from "adicional_desconto" '
      'where'
      '  "adicional_desconto"."cod_empresa" = :"cod_empresa" and'
      '  "adicional_desconto"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select * from "adicional_desconto"'
      'where "cod_empresa" = :cod_empresa')
    ModifySQL.Strings = (
      'update "adicional_desconto"'
      'set'
      '  "adicional_desconto"."cod_empresa" = :"cod_empresa",'
      '  "adicional_desconto"."num_sequencia" = :"num_sequencia",'
      '  "adicional_desconto"."cod_cliente" = :"cod_cliente",'
      '  "adicional_desconto"."cod_fornecedor" = :"cod_fornecedor",'
      '  "adicional_desconto"."ies_comissao" = :"ies_comissao",'
      '  "adicional_desconto"."ies_tipo" = :"ies_tipo",'
      '  "adicional_desconto"."vlr_adic_desc" = :"vlr_adic_desc",'
      
        '  "adicional_desconto"."vlr_adic_desc_esp" = :"vlr_adic_desc_esp' +
        '",'
      '  "adicional_desconto"."txt_descricao" = :"txt_descricao"'
      'where'
      '  "adicional_desconto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "adicional_desconto"."num_sequencia" = :"OLD_num_sequencia"')
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"adicional_desconto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"adicional_desconto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetcod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"adicional_desconto"."cod_cliente"'
      Size = 12
    end
    object IBDataSetcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"adicional_desconto"."cod_fornecedor"'
      Visible = False
    end
    object IBDataSeties_comissao: TIBStringField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'ies_comissao'
      Origin = '"adicional_desconto"."ies_comissao"'
      FixedChar = True
      Size = 1
    end
    object IBDataSeties_tipo: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ies_tipo'
      Origin = '"adicional_desconto"."ies_tipo"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetvlr_adic_desc: TIBBCDField
      DisplayLabel = 'Valor Real'
      FieldName = 'vlr_adic_desc'
      Origin = '"adicional_desconto"."vlr_adic_desc"'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetvlr_adic_desc_esp: TIBBCDField
      DisplayLabel = 'Valor Especial'
      FieldName = 'vlr_adic_desc_esp'
      Origin = '"adicional_desconto"."vlr_adic_desc_esp"'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSettxt_descricao: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'txt_descricao'
      Origin = '"adicional_desconto"."txt_descricao"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetlkpcliente: TIBStringField
      FieldKind = fkLookup
      FieldName = 'lkpcliente'
      LookupDataSet = Clientes
      LookupKeyFields = 'cod_cliente'
      LookupResultField = 'cod_cliente'
      KeyFields = 'cod_cliente'
      Visible = False
      Size = 15
      Lookup = True
    end
    object IBDataSetlkpraz_social_reduz: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'lkpraz_social_reduz'
      LookupDataSet = Fornecedores
      LookupKeyFields = 'cod_fornecedor'
      LookupResultField = 'raz_social_reduz'
      KeyFields = 'cod_fornecedor'
      Size = 30
      Lookup = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 327
    Top = 69
  end
  object Clientes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_cliente"'
      'from "cliente"'
      'where "cod_cliente" in (select "cod_cliente"'
      '                          from "usuario_cliente"'
      '                         where "login" = :login)'
      'order by 1')
    Left = 375
    Top = 69
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end>
    object Clientescod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
  object Fornecedores: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."raz_social_reduz",  a."cod_fornecedor"'
      '  from "fornecedor" a, "produto" b'
      '  where'
      '        b."cod_empresa" = :cod_empresa'
      '    and b."cod_fornecedor" = a."cod_fornecedor"'
      '    and b."cod_cliente" in (select "cod_cliente"'
      '                              from "usuario_cliente"'
      '                             where "login" = :login)'
      'group by 1,2'
      'order by 1')
    Left = 375
    Top = 99
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end>
    object Fornecedorescod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Fornecedoresraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
end
