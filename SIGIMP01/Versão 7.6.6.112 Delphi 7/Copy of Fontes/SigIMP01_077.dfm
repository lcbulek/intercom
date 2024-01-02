object frmProdList: TfrmProdList
  Left = 347
  Top = 191
  HelpType = htKeyword
  HelpKeyword = '059'
  BorderStyle = bsSingle
  Caption = 'Production List'
  ClientHeight = 768
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1280
    Height = 89
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 47
      Width = 31
      Height = 13
      Caption = 'Clients'
    end
    object Label9: TLabel
      Left = 4
      Top = 9
      Width = 43
      Height = 13
      Caption = 'Suppliers'
    end
    object dbcClientes: TJvDBLookupCombo
      Left = 4
      Top = 61
      Width = 400
      Height = 21
      DropDownCount = 30
      DisplayAllFields = True
      DisplayEmpty = '** Escolha um Cliente **'
      EmptyValue = '0'
      LookupField = 'cod_cliente'
      LookupDisplay = 'cod_cliente'
      LookupSource = ds_Clientes
      TabOrder = 1
      OnChange = dbcClientesChange
    end
    object dbcFornecedores: TJvDBLookupCombo
      Left = 4
      Top = 23
      Width = 400
      Height = 21
      DropDownCount = 30
      DisplayAllFields = True
      DisplayEmpty = '** Escolha um Fornecedor **'
      EmptyValue = '0'
      LookupField = 'cod_fornecedor'
      LookupDisplay = 'raz_social_reduz'
      LookupSource = ds_Fornecedores
      TabOrder = 0
      OnChange = dbcFornecedoresChange
    end
    object btnSave: TBitBtn
      Left = 846
      Top = 18
      Width = 89
      Height = 25
      Action = actGerar
      Caption = 'Save'
      TabOrder = 4
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000066
        0000006600000066000000660000006600000066000000660000006600000066
        00000066000000660000006600000066000000660000FF00FF00FF00FF000066
        0000006600000066000000660000006600000066000000660000006600000066
        00000066000000660000006600000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF000066000000660000006600000066000000660000006600000066
        00000066000000660000006600000066000000660000FF00FF00FF00FF000066
        0000FFFFFF000066000000660000006600000066000000660000FFFFFF000066
        00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
        00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF0000660000FFFFFF0000660000006600000066
        0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000066000000660000006600000066
        0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00006600000066000000660000006600000066
        000000660000FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
        00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000006600000066000000660000006600000066000000660000006600000066
        00000066000000660000006600000066000000660000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnOpen: TBitBtn
      Left = 938
      Top = 18
      Width = 89
      Height = 25
      Action = actAbrir
      Caption = 'Open'
      TabOrder = 5
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000066
        0000006600000066000000660000006600000066000000660000006600000066
        00000066000000660000006600000066000000660000FF00FF00FF00FF000066
        0000006600000066000000660000006600000066000000660000006600000066
        00000066000000660000006600000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF000066000000660000006600000066000000660000006600000066
        00000066000000660000006600000066000000660000FF00FF00FF00FF000066
        0000FFFFFF000066000000660000006600000066000000660000FFFFFF000066
        00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
        00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF0000660000FFFFFF0000660000006600000066
        0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000066000000660000006600000066
        0000FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00006600000066000000660000006600000066
        000000660000FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00006600000066000000660000FFFFFF00006600000066
        00000066000000660000FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000066000000660000FF00FF00FF00FF000066
        0000006600000066000000660000006600000066000000660000006600000066
        00000066000000660000006600000066000000660000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object rgPallets: TDBRadioGroup
      Left = 501
      Top = 12
      Width = 140
      Height = 33
      Caption = 'Mostrar colunas de Pallets'
      Columns = 2
      DataField = 'ies_pallets'
      DataSource = ds_prod_list
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 2
      TabStop = True
      Values.Strings = (
        'S'
        'N')
    end
    object rgPlanilha: TDBRadioGroup
      Left = 647
      Top = 12
      Width = 197
      Height = 33
      Caption = 'Save/Open Excel'
      Columns = 3
      DataField = 'ies_plan_default'
      DataSource = ds_prod_list
      Items.Strings = (
        'Supplier'
        'Client'
        'ETD')
      TabOrder = 3
      TabStop = True
      Values.Strings = (
        '1'
        '2'
        '3')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 724
    Width = 1280
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object ToolBar3: TToolBar
      Left = 1234
      Top = 0
      Width = 46
      Height = 44
      Align = alRight
      AutoSize = True
      BorderWidth = 2
      ButtonHeight = 33
      ButtonWidth = 31
      Caption = 'ToolBar1'
      Color = clBtnFace
      EdgeBorders = []
      EdgeInner = esNone
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -8
      Font.Name = 'MS Serif'
      Font.Style = []
      Images = dmConnection.ImageList
      Indent = 3
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      object ToolButton1: TToolButton
        Left = 3
        Top = 0
        Action = dmConnection.acClose
        AutoSize = True
      end
    end
    object panGauge: TPanel
      Left = 5
      Top = 5
      Width = 203
      Height = 9
      BevelOuter = bvLowered
      TabOrder = 1
    end
  end
  object pgProdList: TPageControl
    Left = 0
    Top = 89
    Width = 1280
    Height = 635
    ActivePage = tsItensProdList
    Align = alClient
    TabOrder = 2
    object tsItensProdList: TTabSheet
      Caption = 'Production List'
      object dbgProdListItens: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1272
        Height = 236
        Align = alClient
        DataSource = ds_prod_list_itens
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        MultiSelect = True
        ShowCellHint = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 16
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'num_seq_pedido'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_pedido_for'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_pedido_cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cal_den_produto'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_confirmada'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_embarcada'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_pendente'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_ini_producao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_inspecao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_upd_etd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cal_result_inspecao'
            Width = 19
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_romanear'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_fatura'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_seq_nf'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'un_med'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_real'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_esp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido_esp'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vol_total'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_bruto'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_liquido'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_caixas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'un_master'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_bruto_cx'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'volume_caixa'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comprimento_cx'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'largura_cx'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'altura_cx'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_unitario'
            Width = 98
            Visible = True
          end>
      end
      object pcDados: TPageControl
        Left = 0
        Top = 236
        Width = 1272
        Height = 371
        ActivePage = tsItems
        Align = alBottom
        TabOrder = 1
        TabStop = False
        object tsItems: TTabSheet
          Caption = 'Items Details'
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 19
            Height = 13
            Caption = 'Seq'
            FocusControl = DBEdit1
          end
          object Label4: TLabel
            Left = 26
            Top = 0
            Width = 26
            Height = 13
            Caption = 'Order'
            FocusControl = DBEdit2
          end
          object Label5: TLabel
            Left = 128
            Top = 0
            Width = 19
            Height = 13
            Caption = 'S/C'
            FocusControl = DBEdit3
          end
          object Label6: TLabel
            Left = 229
            Top = 0
            Width = 65
            Height = 13
            Caption = 'Product Code'
            FocusControl = DBEdit4
          end
          object Label7: TLabel
            Left = 332
            Top = 0
            Width = 90
            Height = 13
            Caption = 'English Description'
          end
          object Label8: TLabel
            Left = 963
            Top = 0
            Width = 61
            Height = 13
            Caption = 'Qty Proforma'
            FocusControl = DBEdit6
          end
          object Label10: TLabel
            Left = 1028
            Top = 0
            Width = 58
            Height = 13
            Caption = 'Qty Shipped'
            FocusControl = DBEdit7
          end
          object Label11: TLabel
            Left = 1092
            Top = 0
            Width = 58
            Height = 13
            Caption = 'Qty Pending'
            FocusControl = DBEdit8
          end
          object Label12: TLabel
            Left = 1153
            Top = 0
            Width = 69
            Height = 13
            Caption = 'Next Shipment'
            FocusControl = dbeqtd_romanear
          end
          object Label13: TLabel
            Left = 0
            Top = 84
            Width = 81
            Height = 13
            Caption = 'Begin Production'
            FocusControl = DBEdit10
          end
          object Label14: TLabel
            Left = 86
            Top = 84
            Width = 60
            Height = 13
            Caption = 'ETD Factory'
            FocusControl = DBEdit11
          end
          object Label15: TLabel
            Left = 256
            Top = 84
            Width = 96
            Height = 13
            Caption = 'Status of Production'
            FocusControl = DBMemo1
          end
          object Label16: TLabel
            Left = 1139
            Top = 84
            Width = 82
            Height = 13
            Caption = 'Result Inspection'
          end
          object Label17: TLabel
            Left = -1
            Top = 126
            Width = 35
            Height = 13
            Caption = 'Invoice'
            FocusControl = DBEdit13
          end
          object Label18: TLabel
            Left = 100
            Top = 126
            Width = 19
            Height = 13
            Caption = 'Seq'
            FocusControl = DBEdit14
          end
          object Label19: TLabel
            Left = 1055
            Top = 84
            Width = 75
            Height = 13
            Caption = 'Date Inspection'
          end
          object Label20: TLabel
            Left = 1226
            Top = 0
            Width = 19
            Height = 13
            Caption = 'Unit'
            FocusControl = DBEdit12
          end
          object Label21: TLabel
            Left = 0
            Top = 204
            Width = 59
            Height = 13
            Caption = 'Price in US$'
            FocusControl = DBEdit15
          end
          object Label22: TLabel
            Left = 84
            Top = 204
            Width = 48
            Height = 13
            Caption = 'Total US$'
            FocusControl = DBEdit16
          end
          object Label23: TLabel
            Left = 169
            Top = 204
            Width = 69
            Height = 13
            Caption = 'Price in US$(*)'
            FocusControl = DBEdit17
          end
          object Label24: TLabel
            Left = 244
            Top = 204
            Width = 58
            Height = 13
            Caption = 'Total US$(*)'
            FocusControl = DBEdit18
          end
          object Label25: TLabel
            Left = 328
            Top = 204
            Width = 59
            Height = 13
            Caption = 'Total Vol(m'#179')'
            FocusControl = DBEdit19
          end
          object Label26: TLabel
            Left = 392
            Top = 204
            Width = 87
            Height = 13
            Caption = 'Total Gross W(Kg)'
            FocusControl = DBEdit20
          end
          object Label27: TLabel
            Left = 486
            Top = 204
            Width = 69
            Height = 13
            Caption = 'Tot Net W(Kg)'
            FocusControl = DBEdit21
          end
          object Label46: TLabel
            Left = 168
            Top = 84
            Width = 83
            Height = 13
            Caption = 'Upd ETD Factory'
          end
          object DBEdit1: TDBEdit
            Left = 0
            Top = 16
            Width = 25
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'num_seq_pedido'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 26
            Top = 16
            Width = 100
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'num_pedido_for'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 128
            Top = 16
            Width = 100
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'num_pedido_cli'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 229
            Top = 16
            Width = 100
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'cod_produto'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit6: TDBEdit
            Left = 963
            Top = 16
            Width = 60
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_confirmada'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 1028
            Top = 16
            Width = 60
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_embarcada'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit8: TDBEdit
            Left = 1092
            Top = 16
            Width = 60
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_pendente'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 7
          end
          object dbeqtd_romanear: TDBEdit
            Left = 1153
            Top = 16
            Width = 72
            Height = 21
            DataField = 'qtd_romanear'
            DataSource = ds_prod_list_itens
            TabOrder = 8
          end
          object DBEdit10: TDBEdit
            Left = 0
            Top = 100
            Width = 80
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'dat_ini_producao'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 10
          end
          object DBEdit11: TDBEdit
            Left = 86
            Top = 100
            Width = 80
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'etd_factory'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 11
          end
          object DBMemo1: TDBMemo
            Left = 256
            Top = 100
            Width = 793
            Height = 89
            DataField = 'txt_status_producao'
            DataSource = ds_prod_list_itens
            ScrollBars = ssVertical
            TabOrder = 13
          end
          object DBEdit13: TDBEdit
            Left = -1
            Top = 142
            Width = 100
            Height = 21
            CharCase = ecUpperCase
            DataField = 'num_fatura'
            DataSource = ds_prod_list_itens
            TabOrder = 16
          end
          object DBEdit14: TDBEdit
            Left = 100
            Top = 142
            Width = 25
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'num_seq_nf'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 17
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 1139
            Top = 100
            Width = 81
            Height = 21
            DataField = 'ies_result_inspecao'
            DataSource = ds_prod_list_itens
            ItemHeight = 13
            Items.Strings = (
              'Pass'
              'Fail'
              'Fail/Pass'
              '---')
            TabOrder = 15
            Values.Strings = (
              '2'
              '0'
              '1'
              '')
          end
          object DBEdit12: TDBEdit
            Left = 1226
            Top = 16
            Width = 33
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'un_med'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit15: TDBEdit
            Left = 0
            Top = 220
            Width = 81
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'preco_real'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 20
          end
          object DBEdit16: TDBEdit
            Left = 84
            Top = 220
            Width = 81
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'vlr_liquido'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 21
          end
          object DBEdit17: TDBEdit
            Left = 169
            Top = 220
            Width = 73
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'preco_esp'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 22
          end
          object DBEdit18: TDBEdit
            Left = 244
            Top = 220
            Width = 81
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'vlr_liquido_esp'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 23
          end
          object DBEdit19: TDBEdit
            Left = 328
            Top = 220
            Width = 57
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'vol_total'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 24
          end
          object DBEdit20: TDBEdit
            Left = 392
            Top = 220
            Width = 89
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'pes_bruto'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 25
          end
          object DBEdit21: TDBEdit
            Left = 486
            Top = 220
            Width = 72
            Height = 21
            TabStop = False
            Color = clInfoBk
            DataField = 'pes_liquido'
            DataSource = ds_prod_list_itens
            ReadOnly = True
            TabOrder = 26
          end
          object JvDBDatePickerEdit1: TJvDBDatePickerEdit
            Left = 1055
            Top = 100
            Width = 83
            Height = 21
            AllowNoDate = True
            DataField = 'dat_inspecao'
            DataSource = ds_prod_list_itens
            DateFormat = 'dd/MM/yyyy'
            DateSeparator = '/'
            StoreDateFormat = True
            TabOrder = 14
          end
          object Panel7: TPanel
            Left = 0
            Top = 302
            Width = 1264
            Height = 41
            Align = alBottom
            TabOrder = 27
            object btnConfirm: TBitBtn
              Left = 8
              Top = 8
              Width = 75
              Height = 25
              Caption = 'Confirm'
              TabOrder = 0
              OnClick = btnConfirmClick
            end
            object btnCancel: TBitBtn
              Left = 89
              Top = 8
              Width = 75
              Height = 25
              Caption = 'Cancel'
              TabOrder = 1
              OnClick = btnCancelClick
            end
          end
          object DBMemo2: TDBMemo
            Left = 332
            Top = 16
            Width = 625
            Height = 67
            TabStop = False
            Color = clInfoBk
            DataField = 'cal_den_produto'
            DataSource = ds_prod_list_itens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 4
          end
          object DBCheckBox2: TDBCheckBox
            Left = 128
            Top = 40
            Width = 97
            Height = 17
            TabStop = False
            Caption = 'Special Carton'
            Color = clInfoBk
            DataField = 'ies_emb_esp'
            DataSource = ds_prod_list_itens
            ParentColor = False
            ReadOnly = True
            TabOrder = 28
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 128
            Top = 62
            Width = 97
            Height = 17
            TabStop = False
            Caption = 'Pallet'
            Color = clInfoBk
            DataField = 'ies_pallet'
            DataSource = ds_prod_list_itens
            ParentColor = False
            ReadOnly = True
            TabOrder = 29
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object JvDBDatePickerEdit2: TJvDBDatePickerEdit
            Left = 167
            Top = 100
            Width = 83
            Height = 21
            AllowNoDate = True
            DataField = 'dat_upd_etd'
            DataSource = ds_prod_list_itens
            DateFormat = 'dd/MM/yyyy'
            DateSeparator = '/'
            StoreDateFormat = True
            TabOrder = 12
          end
          object GroupBox3: TGroupBox
            Left = 568
            Top = 191
            Width = 533
            Height = 58
            Caption = 'Packings'
            TabOrder = 19
            object Label28: TLabel
              Left = 100
              Top = 13
              Width = 69
              Height = 13
              Caption = 'Qty Of Cartons'
              FocusControl = DBEdit23
            end
            object Label29: TLabel
              Left = 175
              Top = 13
              Width = 65
              Height = 13
              Caption = 'Unit In Carton'
              FocusControl = dbeUn_Master
            end
            object Label30: TLabel
              Left = 244
              Top = 13
              Width = 75
              Height = 13
              Caption = 'Gross W.Carton'
              FocusControl = dbePes_Bruto_Cx
            end
            object Label31: TLabel
              Left = 444
              Top = 13
              Width = 78
              Height = 13
              Caption = 'Volume 1 Carton'
              FocusControl = DBEdit25
            end
            object Label32: TLabel
              Left = 341
              Top = 13
              Width = 29
              Height = 13
              Caption = 'L (cm)'
              FocusControl = dbeComprimento_Cx
            end
            object Label33: TLabel
              Left = 375
              Top = 13
              Width = 31
              Height = 13
              Caption = 'W(cm)'
              FocusControl = dbeLargura_Cx
            end
            object Label34: TLabel
              Left = 409
              Top = 13
              Width = 28
              Height = 13
              Caption = 'H(cm)'
              FocusControl = dbeAltura_Cx
            end
            object Label35: TLabel
              Left = 9
              Top = 13
              Width = 83
              Height = 13
              Caption = 'Net W Product(g)'
              FocusControl = dbePes_unitario
            end
            object DBEdit23: TDBEdit
              Left = 100
              Top = 29
              Width = 73
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'qtd_caixas'
              DataSource = ds_prod_list_itens
              ReadOnly = True
              TabOrder = 1
            end
            object dbeUn_Master: TDBEdit
              Left = 174
              Top = 29
              Width = 65
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'un_master'
              DataSource = ds_prod_list_itens
              ReadOnly = True
              TabOrder = 2
            end
            object dbePes_Bruto_Cx: TDBEdit
              Left = 244
              Top = 29
              Width = 76
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'pes_bruto_cx'
              DataSource = ds_prod_list_itens
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit25: TDBEdit
              Left = 444
              Top = 29
              Width = 81
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'volume_caixa'
              DataSource = ds_prod_list_itens
              ReadOnly = True
              TabOrder = 7
            end
            object dbeComprimento_Cx: TDBEdit
              Left = 341
              Top = 29
              Width = 33
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'comprimento_cx'
              DataSource = ds_prod_list_itens
              ReadOnly = True
              TabOrder = 4
            end
            object dbeLargura_Cx: TDBEdit
              Left = 375
              Top = 29
              Width = 33
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'largura_cx'
              DataSource = ds_prod_list_itens
              ReadOnly = True
              TabOrder = 5
            end
            object dbeAltura_Cx: TDBEdit
              Left = 409
              Top = 29
              Width = 33
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'altura_cx'
              DataSource = ds_prod_list_itens
              ReadOnly = True
              TabOrder = 6
            end
            object dbePes_unitario: TDBEdit
              Left = 9
              Top = 29
              Width = 89
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'pes_unitario'
              DataSource = ds_prod_list_itens
              ReadOnly = True
              TabOrder = 0
            end
          end
          object dbcCadastro: TDBCheckBox
            Left = 562
            Top = 192
            Width = 14
            Height = 17
            DataField = 'ies_cadastro'
            DataSource = ds_prod_list_itens
            TabOrder = 18
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object tsCartons: TTabSheet
          Caption = 'Special Cartons'
          ImageIndex = 1
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 1264
            Height = 191
            Align = alTop
            Caption = 'Special Cartons'
            TabOrder = 0
            object dbgEmbEsp: TJvDBUltimGrid
              Left = 2
              Top = 15
              Width = 807
              Height = 174
              Align = alLeft
              DataSource = ds_emb_esp
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              MultiSelect = True
              AutoSizeColumns = True
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 16
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'qtd_caixas'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pes_bruto_cx'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pes_bruto'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'altura_cx'
                  Width = 54
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'largura_cx'
                  Width = 54
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'comprimento_cx'
                  Width = 54
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'volume_caixa'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vol_total'
                  Width = 107
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'num_fatura'
                  Width = 161
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Left = 809
              Top = 15
              Width = 453
              Height = 174
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label36: TLabel
                Left = 1
                Top = 2
                Width = 55
                Height = 13
                Caption = 'Qty Cartons'
                FocusControl = dbeQtdCaixas
              end
              object Label37: TLabel
                Left = 64
                Top = 2
                Width = 75
                Height = 13
                Caption = 'Gross W.Carton'
                FocusControl = DBEdit31
              end
              object Label38: TLabel
                Left = 168
                Top = 2
                Width = 71
                Height = 13
                Caption = 'Total Gross W.'
                FocusControl = DBEdit32
              end
              object Label40: TLabel
                Left = 1
                Top = 42
                Width = 28
                Height = 13
                Caption = 'H(cm)'
                FocusControl = DBEdit34
              end
              object Label41: TLabel
                Left = 84
                Top = 42
                Width = 31
                Height = 13
                Caption = 'W(cm)'
                FocusControl = DBEdit35
              end
              object Label42: TLabel
                Left = 167
                Top = 42
                Width = 26
                Height = 13
                Caption = 'L(cm)'
                FocusControl = DBEdit36
              end
              object Label43: TLabel
                Left = 249
                Top = 42
                Width = 69
                Height = 13
                Caption = 'Volume Carton'
                FocusControl = DBEdit37
              end
              object Label44: TLabel
                Left = 249
                Top = 82
                Width = 101
                Height = 13
                Caption = 'Total Volume Cartons'
                FocusControl = DBEdit38
              end
              object Label45: TLabel
                Left = 1
                Top = 82
                Width = 35
                Height = 13
                Caption = 'Invoice'
                FocusControl = DBEdit39
              end
              object dbeQtdCaixas: TDBEdit
                Left = 1
                Top = 18
                Width = 56
                Height = 21
                DataField = 'qtd_caixas'
                DataSource = ds_emb_esp
                TabOrder = 0
              end
              object DBEdit31: TDBEdit
                Left = 64
                Top = 18
                Width = 100
                Height = 21
                DataField = 'pes_bruto_cx'
                DataSource = ds_emb_esp
                TabOrder = 1
              end
              object DBEdit32: TDBEdit
                Left = 168
                Top = 18
                Width = 100
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'pes_bruto'
                DataSource = ds_emb_esp
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit34: TDBEdit
                Left = 1
                Top = 58
                Width = 80
                Height = 21
                DataField = 'altura_cx'
                DataSource = ds_emb_esp
                TabOrder = 3
              end
              object DBEdit35: TDBEdit
                Left = 84
                Top = 58
                Width = 80
                Height = 21
                DataField = 'largura_cx'
                DataSource = ds_emb_esp
                TabOrder = 4
              end
              object DBEdit36: TDBEdit
                Left = 167
                Top = 58
                Width = 80
                Height = 21
                DataField = 'comprimento_cx'
                DataSource = ds_emb_esp
                TabOrder = 5
              end
              object DBEdit37: TDBEdit
                Left = 249
                Top = 58
                Width = 100
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'volume_caixa'
                DataSource = ds_emb_esp
                ReadOnly = True
                TabOrder = 6
              end
              object DBEdit38: TDBEdit
                Left = 249
                Top = 98
                Width = 100
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'vol_total'
                DataSource = ds_emb_esp
                ReadOnly = True
                TabOrder = 7
              end
              object DBEdit39: TDBEdit
                Left = 1
                Top = 98
                Width = 159
                Height = 21
                CharCase = ecUpperCase
                DataField = 'num_fatura'
                DataSource = ds_emb_esp
                TabOrder = 8
              end
              object btnAddEmbEsp: TBitBtn
                Left = 1
                Top = 142
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 9
                OnClick = btnAddEmbEspClick
              end
              object btnDelEmbEsp: TBitBtn
                Left = 86
                Top = 145
                Width = 75
                Height = 22
                Caption = 'Delete'
                TabOrder = 10
                OnClick = btnDelEmbEspClick
              end
              object btnConfirmEmbEsp: TBitBtn
                Left = 166
                Top = 142
                Width = 75
                Height = 25
                Caption = 'Confirm'
                TabOrder = 11
                OnClick = btnConfirmEmbEspClick
              end
              object btnCancelEmbEsp: TBitBtn
                Left = 246
                Top = 142
                Width = 75
                Height = 25
                Caption = 'Cancel'
                TabOrder = 12
                OnClick = btnCancelEmbEspClick
              end
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 191
            Width = 1264
            Height = 152
            Align = alClient
            Caption = 'Products of Special Carton'
            TabOrder = 1
            object Panel3: TPanel
              Left = 809
              Top = 15
              Width = 453
              Height = 135
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object btnAddEmbEspItem: TBitBtn
                Left = 1
                Top = 105
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 0
                OnClick = btnAddEmbEspItemClick
              end
              object btnDelEmbEspItem: TBitBtn
                Left = 86
                Top = 105
                Width = 75
                Height = 25
                Caption = 'Delete'
                TabOrder = 1
                OnClick = btnDelEmbEspItemClick
              end
              object btnConfirmEmbEspItem: TBitBtn
                Left = 166
                Top = 105
                Width = 75
                Height = 25
                Caption = 'Confirm'
                TabOrder = 2
              end
              object btnCancelEmbEspItem: TBitBtn
                Left = 247
                Top = 105
                Width = 75
                Height = 25
                Caption = 'Cancel'
                TabOrder = 3
              end
            end
            object dbgEmbEspItens: TJvDBUltimGrid
              Left = 2
              Top = 15
              Width = 807
              Height = 135
              Align = alLeft
              DataSource = ds_emb_esp_itens
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              MultiSelect = True
              ShowCellHint = True
              AutoSizeColumns = True
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 16
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'num_pedido_cli'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'num_pedido_for'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_produto'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cal_den_produto'
                  Width = 308
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'un_med'
                  Width = 27
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtd_romanear'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pes_liquido'
                  Width = 82
                  Visible = True
                end>
            end
          end
        end
        object tsPallets: TTabSheet
          Caption = 'Pallets'
          ImageIndex = 2
        end
      end
    end
    object tsFaturas: TTabSheet
      Caption = 'Faturas'
      ImageIndex = 1
      object Label2: TLabel
        Left = 12
        Top = -1
        Width = 178
        Height = 13
        Caption = 'Faturas Importadas da Production List'
      end
      object dbgFaturas: TDBGridCheck
        Left = 4
        Top = 23
        Width = 399
        Height = 141
        DataSource = dsFaturasNovasPrl
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 16
        TitleRowHeight = 17
        BoolFields.Strings = (
          'ies_faturar')
        Columns = <
          item
            Expanded = False
            FieldName = 'num_fatura'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido_esp'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ies_faturar'
            Width = 38
            Visible = True
          end>
      end
    end
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 350
    Top = 10
    object actAbrir: TAction
      Caption = 'Open'
      ImageIndex = 235
      OnExecute = actAbrirExecute
    end
    object actFaturar: TAction
      Caption = 'Faturar e Atualizar Excel'
      Enabled = False
      ImageIndex = 159
      OnExecute = actFaturarExecute
    end
    object actGerar: TAction
      Caption = 'Save'
      ImageIndex = 235
      OnExecute = actGerarExecute
    end
  end
  object Prod_List: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = Prod_ListAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list"'
      'where'
      '  "prod_list"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "prod_list"."cod_fornecedor" = :"OLD_cod_fornecedor"')
    InsertSQL.Strings = (
      'insert into "prod_list"'
      
        '  ("prod_list"."cod_empresa", "prod_list"."cod_cliente", "prod_l' +
        'ist"."cod_fornecedor", '
      
        '   "prod_list"."num_prod_list", "prod_list"."ies_gerar", "prod_l' +
        'ist"."ies_pallets", '
      '   "prod_list"."ies_plan_default")'
      'values'
      
        '  (:"cod_empresa", :"cod_cliente", :"cod_fornecedor", :"num_prod' +
        '_list", '
      '   :"ies_gerar", :"ies_pallets", :"ies_plan_default")')
    RefreshSQL.Strings = (
      'Select '
      '  "prod_list"."cod_empresa",'
      '  "prod_list"."cod_cliente",'
      '  "prod_list"."cod_fornecedor",'
      '  "prod_list"."num_prod_list",'
      '  "prod_list"."ies_gerar",'
      '  "prod_list"."ies_pallets",'
      '  "prod_list"."ies_plan_default"'
      'from "prod_list" '
      'where'
      '  "prod_list"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list"."cod_cliente" = :"cod_cliente" and'
      '  "prod_list"."cod_fornecedor" = :"cod_fornecedor"')
    SelectSQL.Strings = (
      'select * from "prod_list"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_cliente" = :cod_cliente'
      '  and "cod_fornecedor" = :cod_fornecedor')
    ModifySQL.Strings = (
      'update "prod_list"'
      'set'
      '  "prod_list"."cod_empresa" = :"cod_empresa",'
      '  "prod_list"."cod_cliente" = :"cod_cliente",'
      '  "prod_list"."cod_fornecedor" = :"cod_fornecedor",'
      '  "prod_list"."num_prod_list" = :"num_prod_list",'
      '  "prod_list"."ies_gerar" = :"ies_gerar",'
      '  "prod_list"."ies_pallets" = :"ies_pallets",'
      '  "prod_list"."ies_plan_default" = :"ies_plan_default"'
      'where'
      '  "prod_list"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "prod_list"."cod_fornecedor" = :"OLD_cod_fornecedor"')
    Left = 502
    Top = 115
    object Prod_Listcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Prod_Listcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"prod_list"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object Prod_Listcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"prod_list"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Prod_Listnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list"."num_prod_list"'
    end
    object Prod_Listies_gerar: TIBStringField
      FieldName = 'ies_gerar'
      Origin = '"prod_list"."ies_gerar"'
      FixedChar = True
      Size = 1
    end
    object Prod_Listies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"prod_list"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object Prod_Listies_plan_default: TSmallintField
      FieldName = 'ies_plan_default'
      Origin = '"prod_list"."ies_plan_default"'
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 1050
    Top = 16
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 1081
    Top = 16
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 1115
    Top = 16
  end
  object QrAux: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Left = 935
    Top = 172
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 384
    Top = 9
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object parametro_comercialcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"parametro_comercial"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object parametro_comercialies_modelo: TIntegerField
      FieldName = 'ies_modelo'
      Origin = '"parametro_comercial"."ies_modelo"'
    end
    object parametro_comercialmod_romaneio: TBlobField
      FieldName = 'mod_romaneio'
      Origin = '"parametro_comercial"."mod_romaneio"'
      Size = 8
    end
    object parametro_comercialcod_tip_embarque: TSmallintField
      FieldName = 'cod_tip_embarque'
      Origin = '"parametro_comercial"."cod_tip_embarque"'
    end
    object parametro_comercialdir_planilhas: TIBStringField
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
    end
    object parametro_comercialmod_ship_list: TBlobField
      FieldName = 'mod_ship_list'
      Origin = '"parametro_comercial"."mod_ship_list"'
      Size = 8
    end
    object parametro_comercialdias_inspecao: TSmallintField
      FieldName = 'dias_inspecao'
      Origin = '"parametro_comercial"."dias_inspecao"'
    end
    object parametro_comercialult_num_prod_list: TIntegerField
      FieldName = 'ult_num_prod_list'
      Origin = '"parametro_comercial"."ult_num_prod_list"'
    end
  end
  object ProdutoEmb: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = ProdutoEmbAfterOpen
    AfterPost = ProdutoEmbAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "produto"'
      'where'
      '  "produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "produto"'
      
        '  ("produto"."cod_empresa", "produto"."cod_produto", "produto"."' +
        'pes_unitario", '
      '   "produto"."obs_peso_unitario", "produto"."dat_cad_peso")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"pes_unitario", :"obs_peso_u' +
        'nitario", '
      '   :"dat_cad_peso")')
    RefreshSQL.Strings = (
      'Select * from "produto" '
      'where'
      '  "produto"."cod_empresa" = :"cod_empresa" and'
      '  "produto"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "cod_produto", "pes_unitario", "obs_peso_u' +
        'nitario", "dat_cad_peso"'
      'from "produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "produto"'
      'set'
      '  "produto"."pes_unitario" = :"pes_unitario",'
      '  "produto"."obs_peso_unitario" = :"obs_peso_unitario",'
      '  "produto"."dat_cad_peso" = :"dat_cad_peso"'
      'where'
      '  "produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto"."cod_produto" = :"OLD_cod_produto"')
    Left = 122
    Top = 206
    object ProdutoEmbcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutoEmbcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ProdutoEmbpes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
    object ProdutoEmbobs_peso_unitario: TIBStringField
      FieldName = 'obs_peso_unitario'
      Origin = '"produto"."obs_peso_unitario"'
      Size = 255
    end
    object ProdutoEmbdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"produto"."dat_cad_peso"'
    end
  end
  object EmbalagemEmb: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = EmbalagemEmbAfterPost
    BeforePost = EmbalagemEmbBeforePost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "embalagem"'
      '  ("embalagem"."cod_empresa", "embalagem"."cod_produto", '
      '"embalagem"."peso_unitario", '
      
        '   "embalagem"."altura", "embalagem"."largura", "embalagem"."pro' +
        'fundidade", '
      
        '   "embalagem"."volume", "embalagem"."area", "embalagem"."qtd_ma' +
        'ster", '
      '   "embalagem"."qtd_inner", "embalagem"."observacao", '
      '"embalagem"."dat_cadastro", '
      '   "embalagem"."dat_cad_dimensoes", "embalagem"."dat_cad_peso", '
      '"embalagem"."dat_cad_master", '
      '   "embalagem"."dat_cad_inner", "embalagem"."obs_caixas", '
      '   "embalagem"."pes_bruto_cx")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"peso_unitario", :"altura", ' +
        ':"largura", '
      
        '   :"profundidade", :"volume", :"area", :"qtd_master", :"qtd_inn' +
        'er", :"observacao", '
      
        '   :"dat_cadastro", :"dat_cad_dimensoes", :"dat_cad_peso", :"dat' +
        '_cad_master", '
      '   :"dat_cad_inner", :"obs_caixas", :"pes_bruto_cx")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem"."cod_empresa",'
      '  "embalagem"."cod_produto",'
      '  "embalagem"."peso_unitario",'
      '  "embalagem"."altura",'
      '  "embalagem"."largura",'
      '  "embalagem"."profundidade",'
      '  "embalagem"."volume",'
      '  "embalagem"."area",'
      '  "embalagem"."qtd_master",'
      '  "embalagem"."qtd_inner",'
      '  "embalagem"."observacao",'
      '  "embalagem"."dat_cadastro",'
      '  "embalagem"."dat_cad_dimensoes",'
      '  "embalagem"."dat_cad_peso",'
      '  "embalagem"."dat_cad_master",'
      '  "embalagem"."dat_cad_inner",'
      '  "embalagem"."obs_caixas",'
      '  "embalagem"."pes_bruto_cx"'
      'from "embalagem" '
      'where'
      '  "embalagem"."cod_empresa" = :"cod_empresa" and'
      '  "embalagem"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select *'
      'from "embalagem"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "embalagem"'
      'set'
      '  "embalagem"."cod_empresa" = :"cod_empresa",'
      '  "embalagem"."cod_produto" = :"cod_produto",'
      '  "embalagem"."peso_unitario" = :"peso_unitario",'
      '  "embalagem"."altura" = :"altura",'
      '  "embalagem"."largura" = :"largura",'
      '  "embalagem"."profundidade" = :"profundidade",'
      '  "embalagem"."volume" = :"volume",'
      '  "embalagem"."area" = :"area",'
      '  "embalagem"."qtd_master" = :"qtd_master",'
      '  "embalagem"."qtd_inner" = :"qtd_inner",'
      '  "embalagem"."observacao" = :"observacao",'
      '  "embalagem"."dat_cadastro" = :"dat_cadastro",'
      '  "embalagem"."dat_cad_dimensoes" = :"dat_cad_dimensoes",'
      '  "embalagem"."dat_cad_peso" = :"dat_cad_peso",'
      '  "embalagem"."dat_cad_master" = :"dat_cad_master",'
      '  "embalagem"."dat_cad_inner" = :"dat_cad_inner",'
      '  "embalagem"."obs_caixas" = :"obs_caixas",'
      '  "embalagem"."pes_bruto_cx" = :"pes_bruto_cx"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    Left = 153
    Top = 206
    object EmbalagemEmbcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EmbalagemEmbcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object EmbalagemEmbpeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
    end
    object EmbalagemEmbaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmblargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmbprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmbvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      Precision = 18
      Size = 4
    end
    object EmbalagemEmbarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      Precision = 18
      Size = 4
    end
    object EmbalagemEmbqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmbqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object EmbalagemEmbobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem"."observacao"'
      Size = 255
    end
    object EmbalagemEmbdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem"."dat_cadastro"'
    end
    object EmbalagemEmbdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem"."dat_cad_dimensoes"'
    end
    object EmbalagemEmbdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem"."dat_cad_peso"'
    end
    object EmbalagemEmbdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem"."dat_cad_master"'
    end
    object EmbalagemEmbdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem"."dat_cad_inner"'
    end
    object EmbalagemEmbobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem"."obs_caixas"'
      Size = 255
    end
    object EmbalagemEmbpes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem"."pes_bruto_cx"'
    end
  end
  object Embalagem_Hist: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = Embalagem_HistAfterPost
    OnNewRecord = Embalagem_HistNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem_hist"'
      'where'
      '  "embalagem_hist"."sequencia" = :"OLD_sequencia"')
    InsertSQL.Strings = (
      'insert into "embalagem_hist"'
      
        '  ("embalagem_hist"."sequencia", "embalagem_hist"."cod_empresa",' +
        ' "embalagem_hist"."cod_produto", '
      
        '   "embalagem_hist"."peso_unitario", "embalagem_hist"."altura", ' +
        '"embalagem_hist"."largura", '
      
        '   "embalagem_hist"."profundidade", "embalagem_hist"."volume", "' +
        'embalagem_hist"."area", '
      
        '   "embalagem_hist"."qtd_master", "embalagem_hist"."qtd_inner", ' +
        '"embalagem_hist"."observacao", '
      
        '   "embalagem_hist"."dat_cadastro", "embalagem_hist"."dat_cad_di' +
        'mensoes", '
      
        '   "embalagem_hist"."dat_cad_peso", "embalagem_hist"."dat_cad_ma' +
        'ster", '
      
        '   "embalagem_hist"."dat_cad_inner", "embalagem_hist"."obs_caixa' +
        's",'
      '   "embalagem_hist"."pes_bruto_cx")'
      'values'
      
        '  (:"sequencia", :"cod_empresa", :"cod_produto", :"peso_unitario' +
        '", :"altura", '
      
        '   :"largura", :"profundidade", :"volume", :"area", :"qtd_master' +
        '", :"qtd_inner", '
      
        '   :"observacao", :"dat_cadastro", :"dat_cad_dimensoes", :"dat_c' +
        'ad_peso", '
      
        '   :"dat_cad_master", :"dat_cad_inner", :"obs_caixas", :"pes_bru' +
        'to_cx")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem_hist"."sequencia",'
      '  "embalagem_hist"."cod_empresa",'
      '  "embalagem_hist"."cod_produto",'
      '  "embalagem_hist"."peso_unitario",'
      '  "embalagem_hist"."altura",'
      '  "embalagem_hist"."largura",'
      '  "embalagem_hist"."profundidade",'
      '  "embalagem_hist"."volume",'
      '  "embalagem_hist"."area",'
      '  "embalagem_hist"."qtd_master",'
      '  "embalagem_hist"."qtd_inner",'
      '  "embalagem_hist"."observacao",'
      '  "embalagem_hist"."dat_cadastro",'
      '  "embalagem_hist"."dat_cad_dimensoes",'
      '  "embalagem_hist"."dat_cad_peso",'
      '  "embalagem_hist"."dat_cad_master",'
      '  "embalagem_hist"."dat_cad_inner",'
      '  "embalagem_hist"."obs_caixas",'
      '  "embalagem_hist"."pes_bruto_cx"'
      'from "embalagem_hist" '
      'where'
      '  "embalagem_hist"."sequencia" = :"sequencia"')
    SelectSQL.Strings = (
      'select * from "embalagem_hist"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto'
      'order by "dat_cadastro" desc')
    ModifySQL.Strings = (
      'update "embalagem_hist"'
      'set'
      '  "embalagem_hist"."sequencia" = :"sequencia",'
      '  "embalagem_hist"."cod_empresa" = :"cod_empresa",'
      '  "embalagem_hist"."cod_produto" = :"cod_produto",'
      '  "embalagem_hist"."peso_unitario" = :"peso_unitario",'
      '  "embalagem_hist"."altura" = :"altura",'
      '  "embalagem_hist"."largura" = :"largura",'
      '  "embalagem_hist"."profundidade" = :"profundidade",'
      '  "embalagem_hist"."volume" = :"volume",'
      '  "embalagem_hist"."area" = :"area",'
      '  "embalagem_hist"."qtd_master" = :"qtd_master",'
      '  "embalagem_hist"."qtd_inner" = :"qtd_inner",'
      '  "embalagem_hist"."observacao" = :"observacao",'
      '  "embalagem_hist"."dat_cadastro" = :"dat_cadastro",'
      '  "embalagem_hist"."dat_cad_dimensoes" = :"dat_cad_dimensoes",'
      '  "embalagem_hist"."dat_cad_peso" = :"dat_cad_peso",'
      '  "embalagem_hist"."dat_cad_master" = :"dat_cad_master",'
      '  "embalagem_hist"."dat_cad_inner" = :"dat_cad_inner",'
      '  "embalagem_hist"."obs_caixas" = :"obs_caixas",'
      '  "embalagem_hist"."pes_bruto_cx" = :"pes_bruto_cx"'
      'where'
      '  "embalagem_hist"."sequencia" = :"OLD_sequencia"')
    Left = 189
    Top = 206
    object Embalagem_Histsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = '"embalagem_hist"."sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Embalagem_Histcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem_hist"."cod_empresa"'
      Required = True
    end
    object Embalagem_Histcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"embalagem_hist"."cod_produto"'
      Required = True
      Size = 15
    end
    object Embalagem_Histpeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem_hist"."peso_unitario"'
    end
    object Embalagem_Histaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"embalagem_hist"."altura"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"embalagem_hist"."largura"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"embalagem_hist"."profundidade"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem_hist"."volume"'
      Precision = 18
      Size = 4
    end
    object Embalagem_Histarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem_hist"."area"'
      Precision = 18
      Size = 4
    end
    object Embalagem_Histqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem_hist"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem_hist"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem_hist"."observacao"'
      Size = 255
    end
    object Embalagem_Histdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem_hist"."dat_cadastro"'
    end
    object Embalagem_Histdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem_hist"."dat_cad_dimensoes"'
    end
    object Embalagem_Histdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem_hist"."dat_cad_peso"'
    end
    object Embalagem_Histdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem_hist"."dat_cad_master"'
    end
    object Embalagem_Histdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem_hist"."dat_cad_inner"'
    end
    object Embalagem_Histobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem_hist"."obs_caixas"'
      Size = 255
    end
    object Embalagem_Histpes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem_hist"."pes_bruto_cx"'
    end
  end
  object Clientes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      '/* selecionar Clientes do Fornececor */'
      'select a."cod_cliente", c."nom_cliente_reduz"'
      'from "pedido" a, "pedido_complemento" b, "cliente" c'
      'where'
      '      a."cod_empresa" = :cod_empresa'
      '  and b."cod_fornecedor" = :cod_fornecedor'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido"  = a."num_pedido"'
      '  and c."cod_cliente" = a."cod_cliente"'
      'group by 1,2'
      'order by 1')
    Left = 416
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object Clientescod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Required = True
      Size = 12
    end
    object Clientesnom_cliente_reduz: TIBStringField
      FieldName = 'nom_cliente_reduz'
      Required = True
      Size = 30
    end
  end
  object ds_Clientes: TDataSource
    DataSet = Clientes
    Left = 447
    Top = 40
  end
  object Fornecedores: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select f."cod_fornecedor", f."raz_social", f."raz_social_reduz"'
      'from "fornecedor" f'
      'order by 3')
    Left = 416
    Top = 8
    object Fornecedorescod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Fornecedoresraz_social: TIBStringField
      FieldName = 'raz_social'
      Origin = '"fornecedor"."raz_social"'
      Size = 50
    end
    object Fornecedoresraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
  object ds_Fornecedores: TDataSource
    DataSet = Fornecedores
    Left = 448
    Top = 8
  end
  object pedido_produto: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = pedido_produtoAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido_produto"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "pedido_produto"'
      
        '  ("pedido_produto"."qtd_romanear",  "pedido_produto"."qtd_saldo' +
        '", "pedido_produto"."ies_result_inspecao", '
      
        '   "pedido_produto"."txt_status_producao", "pedido_produto"."dat' +
        '_inspecao")'
      'values'
      
        '  (:"qtd_romanear", :"qtd_saldo", :"ies_result_inspecao", :"txt_' +
        'status_producao", '
      '   :"dat_inspecao")')
    RefreshSQL.Strings = (
      'select a."cod_empresa", a."num_pedido", a."num_sequencia",'
      
        '       a."qtd_produto", a."qtd_cancelada", a."qtd_romaneada", a.' +
        '"qtd_faturada", a."qtd_pendente",  '
      '       a."qtd_romanear",  a."qtd_saldo",'
      
        '       a."qtd_export_box", a."qtd_inner_box", a."vol_caixas", a.' +
        '"pes_liquido", a."pes_bruto", a."ies_caixa_fechada",'
      
        '       a."vlr_unitario", a."vlr_unitario_esp", a."vlr_liquido", ' +
        'a."vlr_liquido_esp",'
      
        '       a."ies_result_inspecao", a."txt_status_producao", a."dat_' +
        'inspecao", a."obs_preco"'
      'from "pedido_produto" a'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_pedido" = :num_pedido'
      '   and "num_sequencia" = :num_sequencia')
    SelectSQL.Strings = (
      'select a."cod_empresa", a."num_pedido", a."num_sequencia",'
      
        '       a."qtd_produto", a."qtd_cancelada", a."qtd_romaneada", a.' +
        '"qtd_faturada", a."qtd_pendente", '
      '       a."qtd_romanear", a."qtd_saldo",'
      
        '       a."qtd_export_box", a."qtd_inner_box", a."vol_caixas", a.' +
        '"pes_liquido", a."pes_bruto", a."ies_caixa_fechada",'
      
        '       a."vlr_unitario", a."vlr_unitario_esp", a."vlr_liquido", ' +
        'a."vlr_liquido_esp",'
      
        '       a."ies_result_inspecao", a."txt_status_producao", a."dat_' +
        'inspecao", a."obs_preco"'
      'from "pedido_produto" a'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_pedido" = :num_pedido'
      '   and "num_sequencia" = :num_sequencia')
    ModifySQL.Strings = (
      'update "pedido_produto"'
      'set'
      '  "pedido_produto"."qtd_romanear" = :"qtd_romanear",'
      '  "pedido_produto"."qtd_saldo" = :"qtd_saldo",'
      
        '  "pedido_produto"."ies_result_inspecao" = :"ies_result_inspecao' +
        '",'
      
        '  "pedido_produto"."txt_status_producao" = :"txt_status_producao' +
        '",'
      '  "pedido_produto"."dat_inspecao" = :"dat_inspecao"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 905
    Top = 136
    object pedido_produtocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_produtonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_produto"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pedido_produtonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pedido_produtoqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"pedido_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_cancelada: TIBBCDField
      FieldName = 'qtd_cancelada'
      Origin = '"pedido_produto"."qtd_cancelada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_romaneada: TIBBCDField
      FieldName = 'qtd_romaneada'
      Origin = '"pedido_produto"."qtd_romaneada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_faturada: TIBBCDField
      FieldName = 'qtd_faturada'
      Origin = '"pedido_produto"."qtd_faturada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"pedido_produto"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_saldo: TIBBCDField
      FieldName = 'qtd_saldo'
      Origin = '"pedido_produto"."qtd_saldo"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"pedido_produto"."qtd_export_box"'
    end
    object pedido_produtoqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"pedido_produto"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object pedido_produtovol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"pedido_produto"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object pedido_produtopes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"pedido_produto"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object pedido_produtopes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"pedido_produto"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object pedido_produtoies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"pedido_produto"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object pedido_produtovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
    end
    object pedido_produtovlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = '"pedido_produto"."vlr_unitario_esp"'
    end
    object pedido_produtovlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object pedido_produtovlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido_produto"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object pedido_produtoies_result_inspecao: TIBStringField
      FieldName = 'ies_result_inspecao'
      Origin = '"pedido_produto"."ies_result_inspecao"'
      FixedChar = True
      Size = 1
    end
    object pedido_produtotxt_status_producao: TMemoField
      FieldName = 'txt_status_producao'
      Origin = '"pedido_produto"."txt_status_producao"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtodat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = '"pedido_produto"."dat_inspecao"'
    end
    object pedido_produtoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"pedido_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtoqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"pedido_produto"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
  end
  object ProxSequencia: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select MAX(a."num_sequencia") + 1 "prox_sequencia"'
      'from "pedido_produto" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido')
    Left = 901
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido'
        ParamType = ptUnknown
      end>
    object ProxSequenciaprox_sequencia: TLargeintField
      FieldName = 'prox_sequencia'
    end
  end
  object spr_calc_pedido: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_calc_pedido'
    Left = 935
    Top = 136
  end
  object prod_list_itens: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = prod_list_itensAfterDelete
    AfterPost = prod_list_itensAfterPost
    OnCalcFields = prod_list_itensCalcFields
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      
        '  ("prod_list_itens"."cod_empresa", "prod_list_itens"."num_prod_' +
        'list", '
      
        '   "prod_list_itens"."num_sequencia", "prod_list_itens"."num_fat' +
        'ura", "prod_list_itens"."num_pedido", '
      
        '   "prod_list_itens"."num_seq_pedido", "prod_list_itens"."num_pe' +
        'dido_for", '
      
        '   "prod_list_itens"."num_pedido_cli", "prod_list_itens"."dat_em' +
        'issao", '
      
        '   "prod_list_itens"."cod_produto", "prod_list_itens"."dat_ini_p' +
        'roducao", '
      
        '   "prod_list_itens"."txt_status_producao", "prod_list_itens"."d' +
        'at_inspecao", '
      
        '   "prod_list_itens"."ies_result_inspecao", "prod_list_itens"."q' +
        'td_romanear", '
      
        '   "prod_list_itens"."qtd_confirmada", "prod_list_itens"."qtd_pe' +
        'ndente", '
      
        '   "prod_list_itens"."qtd_embarcada", "prod_list_itens"."preco_r' +
        'eal", "prod_list_itens"."vlr_liquido", '
      
        '   "prod_list_itens"."preco_esp", "prod_list_itens"."vlr_liquido' +
        '_esp", '
      
        '   "prod_list_itens"."vol_total", "prod_list_itens"."pes_bruto",' +
        ' "prod_list_itens"."pes_liquido", '
      
        '   "prod_list_itens"."qtd_caixas", "prod_list_itens"."un_master"' +
        ', "prod_list_itens"."pes_bruto_cx", '
      
        '   "prod_list_itens"."altura_cx", "prod_list_itens"."largura_cx"' +
        ', "prod_list_itens"."comprimento_cx", '
      
        '   "prod_list_itens"."volume_caixa", "prod_list_itens"."ies_caix' +
        'a_fechada", '
      
        '   "prod_list_itens"."pes_unitario", "prod_list_itens"."seq_pall' +
        'et", "prod_list_itens"."qtd_pallet", '
      
        '   "prod_list_itens"."pes_bruto_pallet", "prod_list_itens"."pes_' +
        'liquido_pallet", '
      
        '   "prod_list_itens"."comprimento_pallet", "prod_list_itens"."la' +
        'rgura_pallet", '
      
        '   "prod_list_itens"."altura_pallet", "prod_list_itens"."volume_' +
        'pallet", '
      
        '   "prod_list_itens"."pes_pallet_vazio", "prod_list_itens"."ies_' +
        'emb_esp", '
      
        '   "prod_list_itens"."seq_emb_esp", "prod_list_itens"."ies_erros' +
        '", "prod_list_itens"."ies_cadastro", '
      
        '   "prod_list_itens"."cal_preco_real", "prod_list_itens"."cal_vl' +
        'r_liquido", '
      
        '   "prod_list_itens"."cal_preco_esp", "prod_list_itens"."cal_vlr' +
        '_liquido_esp", '
      
        '   "prod_list_itens"."cal_vol_total", "prod_list_itens"."cal_pes' +
        '_bruto", '
      
        '   "prod_list_itens"."cal_pes_liquido", "prod_list_itens"."cal_q' +
        'td_caixas", '
      
        '   "prod_list_itens"."cal_volume_caixa", "prod_list_itens"."ies_' +
        'sit_fat", '
      
        '   "prod_list_itens"."num_nota_fiscal", "prod_list_itens"."num_s' +
        'eq_nf", '
      
        '   "prod_list_itens"."grupo", "prod_list_itens"."seq_grupo", "pr' +
        'od_list_itens"."dat_upd_etd",'
      
        '   "prod_list_itens"."etd_factory", "prod_list_itens"."ies_palle' +
        't")'
      'values'
      
        '  (:"cod_empresa", :"num_prod_list", :"num_sequencia", :"num_fat' +
        'ura", :"num_pedido", '
      
        '   :"num_seq_pedido", :"num_pedido_for", :"num_pedido_cli", :"da' +
        't_emissao", '
      
        '   :"cod_produto", :"dat_ini_producao", :"txt_status_producao", ' +
        ':"dat_inspecao", '
      
        '   :"ies_result_inspecao", :"qtd_romanear", :"qtd_confirmada", :' +
        '"qtd_pendente", '
      
        '   :"qtd_embarcada", :"preco_real", :"vlr_liquido", :"preco_esp"' +
        ', :"vlr_liquido_esp", '
      
        '   :"vol_total", :"pes_bruto", :"pes_liquido", :"qtd_caixas", :"' +
        'un_master", '
      
        '   :"pes_bruto_cx", :"altura_cx", :"largura_cx", :"comprimento_c' +
        'x", :"volume_caixa", '
      
        '   :"ies_caixa_fechada", :"pes_unitario", :"seq_pallet", :"qtd_p' +
        'allet", '
      
        '   :"pes_bruto_pallet", :"pes_liquido_pallet", :"comprimento_pal' +
        'let", :"largura_pallet", '
      
        '   :"altura_pallet", :"volume_pallet", :"pes_pallet_vazio", :"ie' +
        's_emb_esp", '
      
        '   :"seq_emb_esp", :"ies_erros", :"ies_cadastro", :"cal_preco_re' +
        'al", :"cal_vlr_liquido", '
      
        '   :"cal_preco_esp", :"cal_vlr_liquido_esp", :"cal_vol_total", :' +
        '"cal_pes_bruto", '
      
        '   :"cal_pes_liquido", :"cal_qtd_caixas", :"cal_volume_caixa", :' +
        '"ies_sit_fat", '
      
        '   :"num_nota_fiscal", :"num_seq_nf", :"grupo", :"seq_grupo", :"' +
        'dat_upd_etd", '
      '   :"etd_factory", :"ies_pallet")')
    RefreshSQL.Strings = (
      'Select '
      '  "prod_list_itens"."cod_empresa",'
      '  "prod_list_itens"."num_prod_list",'
      '  "prod_list_itens"."num_sequencia",'
      '  "prod_list_itens"."num_fatura",'
      '  "prod_list_itens"."num_pedido",'
      '  "prod_list_itens"."num_seq_pedido",'
      '  "prod_list_itens"."num_pedido_for",'
      '  "prod_list_itens"."num_pedido_cli",'
      '  "prod_list_itens"."dat_emissao",'
      '  "prod_list_itens"."cod_produto",'
      '  "prod_list_itens"."dat_ini_producao",'
      '  "prod_list_itens"."txt_status_producao",'
      '  "prod_list_itens"."dat_inspecao",'
      '  "prod_list_itens"."ies_result_inspecao",'
      '  "prod_list_itens"."qtd_romanear",'
      '  "prod_list_itens"."qtd_confirmada",'
      '  "prod_list_itens"."qtd_pendente",'
      '  "prod_list_itens"."qtd_embarcada",'
      '  "prod_list_itens"."preco_real",'
      '  "prod_list_itens"."vlr_liquido",'
      '  "prod_list_itens"."preco_esp",'
      '  "prod_list_itens"."vlr_liquido_esp",'
      '  "prod_list_itens"."vol_total",'
      '  "prod_list_itens"."pes_bruto",'
      '  "prod_list_itens"."pes_liquido",'
      '  "prod_list_itens"."qtd_caixas",'
      '  "prod_list_itens"."un_master",'
      '  "prod_list_itens"."pes_bruto_cx",'
      '  "prod_list_itens"."altura_cx",'
      '  "prod_list_itens"."largura_cx",'
      '  "prod_list_itens"."comprimento_cx",'
      '  "prod_list_itens"."volume_caixa",'
      '  "prod_list_itens"."ies_caixa_fechada",'
      '  "prod_list_itens"."pes_unitario",'
      '  "prod_list_itens"."seq_pallet",'
      '  "prod_list_itens"."qtd_pallet",'
      '  "prod_list_itens"."pes_bruto_pallet",'
      '  "prod_list_itens"."pes_liquido_pallet",'
      '  "prod_list_itens"."comprimento_pallet",'
      '  "prod_list_itens"."largura_pallet",'
      '  "prod_list_itens"."altura_pallet",'
      '  "prod_list_itens"."volume_pallet",'
      '  "prod_list_itens"."pes_pallet_vazio",'
      '  "prod_list_itens"."ies_emb_esp",'
      '  "prod_list_itens"."seq_emb_esp",'
      '  "prod_list_itens"."ies_erros",'
      '  "prod_list_itens"."ies_cadastro",'
      '  "prod_list_itens"."cal_preco_real",'
      '  "prod_list_itens"."cal_vlr_liquido",'
      '  "prod_list_itens"."cal_preco_esp",'
      '  "prod_list_itens"."cal_vlr_liquido_esp",'
      '  "prod_list_itens"."cal_vol_total",'
      '  "prod_list_itens"."cal_pes_bruto",'
      '  "prod_list_itens"."cal_pes_liquido",'
      '  "prod_list_itens"."cal_qtd_caixas",'
      '  "prod_list_itens"."cal_volume_caixa",'
      '  "prod_list_itens"."ies_sit_fat",'
      '  "prod_list_itens"."num_nota_fiscal",'
      '  "prod_list_itens"."num_seq_nf",'
      '  "prod_list_itens"."grupo",'
      '  "prod_list_itens"."seq_grupo",'
      '  "prod_list_itens"."dat_upd_etd",'
      '  "prod_list_itens"."etd_factory", '
      '  "prod_list_itens"."ies_pallet"'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select * from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      
        'order by "dat_emissao", "num_pedido", "cod_produto", "num_seq_pe' +
        'dido"')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa",'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list",'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia",'
      '  "prod_list_itens"."num_fatura" = :"num_fatura",'
      '  "prod_list_itens"."num_pedido" = :"num_pedido",'
      '  "prod_list_itens"."num_seq_pedido" = :"num_seq_pedido",'
      '  "prod_list_itens"."num_pedido_for" = :"num_pedido_for",'
      '  "prod_list_itens"."num_pedido_cli" = :"num_pedido_cli",'
      '  "prod_list_itens"."dat_emissao" = :"dat_emissao",'
      '  "prod_list_itens"."cod_produto" = :"cod_produto",'
      '  "prod_list_itens"."dat_ini_producao" = :"dat_ini_producao",'
      
        '  "prod_list_itens"."txt_status_producao" = :"txt_status_produca' +
        'o",'
      '  "prod_list_itens"."dat_inspecao" = :"dat_inspecao",'
      
        '  "prod_list_itens"."ies_result_inspecao" = :"ies_result_inspeca' +
        'o",'
      '  "prod_list_itens"."qtd_romanear" = :"qtd_romanear",'
      '  "prod_list_itens"."qtd_confirmada" = :"qtd_confirmada",'
      '  "prod_list_itens"."qtd_pendente" = :"qtd_pendente",'
      '  "prod_list_itens"."qtd_embarcada" = :"qtd_embarcada",'
      '  "prod_list_itens"."preco_real" = :"preco_real",'
      '  "prod_list_itens"."vlr_liquido" = :"vlr_liquido",'
      '  "prod_list_itens"."preco_esp" = :"preco_esp",'
      '  "prod_list_itens"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "prod_list_itens"."vol_total" = :"vol_total",'
      '  "prod_list_itens"."pes_bruto" = :"pes_bruto",'
      '  "prod_list_itens"."pes_liquido" = :"pes_liquido",'
      '  "prod_list_itens"."qtd_caixas" = :"qtd_caixas",'
      '  "prod_list_itens"."un_master" = :"un_master",'
      '  "prod_list_itens"."pes_bruto_cx" = :"pes_bruto_cx",'
      '  "prod_list_itens"."altura_cx" = :"altura_cx",'
      '  "prod_list_itens"."largura_cx" = :"largura_cx",'
      '  "prod_list_itens"."comprimento_cx" = :"comprimento_cx",'
      '  "prod_list_itens"."volume_caixa" = :"volume_caixa",'
      '  "prod_list_itens"."ies_caixa_fechada" = :"ies_caixa_fechada",'
      '  "prod_list_itens"."pes_unitario" = :"pes_unitario",'
      '  "prod_list_itens"."seq_pallet" = :"seq_pallet",'
      '  "prod_list_itens"."qtd_pallet" = :"qtd_pallet",'
      '  "prod_list_itens"."pes_bruto_pallet" = :"pes_bruto_pallet",'
      
        '  "prod_list_itens"."pes_liquido_pallet" = :"pes_liquido_pallet"' +
        ','
      
        '  "prod_list_itens"."comprimento_pallet" = :"comprimento_pallet"' +
        ','
      '  "prod_list_itens"."largura_pallet" = :"largura_pallet",'
      '  "prod_list_itens"."altura_pallet" = :"altura_pallet",'
      '  "prod_list_itens"."volume_pallet" = :"volume_pallet",'
      '  "prod_list_itens"."pes_pallet_vazio" = :"pes_pallet_vazio",'
      '  "prod_list_itens"."ies_emb_esp" = :"ies_emb_esp",'
      '  "prod_list_itens"."seq_emb_esp" = :"seq_emb_esp",'
      '  "prod_list_itens"."ies_erros" = :"ies_erros",'
      '  "prod_list_itens"."ies_cadastro" = :"ies_cadastro",'
      '  "prod_list_itens"."cal_preco_real" = :"cal_preco_real",'
      '  "prod_list_itens"."cal_vlr_liquido" = :"cal_vlr_liquido",'
      '  "prod_list_itens"."cal_preco_esp" = :"cal_preco_esp",'
      
        '  "prod_list_itens"."cal_vlr_liquido_esp" = :"cal_vlr_liquido_es' +
        'p",'
      '  "prod_list_itens"."cal_vol_total" = :"cal_vol_total",'
      '  "prod_list_itens"."cal_pes_bruto" = :"cal_pes_bruto",'
      '  "prod_list_itens"."cal_pes_liquido" = :"cal_pes_liquido",'
      '  "prod_list_itens"."cal_qtd_caixas" = :"cal_qtd_caixas",'
      '  "prod_list_itens"."cal_volume_caixa" = :"cal_volume_caixa",'
      '  "prod_list_itens"."ies_sit_fat" = :"ies_sit_fat",'
      '  "prod_list_itens"."num_nota_fiscal" = :"num_nota_fiscal",'
      '  "prod_list_itens"."num_seq_nf" = :"num_seq_nf",'
      '  "prod_list_itens"."grupo" = :"grupo",'
      '  "prod_list_itens"."seq_grupo" = :"seq_grupo",'
      '  "prod_list_itens"."dat_upd_etd" = :"dat_upd_etd",'
      '  "prod_list_itens"."etd_factory" = :"etd_factory" ,'
      '  "prod_list_itens"."ies_pallet" = :"ies_pallet"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 501
    Top = 147
    object prod_list_itensnum_seq_pedido: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'num_seq_pedido'
      Origin = '"prod_list_itens"."num_seq_pedido"'
    end
    object prod_list_itensnum_pedido_for: TIBStringField
      DisplayLabel = 'Order'
      FieldName = 'num_pedido_for'
      Origin = '"prod_list_itens"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object prod_list_itensnum_pedido_cli: TIBStringField
      DisplayLabel = 'S/C'
      FieldName = 'num_pedido_cli'
      Origin = '"prod_list_itens"."num_pedido_cli"'
      Size = 15
    end
    object prod_list_itenscod_produto: TIBStringField
      DisplayLabel = 'Product Code'
      FieldName = 'cod_produto'
      Origin = '"prod_list_itens"."cod_produto"'
      Required = True
      Size = 15
    end
    object prod_list_itenscalden_produto_ing: TStringField
      DisplayLabel = 'English Description'
      FieldKind = fkCalculated
      FieldName = 'cal_den_produto'
      Size = 4096
      Calculated = True
    end
    object prod_list_itensqtd_confirmada: TIBBCDField
      DisplayLabel = 'Qty Proforma'
      FieldName = 'qtd_confirmada'
      Origin = '"prod_list_itens"."qtd_confirmada"'
      Precision = 18
      Size = 3
    end
    object prod_list_itensqtd_embarcada: TIBBCDField
      DisplayLabel = 'Qty Shipped'
      FieldName = 'qtd_embarcada'
      Origin = '"prod_list_itens"."qtd_embarcada"'
      Precision = 18
      Size = 3
    end
    object prod_list_itensqtd_pendente: TIBBCDField
      DisplayLabel = 'Qty Pending'
      FieldName = 'qtd_pendente'
      Origin = '"prod_list_itens"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object prod_list_itensdat_ini_producao: TDateField
      DisplayLabel = 'Begin Production'
      FieldName = 'dat_ini_producao'
      Origin = '"prod_list_itens"."dat_ini_producao"'
      DisplayFormat = 'DD/MM/YY'
    end
    object prod_list_itensdat_upd_etd: TDateField
      DisplayLabel = 'Upd ETD Factory'
      FieldName = 'dat_upd_etd'
      Origin = '"prod_list_itens"."dat_upd_etd"'
      DisplayFormat = 'DD/MM/YY'
    end
    object prod_list_itenstxt_status_producao: TMemoField
      DisplayLabel = 'Status of Production'
      FieldName = 'txt_status_producao'
      Origin = '"prod_list_itens"."txt_status_producao"'
      BlobType = ftMemo
      Size = 8
    end
    object prod_list_itensdat_inspecao: TDateField
      DisplayLabel = 'Date Inspection'
      FieldName = 'dat_inspecao'
      Origin = '"prod_list_itens"."dat_inspecao"'
    end
    object prod_list_itensies_result_inspecao: TIBStringField
      DisplayLabel = 'RI'
      FieldName = 'ies_result_inspecao'
      Origin = '"prod_list_itens"."ies_result_inspecao"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object prod_list_itenscal_result_inspecao: TStringField
      DisplayLabel = 'RI'
      FieldKind = fkCalculated
      FieldName = 'cal_result_inspecao'
      Size = 3
      Calculated = True
    end
    object prod_list_itensqtd_romanear: TIBBCDField
      DisplayLabel = 'Next Shipment'
      FieldName = 'qtd_romanear'
      Origin = '"prod_list_itens"."qtd_romanear"'
      OnValidate = prod_list_itensqtd_romanearValidate
      Precision = 18
      Size = 3
    end
    object prod_list_itensnum_fatura: TIBStringField
      DisplayLabel = 'Invoice'
      FieldName = 'num_fatura'
      Origin = '"prod_list_itens"."num_fatura"'
      Size = 25
    end
    object prod_list_itensnum_seq_nf: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'num_seq_nf'
      Origin = '"prod_list_itens"."num_seq_nf"'
    end
    object prod_list_itensun_med: TStringField
      DisplayLabel = 'Unit'
      FieldKind = fkCalculated
      FieldName = 'un_med'
      Size = 5
      Calculated = True
    end
    object prod_list_itenspreco_real: TFloatField
      DisplayLabel = 'Price in US$'
      FieldName = 'preco_real'
      Origin = '"prod_list_itens"."preco_real"'
      DisplayFormat = '#,##0.000000'
    end
    object prod_list_itensvlr_liquido: TIBBCDField
      DisplayLabel = 'Total US$'
      FieldName = 'vlr_liquido'
      Origin = '"prod_list_itens"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspreco_esp: TFloatField
      DisplayLabel = 'Price in US$(*)'
      FieldName = 'preco_esp'
      Origin = '"prod_list_itens"."preco_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object prod_list_itensvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total US$(*)'
      FieldName = 'vlr_liquido_esp'
      Origin = '"prod_list_itens"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object prod_list_itensvol_total: TIBBCDField
      DisplayLabel = 'Total Vol(m'#179')'
      FieldName = 'vol_total'
      Origin = '"prod_list_itens"."vol_total"'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object prod_list_itenspes_bruto: TIBBCDField
      DisplayLabel = 'Total Gross W(Kg)'
      FieldName = 'pes_bruto'
      Origin = '"prod_list_itens"."pes_bruto"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspes_liquido: TIBBCDField
      DisplayLabel = 'Tot Net W(Kg)'
      FieldName = 'pes_liquido'
      Origin = '"prod_list_itens"."pes_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"prod_list_itens"."pes_unitario"'
      DisplayFormat = '#,##0.00'
    end
    object prod_list_itensqtd_caixas: TIntegerField
      DisplayLabel = 'Qty Of Cartons'
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_itens"."qtd_caixas"'
      DisplayFormat = '#,##0'
    end
    object prod_list_itensun_master: TIBBCDField
      DisplayLabel = 'Unit In Carton'
      FieldName = 'un_master'
      Origin = '"prod_list_itens"."un_master"'
      DisplayFormat = '#,##0,0'
      Precision = 9
      Size = 4
    end
    object prod_list_itenspes_bruto_cx: TFloatField
      DisplayLabel = 'Gross W.Carton'
      FieldName = 'pes_bruto_cx'
      Origin = '"prod_list_itens"."pes_bruto_cx"'
      DisplayFormat = '#,##0.00'
    end
    object prod_list_itensvolume_caixa: TIBBCDField
      DisplayLabel = 'Volume 1 Carton'
      FieldName = 'volume_caixa'
      Origin = '"prod_list_itens"."volume_caixa"'
      DisplayFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object prod_list_itenscomprimento_cx: TIBBCDField
      DisplayLabel = 'L (cm)'
      FieldName = 'comprimento_cx'
      Origin = '"prod_list_itens"."comprimento_cx"'
      OnValidate = prod_list_itenscomprimento_cxValidate
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object prod_list_itenslargura_cx: TIBBCDField
      DisplayLabel = 'W(cm)'
      FieldName = 'largura_cx'
      Origin = '"prod_list_itens"."largura_cx"'
      OnValidate = prod_list_itenscomprimento_cxValidate
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object prod_list_itensaltura_cx: TIBBCDField
      DisplayLabel = 'H(cm)'
      FieldName = 'altura_cx'
      Origin = '"prod_list_itens"."altura_cx"'
      OnValidate = prod_list_itenscomprimento_cxValidate
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object prod_list_itenscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_list_itensnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_list_itensnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_list_itensnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"prod_list_itens"."num_pedido"'
    end
    object prod_list_itensdat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"prod_list_itens"."dat_emissao"'
    end
    object prod_list_itensies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"prod_list_itens"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensies_pallet: TIBStringField
      DisplayLabel = 'Pallet'
      FieldName = 'ies_pallet'
      Origin = '"prod_list_itens"."ies_pallet"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensseq_pallet: TIntegerField
      FieldName = 'seq_pallet'
      Origin = '"prod_list_itens"."seq_pallet"'
    end
    object prod_list_itensqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = '"prod_list_itens"."qtd_pallet"'
    end
    object prod_list_itenspes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = '"prod_list_itens"."pes_bruto_pallet"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = '"prod_list_itens"."pes_liquido_pallet"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = '"prod_list_itens"."comprimento_pallet"'
      Precision = 9
      Size = 4
    end
    object prod_list_itenslargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = '"prod_list_itens"."largura_pallet"'
      Precision = 9
      Size = 4
    end
    object prod_list_itensaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = '"prod_list_itens"."altura_pallet"'
      Precision = 9
      Size = 4
    end
    object prod_list_itensvolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = '"prod_list_itens"."volume_pallet"'
      Precision = 18
      Size = 4
    end
    object prod_list_itensies_emb_esp: TIBStringField
      DisplayLabel = 'Special Carton'
      FieldName = 'ies_emb_esp'
      Origin = '"prod_list_itens"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
    end
    object prod_list_itensies_erros: TIntegerField
      FieldName = 'ies_erros'
      Origin = '"prod_list_itens"."ies_erros"'
    end
    object prod_list_itensies_cadastro: TIBStringField
      FieldName = 'ies_cadastro'
      Origin = '"prod_list_itens"."ies_cadastro"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itenscal_preco_real: TFloatField
      FieldName = 'cal_preco_real'
      Origin = '"prod_list_itens"."cal_preco_real"'
    end
    object prod_list_itenscal_vlr_liquido: TIBBCDField
      FieldName = 'cal_vlr_liquido'
      Origin = '"prod_list_itens"."cal_vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscal_pes_liquido: TIBBCDField
      FieldName = 'cal_pes_liquido'
      Origin = '"prod_list_itens"."cal_pes_liquido"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscal_preco_esp: TFloatField
      FieldName = 'cal_preco_esp'
      Origin = '"prod_list_itens"."cal_preco_esp"'
    end
    object prod_list_itenscal_vlr_liquido_esp: TIBBCDField
      FieldName = 'cal_vlr_liquido_esp'
      Origin = '"prod_list_itens"."cal_vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscal_vol_total: TIBBCDField
      FieldName = 'cal_vol_total'
      Origin = '"prod_list_itens"."cal_vol_total"'
      Precision = 18
      Size = 3
    end
    object prod_list_itenscal_pes_bruto: TIBBCDField
      FieldName = 'cal_pes_bruto'
      Origin = '"prod_list_itens"."cal_pes_bruto"'
      Precision = 18
      Size = 2
    end
    object prod_list_itenscal_qtd_caixas: TIntegerField
      FieldName = 'cal_qtd_caixas'
      Origin = '"prod_list_itens"."cal_qtd_caixas"'
    end
    object prod_list_itenscal_volume_caixa: TIBBCDField
      FieldName = 'cal_volume_caixa'
      Origin = '"prod_list_itens"."cal_volume_caixa"'
      Precision = 18
      Size = 4
    end
    object prod_list_itensies_sit_fat: TIBStringField
      FieldName = 'ies_sit_fat'
      Origin = '"prod_list_itens"."ies_sit_fat"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"prod_list_itens"."num_nota_fiscal"'
    end
    object prod_list_itensgrupo: TSmallintField
      FieldName = 'grupo'
      Origin = '"prod_list_itens"."grupo"'
    end
    object prod_list_itensseq_grupo: TSmallintField
      FieldName = 'seq_grupo'
      Origin = '"prod_list_itens"."seq_grupo"'
    end
    object prod_list_itensetd_factory: TDateField
      FieldName = 'etd_factory'
      Origin = '"prod_list_itens"."etd_factory"'
    end
    object prod_list_itenspes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"prod_list_itens"."pes_pallet_vazio"'
    end
  end
  object spr_excluir_prl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_excluir_prl'
    Left = 901
    Top = 203
  end
  object ItensProdList: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Left = 189
    Top = 176
  end
  object spr_check_result: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "spr_check_result"(:cod_empresa, :num_prod_list, :' +
        'num_fatura);')
    Left = 935
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object spr_check_resultFLAG: TIBStringField
      FieldName = 'FLAG'
      Origin = '"spr_check_result"."FLAG"'
      FixedChar = True
      Size = 1
    end
  end
  object dsFaturasNovasPrl: TDataSource
    DataSet = FaturasNovasPrl
    Left = 801
    Top = 237
  end
  object spr_romanear: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_romanear'
    Left = 223
    Top = 176
  end
  object qryRomaneio: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "num_romaneio", "ies_situacao"'
      '  from "romaneio"'
      ' where "cod_empresa" = :cod_empresa'
      '   and "cod_cliente" = :cod_cliente'
      '   and "num_fatura" = :num_fatura ;')
    Left = 153
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object qryRomaneionum_romaneio: TIntegerField
      FieldName = 'num_romaneio'
      Origin = '"romaneio"."num_romaneio"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryRomaneioies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"romaneio"."ies_situacao"'
      Size = 1
    end
  end
  object spr_faturar: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_faturar'
    Left = 258
    Top = 176
  end
  object FaturasNovasPrl: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnCalcFields = FaturasNovasPrlCalcFields
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."num_fatura" = :"OLD_num_fatura"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      '  ("prod_list_itens"."num_fatura")'
      'values'
      '  (:"num_fatura")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."num_fatura" = :"num_fatura"')
    SelectSQL.Strings = (
      'select "num_fatura",'
      
        '       SUM("vlr_liquido") "vlr_liquido",         SUM("cal_vlr_li' +
        'quido") "cal_vlr_liquido",'
      
        '       SUM("vlr_liquido_esp") "vlr_liquido_esp", SUM("cal_vlr_li' +
        'quido_esp") "cal_vlr_liquido_esp",'
      
        '       SUM("vol_total") "vol_total",             SUM("cal_vol_to' +
        'tal") "cal_vol_total",'
      
        '       SUM("pes_bruto") "pes_bruto",             SUM("cal_pes_br' +
        'uto") "cal_pes_bruto",'
      
        '       SUM("pes_liquido") "pes_liquido",         SUM("cal_pes_li' +
        'quido") "cal_pes_liquido",'
      
        '       SUM("qtd_caixas") "qtd_caixas",           SUM("cal_qtd_ca' +
        'ixas") "cal_qtd_caixas",'
      '       MAX(cast('#39' '#39' as char(01))) "ies_faturar"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_fatura" <> '#39#39
      '  and "ies_sit_fat" = '#39'N'#39
      'group by 1'
      'order by 1')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."num_fatura" = :"num_fatura"'
      'where'
      '  "prod_list_itens"."num_fatura" = :"OLD_num_fatura"')
    Left = 803
    Top = 205
    object FaturasNovasPrlnum_fatura: TIBStringField
      DisplayLabel = 'N'#250'mero Fatura'
      FieldName = 'num_fatura'
      Size = 25
    end
    object FaturasNovasPrlies_faturar: TIBStringField
      DisplayLabel = 'Faturar'
      FieldName = 'ies_faturar'
      FixedChar = True
      Size = 1
    end
    object FaturasNovasPrlvlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlcal_vlr_liquido: TIBBCDField
      FieldName = 'cal_vlr_liquido'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Esp'
      FieldName = 'vlr_liquido_esp'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlcal_vlr_liquido_esp: TIBBCDField
      FieldName = 'cal_vlr_liquido_esp'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlvol_total: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'vol_total'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object FaturasNovasPrlcal_vol_total: TIBBCDField
      FieldName = 'cal_vol_total'
      Precision = 18
      Size = 3
    end
    object FaturasNovasPrlpes_bruto: TIBBCDField
      DisplayLabel = 'Pes Bruto'
      FieldName = 'pes_bruto'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlcal_pes_bruto: TIBBCDField
      FieldName = 'cal_pes_bruto'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlpes_liquido: TIBBCDField
      DisplayLabel = 'Pes Liquido'
      FieldName = 'pes_liquido'
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlcal_pes_liquido: TIBBCDField
      FieldName = 'cal_pes_liquido'
      Precision = 18
      Size = 2
    end
    object FaturasNovasPrlqtd_caixas: TLargeintField
      DisplayLabel = 'Caixas'
      FieldName = 'qtd_caixas'
      DisplayFormat = '#,##0'
    end
    object FaturasNovasPrlcal_qtd_caixas: TLargeintField
      FieldName = 'cal_qtd_caixas'
    end
    object FaturasNovasPrlFlag: TStringField
      FieldKind = fkCalculated
      FieldName = 'Flag'
      Size = 1
      Calculated = True
    end
  end
  object sqlMarcarFaturadas: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'update "prod_list_itens"'
      '   set "ies_sit_fat" = '#39'F'#39','
      '       "num_nota_fiscal" = :num_nota_fiscal'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_prod_list" = :num_prod_list'
      '   and "num_fatura" = :num_fatura;')
    Transaction = dmConnection.TransSig
    Left = 970
    Top = 203
  end
  object spr_additens_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_additens_prodlist'
    Left = 291
    Top = 176
  end
  object spr_vlr_esp_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_vlr_esp_prodlist'
    Left = 328
    Top = 176
  end
  object spr_pesos_pallets_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_pesos_pallets_prodlist'
    Left = 360
    Top = 176
  end
  object spr_additens_pedido: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_additens_pedido'
    Left = 392
    Top = 176
  end
  object ProdListEmbEsp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "prod_list_itens"                           '
      ' where "cod_empresa" = :cod_empresa                       '
      '   and "num_prod_list" = :num_prod_list                   '
      '   and "seq_emb_esp" = :seq_emb_esp'
      ' order by "num_sequencia"')
    Left = 224
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_emb_esp'
        ParamType = ptUnknown
      end>
  end
  object ProdListPallets: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "prod_list_itens"                           '
      ' where "cod_empresa" = :cod_empresa                       '
      '   and "num_prod_list" = :num_prod_list                   '
      '   and "seq_pallet" = :seq_pallet'
      ' order by "num_sequencia"')
    Left = 264
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_pallet'
        ParamType = ptUnknown
      end>
  end
  object Saldos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "spr_saldos_produtos"(:cod_empresa, :num_pedido, :' +
        'cod_produto, :num_seq_pedido);')
    Left = 328
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_seq_pedido'
        ParamType = ptUnknown
      end>
    object Saldosqtd_confirmada: TIBBCDField
      FieldName = 'qtd_confirmada'
      Origin = '"spr_saldos_produtos"."qtd_confirmada"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_embarcada: TIBBCDField
      FieldName = 'qtd_embarcada'
      Origin = '"spr_saldos_produtos"."qtd_embarcada"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"spr_saldos_produtos"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"spr_saldos_produtos"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_saldo: TIBBCDField
      FieldName = 'qtd_saldo'
      Origin = '"spr_saldos_produtos"."qtd_saldo"'
      Precision = 18
      Size = 2
    end
  end
  object spr_agrupar_prod_list: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_agrupar_prod_list'
    Left = 368
    Top = 208
  end
  object Faturas: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."num_nota_fiscal", a."serie", a."dat_embarque"'
      'from  "nota_fiscal_saida" a, "nf_saida_complemento" b'
      'where b."cod_empresa" = :cod_empresa'
      '  and b."num_fatura" = :num_fatura'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and b."serie" = a."serie"')
    Left = 1002
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object Faturasnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Faturasserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object Faturasdat_embarque: TDateField
      FieldName = 'dat_embarque'
      Origin = '"nota_fiscal_saida"."dat_embarque"'
    end
  end
  object FaturasTodasPrl: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "num_fatura",'
      
        '       SUM("vlr_liquido") "vlr_liquido",         SUM("cal_vlr_li' +
        'quido") "cal_vlr_liquido",'
      
        '       SUM("vlr_liquido_esp") "vlr_liquido_esp", SUM("cal_vlr_li' +
        'quido_esp") "cal_vlr_liquido_esp",'
      
        '       SUM("vol_total") "vol_total",             SUM("cal_vol_to' +
        'tal") "cal_vol_total",'
      
        '       SUM("pes_bruto") "pes_bruto",             SUM("cal_pes_br' +
        'uto") "cal_pes_bruto",'
      
        '       SUM("pes_liquido") "pes_liquido",         SUM("cal_pes_li' +
        'quido") "cal_pes_liquido",'
      
        '       SUM("qtd_caixas") "qtd_caixas",           SUM("cal_qtd_ca' +
        'ixas") "cal_qtd_caixas"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_fatura" <> '#39#39
      'group by 1'
      'order by 1')
    Left = 840
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end>
    object FaturasTodasPrlnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Size = 25
    end
    object FaturasTodasPrlvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Precision = 18
      Size = 2
    end
    object FaturasTodasPrlcal_vlr_liquido: TIBBCDField
      FieldName = 'cal_vlr_liquido'
      Precision = 18
      Size = 2
    end
    object FaturasTodasPrlvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Precision = 18
      Size = 2
    end
    object FaturasTodasPrlcal_vlr_liquido_esp: TIBBCDField
      FieldName = 'cal_vlr_liquido_esp'
      Precision = 18
      Size = 2
    end
    object FaturasTodasPrlvol_total: TIBBCDField
      FieldName = 'vol_total'
      Precision = 18
      Size = 3
    end
    object FaturasTodasPrlcal_vol_total: TIBBCDField
      FieldName = 'cal_vol_total'
      Precision = 18
      Size = 3
    end
    object FaturasTodasPrlpes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Precision = 18
      Size = 2
    end
    object FaturasTodasPrlcal_pes_bruto: TIBBCDField
      FieldName = 'cal_pes_bruto'
      Precision = 18
      Size = 2
    end
    object FaturasTodasPrlpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Precision = 18
      Size = 2
    end
    object FaturasTodasPrlcal_pes_liquido: TIBBCDField
      FieldName = 'cal_pes_liquido'
      Precision = 18
      Size = 2
    end
    object FaturasTodasPrlqtd_caixas: TLargeintField
      FieldName = 'qtd_caixas'
    end
    object FaturasTodasPrlcal_qtd_caixas: TLargeintField
      FieldName = 'cal_qtd_caixas'
    end
  end
  object qryNotaFiscal: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "num_nota_fiscal"'
      'from "nf_saida_complemento"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_fatura" = :num_fatura')
    Left = 1031
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object qryNotaFiscalnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nf_saida_complemento"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryNotaFiscalProdutos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."num_nota_fiscal"'
      'from "nf_saida_complemento" a, "nota_fiscal_saida_produto" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_fatura" = :num_fatura'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and b."serie" = a."serie"'
      '  and b."num_sequencia" = :num_sequencia')
    Left = 1062
    Top = 206
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_sequencia'
        ParamType = ptUnknown
      end>
  end
  object qryNumProdList: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select MAX("num_prod_list") "num_prod_list"'
      'from "prod_list"'
      'where "cod_empresa" = :cod_empresa')
    Left = 880
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object qryNumProdListnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
    end
  end
  object ProdListGrupos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select *'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "grupo" = :grupo'
      'order by "num_sequencia"')
    Left = 296
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end>
  end
  object spr_itensped_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_itensped_prodlist'
    Left = 400
    Top = 208
  end
  object sqlDesagrupar: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      '  update "prod_list_itens"'
      '    set "grupo" = null,'
      '        "seq_grupo" = null'
      '  where "cod_empresa" = :cod_empresa'
      '    and "num_prod_list" = :num_prod_list ;')
    Transaction = dmConnection.TransSig
    Left = 971
    Top = 239
  end
  object Produto_Fatura: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "qtd_produto"'
      'from "nota_fiscal_saida_produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_nota_fiscal" = :num_nota_fiscal'
      '  and "serie" = :serie'
      '  and "num_sequencia" = :num_sequencia')
    Left = 1010
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_nota_fiscal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_sequencia'
        ParamType = ptUnknown
      end>
    object Produto_Faturaqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
  end
  object spr_prodlist_fatura: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_fatura'
    Left = 432
    Top = 208
  end
  object ds_prod_list_itens: TDataSource
    DataSet = prod_list_itens
    Left = 533
    Top = 147
  end
  object emb_esp: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = emb_espAfterPost
    AfterScroll = emb_espAfterScroll
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      
        '  ("prod_list_itens"."cod_empresa", "prod_list_itens"."num_prod_' +
        'list", '
      
        '   "prod_list_itens"."num_sequencia", "prod_list_itens"."num_fat' +
        'ura", '
      '"prod_list_itens"."vol_total", '
      
        '   "prod_list_itens"."pes_bruto", "prod_list_itens"."qtd_caixas"' +
        ', '
      '"prod_list_itens"."pes_bruto_cx", '
      
        '   "prod_list_itens"."altura_cx", "prod_list_itens"."largura_cx"' +
        ', '
      '"prod_list_itens"."comprimento_cx", '
      
        '   "prod_list_itens"."volume_caixa", "prod_list_itens"."ies_emb_' +
        'esp", '
      '"prod_list_itens"."seq_emb_esp")'
      'values'
      
        '  (:"cod_empresa", :"num_prod_list", :"num_sequencia", :"num_fat' +
        'ura", :"vol_total", '
      
        '   :"pes_bruto", :"qtd_caixas", :"pes_bruto_cx", :"altura_cx", :' +
        '"largura_cx", '
      
        '   :"comprimento_cx", :"volume_caixa", :"ies_emb_esp", :"seq_emb' +
        '_esp")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_prod_list", "num_sequencia", "num_fat' +
        'ura", '
      
        '       "seq_emb_esp", "ies_emb_esp", "qtd_caixas", "pes_bruto_cx' +
        '", "pes_bruto",'
      
        '       "altura_cx", "largura_cx", "comprimento_cx", "volume_caix' +
        'a", "vol_total"'
      '    from "prod_list_itens"'
      '   where "cod_empresa" = :cod_empresa'
      '     and "num_prod_list" = :num_prod_list'
      '     and "ies_emb_esp" = '#39'S'#39
      '     and "qtd_caixas" > 0'
      'order by "seq_emb_esp"')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa",'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list",'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia",'
      '  "prod_list_itens"."num_fatura" = :"num_fatura",'
      '  "prod_list_itens"."vol_total" = :"vol_total",'
      '  "prod_list_itens"."pes_bruto" = :"pes_bruto",'
      '  "prod_list_itens"."qtd_caixas" = :"qtd_caixas",'
      '  "prod_list_itens"."pes_bruto_cx" = :"pes_bruto_cx",'
      '  "prod_list_itens"."altura_cx" = :"altura_cx",'
      '  "prod_list_itens"."largura_cx" = :"largura_cx",'
      '  "prod_list_itens"."comprimento_cx" = :"comprimento_cx",'
      '  "prod_list_itens"."volume_caixa" = :"volume_caixa",'
      '  "prod_list_itens"."ies_emb_esp" = :"ies_emb_esp",'
      '  "prod_list_itens"."seq_emb_esp" = :"seq_emb_esp"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 499
    Top = 178
    object emb_espcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object emb_espnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object emb_espnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object emb_espseq_emb_esp: TIntegerField
      DisplayLabel = 'Seq'
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
      Visible = False
    end
    object emb_espies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"prod_list_itens"."ies_emb_esp"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object emb_espqtd_caixas: TIntegerField
      DisplayLabel = 'Qty Cartons'
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_itens"."qtd_caixas"'
      OnValidate = emb_espqtd_caixasValidate
    end
    object emb_esppes_bruto_cx: TFloatField
      DisplayLabel = 'Gross W.Carton'
      FieldName = 'pes_bruto_cx'
      Origin = '"prod_list_itens"."pes_bruto_cx"'
      OnValidate = emb_espqtd_caixasValidate
    end
    object emb_esppes_bruto: TIBBCDField
      DisplayLabel = 'Total Gross W.'
      FieldName = 'pes_bruto'
      Origin = '"prod_list_itens"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object emb_espaltura_cx: TIBBCDField
      DisplayLabel = 'H(cm)'
      FieldName = 'altura_cx'
      Origin = '"prod_list_itens"."altura_cx"'
      OnValidate = emb_espqtd_caixasValidate
      Precision = 9
      Size = 4
    end
    object emb_esplargura_cx: TIBBCDField
      DisplayLabel = 'W(cm)'
      FieldName = 'largura_cx'
      Origin = '"prod_list_itens"."largura_cx"'
      OnValidate = emb_espqtd_caixasValidate
      Precision = 9
      Size = 4
    end
    object emb_espcomprimento_cx: TIBBCDField
      DisplayLabel = 'L(cm)'
      FieldName = 'comprimento_cx'
      Origin = '"prod_list_itens"."comprimento_cx"'
      OnValidate = emb_espqtd_caixasValidate
      Precision = 9
      Size = 4
    end
    object emb_espvolume_caixa: TIBBCDField
      DisplayLabel = 'Volume Carton'
      FieldName = 'volume_caixa'
      Origin = '"prod_list_itens"."volume_caixa"'
      Precision = 18
      Size = 4
    end
    object emb_espvol_total: TIBBCDField
      DisplayLabel = 'Total Volume Cartons'
      FieldName = 'vol_total'
      Origin = '"prod_list_itens"."vol_total"'
      Precision = 18
      Size = 3
    end
    object emb_espnum_fatura: TIBStringField
      DisplayLabel = 'Invoice'
      FieldName = 'num_fatura'
      Origin = '"prod_list_itens"."num_fatura"'
      Size = 25
    end
  end
  object ds_emb_esp: TDataSource
    DataSet = emb_esp
    Left = 527
    Top = 178
  end
  object emb_esp_itens: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = emb_esp_itensAfterPost
    OnCalcFields = prod_list_itensCalcFields
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia" and'
      '  "prod_list_itens"."seq_emb_esp" = :"OLD_seq_emb_esp"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      
        '  ("prod_list_itens"."num_fatura", "prod_list_itens"."qtd_romane' +
        'ar", "prod_list_itens"."vol_total", '
      
        '   "prod_list_itens"."pes_bruto", "prod_list_itens"."pes_liquido' +
        '", "prod_list_itens"."qtd_caixas", '
      
        '   "prod_list_itens"."un_master", "prod_list_itens"."pes_bruto_c' +
        'x", "prod_list_itens"."altura_cx", '
      
        '   "prod_list_itens"."largura_cx", "prod_list_itens"."compriment' +
        'o_cx", '
      
        '   "prod_list_itens"."volume_caixa", "prod_list_itens"."ies_caix' +
        'a_fechada", '
      
        '   "prod_list_itens"."ies_emb_esp", "prod_list_itens"."seq_emb_e' +
        'sp", "prod_list_itens"."ies_caixa_fechada")'
      'values'
      
        '  (:"num_fatura", :"qtd_romanear", :"vol_total", :"pes_bruto", :' +
        '"pes_liquido", '
      
        '   :"qtd_caixas", :"un_master", :"pes_bruto_cx", :"altura_cx", :' +
        '"largura_cx", '
      
        '   :"comprimento_cx", :"volume_caixa", :"ies_caixa_fechada", :"i' +
        'es_emb_esp", '
      '   :"seq_emb_esp", :"ies_caixa_fechada")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia" and'
      '  "prod_list_itens"."seq_emb_esp" = :"seq_emb_esp"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_prod_list", "num_sequencia", "ies_emb' +
        '_esp", "seq_emb_esp",'
      
        '       "num_pedido_for", "num_pedido_cli", "cod_produto", "qtd_r' +
        'omanear", "pes_liquido", "un_master",'
      
        '       "qtd_caixas", "pes_bruto_cx", "pes_bruto", "altura_cx", "' +
        'largura_cx", "comprimento_cx",'
      
        '       "volume_caixa", "vol_total", "num_fatura", "ies_caixa_fec' +
        'hada"'
      '  from "prod_list_itens"'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_prod_list" = :num_prod_list'
      '   and "seq_emb_esp" = :seq_emb_esp'
      'order by "num_seq_pedido"')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."num_fatura" = :"num_fatura",'
      '  "prod_list_itens"."qtd_romanear" = :"qtd_romanear",'
      '  "prod_list_itens"."vol_total" = :"vol_total",'
      '  "prod_list_itens"."pes_bruto" = :"pes_bruto",'
      '  "prod_list_itens"."pes_liquido" = :"pes_liquido",'
      '  "prod_list_itens"."qtd_caixas" = :"qtd_caixas",'
      '  "prod_list_itens"."un_master" = :"un_master",'
      '  "prod_list_itens"."pes_bruto_cx" = :"pes_bruto_cx",'
      '  "prod_list_itens"."altura_cx" = :"altura_cx",'
      '  "prod_list_itens"."largura_cx" = :"largura_cx",'
      '  "prod_list_itens"."comprimento_cx" = :"comprimento_cx",'
      '  "prod_list_itens"."volume_caixa" = :"volume_caixa",'
      '  "prod_list_itens"."ies_caixa_fechada" = :"ies_caixa_fechada",'
      '  "prod_list_itens"."ies_emb_esp" = :"ies_emb_esp",'
      '  "prod_list_itens"."seq_emb_esp" = :"seq_emb_esp",'
      '  "prod_list_itens"."ies_caixa_fechada" = :"ies_caixa_fechada"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia" and'
      '  "prod_list_itens"."seq_emb_esp" = :"OLD_seq_emb_esp"')
    Left = 498
    Top = 208
    object emb_esp_itenscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object emb_esp_itensnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object emb_esp_itensnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object emb_esp_itensnum_pedido_for: TIBStringField
      DisplayLabel = 'Order'
      FieldName = 'num_pedido_for'
      Origin = '"prod_list_itens"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object emb_esp_itensnum_pedido_cli: TIBStringField
      DisplayLabel = 'S/C'
      FieldName = 'num_pedido_cli'
      Origin = '"prod_list_itens"."num_pedido_cli"'
      Size = 15
    end
    object emb_esp_itenscod_produto: TIBStringField
      DisplayLabel = 'Product'
      FieldName = 'cod_produto'
      Origin = '"prod_list_itens"."cod_produto"'
      Required = True
      Size = 15
    end
    object emb_esp_itensqtd_romanear: TIBBCDField
      DisplayLabel = 'Next Shipment'
      FieldName = 'qtd_romanear'
      Origin = '"prod_list_itens"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object emb_esp_itenscal_den_produto_ing: TStringField
      DisplayLabel = 'English Description'
      FieldKind = fkCalculated
      FieldName = 'cal_den_produto'
      Size = 4096
      Calculated = True
    end
    object emb_esp_itensun_med: TStringField
      DisplayLabel = 'Unit'
      FieldKind = fkCalculated
      FieldName = 'un_med'
      Size = 5
      Calculated = True
    end
    object emb_esp_itenspes_liquido: TIBBCDField
      DisplayLabel = 'Tot Net W(Kg)'
      FieldName = 'pes_liquido'
      Origin = '"prod_list_itens"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object emb_esp_itensies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"prod_list_itens"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object emb_esp_itensseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
    end
    object emb_esp_itensqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_itens"."qtd_caixas"'
    end
    object emb_esp_itenspes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = '"prod_list_itens"."pes_bruto_cx"'
    end
    object emb_esp_itenspes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"prod_list_itens"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object emb_esp_itensaltura_cx: TIBBCDField
      FieldName = 'altura_cx'
      Origin = '"prod_list_itens"."altura_cx"'
      Precision = 9
      Size = 4
    end
    object emb_esp_itenslargura_cx: TIBBCDField
      FieldName = 'largura_cx'
      Origin = '"prod_list_itens"."largura_cx"'
      Precision = 9
      Size = 4
    end
    object emb_esp_itenscomprimento_cx: TIBBCDField
      FieldName = 'comprimento_cx'
      Origin = '"prod_list_itens"."comprimento_cx"'
      Precision = 9
      Size = 4
    end
    object emb_esp_itensvolume_caixa: TIBBCDField
      FieldName = 'volume_caixa'
      Origin = '"prod_list_itens"."volume_caixa"'
      Precision = 18
      Size = 4
    end
    object emb_esp_itensvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"prod_list_itens"."vol_total"'
      Precision = 18
      Size = 3
    end
    object emb_esp_itensnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"prod_list_itens"."num_fatura"'
      Size = 25
    end
    object emb_esp_itensies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"prod_list_itens"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
  end
  object ds_emb_esp_itens: TDataSource
    DataSet = emb_esp_itens
    Left = 528
    Top = 208
  end
  object spr_additem_pedido: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_additem_pedido'
    Left = 428
    Top = 177
  end
  object spr_additem_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_additem_prodlist'
    Left = 460
    Top = 177
  end
  object spr_calc_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_calc_prodlist'
    Left = 466
    Top = 209
  end
  object ProxSeqEmbEsp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select MAX("seq_emb_esp") + 1 "seq_emb_esp"'
      '  from "prod_list_itens"'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_prod_list" = :num_prod_list')
    Left = 124
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end>
    object ProxSeqEmbEspseq_emb_esp: TLargeintField
      FieldName = 'seq_emb_esp'
    end
  end
  object ds_prod_list: TDataSource
    DataSet = Prod_List
    Left = 538
    Top = 119
  end
end
