inherited fr_CadParametroCliente: Tfr_CadParametroCliente
  Left = 721
  Top = 236
  HelpKeyword = '045'
  Caption = 'Par'#226'metro cliente'
  ClientHeight = 535
  ClientWidth = 479
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 479
    Height = 499
    object Label1: TLabel [0]
      Left = 5
      Top = 24
      Width = 49
      Height = 14
      Caption = 'Cliente'
      FocusControl = dbeCodCliente
    end
    object Label2: TLabel [1]
      Left = 5
      Top = 61
      Width = 119
      Height = 14
      Caption = 'M'#225'scara C'#243'd.Prod.'
      FocusControl = dbeMascara
    end
    object Label6: TLabel [2]
      Left = 5
      Top = 310
      Width = 91
      Height = 14
      Caption = 'Other Remarks'
    end
    object Label4: TLabel [3]
      Left = 5
      Top = 415
      Width = 147
      Height = 14
      Caption = 'Despachante Aduaneiro'
      FocusControl = DBLookupComboBox1
    end
    object Label7: TLabel [4]
      Left = 5
      Top = 455
      Width = 133
      Height = 14
      Caption = 'Destination Expense'
      FocusControl = DBEdit4
    end
    object Label3: TLabel [5]
      Left = 130
      Top = 61
      Width = 119
      Height = 14
      Caption = 'NCM Formato Geral'
      FocusControl = ncm_fmt_geral
    end
    object Label8: TLabel [6]
      Left = 256
      Top = 61
      Width = 105
      Height = 14
      Caption = 'NCM Formato Doc'
      FocusControl = DBEdit2
    end
    object Label5: TLabel [7]
      Left = 5
      Top = 100
      Width = 98
      Height = 14
      Caption = 'Shippimg Marks'
    end
    inherited pnlF1: TPanel
      Left = 422
      Top = 11
      TabOrder = 9
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbeCodCliente: TDBEdit
      Left = 5
      Top = 38
      Width = 75
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'cod_cliente'
      DataSource = fr_CadCliente.dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object dbeMascara: TDBEdit
      Left = 5
      Top = 76
      Width = 120
      Height = 22
      CharCase = ecUpperCase
      DataField = 'mas_cod_produto'
      DataSource = dsIBDataSet
      TabOrder = 2
      OnKeyPress = dbeMascaraKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 82
      Top = 38
      Width = 393
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'nom_cliente'
      DataSource = fr_CadCliente.dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object DBMemo2: TDBMemo
      Left = 5
      Top = 326
      Width = 468
      Height = 89
      DataField = 'txt_other_remarks'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 5
      Top = 431
      Width = 467
      Height = 22
      DataField = 'lkpDespachante'
      DataSource = dsIBDataSet
      DropDownRows = 15
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 5
      Top = 471
      Width = 467
      Height = 22
      CharCase = ecUpperCase
      DataField = 'den_destination_exp'
      DataSource = dsIBDataSet
      TabOrder = 8
    end
    object ncm_fmt_geral: TDBEdit
      Left = 130
      Top = 76
      Width = 118
      Height = 22
      DataField = 'ncm_formato'
      DataSource = dsIBDataSet
      TabOrder = 3
      OnKeyPress = dbeMascaraKeyPress
    end
    object DBEdit2: TDBEdit
      Left = 256
      Top = 76
      Width = 118
      Height = 22
      DataField = 'ncm_formato_doc'
      DataSource = dsIBDataSet
      TabOrder = 4
      OnKeyPress = dbeMascaraKeyPress
    end
    object PageControl1: TPageControl
      Left = 5
      Top = 115
      Width = 467
      Height = 192
      ActivePage = TabSheet1
      TabOrder = 5
      object TabSheet1: TTabSheet
        Caption = 'Ingl'#234's'
        object DBMemo1: TDBMemo
          Left = 0
          Top = 0
          Width = 459
          Height = 163
          Align = alClient
          DataField = 'txt_ship_marks'
          DataSource = dsIBDataSet
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Portugu'#234's'
        ImageIndex = 1
        object DBMemo3: TDBMemo
          Left = 0
          Top = 0
          Width = 459
          Height = 163
          Align = alClient
          DataField = 'txt_ship_marks_ptb'
          DataSource = dsIBDataSet
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Espanhol'
        ImageIndex = 2
        object DBMemo4: TDBMemo
          Left = 0
          Top = 0
          Width = 459
          Height = 163
          Align = alClient
          DataField = 'txt_ship_marks_esp'
          DataSource = dsIBDataSet
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 499
    Width = 479
    inherited ToolBar1: TToolBar
      Width = 479
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
  inherited ActionList1: TActionList
    Left = 256
    Top = 16
  end
  inherited IBDataSet: TIBDataSet
    OnCalcFields = IBDataSetCalcFields
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "parametro_cliente"'
      'where'
      '  "parametro_cliente"."cod_cliente" = :"OLD_cod_cliente"')
    InsertSQL.Strings = (
      'insert into "parametro_cliente"'
      
        '  ("parametro_cliente"."cod_cliente", "parametro_cliente"."mas_c' +
        'od_produto", '
      
        '   "parametro_cliente"."num_lista", "parametro_cliente"."txt_shi' +
        'p_marks", '
      
        '   "parametro_cliente"."txt_ship_marks_ptb", "parametro_cliente"' +
        '."txt_ship_marks_esp", '
      
        '   "parametro_cliente"."txt_other_remarks", "parametro_cliente".' +
        '"cod_despachante", '
      
        '   "parametro_cliente"."den_destination_exp", "parametro_cliente' +
        '"."ncm_formato", '
      '   "parametro_cliente"."ncm_formato_doc")'
      'values'
      
        '  (:"cod_cliente", :"mas_cod_produto", :"num_lista", :"txt_ship_' +
        'marks", '
      
        '   :"txt_ship_marks_ptb", :"txt_ship_marks_esp", :"txt_other_rem' +
        'arks", '
      
        '   :"cod_despachante", :"den_destination_exp", :"ncm_formato", :' +
        '"ncm_formato_doc")')
    RefreshSQL.Strings = (
      'Select '
      '  "parametro_cliente"."cod_cliente",'
      '  "parametro_cliente"."mas_cod_produto",'
      '  "parametro_cliente"."num_lista",'
      '  "parametro_cliente"."txt_ship_marks",'
      '  "parametro_cliente"."txt_ship_marks_ptb",'
      '  "parametro_cliente"."txt_ship_marks_esp",'
      '  "parametro_cliente"."txt_other_remarks",'
      '  "parametro_cliente"."cod_despachante",'
      '  "parametro_cliente"."den_destination_exp",'
      '  "parametro_cliente"."ncm_formato",'
      '  "parametro_cliente"."ncm_formato_doc"'
      'from "parametro_cliente" '
      'where'
      '  "parametro_cliente"."cod_cliente" = :"cod_cliente"')
    SelectSQL.Strings = (
      'select * from "parametro_cliente"'
      'where "cod_cliente" = :cod_cliente'
      ''
      '')
    ModifySQL.Strings = (
      'update "parametro_cliente"'
      'set'
      '  "parametro_cliente"."cod_cliente" = :"cod_cliente",'
      '  "parametro_cliente"."mas_cod_produto" = :"mas_cod_produto",'
      '  "parametro_cliente"."num_lista" = :"num_lista",'
      '  "parametro_cliente"."txt_ship_marks" = :"txt_ship_marks",'
      
        '  "parametro_cliente"."txt_ship_marks_ptb" = :"txt_ship_marks_pt' +
        'b",'
      
        '  "parametro_cliente"."txt_ship_marks_esp" = :"txt_ship_marks_es' +
        'p",'
      
        '  "parametro_cliente"."txt_other_remarks" = :"txt_other_remarks"' +
        ','
      '  "parametro_cliente"."cod_despachante" = :"cod_despachante",'
      
        '  "parametro_cliente"."den_destination_exp" = :"den_destination_' +
        'exp",'
      '  "parametro_cliente"."ncm_formato" = :"ncm_formato",'
      '  "parametro_cliente"."ncm_formato_doc" = :"ncm_formato_doc"'
      'where'
      '  "parametro_cliente"."cod_cliente" = :"OLD_cod_cliente"')
    Left = 288
    Top = 16
    object IBDataSetcod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"parametro_cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object IBDataSetmas_cod_produto: TIBStringField
      DisplayLabel = 'M'#225'scara C'#243'd. Produto'
      FieldName = 'mas_cod_produto'
      Origin = '"parametro_cliente"."mas_cod_produto"'
    end
    object IBDataSettam_cod_produto: TIntegerField
      DisplayLabel = 'Tamanho'
      FieldKind = fkCalculated
      FieldName = 'tam_cod_produto'
      Calculated = True
    end
    object IBDataSettxt_ship_marks: TMemoField
      FieldName = 'txt_ship_marks'
      Origin = '"parametro_cliente"."txt_ship_marks"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSettxt_other_remarks: TMemoField
      FieldName = 'txt_other_remarks'
      Origin = '"parametro_cliente"."txt_other_remarks"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetcod_despachante: TSmallintField
      FieldName = 'cod_despachante'
      Origin = '"parametro_cliente"."cod_despachante"'
    end
    object IBDataSetden_destination_exp: TIBStringField
      DisplayLabel = 'Destination Expense'
      FieldName = 'den_destination_exp'
      Origin = '"parametro_cliente"."den_destination_exp"'
      Size = 100
    end
    object IBDataSetlkpDespachante: TStringField
      DisplayLabel = 'Despachante'
      FieldKind = fkLookup
      FieldName = 'lkpDespachante'
      LookupDataSet = despachante
      LookupKeyFields = 'cod_despachante'
      LookupResultField = 'den_despachante'
      KeyFields = 'cod_despachante'
      Size = 100
      Lookup = True
    end
    object IBDataSetncm_formato: TIBStringField
      DisplayLabel = 'NCM Formato Geral'
      FieldName = 'ncm_formato'
      Origin = '"parametro_cliente"."ncm_formato"'
      Size = 15
    end
    object IBDataSetncm_formato_doc: TIBStringField
      DisplayLabel = 'NCM Formato Doc'
      FieldName = 'ncm_formato_doc'
      Origin = '"parametro_cliente"."ncm_formato_doc"'
      Size = 15
    end
    object IBDataSettxt_ship_marks_ptb: TMemoField
      FieldName = 'txt_ship_marks_ptb'
      Origin = '"parametro_cliente"."txt_ship_marks_ptb"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSettxt_ship_marks_esp: TMemoField
      FieldName = 'txt_ship_marks_esp'
      Origin = '"parametro_cliente"."txt_ship_marks_esp"'
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 287
  end
  inherited QrAux: TIBQuery
    Left = 319
    Top = 16
  end
  object lista_preco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "lista"'
      'order by "den_lista"')
    Left = 360
    Top = 15
    object lista_preconum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"lista"."num_lista"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object lista_precoden_lista: TIBStringField
      FieldName = 'den_lista'
      Origin = '"lista"."den_lista"'
      Required = True
      Size = 75
    end
  end
  object despachante: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "despachante"')
    Left = 360
    Top = 48
    object despachantecod_despachante: TSmallintField
      FieldName = 'cod_despachante'
      Origin = '"despachante"."cod_despachante"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object despachanteden_despachante: TIBStringField
      FieldName = 'den_despachante'
      Origin = '"despachante"."den_despachante"'
      Size = 100
    end
  end
end
