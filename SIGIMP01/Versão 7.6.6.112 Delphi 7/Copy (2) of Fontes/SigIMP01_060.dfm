object frmProdList: TfrmProdList
  Left = 6
  Top = 0
  AutoScroll = False
  Caption = 'Production List'
  ClientHeight = 614
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 5
    Top = 376
    Width = 79
    Height = 13
    Caption = 'Caixas Especiais'
  end
  object Label4: TLabel
    Left = 548
    Top = 376
    Width = 31
    Height = 13
    Caption = 'Pallets'
  end
  object Label5: TLabel
    Left = 5
    Top = 520
    Width = 110
    Height = 13
    Caption = 'Itens da Caixa Especial'
  end
  object Label6: TLabel
    Left = 546
    Top = 520
    Width = 75
    Height = 13
    Caption = 'Caixas no Pallet'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1350
    Height = 76
    Align = alTop
    TabOrder = 0
    TabStop = True
    OnEnter = Panel1Enter
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 37
      Height = 13
      Caption = 'Clientes'
    end
    object Label2: TLabel
      Left = 5
      Top = 38
      Width = 65
      Height = 13
      Caption = 'Fornecedores'
    end
    object Label7: TLabel
      Left = 408
      Top = 4
      Width = 94
      Height = 13
      Caption = 'Faturas Dispon'#237'veis'
    end
    object Label8: TLabel
      Left = 555
      Top = 4
      Width = 136
      Height = 13
      Caption = 'Fatura Nova ou Selecionada'
    end
    object Label48: TLabel
      Left = 696
      Top = 4
      Width = 69
      Height = 13
      Caption = 'Busca produto'
    end
    object Label55: TLabel
      Left = 845
      Top = 2
      Width = 79
      Height = 13
      Caption = 'Busca descri'#231#227'o'
    end
    object dbcClientes: TJvDBLookupCombo
      Left = 5
      Top = 18
      Width = 400
      Height = 21
      DropDownCount = 40
      DisplayAllFields = True
      DisplayEmpty = '** Escolha um Cliente **'
      EmptyValue = '0'
      LookupField = 'cod_cliente'
      LookupDisplay = 'cod_cliente'
      LookupSource = ds_Clientes
      TabOrder = 0
      OnChange = dbcClientesChange
    end
    object dbcFornecedores: TJvDBLookupCombo
      Left = 5
      Top = 52
      Width = 400
      Height = 21
      DropDownCount = 40
      DisplayAllFields = True
      DisplayEmpty = '** Escolha um Fornecedor **'
      EmptyValue = '0'
      LookupField = 'cod_fornecedor'
      LookupDisplay = 'raz_social_reduz'
      LookupSource = ds_Fornecedores
      TabOrder = 1
      OnChange = dbcFornecedoresChange
    end
    object cbOcultar: TCheckBox
      Left = 408
      Top = 56
      Width = 218
      Height = 17
      Caption = 'Ocultar colunas "Ini Prod a Res"'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = cbOcultarClick
    end
    object dbcFaturas: TJvDBLookupCombo
      Left = 408
      Top = 18
      Width = 145
      Height = 21
      DisplayAllFields = True
      DisplayEmpty = '<N'#227'o Selecionada>'
      EmptyValue = 'NS'
      FieldsDelimiter = ';'
      LookupField = 'num_fatura'
      LookupDisplay = 'num_fatura'
      LookupSource = dsFaturas
      TabOrder = 2
      OnChange = dbcFaturasChange
    end
    object edNumFatura: TEdit
      Left = 555
      Top = 18
      Width = 136
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnExit = edNumFaturaExit
    end
    object btnExcel: TButton
      Left = 1264
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 7
      OnClick = btnExcelClick
    end
    object rgPallets: TRadioGroup
      Left = 1098
      Top = 2
      Width = 144
      Height = 32
      Caption = 'Mostrar colunas de Pallets'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 8
      TabStop = True
    end
    object cbDescricao: TCheckBox
      Left = 408
      Top = 40
      Width = 218
      Height = 17
      Caption = 'Descri'#231#227'o dos Produtos Ingl'#234's/Portugu'#234's'
      TabOrder = 9
      OnClick = cbDescricaoClick
    end
    object edBuscaCodigo: TEdit
      Left = 696
      Top = 18
      Width = 146
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyDown = edBuscaCodigoKeyDown
    end
    object edBuscaDesc: TEdit
      Left = 845
      Top = 18
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 75
      TabOrder = 5
      OnKeyDown = edBuscaCodigoKeyDown
    end
  end
  object ugEmbEsp: TJvDBUltimGrid
    Left = 5
    Top = 391
    Width = 528
    Height = 130
    DataSource = dsemb_esp
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = ugEmbEspKeyPress
    OnMouseDown = ugEmbEspMouseDown
    MultiSelect = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    ReadOnlyCellColor = clCream
    Columns = <
      item
        Expanded = False
        FieldName = 'seq_emb_esp'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_caixas'
        Title.Color = clMoneyGreen
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pes_bruto_cx'
        Title.Color = clMoneyGreen
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pes_liquido'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pes_bruto'
        Title.Color = clMoneyGreen
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comprimento_cx'
        Title.Color = clMoneyGreen
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'largura_cx'
        Title.Color = clMoneyGreen
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'altura_cx'
        Title.Color = clMoneyGreen
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vol_total'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'seq_pallet'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_fatura'
        Width = 110
        Visible = True
      end>
  end
  object ugEmbEspItens: TJvDBUltimGrid
    Left = 5
    Top = 535
    Width = 528
    Height = 130
    DataSource = dsemb_esp_itens
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    MultiSelect = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    ReadOnlyCellColor = clCream
    Columns = <
      item
        Expanded = False
        FieldName = 'num_pedido_cli'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_produto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calDenProduto'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_romanear'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calUN'
        Width = 25
        Visible = True
      end>
  end
  object ugPallets: TJvDBUltimGrid
    Left = 548
    Top = 391
    Width = 496
    Height = 130
    DataSource = dsPallets
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = ugPalletsKeyPress
    OnMouseDown = ugPalletsMouseDown
    MultiSelect = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    ReadOnlyCellColor = clCream
    Columns = <
      item
        Expanded = False
        FieldName = 'seq_pallet'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_pallet'
        Title.Color = clMoneyGreen
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pes_pallet_vazio'
        Title.Color = clMoneyGreen
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pes_liquido_pallet'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pes_bruto_pallet'
        Title.Color = clMoneyGreen
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comprimento_pallet'
        Title.Color = clMoneyGreen
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'largura_pallet'
        Title.Color = clMoneyGreen
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'altura_pallet'
        Title.Color = clMoneyGreen
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'volume_pallet'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_fatura'
        Width = 110
        Visible = True
      end>
  end
  object ugPalletsCxs: TJvDBUltimGrid
    Left = 548
    Top = 535
    Width = 496
    Height = 131
    DataSource = dspallets_itens
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = ugPalletsCxsDblClick
    MultiSelect = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    ReadOnlyCellColor = clCream
    Columns = <
      item
        Expanded = False
        FieldName = 'num_pedido_cli'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_produto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calDenProduto'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_romanear'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'calUN'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'qtd_caixas'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'seq_emb_esp'
        Width = 20
        Visible = True
      end>
  end
  object pgItensProdList: TPageControl
    Left = 0
    Top = 76
    Width = 1350
    Height = 265
    ActivePage = tsItensPrl
    Align = alTop
    TabOrder = 5
    OnChange = pgItensProdListChange
    object tsItensPrl: TTabSheet
      Caption = 'Production List'
      object ugProdListItens: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1342
        Height = 237
        Align = alClient
        DataSource = dsProdListItens
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = ugProdListItensDrawColumnCell
        OnMouseDown = ugProdListItensMouseDown
        FixedCols = 5
        MultiSelect = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <
          item
            ControlName = 'jvdbcResultInspecao'
            FieldName = 'ies_result_inspecao'
            FitCell = fcDesignSize
            LeaveOnEnterKey = True
            LeaveOnUpDownKey = True
          end>
        RowsHeight = 17
        TitleRowHeight = 17
        ReadOnlyCellColor = clCream
        Columns = <
          item
            Expanded = False
            FieldName = 'num_sequencia'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_pedido_cli'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_produto'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calDenProduto'
            Width = 345
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_confirmada'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_ini_producao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'etd_factory'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_upd_etd'
            Title.Color = clMoneyGreen
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'txt_status_producao'
            Title.Color = clMoneyGreen
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_inspecao'
            Title.Color = clMoneyGreen
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ies_result_inspecao'
            Title.Color = clMoneyGreen
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_romanear'
            Title.Color = clMoneyGreen
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calUn'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_real'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_esp'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido_esp'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_caixas'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_bruto_cx'
            Title.Color = clMoneyGreen
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'un_master'
            Title.Color = clMoneyGreen
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_liquido'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_bruto'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_unitario'
            Title.Color = clMoneyGreen
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comprimento_cx'
            Title.Color = clMoneyGreen
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'largura_cx'
            Title.Color = clMoneyGreen
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'altura_cx'
            Title.Color = clMoneyGreen
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vol_total'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'seq_emb_esp'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'seq_pallet'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'seq_pkl'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'vazio'
            Visible = True
          end>
      end
      object jvdbcResultInspecao: TJvDBComboBox
        Left = 984
        Top = 27
        Width = 41
        Height = 21
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
        DataField = 'ies_result_inspecao'
        DataSource = dsProdListItens
        ItemHeight = 13
        Items.Strings = (
          'P'
          'F/P'
          'F'
          '')
        TabOrder = 1
        Values.Strings = (
          '2'
          '1'
          '0'
          '')
        Visible = False
      end
    end
    object tsPackList: TTabSheet
      Caption = 'Packing List'
      ImageIndex = 1
      object ugPackingList: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1342
        Height = 237
        Align = alClient
        DataSource = dsPackingList
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = ugProdListItensDrawColumnCell
        FixedCols = 3
        MultiSelect = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <
          item
            ControlName = 'jvdbcResultInspecao1'
            FieldName = 'ies_result_inspecao'
            FitCell = fcDesignSize
            LeaveOnEnterKey = True
            LeaveOnUpDownKey = True
          end>
        RowsHeight = 17
        TitleRowHeight = 17
        ReadOnlyCellColor = clCream
        Columns = <
          item
            Expanded = False
            FieldName = 'num_pedido_cli'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_produto'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calDenProduto'
            Width = 391
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_ini_producao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'etd_factory'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_upd_etd'
            Title.Color = clMoneyGreen
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'txt_status_producao'
            Title.Color = clMoneyGreen
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dat_inspecao'
            Title.Color = clMoneyGreen
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ies_result_inspecao'
            Title.Color = clMoneyGreen
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_romanear'
            Title.Color = clMoneyGreen
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calUN'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_real'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_esp'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido_esp'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_caixas'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_bruto_cx'
            Title.Color = clMoneyGreen
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'un_master'
            Title.Color = clMoneyGreen
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_liquido'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_bruto'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_unitario'
            Title.Color = clMoneyGreen
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comprimento_cx'
            Title.Color = clMoneyGreen
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'largura_cx'
            Title.Color = clMoneyGreen
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'altura_cx'
            Title.Color = clMoneyGreen
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vol_total'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'seq_emb_esp'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'seq_pallet'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'seq_pkl'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vazio'
            Visible = True
          end>
      end
      object jvdbcResultInspecao1: TJvDBComboBox
        Left = 984
        Top = 27
        Width = 41
        Height = 21
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
        DataField = 'ies_result_inspecao'
        DataSource = dsProdListItens
        ItemHeight = 13
        Items.Strings = (
          'P'
          'F/P'
          'F'
          '')
        TabOrder = 1
        Values.Strings = (
          '2'
          '1'
          '0'
          '')
        Visible = False
      end
    end
    object tsInvoice: TTabSheet
      Caption = 'Invoice'
      ImageIndex = 2
      object ugInvoice: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1342
        Height = 237
        Align = alClient
        DataSource = dsInvoice
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        FixedCols = 3
        MultiSelect = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <
          item
            ControlName = 'jvdbcResultInspecao1'
            FieldName = 'ies_result_inspecao'
            FitCell = fcDesignSize
            LeaveOnEnterKey = True
            LeaveOnUpDownKey = True
          end>
        RowsHeight = 17
        TitleRowHeight = 17
        ReadOnlyCellColor = clCream
        Columns = <
          item
            Expanded = False
            FieldName = 'num_pedido_cli'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_pedido_for'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_produto'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calDenProduto'
            Width = 391
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_romanear'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calUN'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_real'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_esp'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido_esp'
            Width = 55
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 341
    Width = 1350
    Height = 33
    Align = alTop
    TabOrder = 6
    object btnCriarEmbEsp: TButton
      Left = 5
      Top = 3
      Width = 84
      Height = 25
      Caption = 'Criar Caixa Esp'
      TabOrder = 0
      OnClick = btnCriarEmbEspClick
    end
    object btnAddItemEmbEsp: TButton
      Left = 91
      Top = 3
      Width = 140
      Height = 25
      Caption = 'Adicionar Item Caixa Esp'
      TabOrder = 1
      OnClick = btnAddItemEmbEspClick
    end
    object btnRetirarItemEmbEsp: TButton
      Left = 232
      Top = 3
      Width = 113
      Height = 25
      Caption = 'Retirar Item Caixa Esp'
      TabOrder = 2
      OnClick = btnRetirarItemEmbEspClick
    end
    object bntCriarPallet: TButton
      Left = 364
      Top = 3
      Width = 84
      Height = 25
      Caption = 'Criar Pallet'
      TabOrder = 3
      OnClick = bntCriarPalletClick
    end
    object btnAddCxPallet: TButton
      Left = 451
      Top = 3
      Width = 139
      Height = 25
      Caption = 'Adicionar Caixa ao Pallet'
      TabOrder = 4
      OnClick = btnAddCxPalletClick
    end
    object btnRemCxPallet: TButton
      Left = 591
      Top = 3
      Width = 114
      Height = 25
      Caption = 'Retirar Caixa do Pallet'
      TabOrder = 5
      OnClick = btnRemCxPalletClick
    end
    object btnAddPcklst: TButton
      Left = 810
      Top = 3
      Width = 126
      Height = 25
      Caption = 'Adicionar a Packing List'
      Enabled = False
      TabOrder = 6
      OnClick = btnAddPcklstClick
    end
    object btnRemPcklst: TButton
      Left = 938
      Top = 3
      Width = 128
      Height = 25
      Caption = 'Remover da Packing List'
      Enabled = False
      TabOrder = 7
      OnClick = btnRemPcklstClick
    end
    object btnEstorno: TButton
      Left = 721
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Estorno'
      Enabled = False
      TabOrder = 8
      OnClick = btnEstornoClick
    end
    object btnFaturar: TBitBtn
      Left = 1071
      Top = 3
      Width = 72
      Height = 25
      Caption = 'Faturar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnFaturarClick
    end
    object cbAbrirFatura: TCheckBox
      Left = 1152
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Abrir tela da Fatura'
      TabOrder = 10
    end
  end
  object GroupBox1: TGroupBox
    Left = 1088
    Top = 469
    Width = 249
    Height = 185
    Caption = 'Total Packages Information'
    TabOrder = 7
    object Label12: TLabel
      Left = 8
      Top = 89
      Width = 55
      Height = 13
      Caption = 'Volume (m'#179')'
      FocusControl = DBEdit4
    end
    object Label13: TLabel
      Left = 8
      Top = 18
      Width = 74
      Height = 13
      Caption = 'Peso Bruto (Kg)'
      FocusControl = DBEdit5
    end
    object Label14: TLabel
      Left = 8
      Top = 42
      Width = 83
      Height = 13
      Caption = 'Peso Liquido (Kg)'
      FocusControl = DBEdit6
    end
    object Label15: TLabel
      Left = 8
      Top = 65
      Width = 84
      Height = 13
      Caption = 'Caixas Total (Qtd)'
      FocusControl = DBEdit7
    end
    object Label16: TLabel
      Left = 8
      Top = 112
      Width = 189
      Height = 13
      Caption = 'Quantity of Packages ----------------------------'
    end
    object Label17: TLabel
      Left = 8
      Top = 137
      Width = 62
      Height = 13
      Caption = 'Cartons (Qtd)'
      FocusControl = DBEdit7
    end
    object Label18: TLabel
      Left = 8
      Top = 161
      Width = 57
      Height = 13
      Caption = 'Pallets (Qtd)'
      FocusControl = DBEdit7
    end
    object DBEdit4: TDBEdit
      Left = 97
      Top = 86
      Width = 100
      Height = 21
      Color = clInfoBk
      DataField = 'vol_geral'
      DataSource = dsqryTotalsFatura
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 97
      Top = 15
      Width = 100
      Height = 21
      Color = clInfoBk
      DataField = 'pes_bru_geral'
      DataSource = dsqryTotalsFatura
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 97
      Top = 39
      Width = 100
      Height = 21
      Color = clInfoBk
      DataField = 'pes_liq_geral'
      DataSource = dsqryTotalsFatura
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 97
      Top = 62
      Width = 100
      Height = 21
      Color = clInfoBk
      DataField = 'qtd_caixas'
      DataSource = dsqryTotalsFatura
      TabOrder = 3
    end
    object DBEdit8: TDBEdit
      Left = 97
      Top = 134
      Width = 100
      Height = 21
      Color = clInfoBk
      DataField = 'cxs_outpallets'
      DataSource = dsqryTotalsFatura
      TabOrder = 4
    end
    object DBEdit9: TDBEdit
      Left = 97
      Top = 158
      Width = 100
      Height = 21
      Color = clInfoBk
      DataField = 'qtd_pallets'
      DataSource = dsqryTotalsFatura
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox
    Left = 1088
    Top = 376
    Width = 249
    Height = 87
    Caption = 'Fatura'
    TabOrder = 8
    object Label9: TLabel
      Left = 8
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Fatura'
      FocusControl = DBEdit1
    end
    object Label10: TLabel
      Left = 8
      Top = 40
      Width = 78
      Height = 13
      Caption = 'TotalReal (USD)'
      FocusControl = DBEdit2
    end
    object Label11: TLabel
      Left = 8
      Top = 64
      Width = 74
      Height = 13
      Caption = 'TotalEsp (USD)'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 97
      Top = 15
      Width = 142
      Height = 21
      Color = clInfoBk
      DataField = 'num_fatura'
      DataSource = dsqryTotalsFatura
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 97
      Top = 39
      Width = 100
      Height = 21
      Color = clInfoBk
      DataField = 'vlr_liquido'
      DataSource = dsqryTotalsFatura
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 97
      Top = 63
      Width = 100
      Height = 21
      Color = clInfoBk
      DataField = 'vlr_liquido_esp'
      DataSource = dsqryTotalsFatura
      TabOrder = 2
    end
  end
  object Clientes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_cliente", "nom_cliente_reduz"'
      'from "cliente"'
      'order by 1')
    Left = 200
    Top = 16
    object Clientescod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
  object ds_Clientes: TDataSource
    DataSet = Clientes
    Left = 231
    Top = 16
  end
  object Fornecedores: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select b."cod_fornecedor", c."raz_social_reduz"'
      'from "pedido" a, "pedido_complemento" b, "fornecedor" c'
      'where'
      '      a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido"  = a."num_pedido"'
      '  and c."cod_fornecedor" = b."cod_fornecedor"'
      'group by 1,2'
      'order by 2')
    Left = 200
    Top = 56
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
      end>
    object Fornecedorescod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
    end
    object Fornecedoresraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Required = True
      Size = 30
    end
  end
  object ds_Fornecedores: TDataSource
    DataSet = Fornecedores
    Left = 232
    Top = 56
  end
  object qryNumProdList: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select MAX("num_prod_list") "num_prod_list"'
      'from "prod_list"'
      'where "cod_empresa" = :cod_empresa')
    Left = 104
    Top = 144
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
  object prod_list: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = prod_listAfterPost
    BufferChunks = 1000
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
    Left = 138
    Top = 144
    object prod_listcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_listcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"prod_list"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object prod_listcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"prod_list"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_listnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list"."num_prod_list"'
    end
    object prod_listies_gerar: TIBStringField
      FieldName = 'ies_gerar'
      Origin = '"prod_list"."ies_gerar"'
      FixedChar = True
      Size = 1
    end
    object prod_listies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"prod_list"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object prod_listies_plan_default: TSmallintField
      FieldName = 'ies_plan_default'
      Origin = '"prod_list"."ies_plan_default"'
    end
  end
  object prod_list_itens: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = prod_list_itensAfterPost
    AfterScroll = prod_list_itensAfterScroll
    BeforePost = prod_list_itensBeforePost
    OnCalcFields = DataSetCalcFields
    BufferChunks = 1000
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
      '"prod_list_itens"."num_pedido", '
      
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
        'eal", '
      '"prod_list_itens"."vlr_liquido", '
      
        '   "prod_list_itens"."preco_esp", "prod_list_itens"."vlr_liquido' +
        '_esp", '
      
        '   "prod_list_itens"."vol_total", "prod_list_itens"."pes_bruto",' +
        ' '
      '"prod_list_itens"."pes_liquido", '
      
        '   "prod_list_itens"."qtd_caixas", "prod_list_itens"."un_master"' +
        ', '
      '"prod_list_itens"."pes_bruto_cx", '
      
        '   "prod_list_itens"."altura_cx", "prod_list_itens"."largura_cx"' +
        ', '
      '"prod_list_itens"."comprimento_cx", '
      
        '   "prod_list_itens"."volume_caixa", "prod_list_itens"."ies_caix' +
        'a_fechada", '
      
        '   "prod_list_itens"."pes_unitario", "prod_list_itens"."seq_pall' +
        'et", '
      '"prod_list_itens"."qtd_pallet", '
      
        '   "prod_list_itens"."pes_bruto_pallet", "prod_list_itens"."pes_' +
        'liquido_pallet", '
      
        '   "prod_list_itens"."comprimento_pallet", "prod_list_itens"."la' +
        'rgura_pallet", '
      
        '   "prod_list_itens"."altura_pallet", "prod_list_itens"."volume_' +
        'pallet", '
      
        '   "prod_list_itens"."pes_pallet_vazio", "prod_list_itens"."ies_' +
        'emb_esp", '
      
        '   "prod_list_itens"."seq_emb_esp", "prod_list_itens"."ies_erros' +
        '", '
      '"prod_list_itens"."ies_cadastro", '
      
        '   "prod_list_itens"."ies_sit_fat", "prod_list_itens"."num_nota_' +
        'fiscal", '
      '   "prod_list_itens"."num_seq_nf", "prod_list_itens"."grupo", '
      '"prod_list_itens"."seq_grupo", '
      
        '   "prod_list_itens"."dat_upd_etd", "prod_list_itens"."etd_facto' +
        'ry", '
      '"prod_list_itens"."ies_pallet", '
      
        '   "prod_list_itens"."mesclar", "prod_list_itens"."num_sequencia' +
        '_org", '
      '   "prod_list_itens"."seq_pkl", "prod_list_itens"."vazio")'
      'values'
      
        '  (:"cod_empresa", :"num_prod_list", :"num_sequencia", :"num_fat' +
        'ura", '
      ':"num_pedido", '
      
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
      
        '   :"seq_emb_esp", :"ies_erros", :"ies_cadastro", :"ies_sit_fat"' +
        ', :"num_nota_fiscal", '
      
        '   :"num_seq_nf", :"grupo", :"seq_grupo", :"dat_upd_etd", :"etd_' +
        'factory", '
      
        '   :"ies_pallet", :"mesclar", :"num_sequencia_org", :"seq_pkl", ' +
        ':"vazio")')
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
      '  "prod_list_itens"."etd_factory",'
      '  "prod_list_itens"."ies_pallet",'
      '  "prod_list_itens"."mesclar",'
      '  "prod_list_itens"."num_sequencia_org",'
      '  "prod_list_itens"."seq_pkl",'
      '  "prod_list_itens"."vazio"'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_prod_list", "num_sequencia", "num_fat' +
        'ura", "seq_pkl", "num_pedido",                           '
      
        '       "num_seq_pedido", "num_pedido_for", "num_pedido_cli", "da' +
        't_emissao", "cod_produto", "dat_ini_producao",           '
      
        '       substring("txt_status_producao" from 1 for 255) "txt_stat' +
        'us_producao", "dat_inspecao", "ies_result_inspecao",     '
      
        '       "qtd_romanear", "qtd_confirmada", "qtd_pendente", "qtd_em' +
        'barcada", "preco_real", "vlr_liquido", "preco_esp",      '
      
        '       "vlr_liquido_esp", "vol_total", "pes_bruto", "pes_liquido' +
        '", "qtd_caixas", "un_master", "pes_bruto_cx",            '
      
        '       "altura_cx", "largura_cx", "comprimento_cx", "volume_caix' +
        'a", "ies_caixa_fechada", "pes_unitario", "seq_pallet",   '
      
        '       "qtd_pallet", "pes_bruto_pallet", "pes_liquido_pallet", "' +
        'comprimento_pallet", "largura_pallet", "altura_pallet",  '
      
        '       "volume_pallet", "pes_pallet_vazio", "ies_emb_esp", "seq_' +
        'emb_esp", "ies_erros", "ies_cadastro",                   '
      
        '       "ies_sit_fat", "num_nota_fiscal", "num_seq_nf", "grupo", ' +
        '"seq_grupo", "dat_upd_etd", "etd_factory", "ies_pallet", '
      
        '       "mesclar", "num_sequencia_org", "vazio"                  ' +
        '                                                         '
      
        '  from "prod_list_itens"                                        ' +
        '                                                         '
      
        ' where "cod_empresa" = :cod_empresa                             ' +
        '                                                         '
      
        '   and "num_prod_list" = :num_prod_list                         ' +
        '                                                         '
      
        '   and "num_fatura" is null                                     ' +
        '                                                         '
      
        ' order by "dat_emissao", "num_pedido", "num_sequencia"          ' +
        '                                                         ')
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
      '  "prod_list_itens"."ies_sit_fat" = :"ies_sit_fat",'
      '  "prod_list_itens"."num_nota_fiscal" = :"num_nota_fiscal",'
      '  "prod_list_itens"."num_seq_nf" = :"num_seq_nf",'
      '  "prod_list_itens"."grupo" = :"grupo",'
      '  "prod_list_itens"."seq_grupo" = :"seq_grupo",'
      '  "prod_list_itens"."dat_upd_etd" = :"dat_upd_etd",'
      '  "prod_list_itens"."etd_factory" = :"etd_factory",'
      '  "prod_list_itens"."ies_pallet" = :"ies_pallet",'
      '  "prod_list_itens"."mesclar" = :"mesclar",'
      '  "prod_list_itens"."num_sequencia_org" = :"num_sequencia_org",'
      '  "prod_list_itens"."seq_pkl" = :"seq_pkl",'
      '  "prod_list_itens"."vazio" = :"vazio"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 173
    Top = 144
    object prod_list_itenscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_list_itensnum_sequencia: TIntegerField
      DisplayLabel = 'Seq'
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '###'
    end
    object prod_list_itensnum_sequencia_org: TIntegerField
      FieldName = 'num_sequencia_org'
      Origin = '"prod_list_itens"."num_sequencia_org"'
    end
    object prod_list_itensnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_list_itensnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"prod_list_itens"."num_pedido"'
    end
    object prod_list_itensnum_seq_pedido: TSmallintField
      FieldName = 'num_seq_pedido'
      Origin = '"prod_list_itens"."num_seq_pedido"'
    end
    object prod_list_itensnum_pedido_cli: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'num_pedido_cli'
      Origin = '"prod_list_itens"."num_pedido_cli"'
      ReadOnly = True
      Size = 15
    end
    object prod_list_itenscod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"prod_list_itens"."cod_produto"'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object prod_list_itenscalDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto'
      ReadOnly = True
      Size = 100
      Calculated = True
    end
    object prod_list_itensdat_ini_producao: TDateField
      DisplayLabel = 'Ini Prod'
      FieldName = 'dat_ini_producao'
      Origin = '"prod_list_itens"."dat_ini_producao"'
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object prod_list_itensetd_factory: TDateField
      DisplayLabel = 'Etd Factory'
      FieldName = 'etd_factory'
      Origin = '"prod_list_itens"."etd_factory"'
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object prod_list_itensdat_upd_etd: TDateField
      DisplayLabel = 'Upd Factory'
      FieldName = 'dat_upd_etd'
      Origin = '"prod_list_itens"."dat_upd_etd"'
      DisplayFormat = 'dd.mm.yy'
    end
    object prod_list_itensdat_inspecao: TDateField
      DisplayLabel = 'Inspe'#231#227'o'
      FieldName = 'dat_inspecao'
      Origin = '"prod_list_itens"."dat_inspecao"'
      DisplayFormat = 'dd.mm.yy'
    end
    object prod_list_itensies_result_inspecao: TIBStringField
      DisplayLabel = 'Res'
      FieldName = 'ies_result_inspecao'
      Origin = '"prod_list_itens"."ies_result_inspecao"'
      OnGetText = prod_list_itensies_result_inspecaoGetText
      OnSetText = prod_list_itensies_result_inspecaoSetText
      FixedChar = True
      Size = 1
    end
    object prod_list_itensqtd_confirmada: TIBBCDField
      DisplayLabel = 'Confirmada'
      FieldName = 'qtd_confirmada'
      Origin = '"prod_list_itens"."qtd_confirmada"'
      ReadOnly = True
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object prod_list_itensqtd_romanear: TIBBCDField
      DisplayLabel = 'Embarcar'
      FieldName = 'qtd_romanear'
      Origin = '"prod_list_itens"."qtd_romanear"'
      OnValidate = prod_list_itensqtd_romanearValidate
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object prod_list_itenstxt_status_producao: TIBStringField
      DisplayLabel = 'Status Produ'#231#227'o'
      FieldName = 'txt_status_producao'
      Size = 255
    end
    object prod_list_itensnum_fatura: TIBStringField
      DisplayLabel = 'Fatura'
      FieldName = 'num_fatura'
      Origin = '"prod_list_itens"."num_fatura"'
      ReadOnly = True
      Size = 25
    end
    object prod_list_itenscalUn: TStringField
      DisplayLabel = 'UN'
      FieldKind = fkCalculated
      FieldName = 'calUn'
      ReadOnly = True
      Size = 3
      Calculated = True
    end
    object prod_list_itenspreco_real: TFloatField
      DisplayLabel = 'Pre'#231'o Real'
      FieldName = 'preco_real'
      Origin = '"prod_list_itens"."preco_real"'
      ReadOnly = True
      DisplayFormat = '#,##0.000000'
    end
    object prod_list_itensvlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      Origin = '"prod_list_itens"."vlr_liquido"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspreco_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'preco_esp'
      Origin = '"prod_list_itens"."preco_esp"'
      ReadOnly = True
      DisplayFormat = '#,##0.000000'
    end
    object prod_list_itensvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Esp'
      FieldName = 'vlr_liquido_esp'
      Origin = '"prod_list_itens"."vlr_liquido_esp"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspes_unitario: TFloatField
      DisplayLabel = 'PU'
      FieldName = 'pes_unitario'
      Origin = '"prod_list_itens"."pes_unitario"'
      OnValidate = prod_list_itenspes_unitarioValidate
      DisplayFormat = '#,##0.00000'
    end
    object prod_list_itenspes_bruto: TIBBCDField
      DisplayLabel = 'PB'
      FieldName = 'pes_bruto'
      Origin = '"prod_list_itens"."pes_bruto"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object prod_list_itenspes_liquido: TIBBCDField
      DisplayLabel = 'PL'
      FieldName = 'pes_liquido'
      Origin = '"prod_list_itens"."pes_liquido"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object prod_list_itensqtd_caixas: TIntegerField
      DisplayLabel = 'CXS'
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_itens"."qtd_caixas"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object prod_list_itensun_master: TIBBCDField
      DisplayLabel = 'UN/CX'
      FieldName = 'un_master'
      Origin = '"prod_list_itens"."un_master"'
      OnValidate = prod_list_itensun_masterValidate
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object prod_list_itenspes_bruto_cx: TFloatField
      DisplayLabel = 'PBCX'
      FieldName = 'pes_bruto_cx'
      Origin = '"prod_list_itens"."pes_bruto_cx"'
      OnValidate = prod_list_itenspes_bruto_cxValidate
      DisplayFormat = '#,##0.00'
    end
    object prod_list_itensaltura_cx: TIBBCDField
      DisplayLabel = 'A'
      FieldName = 'altura_cx'
      Origin = '"prod_list_itens"."altura_cx"'
      OnValidate = prod_list_itensaltura_cxValidate
      DisplayFormat = '##0.0'
      Precision = 9
      Size = 4
    end
    object prod_list_itenslargura_cx: TIBBCDField
      DisplayLabel = 'L'
      FieldName = 'largura_cx'
      Origin = '"prod_list_itens"."largura_cx"'
      OnValidate = prod_list_itensaltura_cxValidate
      DisplayFormat = '##0.0'
      Precision = 9
      Size = 4
    end
    object prod_list_itenscomprimento_cx: TIBBCDField
      DisplayLabel = 'C'
      FieldName = 'comprimento_cx'
      Origin = '"prod_list_itens"."comprimento_cx"'
      OnValidate = prod_list_itensaltura_cxValidate
      DisplayFormat = '##0.0'
      Precision = 9
      Size = 4
    end
    object prod_list_itensvolume_caixa: TIBBCDField
      DisplayLabel = 'VolCaixa'
      FieldName = 'volume_caixa'
      Origin = '"prod_list_itens"."volume_caixa"'
      DisplayFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object prod_list_itensvol_total: TIBBCDField
      DisplayLabel = 'Vol Total'
      FieldName = 'vol_total'
      Origin = '"prod_list_itens"."vol_total"'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object prod_list_itensnum_pedido_for: TIBStringField
      DisplayLabel = 'Confirma'#231#227'o'
      FieldName = 'num_pedido_for'
      Origin = '"prod_list_itens"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object prod_list_itensdat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"prod_list_itens"."dat_emissao"'
    end
    object prod_list_itensqtd_pendente: TIBBCDField
      DisplayLabel = 'Pendente'
      FieldName = 'qtd_pendente'
      Origin = '"prod_list_itens"."qtd_pendente"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object prod_list_itensqtd_embarcada: TIBBCDField
      DisplayLabel = 'Embarcada'
      FieldName = 'qtd_embarcada'
      Origin = '"prod_list_itens"."qtd_embarcada"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object prod_list_itensies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"prod_list_itens"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensseq_pallet: TIntegerField
      DisplayLabel = 'PT'
      FieldName = 'seq_pallet'
      Origin = '"prod_list_itens"."seq_pallet"'
      ReadOnly = True
      DisplayFormat = '#0'
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
    object prod_list_itenspes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"prod_list_itens"."pes_pallet_vazio"'
    end
    object prod_list_itensies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"prod_list_itens"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensseq_emb_esp: TIntegerField
      DisplayLabel = 'CE'
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
      ReadOnly = True
      DisplayFormat = '#0'
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
    object prod_list_itensnum_seq_nf: TSmallintField
      DisplayLabel = 'SeqFat'
      FieldName = 'num_seq_nf'
      Origin = '"prod_list_itens"."num_seq_nf"'
      DisplayFormat = '#0'
    end
    object prod_list_itensies_pallet: TIBStringField
      FieldName = 'ies_pallet'
      Origin = '"prod_list_itens"."ies_pallet"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensmesclar: TIBStringField
      FieldName = 'mesclar'
      Origin = '"prod_list_itens"."mesclar"'
      FixedChar = True
      Size = 1
    end
    object prod_list_itensgrupo: TSmallintField
      FieldName = 'grupo'
      Origin = '"prod_list_itens"."grupo"'
    end
    object prod_list_itensseq_grupo: TSmallintField
      FieldName = 'seq_grupo'
      Origin = '"prod_list_itens"."seq_grupo"'
    end
    object prod_list_itensseq_pkl: TIntegerField
      DisplayLabel = 'PKL'
      FieldName = 'seq_pkl'
      Origin = '"prod_list_itens"."seq_pkl"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object prod_list_itensvazio: TIBStringField
      DisplayLabel = '*'
      FieldName = 'vazio'
      Origin = '"prod_list_itens"."vazio"'
      FixedChar = True
      Size = 1
    end
  end
  object dsProdListItens: TDataSource
    DataSet = prod_list_itens
    Left = 173
    Top = 176
  end
  object spr_update_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_update_prodlist'
    Left = 207
    Top = 144
  end
  object spr_prodlist_process: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_process'
    Left = 239
    Top = 144
  end
  object emb_esp: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = emb_espAfterPost
    AfterScroll = emb_espAfterScroll
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      
        '  ("prod_list_itens"."vol_total", "prod_list_itens"."pes_bruto",' +
        ' '
      '"prod_list_itens"."pes_liquido", '
      
        '   "prod_list_itens"."qtd_caixas", "prod_list_itens"."pes_bruto_' +
        'cx", '
      '"prod_list_itens"."volume_caixa", '
      
        '   "prod_list_itens"."comprimento_cx", "prod_list_itens"."largur' +
        'a_cx", '
      '   "prod_list_itens"."altura_cx")'
      'values'
      
        '  (:"vol_total", :"pes_bruto", :"pes_liquido", :"qtd_caixas", :"' +
        'pes_bruto_cx", '
      
        '   :"volume_caixa", :"comprimento_cx", :"largura_cx", :"altura_c' +
        'x")')
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
      '  "prod_list_itens"."etd_factory",'
      '  "prod_list_itens"."ies_pallet",'
      '  "prod_list_itens"."mesclar",'
      '  "prod_list_itens"."num_sequencia_org"'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_prod_list" , "num_sequencia",  "seq_e' +
        'mb_esp", "vol_total", "pes_bruto", "pes_liquido", "qtd_caixas", ' +
        '"pes_bruto_cx",  "volume_caixa", "comprimento_cx", "largura_cx",' +
        ' "altura_cx", "ies_pallet", "seq_pallet", "num_fatura", "seq_pkl' +
        '"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_fatura" = :num_fatura'
      '  and "ies_emb_esp" = '#39'S'#39
      '  and "qtd_caixas" > 0'
      'order by "seq_emb_esp"')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."pes_bruto" = :"pes_bruto",'
      '  "prod_list_itens"."pes_liquido" = :"pes_liquido",'
      '  "prod_list_itens"."qtd_caixas" = :"qtd_caixas",'
      '  "prod_list_itens"."comprimento_cx" = :"comprimento_cx",'
      '  "prod_list_itens"."largura_cx" = :"largura_cx",'
      '  "prod_list_itens"."altura_cx" = :"altura_cx",'
      '  "prod_list_itens"."pes_bruto_cx" = :"pes_bruto_cx",'
      
        '  "prod_list_itens"."volume_caixa" = ("altura_cx" * "largura_cx"' +
        ' * "comprimento_cx")/1000000,'
      '  "prod_list_itens"."vol_total" = "qtd_caixas" * "volume_caixa"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 88
    Top = 424
    object emb_espcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_espnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_espnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_espvol_total: TIBBCDField
      DisplayLabel = 'VolTotal'
      FieldName = 'vol_total'
      Origin = '"prod_list_itens"."vol_total"'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object emb_espseq_emb_esp: TIntegerField
      DisplayLabel = 'CE'
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object emb_esppes_bruto: TIBBCDField
      DisplayLabel = 'PB'
      FieldName = 'pes_bruto'
      Origin = '"prod_list_itens"."pes_bruto"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object emb_esppes_liquido: TIBBCDField
      DisplayLabel = 'PL'
      FieldName = 'pes_liquido'
      Origin = '"prod_list_itens"."pes_liquido"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object emb_espqtd_caixas: TIntegerField
      DisplayLabel = 'CXS'
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_itens"."qtd_caixas"'
      OnValidate = emb_espqtd_caixasValidate
      DisplayFormat = '#0'
    end
    object emb_espvolume_caixa: TIBBCDField
      DisplayLabel = 'VolCaixa'
      FieldName = 'volume_caixa'
      Origin = '"prod_list_itens"."volume_caixa"'
      ReadOnly = True
      DisplayFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object emb_espcomprimento_cx: TIBBCDField
      DisplayLabel = 'C'
      FieldName = 'comprimento_cx'
      Origin = '"prod_list_itens"."comprimento_cx"'
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object emb_esplargura_cx: TIBBCDField
      DisplayLabel = 'L'
      FieldName = 'largura_cx'
      Origin = '"prod_list_itens"."largura_cx"'
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object emb_espaltura_cx: TIBBCDField
      DisplayLabel = 'A'
      FieldName = 'altura_cx'
      Origin = '"prod_list_itens"."altura_cx"'
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object emb_esppes_bruto_cx: TFloatField
      DisplayLabel = 'PBCX'
      FieldName = 'pes_bruto_cx'
      Origin = '"prod_list_itens"."pes_bruto_cx"'
      DisplayFormat = '#0.00'
    end
    object emb_espies_pallet: TIBStringField
      FieldName = 'ies_pallet'
      Origin = '"prod_list_itens"."ies_pallet"'
      FixedChar = True
      Size = 1
    end
    object emb_espseq_pallet: TIntegerField
      DisplayLabel = 'PT'
      FieldName = 'seq_pallet'
      Origin = '"prod_list_itens"."seq_pallet"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object emb_espnum_fatura: TIBStringField
      DisplayLabel = 'Fatura'
      FieldName = 'num_fatura'
      Origin = '"prod_list_itens"."num_fatura"'
      ReadOnly = True
      Size = 25
    end
    object emb_espseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = '"prod_list_itens"."seq_pkl"'
    end
  end
  object dsemb_esp: TDataSource
    DataSet = emb_esp
    Left = 88
    Top = 453
  end
  object emb_esp_itens: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = prod_list_itensAfterPost
    OnCalcFields = DataSetCalcFields
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      
        '  ("prod_list_itens"."qtd_romanear", "prod_list_itens"."pes_unit' +
        'ario")'
      'values'
      '  (:"qtd_romanear", :"pes_unitario")')
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
      '  "prod_list_itens"."etd_factory",'
      '  "prod_list_itens"."ies_pallet",'
      '  "prod_list_itens"."mesclar",'
      '  "prod_list_itens"."num_sequencia_org"'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_prod_list", "num_sequencia", "seq_emb' +
        '_esp",   "num_pedido_cli", "cod_produto", "qtd_romanear", "pes_u' +
        'nitario"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "ies_emb_esp" = '#39'S'#39
      '  and "seq_emb_esp" = :seq_emb_esp'
      'order by "num_sequencia"')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."qtd_romanear" = :"qtd_romanear",'
      '  "prod_list_itens"."pes_unitario" = :"pes_unitario"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 104
    Top = 579
    object emb_esp_itenscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_itensnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_itensnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_itensseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
    end
    object emb_esp_itensnum_pedido_cli: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'num_pedido_cli'
      Origin = '"prod_list_itens"."num_pedido_cli"'
      ReadOnly = True
      Size = 15
    end
    object emb_esp_itenscod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"prod_list_itens"."cod_produto"'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object emb_esp_itenscalDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto'
      ReadOnly = True
      Size = 100
      Calculated = True
    end
    object emb_esp_itensqtd_romanear: TIBBCDField
      DisplayLabel = 'Embarcar'
      FieldName = 'qtd_romanear'
      Origin = '"prod_list_itens"."qtd_romanear"'
      OnValidate = prod_list_itensqtd_romanearValidate
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object emb_esp_itenscalUN: TStringField
      DisplayLabel = 'UN'
      FieldKind = fkCalculated
      FieldName = 'calUN'
      ReadOnly = True
      Size = 3
      Calculated = True
    end
    object emb_esp_itenspes_unitario: TFloatField
      DisplayLabel = 'PU'
      FieldName = 'pes_unitario'
      Origin = '"prod_list_itens"."pes_unitario"'
      ReadOnly = True
      DisplayFormat = '#,##0.0000'
    end
  end
  object dsemb_esp_itens: TDataSource
    DataSet = emb_esp_itens
    Left = 104
    Top = 608
  end
  object pallets: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = palletsAfterPost
    AfterScroll = palletsAfterScroll
    BufferChunks = 1000
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
      
        '   "prod_list_itens"."num_sequencia", "prod_list_itens"."ies_pal' +
        'let", '
      '"prod_list_itens"."seq_pallet", '
      
        '   "prod_list_itens"."num_fatura", "prod_list_itens"."qtd_pallet' +
        '", '
      '"prod_list_itens"."pes_bruto_pallet", '
      
        '   "prod_list_itens"."pes_liquido_pallet", "prod_list_itens"."al' +
        'tura_pallet", '
      
        '   "prod_list_itens"."largura_pallet", "prod_list_itens"."compri' +
        'mento_pallet", '
      
        '   "prod_list_itens"."volume_pallet", "prod_list_itens"."pes_pal' +
        'let_vazio")'
      'values'
      
        '  (:"cod_empresa", :"num_prod_list", :"num_sequencia", :"ies_pal' +
        'let", :"seq_pallet", '
      
        '   :"num_fatura", :"qtd_pallet", :"pes_bruto_pallet", :"pes_liqu' +
        'ido_pallet", '
      
        '   :"altura_pallet", :"largura_pallet", :"comprimento_pallet", :' +
        '"volume_pallet", '
      '   :"pes_pallet_vazio")')
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
      '  "prod_list_itens"."etd_factory",'
      '  "prod_list_itens"."ies_pallet",'
      '  "prod_list_itens"."mesclar",'
      '  "prod_list_itens"."num_sequencia_org",'
      '  "prod_list_itens"."seq_pkl"'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_prod_list", "num_sequencia",  "ies_pa' +
        'llet",'
      
        '       "seq_pallet", "num_fatura",  "qtd_pallet", "pes_bruto_pal' +
        'let", "pes_liquido_pallet",  "altura_pallet", "largura_pallet", ' +
        '"comprimento_pallet", "volume_pallet", "pes_pallet_vazio", "seq_' +
        'pkl"'
      '  from "prod_list_itens"'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_prod_list" = :num_prod_list'
      '   and "num_fatura" = :num_fatura'
      '   and "ies_pallet" = '#39'S'#39
      '   and "qtd_pallet" > 0'
      ' order by "seq_pallet"')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa",'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list",'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia",'
      '  "prod_list_itens"."ies_pallet" = :"ies_pallet",'
      '  "prod_list_itens"."seq_pallet" = :"seq_pallet",'
      '  "prod_list_itens"."num_fatura" = :"num_fatura",'
      '  "prod_list_itens"."qtd_pallet" = :"qtd_pallet",'
      '  "prod_list_itens"."pes_bruto_pallet" = :"pes_bruto_pallet",'
      
        '  "prod_list_itens"."pes_liquido_pallet" = :"pes_liquido_pallet"' +
        ','
      '  "prod_list_itens"."altura_pallet" = :"altura_pallet",'
      '  "prod_list_itens"."largura_pallet" = :"largura_pallet",'
      
        '  "prod_list_itens"."comprimento_pallet" = :"comprimento_pallet"' +
        ','
      '  "prod_list_itens"."pes_pallet_vazio" = :"pes_pallet_vazio",'
      
        '  "prod_list_itens"."volume_pallet" = ("qtd_pallet" * (("altura_' +
        'pallet" * "largura_pallet" * "comprimento_pallet")/1000000))'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 648
    Top = 437
    object palletscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object palletsnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object palletsnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object palletsies_pallet: TIBStringField
      FieldName = 'ies_pallet'
      Origin = '"prod_list_itens"."ies_pallet"'
      FixedChar = True
      Size = 1
    end
    object palletsseq_pallet: TIntegerField
      DisplayLabel = 'PT'
      FieldName = 'seq_pallet'
      Origin = '"prod_list_itens"."seq_pallet"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object palletsqtd_pallet: TIntegerField
      DisplayLabel = 'QT'
      FieldName = 'qtd_pallet'
      Origin = '"prod_list_itens"."qtd_pallet"'
      OnValidate = palletsqtd_palletValidate
      DisplayFormat = '#0'
    end
    object palletspes_pallet_vazio: TFloatField
      DisplayLabel = 'PV'
      FieldName = 'pes_pallet_vazio'
      Origin = '"prod_list_itens"."pes_pallet_vazio"'
      DisplayFormat = '#0.0'
    end
    object palletspes_bruto_pallet: TIBBCDField
      DisplayLabel = 'PB'
      FieldName = 'pes_bruto_pallet'
      Origin = '"prod_list_itens"."pes_bruto_pallet"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object palletspes_liquido_pallet: TIBBCDField
      DisplayLabel = 'PL'
      FieldName = 'pes_liquido_pallet'
      Origin = '"prod_list_itens"."pes_liquido_pallet"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object palletsaltura_pallet: TIBBCDField
      DisplayLabel = 'A'
      FieldName = 'altura_pallet'
      Origin = '"prod_list_itens"."altura_pallet"'
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object palletslargura_pallet: TIBBCDField
      DisplayLabel = 'L'
      FieldName = 'largura_pallet'
      Origin = '"prod_list_itens"."largura_pallet"'
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object palletscomprimento_pallet: TIBBCDField
      DisplayLabel = 'C'
      FieldName = 'comprimento_pallet'
      Origin = '"prod_list_itens"."comprimento_pallet"'
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object palletsvolume_pallet: TIBBCDField
      DisplayLabel = 'VolTotal'
      FieldName = 'volume_pallet'
      Origin = '"prod_list_itens"."volume_pallet"'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 4
    end
    object palletsnum_fatura: TIBStringField
      DisplayLabel = 'Fatura'
      FieldName = 'num_fatura'
      Origin = '"prod_list_itens"."num_fatura"'
      ReadOnly = True
      Size = 25
    end
    object palletsseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = '"prod_list_itens"."seq_pkl"'
    end
  end
  object dsPallets: TDataSource
    DataSet = pallets
    Left = 648
    Top = 468
  end
  object dspallets_itens: TDataSource
    DataSet = pallets_itens
    Left = 637
    Top = 623
  end
  object pallets_itens: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnCalcFields = pallets_itensCalcFields
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "prod_list_itens"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "prod_list_itens"'
      '  ("prod_list_itens"."qtd_romanear")'
      'values'
      '  (:"qtd_romanear")')
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
      '  "prod_list_itens"."etd_factory",'
      '  "prod_list_itens"."ies_pallet",'
      '  "prod_list_itens"."mesclar",'
      '  "prod_list_itens"."num_sequencia_org"'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_prod_list", "num_sequencia", "seq_pal' +
        'let", "ies_pallet",'
      
        '       "num_pedido_cli", "cod_produto", "qtd_romanear", "ies_emb' +
        '_esp", "qtd_caixas",'
      '       "seq_emb_esp"'
      '  from "prod_list_itens"'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_prod_list" = :num_prod_list'
      '   and "ies_pallet" = '#39'S'#39
      '   and "ies_emb_esp" = '#39'N'#39
      '   and "seq_pallet" = :seq_pallet'
      'union all'
      
        'select "cod_empresa", "num_prod_list", "num_sequencia", "seq_pal' +
        'let", "ies_pallet",'
      
        '       "num_pedido_cli", "cod_produto", "qtd_romanear", "ies_emb' +
        '_esp", "qtd_caixas",'
      '       "seq_emb_esp"'
      '  from "prod_list_itens"'
      ' where "cod_empresa" = :cod_empresa'
      '   and "num_prod_list" = :num_prod_list'
      '   and "ies_pallet" = '#39'S'#39
      '   and "ies_emb_esp" = '#39'S'#39
      '   and "qtd_caixas" > 0'
      '   and "seq_pallet" = :seq_pallet'
      'order by 3')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."qtd_romanear" = :"qtd_romanear"'
      'where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 637
    Top = 592
    object pallets_itenscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pallets_itensnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pallets_itensnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pallets_itensseq_pallet: TIntegerField
      FieldName = 'seq_pallet'
      Origin = '"prod_list_itens"."seq_pallet"'
    end
    object pallets_itensies_pallet: TIBStringField
      FieldName = 'ies_pallet'
      Origin = '"prod_list_itens"."ies_pallet"'
      FixedChar = True
      Size = 1
    end
    object pallets_itensnum_pedido_cli: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'num_pedido_cli'
      Origin = '"prod_list_itens"."num_pedido_cli"'
      ReadOnly = True
      Size = 15
    end
    object pallets_itenscod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"prod_list_itens"."cod_produto"'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object pallets_itenscalDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto'
      ReadOnly = True
      Size = 100
      Calculated = True
    end
    object pallets_itensqtd_romanear: TIBBCDField
      DisplayLabel = 'Embarcar'
      FieldName = 'qtd_romanear'
      Origin = '"prod_list_itens"."qtd_romanear"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object pallets_itenscalUN: TStringField
      DisplayLabel = 'UN'
      FieldKind = fkCalculated
      FieldName = 'calUN'
      ReadOnly = True
      Size = 3
      Calculated = True
    end
    object pallets_itensies_emb_esp: TIBStringField
      DefaultExpression = '#0'
      DisplayLabel = 'ES'
      FieldName = 'ies_emb_esp'
      Origin = '"prod_list_itens"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object pallets_itensqtd_caixas: TIntegerField
      DisplayLabel = 'CXS'
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_itens"."qtd_caixas"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object pallets_itensseq_emb_esp: TIntegerField
      DisplayLabel = 'CE'
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
  end
  object spr_prox_seq_embesp: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      
        'select * from "spr_prox_seq_embesp"(:cod_empresa, :num_prod_list' +
        ');')
    Left = 48
    Top = 424
    object spr_prox_seq_embespnew_seq_emb_esp: TIntegerField
      FieldName = 'new_seq_emb_esp'
      Origin = '"spr_prox_seq_embesp"."new_seq_emb_esp"'
    end
  end
  object spr_prodlist_criarembesp: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_criarembesp'
    Left = 128
    Top = 424
  end
  object spr_prodlist_calc_embesp: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_calc_embesp'
    Left = 168
    Top = 424
  end
  object spr_prodlist_retirarembesp: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_retirarembesp'
    Left = 208
    Top = 424
  end
  object spr_prox_seq_pallet: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      
        'select * from "spr_prox_seq_pallet"(:cod_empresa, :num_prod_list' +
        ');')
    Left = 616
    Top = 437
    object spr_prox_seq_palletnew_seq_pallet: TIntegerField
      FieldName = 'new_seq_pallet'
      Origin = '"spr_prox_seq_pallet"."new_seq_pallet"'
    end
  end
  object spr_prodlist_criarpallet: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_criarpallet'
    Left = 688
    Top = 437
  end
  object spr_prodlist_addembesp_pallet: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_addembesp_pallet'
    Left = 720
    Top = 437
  end
  object spr_prodlist_calc_pallet: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_calc_pallet'
    Left = 760
    Top = 437
  end
  object spr_prodlist_retirarpallet: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_retirarpallet'
    Left = 800
    Top = 437
  end
  object spr_ordenar_seqembesp: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_ordenar_seqembesp'
    Left = 248
    Top = 424
  end
  object spr_ordenar_seqpallet: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_ordenar_seqpallet'
    Left = 832
    Top = 437
  end
  object Faturas: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select "num_fatura", MAX("num_nota_fiscal") "num_nota_fiscal"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_fatura" <> '#39#39
      'group by 1'
      'order by 1')
    Left = 320
    Top = 144
    object Faturasnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Size = 25
    end
    object Faturasnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
    end
  end
  object dsFaturas: TDataSource
    DataSet = Faturas
    Left = 320
    Top = 174
  end
  object packing_list: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = prod_list_itensAfterPost
    AfterScroll = prod_list_itensAfterScroll
    OnCalcFields = DataSetCalcFields
    BufferChunks = 1000
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
      
        '   "prod_list_itens"."num_nota_fiscal", "prod_list_itens"."num_s' +
        'eq_nf",'
      '"prod_list_itens"."num_pedido", '
      
        '   "prod_list_itens"."num_seq_pedido", "prod_list_itens"."num_pe' +
        'dido_for", '
      
        '   "prod_list_itens"."num_pedido_cli",  "prod_list_itens"."dat_e' +
        'missao",'
      '   "prod_list_itens"."cod_produto", '
      '   "prod_list_itens"."dat_ini_producao",'
      
        '   "prod_list_itens"."etd_factory",  "prod_list_itens"."dat_upd_' +
        'etd",'
      
        '   "prod_list_itens"."txt_status_producao", "prod_list_itens"."d' +
        'at_inspecao", '
      
        '   "prod_list_itens"."ies_result_inspecao", "prod_list_itens"."q' +
        'td_romanear", '
      
        '   "prod_list_itens"."qtd_confirmada", "prod_list_itens"."qtd_pe' +
        'ndente", '
      
        '   "prod_list_itens"."qtd_embarcada", "prod_list_itens"."preco_r' +
        'eal", '
      '"prod_list_itens"."vlr_liquido", '
      
        '   "prod_list_itens"."preco_esp", "prod_list_itens"."vlr_liquido' +
        '_esp", '
      
        '   "prod_list_itens"."vol_total", "prod_list_itens"."pes_bruto",' +
        ' '
      '"prod_list_itens"."pes_liquido", '
      
        '   "prod_list_itens"."qtd_caixas", "prod_list_itens"."un_master"' +
        ', '
      '"prod_list_itens"."pes_bruto_cx", '
      
        '   "prod_list_itens"."altura_cx", "prod_list_itens"."largura_cx"' +
        ', '
      '"prod_list_itens"."comprimento_cx", '
      
        '   "prod_list_itens"."volume_caixa", "prod_list_itens"."ies_caix' +
        'a_fechada", '
      
        '   "prod_list_itens"."pes_unitario", "prod_list_itens"."seq_pall' +
        'et", '
      '"prod_list_itens"."qtd_pallet", '
      
        '   "prod_list_itens"."pes_bruto_pallet", "prod_list_itens"."pes_' +
        'liquido_pallet", '
      
        '   "prod_list_itens"."comprimento_pallet", "prod_list_itens"."la' +
        'rgura_pallet", '
      
        '   "prod_list_itens"."altura_pallet", "prod_list_itens"."volume_' +
        'pallet", '
      
        '   "prod_list_itens"."pes_pallet_vazio", "prod_list_itens"."ies_' +
        'emb_esp", '
      
        '   "prod_list_itens"."seq_emb_esp", "prod_list_itens"."ies_erros' +
        '", '
      '"prod_list_itens"."ies_cadastro", '
      
        '   "prod_list_itens"."cal_preco_real", "prod_list_itens"."cal_vl' +
        'r_liquido", '
      
        '   "prod_list_itens"."cal_preco_esp", "prod_list_itens"."cal_vlr' +
        '_liquido_esp", '
      
        '   "prod_list_itens"."cal_vol_total", "prod_list_itens"."cal_pes' +
        '_bruto", '
      
        '   "prod_list_itens"."cal_pes_liquido", "prod_list_itens"."cal_q' +
        'td_caixas", '
      
        '   "prod_list_itens"."cal_volume_caixa", "prod_list_itens"."ies_' +
        'sit_fat",'
      '   "prod_list_itens"."ies_pallet", "prod_list_itens"."mesclar")'
      'values'
      
        '  (:"cod_empresa", :"num_prod_list", :"num_sequencia", :"num_fat' +
        'ura", :"num_nota_fiscal", :"num_seq_nf",'
      
        '   :"num_pedido", :"num_seq_pedido", :"num_pedido_for", :"num_pe' +
        'dido_cli", :"dat_emissao", :"cod_produto",'
      
        '   :"dat_ini_producao", :"etd_factory", :"dat_upd_etd", :"txt_st' +
        'atus_producao", :"dat_inspecao",'
      
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
        '"ies_sit_fat", :"ies_pallet", :"mesclar")')
    RefreshSQL.Strings = (
      'Select *'
      'from "prod_list_itens" '
      'where'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia" ')
    SelectSQL.Strings = (
      
        'select "cod_empresa", "num_prod_list", "num_sequencia", "num_fat' +
        'ura", "seq_pkl", "num_pedido", "num_seq_pedido", "num_pedido_for' +
        '",'
      
        '       "num_pedido_cli", "dat_emissao", "cod_produto", "dat_ini_' +
        'producao",'
      
        '       substring("txt_status_producao" from 1 for 255) "txt_stat' +
        'us_producao", "dat_inspecao", "ies_result_inspecao",'
      
        '       "qtd_romanear", "qtd_confirmada", "qtd_pendente", "qtd_em' +
        'barcada", "preco_real", "vlr_liquido", "preco_esp",'
      
        '       "vlr_liquido_esp", "vol_total", "pes_bruto", "pes_liquido' +
        '", "qtd_caixas", "un_master", "pes_bruto_cx",'
      
        '       "altura_cx", "largura_cx", "comprimento_cx", "volume_caix' +
        'a", "ies_caixa_fechada", "pes_unitario", "seq_pallet",'
      
        '       "qtd_pallet", "pes_bruto_pallet", "pes_liquido_pallet", "' +
        'comprimento_pallet", "largura_pallet", "altura_pallet",'
      
        '       "volume_pallet", "pes_pallet_vazio", "ies_emb_esp", "seq_' +
        'emb_esp", "ies_erros", "ies_cadastro",'
      
        '       "ies_sit_fat", "num_nota_fiscal", "num_seq_nf", "grupo", ' +
        '"seq_grupo", "dat_upd_etd", "etd_factory", "ies_pallet",'
      '       "mesclar", "num_sequencia_org", "vazio"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_fatura" = :num_fatura'
      
        'order by "num_fatura", "seq_pkl", "seq_pallet", "seq_emb_esp", "' +
        'num_sequencia"')
    ModifySQL.Strings = (
      'update "prod_list_itens"'
      'set'
      '  "prod_list_itens"."cod_empresa" = :"cod_empresa",'
      '  "prod_list_itens"."num_prod_list" = :"num_prod_list",'
      '  "prod_list_itens"."num_sequencia" = :"num_sequencia",'
      '  "prod_list_itens"."num_fatura" = :"num_fatura",'
      '  "prod_list_itens"."num_nota_fiscal" = :"num_nota_fiscal",'
      '  "prod_list_itens"."num_seq_nf" = :"num_seq_nf",'
      '  "prod_list_itens"."num_pedido" = :"num_pedido",'
      '  "prod_list_itens"."num_seq_pedido" = :"num_seq_pedido",'
      '  "prod_list_itens"."num_pedido_for" = :"num_pedido_for",'
      '  "prod_list_itens"."num_pedido_cli" = :"num_pedido_cli",'
      '  "prod_list_itens"."dat_emissao" = :"dat_emissao",'
      '  "prod_list_itens"."cod_produto" = :"cod_produto",'
      '  "prod_list_itens"."dat_ini_producao" = :"dat_ini_producao",'
      '  "prod_list_itens"."etd_factory" = :"etd_factory",'
      '  "prod_list_itens"."dat_upd_etd" = :"dat_upd_etd",'
      
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
      '  "prod_list_itens"."ies_pallet" = :"ies_pallet", '
      '  "prod_list_itens"."mesclar" = :"mesclar"'
      'Where'
      '  "prod_list_itens"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "prod_list_itens"."num_prod_list" = :"OLD_num_prod_list" and'
      '  "prod_list_itens"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 353
    Top = 144
    object packing_listcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list_itens"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object packing_listnum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"prod_list_itens"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object packing_listnum_sequencia_org: TIntegerField
      FieldName = 'num_sequencia_org'
      Origin = '"prod_list_itens"."num_sequencia_org"'
    end
    object packing_listnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list_itens"."num_prod_list"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object packing_listnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"prod_list_itens"."num_pedido"'
    end
    object packing_listnum_seq_pedido: TSmallintField
      FieldName = 'num_seq_pedido'
      Origin = '"prod_list_itens"."num_seq_pedido"'
    end
    object packing_listnum_pedido_cli: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'num_pedido_cli'
      Origin = '"prod_list_itens"."num_pedido_cli"'
      ReadOnly = True
      Size = 15
    end
    object packing_listcod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"prod_list_itens"."cod_produto"'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object packing_listcalDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto'
      ReadOnly = True
      Size = 100
      Calculated = True
    end
    object packing_listdat_ini_producao: TDateField
      DisplayLabel = 'Ini Prod'
      FieldName = 'dat_ini_producao'
      Origin = '"prod_list_itens"."dat_ini_producao"'
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object packing_listetd_factory: TDateField
      DisplayLabel = 'Etd Factory'
      FieldName = 'etd_factory'
      Origin = '"prod_list_itens"."etd_factory"'
      ReadOnly = True
      DisplayFormat = 'dd.mm.yy'
    end
    object packing_listdat_upd_etd: TDateField
      DisplayLabel = 'Upd Factory'
      FieldName = 'dat_upd_etd'
      Origin = '"prod_list_itens"."dat_upd_etd"'
      DisplayFormat = 'dd.mm.yy'
    end
    object packing_listdat_inspecao: TDateField
      DisplayLabel = 'Inspe'#231#227'o'
      FieldName = 'dat_inspecao'
      Origin = '"prod_list_itens"."dat_inspecao"'
      DisplayFormat = 'dd.mm.yy'
    end
    object packing_listies_result_inspecao: TIBStringField
      DisplayLabel = 'Res'
      FieldName = 'ies_result_inspecao'
      Origin = '"prod_list_itens"."ies_result_inspecao"'
      OnGetText = prod_list_itensies_result_inspecaoGetText
      OnSetText = prod_list_itensies_result_inspecaoSetText
      FixedChar = True
      Size = 1
    end
    object packing_listqtd_romanear: TIBBCDField
      DisplayLabel = 'Embarcar'
      FieldName = 'qtd_romanear'
      Origin = '"prod_list_itens"."qtd_romanear"'
      OnValidate = prod_list_itensqtd_romanearValidate
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object packing_listtxt_status_producao: TIBStringField
      DisplayLabel = 'Status Produ'#231#227'o'
      FieldName = 'txt_status_producao'
      Size = 255
    end
    object packing_listnum_fatura: TIBStringField
      DisplayLabel = 'Fatura'
      FieldName = 'num_fatura'
      Origin = '"prod_list_itens"."num_fatura"'
      ReadOnly = True
      Size = 25
    end
    object packing_listcalUNn: TStringField
      DisplayLabel = 'UN'
      FieldKind = fkCalculated
      FieldName = 'calUN'
      ReadOnly = True
      Size = 3
      Calculated = True
    end
    object packing_listpreco_real: TFloatField
      DisplayLabel = 'Pre'#231'o Real'
      FieldName = 'preco_real'
      Origin = '"prod_list_itens"."preco_real"'
      ReadOnly = True
      DisplayFormat = '#,##0.000000'
    end
    object packing_listvlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      Origin = '"prod_list_itens"."vlr_liquido"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object packing_listpreco_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'preco_esp'
      Origin = '"prod_list_itens"."preco_esp"'
      ReadOnly = True
      DisplayFormat = '#,##0.000000'
    end
    object packing_listvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Esp'
      FieldName = 'vlr_liquido_esp'
      Origin = '"prod_list_itens"."vlr_liquido_esp"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object packing_listpes_unitario: TFloatField
      DisplayLabel = 'PU'
      FieldName = 'pes_unitario'
      Origin = '"prod_list_itens"."pes_unitario"'
      OnValidate = prod_list_itenspes_unitarioValidate
      DisplayFormat = '#,##0.00000'
    end
    object packing_listpes_bruto: TIBBCDField
      DisplayLabel = 'PB'
      FieldName = 'pes_bruto'
      Origin = '"prod_list_itens"."pes_bruto"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object packing_listpes_liquido: TIBBCDField
      DisplayLabel = 'PL'
      FieldName = 'pes_liquido'
      Origin = '"prod_list_itens"."pes_liquido"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object packing_listqtd_caixas: TIntegerField
      DisplayLabel = 'CXS'
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_itens"."qtd_caixas"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object packing_listun_master: TIBBCDField
      DisplayLabel = 'UN/CX'
      FieldName = 'un_master'
      Origin = '"prod_list_itens"."un_master"'
      OnValidate = prod_list_itensun_masterValidate
      DisplayFormat = '#,##0.0'
      Precision = 9
      Size = 4
    end
    object packing_listpes_bruto_cx: TFloatField
      DisplayLabel = 'PBCX'
      FieldName = 'pes_bruto_cx'
      Origin = '"prod_list_itens"."pes_bruto_cx"'
      OnValidate = prod_list_itenspes_bruto_cxValidate
      DisplayFormat = '#,##0.00'
    end
    object packing_listaltura_cx: TIBBCDField
      DisplayLabel = 'A'
      FieldName = 'altura_cx'
      Origin = '"prod_list_itens"."altura_cx"'
      OnValidate = prod_list_itensaltura_cxValidate
      DisplayFormat = '##0.0'
      Precision = 9
      Size = 4
    end
    object packing_listlargura_cx: TIBBCDField
      DisplayLabel = 'L'
      FieldName = 'largura_cx'
      Origin = '"prod_list_itens"."largura_cx"'
      OnValidate = prod_list_itensaltura_cxValidate
      DisplayFormat = '##0.0'
      Precision = 9
      Size = 4
    end
    object packing_listcomprimento_cx: TIBBCDField
      DisplayLabel = 'C'
      FieldName = 'comprimento_cx'
      Origin = '"prod_list_itens"."comprimento_cx"'
      OnValidate = prod_list_itensaltura_cxValidate
      DisplayFormat = '##0.0'
      Precision = 9
      Size = 4
    end
    object packing_listvolume_caixa: TIBBCDField
      DisplayLabel = 'VolCaixa'
      FieldName = 'volume_caixa'
      Origin = '"prod_list_itens"."volume_caixa"'
      DisplayFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object packing_listvol_total: TIBBCDField
      DisplayLabel = 'Vol Total'
      FieldName = 'vol_total'
      Origin = '"prod_list_itens"."vol_total"'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object packing_listnum_pedido_for: TIBStringField
      DisplayLabel = 'Confirma'#231#227'o'
      FieldName = 'num_pedido_for'
      Origin = '"prod_list_itens"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object packing_listdat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"prod_list_itens"."dat_emissao"'
    end
    object packing_listqtd_confirmada: TIBBCDField
      DisplayLabel = 'Confirmada'
      FieldName = 'qtd_confirmada'
      Origin = '"prod_list_itens"."qtd_confirmada"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object packing_listqtd_pendente: TIBBCDField
      DisplayLabel = 'Pendente'
      FieldName = 'qtd_pendente'
      Origin = '"prod_list_itens"."qtd_pendente"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object packing_listqtd_embarcada: TIBBCDField
      DisplayLabel = 'Embarcada'
      FieldName = 'qtd_embarcada'
      Origin = '"prod_list_itens"."qtd_embarcada"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object packing_listies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"prod_list_itens"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object packing_listseq_pallet: TIntegerField
      DisplayLabel = 'PT'
      FieldName = 'seq_pallet'
      Origin = '"prod_list_itens"."seq_pallet"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object packing_listqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = '"prod_list_itens"."qtd_pallet"'
    end
    object packing_listpes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = '"prod_list_itens"."pes_bruto_pallet"'
      Precision = 18
      Size = 2
    end
    object packing_listpes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = '"prod_list_itens"."pes_liquido_pallet"'
      Precision = 18
      Size = 2
    end
    object packing_listcomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = '"prod_list_itens"."comprimento_pallet"'
      Precision = 9
      Size = 4
    end
    object packing_listlargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = '"prod_list_itens"."largura_pallet"'
      Precision = 9
      Size = 4
    end
    object packing_listaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = '"prod_list_itens"."altura_pallet"'
      Precision = 9
      Size = 4
    end
    object packing_listvolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = '"prod_list_itens"."volume_pallet"'
      Precision = 18
      Size = 4
    end
    object packing_listpes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"prod_list_itens"."pes_pallet_vazio"'
    end
    object packing_listies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"prod_list_itens"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object packing_listseq_emb_esp: TIntegerField
      DisplayLabel = 'CE'
      FieldName = 'seq_emb_esp'
      Origin = '"prod_list_itens"."seq_emb_esp"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object packing_listies_erros: TIntegerField
      FieldName = 'ies_erros'
      Origin = '"prod_list_itens"."ies_erros"'
    end
    object packing_listies_cadastro: TIBStringField
      FieldName = 'ies_cadastro'
      Origin = '"prod_list_itens"."ies_cadastro"'
      FixedChar = True
      Size = 1
    end
    object packing_listies_sit_fat: TIBStringField
      FieldName = 'ies_sit_fat'
      Origin = '"prod_list_itens"."ies_sit_fat"'
      FixedChar = True
      Size = 1
    end
    object packing_listnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"prod_list_itens"."num_nota_fiscal"'
    end
    object packing_listnum_seq_nf: TSmallintField
      DisplayLabel = 'SeqFat'
      FieldName = 'num_seq_nf'
      Origin = '"prod_list_itens"."num_seq_nf"'
      DisplayFormat = '#0'
    end
    object packing_listies_pallet: TIBStringField
      FieldName = 'ies_pallet'
      Origin = '"prod_list_itens"."ies_pallet"'
      FixedChar = True
      Size = 1
    end
    object packing_listmesclar: TIBStringField
      FieldName = 'mesclar'
      Origin = '"prod_list_itens"."mesclar"'
      FixedChar = True
      Size = 1
    end
    object packing_listgrupo: TSmallintField
      FieldName = 'grupo'
      Origin = '"prod_list_itens"."grupo"'
    end
    object packing_listseq_grupo: TSmallintField
      FieldName = 'seq_grupo'
      Origin = '"prod_list_itens"."seq_grupo"'
    end
    object packing_listseq_pkl: TIntegerField
      DisplayLabel = 'PKL'
      FieldName = 'seq_pkl'
      Origin = '"prod_list_itens"."seq_pkl"'
      ReadOnly = True
      DisplayFormat = '#0'
    end
    object packing_listvazio: TIBStringField
      DisplayLabel = '*'
      FieldName = 'vazio'
      Origin = '"prod_list_itens"."vazio"'
      FixedChar = True
      Size = 1
    end
  end
  object dsPackingList: TDataSource
    DataSet = packing_list
    OnStateChange = dsPackingListStateChange
    Left = 354
    Top = 174
  end
  object spr_prodlist_addembesp_pkl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_addembesp_pkl'
    Left = 420
    Top = 144
  end
  object spr_prodlist_addpallet_pkl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_addpallet_pkl'
    Left = 452
    Top = 144
  end
  object spr_prodlist_retirarpkl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_retirarpkl'
    Left = 484
    Top = 144
  end
  object spr_prodlist_additem_pkl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_additem_pkl'
    Left = 388
    Top = 144
  end
  object spr_prodlist_reordenarpkl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_reordenarpkl'
    Left = 518
    Top = 144
  end
  object spr_estorno_itemprodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_estorno_itemprodlist'
    Left = 551
    Top = 144
  end
  object spr_prodlist_faturar: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_faturar'
    Left = 583
    Top = 144
  end
  object qryTotaisFatura: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "prod_list_totais_fatura"(:cod_empresa, :num_prod_' +
        'list, :num_fatura);')
    Left = 320
    Top = 206
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
    object qryTotaisFaturanum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"prod_list_totais_fatura"."num_fatura"'
      Size = 25
    end
    object qryTotaisFaturavlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"prod_list_totais_fatura"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryTotaisFaturavlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"prod_list_totais_fatura"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryTotaisFaturaqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"prod_list_totais_fatura"."qtd_caixas"'
      DisplayFormat = '0#'
    end
    object qryTotaisFaturaqtd_pallets: TIntegerField
      FieldName = 'qtd_pallets'
      Origin = '"prod_list_totais_fatura"."qtd_pallets"'
      DisplayFormat = '##'
    end
    object qryTotaisFaturacxs_outpallets: TIntegerField
      FieldName = 'cxs_outpallets'
      Origin = '"prod_list_totais_fatura"."cxs_outpallets"'
      DisplayFormat = '##'
    end
    object qryTotaisFaturavol_geral: TIBBCDField
      FieldName = 'vol_geral'
      Origin = '"prod_list_totais_fatura"."vol_geral"'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object qryTotaisFaturapes_liq_geral: TIBBCDField
      FieldName = 'pes_liq_geral'
      Origin = '"prod_list_totais_fatura"."pes_liq_geral"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryTotaisFaturapes_bru_geral: TIBBCDField
      FieldName = 'pes_bru_geral'
      Origin = '"prod_list_totais_fatura"."pes_bru_geral"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsqryTotalsFatura: TDataSource
    DataSet = qryTotaisFatura
    Left = 320
    Top = 239
  end
  object spr_prodlist_cadastro: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_cadastro'
    Left = 615
    Top = 144
  end
  object qryProdListItens: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "qtd_romanear", "num_nota_fiscal"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_sequencia" = :num_sequencia')
    Left = 105
    Top = 178
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
        Name = 'num_sequencia'
        ParamType = ptUnknown
      end>
    object qryProdListItensqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"prod_list_itens"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object qryProdListItensnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"prod_list_itens"."num_nota_fiscal"'
    end
  end
  object spr_prodlist_statusprod: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_statusprod'
    Left = 272
    Top = 145
  end
  object get_situacao_fatura: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "get_situacao_fatura"(:cod_empresa, :num_prod_list' +
        ', :num_fatura);')
    Left = 320
    Top = 272
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
    object get_situacao_faturaies_sit_fat: TIBStringField
      FieldName = 'ies_sit_fat'
      Origin = '"get_situacao_fatura"."ies_sit_fat"'
      FixedChar = True
      Size = 1
    end
  end
  object Invoice: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnCalcFields = DataSetCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      '/* Itens da Fatura */'
      
        'select "num_pedido_cli", "cod_produto", "preco_real", "preco_esp' +
        '",'
      '       MIN("num_sequencia") "num_sequencia",'
      '       SUM("vlr_liquido") "vlr_liquido",'
      '       SUM("vlr_liquido_esp") "vlr_liquido_esp",'
      '       MAX("num_pedido_for") "num_pedido_for",'
      '       SUM("qtd_romanear") "qtd_romanear"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_fatura" = :num_fatura'
      'group by 1,2,3,4'
      'order by 1,5')
    Left = 647
    Top = 144
    object Invoicenum_pedido_cli: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'num_pedido_cli'
      FixedChar = True
      Size = 15
    end
    object Invoicenum_pedido_for: TIBStringField
      DisplayLabel = 'Confirma'#231#227'o'
      FieldName = 'num_pedido_for'
      FixedChar = True
      Size = 15
    end
    object Invoicecod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Required = True
      Size = 15
    end
    object InvoicecalDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto'
      Size = 100
      Calculated = True
    end
    object Invoiceqtd_produto: TIBBCDField
      DisplayLabel = 'Embarcar'
      FieldName = 'qtd_romanear'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object InvoicecalUN: TStringField
      DisplayLabel = 'UN'
      FieldKind = fkCalculated
      FieldName = 'calUN'
      Size = 3
      Calculated = True
    end
    object Invoicepreco_real: TFloatField
      DisplayLabel = 'Pre'#231'o Real'
      FieldName = 'preco_real'
      DisplayFormat = '#,##0.000000'
    end
    object Invoicevlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Invoicepreco_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'preco_esp'
      DisplayFormat = '#,##0.000000'
    end
    object Invoicevlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Esp'
      FieldName = 'vlr_liquido_esp'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsInvoice: TDataSource
    DataSet = Invoice
    Left = 647
    Top = 174
  end
  object spr_prodlist_mudarseqs: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_prodlist_mudarseqs'
    Left = 680
    Top = 145
  end
end
