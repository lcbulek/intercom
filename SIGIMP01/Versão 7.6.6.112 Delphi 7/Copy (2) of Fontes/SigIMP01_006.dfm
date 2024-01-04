object fr_ManPedido: Tfr_ManPedido
  Left = 8
  Top = 25
  HelpType = htKeyword
  HelpKeyword = '006'
  AutoScroll = False
  Caption = 'Pedido'
  ClientHeight = 688
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label46: TLabel
    Left = 496
    Top = 414
    Width = 154
    Height = 14
    Caption = 'Condi'#231#245'es de Pagamento'
  end
  object Label70: TLabel
    Left = 495
    Top = 525
    Width = 56
    Height = 14
    Caption = 'Condi'#231#227'o'
  end
  object SpeedButton2: TSpeedButton
    Left = 830
    Top = 541
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F33333333333009033
      333333333F7737F333333333009990333333333F773337FFFFFF330099999000
      00003F773333377777770099999999999990773FF33333FFFFF7330099999000
      000033773FF33777777733330099903333333333773FF7F33333333333009033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Label71: TLabel
    Left = 857
    Top = 525
    Width = 35
    Height = 14
    Caption = 'Valor'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1350
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Color = clInactiveBorder
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 91
      Height = 15
      Caption = 'N'#250'mero Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Layout = tlBottom
    end
    object txtnum_pedido: TDBText
      Left = 5
      Top = 22
      Width = 91
      Height = 15
      AutoSize = True
      DataField = 'num_pedido'
      DataSource = dtsPedido
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 1005
      Top = 5
      Width = 63
      Height = 14
      AutoSize = False
      Caption = 'Tipo'
      Layout = tlBottom
    end
    object Label11: TLabel
      Left = 403
      Top = 5
      Width = 49
      Height = 15
      Caption = 'Cliente'
      Layout = tlBottom
    end
    object txtcod_cliente: TDBText
      Left = 403
      Top = 22
      Width = 137
      Height = 14
      DataField = 'cod_cliente'
      DataSource = dtsPedido
    end
    object txtlkpNomFornecedor: TDBText
      Left = 554
      Top = 22
      Width = 337
      Height = 14
      DataField = 'lkpFornecedor'
      DataSource = dtspedido_complemento
    end
    object txties_tip_pedido: TDBText
      Left = 1005
      Top = 22
      Width = 126
      Height = 14
      DataField = 'ies_tip_pedido'
      DataSource = dtsPedido
    end
    object txties_situacao: TDBText
      Left = 903
      Top = 22
      Width = 62
      Height = 14
      DataField = 'ies_situacao'
      DataSource = dtsPedido
    end
    object Label42: TLabel
      Left = 903
      Top = 5
      Width = 62
      Height = 14
      AutoSize = False
      Caption = 'Situa'#231#227'o'
      Layout = tlBottom
    end
    object Label67: TLabel
      Left = 108
      Top = 5
      Width = 112
      Height = 15
      Caption = 'N'#176'Pedido Cliente'
      FocusControl = dbNumPedidoCli
    end
    object Label68: TLabel
      Left = 242
      Top = 5
      Width = 147
      Height = 15
      Caption = 'N'#176' Confirma'#231#227'o Pedido'
      FocusControl = dbeNumPedidoFor
    end
    object DBText1: TDBText
      Left = 108
      Top = 22
      Width = 128
      Height = 14
      DataField = 'num_pedido_cli'
      DataSource = dtspedido_complemento
    end
    object DBText2: TDBText
      Left = 242
      Top = 22
      Width = 155
      Height = 14
      DataField = 'num_pedido_for'
      DataSource = dtspedido_complemento
    end
    object Label53: TLabel
      Left = 554
      Top = 5
      Width = 70
      Height = 15
      Caption = 'Fornecedor'
      Layout = tlBottom
    end
  end
  object pgcPedido: TPageControl
    Left = 0
    Top = 41
    Width = 1350
    Height = 647
    ActivePage = tbsPedido
    Align = alClient
    TabOrder = 1
    object tbsPedido: TTabSheet
      Caption = 'Pedido (F5)'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1342
        Height = 262
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label5: TLabel
          Left = 0
          Top = 34
          Width = 70
          Height = 14
          Caption = 'Fornecedor'
        end
        object Label9: TLabel
          Left = 0
          Top = 141
          Width = 98
          Height = 14
          Caption = 'Porto embarque'
        end
        object Label10: TLabel
          Left = 271
          Top = 141
          Width = 91
          Height = 14
          Caption = 'Porto destino'
        end
        object Label17: TLabel
          Left = 479
          Top = 1
          Width = 91
          Height = 14
          Caption = 'Prv Prontid'#227'o'
          Layout = tlBottom
        end
        object Label13: TLabel
          Left = 583
          Top = 1
          Width = 112
          Height = 14
          Caption = 'N'#176'Pedido Cliente'
          FocusControl = dbNumPedidoCli
        end
        object Label18: TLabel
          Left = 738
          Top = 1
          Width = 147
          Height = 14
          Caption = 'N'#176' Confirma'#231#227'o Pedido'
          FocusControl = dbeNumPedidoFor
        end
        object Label20: TLabel
          Left = 366
          Top = 70
          Width = 203
          Height = 14
          Caption = 'Condi'#231#227'o de Venda (Incoterms)'
        end
        object Label15: TLabel
          Left = 273
          Top = 1
          Width = 49
          Height = 14
          Caption = 'Emiss'#227'o'
        end
        object Label16: TLabel
          Left = 544
          Top = 141
          Width = 70
          Height = 14
          Caption = 'Containers'
        end
        object Label51: TLabel
          Left = 1185
          Top = 16
          Width = 84
          Height = 14
          Caption = 'Tot Real Liq'
          Color = clBtnFace
          FocusControl = edtvlr_liquido
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlBottom
        end
        object Label39: TLabel
          Left = 1184
          Top = 133
          Width = 49
          Height = 14
          Caption = 'Volumes'
          FocusControl = DBEdit11
        end
        object Label40: TLabel
          Left = 1184
          Top = 99
          Width = 70
          Height = 14
          Caption = 'Volume(m'#179')'
          FocusControl = DBEdit12
        end
        object Label41: TLabel
          Left = 1090
          Top = 133
          Width = 77
          Height = 14
          Caption = 'Pes l'#237'q(Kg)'
          FocusControl = DBEdit13
        end
        object Label45: TLabel
          Left = 1090
          Top = 99
          Width = 91
          Height = 14
          Caption = 'Pes bruto(Kg)'
          FocusControl = DBEdit14
        end
        object Label14: TLabel
          Left = 376
          Top = 1
          Width = 77
          Height = 14
          Caption = 'Confirma'#231#227'o'
        end
        object Label54: TLabel
          Left = 0
          Top = 72
          Width = 35
          Height = 14
          Caption = 'Banco'
          Layout = tlBottom
        end
        object Label7: TLabel
          Left = 1090
          Top = 16
          Width = 84
          Height = 14
          Caption = 'Tot Real Bru'
          Color = clBtnFace
          FocusControl = edtvlr_liquido
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlBottom
        end
        object Label2: TLabel
          Left = 0
          Top = 1
          Width = 49
          Height = 14
          Caption = 'Cliente'
        end
        object Label6: TLabel
          Left = 0
          Top = 106
          Width = 147
          Height = 14
          Caption = 'Condi'#231#227'o de Pagamento'
        end
        object Label25: TLabel
          Left = 589
          Top = 107
          Width = 98
          Height = 14
          Caption = 'Valor Condi'#231#227'o'
          FocusControl = dbeVlrCondicao
        end
        object Label52: TLabel
          Left = 1185
          Top = 49
          Width = 77
          Height = 14
          Caption = 'Tot Esp Liq'
          Color = clBtnFace
          FocusControl = edtvlr_liquido
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlBottom
        end
        object Label47: TLabel
          Left = 1182
          Top = 224
          Width = 49
          Height = 14
          Caption = 'Volumes'
          FocusControl = DBEdit4
        end
        object Label49: TLabel
          Left = 1182
          Top = 189
          Width = 70
          Height = 14
          Caption = 'Volume(m'#179')'
          FocusControl = DBEdit32
        end
        object Label86: TLabel
          Left = 1088
          Top = 224
          Width = 77
          Height = 14
          Caption = 'Pes L'#237'q(Kg)'
          FocusControl = DBEdit39
        end
        object Label87: TLabel
          Left = 1088
          Top = 189
          Width = 91
          Height = 14
          Caption = 'Pes Bruto(Kg)'
          FocusControl = DBEdit40
        end
        object Label33: TLabel
          Left = 692
          Top = 106
          Width = 63
          Height = 14
          Caption = 'Insurance'
        end
        object Label89: TLabel
          Left = 0
          Top = 176
          Width = 133
          Height = 14
          Caption = 'Idioma p/documentos'
        end
        object Label8: TLabel
          Left = 135
          Top = 176
          Width = 168
          Height = 14
          Caption = 'Informa'#231#245'es p/documentos'
        end
        object Label31: TLabel
          Left = 273
          Top = 34
          Width = 70
          Height = 14
          Caption = 'Fabricante'
        end
        object lbVerLi: TLabel
          Left = 770
          Top = 34
          Width = 49
          Height = 14
          Caption = 'Venc LI'
          Layout = tlBottom
        end
        object Label91: TLabel
          Left = 546
          Top = 34
          Width = 84
          Height = 14
          Caption = 'Ver Trat Adm'
          Layout = tlBottom
        end
        object Label90: TLabel
          Left = 963
          Top = 34
          Width = 63
          Height = 14
          Caption = 'Embalagem'
          Layout = tlBottom
        end
        object Label92: TLabel
          Left = 868
          Top = 34
          Width = 63
          Height = 14
          Caption = 'Ctn.Marks'
          Layout = tlBottom
        end
        object Label93: TLabel
          Left = 1090
          Top = 49
          Width = 77
          Height = 14
          Caption = 'Tot Esp Bru'
          Color = clBtnFace
          FocusControl = edtvlr_liquido
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlBottom
        end
        object lkpCliente: TDBLookupComboBox
          Left = 0
          Top = 13
          Width = 270
          Height = 22
          DataField = 'lkpCodCliente'
          DataSource = dtsPedido
          TabOrder = 0
        end
        object lpkFornecedor: TDBLookupComboBox
          Left = 0
          Top = 47
          Width = 270
          Height = 22
          DataField = 'lkpFornecedor'
          DataSource = dtspedido_complemento
          TabOrder = 6
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 0
          Top = 155
          Width = 270
          Height = 22
          DataField = 'lkpPortoEmb'
          DataSource = dtspedido_complemento
          TabOrder = 20
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 271
          Top = 155
          Width = 270
          Height = 22
          DataField = 'lkpPortoDes'
          DataSource = dtspedido_complemento
          TabOrder = 21
        end
        object dbNumPedidoCli: TDBEdit
          Left = 583
          Top = 13
          Width = 152
          Height = 22
          CharCase = ecUpperCase
          DataField = 'num_pedido_cli'
          DataSource = dtspedido_complemento
          TabOrder = 4
        end
        object dbeNumPedidoFor: TDBEdit
          Left = 738
          Top = 13
          Width = 152
          Height = 22
          CharCase = ecUpperCase
          DataField = 'num_pedido_for'
          DataSource = dtspedido_complemento
          TabOrder = 5
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 366
          Top = 84
          Width = 300
          Height = 22
          DataField = 'lkcCondicaoVenda'
          DataSource = dtspedido_complemento
          TabOrder = 14
        end
        object JvDBUltimGrid2: TJvDBUltimGrid
          Left = 544
          Top = 155
          Width = 511
          Height = 70
          Hint = 'Click para mostrar a seta. '
          DataSource = ds_pedido_container
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 24
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = []
          OnEnter = JvDBUltimGrid2Enter
          OnExit = JvDBUltimGrid2Exit
          ShowCellHint = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <
            item
              ControlName = 'JvDBLookupCombo2'
              FieldName = 'lkpCodContainer'
              FitCell = fcBiggest
            end>
          RowsHeight = 17
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'lkpDenContainer'
              Width = 394
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtd_container'
              Width = 75
              Visible = True
            end>
        end
        object JvDBLookupCombo2: TJvDBLookupCombo
          Left = 560
          Top = 172
          Width = 394
          Height = 21
          DataField = 'lkTipoContainer'
          DataSource = ds_pedido_container
          ParentShowHint = False
          ShowHint = False
          TabOrder = 37
          Visible = False
        end
        object edtvlr_liquido: TDBEdit
          Left = 1185
          Top = 28
          Width = 90
          Height = 22
          TabStop = False
          Color = 8454143
          DataField = 'vlr_liquido'
          DataSource = dtsPedido
          ReadOnly = True
          TabOrder = 26
        end
        object DBEdit11: TDBEdit
          Left = 1184
          Top = 147
          Width = 90
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'qtd_caixas'
          DataSource = dtspedido_complemento
          ReadOnly = True
          TabOrder = 32
        end
        object DBEdit12: TDBEdit
          Left = 1184
          Top = 112
          Width = 90
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'vol_total'
          DataSource = dtspedido_complemento
          ReadOnly = True
          TabOrder = 30
        end
        object DBEdit13: TDBEdit
          Left = 1090
          Top = 147
          Width = 90
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'pes_liquido'
          DataSource = dtspedido_complemento
          ReadOnly = True
          TabOrder = 31
        end
        object DBEdit14: TDBEdit
          Left = 1090
          Top = 112
          Width = 90
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'pes_bruto'
          DataSource = dtspedido_complemento
          ReadOnly = True
          TabOrder = 29
        end
        object dtpDatEmissao: TJvDBDatePickerEdit
          Left = 273
          Top = 13
          Width = 95
          Height = 22
          AllowNoDate = True
          DataField = 'dat_emissao'
          DataSource = dtsPedido
          DateFormat = 'dd.MM.yyyy'
          DateSeparator = '.'
          Flat = False
          ParentCtl3D = False
          StoreDateFormat = True
          TabOrder = 1
        end
        object dtpDatEntrega: TJvDBDatePickerEdit
          Left = 479
          Top = 13
          Width = 95
          Height = 22
          AllowNoDate = True
          DataField = 'dat_entrega'
          DataSource = dtsPedido
          DateFormat = 'dd.MM.yyyy'
          DateSeparator = '.'
          Flat = False
          ParentCtl3D = False
          StoreDateFormat = True
          TabOrder = 3
        end
        object dtpDatLiberacao: TJvDBDatePickerEdit
          Left = 376
          Top = 13
          Width = 95
          Height = 22
          HelpType = htKeyword
          AllowNoDate = True
          DataField = 'dat_liberacao'
          DataSource = dtsPedido
          DateFormat = 'dd.MM.yyyy'
          DateSeparator = '.'
          Flat = False
          ParentCtl3D = False
          StoreDateFormat = True
          TabOrder = 2
        end
        object JvDBLookupCombo3: TJvDBLookupCombo
          Left = 0
          Top = 85
          Width = 364
          Height = 21
          DataField = 'cod_banco'
          DataSource = dtsPedido
          DisplayEmpty = 'Informe o Banco'
          LookupField = 'cod_banco'
          LookupDisplay = 'nom_banco'
          LookupSource = dsBanco
          TabOrder = 13
        end
        object DBEdit5: TDBEdit
          Left = 1090
          Top = 28
          Width = 90
          Height = 22
          TabStop = False
          Color = 8454143
          DataField = 'vlr_bruto'
          DataSource = dtsPedido
          ReadOnly = True
          TabOrder = 25
        end
        object dbeVlrCondicao: TDBEdit
          Left = 589
          Top = 121
          Width = 100
          Height = 22
          DataField = 'vlr_condicao'
          DataSource = dtsPedido
          TabOrder = 18
        end
        object DBEdit20: TDBEdit
          Left = 1185
          Top = 61
          Width = 90
          Height = 22
          TabStop = False
          Color = 16744703
          DataField = 'vlr_liquido_esp'
          DataSource = dtsPedido
          ReadOnly = True
          TabOrder = 28
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 801
          Top = 72
          Width = 121
          Height = 33
          Caption = 'Pallets'
          Columns = 2
          DataField = 'ies_pallets'
          DataSource = dtsPedido
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 16
          Values.Strings = (
            'S'
            'N')
        end
        object DBEdit4: TDBEdit
          Left = 1182
          Top = 237
          Width = 90
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'qtd_pallets'
          DataSource = dtspedido_complemento
          ReadOnly = True
          TabOrder = 36
        end
        object DBEdit32: TDBEdit
          Left = 1182
          Top = 202
          Width = 90
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'vol_pallets'
          DataSource = dtspedido_complemento
          ReadOnly = True
          TabOrder = 34
        end
        object DBEdit39: TDBEdit
          Left = 1088
          Top = 237
          Width = 90
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'pes_liq_pallets'
          DataSource = dtspedido_complemento
          ReadOnly = True
          TabOrder = 35
        end
        object DBEdit40: TDBEdit
          Left = 1088
          Top = 202
          Width = 90
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'pes_bruto_pallets'
          DataSource = dtspedido_complemento
          ReadOnly = True
          TabOrder = 33
        end
        object JvStaticText2: TJvStaticText
          Left = 1088
          Top = 171
          Width = 183
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          Caption = 'Pallets'
          Color = clActiveBorder
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Courier New'
          HotTrackFont.Style = []
          Layout = tlTop
          ParentColor = False
          TabOrder = 38
          TextMargins.X = 0
          TextMargins.Y = 0
          WordWrap = False
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 673
          Top = 72
          Width = 121
          Height = 33
          Caption = 'Pre'#231'os Especiais'
          Columns = 2
          DataField = 'ies_preco_esp'
          DataSource = dtsPedido
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ReadOnly = True
          TabOrder = 15
          Values.Strings = (
            'S'
            'N')
        end
        object Button1: TButton
          Left = 1057
          Top = 169
          Width = 17
          Height = 17
          Hint = 'Incluir um registro de Container no pedido.'
          Caption = '+'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 39
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 1057
          Top = 187
          Width = 17
          Height = 17
          Hint = 'Excluir um registro de Container no pedido.'
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 40
          OnClick = Button2Click
        end
        object dbcInsurance: TJvDBComboBox
          Left = 692
          Top = 121
          Width = 359
          Height = 22
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
          DataField = 'ies_insurance'
          DataSource = dtsPedido
          ItemHeight = 14
          Items.Strings = (
            'TO BE COVERED BY BUYER'
            'TO BE COVERED BY SELLER')
          TabOrder = 19
          Values.Strings = (
            '1'
            '2')
        end
        object JvDBComboBox1: TJvDBComboBox
          Left = 0
          Top = 191
          Width = 134
          Height = 22
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
          DataField = 'ies_idioma'
          DataSource = dtsPedido
          ItemHeight = 14
          Items.Strings = (
            'Ingl'#234's'
            'Portugu'#234's'
            'Espanhol')
          TabOrder = 22
          Values.Strings = (
            'I'
            'P'
            'E')
        end
        object DBEdit16: TDBEdit
          Left = 0
          Top = 121
          Width = 585
          Height = 22
          CharCase = ecUpperCase
          DataField = 'terms_payment'
          DataSource = dtsPedido
          TabOrder = 17
        end
        object JvDBLookupCombo1: TJvDBLookupCombo
          Left = 135
          Top = 191
          Width = 270
          Height = 21
          Hint = 
            'Indicar aqui para onde dever'#227'o ser remetidas as mercadorias do c' +
            'liente, matriz ou filial. '
          DataField = 'seq_filial'
          DataSource = dtsPedido
          LookupField = 'seq_filial'
          LookupDisplay = 'nome'
          LookupSource = ds_cliente_filial
          ParentShowHint = False
          ShowHint = True
          TabOrder = 23
        end
        object dbcFabricante: TDBLookupComboBox
          Left = 273
          Top = 47
          Width = 270
          Height = 22
          DataField = 'lkpFabricante'
          DataSource = dtsPedido
          DropDownRows = 40
          TabOrder = 7
        end
        object DBRadioGroup6: TDBRadioGroup
          Left = 643
          Top = 37
          Width = 121
          Height = 33
          Caption = 'Lic.Importa'#231#227'o'
          Columns = 2
          DataField = 'ies_li'
          DataSource = dtsPedido
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ReadOnly = True
          TabOrder = 9
          Values.Strings = (
            'S'
            'N')
        end
        object dbVerLi: TJvDBDatePickerEdit
          Left = 770
          Top = 47
          Width = 95
          Height = 22
          AllowNoDate = True
          DataField = 'dat_verli'
          DataSource = dtsPedido
          DateFormat = 'dd.MM.yyyy'
          DateSeparator = '.'
          Flat = False
          ParentCtl3D = False
          StoreDateFormat = True
          TabOrder = 10
        end
        object JvDBDatePickerEdit3: TJvDBDatePickerEdit
          Left = 546
          Top = 47
          Width = 95
          Height = 22
          AllowNoDate = True
          DataField = 'dat_vertratadm'
          DataSource = dtsPedido
          DateFormat = 'dd.MM.yyyy'
          DateSeparator = '.'
          Flat = False
          ParentCtl3D = False
          StoreDateFormat = True
          TabOrder = 8
        end
        object JvDBDatePickerEdit2: TJvDBDatePickerEdit
          Left = 963
          Top = 47
          Width = 95
          Height = 22
          AllowNoDate = True
          DataField = 'dat_embalagem'
          DataSource = dtsPedido
          DateFormat = 'dd.MM.yyyy'
          DateSeparator = '.'
          Flat = False
          ParentCtl3D = False
          StoreDateFormat = True
          TabOrder = 12
        end
        object JvDBDatePickerEdit4: TJvDBDatePickerEdit
          Left = 868
          Top = 47
          Width = 95
          Height = 22
          AllowNoDate = True
          DataField = 'dat_ctn_marks'
          DataSource = dtsPedido
          DateFormat = 'dd.MM.yyyy'
          DateSeparator = '.'
          Flat = False
          ParentCtl3D = False
          StoreDateFormat = True
          TabOrder = 11
        end
        object JvStaticText1: TJvStaticText
          Left = 1090
          Top = 83
          Width = 183
          Height = 15
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          Caption = 'Export Cartons'
          Color = clActiveBorder
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Courier New'
          HotTrackFont.Style = []
          Layout = tlTop
          ParentColor = False
          TabOrder = 41
          TextMargins.X = 0
          TextMargins.Y = 0
          WordWrap = False
        end
        object JvStaticText3: TJvStaticText
          Left = 1090
          Top = 1
          Width = 183
          Height = 15
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          Caption = 'Totais do Pedido'
          Color = clActiveBorder
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Courier New'
          HotTrackFont.Style = []
          Layout = tlTop
          ParentColor = False
          TabOrder = 42
          TextMargins.X = 0
          TextMargins.Y = 0
          WordWrap = False
        end
        object DBEdit26: TDBEdit
          Left = 1090
          Top = 61
          Width = 90
          Height = 22
          TabStop = False
          Color = 16744703
          DataField = 'vlr_bruto_esp'
          DataSource = dtsPedido
          ReadOnly = True
          TabOrder = 27
        end
      end
      object pnlStatus: TPanel
        Left = 0
        Top = 576
        Width = 1342
        Height = 42
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        inline fr_FmNavigator1: Tfr_FmNavigator
          Left = 0
          Top = 0
          Width = 438
          Height = 42
          Align = alLeft
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          inherited ToolBar1: TToolBar
            Width = 438
            Height = 41
            AutoSize = True
            BorderWidth = 2
          end
          inherited ActionList1: TActionList
            OnExecute = fr_FmNavigator1ActionList1Execute
            Left = 214
            Top = 2
            inherited acFirst: TDataSetFirst
              DataSource = dtsPedido
            end
            inherited acPrior: TDataSetPrior
              DataSource = dtsPedido
            end
            inherited acNext: TDataSetNext
              DataSource = dtsPedido
            end
            inherited acLast: TDataSetLast
              DataSource = dtsPedido
            end
            inherited acInsert: TDataSetInsert
              DataSource = dtsPedido
            end
            inherited acDelete: TDataSetDelete
              DataSource = dtsPedido
            end
            inherited acEdit: TDataSetEdit
              DataSource = dtsPedido
            end
            inherited acPost: TDataSetPost
              DataSource = dtsPedido
            end
            inherited acF3: TAction
              OnExecute = fr_FmNavigator1acF3Execute
            end
            inherited acCancel: TDataSetCancel
              DataSource = dtsPedido
            end
            inherited acRefresh: TDataSetRefresh
              DataSource = dtsPedido
            end
          end
          inherited ImageList1: TImageList
            Left = 259
            Top = 4
            Bitmap = {
              494C01010C000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
              0000000000003600000028000000400000004000000001002000000000000040
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000006363630063636300636363006363630063636300636363000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
              000000000000000000000000000000000000000000001094CE001094CE001094
              CE00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              8400737373007B7B7B00848484008C8C8C00848484007B7B7B00737373006363
              6300636363000000000000000000000000000000000000000000000000008C8C
              8C00848484008C8C8C009494940094949400949494008C8C8C00848484007B7B
              7B007B7B7B00000000000000000000000000000000001094CE0063E7F7004ACE
              EF0031B5DE0029ADDE00189CD600088CC6000084C60000000000000000000000
              000000000000000000000000000000000000189CCE0029A5D600189CD600088C
              C600000000000000000000000000000000000000000000000000000000000000
              0000BDA5A5004A5A7300000000000000000000000000000000007B7B7B008484
              8400ADADAD00D6D6D600FFFFFF00FFFFFF00FFFFFF00E7E7E700B5B5B5008484
              84006B6B6B005A5A5A00000000000000000000000000000000008C8C8C008C8C
              8C00ADADAD00CECECE00E7E7E700EFEFEF00EFEFEF00D6D6D600B5B5B5009494
              940084848400737373000000000000000000000000001094CE007BF7FF0073EF
              FF006BEFF70063E7F7005ADEF70052CEEF0031B5E70029ADDE00189CD600088C
              CE00189CD600000000000000000000000000219CCE00A5EFF7006BEFFF005ADE
              F7004AC6E70039BDE70021A5D6000894CE000894CE000000000000000000BDA5
              A500526384001073E7003994DE0000000000000000008C8C8C008C8C8C00C6C6
              C600FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFFFF00E7E7
              E7008C8C8C006B6B6B006363630000000000000000009494940094949400BDBD
              BD00EFEFEF00F7F7F700EFEFEF00E7E7E700E7E7E700F7F7F700F7F7F700D6D6
              D60094949400848484007B7B7B0000000000000000001094CE0084FFFF007BF7
              FF0073EFFF006BE7F70063DEF7005AD6EF0052D6EF004ACEEF0042C6EF004AC6
              EF0039BDE70021A5DE001094CE0000000000088CC6009CDEEF008CFFFF0084FF
              FF0084FFFF007BFFFF007BF7FF0063E7F7004ACEEF0039BDE7007394A5005A63
              84001073DE0031A5FF00299CFF0000000000000000008C8C8C00C6C6C600FFFF
              FF00FFFFFF00949494008C8C8C008C8C8C00848484008C8C8C00CECECE00FFFF
              FF00E7E7E7008484840063636300000000000000000094949400BDBDBD00F7F7
              F700EFEFEF009C9C9C00949494009C9C9C009494940094949400C6C6C600EFEF
              EF00D6D6D600949494007B7B7B0000000000000000001094CE008CFFFF0084FF
              FF007BF7FF0073EFFF006BE7F70063DEF7005AD6EF004AC6DE004ACEEF0042C6
              EF0042C6EF0039BDE7001094CE00000000001094CE005ABDDE009CFFFF0073F7
              FF007BF7FF0073F7FF008CDEE70084D6DE007BE7EF0094BDC600526B8C001073
              D60031A5FF00319CFF0000000000000000007B7B7B00A5A5A500FFFFFF00FFFF
              FF00CECECE00D6D6D6009C9C9C008C8C8C008C8C8C0094949400CECECE00CECE
              CE00FFFFFF00B5B5B500737373006B6B6B008C8C8C00ADADAD00EFEFEF00F7F7
              F700A5A5A500BDBDBD00E7E7E700EFEFEF00E7E7E700B5B5B50094949400C6C6
              C600F7F7F700B5B5B500848484007B7B7B00000000001094CE008CFFFF0084FF
              FF0084F7FF007BF7FF0073EFFF006BE7F70063DEF7000052000039B5B5004AC6
              EF0042C6EF0039BDE7001094CE000000000021A5D6004AC6E7009CEFFF007BF7
              FF0084DEDE00BDCEBD00DEBDA500D6B59C00AD9C8C00847B7300427BAD0031A5
              FF0039ADFF00189CD60000000000000000008C8C8C00C6C6C600FFFFFF00E7E7
              E7009C9C9C00D6D6D600FFFFFF00A5A5A500A5A5A500FFFFFF00CECECE008C8C
              8C00FFFFFF00E7E7E7007B7B7B006B6B6B0094949400BDBDBD00F7F7F700D6D6
              D600A5A5A500EFEFEF00BDBDBD00A5A5A500BDBDBD00EFEFEF00ADADAD009494
              9400EFEFEF00D6D6D6008C8C8C007B7B7B00000000001094CE008CFFFF0084FF
              FF0084FFFF0084F7FF007BF7FF0073EFFF006BE7F7005AD6E700005200004ACE
              EF004AC6EF0042C6E7001094CE000000000021ADDE008C94A5008CCEE7008CD6
              D600CEB5AD00F7F7DE00FFFFDE00FFFFDE00FFFFC600CEB58C00C6ADA5004AC6
              FF0052D6FF0042C6E700000000000000000094949400DEDEDE00FFFFFF00ADAD
              AD00A5A5A500A5A5A500D6D6D600FFFFFF00FFFFFF00CECECE008C8C8C008C8C
              8C00E7E7E700FFFFFF008C8C8C006B6B6B009C9C9C00D6D6D600F7F7F700ADAD
              AD00DEDEDE00CECECE00A5A5A500A5A5A5009C9C9C00C6C6C600DEDEDE009494
              9400D6D6D600EFEFEF00949494007B7B7B00000000001094CE0084FFFF0084FF
              FF0084FFFF0084FFFF0084F7FF007BEFFF006BEFF70063E7F700007308000052
              00004ACEEF0042C6E7001094CE000000000021ADE700AD736B005ABDDE00B5A5
              9C00F7F7EF00FFFFFF00FFFFE700FFFFD600FFF7C600FFE7A500DEA584006BD6
              EF005AD6FF006BE7FF000894CE00000000009C9C9C00EFEFEF00FFFFFF00ADAD
              AD00A5A5A500A5A5A500B5B5B500FFFFFF00FFFFFF00A5A5A500949494009494
              9400DEDEDE00FFFFFF00949494006B6B6B00A5A5A500DEDEDE00F7F7F700ADAD
              AD00E7E7E700BDBDBD00A5A5A500C6C6C600A5A5A500A5A5A500B5B5B5009C9C
              9C00CECECE00EFEFEF009C9C9C0084848400000000001094CE008CFFFF0084FF
              FF0084FFFF0039AD73000063000084F7FF007BEFFF007BEFFF00007B08000052
              000052D6EF004ACEEF001094CE000000000021ADE700B5736B00A5CEDE00CEB5
              9C00FFFFEF00FFFFF700FFFFEF00FFFFD600F7DEAD00F7CE8400E7BD940094C6
              C60052D6FF007BF7FF0029ADDE0000000000A5A5A500EFEFEF00FFFFFF00BDBD
              BD00ADADAD00BDBDBD00FFFFFF00D6D6D600CECECE00FFFFFF00ADADAD009494
              9400F7F7F700FFFFFF008C8C8C006B6B6B00A5A5A500DEDEDE00F7F7F700BDBD
              BD00D6D6D600DEDEDE00ADADAD00F7F7F700DEDEDE00B5B5B5009C9C9C009C9C
              9C00E7E7E700E7E7E7009494940084848400000000001094CE00C6F7FF00ADFF
              FF008CDECE00006B0800006B080084F7F7007BEFFF0000630000007B08000052
              00005AD6F70052CEEF001094CE000000000029B5E700BD7B6B00FFF7EF00D6BD
              A500FFFFDE00FFFFDE00FFFFE700FFFFCE00EFBD8400F7BD7300E7C69C0094C6
              C6004AD6FF007BF7FF0052D6EF00000000009C9C9C00E7E7E700FFFFFF00F7F7
              F700B5B5B500FFFFFF00CECECE00A5A5A500A5A5A500CECECE00FFFFFF00B5B5
              B500FFFFFF00DEDEDE00848484006B6B6B009C9C9C00D6D6D600F7F7F700DEDE
              DE00B5B5B500E7E7E700EFEFEF00F7F7F700F7F7F700F7F7F700C6C6C600ADAD
              AD00EFEFEF00CECECE00949494007B7B7B00000000001094CE00189CD600189C
              D6000052000021AD4200005A0800005A08000063000000940800005200000063
              000063DEF70052D6EF001094CE000000000029ADE700C68C7300FFFFFF00CEAD
              9C00FFFFCE00FFFFCE00FFE7AD00F7C68C00F7CE9400FFEFB500D6AD94009CCE
              D6007BE7FF009CFFFF0094FFFF0021A5D60000000000A5A5A500FFFFFF00FFFF
              FF00CECECE00BDBDBD00ADADAD00ADADAD00ADADAD00A5A5A500C6C6C600FFFF
              FF00FFFFFF00ADADAD007B7B7B000000000000000000A5A5A500EFEFEF00F7F7
              F700C6C6C600ADADAD00ADADAD00F7F7F700EFEFEF00CECECE00ADADAD00EFEF
              EF00EFEFEF00ADADAD008C8C8C0000000000000000001094CE005ADEEF0031AD
              9C000873180042E7730021B5420010A52900089C1000006B00000052000073EF
              FF006BE7F7005ADEF7001094CE000000000029B5E700CE947300FFFFF700DEC6
              BD00DEC69C00FFE7A500FFC68400FFD68C00FFF7E700E7DECE008CA5AD006BCE
              E7005ABDE70063BDDE006BC6E70029A5D60000000000A5A5A500F7F7F700FFFF
              FF00FFFFFF00EFEFEF00BDBDBD00B5B5B500B5B5B500D6D6D600FFFFFF00FFFF
              FF00C6C6C6008C8C8C007B7B7B000000000000000000A5A5A500E7E7E700EFEF
              EF00F7F7F700DEDEDE00B5B5B500DEDEDE00B5B5B500C6C6C600F7F7F700F7F7
              F700C6C6C600949494008C8C8C0000000000000000001094CE008CFFFF000052
              000031CE630039DE6B0021BD420000520000005200000052000084EFFF007BF7
              FF0073EFFF006BE7F7001094CE000000000029B5E700D69C7300FFFFF700FFFF
              FF00E7D6CE00EFCEA500E7C69C00E7C69C00CEB59C00B58C8C0073E7FF006BEF
              FF00109CD6000000000000000000000000000000000000000000BDBDBD00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
              C600949494007B7B7B0000000000000000000000000000000000BDBDBD00E7E7
              E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00C6C6
              C6009C9C9C008C8C8C000000000000000000000000001094CE0094FFFF0052CE
              A50000520000189C2900109C2100005200005AA58400A5DEEF009CD6EF0084D6
              EF008CDEF7006BDEEF001094CE000000000018A5DE00DEA57300FFFFF700FFFF
              FF00FFFFFF00FFFFFF00FFF7EF00B5847B00BD7B4A00B56B520052C6E70052C6
              E700189CD600000000000000000000000000000000000000000000000000ADAD
              AD00E7E7E700FFFFFF00FFFFFF00FFFFFF00F7F7F700DEDEDE00B5B5B5008C8C
              8C008C8C8C00000000000000000000000000000000000000000000000000ADAD
              AD00D6D6D600E7E7E700EFEFEF00EFEFEF00E7E7E700CECECE00B5B5B5009C9C
              9C009C9C9C00000000000000000000000000000000001094CE0073E7F7008CF7
              FF0073E7D600188431000873100000520000005200001094CE001094CE001094
              CE001094CE001094CE001094CE000000000000000000E7A57B00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00B5847B00E79C520000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000A5A5A500BDBDBD00BDBDBD00ADADAD00949494008C8C8C000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000ADADAD00B5B5B500BDBDBD00ADADAD009C9C9C00949494000000
              00000000000000000000000000000000000000000000000000001094CE001094
              CE001094CE001094CE001094CE00000000000000000000000000000000000000
              00000000000000000000000000000000000000000000E7AD7B00D6946B00D694
              6B00D6946B00D6946B00D6946B00B57B6B000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000084FF840084848400848484007B7B7B007B7B7B007B7B7B000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000008484840084848400848484008484840084848400848484000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000737373007B7B7B007B7B7B007373730073737300737373000000
              0000000000000000000000000000000000000000000000000000000000009494
              94009494940094949400A5A5A500ADADAD00A5A5A500949494007B7B7B007B7B
              7B007B7B7B000000000000000000000000000000000000000000000000009494
              94009494940094949400A5A5A500ADADAD00ADADAD0094949400848484008484
              8400848484000000000000000000000000000000000000000000000000009494
              94009494940094949400A5A5A500ADADAD00ADADAD009C9C9C00848484008484
              8400848484000000000000000000000000000000000000000000000000008C8C
              8C00848484008C8C8C009494940094949400949494008C8C8C00848484007373
              73007373730000000000000000000000000000000000000000009C9C9C009C9C
              9C00BDBDBD00DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00D6D6D600A5A5
              A5007B7B7B0084848400000000000000000000000000000000009C9C9C009C9C
              9C00BDBDBD00DEDEDE00F7F7F700F7F7F700F7F7F700F7F7F700D6D6D600A5A5
              A5008484840084848400000000000000000000000000000000009C9C9C009C9C
              9C00BDBDBD00E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700DEDEDE00ADAD
              AD008484840084848400000000000000000000000000000000008C8C8C008C8C
              8C00ADADAD00D6D6D600EFEFEF00F7F7F700F7F7F700DEDEDE00BDBDBD009494
              94007B7B7B00737373000000000000000000000000009C9C9C009C9C9C00CECE
              CE00EFEFEF00EFEFEF00D6D6D600C6C6C600C6C6C600DEDEDE00EFEFEF00EFEF
              EF00BDBDBD007B7B7B007B7B7B000000000000000000A5A5A500A5A5A500D6D6
              D600F7F7F700F7F7F700D6D6D600C6C6C600C6C6C600DEDEDE00F7F7F700F7F7
              F700BDBDBD0084848400848484000000000000000000A5A5A500A5A5A500D6D6
              D600F7F7F700F7F7F700DEDEDE00C6C6C600C6C6C600DEDEDE00F7F7F700F7F7
              F700BDBDBD00848484008484840000000000000000009494940094949400C6C6
              C600FFFFFF00FFFFFF00F7F7F700EFEFEF00F7F7F700FFFFFF00FFFFFF00DEDE
              DE00949494007B7B7B007373730000000000000000009C9C9C00CECECE00EFEF
              EF00E7E7E700ADADAD008C8C8C008C8C8C008C8C8C008C8C8C00ADADAD00E7E7
              E700EFEFEF00ADADAD007B7B7B000000000000000000A5A5A500CECECE00F7F7
              F700E7E7E700B5B5B500949494009C9C9C009C9C9C008C8C8C00B5B5B500EFEF
              EF00F7F7F700ADADAD00848484000000000000000000A5A5A500CECECE00F7F7
              F700EFEFEF00B5B5B5009C9C9C00A5A5A5009C9C9C008C8C8C00B5B5B500EFEF
              EF00F7F7F700ADADAD0084848400000000000000000094949400C6C6C600FFFF
              FF00FFFFFF00C6C6C600A5A5A500DEDEDE009C9C9C00ADADAD00E7E7E700FFFF
              FF00DEDEDE00949494007373730000000000A5A5A500ADADAD00EFEFEF00EFEF
              EF00ADADAD00949494009C9C9C00D6D6D600CECECE008C8C8C0084848400ADAD
              AD00EFEFEF00DEDEDE008484840084848400A5A5A500ADADAD00EFEFEF00EFEF
              EF00ADADAD009C9C9C009C9C9C009C9C9C0094949400949494008C8C8C00ADAD
              AD00F7F7F700DEDEDE008C8C8C0084848400A5A5A500ADADAD00F7F7F700EFEF
              EF00B5B5B500A5A5A500ADADAD009C9C9C009C9C9C00949494009C9C9C00B5B5
              B500F7F7F700E7E7E7008C8C8C00848484008C8C8C00ADADAD00F7F7F700FFFF
              FF00B5B5B5009C9C9C00EFEFEF00FFFFFF00ADADAD008C8C8C0094949400E7E7
              E700FFFFFF00B5B5B500848484007B7B7B00A5A5A500C6C6C600EFEFEF00CECE
              CE009C9C9C009C9C9C009C9C9C00EFEFEF00E7E7E700949494008C8C8C008C8C
              8C00CECECE00EFEFEF00A5A5A50084848400A5A5A500C6C6C600F7F7F700CECE
              CE009C9C9C009C9C9C00A5A5A5009C9C9C0094949400949494008C8C8C008C8C
              8C00CECECE00F7F7F700ADADAD0084848400A5A5A500CECECE00F7F7F700D6D6
              D600A5A5A5009C9C9C009C9C9C009C9C9C00A5A5A5009C9C9C00949494009C9C
              9C00D6D6D600F7F7F700ADADAD008484840094949400C6C6C600FFFFFF00DEDE
              DE00B5B5B500F7F7F700FFFFFF00F7F7F700D6D6D600949494008C8C8C00ADAD
              AD00FFFFFF00DEDEDE008C8C8C007B7B7B00A5A5A500D6D6D600EFEFEF00B5B5
              B500A5A5A500CECECE00D6D6D600EFEFEF00EFEFEF00D6D6D600C6C6C6009494
              9400ADADAD00EFEFEF00BDBDBD0084848400A5A5A500D6D6D600F7F7F700BDBD
              BD00ADADAD00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009494
              9400B5B5B500F7F7F700C6C6C60084848400ADADAD00DEDEDE00F7F7F700BDBD
              BD00CECECE00F7F7F700EFEFEF00EFEFEF00EFEFEF00F7F7F700F7F7F7009494
              9400B5B5B500F7F7F700C6C6C600848484009C9C9C00DEDEDE00FFFFFF00C6C6
              C600DEDEDE00FFFFFF00BDBDBD00ADADAD00F7F7F700A5A5A500949494009494
              9400F7F7F700F7F7F700949494007B7B7B00ADADAD00DEDEDE00EFEFEF00B5B5
              B500ADADAD00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E7009494
              9400ADADAD00EFEFEF00C6C6C6008C8C8C00ADADAD00DEDEDE00F7F7F700B5B5
              B500B5B5B500DEDEDE00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF009C9C
              9C00ADADAD00F7F7F700C6C6C60094949400ADADAD00E7E7E700F7F7F700BDBD
              BD00B5B5B500D6D6D600F7F7F700F7F7F700F7F7F700F7F7F700ADADAD00A5A5
              A500C6C6C600F7F7F700CECECE0094949400A5A5A500E7E7E700FFFFFF00C6C6
              C600B5B5B500B5B5B500A5A5A5009C9C9C00D6D6D600CECECE00949494009494
              9400EFEFEF00FFFFFF009C9C9C007B7B7B00B5B5B500DEDEDE00EFEFEF00BDBD
              BD00A5A5A500B5B5B500BDBDBD00EFEFEF00E7E7E700B5B5B500ADADAD009494
              9400BDBDBD00EFEFEF00BDBDBD008C8C8C00BDBDBD00DEDEDE00F7F7F700C6C6
              C600ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500949494009494
              9400BDBDBD00F7F7F700BDBDBD0094949400BDBDBD00E7E7E700F7F7F700C6C6
              C600ADADAD00B5B5B500DEDEDE00F7F7F700F7F7F700ADADAD00A5A5A500ADAD
              AD00CECECE00F7F7F700C6C6C60094949400ADADAD00E7E7E700FFFFFF00D6D6
              D600A5A5A500ADADAD00ADADAD00A5A5A500A5A5A500D6D6D6009C9C9C009C9C
              9C00FFFFFF00EFEFEF00949494007B7B7B00ADADAD00DEDEDE00EFEFEF00DEDE
              DE00A5A5A500A5A5A500ADADAD00EFEFEF00E7E7E7009C9C9C009C9C9C009C9C
              9C00DEDEDE00EFEFEF00A5A5A5008C8C8C00ADADAD00DEDEDE00F7F7F700E7E7
              E700ADADAD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A5009C9C9C009C9C
              9C00E7E7E700EFEFEF00A5A5A50094949400ADADAD00DEDEDE00F7F7F700E7E7
              E700ADADAD00ADADAD00B5B5B500E7E7E700B5B5B500ADADAD00ADADAD00A5A5
              A500E7E7E700F7F7F700ADADAD0094949400A5A5A500DEDEDE00FFFFFF00F7F7
              F700ADADAD00ADADAD00ADADAD00ADADAD00A5A5A500B5B5B500ADADAD00C6C6
              C600FFFFFF00D6D6D6008C8C8C007B7B7B0000000000CECECE00EFEFEF00EFEF
              EF00CECECE00A5A5A500A5A5A500BDBDBD00B5B5B500A5A5A5009C9C9C00CECE
              CE00EFEFEF00D6D6D600949494000000000000000000D6D6D600F7F7F700F7F7
              F700CECECE00ADADAD00ADADAD00ADADAD00B5B5B500A5A5A500A5A5A500D6D6
              D600F7F7F700D6D6D600949494000000000000000000D6D6D600F7F7F700F7F7
              F700D6D6D600ADADAD00ADADAD00ADADAD00B5B5B500A5A5A500A5A5A500D6D6
              D600F7F7F700DEDEDE009C9C9C000000000000000000ADADAD00FFFFFF00FFFF
              FF00DEDEDE00ADADAD00A5A5A500ADADAD00A5A5A5009C9C9C00C6C6C600FFFF
              FF00FFFFFF00B5B5B500848484000000000000000000C6C6C600E7E7E700EFEF
              EF00EFEFEF00D6D6D600B5B5B500ADADAD00ADADAD00BDBDBD00DEDEDE00EFEF
              EF00E7E7E700A5A5A500949494000000000000000000CECECE00E7E7E700F7F7
              F700F7F7F700DEDEDE00BDBDBD00ADADAD00ADADAD00BDBDBD00DEDEDE00F7F7
              F700EFEFEF00ADADAD00949494000000000000000000CECECE00E7E7E700F7F7
              F700F7F7F700DEDEDE00BDBDBD00B5B5B500B5B5B500BDBDBD00DEDEDE00F7F7
              F700EFEFEF00ADADAD009C9C9C000000000000000000ADADAD00EFEFEF00FFFF
              FF00FFFFFF00F7F7F700D6D6D600C6C6C600CECECE00E7E7E700FFFFFF00FFFF
              FF00C6C6C6009494940084848400000000000000000000000000CECECE00E7E7
              E700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700EFEFEF00EFEFEF00E7E7
              E700ADADAD009C9C9C0000000000000000000000000000000000CECECE00EFEF
              EF00F7F7F700F7F7F700EFEFEF00E7E7E700EFEFEF00F7F7F700F7F7F700E7E7
              E700B5B5B5009C9C9C0000000000000000000000000000000000D6D6D600EFEF
              EF00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00F7F7F700F7F7F700E7E7
              E700B5B5B5009C9C9C0000000000000000000000000000000000BDBDBD00EFEF
              EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700C6C6
              C6009C9C9C008C8C8C000000000000000000000000000000000000000000CECE
              CE00DEDEDE00E7E7E700EFEFEF00EFEFEF00EFEFEF00E7E7E700CECECE00A5A5
              A5009C9C9C00000000000000000000000000000000000000000000000000CECE
              CE00DEDEDE00EFEFEF00F7F7F700F7F7F700F7F7F700EFEFEF00CECECE00ADAD
              AD009C9C9C00000000000000000000000000000000000000000000000000D6D6
              D600DEDEDE00EFEFEF00F7F7F700F7F7F700F7F7F700EFEFEF00CECECE00ADAD
              AD009C9C9C00000000000000000000000000000000000000000000000000ADAD
              AD00DEDEDE00EFEFEF00F7F7F700F7F7F700EFEFEF00D6D6D600B5B5B5009C9C
              9C009C9C9C000000000000000000000000000000000000000000000000000000
              000000000000CECECE00CECECE00CECECE00C6C6C600BDBDBD00ADADAD000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000CECECE00CECECE00D6D6D600CECECE00BDBDBD00ADADAD000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000D6D6D600D6D6D600D6D6D600CECECE00BDBDBD00ADADAD000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000ADADAD00BDBDBD00BDBDBD00B5B5B5009C9C9C00949494000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000006B6B6B006B6B6B006B6B6B006B6B6B0063636300636363000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000006B6B6B006B6B6B006B6B6B006B6B6B0063636300636363000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C000000
              0000000000000000000000000000000000000000000000000000000000009494
              940094949400A5A5A500BDBDBD00C6C6C600BDBDBD00ADADAD00949494008C8C
              8C008C8C8C000000000000000000000000000000000000000000000000007B7B
              7B007B7B7B008C8C8C00A5A5A500ADADAD00ADADAD0094949400737373006363
              6300636363000000000000000000000000000000000000000000000000007B7B
              7B007B7B7B008C8C8C00A5A5A500ADADAD00ADADAD0094949400737373006363
              6300636363000000000000000000000000000000000000000000000000008C8C
              8C008C8C8C00A5A5A500B5B5B500BDBDBD00BDBDBD00ADADAD008C8C8C008484
              840084848400000000000000000000000000000000000000000094949400A5A5
              A500D6D6D600F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700E7E7E700B5B5
              B5008C8C8C008C8C8C00000000000000000000000000000000007B7B7B008C8C
              8C00CECECE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDEDE009C9C
              9C006B6B6B006B6B6B00000000000000000000000000000000007B7B7B008C8C
              8C00CECECE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDEDE009C9C
              9C006B6B6B006B6B6B0000000000000000000000000000000000949494009C9C
              9C00D6D6D600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700B5B5
              B5008C8C8C008C8C8C00000000000000000000000000ADADAD00ADADAD00EFEF
              EF00F7F7F700EFEFEF00CECECE00BDBDBD00C6C6C600DEDEDE00F7F7F700F7F7
              F700C6C6C6008C8C8C008C8C8C000000000000000000848484009C9C9C00DEDE
              DE00EFEFEF00E7E7E700BDBDBD00ADADAD00B5B5B500D6D6D600EFEFEF00EFEF
              EF00ADADAD006B6B6B006B6B6B000000000000000000848484009C9C9C00DEDE
              DE00EFEFEF00E7E7E700BDBDBD00ADADAD00B5B5B500D6D6D600EFEFEF00EFEF
              EF00ADADAD006B6B6B006B6B6B000000000000000000A5A5A500A5A5A500E7E7
              E700EFEFEF00E7E7E700CECECE00BDBDBD00C6C6C600DEDEDE00EFEFEF00EFEF
              EF00BDBDBD008C8C8C008484840000000000000000009C9C9C00E7E7E700F7F7
              F700D6D6D6009C9C9C008C8C8C008C8C8C008C8C8C008C8C8C00B5B5B500EFEF
              EF00F7F7F700B5B5B5008C8C8C0000000000000000008C8C8C00DEDEDE00EFEF
              EF00C6C6C60084848400737373007373730073737300737373009C9C9C00E7E7
              E700EFEFEF009C9C9C006B6B6B0000000000000000008C8C8C00DEDEDE00EFEF
              EF00BDBDBD007B7B7B0073737300737373006B6B6B00737373009C9C9C00E7E7
              E700EFEFEF009C9C9C006B6B6B0000000000000000009C9C9C00E7E7E700EFEF
              EF00C6C6C600949494008C8C8C008C8C8C008C8C8C008C8C8C00ADADAD00EFEF
              EF00EFEFEF00B5B5B50084848400000000009C9C9C00C6C6C600F7F7F700DEDE
              DE00A5A5A500B5B5B50094949400949494008C8C8C008C8C8C009C9C9C00B5B5
              B500F7F7F700E7E7E700949494008C8C8C0084848400BDBDBD00EFEFEF00D6D6
              D600848484007B7B7B007B7B7B0084848400C6C6C6008C8C8C006B6B6B009C9C
              9C00EFEFEF00DEDEDE00737373006B6B6B0084848400BDBDBD00EFEFEF00CECE
              CE00848484007B7B7B00B5B5B5007B7B7B0073737300737373006B6B6B009C9C
              9C00EFEFEF00DEDEDE00737373006B6B6B009C9C9C00C6C6C600EFEFEF00CECE
              CE009C9C9C00B5B5B500949494008C8C8C008C8C8C008C8C8C008C8C8C00ADAD
              AD00EFEFEF00E7E7E7008C8C8C008C8C8C009C9C9C00E7E7E700F7F7F700ADAD
              AD00B5B5B500E7E7E7009494940094949400A5A5A500D6D6D600DEDEDE008C8C
              8C00DEDEDE00F7F7F700ADADAD008C8C8C008C8C8C00DEDEDE00EFEFEF00A5A5
              A50084848400848484008C8C8C00D6D6D600EFEFEF008C8C8C00737373007373
              7300D6D6D600EFEFEF00949494006B6B6B008C8C8C00DEDEDE00EFEFEF009494
              94008484840084848400EFEFEF00CECECE008484840073737300737373007373
              7300D6D6D600EFEFEF00949494006B6B6B009C9C9C00DEDEDE00EFEFEF00A5A5
              A5009C9C9C00EFEFEF00DEDEDE00A5A5A5008C8C8C008C8C8C00EFEFEF008C8C
              8C00DEDEDE00EFEFEF00ADADAD008C8C8C00ADADAD00EFEFEF00E7E7E7009C9C
              9C00BDBDBD00DEDEDE009C9C9C00C6C6C600EFEFEF00F7F7F700DEDEDE008C8C
              8C00C6C6C600F7F7F700BDBDBD008C8C8C0094949400E7E7E700DEDEDE009494
              94008C8C8C00ADADAD00DEDEDE00EFEFEF00E7E7E7008C8C8C00737373007373
              7300B5B5B500EFEFEF00ADADAD007373730094949400E7E7E700DEDEDE008C8C
              8C008C8C8C008C8C8C00E7E7E700EFEFEF00D6D6D600949494007B7B7B007373
              7300B5B5B500EFEFEF00ADADAD0073737300A5A5A500EFEFEF00E7E7E7009C9C
              9C009C9C9C00EFEFEF00EFEFEF00EFEFEF00C6C6C60094949400EFEFEF008C8C
              8C00BDBDBD00EFEFEF00BDBDBD008C8C8C00BDBDBD00F7F7F700E7E7E7009C9C
              9C00BDBDBD00DEDEDE00B5B5B500EFEFEF00F7F7F700F7F7F700DEDEDE009494
              9400BDBDBD00F7F7F700C6C6C6008C8C8C00A5A5A500EFEFEF00D6D6D6008C8C
              8C008C8C8C00CECECE00EFEFEF00EFEFEF00E7E7E700949494007B7B7B007373
              7300ADADAD00EFEFEF00B5B5B50073737300A5A5A500EFEFEF00D6D6D6009494
              9400949494008C8C8C00E7E7E700EFEFEF00EFEFEF00CECECE007B7B7B007B7B
              7B00ADADAD00EFEFEF00B5B5B50073737300B5B5B500EFEFEF00DEDEDE00A5A5
              A500A5A5A500EFEFEF00EFEFEF00EFEFEF00EFEFEF00CECECE00EFEFEF008C8C
              8C00BDBDBD00EFEFEF00BDBDBD008C8C8C00C6C6C600F7F7F700EFEFEF00A5A5
              A500BDBDBD00E7E7E7009C9C9C00A5A5A500CECECE00F7F7F700E7E7E7009494
              9400CECECE00F7F7F700BDBDBD008C8C8C00ADADAD00EFEFEF00E7E7E7009494
              9400848484008C8C8C00C6C6C600EFEFEF00E7E7E700949494007B7B7B007373
              7300BDBDBD00EFEFEF00ADADAD0073737300ADADAD00EFEFEF00E7E7E7009494
              94009494940094949400E7E7E700EFEFEF00D6D6D60094949400848484007B7B
              7B00BDBDBD00EFEFEF00ADADAD0073737300BDBDBD00EFEFEF00E7E7E700A5A5
              A500A5A5A500EFEFEF00EFEFEF00DEDEDE00ADADAD009C9C9C00EFEFEF009494
              9400CECECE00EFEFEF00B5B5B5008C8C8C00BDBDBD00EFEFEF00F7F7F700C6C6
              C600B5B5B500DEDEDE009C9C9C009C9C9C009C9C9C00B5B5B500CECECE009C9C
              9C00EFEFEF00F7F7F700A5A5A5008C8C8C00A5A5A500E7E7E700EFEFEF00B5B5
              B500848484008C8C8C008C8C8C00B5B5B500E7E7E7009C9C9C007B7B7B008484
              8400E7E7E700EFEFEF009494940073737300A5A5A500E7E7E700EFEFEF00A5A5
              A5009494940094949400EFEFEF00CECECE00949494008C8C8C008C8C8C008484
              8400E7E7E700EFEFEF009494940073737300B5B5B500EFEFEF00EFEFEF00B5B5
              B500A5A5A500E7E7E700C6C6C600A5A5A5009C9C9C009C9C9C00EFEFEF009C9C
              9C00E7E7E700EFEFEF00A5A5A5008C8C8C0000000000DEDEDE00F7F7F700EFEF
              EF00B5B5B500A5A5A5009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
              D600F7F7F700DEDEDE00949494000000000000000000D6D6D600EFEFEF00E7E7
              E7009C9C9C00848484008C8C8C0084848400A5A5A5009494940084848400C6C6
              C600EFEFEF00CECECE007B7B7B000000000000000000D6D6D600EFEFEF00DEDE
              DE009C9C9C0094949400BDBDBD009494940094949400949494008C8C8C00C6C6
              C600EFEFEF00CECECE007B7B7B000000000000000000DEDEDE00EFEFEF00DEDE
              DE00ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A5009C9C9C00CECE
              CE00EFEFEF00D6D6D6008C8C8C000000000000000000C6C6C600EFEFEF00F7F7
              F700EFEFEF00C6C6C600ADADAD00A5A5A500A5A5A500B5B5B500DEDEDE00F7F7
              F700EFEFEF00A5A5A500949494000000000000000000B5B5B500E7E7E700EFEF
              EF00E7E7E700B5B5B500949494008C8C8C008C8C8C00A5A5A500D6D6D600EFEF
              EF00E7E7E700949494007B7B7B000000000000000000B5B5B500E7E7E700EFEF
              EF00DEDEDE00A5A5A5009494940094949400949494009C9C9C00CECECE00EFEF
              EF00E7E7E700949494007B7B7B000000000000000000C6C6C600EFEFEF00EFEF
              EF00E7E7E700B5B5B500A5A5A500A5A5A500A5A5A500ADADAD00D6D6D600EFEF
              EF00E7E7E7009C9C9C008C8C8C00000000000000000000000000CECECE00EFEF
              EF00F7F7F700F7F7F700EFEFEF00DEDEDE00E7E7E700F7F7F700F7F7F700E7E7
              E700ADADAD009494940000000000000000000000000000000000C6C6C600EFEF
              EF00EFEFEF00EFEFEF00E7E7E700D6D6D600DEDEDE00EFEFEF00EFEFEF00DEDE
              DE009C9C9C008484840000000000000000000000000000000000C6C6C600EFEF
              EF00EFEFEF00EFEFEF00E7E7E700D6D6D600DEDEDE00EFEFEF00EFEFEF00DEDE
              DE009C9C9C008484840000000000000000000000000000000000C6C6C600EFEF
              EF00EFEFEF00EFEFEF00E7E7E700DEDEDE00E7E7E700EFEFEF00EFEFEF00E7E7
              E700A5A5A500949494000000000000000000000000000000000000000000C6C6
              C600E7E7E700EFEFEF00F7F7F700F7F7F700F7F7F700EFEFEF00CECECE00A5A5
              A50094949400000000000000000000000000000000000000000000000000BDBD
              BD00DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700CECECE009494
              940084848400000000000000000000000000000000000000000000000000BDBD
              BD00DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700CECECE009494
              940084848400000000000000000000000000000000000000000000000000BDBD
              BD00DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700CECECE009C9C
              9C00949494000000000000000000000000000000000000000000000000000000
              0000B5B5B500BDBDBD00C6C6C600C6C6C600BDBDBD00ADADAD009C9C9C000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000B5B5B500BDBDBD00C6C6C600CECECE00BDBDBD00ADADAD00949494000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000B5B5B500BDBDBD00C6C6C600CECECE00BDBDBD00ADADAD00949494000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000B5B5B500B5B5B500C6C6C600C6C6C600BDBDBD00A5A5A500949494000000
              000000000000000000000000000000000000424D3E000000000000003E000000
              2800000040000000400000000100010000000000000200000000000000000000
              000000000000000000000000FFFFFF0000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000F81FF81F8FFFFFFFE007E007807F0FF3
              C003C00380070061800180018001000180018001800100030000000080010003
              0000000080010003000000008001000100000000800100010000000080010001
              000000008001000080018001800100008001800180010007C003C00380010007
              E007E0078001807FF81FF81FC1FF80FFF81FF81FF81FF81FE007E007E007E007
              C003C003C003C003800180018001800180018001800180010000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000080018001800180018001800180018001C003C003C003C003
              E007E007E007E007F81FF81FF81FF81FF81FF81FF81FF81FE007E007E007E007
              C003C003C003C003800180018001800180018001800180010000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000080018001800180018001800180018001C003C003C003C003
              E007E007E007E007F01FF01FF01FF01F00000000000000000000000000000000
              000000000000}
          end
        end
        object ToolBar1: TToolBar
          Left = 673
          Top = 0
          Width = 682
          Height = 42
          Align = alRight
          AutoSize = True
          BorderWidth = 2
          ButtonHeight = 33
          ButtonWidth = 79
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
          TabOrder = 1
          Transparent = True
          object btnGerar: TToolButton
            Left = 3
            Top = 0
            Action = actExcelGerar
          end
          object btnComissoes: TToolButton
            Left = 82
            Top = 0
            Action = actExcelComissao
          end
          object btnImportarListaEsp: TToolButton
            Left = 161
            Top = 0
            Action = actExcelImportar
          end
          object ToolButton9: TToolButton
            Left = 240
            Top = 0
            Width = 10
            Caption = 'ToolButton9'
            ImageIndex = 162
            Style = tbsSeparator
          end
          object btnOrderProforma: TToolButton
            Left = 250
            Top = 0
            Action = actExcelOrder
          end
          object btnShipMarks: TToolButton
            Left = 329
            Top = 0
            Action = actShipMarks
          end
          object tbAbrir: TToolButton
            Left = 408
            Top = 0
            Action = actExcelAbrir
            DropdownMenu = PopupMenu1
            Style = tbsDropDown
          end
          object ToolButton1: TToolButton
            Left = 500
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 160
            Style = tbsSeparator
          end
          object ToolButton6: TToolButton
            Left = 508
            Top = 0
            Action = actHistPrecos
          end
          object ToolButton10: TToolButton
            Left = 587
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 142
            Style = tbsSeparator
          end
          object btnValidar: TToolButton
            Left = 595
            Top = 0
            Action = actValidar
          end
        end
      end
      object pgPagDescAdic: TPageControl
        Left = 0
        Top = 262
        Width = 1342
        Height = 172
        ActivePage = tsPagamentos
        Align = alTop
        TabOrder = 2
        object tsPagamentos: TTabSheet
          Caption = 'Pagamentos'
          object Label72: TLabel
            Left = 1
            Top = 1
            Width = 140
            Height = 14
            Caption = 'Pagamentos Efetuados'
          end
          object Label73: TLabel
            Left = 597
            Top = 2
            Width = 77
            Height = 14
            Caption = 'Denomina'#231#227'o'
          end
          object SpeedButton3: TSpeedButton
            Left = 598
            Top = 78
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333FF3333333333333003333333333333F77F33333333333009033
              333333333F7737F333333333009990333333333F773337FFFFFF330099999000
              00003F773333377777770099999999999990773FF33333FFFFF7330099999000
              000033773FF33777777733330099903333333333773FF7F33333333333009033
              33333333337737F3333333333333003333333333333377333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = SpeedButton3Click
          end
          object Label74: TLabel
            Left = 628
            Top = 67
            Width = 70
            Height = 14
            Caption = 'Valor Real'
            FocusControl = dbeVlrPagamento
          end
          object Label75: TLabel
            Left = 854
            Top = 67
            Width = 28
            Height = 14
            Caption = 'Data'
          end
          object Label83: TLabel
            Left = 741
            Top = 67
            Width = 98
            Height = 14
            Caption = 'Valor Especial'
            FocusControl = dbeVlrPagamento
          end
          object Label84: TLabel
            Left = 75
            Top = 126
            Width = 217
            Height = 14
            Caption = 'Totais Pagamentos Real/Especial'
          end
          object Label37: TLabel
            Left = 977
            Top = 67
            Width = 42
            Height = 14
            Caption = 'Fatura'
          end
          object dbeVlrPagamento: TDBEdit
            Left = 628
            Top = 81
            Width = 110
            Height = 22
            Color = clWhite
            DataField = 'vlr_pagamento'
            DataSource = ds_pedido_pagamento
            TabOrder = 2
          end
          object dtDatPagamento: TJvDBDateEdit
            Left = 854
            Top = 81
            Width = 121
            Height = 22
            DataField = 'dat_pagamento'
            DataSource = ds_pedido_pagamento
            TabOrder = 4
          end
          object JvDBUltimGrid3: TJvDBUltimGrid
            Left = 1
            Top = 16
            Width = 592
            Height = 103
            DataSource = ds_pedido_pagamento
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 18
            Columns = <
              item
                Expanded = False
                FieldName = 'txt_pagamento'
                Width = 297
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_pagamento'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_pagamento_esp'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_pagamento'
                Width = 80
                Visible = True
              end>
          end
          object DBNavigator2: TDBNavigator
            Left = 791
            Top = 104
            Width = 160
            Height = 18
            DataSource = ds_pedido_pagamento
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
            TabOrder = 7
          end
          object dbmTxtPagamentos: TDBMemo
            Left = 598
            Top = 16
            Width = 618
            Height = 51
            DataField = 'txt_pagamento'
            DataSource = ds_pedido_pagamento
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 629
            Top = 107
            Width = 132
            Height = 15
            Hint = 
              'Marcar quando houver mais de um  adiantamento antes do embarque.' +
              ' '
            Caption = 'Before Shipment'
            DataField = 'ies_pago'
            DataSource = dtsPedido
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbeVlrPagamentoEsp: TDBEdit
            Left = 741
            Top = 81
            Width = 110
            Height = 22
            Color = clWhite
            DataField = 'vlr_pagamento_esp'
            DataSource = ds_pedido_pagamento
            TabOrder = 3
          end
          object DBEdit27: TDBEdit
            Left = 298
            Top = 121
            Width = 100
            Height = 22
            Color = clInfoBk
            DataField = 'tot_pagamentos'
            DataSource = dscby_pedido_pagamento
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit29: TDBEdit
            Left = 400
            Top = 121
            Width = 100
            Height = 22
            Color = clInfoBk
            DataField = 'tot_pagamentos_esp'
            DataSource = dscby_pedido_pagamento
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit3: TDBEdit
            Left = 979
            Top = 80
            Width = 141
            Height = 22
            Color = clInfoBk
            DataField = 'lkpNumFatura'
            DataSource = ds_pedido_pagamento
            ReadOnly = True
            TabOrder = 5
          end
        end
        object tsDescAdic: TTabSheet
          Caption = 'Descontos e Adicionais'
          ImageIndex = 2
          object Label76: TLabel
            Left = 1
            Top = 1
            Width = 140
            Height = 14
            Caption = 'Adicionais/Descontos'
          end
          object Label77: TLabel
            Left = 703
            Top = 0
            Width = 63
            Height = 14
            Caption = 'Descri'#231#227'o'
          end
          object Label78: TLabel
            Left = 406
            Top = 92
            Width = 70
            Height = 14
            Caption = 'Valor Real'
          end
          object SpeedButton4: TSpeedButton
            Left = 703
            Top = 64
            Width = 25
            Height = 25
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333FF3333333333333003333333333333F77F33333333333009033
              333333333F7737F333333333009990333333333F773337FFFFFF330099999000
              00003F773333377777770099999999999990773FF33333FFFFF7330099999000
              000033773FF33777777733330099903333333333773FF7F33333333333009033
              33333333337737F3333333333333003333333333333377333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = SpeedButton4Click
          end
          object Label4: TLabel
            Left = 0
            Top = 88
            Width = 112
            Height = 14
            Caption = 'N'#250'mero da Fatura'
            FocusControl = DBEdit15
          end
          object Label58: TLabel
            Left = 527
            Top = 92
            Width = 98
            Height = 14
            Caption = 'Valor Especial'
          end
          object Label79: TLabel
            Left = 703
            Top = 92
            Width = 105
            Height = 14
            Caption = 'Total Adic Real'
          end
          object Label80: TLabel
            Left = 937
            Top = 92
            Width = 98
            Height = 14
            Caption = 'Total Adic Esp'
          end
          object Label81: TLabel
            Left = 814
            Top = 92
            Width = 105
            Height = 14
            Caption = 'Total Desc Real'
          end
          object Label82: TLabel
            Left = 1047
            Top = 92
            Width = 98
            Height = 14
            Caption = 'Total Desc Esp'
          end
          object JvDBUltimGrid4: TJvDBUltimGrid
            Left = 1
            Top = 16
            Width = 697
            Height = 69
            DataSource = ds_pedido_adic_desc
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 18
            Columns = <
              item
                Expanded = False
                FieldName = 'txt_descricao'
                Width = 428
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_adic_desc'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_adic_desc_esp'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ies_tipo'
                Width = 31
                Visible = True
              end>
          end
          object DBEdit2: TDBEdit
            Left = 406
            Top = 106
            Width = 118
            Height = 22
            Color = clWhite
            DataField = 'vlr_adic_desc'
            DataSource = ds_pedido_adic_desc
            TabOrder = 3
          end
          object DBNavigator3: TDBNavigator
            Left = 732
            Top = 64
            Width = 232
            Height = 25
            DataSource = ds_pedido_adic_desc
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
            TabOrder = 9
          end
          object dbmTxtDescricao: TDBMemo
            Left = 703
            Top = 16
            Width = 554
            Height = 39
            DataField = 'txt_descricao'
            DataSource = ds_pedido_adic_desc
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 286
            Top = 82
            Width = 110
            Height = 51
            Caption = 'A/D'
            DataField = 'ies_tipo'
            DataSource = ds_pedido_adic_desc
            Items.Strings = (
              'Adicional'
              'Desconto')
            TabOrder = 2
            TabStop = True
            Values.Strings = (
              'A'
              'D')
          end
          object DBEdit15: TDBEdit
            Left = 0
            Top = 104
            Width = 161
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'num_fatura'
            DataSource = ds_pedido_adic_desc
            ReadOnly = True
            TabOrder = 10
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 168
            Top = 88
            Width = 112
            Height = 40
            Caption = 'Faturado'
            Columns = 2
            DataField = 'ies_faturado'
            DataSource = ds_pedido_adic_desc
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ReadOnly = True
            TabOrder = 11
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit21: TDBEdit
            Left = 527
            Top = 106
            Width = 118
            Height = 22
            Color = clWhite
            DataField = 'vlr_adic_desc_esp'
            DataSource = ds_pedido_adic_desc
            TabOrder = 4
          end
          object DBEdit22: TDBEdit
            Left = 703
            Top = 106
            Width = 110
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'vlr_adicional'
            DataSource = dtsPedido
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit23: TDBEdit
            Left = 814
            Top = 106
            Width = 110
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'vlr_desconto'
            DataSource = dtsPedido
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit24: TDBEdit
            Left = 937
            Top = 106
            Width = 110
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'vlr_adicional_esp'
            DataSource = dtsPedido
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit25: TDBEdit
            Left = 1047
            Top = 106
            Width = 110
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'vlr_desconto_esp'
            DataSource = dtsPedido
            ReadOnly = True
            TabOrder = 8
          end
        end
        object tsComissao: TTabSheet
          Caption = 'Comiss'#245'es'
          ImageIndex = 2
          object DBRadioGroup5: TDBRadioGroup
            Left = 8
            Top = 2
            Width = 137
            Height = 33
            Caption = 'Pre'#231'os Especiais'
            Columns = 2
            DataField = 'ies_preco_esp'
            DataSource = dtsPedido
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ReadOnly = True
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object dgbComissao: TDBRadioGroup
            Left = 152
            Top = 2
            Width = 193
            Height = 95
            Caption = 'Requerer Comiss'#227'o de:'
            DataField = 'ies_comissao'
            DataSource = dtsPedido
            Items.Strings = (
              'Cliente'
              'Fornecedor'
              'Cliente e Fornecedor'
              'Sem comiss'#227'o')
            ReadOnly = True
            TabOrder = 1
            TabStop = True
            Values.Strings = (
              '2'
              '1'
              '3'
              '0')
          end
          object dgbBaseComissao: TDBRadioGroup
            Left = 352
            Top = 2
            Width = 193
            Height = 52
            Caption = 'Base Comiss'#227'o'
            DataField = 'ies_base_comissao'
            DataSource = dtsPedido
            Items.Strings = (
              'FOR(Real)   CLI(Esp)'
              'FOR(Esp)    CLI(Real)')
            TabOrder = 2
            TabStop = True
            Values.Strings = (
              '1'
              '2')
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 434
        Width = 1342
        Height = 120
        Align = alClient
        Caption = 'Coment'#225'rios gerais sobre o pedido (somente na tela)'
        TabOrder = 3
        object mmtxt_observacao: TDBMemo
          Left = 2
          Top = 16
          Width = 1338
          Height = 102
          Align = alClient
          DataField = 'txt_observacao'
          DataSource = dtsPedido
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 554
        Width = 1342
        Height = 22
        Align = alBottom
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 4
        object panGauge: TPanel
          Left = 14
          Top = 9
          Width = 211
          Height = 8
          BevelInner = bvLowered
          BevelOuter = bvNone
          TabOrder = 0
        end
        object cbPrecos: TCheckBox
          Left = 236
          Top = 5
          Width = 198
          Height = 12
          Caption = 'Mostrar Origem dos Pre'#231'os'
          TabOrder = 1
        end
        object cbEtdFactory: TCheckBox
          Left = 444
          Top = 5
          Width = 164
          Height = 12
          Caption = 'Planilha ETD Factory'
          TabOrder = 2
        end
        object cbImages: TCheckBox
          Left = 620
          Top = 5
          Width = 347
          Height = 12
          Caption = 'Mostrar Imagens dos Produtos na Ordem/Proforma'
          TabOrder = 3
        end
        object cbProdCliente: TCheckBox
          Left = 971
          Top = 4
          Width = 302
          Height = 12
          Caption = 'Listar Produtos na Planilha de Altera'#231#227'o'
          TabOrder = 4
        end
      end
    end
    object tbsPedidoProduto: TTabSheet
      Caption = 'Produtos (F6)'
      ImageIndex = 1
      object pnlProdto: TPanel
        Left = 0
        Top = 0
        Width = 1342
        Height = 243
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object pnlProduto: TPanel
          Left = 2
          Top = 2
          Width = 1338
          Height = 239
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label24: TLabel
            Left = 6
            Top = 6
            Width = 49
            Height = 14
            Caption = 'Produto'
            Layout = tlBottom
          end
          object Label26: TLabel
            Left = 501
            Top = 6
            Width = 70
            Height = 14
            Caption = 'Quantidade'
            FocusControl = edtqtd_produtoproduto
            Layout = tlBottom
          end
          object Label27: TLabel
            Left = 6
            Top = 49
            Width = 63
            Height = 14
            Caption = 'Cancelada'
            FocusControl = edtqtd_cancelada
            Layout = tlBottom
          end
          object Label28: TLabel
            Left = 94
            Top = 49
            Width = 63
            Height = 14
            Caption = 'Romaneada'
            FocusControl = edtqtd_romaneada
            Layout = tlBottom
          end
          object Label29: TLabel
            Left = 182
            Top = 49
            Width = 56
            Height = 14
            Caption = 'Faturada'
            FocusControl = edtqtd_faturada
            Layout = tlBottom
          end
          object Label30: TLabel
            Left = 271
            Top = 49
            Width = 56
            Height = 14
            Caption = 'Pendente'
            FocusControl = edtqtd_pendente
            Layout = tlBottom
          end
          object Label32: TLabel
            Left = 590
            Top = 6
            Width = 70
            Height = 14
            Caption = 'Pre'#231'o Real'
            FocusControl = edtvlr_unitario
            Layout = tlBottom
          end
          object Label36: TLabel
            Left = 685
            Top = 6
            Width = 70
            Height = 14
            Caption = 'Total Real'
            FocusControl = edtvlr_liquidoproduto
            Layout = tlBottom
          end
          object Label44: TLabel
            Left = 464
            Top = 162
            Width = 252
            Height = 14
            Caption = 'Observa'#231#245'es(impresso nos documentos)'
            Layout = tlBottom
          end
          object Label21: TLabel
            Left = 532
            Top = 48
            Width = 70
            Height = 14
            Caption = 'Master(CX)'
            FocusControl = DBEdit6
          end
          object Label23: TLabel
            Left = 357
            Top = 48
            Width = 56
            Height = 14
            Caption = 'UN/Inner'
            FocusControl = DBEdit7
          end
          object Label34: TLabel
            Left = 619
            Top = 48
            Width = 70
            Height = 14
            Caption = 'Volume(m'#179')'
            FocusControl = DBEdit8
          end
          object Label38: TLabel
            Left = 708
            Top = 48
            Width = 70
            Height = 14
            Caption = 'Peso Bruto'
            FocusControl = DBEdit10
          end
          object Label19: TLabel
            Left = 6
            Top = 162
            Width = 126
            Height = 14
            Caption = 'Status da Produ'#231#227'o'
            Layout = tlBottom
          end
          object Label50: TLabel
            Left = 444
            Top = 48
            Width = 63
            Height = 14
            Caption = 'UN/Master'
            FocusControl = DBEdit17
          end
          object Label12: TLabel
            Left = 795
            Top = 48
            Width = 84
            Height = 14
            Caption = 'Peso L'#237'quido'
            FocusControl = DBEdit10
          end
          object Label3: TLabel
            Left = 6
            Top = 89
            Width = 147
            Height = 14
            Caption = 'Coment'#225'rio Pre'#231'o Real'
          end
          object Label69: TLabel
            Left = 125
            Top = 6
            Width = 63
            Height = 14
            Caption = 'Descri'#231#227'o'
          end
          object Label35: TLabel
            Left = 782
            Top = 6
            Width = 63
            Height = 14
            Caption = 'Pre'#231'o Esp'
            FocusControl = edtvlr_unitario
            Layout = tlBottom
          end
          object Label43: TLabel
            Left = 877
            Top = 6
            Width = 63
            Height = 14
            Caption = 'Total Esp'
            FocusControl = edtvlr_liquidoproduto
            Layout = tlBottom
          end
          object Label85: TLabel
            Left = 464
            Top = 89
            Width = 175
            Height = 14
            Caption = 'Coment'#225'rio Pre'#231'o Especial'
          end
          object Label88: TLabel
            Left = 917
            Top = 162
            Width = 84
            Height = 14
            Caption = 'Dat.Inspe'#231#227'o'
          end
          object edtqtd_produtoproduto: TDBEdit
            Left = 501
            Top = 21
            Width = 85
            Height = 22
            DataField = 'qtd_produto'
            DataSource = dtsPedidoProduto
            TabOrder = 2
          end
          object edtqtd_cancelada: TDBEdit
            Left = 6
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_cancelada'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 13
          end
          object edtqtd_romaneada: TDBEdit
            Left = 94
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_romaneada'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 14
          end
          object edtqtd_faturada: TDBEdit
            Left = 182
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_faturada'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 15
          end
          object edtqtd_pendente: TDBEdit
            Left = 270
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_pendente'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 16
          end
          object edtvlr_unitario: TDBEdit
            Left = 590
            Top = 21
            Width = 89
            Height = 22
            Color = clWhite
            DataField = 'vlr_unitario'
            DataSource = dtsPedidoProduto
            TabOrder = 3
          end
          object edtvlr_liquidoproduto: TDBEdit
            Left = 685
            Top = 21
            Width = 91
            Height = 22
            TabStop = False
            Color = 8454143
            DataField = 'vlr_liquido'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 4
          end
          object edtcod_produto: TDBEdit
            Left = 6
            Top = 21
            Width = 115
            Height = 22
            CharCase = ecUpperCase
            DataField = 'cod_produto'
            DataSource = dtsPedidoProduto
            TabOrder = 0
          end
          object mmtxt_observacao2: TDBMemo
            Left = 464
            Top = 175
            Width = 450
            Height = 61
            DataField = 'txt_observacao'
            DataSource = dtsPedidoProduto
            ScrollBars = ssVertical
            TabOrder = 12
            OnExit = mmtxt_observacao2Exit
          end
          object DBEdit6: TDBEdit
            Left = 532
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_export_box'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 17
          end
          object DBEdit7: TDBEdit
            Left = 357
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'qtd_inner_box'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 18
          end
          object DBEdit8: TDBEdit
            Left = 620
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'vol_caixas'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 19
          end
          object DBEdit9: TDBEdit
            Left = 796
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'pes_liquido'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 20
          end
          object DBEdit10: TDBEdit
            Left = 708
            Top = 63
            Width = 85
            Height = 22
            TabStop = False
            Color = clInfoBk
            DataField = 'pes_bruto'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 21
          end
          object DBMemo2: TDBMemo
            Left = 6
            Top = 175
            Width = 450
            Height = 61
            DataField = 'txt_status_producao'
            DataSource = dtsPedidoProduto
            ScrollBars = ssVertical
            TabOrder = 9
          end
          object DBEdit17: TDBEdit
            Left = 444
            Top = 63
            Width = 85
            Height = 22
            Color = clInfoBk
            DataField = 'un_cx_master'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 22
          end
          object DBMemo1: TDBMemo
            Left = 6
            Top = 104
            Width = 450
            Height = 61
            DataField = 'obs_preco'
            DataSource = dtsPedidoProduto
            ScrollBars = ssVertical
            TabOrder = 7
          end
          object DBEdit1: TDBEdit
            Left = 124
            Top = 21
            Width = 373
            Height = 22
            Color = clInfoBk
            DataField = 'calDenProduto'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit18: TDBEdit
            Left = 782
            Top = 21
            Width = 89
            Height = 22
            Color = clWhite
            DataField = 'vlr_unitario_esp'
            DataSource = dtsPedidoProduto
            TabOrder = 5
          end
          object DBEdit19: TDBEdit
            Left = 877
            Top = 21
            Width = 91
            Height = 22
            TabStop = False
            Color = 16744703
            DataField = 'vlr_liquido_esp'
            DataSource = dtsPedidoProduto
            ReadOnly = True
            TabOrder = 6
          end
          object DBMemo3: TDBMemo
            Left = 464
            Top = 104
            Width = 450
            Height = 61
            DataField = 'obs_preco_esp'
            DataSource = dtsPedidoProduto
            ScrollBars = ssVertical
            TabOrder = 8
          end
          object JvDBDatePickerEdit1: TJvDBDatePickerEdit
            Left = 917
            Top = 175
            Width = 95
            Height = 22
            AllowNoDate = True
            DataField = 'dat_inspecao'
            DataSource = dtsPedidoProduto
            DateFormat = 'dd.MM.yyyy'
            DateSeparator = '.'
            StoreDateFormat = True
            TabOrder = 10
          end
          object JvDBRadioPanel1: TJvDBRadioPanel
            Left = 917
            Top = 198
            Width = 132
            Height = 40
            BevelInner = bvRaised
            BevelOuter = bvNone
            DataField = 'ies_result_inspecao'
            DataSource = dtsPedidoProduto
            Items.Strings = (
              'Passou'
              'Falhou/Passou'
              'Falhou')
            TabOrder = 11
            Values.Strings = (
              '2'
              '1'
              '0')
          end
        end
      end
      object a: TPanel
        Left = 0
        Top = 583
        Width = 1342
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        inline fr_FmNavigator2: Tfr_FmNavigator
          Left = 0
          Top = 0
          Width = 577
          Height = 35
          Align = alLeft
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          inherited ToolBar1: TToolBar
            Width = 577
          end
          inherited ActionList1: TActionList
            Left = 342
            Top = 10
            inherited acFirst: TDataSetFirst
              DataSource = dtsPedidoProduto
            end
            inherited acPrior: TDataSetPrior
              DataSource = dtsPedidoProduto
            end
            inherited acNext: TDataSetNext
              DataSource = dtsPedidoProduto
            end
            inherited acLast: TDataSetLast
              DataSource = dtsPedidoProduto
            end
            inherited acInsert: TDataSetInsert
              DataSource = dtsPedidoProduto
            end
            inherited acDelete: TDataSetDelete
              OnExecute = fr_FmNavigator2acDeleteExecute
              DataSource = dtsPedidoProduto
            end
            inherited acEdit: TDataSetEdit
              DataSource = dtsPedidoProduto
            end
            inherited acPost: TDataSetPost
              DataSource = dtsPedidoProduto
            end
            inherited acCancel: TDataSetCancel
              DataSource = dtsPedidoProduto
            end
            inherited acRefresh: TDataSetRefresh
              DataSource = dtsPedidoProduto
            end
          end
          inherited ImageList1: TImageList
            Left = 243
            Top = 4
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 539
        Width = 1342
        Height = 44
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 2
        OnEnter = Panel2Enter
        OnExit = Panel2Exit
        object Label48: TLabel
          Left = 6
          Top = 2
          Width = 91
          Height = 14
          Caption = 'Busca produto'
        end
        object Label55: TLabel
          Left = 156
          Top = 2
          Width = 105
          Height = 14
          Caption = 'Busca descri'#231#227'o'
        end
        object edBuscaCodigo: TEdit
          Left = 6
          Top = 17
          Width = 146
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 0
          OnKeyDown = edBuscaCodigoKeyDown
        end
        object edBuscaDesc: TEdit
          Left = 156
          Top = 17
          Width = 335
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 75
          TabOrder = 1
          OnKeyDown = edBuscaDescKeyDown
        end
        object BitBtn1: TBitBtn
          Left = 512
          Top = 16
          Width = 236
          Height = 25
          Action = actCancelarProduto
          Caption = 'Cancelar Saldo Total Pendente'
          TabOrder = 2
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000730000008C000000840000008400000084000000
            840000003900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000008C0000008C0000008C00000094000000940000008C000000
            840000007B0000008400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000940000009400000094000000A5000000A5000000A50000009C000000
            940000008C000000840000008C00FF00FF00FF00FF00FF00FF00FF00FF000000
            9C000000A5002121AD00FFFFFF000000A5000000AD000000B5000000AD004A4A
            BD00FFFFFF0000008C0000008C0000008400FF00FF00FF00FF002929BD000000
            A5000000B500CECEA500FFFFFF00FFFFFF000000AD000000B5004A4ABD00FFFF
            FF00FFFFFF008484AD0000009C000000940000000800FF00FF000000A5000000
            B5000000C6000000BD00C6C6A500FFFFFF00FFFFFF005252DE00FFFFF700FFFF
            FF006B6B94000000BD000000AD0000009C0000006B00FF00FF000808B5000000
            C6000000CE000000CE000000BD00D6D6BD00FFFFFF00FFFFFF00FFFFFF008484
            AD000000C6000000C6000000BD000000A50000009C00FF00FF000808C6000808
            D6000808DE000000D6000000D600424AC600FFFFFF00FFFFFF00FFFFF7000000
            C6000000CE000000CE000000C6000000B5000000BD00FF00FF001010CE001010
            E7001010EF000000E7004242CE00FFFFF700FFFFFF00FFFFF700FFFFFF00FFFF
            FF000000CE000000D6000808CE000000BD000000B500FF00FF001818D6001818
            F7001818FF004A4AE700FFFFF700FFFFFF0073739C000000D600CECEAD00FFFF
            FF00FFFFFF000000E7000808DE000808C60000009400FF00FF003131E7002929
            FF002929FF00D6D6BD00FFFFFF006B6B94000000EF000000E7000000D600BDBD
            9C00FFFFFF007373BD001010E7001010CE005A5A6B00FF00FF00FF00FF002929
            FF004A4AFF004A4AFF006B6B84001010FF000000FF000000F7000808FF001818
            F7004A4A94002121FF002121EF001010D600FF00FF00FF00FF00FF00FF00FF00
            FF004242FF006B6BFF008484FF007373FF005252FF004242FF004A4AFF005252
            FF004A4AFF003939FF002121F700FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF004A4AFF007B7BFF00A5A5FF00A5A5FF009C9CFF008484FF006B6B
            FF004A4AFF002121FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF003939FF006363FF008484FF007B7BFF006363FF003939
            FF006B6BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
      object pgProdutos: TPageControl
        Left = 0
        Top = 243
        Width = 1342
        Height = 296
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 3
        object TabSheet1: TTabSheet
          Caption = 'Produtos'
          inline fr_FmGrid1: Tfr_FmGrid
            Left = 0
            Top = 0
            Width = 1334
            Height = 267
            Align = alClient
            TabOrder = 0
            inherited grdGrid: TDBGrid
              Width = 1334
              Height = 267
              BorderStyle = bsSingle
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OnDrawColumnCell = fr_FmGrid1DBGrid1DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'num_sequencia'
                  Title.Caption = 'Seq'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cod_produto'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'calDenProduto'
                  Width = 380
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtd_produto'
                  Width = 78
                  Visible = True
                end
                item
                  Color = 8454143
                  Expanded = False
                  FieldName = 'vlr_unitario'
                  Width = 93
                  Visible = True
                end
                item
                  Color = 8454143
                  Expanded = False
                  FieldName = 'vlr_liquido'
                  Width = 79
                  Visible = True
                end
                item
                  Color = 16744703
                  Expanded = False
                  FieldName = 'vlr_unitario_esp'
                  Width = 83
                  Visible = True
                end
                item
                  Color = 16744703
                  Expanded = False
                  FieldName = 'vlr_liquido_esp'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtd_export_box'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'un_cx_master'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'vol_caixas'
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pes_liquido'
                  Width = 83
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
                  FieldName = 'qtd_cancelada'
                  Width = 67
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtd_romaneada'
                  Width = 69
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtd_faturada'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'qtd_pendente'
                  Width = 61
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'dat_entrega'
                  Visible = False
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'dat_cadastro'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'ies_emb_esp'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'seq_emb_esp'
                  Width = 31
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'seq_pallet'
                  Width = 32
                  Visible = True
                end>
            end
            inherited dtsFmGrid: TDataSource
              DataSet = qryPedidoProduto
              Left = 16
              Top = 32
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Embalagens Especiais'
          ImageIndex = 1
          object GroupBox12: TGroupBox
            Left = 0
            Top = 0
            Width = 1334
            Height = 267
            Align = alClient
            Caption = 'Caixa'
            TabOrder = 0
            object Panel7: TPanel
              Left = 2
              Top = 16
              Width = 1330
              Height = 49
              Align = alTop
              BevelInner = bvLowered
              TabOrder = 0
              object Label56: TLabel
                Left = 8
                Top = 8
                Width = 21
                Height = 14
                Caption = 'Seq'
              end
              object Label57: TLabel
                Left = 35
                Top = 8
                Width = 77
                Height = 14
                Caption = 'Denomina'#231#227'o'
              end
              object Label59: TLabel
                Left = 288
                Top = 8
                Width = 49
                Height = 14
                Caption = 'N'#250'm Cxs'
              end
              object Label60: TLabel
                Left = 342
                Top = 8
                Width = 63
                Height = 14
                Caption = 'Qtd Total'
              end
              object Label61: TLabel
                Left = 420
                Top = 8
                Width = 77
                Height = 14
                Caption = 'Pes L'#237'quido'
              end
              object Label62: TLabel
                Left = 514
                Top = 8
                Width = 63
                Height = 14
                Caption = 'Pes Bruto'
              end
              object Label63: TLabel
                Left = 765
                Top = 8
                Width = 42
                Height = 14
                Caption = 'Volume'
              end
              object Label64: TLabel
                Left = 603
                Top = 8
                Width = 42
                Height = 14
                Caption = 'Altura'
                FocusControl = DBEdit36
              end
              object Label65: TLabel
                Left = 658
                Top = 8
                Width = 35
                Height = 14
                Caption = 'Larg.'
                FocusControl = DBEdit37
              end
              object Label66: TLabel
                Left = 711
                Top = 8
                Width = 35
                Height = 14
                Caption = 'Comp.'
                FocusControl = DBEdit38
              end
              object DBEdit28: TDBEdit
                Left = 8
                Top = 24
                Width = 25
                Height = 22
                TabStop = False
                Color = clInfoBk
                DataField = 'seq'
                DataSource = ds_emb_especial_ped
                ReadOnly = True
                TabOrder = 0
              end
              object dbeDenEmb: TDBEdit
                Left = 35
                Top = 24
                Width = 247
                Height = 22
                CharCase = ecUpperCase
                DataField = 'den_embalagem'
                DataSource = ds_emb_especial_ped
                TabOrder = 1
              end
              object DBEdit30: TDBEdit
                Left = 288
                Top = 24
                Width = 49
                Height = 22
                DataField = 'qtd_caixas'
                DataSource = ds_emb_especial_ped
                TabOrder = 2
              end
              object DBEdit31: TDBEdit
                Left = 342
                Top = 24
                Width = 75
                Height = 22
                DataField = 'qtd_total'
                DataSource = ds_emb_especial_ped
                TabOrder = 3
              end
              object DBEdit33: TDBEdit
                Left = 420
                Top = 24
                Width = 85
                Height = 22
                DataField = 'pes_liquido'
                DataSource = ds_emb_especial_ped
                TabOrder = 4
              end
              object DBEdit34: TDBEdit
                Left = 514
                Top = 24
                Width = 85
                Height = 22
                DataField = 'pes_bruto'
                DataSource = ds_emb_especial_ped
                TabOrder = 5
              end
              object DBEdit35: TDBEdit
                Left = 765
                Top = 24
                Width = 85
                Height = 22
                DataField = 'vol_total'
                DataSource = ds_emb_especial_ped
                TabOrder = 9
              end
              object DBEdit36: TDBEdit
                Left = 603
                Top = 24
                Width = 47
                Height = 22
                DataField = 'altura'
                DataSource = ds_emb_especial_ped
                TabOrder = 6
              end
              object DBEdit37: TDBEdit
                Left = 658
                Top = 24
                Width = 47
                Height = 22
                DataField = 'largura'
                DataSource = ds_emb_especial_ped
                TabOrder = 7
              end
              object DBEdit38: TDBEdit
                Left = 711
                Top = 24
                Width = 47
                Height = 22
                DataField = 'profundidade'
                DataSource = ds_emb_especial_ped
                TabOrder = 8
              end
            end
            object GroupBox13: TGroupBox
              Left = 2
              Top = 173
              Width = 1330
              Height = 92
              Align = alClient
              Caption = 'Produtos'
              TabOrder = 1
              object dbgProdutosEmb: TDBGrid
                Left = 2
                Top = 16
                Width = 1326
                Height = 74
                Align = alClient
                DataSource = ds_emb_especial_item_ped
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Courier New'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'cod_produto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'calDenProduto'
                    Width = 265
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'qtd_produto'
                    Title.Caption = 'Quantidade'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'pes_liquido'
                    Title.Caption = 'Peso L'#237'q'
                    Width = 73
                    Visible = True
                  end>
              end
            end
            object Panel8: TPanel
              Left = 2
              Top = 65
              Width = 1330
              Height = 69
              Align = alTop
              BevelInner = bvLowered
              TabOrder = 2
              object dbgEmbEspecial: TDBGrid
                Left = 2
                Top = 2
                Width = 1326
                Height = 65
                TabStop = False
                Align = alClient
                DataSource = ds_emb_especial_ped
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Courier New'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'seq'
                    Title.Caption = 'Seq'
                    Width = 26
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'den_embalagem'
                    Title.Caption = 'Denomina'#231#227'o'
                    Width = 288
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'qtd_caixas'
                    Title.Caption = 'N'#250'm Cxs'
                    Width = 56
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'qtd_total'
                    Title.Caption = 'Qtd Total'
                    Width = 84
                    Visible = True
                  end>
              end
            end
            object Panel9: TPanel
              Left = 2
              Top = 134
              Width = 1330
              Height = 39
              Align = alTop
              BevelInner = bvLowered
              TabOrder = 3
              inline fr_FmNavigator3: Tfr_FmNavigator
                Left = 2
                Top = 2
                Width = 1326
                Height = 35
                Align = alClient
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clGreen
                Font.Height = -9
                Font.Name = 'Courier New'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                inherited ToolBar1: TToolBar
                  Width = 1326
                end
                inherited ActionList1: TActionList
                  Left = 222
                  Top = 10
                end
                inherited ImageList1: TImageList
                  Left = 259
                  Top = 12
                end
              end
            end
          end
        end
      end
    end
  end
  object qryPedido: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterCancel = qryPedidoAfterCancel
    AfterClose = qryPedidoAfterClose
    AfterDelete = qryPedidoAfterDelete
    AfterOpen = qryPedidoAfterOpen
    AfterPost = qryPedidoAfterPost
    BeforeDelete = qryPedidoBeforeDelete
    BeforeInsert = qryPedidoBeforeInsert
    BeforeOpen = qryPedidoBeforeOpen
    BeforePost = qryPedidoBeforePost
    OnDeleteError = qryPedidoDeleteError
    OnEditError = qryPedidoDeleteError
    OnNewRecord = qryPedidoNewRecord
    OnPostError = qryPedidoDeleteError
    OnUpdateError = qryPedidoUpdateError
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from "pedido"'
      'where'
      '  "pedido"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido"."num_pedido" = :"OLD_num_pedido"')
    InsertSQL.Strings = (
      'insert into "pedido"'
      '  ("pedido"."cod_empresa",'
      '   "pedido"."num_pedido",'
      '   "pedido"."ies_situacao",'
      '   "pedido"."ies_tip_pedido",'
      '   "pedido"."dat_emissao",'
      '   "pedido"."dat_entrega",'
      '   "pedido"."dat_liberacao", '
      '   "pedido"."dat_faturamento",'
      '   "pedido"."login",'
      '   "pedido"."vlr_frete", '
      '   "pedido"."txt_observacao",'
      '   "pedido"."cod_cliente",'
      '   "pedido"."cod_vendedor",'
      '   "pedido"."num_lista",'
      '   "pedido"."cod_moeda",'
      '   "pedido"."dat_cadastro",'
      '   "pedido"."txt_pedido",'
      '   "pedido"."txt_confirmacao",'
      '   "pedido"."cod_banco_int",'
      '   "pedido"."cod_banco",'
      '   "pedido"."ies_pago",'
      '   "pedido"."vlr_condicao",'
      '   "pedido"."terms_payment", '
      '   "pedido"."ies_pallets",'
      '   "pedido"."ies_base_comissao",'
      '   "pedido"."ies_insurance",'
      '   "pedido"."ies_idioma",'
      '   "pedido"."seq_filial",'
      '   "pedido"."cod_fabricante",'
      '   "pedido"."dat_vertratadm",'
      '   "pedido"."ies_li",'
      '   "pedido"."dat_verli",'
      '   "pedido"."dat_embalagem", '
      '   "pedido"."dat_ctn_marks")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"ies_situacao", :"ies_tip_ped' +
        'ido",'
      '   :"dat_emissao", :"dat_entrega", :"dat_liberacao",'
      '   :"dat_faturamento", :"login", :"vlr_frete",'
      '   :"txt_observacao", :"cod_cliente",'
      
        '   :"cod_vendedor", :"num_lista",  :"cod_moeda", :"dat_cadastro"' +
        ','
      
        '   :"txt_pedido", :"txt_confirmacao", :"cod_banco_int", :"cod_ba' +
        'nco", :"ies_pago",'
      
        '   :"vlr_condicao", :"terms_payment", :"ies_pallets", :"ies_base' +
        '_comissao", '
      
        '   :"ies_insurance",  :"ies_idioma", :"seq_filial", :"cod_fabric' +
        'ante",'
      
        '   :"dat_vertratadm", :"ies_li", :"dat_verli", :"dat_embalagem",' +
        ' :"dat_ctn_marks")'
      '')
    RefreshSQL.Strings = (
      'Select *'
      'from "pedido" '
      'where'
      '  "pedido"."cod_empresa" = :"cod_empresa" and'
      '  "pedido"."num_pedido" = :"num_pedido"')
    SelectSQL.Strings = (
      'select * from "pedido"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'and "num_pedido"  = :num_pedido')
    ModifySQL.Strings = (
      'update "pedido"'
      'set'
      '  "pedido"."cod_empresa" = :"cod_empresa",'
      '  "pedido"."num_pedido" = :"num_pedido",'
      '  "pedido"."ies_situacao" = :"ies_situacao",'
      '  "pedido"."ies_tip_pedido" = :"ies_tip_pedido",'
      '  "pedido"."dat_emissao" = :"dat_emissao",'
      '  "pedido"."dat_entrega" = :"dat_entrega",'
      '  "pedido"."dat_liberacao" = :"dat_liberacao",'
      '  "pedido"."dat_faturamento" = :"dat_faturamento",'
      '  "pedido"."login" = :"login",'
      '  "pedido"."vlr_frete" = :"vlr_frete",'
      '  "pedido"."txt_observacao" = :"txt_observacao",'
      '  "pedido"."cod_cliente" = :"cod_cliente",'
      '  "pedido"."cod_vendedor" = :"cod_vendedor",'
      '  "pedido"."num_lista" = :"num_lista",'
      '  "pedido"."cod_moeda" = :"cod_moeda",'
      '  "pedido"."dat_cadastro" = :"dat_cadastro",'
      '  "pedido"."vlr_bruto" = (select "vlr_bruto" from '
      '  "cby_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      '  "pedido"."vlr_liquido" = (select "vlr_liquido" from '
      '  "cby_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      '  "pedido"."vlr_bruto_esp" = (select "vlr_bruto_esp" from '
      '  "cby_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      '  "pedido"."vlr_liquido_esp" = (select "vlr_liquido_esp" from '
      '  "cby_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      '  "pedido"."vlr_adicional" = (select "vlr_adicional" from '
      '  "cby_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      
        '  "pedido"."vlr_adicional_esp" = (select "vlr_adicional_esp" fro' +
        'm '
      '  "cby_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      '  "pedido"."vlr_desconto" = (select "vlr_desconto" from '
      '  "cby_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      '  "pedido"."vlr_desconto_esp" = (select "vlr_desconto_esp" from '
      '  "cby_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      '  "pedido"."txt_pedido" = :"txt_pedido",'
      '  "pedido"."txt_confirmacao" = :"txt_confirmacao",'
      '  "pedido"."cod_banco_int" = :"cod_banco_int",'
      '  "pedido"."cod_banco" = :"cod_banco",'
      '  "pedido"."ies_pago" = :"ies_pago",'
      '  "pedido"."terms_payment" = :"terms_payment",'
      '  "pedido"."vlr_condicao" = :"vlr_condicao",'
      '  "pedido"."ies_pallets" = :"ies_pallets",'
      '  "pedido"."ies_base_comissao" = :"ies_base_comissao", '
      '  "pedido"."ies_insurance" = :"ies_insurance",'
      '  "pedido"."ies_idioma" = :"ies_idioma",'
      '  "pedido"."seq_filial" = :"seq_filial",'
      '  "pedido"."cod_fabricante" = :"cod_fabricante",'
      '  "pedido"."dat_vertratadm" = :"dat_vertratadm",'
      '  "pedido"."ies_li" = :"ies_li",'
      '  "pedido"."dat_verli" = :"dat_verli",'
      '  "pedido"."dat_embalagem" = :"dat_embalagem",'
      '   "pedido"."dat_ctn_marks" = :"dat_ctn_marks"'
      'where'
      '  "pedido"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido"."num_pedido" = :"OLD_num_pedido"')
    Left = 256
    Top = 40
    object qryPedidocod_empresa: TSmallintField
      DisplayLabel = 'Empresa'
      FieldName = 'cod_empresa'
      Origin = '"pedido"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qryPedidonum_pedido: TLargeintField
      DisplayLabel = 'Nr Pedido'
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidocod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Required = True
      Size = 12
    end
    object qryPedidocod_vendedor: TSmallintField
      FieldName = 'cod_vendedor'
      Origin = '"pedido"."cod_vendedor"'
      Required = True
      OnValidate = qryPedidocod_vendedorValidate
    end
    object qryPedidonum_lista: TSmallintField
      DisplayLabel = 'Lista'
      FieldName = 'num_lista'
      Origin = '"pedido"."num_lista"'
    end
    object qryPedidocod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"pedido"."cod_moeda"'
      Required = True
    end
    object qryPedidoies_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"pedido"."ies_situacao"'
      OnGetText = qryPedidoies_situacaoGetText
      Size = 1
    end
    object qryPedidoies_tip_pedido: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ies_tip_pedido'
      Origin = '"pedido"."ies_tip_pedido"'
      OnGetText = qryPedidoies_tip_pedidoGetText
      Size = 1
    end
    object qryPedidodat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
      OnChange = qryPedidodat_liberacaoChange
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryPedidodat_faturamento: TDateField
      FieldName = 'dat_faturamento'
      Origin = '"pedido"."dat_faturamento"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryPedidodat_emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dat_emissao'
      Origin = '"pedido"."dat_emissao"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryPedidodat_entrega: TDateField
      DisplayLabel = 'Entrega'
      FieldName = 'dat_entrega'
      Origin = '"pedido"."dat_entrega"'
      OnChange = qryPedidodat_entregaChange
    end
    object qryPedidodat_cadastro: TDateTimeField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"pedido"."dat_cadastro"'
    end
    object qryPedidologin: TIBStringField
      DisplayLabel = 'Login'
      FieldName = 'login'
      Origin = '"pedido"."login"'
      Visible = False
      Size = 18
    end
    object qryPedidolkpCodCliente: TIBStringField
      DisplayLabel = 'Nome'
      FieldKind = fkLookup
      FieldName = 'lkpCodCliente'
      LookupDataSet = cliente
      LookupKeyFields = 'cod_cliente'
      LookupResultField = 'cod_cliente'
      KeyFields = 'cod_cliente'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryPedidolkpNomVendedor: TIBStringField
      DisplayLabel = 'Nome'
      FieldKind = fkLookup
      FieldName = 'lkpNomVendedor'
      LookupDataSet = qryVendedor
      LookupKeyFields = 'cod_vendedor'
      LookupResultField = 'nom_vendedor'
      KeyFields = 'cod_vendedor'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryPedidolkpDenMoeda: TIBStringField
      FieldKind = fkLookup
      FieldName = 'lkpDenMoeda'
      LookupDataSet = qryMoeda
      LookupKeyFields = 'cod_moeda'
      LookupResultField = 'den_moeda'
      KeyFields = 'cod_moeda'
      LookupCache = True
      Size = 75
      Lookup = True
    end
    object qryPedidovlr_frete: TIBBCDField
      FieldName = 'vlr_frete'
      Origin = '"pedido"."vlr_frete"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidovlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"pedido"."vlr_bruto"'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidovlr_liquido: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_liquido'
      Origin = '"pedido"."vlr_liquido"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidovlr_bruto_esp: TIBBCDField
      FieldName = 'vlr_bruto_esp'
      Origin = '"pedido"."vlr_bruto_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidovlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidotxt_pedido: TMemoField
      FieldName = 'txt_pedido'
      Origin = '"pedido"."txt_pedido"'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidotxt_confirmacao: TMemoField
      FieldName = 'txt_confirmacao'
      Origin = '"pedido"."txt_confirmacao"'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidocod_banco: TIntegerField
      FieldName = 'cod_banco'
      Origin = '"pedido"."cod_banco"'
    end
    object qryPedidoies_pago: TIBStringField
      FieldName = 'ies_pago'
      Origin = '"pedido"."ies_pago"'
      FixedChar = True
      Size = 1
    end
    object qryPedidotxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"pedido"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidovlr_condicao: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vlr_condicao'
      Origin = '"pedido"."vlr_condicao"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidovlr_adicional: TIBBCDField
      FieldName = 'vlr_adicional'
      Origin = '"pedido"."vlr_adicional"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidovlr_desconto: TIBBCDField
      FieldName = 'vlr_desconto'
      Origin = '"pedido"."vlr_desconto"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidovlr_adicional_esp: TIBBCDField
      FieldName = 'vlr_adicional_esp'
      Origin = '"pedido"."vlr_adicional_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidovlr_desconto_esp: TIBBCDField
      FieldName = 'vlr_desconto_esp'
      Origin = '"pedido"."vlr_desconto_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"pedido"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object qryPedidoies_preco_esp: TIBStringField
      FieldName = 'ies_preco_esp'
      Origin = '"pedido"."ies_preco_esp"'
      FixedChar = True
      Size = 1
    end
    object qryPedidoies_comissao: TSmallintField
      FieldName = 'ies_comissao'
      Origin = '"pedido"."ies_comissao"'
    end
    object qryPedidoies_base_comissao: TIBStringField
      FieldName = 'ies_base_comissao'
      Origin = '"pedido"."ies_base_comissao"'
      FixedChar = True
      Size = 1
    end
    object qryPedidoies_insurance: TIBStringField
      FieldName = 'ies_insurance'
      Origin = '"pedido"."ies_insurance"'
      FixedChar = True
      Size = 1
    end
    object qryPedidoies_idioma: TIBStringField
      FieldName = 'ies_idioma'
      Origin = '"pedido"."ies_idioma"'
      FixedChar = True
      Size = 1
    end
    object qryPedidoterms_payment: TIBStringField
      FieldName = 'terms_payment'
      Origin = '"pedido"."terms_payment"'
      Size = 255
    end
    object qryPedidoseq_filial: TIntegerField
      FieldName = 'seq_filial'
      Origin = '"pedido"."seq_filial"'
    end
    object qryPedidocod_fabricante: TSmallintField
      FieldName = 'cod_fabricante'
      Origin = '"pedido"."cod_fabricante"'
    end
    object qryPedidolkpFabricante: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpFabricante'
      LookupDataSet = Fabricantes
      LookupKeyFields = 'cod_fabricante'
      LookupResultField = 'nome'
      KeyFields = 'cod_fabricante'
      Size = 50
      Lookup = True
    end
    object qryPedidodat_vertratadm: TDateField
      FieldName = 'dat_vertratadm'
      Origin = '"pedido"."dat_vertratadm"'
    end
    object qryPedidoies_li: TIBStringField
      FieldName = 'ies_li'
      Origin = '"pedido"."ies_li"'
      FixedChar = True
      Size = 1
    end
    object qryPedidodat_verli: TDateField
      FieldName = 'dat_verli'
      Origin = '"pedido"."dat_verli"'
    end
    object qryPedidodat_embalagem: TDateField
      FieldName = 'dat_embalagem'
      Origin = '"pedido"."dat_embalagem"'
    end
    object qryPedidodat_ctn_marks: TDateField
      FieldName = 'dat_ctn_marks'
      Origin = '"pedido"."dat_ctn_marks"'
    end
  end
  object cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterClose = clienteAfterClose
    AfterScroll = clienteAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a."cod_cliente", a."nom_cliente", a."mas_cod_produto", a.' +
        '"ncm_pedido", a."den_portosdest"'
      'from "cliente" a'
      'where'
      '   a."cod_cliente" = :cod_cliente')
    Left = 477
    Top = 265
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_cliente'
        ParamType = ptInput
      end>
    object clientecod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object clientenom_cliente: TIBStringField
      FieldName = 'nom_cliente'
      Origin = '"cliente"."nom_cliente"'
      Size = 50
    end
    object clientemas_cod_produto: TIBStringField
      FieldName = 'mas_cod_produto'
      Origin = '"cliente"."mas_cod_produto"'
    end
    object clientencm_pedido: TIBStringField
      FieldName = 'ncm_pedido'
      Origin = '"cliente"."ncm_pedido"'
      FixedChar = True
      Size = 1
    end
    object clienteden_portosdest: TIBStringField
      FieldName = 'den_portosdest'
      Origin = '"cliente"."den_portosdest"'
      Size = 100
    end
  end
  object qryVendedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_vendedor", "nom_vendedor", "cnpj", "ies_situacao"'
      'from "vendedor"')
    Left = 511
    Top = 265
    object qryVendedorcod_vendedor: TIntegerField
      FieldName = 'cod_vendedor'
      Origin = '"vendedor"."cod_vendedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendedornom_vendedor: TIBStringField
      FieldName = 'nom_vendedor'
      Origin = '"vendedor"."nom_vendedor"'
      Required = True
      Size = 50
    end
    object qryVendedorcnpj: TIBStringField
      FieldName = 'cnpj'
      Origin = '"vendedor"."cnpj"'
      Required = True
      OnGetText = qryVendedorcnpjGetText
      Size = 18
    end
    object qryVendedories_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"vendedor"."ies_situacao"'
      Size = 1
    end
  end
  object dtsPedido: TDataSource
    DataSet = qryPedido
    Left = 257
    Top = 78
  end
  object dstCliente: TDataSource
    DataSet = cliente
    Left = 477
    Top = 295
  end
  object dtsVendedor: TDataSource
    DataSet = qryVendedor
    Left = 511
    Top = 295
  end
  object qryPedidoProduto: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    ForcedRefresh = True
    AfterCancel = qryPedidoAfterCancel
    AfterClose = qryPedidoAfterClose
    AfterDelete = qryPedidoProdutoAfterDelete
    AfterOpen = qryPedidoProdutoAfterOpen
    AfterPost = qryPedidoProdutoAfterPost
    BeforeDelete = qryPedidoProdutoBeforeDelete
    BeforeInsert = qryPedidoProdutoBeforeInsert
    BeforeOpen = qryPedidoProdutoBeforeOpen
    BeforePost = qryPedidoProdutoBeforePost
    OnCalcFields = qryPedidoProdutoCalcFields
    OnDeleteError = qryPedidoDeleteError
    OnEditError = qryPedidoDeleteError
    OnNewRecord = qryPedidoProdutoNewRecord
    OnPostError = qryPedidoDeleteError
    OnUpdateError = qryPedidoUpdateError
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido_produto"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "pedido_produto"'
      '  ("pedido_produto"."cod_empresa",'
      '   "pedido_produto"."num_pedido",'
      '   "pedido_produto"."num_sequencia",'
      '   "pedido_produto"."cod_produto",'
      '   "pedido_produto"."qtd_produto",'
      '   "pedido_produto"."qtd_cancelada", '
      '   "pedido_produto"."qtd_romaneada",'
      '   "pedido_produto"."qtd_faturada",'
      '   "pedido_produto"."qtd_pendente", '
      '   "pedido_produto"."vlr_unitario",'
      '   "pedido_produto"."vlr_unitario_esp",'
      '   "pedido_produto"."dat_inspecao",'
      '   "pedido_produto"."texto",'
      '   "pedido_produto"."txt_observacao",'
      '   "pedido_produto"."dat_cadastro",'
      '   "pedido_produto"."vlr_liquido",'
      '   "pedido_produto"."vlr_liquido_esp",'
      '   "pedido_produto"."qtd_export_box",'
      '   "pedido_produto"."qtd_inner_box", '
      '   "pedido_produto"."vol_caixas",'
      '   "pedido_produto"."pes_liquido",'
      '   "pedido_produto"."pes_bruto",'
      '   "pedido_produto"."ies_emb_esp",'
      '   "pedido_produto"."un_cx_master",'
      '   "pedido_produto"."dat_preco",'
      '   "pedido_produto"."obs_preco",'
      '   "pedido_produto"."obs_preco_esp",'
      '   "pedido_produto"."pct_comissao_c",'
      '   "pedido_produto"."pct_comissao_f",'
      '   "pedido_produto"."ies_situacao",'
      '   "pedido_produto"."seq_pallet",'
      '   "pedido_produto"."qtd_pallet", '
      '   "pedido_produto"."pes_bruto_pallet",'
      '   "pedido_produto"."pes_liquido_pallet", '
      '   "pedido_produto"."comprimento_pallet",'
      '   "pedido_produto"."largura_pallet", '
      '   "pedido_produto"."altura_pallet",'
      '   "pedido_produto"."volume_pallet",'
      '   "pedido_produto"."seq_pkl",'
      '   "pedido_produto"."ies_erros",'
      '   "pedido_produto"."ies_colunas",'
      '   "pedido_produto"."pes_pallet_vazio",'
      '   "pedido_produto"."ies_caixa_fechada",'
      '   "pedido_produto"."dat_upd_etd",'
      '   "pedido_produto"."etd_factory",'
      '   "pedido_produto"."etd_obs_cli",'
      '   "pedido_produto"."etd_obs_for")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"num_sequencia", :"cod_produt' +
        'o", :"qtd_produto", '
      
        '   :"qtd_cancelada", :"qtd_romaneada", :"qtd_faturada", :"qtd_pe' +
        'ndente", '
      
        '   :"vlr_unitario", :"vlr_unitario_esp",  :"dat_inspecao", :"tex' +
        'to", :"txt_observacao", :"dat_cadastro",'
      
        '   :"vlr_liquido", :"vlr_liquido_esp",:"qtd_export_box", :"qtd_i' +
        'nner_box",'
      
        '   :"vol_caixas", :"pes_liquido", :"pes_bruto", :"ies_emb_esp", ' +
        ':"un_cx_master", :"dat_preco", :"obs_preco", :"obs_preco_esp",'
      
        '   :"pct_comissao_c", :"pct_comissao_f", :"ies_situacao", :"seq_' +
        'pallet", :"qtd_pallet", :"pes_bruto_pallet", :"pes_liquido_palle' +
        't", '
      
        '   :"comprimento_pallet", :"largura_pallet", :"altura_pallet", :' +
        '"volume_pallet", :"seq_pkl", :"ies_erros", :"ies_colunas", :"pes' +
        '_pallet_vazio", :"ies_caixa_fechada",'
      
        '   :"dat_upd_etd", :"etd_factory", :"etd_obs_cli", :"etd_obs_for' +
        '")')
    RefreshSQL.Strings = (
      'select a.*'
      '  from "pedido_produto" a'
      'where'
      '  a."cod_empresa"  = :cod_empresa'
      'and a."num_pedido" = :num_pedido'
      'and a."num_sequencia" = :num_sequencia'
      'order by'
      '  a."seq_pkl"')
    SelectSQL.Strings = (
      'select  a.*'
      '  from "pedido_produto" a'
      'where'
      '  a."cod_empresa"  = :cod_empresa'
      'and a."num_pedido" = :num_pedido'
      'order by'
      '  a."seq_pkl"')
    ModifySQL.Strings = (
      'update "pedido_produto"'
      'set'
      '  "pedido_produto"."cod_empresa" = :"cod_empresa",'
      '  "pedido_produto"."cod_produto" = :"cod_produto",'
      '  "pedido_produto"."dat_cadastro" = :"dat_cadastro",'
      '  "pedido_produto"."dat_inspecao" = :"dat_inspecao",'
      '  "pedido_produto"."num_pedido" = :"num_pedido",'
      '  "pedido_produto"."num_sequencia" = :"num_sequencia",'
      '  "pedido_produto"."qtd_cancelada" = :"qtd_cancelada",'
      '  "pedido_produto"."qtd_faturada" = :"qtd_faturada",'
      '  "pedido_produto"."qtd_produto" = :"qtd_produto",'
      '  "pedido_produto"."qtd_romaneada" = :"qtd_romaneada",'
      '  "pedido_produto"."texto" = :"texto",'
      '  "pedido_produto"."txt_observacao" = :"txt_observacao",'
      '  "pedido_produto"."vlr_unitario" = :"vlr_unitario",'
      '  "pedido_produto"."vlr_unitario_esp" = :"vlr_unitario_esp",'
      '  "pedido_produto"."qtd_pendente" = :"qtd_pendente",'
      '  "pedido_produto"."vlr_liquido" = :"vlr_liquido",'
      '  "pedido_produto"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "pedido_produto"."qtd_export_box" =  :"qtd_export_box",'
      '  "pedido_produto"."qtd_inner_box" =  :"qtd_inner_box",'
      '  "pedido_produto"."vol_caixas" =  :"vol_caixas",'
      '  "pedido_produto"."pes_liquido" =  :"pes_liquido",'
      '  "pedido_produto"."pes_bruto" =  :"pes_bruto",'
      '  "pedido_produto"."ies_emb_esp" = :"ies_emb_esp",'
      '  "pedido_produto"."seq_emb_esp" = :"seq_emb_esp",'
      '  "pedido_produto"."un_cx_master" = :"un_cx_master",'
      '  "pedido_produto"."dat_preco" = :"dat_preco",'
      '  "pedido_produto"."obs_preco" = :"obs_preco",'
      '  "pedido_produto"."obs_preco_esp" = :"obs_preco_esp",'
      '  "pedido_produto"."pct_comissao_c" = :"pct_comissao_c",'
      '  "pedido_produto"."pct_comissao_f" = :"pct_comissao_f",'
      '  "pedido_produto"."ies_situacao" = :"ies_situacao",'
      '  "pedido_produto"."seq_pkl" = :"seq_pkl",'
      '  "pedido_produto"."seq_pallet" = :"seq_pallet",'
      '  "pedido_produto"."qtd_pallet" = :"qtd_pallet",'
      '  "pedido_produto"."pes_bruto_pallet" = :"pes_bruto_pallet",'
      '  "pedido_produto"."pes_liquido_pallet" = :"pes_liquido_pallet",'
      '  "pedido_produto"."comprimento_pallet" = :"comprimento_pallet",'
      '  "pedido_produto"."largura_pallet" = :"largura_pallet",'
      '  "pedido_produto"."altura_pallet" = :"altura_pallet",'
      '  "pedido_produto"."volume_pallet" = :"volume_pallet",'
      '  "pedido_produto"."ies_erros" = :"ies_erros",'
      '  "pedido_produto"."ies_colunas" = :"ies_colunas",'
      '  "pedido_produto"."pes_pallet_vazio" = :"pes_pallet_vazio",'
      
        '  "pedido_produto"."ies_result_inspecao" = :"ies_result_inspecao' +
        '",'
      
        '  "pedido_produto"."txt_status_producao" = :"txt_status_producao' +
        '",'
      '  "pedido_produto"."ies_caixa_fechada" = :"ies_caixa_fechada",'
      '  "pedido_produto"."dat_upd_etd" = :"dat_upd_etd",'
      '  "pedido_produto"."etd_factory" = :"etd_factory",'
      '  "pedido_produto"."etd_obs_cli" = :"etd_obs_cli",'
      '  "pedido_produto"."etd_obs_for" = :"etc_obs_for"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"')
    OnFilterRecord = qryPedidoProdutoFilterRecord
    Left = 299
    Top = 40
    object qryPedidoProdutocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoProdutonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_produto"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoProdutonum_sequencia: TSmallintField
      DisplayLabel = 'Seq.'
      FieldName = 'num_sequencia'
      Origin = '"pedido_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoProdutocod_produto: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"pedido_produto"."cod_produto"'
      Required = True
      OnGetText = qryPedidoProdutocod_produtoGetText
      OnValidate = qryPedidoProdutocod_produtoValidate
      Size = 15
    end
    object qryPedidoProdutocalDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto'
      Size = 100
      Calculated = True
    end
    object qryPedidoProdutoqtd_produto: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd_produto'
      Origin = '"pedido_produto"."qtd_produto"'
      OnValidate = qryPedidoProdutoqtd_produtoValidate
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object qryPedidoProdutoqtd_cancelada: TIBBCDField
      DisplayLabel = 'Cancelada'
      FieldName = 'qtd_cancelada'
      Origin = '"pedido_produto"."qtd_cancelada"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object qryPedidoProdutoqtd_romaneada: TIBBCDField
      DisplayLabel = 'Romaneada'
      FieldName = 'qtd_romaneada'
      Origin = '"pedido_produto"."qtd_romaneada"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object qryPedidoProdutoqtd_faturada: TIBBCDField
      DisplayLabel = 'Faturada'
      FieldName = 'qtd_faturada'
      Origin = '"pedido_produto"."qtd_faturada"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object qryPedidoProdutoqtd_pendente: TIBBCDField
      DisplayLabel = 'Pendente'
      FieldName = 'qtd_pendente'
      Origin = '"pedido_produto"."qtd_pendente"'
      ReadOnly = True
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object qryPedidoProdutodat_cadastro: TDateTimeField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"pedido_produto"."dat_cadastro"'
    end
    object qryPedidoProdutoQtde_Romanear: TFloatField
      DisplayLabel = 'Qtde. romanear'
      FieldKind = fkCalculated
      FieldName = 'Qtde_Romanear'
      DisplayFormat = '#,##0.000'
      Calculated = True
    end
    object qryPedidoProdutovlr_unitario: TFloatField
      DisplayLabel = 'Pre'#231'o Real'
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
      OnValidate = qryPedidoProdutovlr_unitarioValidate
      DisplayFormat = '#,##0.000000'
    end
    object qryPedidoProdutovlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      Visible = False
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoProdutovlr_unitario_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'vlr_unitario_esp'
      Origin = '"pedido_produto"."vlr_unitario_esp"'
      OnValidate = qryPedidoProdutovlr_unitario_espValidate
      DisplayFormat = '#,##0.000000'
    end
    object qryPedidoProdutovlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Esp'
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido_produto"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoProdutoqtd_export_box: TIntegerField
      DisplayLabel = 'Master'
      FieldName = 'qtd_export_box'
      Origin = '"pedido_produto"."qtd_export_box"'
      DisplayFormat = '#,##0'
    end
    object qryPedidoProdutovol_caixas: TIBBCDField
      DisplayLabel = 'Vol.caixas'
      FieldName = 'vol_caixas'
      Origin = '"pedido_produto"."vol_caixas"'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object qryPedidoProdutopes_liquido: TIBBCDField
      DisplayLabel = 'Pes.l'#237'quido'
      FieldName = 'pes_liquido'
      Origin = '"pedido_produto"."pes_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoProdutopes_bruto: TIBBCDField
      DisplayLabel = 'Pes.bruto'
      FieldName = 'pes_bruto'
      Origin = '"pedido_produto"."pes_bruto"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object qryPedidoProdutodat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = '"pedido_produto"."dat_preco"'
    end
    object qryPedidoProdutoies_emb_esp: TIBStringField
      DisplayLabel = 'Emb Esp'
      FieldName = 'ies_emb_esp'
      Origin = '"pedido_produto"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object qryPedidoProdutocod_prod_fornec: TStringField
      FieldKind = fkLookup
      FieldName = 'cod_prod_fornec'
      LookupDataSet = qryProduto
      LookupKeyFields = 'cod_produto'
      LookupResultField = 'cod_prod_fornec'
      KeyFields = 'cod_produto'
      Size = 15
      Lookup = True
    end
    object qryPedidoProdutoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"pedido_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidoProdutopct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"pedido_produto"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object qryPedidoProdutopct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"pedido_produto"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
    object qryPedidoProdutotexto: TMemoField
      FieldName = 'texto'
      Origin = '"pedido_produto"."texto"'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidoProdutotxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"pedido_produto"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidoProdutoies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"pedido_produto"."ies_situacao"'
      FixedChar = True
      Size = 1
    end
    object qryPedidoProdutoobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"pedido_produto"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidoProdutoseq_emb_esp: TIntegerField
      DisplayLabel = '#EMB'
      FieldName = 'seq_emb_esp'
      Origin = '"pedido_produto"."seq_emb_esp"'
      Visible = False
    end
    object qryPedidoProdutoseq_pallet: TIntegerField
      DisplayLabel = '#PAL'
      FieldName = 'seq_pallet'
      Origin = '"pedido_produto"."seq_pallet"'
    end
    object qryPedidoProdutoqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = '"pedido_produto"."qtd_pallet"'
      Visible = False
    end
    object qryPedidoProdutopes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = '"pedido_produto"."pes_bruto_pallet"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object qryPedidoProdutopes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = '"pedido_produto"."pes_liquido_pallet"'
      Visible = False
      Precision = 18
      Size = 2
    end
    object qryPedidoProdutocomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = '"pedido_produto"."comprimento_pallet"'
      Visible = False
      Precision = 9
      Size = 4
    end
    object qryPedidoProdutolargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = '"pedido_produto"."largura_pallet"'
      Visible = False
      Precision = 9
      Size = 4
    end
    object qryPedidoProdutoaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = '"pedido_produto"."altura_pallet"'
      Visible = False
      Precision = 9
      Size = 4
    end
    object qryPedidoProdutovolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = '"pedido_produto"."volume_pallet"'
      Visible = False
      Precision = 18
      Size = 4
    end
    object qryPedidoProdutoseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = '"pedido_produto"."seq_pkl"'
    end
    object qryPedidoProdutoies_erros: TIBStringField
      FieldName = 'ies_erros'
      Origin = '"pedido_produto"."ies_erros"'
      FixedChar = True
      Size = 1
    end
    object qryPedidoProdutoies_colunas: TLargeintField
      FieldName = 'ies_colunas'
      Origin = '"pedido_produto"."ies_colunas"'
    end
    object qryPedidoProdutopes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"pedido_produto"."pes_pallet_vazio"'
    end
    object qryPedidoProdutodat_inspecao: TDateField
      DisplayLabel = 'Dat.Inspe'#231#227'o'
      FieldName = 'dat_inspecao'
      Origin = '"pedido_produto"."dat_inspecao"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryPedidoProdutotxt_status_producao: TMemoField
      FieldName = 'txt_status_producao'
      Origin = 'pedido_produto.txt_status_producao'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidoProdutoies_result_inspecao: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Result.Inspe'#231#227'o'
      FieldName = 'ies_result_inspecao'
      Origin = 'pedido_produto.ies_result_inspecao'
      FixedChar = True
      Size = 1
    end
    object qryPedidoProdutoies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = 'pedido_produto.ies_caixa_fechada'
      FixedChar = True
      Size = 1
    end
    object qryPedidoProdutoqtd_inner_box: TIBBCDField
      DisplayLabel = 'Inner'
      FieldName = 'qtd_inner_box'
      Origin = '"pedido_produto"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object qryPedidoProdutoun_cx_master: TIBBCDField
      DisplayLabel = 'UN/CX Master'
      FieldName = 'un_cx_master'
      Origin = '"pedido_produto"."un_cx_master"'
      Precision = 9
      Size = 4
    end
    object qryPedidoProdutodat_upd_etd: TDateField
      FieldName = 'dat_upd_etd'
      Origin = '"pedido_produto"."dat_upd_etd"'
    end
    object qryPedidoProdutoetd_factory: TDateField
      FieldName = 'etd_factory'
      Origin = '"pedido_produto"."etd_factory"'
    end
    object qryPedidoProdutoetd_obs_cli: TMemoField
      FieldName = 'etd_obs_cli'
      Origin = '"pedido_produto"."etd_obs_cli"'
      BlobType = ftMemo
      Size = 8
    end
    object qryPedidoProdutoetd_obs_for: TMemoField
      FieldName = 'etd_obs_for'
      Origin = '"pedido_produto"."etd_obs_for"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 503
    Top = 615
    object actExcelGerar: TAction
      Tag = 1
      Category = 'Planilha de Alteracao'
      Caption = 'Altera'#231#227'o'
      Hint = 'Gerar e Abrir a Planilha de Altera'#231#227'o do Pedido'
      ImageIndex = 235
      OnExecute = actExcelGerarExecute
    end
    object actExcelComissao: TAction
      Tag = 2
      Category = 'Planilha de Alteracao'
      Caption = 'Comiss'#245'es'
      Hint = 'Gerar e Abrir a Planilha para alterar as Comiss'#245'es no Pedido'
      ImageIndex = 235
      OnExecute = actExcelComissaoExecute
    end
    object actCancelarProduto: TAction
      Category = 'PedidoProduto'
      Caption = 'Cancelar Saldo Total Pendente'
      ImageIndex = 141
      OnExecute = actCancelarProdutoExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      ImageIndex = 16
      Visible = False
    end
    object actExcelImportar: TAction
      Category = 'Planilha de Alteracao'
      Caption = 'Importar'
      Hint = 
        'Importar a Planilha de Altera'#231#227'o do Pedido ou a'#13#10'Planilha para A' +
        'lterar as Comiss'#245'es no Pedido'
      ImageIndex = 235
      OnExecute = actExcelImportarExecute
    end
    object act_F5: TAction
      Caption = 'act_F5'
      ShortCut = 116
      OnExecute = act_F5Execute
    end
    object act_F6: TAction
      Caption = 'act_F6'
      ShortCut = 117
      OnExecute = act_F6Execute
    end
    object actExcelOrder: TAction
      Caption = 'Order / Proforma'
      ImageIndex = 235
      OnExecute = actExcelOrderExecute
    end
    object actHistPrecos: TAction
      Caption = 'Hist'#243'rico Pre'#231'os'
      ImageIndex = 235
      OnExecute = actHistPrecosExecute
    end
    object actShipMarks: TAction
      Caption = 'Ship Marks'
      ImageIndex = 235
      OnExecute = actShipMarksExecute
    end
    object actValidar: TAction
      Caption = 'Validar Embalagens'
      ImageIndex = 159
      OnExecute = actValidarExecute
    end
    object actExcelAbrir: TAction
      Caption = 'Abrir Docs'
      ImageIndex = 235
      OnExecute = actExcelAbrirExecute
    end
  end
  object dtsProduto: TDataSource
    DataSet = qryProduto
    Left = 373
    Top = 284
  end
  object qryProduto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      '  a."cod_produto",'
      '  a."ies_situacao",'
      '  a."ncm_cod",'
      '  c."cod_uni_medida",'
      '  c."den_uni_medida",'
      '  c."sigla",'
      '  a."cod_prod_fornec"'
      'from "produto" a'
      
        '     join "tipo_produto" b on b."cod_tip_produto" = a."cod_tip_p' +
        'roduto"'
      '     join "medida" c on c."cod_uni_medida" = a."cod_uni_medida"'
      'where'
      '      a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '')
    Left = 343
    Top = 281
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object qryProdutocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryProdutoies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"produto"."ies_situacao"'
      Size = 1
    end
    object qryProdutocod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"medida"."cod_uni_medida"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoden_uni_medida: TIBStringField
      FieldName = 'den_uni_medida'
      Origin = '"medida"."den_uni_medida"'
      Required = True
      Size = 75
    end
    object qryProdutosigla: TIBStringField
      FieldName = 'sigla'
      Origin = '"medida"."sigla"'
      Size = 3
    end
    object qryProdutocod_prod_fornec: TIBStringField
      FieldName = 'cod_prod_fornec'
      Origin = '"produto"."cod_prod_fornec"'
      Size = 15
    end
    object qryProdutoncm_cod: TIntegerField
      FieldName = 'ncm_cod'
      Origin = 'produto.ncm_cod'
    end
  end
  object dtsPedidoProduto: TDataSource
    DataSet = qryPedidoProduto
    Left = 299
    Top = 78
  end
  object cliente_endereco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select b."cod_unidade_federativa"'
      'from "cliente_endereco" a'
      '     join "cidade" b on b."cod_cidade" = a."cod_cidade"'
      'where'
      '    a."cod_cliente" = :cod_cliente')
    Left = 147
    Top = 417
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_cliente'
        ParamType = ptInput
      end>
    object cliente_enderecocod_unidade_federativa: TSmallintField
      FieldName = 'cod_unidade_federativa'
      Origin = '"cidade"."cod_unidade_federativa"'
      Required = True
    end
  end
  object cliente_contato: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a."cod_contato", a."nom_contato"'
      'from "cliente_contato" a'
      'where'
      '    a."cod_cliente" = :cod_cliente'
      'order by a."nom_contato"')
    Left = 177
    Top = 417
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_cliente'
        ParamType = ptInput
      end>
    object cliente_contatocod_contato: TSmallintField
      FieldName = 'cod_contato'
      Origin = '"cliente_contato"."cod_contato"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cliente_contatonom_contato: TIBStringField
      FieldName = 'nom_contato'
      Origin = '"cliente_contato"."nom_contato"'
      Required = True
      Size = 50
    end
  end
  object qryMoeda: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_moeda", "den_moeda"'
      'from "moeda"'
      'order by "den_moeda"')
    Left = 561
    Top = 353
    object qryMoedacod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"moeda"."cod_moeda"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMoedaden_moeda: TIBStringField
      FieldName = 'den_moeda'
      Origin = '"moeda"."den_moeda"'
      Required = True
      Size = 75
    end
  end
  object Fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BeforeOpen = FornecedorBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a."cod_fornecedor", a."raz_social_reduz", a."ies_idioma",' +
        ' a."cod_moeda"'
      '  from "fornecedor" a, "produto" b'
      '  where'
      '        b."cod_empresa" = :cod_empresa'
      '    and b."ies_situacao" = '#39'A'#39
      '    and b."cod_fornecedor" = a."cod_fornecedor"'
      'group by 1,2,3,4'
      'order by 2')
    Left = 530
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object Fornecedorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fornecedories_idioma: TIBStringField
      FieldName = 'ies_idioma'
      Origin = '"fornecedor"."ies_idioma"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Fornecedorcod_moeda: TSmallintField
      FieldName = 'cod_moeda'
    end
    object Fornecedorraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Required = True
      Size = 30
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 469
    Top = 181
  end
  object produtos_xls: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a."cod_produto", a."vlr_unitario",'
      '       MIN(a."num_sequencia") "num_sequencia",'
      '       SUM(a."qtd_produto") "qtd_produto",'
      '       MAX(c."sigla_i") "sigla_i",'
      '       MAX(c."sigla_vol_i") "sigla_vol_i",'
      '       SUM(a."vlr_liquido") "vlr_liquido",'
      '       SUM(a."vlr_liquido_esp") "vlr_liquido_esp",'
      '       MIN(a."un_cx_master") "un_cx_master",'
      '       SUM(a."qtd_export_box") "qtd_export_box",'
      '       MAX(a."pes_liquido") "pes_liquido",'
      '       MAX(a."pes_bruto") "pes_bruto"'
      'from "pedido_produto" a, "produto" b, "medida" c'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."cod_produto" = a."cod_produto"'
      '  and c."cod_uni_medida" = b."cod_uni_medida"'
      'group by 1,2'
      'order by 3')
    Left = 404
    Top = 213
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
  end
  object embalagem: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "cby_calc_embalagem"(:cod_empresa, :cod_produto, :' +
        'qtd_produto);')
    Left = 260
    Top = 333
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd_produto'
        ParamType = ptUnknown
      end>
    object embalagemvol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"cby_calc_embalagem"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object embalagemqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"cby_calc_embalagem"."qtd_export_box"'
    end
    object embalagemqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"cby_calc_embalagem"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object embalagemqtd_master_box: TIBBCDField
      FieldName = 'qtd_master_box'
      Origin = '"cby_calc_embalagem"."qtd_master_box"'
      Precision = 9
      Size = 4
    end
    object embalagempes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"cby_calc_embalagem"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object embalagempes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"cby_calc_embalagem"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object embalagempes_bruto_caixa: TIBBCDField
      FieldName = 'pes_bruto_caixa'
      Origin = '"cby_calc_embalagem"."pes_bruto_caixa"'
      Precision = 18
      Size = 2
    end
    object embalagempes_unit_prod: TFloatField
      FieldName = 'pes_unit_prod'
      Origin = '"cby_calc_embalagem"."pes_unit_prod"'
    end
    object embalagempes_unit_caixa: TFloatField
      FieldName = 'pes_unit_caixa'
      Origin = '"cby_calc_embalagem"."pes_unit_caixa"'
    end
    object embalagemcaixa_fechada: TIBStringField
      FieldName = 'caixa_fechada'
      Origin = '"cby_calc_embalagem"."caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object embalagemaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"cby_calc_embalagem"."altura"'
      Precision = 9
      Size = 2
    end
    object embalagemlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"cby_calc_embalagem"."largura"'
      Precision = 9
      Size = 2
    end
    object embalagemcomprimento: TIBBCDField
      FieldName = 'comprimento'
      Origin = '"cby_calc_embalagem"."comprimento"'
      Precision = 9
      Size = 2
    end
    object embalagemvol_master_box: TIBBCDField
      FieldName = 'vol_master_box'
      Origin = '"cby_calc_embalagem"."vol_master_box"'
      Precision = 18
      Size = 4
    end
    object embalagemobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"cby_calc_embalagem"."observacao"'
      Size = 255
    end
    object embalagemdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"cby_calc_embalagem"."dat_cadastro"'
    end
    object embalagemdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"cby_calc_embalagem"."dat_cad_dimensoes"'
    end
    object embalagemdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"cby_calc_embalagem"."dat_cad_peso"'
    end
    object embalagemdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"cby_calc_embalagem"."dat_cad_master"'
    end
    object embalagemdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"cby_calc_embalagem"."dat_cad_inner"'
    end
    object embalagemobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"cby_calc_embalagem"."obs_caixas"'
      Size = 255
    end
  end
  object ExcelWorkBook: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 436
    Top = 181
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 405
    Top = 181
  end
  object Exportador: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_fornecedor", "raz_social", "raz_social_reduz",'
      '       "pais_origem", "pais_aquisicao", "pais_procedencia",'
      '       "endereco"'
      'from "fornecedor"'
      'where "cod_fornecedor" = :cod_fornecedor')
    Left = 532
    Top = 389
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_fornecedor'
        ParamType = ptInput
        Value = 0
      end>
    object Exportadorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Exportadorraz_social: TIBStringField
      FieldName = 'raz_social'
      Origin = '"fornecedor"."raz_social"'
      Size = 100
    end
    object Exportadorraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object Exportadorpais_origem: TIBStringField
      FieldName = 'pais_origem'
      Origin = '"fornecedor"."pais_origem"'
      Size = 50
    end
    object Exportadorpais_aquisicao: TIBStringField
      FieldName = 'pais_aquisicao'
      Origin = '"fornecedor"."pais_aquisicao"'
      Size = 50
    end
    object Exportadorpais_procedencia: TIBStringField
      FieldName = 'pais_procedencia'
      Origin = '"fornecedor"."pais_procedencia"'
      Size = 50
    end
    object Exportadorendereco: TMemoField
      FieldName = 'endereco'
      Origin = '"fornecedor"."endereco"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object Importador: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "nom_cliente", "endereco", "idioma_shipmarks"'
      'from "cliente"'
      'where "cod_cliente" = :cod_cliente')
    Left = 564
    Top = 389
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_cliente'
        ParamType = ptInput
        Value = ''
      end>
    object Importadornom_cliente: TIBStringField
      FieldName = 'nom_cliente'
      Origin = '"cliente"."nom_cliente"'
      Size = 50
    end
    object Importadoridioma_shipmarks: TIBStringField
      FieldName = 'idioma_shipmarks'
      Origin = '"cliente"."idioma_shipmarks"'
      FixedChar = True
      Size = 1
    end
    object Importadorendereco: TMemoField
      FieldName = 'endereco'
      Origin = '"cliente"."endereco"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object grupo_produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a."den_gru_produto", a."den_gru_produto_ing"'
      'from "grupo_produto" a'
      'where'
      '  exists (select * from "pedido_produto" b'
      '           where b."cod_empresa" = :cod_empresa'
      '             and b."num_pedido"  = :num_pedido'
      '             and exists (select * from "produto" c'
      
        '                          where c."cod_empresa" = b."cod_empresa' +
        '"'
      
        '                            and c."cod_produto" = b."cod_produto' +
        '"'
      
        '                            and exists (select * from "tipo_prod' +
        'uto" d'
      
        '                                         where d."cod_tip_produt' +
        'o" = c."cod_tip_produto"'
      
        '                                           and d."cod_gru_produt' +
        'o" = a."cod_gru_produto")))'
      ''
      'group by 1,2'
      'order by 1,2')
    Left = 436
    Top = 213
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
    object grupo_produtoden_gru_produto: TIBStringField
      FieldName = 'den_gru_produto'
      Size = 75
    end
    object grupo_produtoden_gru_produto_ing: TIBStringField
      FieldName = 'den_gru_produto_ing'
      Size = 75
    end
  end
  object pedido_complemento: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterCancel = pedido_complementoAfterCancel
    AfterClose = pedido_complementoAfterClose
    AfterDelete = pedido_complementoAfterDelete
    AfterOpen = pedido_complementoAfterOpen
    AfterPost = pedido_complementoAfterPost
    BeforeOpen = pedido_complementoBeforeOpen
    OnNewRecord = pedido_complementoNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from "pedido_complemento"'
      'where'
      '  "pedido_complemento"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_complemento"."num_pedido" = :"OLD_num_pedido"')
    InsertSQL.Strings = (
      'insert into "pedido_complemento"'
      
        '  ("pedido_complemento"."cod_empresa", "pedido_complemento"."num' +
        '_pedido", '
      '   "pedido_complemento"."num_pedido_cli", '
      '"pedido_complemento"."num_pedido_for", '
      '   "pedido_complemento"."cod_container", '
      '  "pedido_complemento"."num_container",'
      '   "pedido_complemento"."cod_fornecedor", '
      
        '   "pedido_complemento"."cod_porto_emb", "pedido_complemento"."c' +
        'od_porto_des", '
      '   "pedido_complemento"."cod_cond_venda",'
      '   "pedido_complemento"."banco_intermed",'
      '   "pedido_complemento"."swift")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"num_pedido_cli", :"num_pedid' +
        'o_for", '
      
        '   :"cod_container", :"num_container", :"cod_fornecedor", :"cod_' +
        'porto_emb", '
      
        ':"cod_porto_des", :"cod_cond_venda", :"banco_intermed", :"swift"' +
        ')')
    RefreshSQL.Strings = (
      'select *'
      'from "pedido_complemento" '
      'where'
      '  "pedido_complemento"."cod_empresa" = :"cod_empresa" and'
      '  "pedido_complemento"."num_pedido" = :"num_pedido"')
    SelectSQL.Strings = (
      'select * from "pedido_complemento"'
      'where'
      '        "cod_empresa" = :cod_empresa'
      'and  "num_pedido"  = :num_pedido'
      '')
    ModifySQL.Strings = (
      'update "pedido_complemento"'
      'set'
      '  "pedido_complemento"."cod_empresa" = :"cod_empresa",'
      '  "pedido_complemento"."num_pedido" = :"num_pedido",'
      '  "pedido_complemento"."num_pedido_cli" = :"num_pedido_cli",'
      '  "pedido_complemento"."num_pedido_for" = :"num_pedido_for",'
      '  "pedido_complemento"."cod_container" = :"cod_container",'
      '  "pedido_complemento"."num_container" = :"num_container",'
      '  "pedido_complemento"."cod_fornecedor" = :"cod_fornecedor",'
      '  "pedido_complemento"."cod_porto_emb" = :"cod_porto_emb",'
      '  "pedido_complemento"."cod_porto_des" = :"cod_porto_des",'
      '  "pedido_complemento"."cod_cond_venda" = :"cod_cond_venda",'
      '  "pedido_complemento"."banco_intermed" = :"banco_intermed",'
      '  "pedido_complemento"."swift" = :"swift",'
      '  "pedido_complemento"."vol_total"  = (select "vol_caixas"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      '  "pedido_complemento"."qtd_caixas" = (select "qtd_caixas"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      '  "pedido_complemento"."pes_liquido" = (select "pes_liquido"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      '  "pedido_complemento"."pes_bruto" = (select "pes_bruto"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      '  "pedido_complemento"."vol_pallets"  = (select "vol_pallets"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      '  "pedido_complemento"."qtd_pallets" = (select "qtd_pallets"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      
        '  "pedido_complemento"."pes_liq_pallets" = (select "pes_liq_pall' +
        'ets"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      
        '  "pedido_complemento"."pes_bruto_pallets" = (select "pes_bruto_' +
        'pallets"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      '  "pedido_complemento"."vol_geral"  = (select "vol_geral"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      
        '  "pedido_complemento"."cxs_outpallet"  = (select "cxs_outpallet' +
        '"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      
        '  "pedido_complemento"."pes_liq_geral"  = (select "pes_liq_geral' +
        '"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido")),'
      
        '  "pedido_complemento"."pes_bru_geral"  = (select "pes_bru_geral' +
        '"'
      
        '                                 from "cby_pedido_complemento"("' +
        'pedido_complemento"."cod_empresa", "pedido_complemento"."num_ped' +
        'ido"))'
      'where'
      '  "pedido_complemento"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_complemento"."num_pedido" = :"OLD_num_pedido"'
      ''
      '')
    Left = 344
    Top = 40
    object pedido_complementocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_complemento"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_complementonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_complemento"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_complementonum_pedido_cli: TIBStringField
      DisplayLabel = 'N'#176' Pedido Cliente'
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      OnChange = pedido_complementonum_pedido_cliChange
      OnValidate = pedido_complementonum_pedido_cliValidate
      FixedChar = True
      Size = 15
    end
    object pedido_complementonum_pedido_for: TIBStringField
      DisplayLabel = 'N'#176' Confirma'#231#227'o Ped.'
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      OnChange = pedido_complementonum_pedido_forChange
      OnValidate = pedido_complementonum_pedido_forValidate
      FixedChar = True
      Size = 15
    end
    object pedido_complementocod_container: TIntegerField
      FieldName = 'cod_container'
      Origin = '"pedido_complemento"."cod_container"'
    end
    object pedido_complementocod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = '"pedido_complemento"."cod_fornecedor"'
    end
    object pedido_complementocod_porto_emb: TIntegerField
      FieldName = 'cod_porto_emb'
      Origin = '"pedido_complemento"."cod_porto_emb"'
    end
    object pedido_complementocod_porto_des: TIntegerField
      FieldName = 'cod_porto_des'
      Origin = '"pedido_complemento"."cod_porto_des"'
    end
    object pedido_complementolkpFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpFornecedor'
      LookupDataSet = Fornecedor
      LookupKeyFields = 'cod_fornecedor'
      LookupResultField = 'raz_social_reduz'
      KeyFields = 'cod_fornecedor'
      Size = 50
      Lookup = True
    end
    object pedido_complementolkpPortoEmb: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpPortoEmb'
      LookupDataSet = portos_embarque
      LookupKeyFields = 'cod_porto'
      LookupResultField = 'den_porto'
      KeyFields = 'cod_porto_emb'
      Size = 50
      Lookup = True
    end
    object pedido_complementolkpPortoDes: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpPortoDes'
      LookupDataSet = portos_desembarque
      LookupKeyFields = 'cod_porto'
      LookupResultField = 'den_porto'
      KeyFields = 'cod_porto_des'
      Size = 50
      Lookup = True
    end
    object pedido_complementocod_cond_venda: TIntegerField
      FieldName = 'cod_cond_venda'
      Origin = '"pedido_complemento"."cod_cond_venda"'
    end
    object pedido_complementolkcCondicaoVenda: TStringField
      DisplayLabel = 'Condi'#231#227'o de Venda'
      FieldKind = fkLookup
      FieldName = 'lkcCondicaoVenda'
      LookupDataSet = condicao_venda
      LookupKeyFields = 'cod_tip_condicao'
      LookupResultField = 'den_tip_condicao'
      KeyFields = 'cod_cond_venda'
      Size = 50
      Lookup = True
    end
    object pedido_complementovol_total: TIBBCDField
      DisplayLabel = 'Vol.Total'
      FieldName = 'vol_total'
      Origin = '"pedido_complemento"."vol_total"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object pedido_complementoqtd_caixas: TIntegerField
      DisplayLabel = 'Qtd.Caixas'
      FieldName = 'qtd_caixas'
      Origin = '"pedido_complemento"."qtd_caixas"'
      DisplayFormat = '#,##0'
    end
    object pedido_complementopes_liquido: TIBBCDField
      DisplayLabel = 'Pes.liquido'
      FieldName = 'pes_liquido'
      Origin = '"pedido_complemento"."pes_liquido"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object pedido_complementopes_bruto: TIBBCDField
      DisplayLabel = 'Pes.bruto'
      FieldName = 'pes_bruto'
      Origin = '"pedido_complemento"."pes_bruto"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object pedido_complementonum_container: TIntegerField
      FieldName = 'num_container'
      Origin = '"pedido_complemento"."num_container"'
    end
    object pedido_complementonum_ref_volume: TIBStringField
      FieldName = 'num_ref_volume'
      Origin = '"pedido_complemento"."num_ref_volume"'
      FixedChar = True
      Size = 15
    end
    object pedido_complementoswift: TIBStringField
      FieldName = 'swift'
      Origin = '"pedido_complemento"."swift"'
      Size = 30
    end
    object pedido_complementobanco_intermed: TIBStringField
      FieldName = 'banco_intermed'
      Origin = '"pedido_complemento"."banco_intermed"'
      Size = 255
    end
    object pedido_complementoqtd_pallets: TIntegerField
      DisplayLabel = 'Volumes'
      FieldName = 'qtd_pallets'
      Origin = 'pedido_complemento.qtd_pallets'
      DisplayFormat = '#,##0'
    end
    object pedido_complementovol_pallets: TIBBCDField
      DisplayLabel = 'Volume(m'#179')'
      FieldName = 'vol_pallets'
      Origin = 'pedido_complemento.vol_pallets'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object pedido_complementopes_liq_pallets: TIBBCDField
      DisplayLabel = 'Pes L'#237'q(Kg)'
      FieldName = 'pes_liq_pallets'
      Origin = 'pedido_complemento.pes_liq_pallets'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object pedido_complementopes_bruto_pallets: TIBBCDField
      DisplayLabel = 'Pes Bruto(Kg)'
      FieldName = 'pes_bruto_pallets'
      Origin = 'pedido_complemento.pes_bruto_pallets'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object pedido_complementovol_geral: TIBBCDField
      FieldName = 'vol_geral'
      Origin = '"pedido_complemento"."vol_geral"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object pedido_complementocxs_outpallet: TIntegerField
      FieldName = 'cxs_outpallet'
      Origin = '"pedido_complemento"."cxs_outpallet"'
    end
    object pedido_complementopes_liq_geral: TIBBCDField
      FieldName = 'pes_liq_geral'
      Origin = '"pedido_complemento"."pes_liq_geral"'
      Precision = 18
      Size = 2
    end
    object pedido_complementopes_bru_geral: TIBBCDField
      FieldName = 'pes_bru_geral'
      Origin = '"pedido_complemento"."pes_bru_geral"'
      Precision = 18
      Size = 2
    end
  end
  object dtspedido_complemento: TDataSource
    DataSet = pedido_complemento
    OnStateChange = dtspedido_complementoStateChange
    Left = 351
    Top = 80
  end
  object portos_embarque: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "portos"'
      'where "ies_tipo" = '#39'E'#39
      'order by "den_porto"')
    Left = 148
    Top = 349
    object portos_embarquecod_porto: TIntegerField
      FieldName = 'cod_porto'
      Origin = '"portos"."cod_porto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object portos_embarqueden_porto: TIBStringField
      FieldName = 'den_porto'
      Origin = '"portos"."den_porto"'
      Size = 50
    end
    object portos_embarqueies_tipo: TIBStringField
      FieldName = 'ies_tipo'
      Origin = '"portos"."ies_tipo"'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object portos_desembarque: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "portos"'
      'where "ies_tipo" = '#39'D'#39
      'order by "den_porto"')
    Left = 188
    Top = 349
    object portos_desembarquecod_porto: TIntegerField
      FieldName = 'cod_porto'
      Origin = '"portos"."cod_porto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object portos_desembarqueden_porto: TIBStringField
      FieldName = 'den_porto'
      Origin = '"portos"."den_porto"'
      Size = 50
    end
    object portos_desembarqueies_tipo: TIBStringField
      FieldName = 'ies_tipo'
      Origin = '"portos"."ies_tipo"'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object condicao_venda: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "condicao_venda"')
    Left = 500
    Top = 37
    object condicao_vendacod_tip_condicao: TSmallintField
      FieldName = 'cod_tip_condicao'
      Origin = '"condicao_venda"."cod_tip_condicao"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object condicao_vendaden_tip_condicao: TIBStringField
      FieldName = 'den_tip_condicao'
      Origin = '"condicao_venda"."den_tip_condicao"'
      Size = 40
    end
    object condicao_vendaies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"condicao_venda"."ies_situacao"'
      Size = 1
    end
  end
  object ProxSequencia: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select MAX(a."num_sequencia") + 1 "prox_sequencia"'
      'from "pedido_produto" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido')
    Left = 542
    Top = 39
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
  object pedido_container: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = pedido_containerAfterDelete
    AfterPost = pedido_containerAfterPost
    OnNewRecord = pedido_containerNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido_container"'
      'where'
      '  "pedido_container"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_container"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_container"."cod_container" = :"OLD_cod_container"')
    InsertSQL.Strings = (
      'insert into "pedido_container"'
      
        '  ("pedido_container"."cod_empresa", "pedido_container"."num_ped' +
        'ido", "pedido_container"."cod_container", '
      
        '   "pedido_container"."qtd_container", "pedido_container"."area_' +
        'total", '
      '   "pedido_container"."peso_total")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"cod_container", :"qtd_contai' +
        'ner", :"area_total", '
      '   :"peso_total")')
    RefreshSQL.Strings = (
      'Select '
      '  "pedido_container"."cod_empresa",'
      '  "pedido_container"."num_pedido",'
      '  "pedido_container"."cod_container",'
      '  "pedido_container"."qtd_container",'
      '  "pedido_container"."area_total",'
      '  "pedido_container"."peso_total"'
      'from "pedido_container" '
      'where'
      '  "pedido_container"."cod_empresa" = :"cod_empresa" and'
      '  "pedido_container"."num_pedido" = :"num_pedido" and'
      '  "pedido_container"."cod_container" = :"cod_container"')
    SelectSQL.Strings = (
      'select * from "pedido_container"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido')
    ModifySQL.Strings = (
      'update "pedido_container"'
      'set'
      '  "pedido_container"."cod_empresa" = :"cod_empresa",'
      '  "pedido_container"."num_pedido" = :"num_pedido",'
      '  "pedido_container"."cod_container" = :"cod_container",'
      '  "pedido_container"."qtd_container" = :"qtd_container",'
      '  "pedido_container"."area_total" = :"area_total",'
      '  "pedido_container"."peso_total" = :"peso_total"'
      'where'
      '  "pedido_container"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_container"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_container"."cod_container" = :"OLD_cod_container"')
    Left = 28
    Top = 188
    object pedido_containerlkpDenContainer: TStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'lkpDenContainer'
      LookupDataSet = Containers
      LookupKeyFields = 'cod_container'
      LookupResultField = 'den_container'
      KeyFields = 'cod_container'
      Size = 50
      Lookup = True
    end
    object pedido_containerqtd_container: TSmallintField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 8
      FieldName = 'qtd_container'
      Origin = '"romaneio_container"."qtd_container"'
      OnValidate = pedido_containerqtd_containerValidate
      DisplayFormat = '##0'
    end
    object pedido_containerarea_total: TIBBCDField
      DisplayLabel = #193'rea '#250'til'
      DisplayWidth = 12
      FieldName = 'area_total'
      Origin = '"romaneio_container"."area_total"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 9
      Size = 4
    end
    object pedido_containerpeso_total: TIBBCDField
      DisplayLabel = 'Peso m'#225'ximo'
      DisplayWidth = 12
      FieldName = 'peso_total'
      Origin = '"romaneio_container"."peso_total"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 9
      Size = 4
    end
    object pedido_containercod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"romaneio_container"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object pedido_containercod_container: TIntegerField
      FieldName = 'cod_container'
      Origin = '"romaneio_container"."cod_container"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      OnValidate = pedido_containercod_containerValidate
    end
    object pedido_containernum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_container"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_containerlkTipoContainer: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoContainer'
      LookupDataSet = Containers
      LookupKeyFields = 'cod_container'
      LookupResultField = 'tip_container'
      KeyFields = 'cod_container'
      Size = 15
      Lookup = True
    end
  end
  object ds_pedido_container: TDataSource
    DataSet = pedido_container
    Left = 59
    Top = 188
  end
  object Containers: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "containers"')
    Left = 93
    Top = 188
    object Containerscod_container: TIntegerField
      FieldName = 'cod_container'
      Origin = '"containers"."cod_container"'
    end
    object Containersden_container: TIBStringField
      FieldName = 'den_container'
      Origin = '"containers"."den_container"'
      Size = 50
    end
    object Containerscomprimento: TIBBCDField
      FieldName = 'comprimento'
      Origin = '"containers"."comprimento"'
      Precision = 9
      Size = 4
    end
    object Containerslargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"containers"."largura"'
      Precision = 9
      Size = 4
    end
    object Containersaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"containers"."altura"'
      Precision = 9
      Size = 4
    end
    object Containersarea_disp: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'area_disp'
      Origin = '"containers"."area_disp"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 9
      Size = 4
    end
    object Containersarea_util: TIBBCDField
      FieldName = 'area_util'
      Origin = '"containers"."area_util"'
      Precision = 9
      Size = 4
    end
    object Containerspeso_maximo: TIBBCDField
      FieldName = 'peso_maximo'
      Origin = '"containers"."peso_maximo"'
      Precision = 9
      Size = 4
    end
    object Containerstip_container: TIBStringField
      FieldName = 'tip_container'
      Origin = '"containers"."tip_container"'
      FixedChar = True
      Size = 15
    end
  end
  object dsBanco: TDataSource
    DataSet = Banco
    Left = 84
    Top = 370
  end
  object Banco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BeforeOpen = BancoBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_banco", "nom_banco", "txt_descricao"'
      'from "banco"'
      'where "cod_fornecedor" = :cod_fornecedor'
      'order by "nom_banco"')
    Left = 84
    Top = 339
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object Bancocod_banco: TSmallintField
      FieldName = 'cod_banco'
      Origin = '"banco"."cod_banco"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Banconom_banco: TIBStringField
      FieldName = 'nom_banco'
      Origin = '"banco"."nom_banco"'
      Size = 255
    end
    object Bancotxt_descricao: TMemoField
      FieldName = 'txt_descricao'
      Origin = '"banco"."txt_descricao"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object del_pedido_produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from "pedido_produto"'
      'where'
      '  "cod_empresa" = :"cod_empresa" and'
      '  "num_pedido" = :"num_pedido"')
    Left = 448
    Top = 40
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
  end
  object emb_especial_ped: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = emb_especial_pedAfterDelete
    AfterPost = emb_especial_pedAfterPost
    AfterScroll = emb_especial_pedAfterScroll
    BeforeDelete = emb_especial_pedBeforeDelete
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "emb_especial_ped"'
      'where'
      '  "emb_especial_ped"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "emb_especial_ped"."num_pedido" = :"OLD_num_pedido" and'
      '  "emb_especial_ped"."seq" = :"OLD_seq"')
    InsertSQL.Strings = (
      'insert into "emb_especial_ped"'
      
        '  ("emb_especial_ped"."cod_empresa", "emb_especial_ped"."num_ped' +
        'ido", "emb_especial_ped"."seq", '
      
        '   "emb_especial_ped"."den_embalagem", "emb_especial_ped"."qtd_t' +
        'otal", '
      
        '   "emb_especial_ped"."vol_total", "emb_especial_ped"."pes_bruto' +
        '", "emb_especial_ped"."pes_liquido", '
      
        '   "emb_especial_ped"."qtd_caixas", "emb_especial_ped"."qtd_prod' +
        'uto", "emb_especial_ped"."pes_unitario", '
      
        '   "emb_especial_ped"."altura", "emb_especial_ped"."largura", "e' +
        'mb_especial_ped"."profundidade", '
      
        '   "emb_especial_ped"."pes_bruto_cx", "emb_especial_ped"."mescla' +
        'r")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"seq", :"den_embalagem", :"qt' +
        'd_total", '
      
        '   :"vol_total", :"pes_bruto", :"pes_liquido", :"qtd_caixas", :"' +
        'qtd_produto", '
      
        '   :"pes_unitario", :"altura", :"largura", :"profundidade", :"pe' +
        's_bruto_cx", :"mesclar")')
    RefreshSQL.Strings = (
      'Select *'
      'from "emb_especial_ped" '
      'where'
      '  "emb_especial_ped"."cod_empresa" = :"cod_empresa" and'
      '  "emb_especial_ped"."num_pedido" = :"num_pedido" and'
      '  "emb_especial_ped"."seq" = :"seq"')
    SelectSQL.Strings = (
      'select * from "emb_especial_ped"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      '')
    ModifySQL.Strings = (
      'update "emb_especial_ped"'
      'set'
      '  "emb_especial_ped"."cod_empresa" = :"cod_empresa",'
      '  "emb_especial_ped"."num_pedido" = :"num_pedido",'
      '  "emb_especial_ped"."seq" = :"seq",'
      '  "emb_especial_ped"."den_embalagem" = :"den_embalagem",'
      '  "emb_especial_ped"."qtd_total" = :"qtd_total",'
      '  "emb_especial_ped"."vol_total" = :"vol_total",'
      '  "emb_especial_ped"."pes_bruto" = :"pes_bruto",'
      '  "emb_especial_ped"."pes_liquido" = :"pes_liquido",'
      '  "emb_especial_ped"."qtd_caixas" = :"qtd_caixas",'
      '  "emb_especial_ped"."qtd_produto" = :"qtd_produto",'
      '  "emb_especial_ped"."pes_unitario" = :"pes_unitario",'
      '  "emb_especial_ped"."altura" = :"altura",'
      '  "emb_especial_ped"."largura" = :"largura",'
      '  "emb_especial_ped"."profundidade" = :"profundidade",'
      '  "emb_especial_ped"."pes_bruto_cx" = :"pes_bruto_cx",'
      '  "emb_especial_ped"."mesclar" = :"mesclar"'
      'where'
      '  "emb_especial_ped"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "emb_especial_ped"."num_pedido" = :"OLD_num_pedido" and'
      '  "emb_especial_ped"."seq" = :"OLD_seq"')
    Left = 564
    Top = 509
    object emb_especial_pedcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"emb_especial_ped"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_pednum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"emb_especial_ped"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_pedseq: TIntegerField
      FieldName = 'seq'
      Origin = '"emb_especial_ped"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_pedden_embalagem: TIBStringField
      FieldName = 'den_embalagem'
      Origin = '"emb_especial_ped"."den_embalagem"'
      Size = 75
    end
    object emb_especial_pedqtd_total: TIBBCDField
      FieldName = 'qtd_total'
      Origin = '"emb_especial_ped"."qtd_total"'
      DisplayFormat = '#,###0.00'
      Precision = 18
      Size = 3
    end
    object emb_especial_pedvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"emb_especial_ped"."vol_total"'
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 3
    end
    object emb_especial_pedpes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"emb_especial_ped"."pes_bruto"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object emb_especial_pedpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_ped"."pes_liquido"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object emb_especial_pedqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"emb_especial_ped"."qtd_caixas"'
      DisplayFormat = '#,##0'
    end
    object emb_especial_pedqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_ped"."qtd_produto"'
      DisplayFormat = '#,###0.00'
      Precision = 18
      Size = 3
    end
    object emb_especial_pedpes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"emb_especial_ped"."pes_unitario"'
      DisplayFormat = '##,##0.00'
    end
    object emb_especial_pedaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"emb_especial_ped"."altura"'
      DisplayFormat = '#,#0.00'
      Precision = 9
      Size = 4
    end
    object emb_especial_pedlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"emb_especial_ped"."largura"'
      DisplayFormat = '#,#0.00'
      Precision = 9
      Size = 4
    end
    object emb_especial_pedprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"emb_especial_ped"."profundidade"'
      DisplayFormat = '#,#0.00'
      Precision = 9
      Size = 4
    end
    object emb_especial_pedpes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = 'emb_especial_ped.pes_bruto_cx'
    end
    object emb_especial_pedmesclar: TIBStringField
      FieldName = 'mesclar'
      Origin = '"emb_especial_ped"."mesclar"'
      FixedChar = True
      Size = 1
    end
  end
  object emb_especial_item_ped: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = emb_especial_item_pedAfterDelete
    AfterPost = emb_especial_item_pedAfterPost
    OnCalcFields = emb_especial_item_pedCalcFields
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "emb_especial_item_ped"'
      'where'
      '  "emb_especial_item_ped"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "emb_especial_item_ped"."num_pedido" = :"OLD_num_pedido" and'
      '  "emb_especial_item_ped"."seq" = :"OLD_seq" and'
      '  "emb_especial_item_ped"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "emb_especial_item_ped"'
      
        '  ("emb_especial_item_ped"."cod_empresa", "emb_especial_item_ped' +
        '"."num_pedido", '
      
        '   "emb_especial_item_ped"."seq", "emb_especial_item_ped"."num_s' +
        'equencia", '
      
        '   "emb_especial_item_ped"."cod_produto", "emb_especial_item_ped' +
        '"."qtd_produto", '
      '   "emb_especial_item_ped"."pes_liquido")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"seq", :"num_sequencia", :"co' +
        'd_produto", '
      '   :"qtd_produto", :"pes_liquido")')
    RefreshSQL.Strings = (
      'select a.*'
      'from "emb_especial_item_ped" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido'
      '  and a."seq" = :seq')
    SelectSQL.Strings = (
      'select a.*'
      'from "emb_especial_item_ped" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido'
      '  and a."seq" = :seq')
    ModifySQL.Strings = (
      'update "emb_especial_item_ped"'
      'set'
      '  "emb_especial_item_ped"."cod_empresa" = :"cod_empresa",'
      '  "emb_especial_item_ped"."num_pedido" = :"num_pedido",'
      '  "emb_especial_item_ped"."seq" = :"seq",'
      '  "emb_especial_item_ped"."num_sequencia" = :"num_sequencia",'
      '  "emb_especial_item_ped"."cod_produto" = :"cod_produto",'
      '  "emb_especial_item_ped"."qtd_produto" = :"qtd_produto",'
      '  "emb_especial_item_ped"."pes_liquido" = :"pes_liquido"'
      'where'
      '  "emb_especial_item_ped"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "emb_especial_item_ped"."num_pedido" = :"OLD_num_pedido" and'
      '  "emb_especial_item_ped"."seq" = :"OLD_seq" and'
      '  "emb_especial_item_ped"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 564
    Top = 541
    object emb_especial_item_pedcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"emb_especial_item_ped"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_item_pednum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"emb_especial_item_ped"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_item_pedseq: TIntegerField
      FieldName = 'seq'
      Origin = '"emb_especial_item_ped"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_item_pednum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"emb_especial_item_ped"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_item_pedcod_produto: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"emb_especial_item_ped"."cod_produto"'
      OnGetText = emb_especial_item_pedcod_produtoGetText
      Size = 15
    end
    object emb_especial_item_pedqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_item_ped"."qtd_produto"'
      DisplayFormat = '#,###0.00'
      Precision = 18
      Size = 3
    end
    object emb_especial_item_pedpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_item_ped"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object emb_especial_item_pedcalDenProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto'
      Size = 100
      Calculated = True
    end
  end
  object ds_emb_especial_ped: TDataSource
    DataSet = emb_especial_ped
    Left = 604
    Top = 510
  end
  object ds_emb_especial_item_ped: TDataSource
    DataSet = emb_especial_item_ped
    Left = 604
    Top = 542
  end
  object Pagamento: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = PagamentoAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "pagamento"'
      'order by "den_pagamento"')
    Left = 116
    Top = 498
    object Pagamentocod_pagamento: TSmallintField
      FieldName = 'cod_pagamento'
      Origin = '"pagamento"."cod_pagamento"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Pagamentoden_pagamento: TIBStringField
      FieldName = 'den_pagamento'
      Origin = '"pagamento"."den_pagamento"'
      Size = 255
    end
  end
  object pedido_pagamento: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = pedido_pagamentoAfterDelete
    AfterInsert = pedido_pagamentoAfterInsert
    AfterPost = pedido_pagamentoAfterPost
    BeforeDelete = pedido_pagamentoBeforeDelete
    OnNewRecord = pedido_pagamentoNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido_pagamento"'
      'where'
      '  "pedido_pagamento"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_pagamento"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_pagamento"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "pedido_pagamento"'
      
        '  ("pedido_pagamento"."cod_empresa", "pedido_pagamento"."num_ped' +
        'ido", "pedido_pagamento"."num_sequencia", '
      
        '   "pedido_pagamento"."vlr_pagamento", "pedido_pagamento"."dat_p' +
        'agamento", '
      '   "pedido_pagamento"."txt_pagamento", '
      '   "pedido_pagamento"."vlr_pagamento_esp",'
      
        '   "pedido_pagamento"."num_nota_fiscal", "pedido_pagamento"."ser' +
        'ie")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"num_sequencia", :"vlr_pagame' +
        'nto", :"dat_pagamento", '
      
        '   :"txt_pagamento", :"vlr_pagamento_esp",  :"num_nota_fiscal", ' +
        ':"serie")')
    RefreshSQL.Strings = (
      'Select *'
      'from "pedido_pagamento" '
      'where'
      '  "pedido_pagamento"."cod_empresa" = :"cod_empresa" and'
      '  "pedido_pagamento"."num_pedido" = :"num_pedido" and'
      '  "pedido_pagamento"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select * from "pedido_pagamento"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      'order by "dat_pagamento"')
    ModifySQL.Strings = (
      'update "pedido_pagamento"'
      'set'
      '  "pedido_pagamento"."cod_empresa" = :"cod_empresa",'
      '  "pedido_pagamento"."num_pedido" = :"num_pedido",'
      '  "pedido_pagamento"."num_sequencia" = :"num_sequencia",'
      '  "pedido_pagamento"."vlr_pagamento" = :"vlr_pagamento",'
      '  "pedido_pagamento"."dat_pagamento" = :"dat_pagamento",'
      '  "pedido_pagamento"."txt_pagamento" = :"txt_pagamento",'
      '  "pedido_pagamento"."vlr_pagamento_esp" = :"vlr_pagamento_esp",'
      '  "pedido_pagamento"."num_nota_fiscal" = :"num_nota_fiscal",'
      '  "pedido_pagamento"."serie" = :"serie"'
      'where'
      '  "pedido_pagamento"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_pagamento"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_pagamento"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 52
    Top = 498
    object pedido_pagamentocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_pagamento"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamentonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_pagamento"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamentovlr_pagamento: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vlr_pagamento'
      Origin = '"pedido_pagamento"."vlr_pagamento"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object pedido_pagamentovlr_pagamento_esp: TIBBCDField
      DisplayLabel = 'Valor Esp'
      FieldName = 'vlr_pagamento_esp'
      Origin = '"pedido_pagamento"."vlr_pagamento_esp"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object pedido_pagamentodat_pagamento: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_pagamento'
      Origin = '"pedido_pagamento"."dat_pagamento"'
      OnValidate = pedido_pagamentodat_pagamentoValidate
      DisplayFormat = 'dd/mm/yy'
    end
    object pedido_pagamentonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_pagamento"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_pagamentotxt_pagamento: TMemoField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'txt_pagamento'
      Origin = '"pedido_pagamento"."txt_pagamento"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_pagamentonum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = 'pedido_pagamento.num_nota_fiscal'
    end
    object pedido_pagamentoserie: TIBStringField
      FieldName = 'serie'
      Origin = 'pedido_pagamento.serie'
      FixedChar = True
      Size = 4
    end
    object pedido_pagamentolkpNumFatura: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpNumFatura'
      LookupDataSet = spr_faturas_pedido
      LookupKeyFields = 'num_nota_fiscal'
      LookupResultField = 'num_fatura'
      KeyFields = 'num_nota_fiscal'
      Size = 25
      Lookup = True
    end
    object pedido_pagamentonum_seq_fatpag: TIntegerField
      FieldName = 'num_seq_fatpag'
      Origin = 'pedido_pagamento.num_seq_fatpag'
    end
  end
  object ds_pedido_pagamento: TDataSource
    DataSet = pedido_pagamento
    Left = 84
    Top = 498
  end
  object pedido_adic_desc: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = pedido_adic_descAfterDelete
    AfterInsert = pedido_adic_descAfterInsert
    AfterPost = pedido_adic_descAfterPost
    BeforePost = pedido_adic_descBeforePost
    OnCalcFields = pedido_adic_descCalcFields
    OnNewRecord = pedido_adic_descNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido_adic_desc"'
      'where'
      '  "pedido_adic_desc"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_adic_desc"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_adic_desc"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "pedido_adic_desc"'
      
        '  ("pedido_adic_desc"."cod_empresa", "pedido_adic_desc"."num_ped' +
        'ido", "pedido_adic_desc"."num_sequencia", '
      
        '   "pedido_adic_desc"."ies_tipo", "pedido_adic_desc"."vlr_adic_d' +
        'esc", "pedido_adic_desc"."vlr_adic_desc_esp",'
      '   "pedido_adic_desc"."txt_descricao", '
      '   "pedido_adic_desc"."ies_faturado")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"num_sequencia", :"ies_tipo",' +
        ' :"vlr_adic_desc", :"vlr_adic_desc_esp",'
      '   :"txt_descricao", :"ies_faturado")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "pedido_adic_desc" '
      'where'
      '  "pedido_adic_desc"."cod_empresa" = :"cod_empresa" and'
      '  "pedido_adic_desc"."num_pedido" = :"num_pedido" and'
      '  "pedido_adic_desc"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select * from "pedido_adic_desc"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      'order by "ies_tipo"')
    ModifySQL.Strings = (
      'update "pedido_adic_desc"'
      'set'
      '  "pedido_adic_desc"."cod_empresa" = :"cod_empresa",'
      '  "pedido_adic_desc"."num_pedido" = :"num_pedido",'
      '  "pedido_adic_desc"."num_sequencia" = :"num_sequencia",'
      '  "pedido_adic_desc"."ies_tipo" = :"ies_tipo",'
      '  "pedido_adic_desc"."vlr_adic_desc" = :"vlr_adic_desc",'
      '  "pedido_adic_desc"."vlr_adic_desc_esp" = :"vlr_adic_desc_esp",'
      '  "pedido_adic_desc"."txt_descricao" = :"txt_descricao",'
      '  "pedido_adic_desc"."ies_faturado" = :"ies_faturado"'
      'where'
      '  "pedido_adic_desc"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_adic_desc"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_adic_desc"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 52
    Top = 532
    object pedido_adic_desccod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_adic_desc"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_adic_descnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_adic_desc"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_adic_descnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_adic_desc"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_adic_descies_tipo: TIBStringField
      DisplayLabel = 'A/D'
      FieldName = 'ies_tipo'
      Origin = '"pedido_adic_desc"."ies_tipo"'
      FixedChar = True
      Size = 1
    end
    object pedido_adic_descvlr_adic_desc: TIBBCDField
      DisplayLabel = 'Valor Real'
      FieldName = 'vlr_adic_desc'
      Origin = '"pedido_adic_desc"."vlr_adic_desc"'
      OnValidate = pedido_adic_descvlr_adic_descValidate
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object pedido_adic_descvlr_adic_desc_esp: TIBBCDField
      DisplayLabel = 'Valor Especial'
      FieldName = 'vlr_adic_desc_esp'
      Origin = '"pedido_adic_desc"."vlr_adic_desc_esp"'
      OnValidate = pedido_adic_descvlr_adic_desc_espValidate
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object pedido_adic_desctxt_descricao: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'txt_descricao'
      Origin = '"pedido_adic_desc"."txt_descricao"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_adic_descnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"pedido_adic_desc"."num_nota_fiscal"'
    end
    object pedido_adic_descserie: TIBStringField
      FieldName = 'serie'
      Origin = '"pedido_adic_desc"."serie"'
      Size = 4
    end
    object pedido_adic_descies_faturado: TIBStringField
      FieldName = 'ies_faturado'
      Origin = '"pedido_adic_desc"."ies_faturado"'
      FixedChar = True
      Size = 1
    end
    object pedido_adic_descnum_fatura: TStringField
      DisplayLabel = 'Num.Fatura'
      FieldKind = fkCalculated
      FieldName = 'num_fatura'
      Size = 25
      Calculated = True
    end
  end
  object ds_pedido_adic_desc: TDataSource
    DataSet = pedido_adic_desc
    Left = 82
    Top = 532
  end
  object SeqPedidoPagamento: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select MAX(a."num_sequencia") + 1 "prox_sequencia"'
      'from "pedido_pagamento" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido')
    Left = 152
    Top = 499
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
    object SeqPedidoPagamentoprox_sequencia: TLargeintField
      FieldName = 'prox_sequencia'
    end
  end
  object SeqPedidoAdicDesc: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select MAX(a."num_sequencia") + 1 "prox_sequencia"'
      'from "pedido_adic_desc" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido')
    Left = 152
    Top = 531
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
    object SeqPedidoAdicDescprox_sequencia: TLargeintField
      FieldName = 'prox_sequencia'
    end
  end
  object qryAdicDesc: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "pedido_adic_desc" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido'
      '  and a."ies_tipo" = :ies_tipo'
      'order by a."num_sequencia"')
    Left = 192
    Top = 467
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
        Name = 'ies_tipo'
        ParamType = ptUnknown
      end>
    object qryAdicDescies_tipo: TIBStringField
      FieldName = 'ies_tipo'
      Origin = '"pedido_adic_desc"."ies_tipo"'
      FixedChar = True
      Size = 1
    end
    object qryAdicDescvlr_adic_desc: TIBBCDField
      FieldName = 'vlr_adic_desc'
      Origin = '"pedido_adic_desc"."vlr_adic_desc"'
      Precision = 18
      Size = 2
    end
    object qryAdicDescvlr_adic_desc_esp: TIBBCDField
      FieldName = 'vlr_adic_desc_esp'
      Origin = '"pedido_adic_desc"."vlr_adic_desc_esp"'
      Precision = 18
      Size = 2
    end
    object qryAdicDesctxt_descricao: TMemoField
      FieldName = 'txt_descricao'
      Origin = '"pedido_adic_desc"."txt_descricao"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object cby_pedido_pagamento_totais: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "cby_pedido_pagamento_totais"(:cod_empresa, :num_p' +
        'edido)')
    Left = 152
    Top = 562
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
    object cby_pedido_pagamento_totaistot_pagamentos: TIBBCDField
      FieldName = 'tot_pagamentos'
      Origin = '"cby_pedido_pagamento"."tot_pagamentos"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object cby_pedido_pagamento_totaistot_pagamentos_esp: TIBBCDField
      FieldName = 'tot_pagamentos_esp'
      Origin = '"cby_pedido_pagamento"."tot_pagamentos_esp"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dscby_pedido_pagamento: TDataSource
    DataSet = cby_pedido_pagamento_totais
    Left = 184
    Top = 562
  end
  object PopupMenu1: TPopupMenu
    Images = dmConnection.ImageList
    Left = 812
    Top = 525
    object popPedido: TMenuItem
      Caption = 'Pedido/Confirma'#231#227'o'
      SubMenuImages = dmConnection.ImageList
      ImageIndex = 235
      OnClick = popPedidoClick
    end
    object popConfirmacao: TMenuItem
      Caption = 'Ship Marks'
      ImageIndex = 235
    end
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 484
    Top = 216
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 452
    Top = 240
  end
  object PedidoProdutoImp: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = PedidoProdutoImpAfterDelete
    AfterPost = PedidoProdutoImpAfterPost
    BeforePost = qryPedidoProdutoBeforePost
    OnNewRecord = qryPedidoProdutoNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido_produto"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "pedido_produto"'
      
        '  ("pedido_produto"."cod_empresa", "pedido_produto"."num_pedido"' +
        ', "pedido_produto"."num_sequencia",'
      
        '   "pedido_produto"."cod_produto", "pedido_produto"."qtd_produto' +
        '", "pedido_produto"."qtd_cancelada",'
      
        '   "pedido_produto"."qtd_romaneada", "pedido_produto"."qtd_fatur' +
        'ada", "pedido_produto"."qtd_pendente",'
      
        '   "pedido_produto"."vlr_unitario", "pedido_produto"."vlr_unitar' +
        'io_esp", "pedido_produto"."dat_cadastro",'
      
        '   "pedido_produto"."dat_inspecao", "pedido_produto"."ies_situac' +
        'ao",'
      
        '   "pedido_produto"."vlr_liquido", "pedido_produto"."vlr_liquido' +
        '_esp", "pedido_produto"."qtd_export_box",'
      
        '   "pedido_produto"."qtd_inner_box", "pedido_produto"."vol_caixa' +
        's", "pedido_produto"."pes_liquido",'
      
        '   "pedido_produto"."pes_bruto", "pedido_produto"."dat_preco", "' +
        'pedido_produto"."un_cx_master",'
      
        '   "pedido_produto"."ies_emb_esp", "pedido_produto"."obs_preco",' +
        ' "pedido_produto"."obs_preco_esp",'
      
        '   "pedido_produto"."pct_comissao_f", "pedido_produto"."pct_comi' +
        'ssao_c", "pedido_produto"."texto",'
      
        '   "pedido_produto"."txt_observacao", "pedido_produto"."seq_emb_' +
        'esp", "pedido_produto"."seq_pallet",'
      
        '   "pedido_produto"."qtd_pallet", "pedido_produto"."pes_bruto_pa' +
        'llet", "pedido_produto"."pes_liquido_pallet",'
      
        '   "pedido_produto"."comprimento_pallet", "pedido_produto"."larg' +
        'ura_pallet", "pedido_produto"."altura_pallet",'
      
        '   "pedido_produto"."volume_pallet", "pedido_produto"."seq_pkl",' +
        ' "pedido_produto"."num_seq_origem",'
      
        '   "pedido_produto"."pes_pallet_vazio",  "pedido_produto"."ies_e' +
        'rros", "pedido_produto"."ies_colunas",'
      '   "pedido_produto"."ies_caixa_fechada",'
      
        '   "pedido_produto"."etd_factory", "pedido_produto"."dat_upd_etd' +
        '", "pedido_produto"."etd_obs_cli", "pedido_produto"."etd_obs_for' +
        '")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"num_sequencia", :"cod_produt' +
        'o", :"qtd_produto",'
      
        '   :"qtd_cancelada", :"qtd_romaneada", :"qtd_faturada", :"qtd_pe' +
        'ndente", '
      '   :"vlr_unitario", :"vlr_unitario_esp", :"dat_cadastro",'
      
        '   :"dat_inspecao", :"ies_situacao", :"vlr_liquido", :"vlr_liqui' +
        'do_esp", '
      
        '   :"qtd_export_box", :"qtd_inner_box", :"vol_caixas", :"pes_liq' +
        'uido", '
      
        '   :"pes_bruto", :"dat_preco", :"un_cx_master", :"ies_emb_esp", ' +
        ':"obs_preco", '
      
        '   :"obs_preco_esp", :"pct_comissao_f", :"pct_comissao_c", :"tex' +
        'to", :"txt_observacao",'
      
        '   :"seq_emb_esp", :"seq_pallet", :"qtd_pallet", :"pes_bruto_pal' +
        'let", :"pes_liquido_pallet",'
      
        '   :"comprimento_pallet", :"largura_pallet", :"altura_pallet", :' +
        '"volume_pallet", '
      
        '   :"seq_pkl", :"num_seq_origem", :"pes_pallet_vazio", :"ies_err' +
        'os", :"ies_colunas", :"ies_caixa_fechada",'
      
        '   :"etd_factory", :"dat_upd_etd", :"etd_obs_cli", :"etd_obs_for' +
        '")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "pedido_produto" '
      'where'
      '  "pedido_produto"."cod_empresa" = :"cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select *'
      'from "pedido_produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      '  and "num_sequencia" = :num_sequencia')
    ModifySQL.Strings = (
      'update "pedido_produto"'
      'set'
      '  "pedido_produto"."cod_empresa" = :"cod_empresa",'
      '  "pedido_produto"."num_pedido" = :"num_pedido",'
      '  "pedido_produto"."num_sequencia" = :"num_sequencia",'
      '  "pedido_produto"."cod_produto" = :"cod_produto",'
      '  "pedido_produto"."qtd_produto" = :"qtd_produto",'
      '  "pedido_produto"."qtd_cancelada" = :"qtd_cancelada",'
      '  "pedido_produto"."qtd_romaneada" = :"qtd_romaneada",'
      '  "pedido_produto"."qtd_faturada" = :"qtd_faturada",'
      '  "pedido_produto"."qtd_pendente" = :"qtd_pendente",'
      '  "pedido_produto"."vlr_unitario" = :"vlr_unitario",'
      '  "pedido_produto"."vlr_unitario_esp" = :"vlr_unitario_esp",'
      '  "pedido_produto"."dat_cadastro" = :"dat_cadastro",'
      '  "pedido_produto"."dat_inspecao" = :"dat_inspecao",'
      '  "pedido_produto"."ies_situacao" = :"ies_situacao",'
      '  "pedido_produto"."vlr_liquido" = :"vlr_liquido",'
      '  "pedido_produto"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "pedido_produto"."qtd_export_box" = :"qtd_export_box",'
      '  "pedido_produto"."qtd_inner_box" = :"qtd_inner_box",'
      '  "pedido_produto"."vol_caixas" = :"vol_caixas",'
      '  "pedido_produto"."pes_liquido" = :"pes_liquido",'
      '  "pedido_produto"."pes_bruto" = :"pes_bruto",'
      '  "pedido_produto"."dat_preco" = :"dat_preco",'
      '  "pedido_produto"."un_cx_master" = :"un_cx_master",'
      '  "pedido_produto"."ies_emb_esp" = :"ies_emb_esp",'
      '  "pedido_produto"."obs_preco" = :"obs_preco",'
      '  "pedido_produto"."obs_preco_esp" = :"obs_preco_esp",'
      '  "pedido_produto"."pct_comissao_f" = :"pct_comissao_f",'
      '  "pedido_produto"."pct_comissao_c" = :"pct_comissao_c",'
      '  "pedido_produto"."texto" = :"texto",'
      '  "pedido_produto"."txt_observacao" = :"txt_observacao",'
      '  "pedido_produto"."seq_emb_esp" = :"seq_emb_esp",'
      '  "pedido_produto"."seq_pallet" = :"seq_pallet",'
      '  "pedido_produto"."qtd_pallet" = :"qtd_pallet",'
      '  "pedido_produto"."pes_bruto_pallet" = :"pes_bruto_pallet",'
      '  "pedido_produto"."pes_liquido_pallet" = :"pes_liquido_pallet",'
      '  "pedido_produto"."comprimento_pallet" = :"comprimento_pallet",'
      '  "pedido_produto"."largura_pallet" = :"largura_pallet",'
      '  "pedido_produto"."altura_pallet" = :"altura_pallet",'
      '  "pedido_produto"."volume_pallet" = :"volume_pallet",'
      '  "pedido_produto"."seq_pkl" = :"seq_pkl",'
      '  "pedido_produto"."num_seq_origem" = :"num_seq_origem",'
      '  "pedido_produto"."pes_pallet_vazio" = :"pes_pallet_vazio",'
      '  "pedido_produto"."ies_erros" = :"ies_erros",'
      '  "pedido_produto"."ies_colunas" = :"ies_colunas",'
      '  "pedido_produto"."ies_caixa_fechada" = :"ies_caixa_fechada",'
      '  "pedido_produto"."etd_factory" = :"etd_factory",'
      '  "pedido_produto"."dat_upd_etd" = :"dat_upd_etd",'
      '  "pedido_produto"."etd_obs_cli" = :"etd_obs_cli",'
      '  "pedido_produto"."etd_obs_for" = :"etd_obs_for"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 820
    Top = 239
    object PedidoProdutoImpcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = 'pedido_produto.cod_empresa'
      Required = True
    end
    object PedidoProdutoImpnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = 'pedido_produto.num_pedido'
    end
    object PedidoProdutoImpnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = 'pedido_produto.num_sequencia'
    end
    object PedidoProdutoImpcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = 'pedido_produto.cod_produto'
      Required = True
      Size = 15
    end
    object PedidoProdutoImpqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = 'pedido_produto.qtd_produto'
      Required = True
      Precision = 18
      Size = 3
    end
    object PedidoProdutoImpqtd_cancelada: TIBBCDField
      FieldName = 'qtd_cancelada'
      Origin = 'pedido_produto.qtd_cancelada'
      Required = True
      Precision = 18
      Size = 3
    end
    object PedidoProdutoImpqtd_romaneada: TIBBCDField
      FieldName = 'qtd_romaneada'
      Origin = 'pedido_produto.qtd_romaneada'
      Required = True
      Precision = 18
      Size = 3
    end
    object PedidoProdutoImpqtd_faturada: TIBBCDField
      FieldName = 'qtd_faturada'
      Origin = 'pedido_produto.qtd_faturada'
      Required = True
      Precision = 18
      Size = 3
    end
    object PedidoProdutoImpqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = 'pedido_produto.qtd_pendente'
      Precision = 18
      Size = 3
    end
    object PedidoProdutoImpvlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = 'pedido_produto.vlr_unitario'
    end
    object PedidoProdutoImpvlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = 'pedido_produto.vlr_unitario_esp'
    end
    object PedidoProdutoImpdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = 'pedido_produto.dat_cadastro'
      Required = True
    end
    object PedidoProdutoImpdat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = 'pedido_produto.dat_inspecao'
    end
    object PedidoProdutoImpies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = 'pedido_produto.ies_situacao'
      FixedChar = True
      Size = 1
    end
    object PedidoProdutoImpvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = 'pedido_produto.vlr_liquido'
      Precision = 18
      Size = 2
    end
    object PedidoProdutoImpvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = 'pedido_produto.vlr_liquido_esp'
      Precision = 18
      Size = 2
    end
    object PedidoProdutoImpqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = 'pedido_produto.qtd_export_box'
    end
    object PedidoProdutoImpvol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = 'pedido_produto.vol_caixas'
      Precision = 18
      Size = 3
    end
    object PedidoProdutoImppes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = 'pedido_produto.pes_liquido'
      Precision = 18
      Size = 2
    end
    object PedidoProdutoImppes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = 'pedido_produto.pes_bruto'
      Precision = 18
      Size = 2
    end
    object PedidoProdutoImpdat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = 'pedido_produto.dat_preco'
    end
    object PedidoProdutoImpies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = 'pedido_produto.ies_emb_esp'
      FixedChar = True
      Size = 1
    end
    object PedidoProdutoImpobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = 'pedido_produto.obs_preco'
      BlobType = ftMemo
      Size = 8
    end
    object PedidoProdutoImpobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = 'pedido_produto.obs_preco_esp'
      BlobType = ftMemo
      Size = 8
    end
    object PedidoProdutoImppct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = 'pedido_produto.pct_comissao_f'
      Precision = 9
      Size = 2
    end
    object PedidoProdutoImppct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = 'pedido_produto.pct_comissao_c'
      Precision = 9
      Size = 2
    end
    object PedidoProdutoImptexto: TMemoField
      FieldName = 'texto'
      Origin = 'pedido_produto.texto'
      BlobType = ftMemo
      Size = 8
    end
    object PedidoProdutoImptxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = 'pedido_produto.txt_observacao'
      BlobType = ftMemo
      Size = 8
    end
    object PedidoProdutoImpseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = 'pedido_produto.seq_emb_esp'
    end
    object PedidoProdutoImpseq_pallet: TIntegerField
      FieldName = 'seq_pallet'
      Origin = 'pedido_produto.seq_pallet'
    end
    object PedidoProdutoImpqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = 'pedido_produto.qtd_pallet'
    end
    object PedidoProdutoImppes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = 'pedido_produto.pes_bruto_pallet'
      Precision = 18
      Size = 2
    end
    object PedidoProdutoImppes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = 'pedido_produto.pes_liquido_pallet'
      Precision = 18
      Size = 2
    end
    object PedidoProdutoImpcomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = 'pedido_produto.comprimento_pallet'
      Precision = 9
      Size = 4
    end
    object PedidoProdutoImplargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = 'pedido_produto.largura_pallet'
      Precision = 9
      Size = 4
    end
    object PedidoProdutoImpaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = 'pedido_produto.altura_pallet'
      Precision = 9
      Size = 4
    end
    object PedidoProdutoImpvolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = 'pedido_produto.volume_pallet'
      Precision = 18
      Size = 4
    end
    object PedidoProdutoImpseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = 'pedido_produto.seq_pkl'
    end
    object PedidoProdutoImpnum_seq_origem: TIntegerField
      FieldName = 'num_seq_origem'
      Origin = 'pedido_produto.num_seq_origem'
    end
    object PedidoProdutoImppes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"pedido_produto"."pes_pallet_vazio"'
    end
    object PedidoProdutoImpies_erros: TIBStringField
      FieldName = 'ies_erros'
      Origin = 'pedido_produto.ies_erros'
      FixedChar = True
      Size = 1
    end
    object PedidoProdutoImpies_colunas: TLargeintField
      FieldName = 'ies_colunas'
      Origin = 'pedido_produto.ies_colunas'
    end
    object PedidoProdutoImpies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = 'pedido_produto.ies_caixa_fechada'
      FixedChar = True
      Size = 1
    end
    object PedidoProdutoImpqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"pedido_produto"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object PedidoProdutoImpun_cx_master: TIBBCDField
      FieldName = 'un_cx_master'
      Origin = '"pedido_produto"."un_cx_master"'
      Precision = 9
      Size = 4
    end
    object PedidoProdutoImpetd_factory: TDateField
      FieldName = 'etd_factory'
      Origin = '"pedido_produto"."etd_factory"'
    end
    object PedidoProdutoImpetd_obs_cli: TMemoField
      FieldName = 'etd_obs_cli'
      Origin = '"pedido_produto"."etd_obs_cli"'
      BlobType = ftMemo
      Size = 8
    end
    object PedidoProdutoImpetd_obs_for: TMemoField
      FieldName = 'etd_obs_for'
      Origin = '"pedido_produto"."etd_obs_for"'
      BlobType = ftMemo
      Size = 8
    end
    object PedidoProdutoImpdat_upd_etd: TDateField
      FieldName = 'dat_upd_etd'
      Origin = '"pedido_produto"."dat_upd_etd"'
    end
  end
  object spr_cal_romaneio_fatura: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_cal_romaneio_fatura'
    Left = 820
    Top = 279
  end
  object ItensPedidoFatura: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select b."num_nota_fiscal", b."num_fatura", a."num_sequencia",  ' +
        'a."num_seq_pedido",'
      
        'a."serie", a."qtd_produto",  a."vlr_unitario", a."vlr_unitario_e' +
        'sp", a."vlr_liquido", a."vlr_liquido_esp", a."cod_produto"'
      '  from "nota_fiscal_saida_produto" a, "nf_saida_complemento" b'
      ' where a."cod_empresa" = :cod_empresa'
      '   and a."num_pedido" = :num_pedido'
      '   and a."num_seq_pedido" = :num_seq_pedido'
      '   and b."cod_empresa" = a."cod_empresa"'
      '   and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '   and b."serie" = a."serie"'
      'order by 1,3')
    Left = 860
    Top = 239
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
        Name = 'num_seq_pedido'
        ParamType = ptUnknown
      end>
    object ItensPedidoFaturanum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nf_saida_complemento"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ItensPedidoFaturanum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
    object ItensPedidoFaturanum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"nota_fiscal_saida_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ItensPedidoFaturaqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object ItensPedidoFaturavlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario"'
    end
    object ItensPedidoFaturavlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario_esp"'
    end
    object ItensPedidoFaturavlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object ItensPedidoFaturavlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object ItensPedidoFaturaserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida_produto"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object ItensPedidoFaturacod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = 'nota_fiscal_saida_produto.cod_produto'
      Required = True
      Size = 15
    end
    object ItensPedidoFaturanum_seq_pedido: TSmallintField
      FieldName = 'num_seq_pedido'
      Origin = '"nota_fiscal_saida_produto"."num_seq_pedido"'
    end
  end
  object nota_fiscal_saida_produto: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = nota_fiscal_saida_produtoAfterDelete
    AfterPost = nota_fiscal_saida_produtoAfterPost
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "nota_fiscal_saida_produto"'
      'where'
      
        '  "nota_fiscal_saida_produto"."cod_empresa" = :"OLD_cod_empresa"' +
        ' and'
      
        '  "nota_fiscal_saida_produto"."num_nota_fiscal" = :"OLD_num_nota' +
        '_fiscal" and'
      '  "nota_fiscal_saida_produto"."serie" = :"OLD_serie" and'
      
        '  "nota_fiscal_saida_produto"."num_sequencia" = :"OLD_num_sequen' +
        'cia"')
    InsertSQL.Strings = (
      '  insert into "nota_fiscal_saida_produto"'
      
        '  ("nota_fiscal_saida_produto"."cod_empresa", "nota_fiscal_saida' +
        '_produto"."num_nota_fiscal", '
      
        '   "nota_fiscal_saida_produto"."serie", "nota_fiscal_saida_produ' +
        'to"."num_sequencia", '
      
        '   "nota_fiscal_saida_produto"."cod_produto", "nota_fiscal_saida' +
        '_produto"."qtd_produto", '
      
        '   "nota_fiscal_saida_produto"."vlr_unitario", "nota_fiscal_said' +
        'a_produto"."vlr_unitario_esp", '
      
        '   "nota_fiscal_saida_produto"."texto", "nota_fiscal_saida_produ' +
        'to"."txt_observacao", '
      
        '   "nota_fiscal_saida_produto"."dat_cadastro", "nota_fiscal_said' +
        'a_produto"."ies_situacao", '
      
        '   "nota_fiscal_saida_produto"."num_pedido", "nota_fiscal_saida_' +
        'produto"."num_seq_pedido", '
      
        '   "nota_fiscal_saida_produto"."vlr_liquido", "nota_fiscal_saida' +
        '_produto"."vlr_liquido_esp", '
      
        '   "nota_fiscal_saida_produto"."qtd_export_box", "nota_fiscal_sa' +
        'ida_produto"."qtd_inner_box", '
      
        '   "nota_fiscal_saida_produto"."vol_caixas", "nota_fiscal_saida_' +
        'produto"."pes_liquido", '
      
        '   "nota_fiscal_saida_produto"."pes_bruto", "nota_fiscal_saida_p' +
        'roduto"."ies_emb_esp", '
      
        '   "nota_fiscal_saida_produto"."obs_preco", "nota_fiscal_saida_p' +
        'roduto"."obs_preco_esp", '
      
        '   "nota_fiscal_saida_produto"."ies_caixa_fechada", "nota_fiscal' +
        '_saida_produto"."pct_comissao_f",'
      '   "nota_fiscal_saida_produto"."pct_comissao_c")'
      'values'
      
        '  (:"cod_empresa", :"num_nota_fiscal", :"serie", :"num_sequencia' +
        '", :"cod_produto", '
      
        '   :"qtd_produto", :"vlr_unitario", :"vlr_unitario_esp", :"texto' +
        '", :"txt_observacao", '
      
        '   :"dat_cadastro", :"ies_situacao", :"num_pedido", :"num_seq_pe' +
        'dido", '
      
        '   :"vlr_liquido", :"vlr_liquido_esp", :"qtd_export_box", :"qtd_' +
        'inner_box", '
      
        '   :"vol_caixas", :"pes_liquido", :"pes_bruto", :"ies_emb_esp", ' +
        ' :"obs_preco", :"obs_preco_esp",'
      '   :"ies_caixa_fechada", :"pct_comissao_f", :"pct_comissao_c")')
    RefreshSQL.Strings = (
      'Select '
      '  "nota_fiscal_saida_produto"."cod_empresa",'
      '  "nota_fiscal_saida_produto"."num_nota_fiscal",'
      '  "nota_fiscal_saida_produto"."serie",'
      '  "nota_fiscal_saida_produto"."num_sequencia",'
      '  "nota_fiscal_saida_produto"."cod_produto",'
      '  "nota_fiscal_saida_produto"."qtd_produto",'
      '  "nota_fiscal_saida_produto"."vlr_unitario",'
      '  "nota_fiscal_saida_produto"."vlr_unitario_esp",'
      '  "nota_fiscal_saida_produto"."texto",'
      '  "nota_fiscal_saida_produto"."txt_observacao",'
      '  "nota_fiscal_saida_produto"."dat_cadastro",'
      '  "nota_fiscal_saida_produto"."ies_situacao",'
      '  "nota_fiscal_saida_produto"."num_pedido",'
      '  "nota_fiscal_saida_produto"."num_seq_pedido",'
      '  "nota_fiscal_saida_produto"."vlr_liquido",'
      '  "nota_fiscal_saida_produto"."vlr_liquido_esp",'
      '  "nota_fiscal_saida_produto"."qtd_export_box",'
      '  "nota_fiscal_saida_produto"."qtd_inner_box",'
      '  "nota_fiscal_saida_produto"."vol_caixas",'
      '  "nota_fiscal_saida_produto"."pes_liquido",'
      '  "nota_fiscal_saida_produto"."pes_bruto",'
      '  "nota_fiscal_saida_produto"."ies_emb_esp",'
      '  "nota_fiscal_saida_produto"."obs_preco",'
      '  "nota_fiscal_saida_produto"."obs_preco_esp",'
      '  "nota_fiscal_saida_produto"."ies_caixa_fechada"'
      'from "nota_fiscal_saida_produto" '
      'where'
      '  "nota_fiscal_saida_produto"."cod_empresa" = :"cod_empresa" and'
      
        '  "nota_fiscal_saida_produto"."num_nota_fiscal" = :"num_nota_fis' +
        'cal" and'
      '  "nota_fiscal_saida_produto"."serie" = :"serie" and'
      '  "nota_fiscal_saida_produto"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select *'
      'from "nota_fiscal_saida_produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_nota_fiscal" = :num_nota_fiscal'
      '  and "serie" = :serie'
      '  and "num_sequencia" = :num_sequencia')
    ModifySQL.Strings = (
      'update "nota_fiscal_saida_produto"'
      'set'
      '  "nota_fiscal_saida_produto"."cod_empresa" = :"cod_empresa",'
      
        '  "nota_fiscal_saida_produto"."num_nota_fiscal" = :"num_nota_fis' +
        'cal",'
      '  "nota_fiscal_saida_produto"."serie" = :"serie",'
      
        '  "nota_fiscal_saida_produto"."num_sequencia" = :"num_sequencia"' +
        ','
      '  "nota_fiscal_saida_produto"."cod_produto" = :"cod_produto",'
      '  "nota_fiscal_saida_produto"."qtd_produto" = :"qtd_produto",'
      '  "nota_fiscal_saida_produto"."vlr_unitario" = :"vlr_unitario",'
      
        '  "nota_fiscal_saida_produto"."vlr_unitario_esp" = :"vlr_unitari' +
        'o_esp",'
      '  "nota_fiscal_saida_produto"."texto" = :"texto",'
      
        '  "nota_fiscal_saida_produto"."txt_observacao" = :"txt_observaca' +
        'o",'
      '  "nota_fiscal_saida_produto"."dat_cadastro" = :"dat_cadastro",'
      '  "nota_fiscal_saida_produto"."ies_situacao" = :"ies_situacao",'
      '  "nota_fiscal_saida_produto"."num_pedido" = :"num_pedido",'
      
        '  "nota_fiscal_saida_produto"."num_seq_pedido" = :"num_seq_pedid' +
        'o",'
      '  "nota_fiscal_saida_produto"."vlr_liquido" = :"vlr_liquido",'
      
        '  "nota_fiscal_saida_produto"."vlr_liquido_esp" = :"vlr_liquido_' +
        'esp",'
      
        '  "nota_fiscal_saida_produto"."qtd_export_box" = :"qtd_export_bo' +
        'x",'
      
        '  "nota_fiscal_saida_produto"."qtd_inner_box" = :"qtd_inner_box"' +
        ','
      '  "nota_fiscal_saida_produto"."vol_caixas" = :"vol_caixas",'
      '  "nota_fiscal_saida_produto"."pes_liquido" = :"pes_liquido",'
      '  "nota_fiscal_saida_produto"."pes_bruto" = :"pes_bruto",'
      '  "nota_fiscal_saida_produto"."ies_emb_esp" = :"ies_emb_esp",'
      '  "nota_fiscal_saida_produto"."obs_preco" = :"obs_preco",'
      
        '  "nota_fiscal_saida_produto"."obs_preco_esp" = :"obs_preco_esp"' +
        ','
      
        '  "nota_fiscal_saida_produto"."ies_caixa_fechada" = :"ies_caixa_' +
        'fechada",'
      
        '  "nota_fiscal_saida_produto"."pct_comissao_f" = :"pct_comissao_' +
        'f",'
      
        '  "nota_fiscal_saida_produto"."pct_comissao_c" = :"pct_comissao_' +
        'c"'
      'where'
      
        '  "nota_fiscal_saida_produto"."cod_empresa" = :"OLD_cod_empresa"' +
        ' and'
      
        '  "nota_fiscal_saida_produto"."num_nota_fiscal" = :"OLD_num_nota' +
        '_fiscal" and'
      '  "nota_fiscal_saida_produto"."serie" = :"OLD_serie" and'
      
        '  "nota_fiscal_saida_produto"."num_sequencia" = :"OLD_num_sequen' +
        'cia"')
    Left = 780
    Top = 239
    object nota_fiscal_saida_produtocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"nota_fiscal_saida_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nota_fiscal_saida_produtonum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida_produto"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nota_fiscal_saida_produtoserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida_produto"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object nota_fiscal_saida_produtonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"nota_fiscal_saida_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nota_fiscal_saida_produtocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"nota_fiscal_saida_produto"."cod_produto"'
      Required = True
      Size = 15
    end
    object nota_fiscal_saida_produtoqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object nota_fiscal_saida_produtovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario"'
    end
    object nota_fiscal_saida_produtovlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario_esp"'
    end
    object nota_fiscal_saida_produtodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"nota_fiscal_saida_produto"."dat_cadastro"'
    end
    object nota_fiscal_saida_produtoies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"nota_fiscal_saida_produto"."ies_situacao"'
      FixedChar = True
      Size = 1
    end
    object nota_fiscal_saida_produtonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"nota_fiscal_saida_produto"."num_pedido"'
    end
    object nota_fiscal_saida_produtonum_seq_pedido: TSmallintField
      FieldName = 'num_seq_pedido'
      Origin = '"nota_fiscal_saida_produto"."num_seq_pedido"'
    end
    object nota_fiscal_saida_produtovlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object nota_fiscal_saida_produtovlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object nota_fiscal_saida_produtoies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"nota_fiscal_saida_produto"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object nota_fiscal_saida_produtoqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"nota_fiscal_saida_produto"."qtd_export_box"'
    end
    object nota_fiscal_saida_produtovol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"nota_fiscal_saida_produto"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object nota_fiscal_saida_produtopes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"nota_fiscal_saida_produto"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object nota_fiscal_saida_produtopes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"nota_fiscal_saida_produto"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object nota_fiscal_saida_produtoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"nota_fiscal_saida_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object nota_fiscal_saida_produtoobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"nota_fiscal_saida_produto"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object nota_fiscal_saida_produtoies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = 'nota_fiscal_saida_produto.ies_caixa_fechada'
      FixedChar = True
      Size = 1
    end
    object nota_fiscal_saida_produtoqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"nota_fiscal_saida_produto"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object nota_fiscal_saida_produtopct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"nota_fiscal_saida_produto"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object nota_fiscal_saida_produtopct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"nota_fiscal_saida_produto"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
  end
  object spr_pedido_faturas: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_pedido_faturas'
    Left = 860
    Top = 278
  end
  object ProxSequenciaNF: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select MAX(a."num_sequencia") + 1 "prox_sequencia"'
      'from "nota_fiscal_saida_produto" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_nota_fiscal" = :num_nota_fiscal'
      '  and a."serie" = :serie')
    Left = 780
    Top = 279
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
      end>
    object ProxSequenciaNFprox_sequencia: TLargeintField
      FieldName = 'prox_sequencia'
    end
  end
  object ProdutosExcelAlteracao: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.*'
      '  from "pedido_produto" a'
      'where'
      '  a."cod_empresa"  = :cod_empresa'
      'and a."num_pedido" = :num_pedido'
      'order by a."seq_pkl"')
    Left = 780
    Top = 207
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
    object ProdutosExcelAlteracaocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutosExcelAlteracaonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_produto"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ProdutosExcelAlteracaonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ProdutosExcelAlteracaocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"pedido_produto"."cod_produto"'
      Required = True
      Size = 15
    end
    object ProdutosExcelAlteracaoqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"pedido_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object ProdutosExcelAlteracaoqtd_cancelada: TIBBCDField
      FieldName = 'qtd_cancelada'
      Origin = '"pedido_produto"."qtd_cancelada"'
      Precision = 18
      Size = 3
    end
    object ProdutosExcelAlteracaoqtd_romaneada: TIBBCDField
      FieldName = 'qtd_romaneada'
      Origin = '"pedido_produto"."qtd_romaneada"'
      Precision = 18
      Size = 3
    end
    object ProdutosExcelAlteracaoqtd_faturada: TIBBCDField
      FieldName = 'qtd_faturada'
      Origin = '"pedido_produto"."qtd_faturada"'
      Precision = 18
      Size = 3
    end
    object ProdutosExcelAlteracaoqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"pedido_produto"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object ProdutosExcelAlteracaovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
    end
    object ProdutosExcelAlteracaovlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = '"pedido_produto"."vlr_unitario_esp"'
    end
    object ProdutosExcelAlteracaodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"pedido_produto"."dat_cadastro"'
    end
    object ProdutosExcelAlteracaoies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"pedido_produto"."ies_situacao"'
      FixedChar = True
      Size = 1
    end
    object ProdutosExcelAlteracaovlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object ProdutosExcelAlteracaovlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido_produto"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object ProdutosExcelAlteracaoqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"pedido_produto"."qtd_export_box"'
    end
    object ProdutosExcelAlteracaoqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"pedido_produto"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object ProdutosExcelAlteracaovol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"pedido_produto"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object ProdutosExcelAlteracaopes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"pedido_produto"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object ProdutosExcelAlteracaopes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"pedido_produto"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object ProdutosExcelAlteracaodat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = '"pedido_produto"."dat_preco"'
    end
    object ProdutosExcelAlteracaoun_cx_master: TIBBCDField
      FieldName = 'un_cx_master'
      Origin = '"pedido_produto"."un_cx_master"'
      Precision = 9
      Size = 4
    end
    object ProdutosExcelAlteracaoies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"pedido_produto"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object ProdutosExcelAlteracaoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"pedido_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosExcelAlteracaoobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"pedido_produto"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosExcelAlteracaopct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"pedido_produto"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object ProdutosExcelAlteracaopct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"pedido_produto"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
    object ProdutosExcelAlteracaotexto: TMemoField
      FieldName = 'texto'
      Origin = '"pedido_produto"."texto"'
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosExcelAlteracaotxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"pedido_produto"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosExcelAlteracaodat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = '"pedido_produto"."dat_inspecao"'
    end
    object ProdutosExcelAlteracaoseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"pedido_produto"."seq_emb_esp"'
    end
    object ProdutosExcelAlteracaoseq_pallet: TIntegerField
      FieldName = 'seq_pallet'
      Origin = '"pedido_produto"."seq_pallet"'
    end
    object ProdutosExcelAlteracaoqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = '"pedido_produto"."qtd_pallet"'
    end
    object ProdutosExcelAlteracaopes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = '"pedido_produto"."pes_bruto_pallet"'
      Precision = 18
      Size = 2
    end
    object ProdutosExcelAlteracaopes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = '"pedido_produto"."pes_liquido_pallet"'
      Precision = 18
      Size = 2
    end
    object ProdutosExcelAlteracaocomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = '"pedido_produto"."comprimento_pallet"'
      Precision = 9
      Size = 4
    end
    object ProdutosExcelAlteracaolargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = '"pedido_produto"."largura_pallet"'
      Precision = 9
      Size = 4
    end
    object ProdutosExcelAlteracaoaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = '"pedido_produto"."altura_pallet"'
      Precision = 9
      Size = 4
    end
    object ProdutosExcelAlteracaovolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = '"pedido_produto"."volume_pallet"'
      Precision = 18
      Size = 4
    end
    object ProdutosExcelAlteracaoseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = '"pedido_produto"."seq_pkl"'
    end
    object ProdutosExcelAlteracaonum_seq_origem: TIntegerField
      FieldName = 'num_seq_origem'
      Origin = '"pedido_produto"."num_seq_origem"'
    end
    object ProdutosExcelAlteracaopes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"pedido_produto"."pes_pallet_vazio"'
    end
    object ProdutosExcelAlteracaoies_erros: TIBStringField
      FieldName = 'ies_erros'
      Origin = '"pedido_produto"."ies_erros"'
      FixedChar = True
      Size = 1
    end
    object ProdutosExcelAlteracaoies_colunas: TLargeintField
      FieldName = 'ies_colunas'
      Origin = '"pedido_produto"."ies_colunas"'
    end
    object ProdutosExcelAlteracaotxt_status_producao: TMemoField
      FieldName = 'txt_status_producao'
      Origin = '"pedido_produto"."txt_status_producao"'
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosExcelAlteracaoies_result_inspecao: TIBStringField
      FieldName = 'ies_result_inspecao'
      Origin = '"pedido_produto"."ies_result_inspecao"'
      FixedChar = True
      Size = 1
    end
    object ProdutosExcelAlteracaoies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"pedido_produto"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object ProdutosExcelAlteracaoqtd_saldo: TIBBCDField
      FieldName = 'qtd_saldo'
      Origin = '"pedido_produto"."qtd_saldo"'
      Precision = 18
      Size = 3
    end
    object ProdutosExcelAlteracaoqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"pedido_produto"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object ProdutosExcelAlteracaodat_upd_etd: TDateField
      FieldName = 'dat_upd_etd'
      Origin = '"pedido_produto"."dat_upd_etd"'
    end
    object ProdutosExcelAlteracaoetd_factory: TDateField
      FieldName = 'etd_factory'
      Origin = '"pedido_produto"."etd_factory"'
    end
    object ProdutosExcelAlteracaoetd_obs_cli: TMemoField
      FieldName = 'etd_obs_cli'
      Origin = '"pedido_produto"."etd_obs_cli"'
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosExcelAlteracaoetd_obs_for: TMemoField
      FieldName = 'etd_obs_for'
      Origin = '"pedido_produto"."etd_obs_for"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object adicional_desconto: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = adicional_descontoAfterDelete
    AfterPost = adicional_descontoAfterPost
    BufferChunks = 1000
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
      'select *'
      'from "adicional_desconto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_sequencia" = :num_sequencia')
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
    Left = 52
    Top = 567
    object adicional_descontocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"adicional_desconto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object adicional_descontonum_sequencia: TIntegerField
      FieldName = 'num_sequencia'
      Origin = '"adicional_desconto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object adicional_descontocod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"adicional_desconto"."cod_cliente"'
      Required = True
      Size = 12
    end
    object adicional_descontocod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"adicional_desconto"."cod_fornecedor"'
      Required = True
    end
    object adicional_descontoies_comissao: TIBStringField
      FieldName = 'ies_comissao'
      Origin = '"adicional_desconto"."ies_comissao"'
      FixedChar = True
      Size = 1
    end
    object adicional_descontoies_tipo: TIBStringField
      FieldName = 'ies_tipo'
      Origin = '"adicional_desconto"."ies_tipo"'
      FixedChar = True
      Size = 1
    end
    object adicional_descontovlr_adic_desc: TIBBCDField
      FieldName = 'vlr_adic_desc'
      Origin = '"adicional_desconto"."vlr_adic_desc"'
      Precision = 18
      Size = 2
    end
    object adicional_descontovlr_adic_desc_esp: TIBBCDField
      FieldName = 'vlr_adic_desc_esp'
      Origin = '"adicional_desconto"."vlr_adic_desc_esp"'
      Precision = 18
      Size = 2
    end
    object adicional_descontotxt_descricao: TMemoField
      FieldName = 'txt_descricao'
      Origin = '"adicional_desconto"."txt_descricao"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object emb_esp_ped: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.*'
      'from "emb_especial_ped" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido'
      '  and a."seq" = :seq_emb')
    Left = 660
    Top = 511
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'num_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_emb'
        ParamType = ptUnknown
      end>
    object emb_esp_pedcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"emb_especial_ped"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_pednum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"emb_especial_ped"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_pedseq: TIntegerField
      FieldName = 'seq'
      Origin = '"emb_especial_ped"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_pedden_embalagem: TIBStringField
      FieldName = 'den_embalagem'
      Origin = '"emb_especial_ped"."den_embalagem"'
      Size = 75
    end
    object emb_esp_pedqtd_total: TIBBCDField
      FieldName = 'qtd_total'
      Origin = '"emb_especial_ped"."qtd_total"'
      Precision = 18
      Size = 3
    end
    object emb_esp_pedvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"emb_especial_ped"."vol_total"'
      Precision = 18
      Size = 3
    end
    object emb_esp_pedpes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"emb_especial_ped"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object emb_esp_pedpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_ped"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object emb_esp_pedqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"emb_especial_ped"."qtd_caixas"'
    end
    object emb_esp_pedqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_ped"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object emb_esp_pedpes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"emb_especial_ped"."pes_unitario"'
    end
    object emb_esp_pedaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"emb_especial_ped"."altura"'
      Precision = 9
      Size = 4
    end
    object emb_esp_pedlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"emb_especial_ped"."largura"'
      Precision = 9
      Size = 4
    end
    object emb_esp_pedprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"emb_especial_ped"."profundidade"'
      Precision = 9
      Size = 4
    end
    object emb_esp_pedpes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = '"emb_especial_ped"."pes_bruto_cx"'
    end
    object emb_esp_pedmesclar: TIBStringField
      FieldName = 'mesclar'
      Origin = '"emb_especial_ped"."mesclar"'
      FixedChar = True
      Size = 1
    end
  end
  object produtos_pkl: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '/* Pedido Packing */'
      
        'select INVL(a."seq_pallet",0) "seq_pallet", a."seq_emb_esp", a."' +
        'ies_emb_esp", a."cod_produto", a."vlr_unitario",'
      'MIN(a."seq_pkl") "seq_pkl",'
      'SUM(a."qtd_produto") "qtd_produto",'
      
        'SUM(a."qtd_export_box") "qtd_export_box",                       ' +
        '                              '
      
        'SUM(a."vol_caixas") "vol_caixas",                               ' +
        '                              '
      
        'SUM(a."pes_bruto") "pes_bruto",                                 ' +
        '                              '
      
        'SUM(a."pes_liquido") "pes_liquido",                             ' +
        '                              '
      
        'SUM(a."qtd_pallet") "qtd_pallet",                               ' +
        '                              '
      
        'SUM(a."pes_bruto_pallet") "pes_bruto_pallet",                   ' +
        '                              '
      
        'SUM(a."pes_liquido_pallet") "pes_liquido_pallet",               ' +
        '                              '
      
        'SUM(a."comprimento_pallet") "comprimento_pallet",               ' +
        '                              '
      
        'SUM(a."largura_pallet") "largura_pallet",                       ' +
        '                              '
      
        'SUM(a."altura_pallet") "altura_pallet",                         ' +
        '                              '
      
        'SUM(a."volume_pallet") "volume_pallet",                         ' +
        '                              '
      
        'MAX(e."sigla_i") "sigla_i",                                     ' +
        '                              '
      
        'MAX(e."sigla_vol_i") "sigla_vol_i",                             ' +
        '                              '
      
        'MAX(d."pes_unitario") "pes_unitario",                           ' +
        '                              '
      
        'MAX(d."ncm_cod") "ncm_cod"                                      ' +
        '                              '
      
        'from "pedido_produto" a, "produto" d, "medida" e                ' +
        '                              '
      
        'where a."cod_empresa" = :cod_empresa                            ' +
        '                              '
      
        '  and a."num_pedido" = :num_pedido                              ' +
        '                              '
      
        '  and d."cod_empresa" = a."cod_empresa"                         ' +
        '                              '
      
        '  and d."cod_produto" = a."cod_produto"                         ' +
        '                              '
      
        '  and e."cod_uni_medida" = d."cod_uni_medida"                   ' +
        '                              '
      'group by 1,2,3,4,5'
      'order by 6')
    Left = 404
    Top = 250
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
  end
  object excluir_item_emb_esp: TIBSQL
    Database = dmConnection.dbSig
    ParamCheck = True
    SQL.Strings = (
      'delete from "emb_especial_item_ped"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      '  and "seq" = :seq'
      '  and "num_sequencia" = :num_sequencia')
    Transaction = dmConnection.TransSig
    Left = 658
    Top = 547
  end
  object spr_emb_esp_ped: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_emb_esp_ped'
    Left = 692
    Top = 547
  end
  object spr_faturas_pedido: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "spr_faturas_pedido"(:cod_empresa, :num_pedido);')
    Left = 758
    Top = 516
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
    object spr_faturas_pedidonum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = 'spr_faturas_pedido.num_fatura'
      FixedChar = True
      Size = 25
    end
    object spr_faturas_pedidonum_ref_volume: TIBStringField
      FieldName = 'num_ref_volume'
      Origin = 'spr_faturas_pedido.num_ref_volume'
      FixedChar = True
      Size = 25
    end
    object spr_faturas_pedidodat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = 'spr_faturas_pedido.dat_emissao'
    end
    object spr_faturas_pedidonum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = 'spr_faturas_pedido.num_nota_fiscal'
      Visible = False
    end
    object spr_faturas_pedidoserie: TIBStringField
      FieldName = 'serie'
      Origin = 'spr_faturas_pedido.serie'
      Visible = False
      FixedChar = True
      Size = 4
    end
  end
  object ds_spr_faturas_pedido: TDataSource
    DataSet = spr_faturas_pedido
    Left = 758
    Top = 548
  end
  object spr_calc_saldo_fatura: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_calc_saldo_fatura'
    Left = 196
    Top = 503
  end
  object fatura_pagamento: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = fatura_pagamentoAfterDelete
    AfterPost = fatura_pagamentoAfterPost
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "fatura_pagamento"'
      'where'
      '  "fatura_pagamento"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "fatura_pagamento"."num_nota_fiscal" = :"OLD_num_nota_fiscal" ' +
        'and'
      '  "fatura_pagamento"."serie" = :"OLD_serie" and'
      '  "fatura_pagamento"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "fatura_pagamento"'
      
        '  ("fatura_pagamento"."cod_empresa", "fatura_pagamento"."num_not' +
        'a_fiscal", '
      
        '   "fatura_pagamento"."serie", "fatura_pagamento"."num_sequencia' +
        '", "fatura_pagamento"."vlr_pagamento", '
      
        '   "fatura_pagamento"."vlr_pagamento_esp", "fatura_pagamento"."d' +
        'at_pagamento", '
      
        '   "fatura_pagamento"."txt_pagamento", "fatura_pagamento"."num_p' +
        'edido")'
      'values'
      
        '  (:"cod_empresa", :"num_nota_fiscal", :"serie", :"num_sequencia' +
        '", :"vlr_pagamento", '
      
        '   :"vlr_pagamento_esp", :"dat_pagamento", :"txt_pagamento", :"n' +
        'um_pedido")')
    RefreshSQL.Strings = (
      'Select '
      '  "fatura_pagamento"."cod_empresa",'
      '  "fatura_pagamento"."num_nota_fiscal",'
      '  "fatura_pagamento"."serie",'
      '  "fatura_pagamento"."num_sequencia",'
      '  "fatura_pagamento"."vlr_pagamento",'
      '  "fatura_pagamento"."vlr_pagamento_esp",'
      '  "fatura_pagamento"."dat_pagamento",'
      '  "fatura_pagamento"."txt_pagamento",'
      '  "fatura_pagamento"."num_pedido"'
      'from "fatura_pagamento" '
      'where'
      '  "fatura_pagamento"."cod_empresa" = :"cod_empresa" and'
      '  "fatura_pagamento"."num_nota_fiscal" = :"num_nota_fiscal" and'
      '  "fatura_pagamento"."serie" = :"serie" and'
      '  "fatura_pagamento"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select *'
      'from "fatura_pagamento"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_nota_fiscal" = :num_nota_fiscal'
      '  and "serie" = :serie'
      '  and "num_sequencia" = :num_sequencia')
    ModifySQL.Strings = (
      'update "fatura_pagamento"'
      'set'
      '  "fatura_pagamento"."cod_empresa" = :"cod_empresa",'
      '  "fatura_pagamento"."num_nota_fiscal" = :"num_nota_fiscal",'
      '  "fatura_pagamento"."serie" = :"serie",'
      '  "fatura_pagamento"."num_sequencia" = :"num_sequencia",'
      '  "fatura_pagamento"."vlr_pagamento" = :"vlr_pagamento",'
      '  "fatura_pagamento"."vlr_pagamento_esp" = :"vlr_pagamento_esp",'
      '  "fatura_pagamento"."dat_pagamento" = :"dat_pagamento",'
      '  "fatura_pagamento"."txt_pagamento" = :"txt_pagamento",'
      '  "fatura_pagamento"."num_pedido" = :"num_pedido"'
      'where'
      '  "fatura_pagamento"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "fatura_pagamento"."num_nota_fiscal" = :"OLD_num_nota_fiscal" ' +
        'and'
      '  "fatura_pagamento"."serie" = :"OLD_serie" and'
      '  "fatura_pagamento"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 196
    Top = 535
    object fatura_pagamentocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = 'fatura_pagamento.cod_empresa'
      Required = True
    end
    object fatura_pagamentonum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = 'fatura_pagamento.num_nota_fiscal'
      Required = True
    end
    object fatura_pagamentoserie: TIBStringField
      FieldName = 'serie'
      Origin = 'fatura_pagamento.serie'
      Required = True
      Size = 4
    end
    object fatura_pagamentonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = 'fatura_pagamento.num_sequencia'
      Required = True
    end
    object fatura_pagamentovlr_pagamento: TIBBCDField
      FieldName = 'vlr_pagamento'
      Origin = 'fatura_pagamento.vlr_pagamento'
      Precision = 18
      Size = 2
    end
    object fatura_pagamentovlr_pagamento_esp: TIBBCDField
      FieldName = 'vlr_pagamento_esp'
      Origin = 'fatura_pagamento.vlr_pagamento_esp'
      Precision = 18
      Size = 2
    end
    object fatura_pagamentodat_pagamento: TDateField
      FieldName = 'dat_pagamento'
      Origin = 'fatura_pagamento.dat_pagamento'
    end
    object fatura_pagamentotxt_pagamento: TMemoField
      FieldName = 'txt_pagamento'
      Origin = 'fatura_pagamento.txt_pagamento'
      BlobType = ftMemo
      Size = 8
    end
    object fatura_pagamentonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = 'fatura_pagamento.num_pedido'
    end
  end
  object spr_vlr_esp_ped: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_vlr_esp_ped'
    Left = 236
    Top = 503
  end
  object spr_pedido_to_importacao: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_pedido_to_importacao'
    Left = 268
    Top = 130
  end
  object ProdutosDuplicados: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_produto", count(*) "conta"'
      'from "pedido_produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      'group by 1'
      'having count(*) > 1')
    Left = 284
    Top = 503
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
    object ProdutosDuplicadoscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Required = True
      Size = 15
    end
    object ProdutosDuplicadosconta: TIntegerField
      FieldName = 'conta'
      Required = True
    end
  end
  object emb_padrao: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "cby_calc_embalagem"(:cod_empresa, :cod_produto, :' +
        'qtd_produto);')
    Left = 694
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd_produto'
        ParamType = ptUnknown
      end>
    object emb_padraovol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"cby_calc_embalagem"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object emb_padraoqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"cby_calc_embalagem"."qtd_export_box"'
    end
    object emb_padraoqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"cby_calc_embalagem"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object emb_padraoqtd_master_box: TIBBCDField
      FieldName = 'qtd_master_box'
      Origin = '"cby_calc_embalagem"."qtd_master_box"'
      Precision = 9
      Size = 4
    end
    object emb_padraopes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"cby_calc_embalagem"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object emb_padraopes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"cby_calc_embalagem"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object emb_padraopes_bruto_caixa: TIBBCDField
      FieldName = 'pes_bruto_caixa'
      Origin = '"cby_calc_embalagem"."pes_bruto_caixa"'
      Precision = 18
      Size = 2
    end
    object emb_padraopes_unit_prod: TFloatField
      FieldName = 'pes_unit_prod'
      Origin = '"cby_calc_embalagem"."pes_unit_prod"'
    end
    object emb_padraopes_unit_caixa: TFloatField
      FieldName = 'pes_unit_caixa'
      Origin = '"cby_calc_embalagem"."pes_unit_caixa"'
    end
    object emb_padraocaixa_fechada: TIBStringField
      FieldName = 'caixa_fechada'
      Origin = '"cby_calc_embalagem"."caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object emb_padraoaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"cby_calc_embalagem"."altura"'
      Precision = 9
      Size = 2
    end
    object emb_padraolargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"cby_calc_embalagem"."largura"'
      Precision = 9
      Size = 2
    end
    object emb_padraocomprimento: TIBBCDField
      FieldName = 'comprimento'
      Origin = '"cby_calc_embalagem"."comprimento"'
      Precision = 9
      Size = 2
    end
    object emb_padraovol_master_box: TIBBCDField
      FieldName = 'vol_master_box'
      Origin = '"cby_calc_embalagem"."vol_master_box"'
      Precision = 18
      Size = 4
    end
    object emb_padraoobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"cby_calc_embalagem"."observacao"'
      Size = 255
    end
    object emb_padraodat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"cby_calc_embalagem"."dat_cadastro"'
    end
    object emb_padraodat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"cby_calc_embalagem"."dat_cad_dimensoes"'
    end
    object emb_padraodat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"cby_calc_embalagem"."dat_cad_peso"'
    end
    object emb_padraodat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"cby_calc_embalagem"."dat_cad_master"'
    end
    object emb_padraodat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"cby_calc_embalagem"."dat_cad_inner"'
    end
    object emb_padraoobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"cby_calc_embalagem"."obs_caixas"'
      Size = 255
    end
  end
  object spr_excped_prodlist: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_excped_prodlist'
    Left = 244
    Top = 543
  end
  object spr_excitem_prl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_excitem_prl'
    Left = 725
    Top = 549
  end
  object ProdutosEmbEsp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.*'
      '  from "pedido_produto" a'
      'where'
      '    a."cod_empresa"  = :cod_empresa'
      'and a."num_pedido" = :num_pedido'
      'and a."seq_emb_esp" = :seq_emb_esp'
      'order by a."seq_pkl"')
    Left = 820
    Top = 207
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
        Name = 'seq_emb_esp'
        ParamType = ptUnknown
      end>
  end
  object ProdutosPallets: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.*'
      '  from "pedido_produto" a'
      'where'
      '    a."cod_empresa"  = :cod_empresa'
      'and a."num_pedido" = :num_pedido'
      'and a."seq_pallet" = :seq_pallet'
      'order by a."seq_pkl"')
    Left = 860
    Top = 207
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
        Name = 'seq_pallet'
        ParamType = ptUnknown
      end>
  end
  object Pallets: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a."qtd_pallet", a."pes_pallet_vazio", a."pes_bruto_pallet' +
        '", a."pes_liquido_pallet", a."comprimento_pallet", a."largura_pa' +
        'llet", a."altura_pallet"'
      '  from "pedido_produto" a'
      'where'
      '    a."cod_empresa"  = :cod_empresa'
      'and a."num_pedido" = :num_pedido'
      'and a."seq_pallet" > 0'
      'and a."qtd_pallet" > 0'
      'and a."seq_pallet" = :seq_pallet')
    Left = 892
    Top = 207
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
        Name = 'seq_pallet'
        ParamType = ptUnknown
      end>
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel|*.xls'
    Left = 756
    Top = 607
  end
  object spr_troca_pedido_pl: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_troca_pedido_pl'
    Left = 308
    Top = 130
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'NUM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_PEDIDO_CLI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_PEDIDO_FOR'
        ParamType = ptInput
      end>
  end
  object spr_atualizar_etdfactory: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_atualizar_etdfactory'
    Left = 348
    Top = 130
  end
  object cliente_filial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select 0 "seq_filial", "nom_cliente" "nome", "endereco" "enderec' +
        'o"'
      'from "cliente" a'
      'where "cod_cliente" = :cod_cliente'
      'union'
      
        'select "seq_filial", "nom_filial" "nome", "endereco_filial" "end' +
        'ereco"'
      'from "cliente_filial" b'
      'where "cod_cliente" = :cod_cliente'
      'order by 1')
    Left = 592
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object cliente_filialseq_filial: TIntegerField
      FieldName = 'seq_filial'
      Required = True
    end
    object cliente_filialnome: TIBStringField
      FieldName = 'nome'
      Size = 50
    end
    object cliente_filialendereco: TMemoField
      FieldName = 'endereco'
      BlobType = ftMemo
      Size = 8
    end
  end
  object ds_cliente_filial: TDataSource
    DataSet = cliente_filial
    Left = 632
    Top = 40
  end
  object Fabricantes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = FabricantesAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "fabricantes"'
      'order by "nome"')
    Left = 684
    Top = 40
    object Fabricantescod_fabricante: TSmallintField
      FieldName = 'cod_fabricante'
      Origin = '"fabricantes"."cod_fabricante"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fabricantesnome: TIBStringField
      FieldName = 'nome'
      Origin = '"fabricantes"."nome"'
      Size = 50
    end
    object Fabricantesdescricao: TMemoField
      FieldName = 'descricao'
      Origin = '"fabricantes"."descricao"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsFabricantes: TDataSource
    DataSet = Fabricantes
    Left = 684
    Top = 72
  end
  object emb_esp_item_ped: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from "emb_especial_item_ped"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      '  and "seq" = :seq'
      '  and "num_sequencia" = :num_sequencia')
    Left = 726
    Top = 513
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
        Name = 'seq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_sequencia'
        ParamType = ptUnknown
      end>
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select "cod_produto", "den_produto_detpor", "den_produto", "pes_' +
        'unitario"'
      'from "produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_cliente" = :cod_cliente'
      '  and "cod_fornecedor" = :cod_fornecedor'
      'order by 3')
    Left = 292
    Top = 548
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
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object Produtoscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Produtosden_produto_detpor: TMemoField
      FieldName = 'den_produto_detpor'
      Origin = '"produto"."den_produto_detpor"'
      BlobType = ftMemo
      Size = 8
    end
    object Produtosden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object Produtospes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
  end
end
