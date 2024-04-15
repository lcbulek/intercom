inherited frmImportarPedidoCliente: TfrmImportarPedidoCliente
  Left = 350
  Top = 113
  Width = 1256
  Height = 705
  HelpType = htKeyword
  HelpKeyword = '057'
  BorderStyle = bsSizeable
  Caption = 'Prepara'#231#227'o de Pedidos'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 1248
    Height = 199
    object Panel2: TPanel [0]
      Left = 2
      Top = 2
      Width = 1244
      Height = 195
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      TabStop = True
      OnEnter = Panel1Enter
      object Label1: TLabel
        Left = 5
        Top = 5
        Width = 49
        Height = 14
        Caption = 'Cliente'
      end
      object Label2: TLabel
        Left = 367
        Top = 6
        Width = 98
        Height = 14
        Caption = 'Pedido Cliente'
        FocusControl = dbNumPedidoCli
      end
      object Label3: TLabel
        Left = 5
        Top = 46
        Width = 70
        Height = 14
        Caption = 'Fornecedor'
      end
      object Label4: TLabel
        Left = 748
        Top = 6
        Width = 56
        Height = 14
        Caption = 'Situa'#231#227'o'
        FocusControl = dbeSituacao
      end
      object Label5: TLabel
        Left = 646
        Top = 6
        Width = 84
        Height = 14
        Caption = 'Data Emiss'#227'o'
      end
      object Label6: TLabel
        Left = 6
        Top = 99
        Width = 70
        Height = 14
        Caption = 'Valor Real'
        FocusControl = DBEdit4
      end
      object Label7: TLabel
        Left = 287
        Top = 99
        Width = 70
        Height = 14
        Caption = 'Volume(m'#179')'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 195
        Top = 99
        Width = 49
        Height = 14
        Caption = 'Volumes'
        FocusControl = DBEdit7
      end
      object Label9: TLabel
        Left = 379
        Top = 99
        Width = 77
        Height = 14
        Caption = 'Pes L'#237'q(Kg)'
        FocusControl = DBEdit8
      end
      object Label10: TLabel
        Left = 471
        Top = 99
        Width = 91
        Height = 14
        Caption = 'Pes Bruto(Kg)'
        FocusControl = DBEdit9
      end
      object Label22: TLabel
        Left = 537
        Top = 5
        Width = 105
        Height = 14
        Caption = 'Pedido Intercom'
      end
      object Label27: TLabel
        Left = 97
        Top = 99
        Width = 63
        Height = 14
        Caption = 'Valor Esp'
        FocusControl = DBEdit4
      end
      object Label30: TLabel
        Left = 576
        Top = 99
        Width = 49
        Height = 14
        Caption = 'Volumes'
        FocusControl = DBEdit5
      end
      object Label31: TLabel
        Left = 669
        Top = 99
        Width = 70
        Height = 14
        Caption = 'Volume(m'#179')'
        FocusControl = DBEdit21
      end
      object Label32: TLabel
        Left = 761
        Top = 99
        Width = 77
        Height = 14
        Caption = 'Pes L'#237'q(Kg)'
        FocusControl = DBEdit22
      end
      object Label35: TLabel
        Left = 854
        Top = 99
        Width = 91
        Height = 14
        Caption = 'Pes Bruto(Kg)'
        FocusControl = DBEdit23
      end
      object Label24: TLabel
        Left = 367
        Top = 46
        Width = 70
        Height = 14
        Caption = 'Fabricante'
      end
      object dbcCliente: TDBLookupComboBox
        Left = 5
        Top = 21
        Width = 356
        Height = 22
        DataField = 'cod_cliente'
        DataSource = dsIBDataSet
        DropDownRows = 30
        KeyField = 'cod_cliente'
        ListField = 'cod_cliente'
        ListSource = dsClientes
        TabOrder = 0
        OnClick = dbcClienteClick
      end
      object dbNumPedidoCli: TDBEdit
        Left = 367
        Top = 21
        Width = 167
        Height = 22
        CharCase = ecUpperCase
        DataField = 'num_pedido_cli'
        DataSource = dsIBDataSet
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dbeSituacao: TDBEdit
        Left = 748
        Top = 21
        Width = 102
        Height = 24
        TabStop = False
        Color = clInfoBk
        DataField = 'calSituacao'
        DataSource = dsIBDataSet
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit4: TDBEdit
        Left = 6
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'vlr_liquido'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit6: TDBEdit
        Left = 287
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'vol_caixas'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit7: TDBEdit
        Left = 195
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'qtd_caixas'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit8: TDBEdit
        Left = 379
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'pes_liquido'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit9: TDBEdit
        Left = 471
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'pes_bruto'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 14
      end
      object dbeNumPedido: TDBEdit
        Left = 538
        Top = 21
        Width = 106
        Height = 22
        DataField = 'num_pedido'
        DataSource = dsIBDataSet
        TabOrder = 2
      end
      object dbcFornecedor: TDBLookupComboBox
        Left = 5
        Top = 62
        Width = 356
        Height = 22
        DataField = 'lkpFornecedor'
        DataSource = dsIBDataSet
        DropDownRows = 40
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 97
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'vlr_liquido_esp'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 15
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 646
        Top = 49
        Width = 122
        Height = 34
        Caption = 'Pallets'
        Columns = 2
        DataField = 'ies_pallets'
        DataSource = dsIBDataSet
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
      end
      object Panel12: TPanel
        Left = 2
        Top = 140
        Width = 1240
        Height = 53
        Align = alBottom
        TabOrder = 16
        object btnFiltrar: TBitBtn
          Left = 9
          Top = 7
          Width = 129
          Height = 25
          Action = actFiltrar
          Caption = 'Filtrar'
          TabOrder = 0
          Glyph.Data = {
            06030000424D060300000000000036000000280000000F0000000F0000000100
            180000000000D0020000CE0E0000C40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000
            00FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF000000FFFF00FF0000000000FF00FF000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFF00FF0000FF00
            00000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF000000FFFF00FF0000FF0000000000FF00FFFF00FF000000FF00FFFF00FF
            FF00FF000000000000000000000000000000FFFF00FF0000FF0000000000FF00
            FFFF00FFFF00FF000000FF00FFFF00FF00000080800080800080800080800080
            8000000000FF0000000000FF00FFFF00FFFF00FFFF00FF000000FF00FF808080
            808000FFFF00FFFFFFFFFF00FFFFFF808000808000000000FF00FFFF00FFFF00
            FFFF00FFFF00FF000000FF00FF808080FFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FFFF808000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF808080
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00808000000000FF00FFFF00FFFF00
            FFFF00FFFF00FF000000FF00FF808080FFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FFFF808000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF808080
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00808000000000FF00FFFF00FFFF00
            FFFF00FFFF00FF000000FF00FFFF00FF808080FFFFFFFFFF00FFFFFFFFFF00FF
            FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
            FF00FF808080808080808080808080808080FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF000000}
        end
        object btnNovo: TBitBtn
          Left = 149
          Top = 7
          Width = 129
          Height = 25
          Action = actNovo
          Caption = 'Novo'
          TabOrder = 1
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00E7CECE00FFCEC600FFCEC600FFCEC600FFCEC600FFCEC600FFCEC600FFCE
            C600FFCEC600FFCEC600FFCEC600844A4A00FF00FF00FF00FF00FF00FF00FF00
            FF00CECECE00FFDEC600FFDEC600FFDEBD00FFD6BD00FFD6B500FFD6B500FFD6
            AD00FFD6AD00FFCEAD00F7CEAD0084525200FF00FF00FF00FF00FF00FF00FF00
            FF00D6D6D600FFE7CE00FFDEC600FFDEC600FFDEBD00FFDEBD00FFD6B500FFD6
            B500FFD6B500FFD6AD00FFCEAD0084525200FF00FF00FF00FF00FF00FF00FF00
            FF00D6D6D600FFE7CE00FFE7CE00FFDEC600FFDEC600FFDEBD00FFDEBD00FFD6
            BD00FFD6B500FFD6B500FFD6AD0084525200FF00FF00FF00FF00FF00FF00FF00
            FF00D6D6D600FFE7D600FFE7D600FFE7CE00FFDECE00FFDEC600FFDEC600FFDE
            BD00FFD6BD00FFD6B500FFD6B50084525200FF00FF00FF00FF00FF00FF00FF00
            FF00D6D6D600FFEFDE00FFE7D600FFE7D600FFE7CE00FFE7CE00FFDEC600FFDE
            C600FFDEBD00FFDEBD00FFD6B50084525200FF00FF00FF00FF00FF00FF00FF00
            FF00E7E7E700FFEFDE00FFEFDE00FFEFD600FFE7D600FFE7CE00FFE7CE00FFDE
            C600FFDEC600FFDEC600FFDEBD009C6B6B00FF00FF00FF00FF00FF00FF00FF00
            FF00E7E7E700FFF7E700FFEFE700FFEFDE00FFEFDE00FFE7D600FFE7D600FFE7
            CE00FFE7CE00FFDEC600FFDEC6009C6B6B00FF00FF00FF00FF00FF00FF00FF00
            FF00E7E7E700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFDE00FFEFD600FFE7
            D600FFE7CE00FFE7CE00FFDEC600A57B7300FF00FF00FF00FF00FF00FF00FF00
            FF00E7E7E700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFDE00FFEF
            DE00FFE7D600FFE7D600FFE7CE00A57B7300FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFF7F700FFF7EF00FFF7EF00FFF7EF00FFF7E700FFEFE700FFEF
            DE00FFEFDE00FFE7D600FFE7D600A57B7300FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFFFF700FFFFF700FFF7F700FFF7EF00FFF7EF00FFF7E700FFEF
            E700FFEFDE00FFEFDE00FFEFD600A57B7300FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7F700FFF7EF00FFF7EF00FFF7
            EF00FFF7E700F78C0000E77B00009C6B6B00FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
            EF00FFF7EF00FFBD63009C6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EF
            E700F7EFE7009C6B6B00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object btnExcluirPed: TBitBtn
          Left = 289
          Top = 7
          Width = 129
          Height = 25
          Action = actExcluirPedido
          Caption = 'Excluir Pedido'
          TabOrder = 2
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00E7CECE00FFCEC600FFCEC600FFCEC600FFCEC600FFCEC600FFCEC600FFCE
            C600FFCEC600FFCEC600FFCEC600844A4A00FF00FF00FF00FF00FF00FF00FF00
            FF00CECECE00FFDEC600FFDEC600FFDEBD00FFD6BD00FFD6B500FFD6B500FFD6
            AD00FFD6AD00FFCEAD00F7CEAD0084525200FF00FF00FF00FF00FF00FF00FF00
            FF00D6D6D600FFE7CE00FFDEC600FFDEC600FFDEBD00FFDEBD00FFD6B500FFD6
            B500FFD6B500FFD6AD00FFCEAD0084525200FF00FF00FF00FF00FF00FF00FF00
            FF00D6D6D600FFE7CE00FFE7CE00FFDEC600FFDEC600FFDEBD00FFDEBD00FFD6
            BD00FFD6B500FFD6B500FFD6AD0084525200FF00FF00FF00FF00FF00FF00FF00
            FF00D6D6D600FFE7D600FFE7D600FFE7CE00FFDECE00FFDEC600FFDEC600FFDE
            BD00FFD6BD00FFD6B500FFD6B50084525200FF00FF00FF00FF00FF00FF00FF00
            FF00D6D6D600FFEFDE00FFE7D600FFE7D600FFE7CE00FFE7CE00FFDEC600FFDE
            C600FFDEBD00FFDEBD00FFD6B50084525200FF00FF00FF00FF00FF00FF00FF00
            FF00E7E7E700FFEFDE00FFEFDE00FFEFD600FFE7D600FFE7CE00FFE7CE00FFDE
            C600FFDEC600FFDEC600FFDEBD009C6B6B00FF00FF00FF00FF00FF00FF00FF00
            FF00E7E7E700FFF7E700FFEFE700FFEFDE00FFEFDE00FFE7D600FFE7D600FFE7
            CE00FFE7CE00FFDEC600FFDEC6009C6B6B00FF00FF00FF00FF00FF00FF00FF00
            FF00E7E7E700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFDE00FFEFD600FFE7
            D600FFE7CE00FFE7CE00FFDEC600A57B7300FF00FF00FF00FF00FF00FF00FF00
            FF00E7E7E700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFDE00FFEF
            DE00FFE7D600FFE7D600FFE7CE00A57B7300FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFF7F700FFF7EF00FFF7EF00FFF7EF00FFF7E700FFEFE700FFEF
            DE00FFEFDE00FFE7D600FFE7D600A57B7300FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFFFF700FFFFF700FFF7F700FFF7EF00FFF7EF00FFF7E700FFEF
            E700FFEFDE00FFEFDE00FFEFD600A57B7300FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7F700FFF7EF00FFF7EF00FFF7
            EF00FFF7E700F78C0000E77B00009C6B6B00FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
            EF00FFF7EF00FFBD63009C6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EF
            E700F7EFE7009C6B6B00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object btnValidar: TBitBtn
          Left = 427
          Top = 7
          Width = 114
          Height = 25
          Caption = '&V'#225'lidar'
          Enabled = False
          TabOrder = 3
          OnClick = Validar
          Kind = bkAll
        end
        object btnGerar: TBitBtn
          Left = 551
          Top = 7
          Width = 114
          Height = 25
          Action = actGerarExcel
          Caption = 'Gerar'
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
        object btnImportar: TBitBtn
          Left = 675
          Top = 8
          Width = 114
          Height = 24
          Action = actImportarExcel
          Caption = 'Importar'
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
        object cbModelo: TCheckBox
          Left = 553
          Top = 34
          Width = 211
          Height = 13
          Caption = 'Gerar planilha com produtos'
          TabOrder = 8
          WordWrap = True
        end
        object btnPedido: TBitBtn
          Left = 800
          Top = 7
          Width = 114
          Height = 25
          Caption = 'Criar Pedido'
          Enabled = False
          TabOrder = 6
          OnClick = btnPedidoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
            0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
            0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
            0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
            0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
            0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
            5555557FFFFF7755555555500000005555555577777775555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object panGauge: TPanel
          Left = 770
          Top = 36
          Width = 144
          Height = 9
          BevelInner = bvLowered
          BevelOuter = bvLowered
          ParentShowHint = False
          ShowHint = False
          TabOrder = 9
        end
        object ies_base_comissao: TDBRadioGroup
          Left = 944
          Top = 0
          Width = 193
          Height = 52
          Caption = 'Base Comiss'#227'o'
          DataField = 'ies_base_comissao'
          DataSource = dsIBDataSet
          Items.Strings = (
            'FOR(Real)   CLI(Esp)'
            'FOR(Esp)    CLI(Real)')
          TabOrder = 7
          TabStop = True
          Values.Strings = (
            '1'
            '2')
        end
      end
      object DBEdit5: TDBEdit
        Left = 576
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'qtd_pallets'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 17
      end
      object DBEdit21: TDBEdit
        Left = 669
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'vol_pallets'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 18
      end
      object DBEdit22: TDBEdit
        Left = 761
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'pes_liq_pallets'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 19
      end
      object DBEdit23: TDBEdit
        Left = 854
        Top = 114
        Width = 90
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'pes_bruto_pallets'
        DataSource = dsIBDataSet
        ReadOnly = True
        TabOrder = 20
      end
      object JvStaticText1: TJvStaticText
        Left = 195
        Top = 86
        Width = 366
        Height = 15
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 21
        TextMargins.X = 0
        TextMargins.Y = 0
        WordWrap = False
      end
      object JvStaticText2: TJvStaticText
        Left = 576
        Top = 86
        Width = 366
        Height = 15
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 22
        TextMargins.X = 0
        TextMargins.Y = 0
        WordWrap = False
      end
      object JvStaticText3: TJvStaticText
        Left = 6
        Top = 86
        Width = 179
        Height = 15
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 23
        TextMargins.X = 0
        TextMargins.Y = 0
        WordWrap = False
      end
      object ies_preco_esp: TDBRadioGroup
        Left = 781
        Top = 49
        Width = 130
        Height = 34
        Caption = 'Pre'#231'os Especiais'
        Columns = 2
        DataField = 'ies_preco_esp'
        DataSource = dsIBDataSet
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ReadOnly = True
        TabOrder = 7
        Values.Strings = (
          'S'
          'N')
      end
      object ies_comissao: TDBRadioGroup
        Left = 943
        Top = 43
        Width = 193
        Height = 95
        Caption = 'Requerer Comiss'#227'o de:'
        DataField = 'ies_comissao'
        DataSource = dsIBDataSet
        Items.Strings = (
          'Cliente'
          'Fornecedor'
          'Cliente e Fornecedor'
          'Sem comiss'#227'o')
        ReadOnly = True
        TabOrder = 8
        Values.Strings = (
          '2'
          '1'
          '3'
          '0')
      end
      object dtpDataEmissao: TJvDBDatePickerEdit
        Left = 646
        Top = 21
        Width = 96
        Height = 22
        AllowNoDate = True
        DataField = 'dat_cadastro'
        DataSource = dsIBDataSet
        DateFormat = 'dd.MM.yyyy'
        DateSeparator = '.'
        StoreDateFormat = True
        TabOrder = 3
      end
      object dbcFabricante: TDBLookupComboBox
        Left = 368
        Top = 62
        Width = 277
        Height = 22
        DataField = 'lkpFabricante'
        DataSource = dsIBDataSet
        DropDownRows = 40
        TabOrder = 5
      end
    end
    inherited Button1: TButton
      Left = 1008
      Top = 10
      Width = 225
      Height = 24
      Hint = 'Procurar outros pedidos em preparacao'
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Pedidos em prepara'#231#227'o'
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 641
    Width = 1248
    inherited ToolBar1: TToolBar
      Width = 1248
    end
    inherited ActionList1: TActionList
      Left = 446
      Top = 2
      inherited acFirst: TDataSetFirst
        DataSource = dsIBDataSetGrade
      end
      inherited acPrior: TDataSetPrior
        DataSource = dsIBDataSetGrade
      end
      inherited acNext: TDataSetNext
        DataSource = dsIBDataSetGrade
      end
      inherited acLast: TDataSetLast
        DataSource = dsIBDataSetGrade
      end
      inherited acInsert: TDataSetInsert
        DataSource = dsIBDataSetGrade
      end
      inherited acDelete: TDataSetDelete
        OnExecute = fr_FmNavigator1acDeleteExecute
        DataSource = dsIBDataSetGrade
      end
      inherited acEdit: TDataSetEdit
        DataSource = dsIBDataSetGrade
      end
      inherited acPost: TDataSetPost
        OnExecute = fr_FmNavigator1acPostExecute
        DataSource = dsIBDataSetGrade
      end
      inherited acCancel: TDataSetCancel
        DataSource = dsIBDataSetGrade
      end
      inherited acRefresh: TDataSetRefresh
        DataSource = dsIBDataSetGrade
      end
    end
    inherited ImageList1: TImageList
      Left = 480
      Top = 2
    end
  end
  inherited PageControl1: TPageControl
    Top = 199
    Width = 1248
    Height = 442
    inherited TabSheet1: TTabSheet
      Caption = 'Produtos'
      inherited DBGrade: TJvDBUltimGrid
        Width = 1240
        Height = 324
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OnDrawColumnCell = DBGradeDrawColumnCell
        MultiSelect = True
        ShowCellHint = True
        OnShowCellHint = DBGradeShowCellHint
        Columns = <
          item
            Expanded = False
            FieldName = 'seq'
            Width = 25
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'cod_produto'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 290
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'qtde'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido'
            Width = 80
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'preco_esp'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido_esp'
            Title.Caption = 'Valor Esp'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vol_caixas'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_caixas'
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
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calSituacao'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'un_cx_master'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ies_emb_esp'
            Width = 26
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'seq_pallet'
            Width = 25
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 372
        Width = 1240
        Height = 41
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        OnEnter = Panel4Enter
        OnExit = Panel4Exit
        object Label33: TLabel
          Left = 6
          Top = 0
          Width = 91
          Height = 14
          Caption = 'Busca produto'
        end
        object Label34: TLabel
          Left = 169
          Top = 1
          Width = 105
          Height = 14
          Caption = 'Busca descri'#231#227'o'
        end
        object edBuscaCodigo: TEdit
          Left = 6
          Top = 14
          Width = 143
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 0
          OnKeyDown = edBuscaCodigoKeyDown
        end
        object edBuscaDesc: TEdit
          Left = 169
          Top = 14
          Width = 261
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 75
          TabOrder = 1
          OnKeyDown = edBuscaDescKeyDown
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 324
        Width = 1240
        Height = 48
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 2
        OnEnter = DBGradeEnter
        object Label11: TLabel
          Left = 8
          Top = 4
          Width = 98
          Height = 14
          Caption = 'C'#243'digo Produto'
          FocusControl = dbeCodProduto
        end
        object Label13: TLabel
          Left = 185
          Top = 4
          Width = 21
          Height = 14
          Caption = 'Seq'
          FocusControl = DBEdit12
        end
        object Label14: TLabel
          Left = 216
          Top = 4
          Width = 63
          Height = 14
          Caption = 'Descricao'
        end
        object Label15: TLabel
          Left = 630
          Top = 4
          Width = 70
          Height = 14
          Caption = 'Quantidade'
          FocusControl = DBEdit14
        end
        object Label16: TLabel
          Left = 732
          Top = 4
          Width = 35
          Height = 14
          Caption = 'Pre'#231'o'
          FocusControl = DBEdit15
        end
        object Label17: TLabel
          Left = 834
          Top = 4
          Width = 77
          Height = 14
          Caption = 'Vlr L'#237'quido'
          FocusControl = DBEdit16
        end
        object SpeedButton1: TSpeedButton
          Left = 161
          Top = 19
          Width = 23
          Height = 22
          Action = fr_FmNavigator1.acF3
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00189CCE0029A5
            D600189CD600088CC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BDA5A5004A5A7300FF00FF00FF00FF00219CCE00A5EF
            F7006BEFFF005ADEF7004AC6E70039BDE70021A5D6000894CE000894CE00FF00
            FF00FF00FF00BDA5A500526384001073E7003994DE00FF00FF00088CC6009CDE
            EF008CFFFF0084FFFF0084FFFF007BFFFF007BF7FF0063E7F7004ACEEF0039BD
            E7007394A5005A6384001073DE0031A5FF00299CFF00FF00FF001094CE005ABD
            DE009CFFFF0073F7FF007BF7FF0073F7FF008CDEE70084D6DE007BE7EF0094BD
            C600526B8C001073D60031A5FF00319CFF00FF00FF00FF00FF0021A5D6004AC6
            E7009CEFFF007BF7FF0084DEDE00BDCEBD00DEBDA500D6B59C00AD9C8C00847B
            7300427BAD0031A5FF0039ADFF00189CD600FF00FF00FF00FF0021ADDE008C94
            A5008CCEE7008CD6D600CEB5AD00F7F7DE00FFFFDE00FFFFDE00FFFFC600CEB5
            8C00C6ADA5004AC6FF0052D6FF0042C6E700FF00FF00FF00FF0021ADE700AD73
            6B005ABDDE00B5A59C00F7F7EF00FFFFFF00FFFFE700FFFFD600FFF7C600FFE7
            A500DEA584006BD6EF005AD6FF006BE7FF000894CE00FF00FF0021ADE700B573
            6B00A5CEDE00CEB59C00FFFFEF00FFFFF700FFFFEF00FFFFD600F7DEAD00F7CE
            8400E7BD940094C6C60052D6FF007BF7FF0029ADDE00FF00FF0029B5E700BD7B
            6B00FFF7EF00D6BDA500FFFFDE00FFFFDE00FFFFE700FFFFCE00EFBD8400F7BD
            7300E7C69C0094C6C6004AD6FF007BF7FF0052D6EF00FF00FF0029ADE700C68C
            7300FFFFFF00CEAD9C00FFFFCE00FFFFCE00FFE7AD00F7C68C00F7CE9400FFEF
            B500D6AD94009CCED6007BE7FF009CFFFF0094FFFF0021A5D60029B5E700CE94
            7300FFFFF700DEC6BD00DEC69C00FFE7A500FFC68400FFD68C00FFF7E700E7DE
            CE008CA5AD006BCEE7005ABDE70063BDDE006BC6E70029A5D60029B5E700D69C
            7300FFFFF700FFFFFF00E7D6CE00EFCEA500E7C69C00E7C69C00CEB59C00B58C
            8C0073E7FF006BEFFF00109CD600FF00FF00FF00FF00FF00FF0018A5DE00DEA5
            7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFF7EF00B5847B00BD7B4A00B56B
            520052C6E70052C6E700189CD600FF00FF00FF00FF00FF00FF00FF00FF00E7A5
            7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5847B00E79C5200FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7AD
            7B00D6946B00D6946B00D6946B00D6946B00D6946B00B57B6B00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object Label28: TLabel
          Left = 937
          Top = 4
          Width = 98
          Height = 14
          Caption = 'Pre'#231'o Especial'
          FocusControl = DBEdit15
        end
        object Label29: TLabel
          Left = 1040
          Top = 4
          Width = 105
          Height = 14
          Caption = 'Vlr L'#237'quido Esp'
          FocusControl = DBEdit15
        end
        object dbeCodProduto: TDBEdit
          Left = 8
          Top = 18
          Width = 150
          Height = 22
          CharCase = ecUpperCase
          DataField = 'cod_produto'
          DataSource = dsIBDataSetGrade
          TabOrder = 0
        end
        object DBEdit12: TDBEdit
          Left = 185
          Top = 18
          Width = 30
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'seq'
          DataSource = dsIBDataSetGrade
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 216
          Top = 18
          Width = 409
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'Descricao'
          DataSource = dsIBDataSetGrade
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 630
          Top = 18
          Width = 100
          Height = 22
          DataField = 'qtde'
          DataSource = dsIBDataSetGrade
          TabOrder = 2
          OnExit = DBEdit14Exit
        end
        object DBEdit15: TDBEdit
          Left = 732
          Top = 18
          Width = 100
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'preco'
          DataSource = dsIBDataSetGrade
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 834
          Top = 18
          Width = 100
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'vlr_liquido'
          DataSource = dsIBDataSetGrade
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit19: TDBEdit
          Left = 937
          Top = 18
          Width = 100
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'preco_esp'
          DataSource = dsIBDataSetGrade
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit20: TDBEdit
          Left = 1040
          Top = 18
          Width = 100
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'vlr_liquido_esp'
          DataSource = dsIBDataSetGrade
          ReadOnly = True
          TabOrder = 7
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Produtos com erros'
      ImageIndex = 2
      object Panel10: TPanel
        Left = 0
        Top = 361
        Width = 1232
        Height = 41
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        OnEnter = Panel4Enter
        OnExit = Panel4Exit
        object Label12: TLabel
          Left = 6
          Top = 0
          Width = 91
          Height = 14
          Caption = 'Busca produto'
        end
        object Label18: TLabel
          Left = 169
          Top = 1
          Width = 105
          Height = 14
          Caption = 'Busca descri'#231#227'o'
        end
        object edBuscaCodigo1: TEdit
          Left = 6
          Top = 14
          Width = 143
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 0
          OnKeyDown = edBuscaCodigo1KeyDown
        end
        object edBuscaDesc1: TEdit
          Left = 169
          Top = 14
          Width = 261
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 75
          TabOrder = 1
          OnKeyDown = edBuscaDesc1KeyDown
        end
        object btnConfCaixas: TBitBtn
          Left = 632
          Top = 8
          Width = 141
          Height = 25
          Action = actConfCaixas
          Caption = 'Confirmar Caixa'
          Enabled = False
          TabOrder = 2
        end
        object btnConfAllCaixas: TBitBtn
          Left = 776
          Top = 8
          Width = 202
          Height = 25
          Action = actConfAllCaixas
          Caption = 'Confirmar Todas as Caixas'
          Enabled = False
          TabOrder = 3
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 313
        Width = 1232
        Height = 48
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 1
        object Label19: TLabel
          Left = 8
          Top = 4
          Width = 98
          Height = 14
          Caption = 'C'#243'digo Produto'
          FocusControl = DBEdit1
        end
        object Label20: TLabel
          Left = 185
          Top = 4
          Width = 21
          Height = 14
          Caption = 'Seq'
          FocusControl = DBEdit3
        end
        object Label21: TLabel
          Left = 216
          Top = 4
          Width = 63
          Height = 14
          Caption = 'Descricao'
        end
        object Label23: TLabel
          Left = 630
          Top = 4
          Width = 70
          Height = 14
          Caption = 'Quantidade'
          FocusControl = DBEdit11
        end
        object Label25: TLabel
          Left = 732
          Top = 4
          Width = 98
          Height = 14
          Caption = 'Pre'#231'o Unit'#225'rio'
          FocusControl = DBEdit17
        end
        object Label26: TLabel
          Left = 834
          Top = 4
          Width = 77
          Height = 14
          Caption = 'Vlr L'#237'quido'
          FocusControl = DBEdit18
        end
        object SpeedButton2: TSpeedButton
          Left = 161
          Top = 18
          Width = 23
          Height = 22
          Action = fr_FmNavigator1.acF3
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00189CCE0029A5
            D600189CD600088CC600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BDA5A5004A5A7300FF00FF00FF00FF00219CCE00A5EF
            F7006BEFFF005ADEF7004AC6E70039BDE70021A5D6000894CE000894CE00FF00
            FF00FF00FF00BDA5A500526384001073E7003994DE00FF00FF00088CC6009CDE
            EF008CFFFF0084FFFF0084FFFF007BFFFF007BF7FF0063E7F7004ACEEF0039BD
            E7007394A5005A6384001073DE0031A5FF00299CFF00FF00FF001094CE005ABD
            DE009CFFFF0073F7FF007BF7FF0073F7FF008CDEE70084D6DE007BE7EF0094BD
            C600526B8C001073D60031A5FF00319CFF00FF00FF00FF00FF0021A5D6004AC6
            E7009CEFFF007BF7FF0084DEDE00BDCEBD00DEBDA500D6B59C00AD9C8C00847B
            7300427BAD0031A5FF0039ADFF00189CD600FF00FF00FF00FF0021ADDE008C94
            A5008CCEE7008CD6D600CEB5AD00F7F7DE00FFFFDE00FFFFDE00FFFFC600CEB5
            8C00C6ADA5004AC6FF0052D6FF0042C6E700FF00FF00FF00FF0021ADE700AD73
            6B005ABDDE00B5A59C00F7F7EF00FFFFFF00FFFFE700FFFFD600FFF7C600FFE7
            A500DEA584006BD6EF005AD6FF006BE7FF000894CE00FF00FF0021ADE700B573
            6B00A5CEDE00CEB59C00FFFFEF00FFFFF700FFFFEF00FFFFD600F7DEAD00F7CE
            8400E7BD940094C6C60052D6FF007BF7FF0029ADDE00FF00FF0029B5E700BD7B
            6B00FFF7EF00D6BDA500FFFFDE00FFFFDE00FFFFE700FFFFCE00EFBD8400F7BD
            7300E7C69C0094C6C6004AD6FF007BF7FF0052D6EF00FF00FF0029ADE700C68C
            7300FFFFFF00CEAD9C00FFFFCE00FFFFCE00FFE7AD00F7C68C00F7CE9400FFEF
            B500D6AD94009CCED6007BE7FF009CFFFF0094FFFF0021A5D60029B5E700CE94
            7300FFFFF700DEC6BD00DEC69C00FFE7A500FFC68400FFD68C00FFF7E700E7DE
            CE008CA5AD006BCEE7005ABDE70063BDDE006BC6E70029A5D60029B5E700D69C
            7300FFFFF700FFFFFF00E7D6CE00EFCEA500E7C69C00E7C69C00CEB59C00B58C
            8C0073E7FF006BEFFF00109CD600FF00FF00FF00FF00FF00FF0018A5DE00DEA5
            7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFF7EF00B5847B00BD7B4A00B56B
            520052C6E70052C6E700189CD600FF00FF00FF00FF00FF00FF00FF00FF00E7A5
            7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5847B00E79C5200FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7AD
            7B00D6946B00D6946B00D6946B00D6946B00D6946B00B57B6B00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 18
          Width = 150
          Height = 22
          CharCase = ecUpperCase
          DataField = 'cod_produto'
          DataSource = dsIBDataSetGradeErros
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 185
          Top = 18
          Width = 30
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'seq'
          DataSource = dsIBDataSetGradeErros
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 216
          Top = 18
          Width = 409
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'Descricao'
          DataSource = dsIBDataSetGradeErros
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 630
          Top = 18
          Width = 100
          Height = 22
          DataField = 'qtde'
          DataSource = dsIBDataSetGradeErros
          TabOrder = 2
          OnExit = DBEdit14Exit
        end
        object DBEdit17: TDBEdit
          Left = 732
          Top = 18
          Width = 100
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'preco'
          DataSource = dsIBDataSetGradeErros
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit18: TDBEdit
          Left = 834
          Top = 18
          Width = 100
          Height = 22
          TabStop = False
          Color = clInfoBk
          DataField = 'vlr_liquido'
          DataSource = dsIBDataSetGradeErros
          ReadOnly = True
          TabOrder = 5
        end
      end
      object DBGradeErros: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 1232
        Height = 313
        Align = alClient
        DataSource = dsIBDataSetGradeErros
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentShowHint = False
        PopupMenu = PopupMenu
        ShowHint = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        OnDrawColumnCell = DBGradeDrawColumnCell
        OnEnter = DBGradeErrosEnter
        MultiSelect = True
        ShowCellHint = True
        OnShowCellHint = DBGradeErrosShowCellHint
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 18
        Columns = <
          item
            Expanded = False
            FieldName = 'seq'
            Width = 25
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'cod_produto'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 290
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'qtde'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido'
            Width = 100
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'preco_esp'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_liquido_esp'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vol_caixas'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_caixas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_liquido'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pes_bruto'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'calSituacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'un_cx_master'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ies_emb_esp'
            Visible = True
          end>
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 916
    Top = 8
    object actFiltrar: TAction
      Caption = 'Filtrar'
      ImageIndex = 49
      ShortCut = 114
    end
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 110
      ShortCut = 115
      OnExecute = actNovoExecute
    end
    object actExcluirPedido: TAction
      Caption = 'Excluir Pedido'
      ImageIndex = 141
      OnExecute = actExcluirPedidoExecute
    end
    object actConfCaixas: TAction
      Category = 'Embalagem'
      Caption = 'Confirmar Caixa'
      OnExecute = actConfCaixasExecute
    end
    object actGerarExcel: TAction
      Category = 'Excel'
      Caption = 'Gerar'
      ImageIndex = 235
      OnExecute = actGerarExcelExecute
    end
    object actImportarExcel: TAction
      Category = 'Excel'
      Caption = 'Importar'
      ImageIndex = 235
      OnExecute = actImportarExcelExecute
    end
    object actConfAllCaixas: TAction
      Category = 'Embalagem'
      Caption = 'Confirmar Todas as Caixas'
      OnExecute = actConfAllCaixasExecute
    end
    object actAtualizarExcel: TAction
      Category = 'Excel'
      Caption = 'Atualizar'
      ImageIndex = 235
    end
  end
  inherited IBDataSet: TIBDataSet
    OnCalcFields = IBDataSetCalcFields
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "imp_ped_cli"'
      'where'
      '  "imp_ped_cli"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "imp_ped_cli"."num_pedido_cli" = :"OLD_num_pedido_cli"')
    InsertSQL.Strings = (
      'insert into "imp_ped_cli"'
      '  ("imp_ped_cli"."cod_empresa", "imp_ped_cli"."cod_cliente", '
      '"imp_ped_cli"."num_pedido_cli", '
      '   "imp_ped_cli"."num_pedido", "imp_ped_cli"."cod_fornecedor", '
      '"imp_ped_cli"."ies_situacao", '
      '   "imp_ped_cli"."dat_cadastro", "imp_ped_cli"."vlr_liquido", '
      '"imp_ped_cli"."vlr_liquido_esp", '
      '   "imp_ped_cli"."vol_caixas", "imp_ped_cli"."qtd_caixas", '
      '"imp_ped_cli"."pes_liquido", '
      '   "imp_ped_cli"."pes_bruto", "imp_ped_cli"."num_lista", '
      '"imp_ped_cli"."ies_lista_geral", '
      
        '   "imp_ped_cli"."ies_somente_lista", "imp_ped_cli"."ies_pallets' +
        '", '
      '"imp_ped_cli"."qtd_pallets", "imp_ped_cli"."vol_pallets",'
      
        '   "imp_ped_cli"."pes_liq_pallets", "imp_ped_cli"."pes_bruto_pal' +
        'lets", '
      
        '"imp_ped_cli"."ies_base_comissao", "imp_ped_cli"."cod_fabricante' +
        '")'
      'values'
      
        '  (:"cod_empresa", :"cod_cliente", :"num_pedido_cli", :"num_pedi' +
        'do", '
      ':"cod_fornecedor", '
      
        '   :"ies_situacao", :"dat_cadastro", :"vlr_liquido", :"vlr_liqui' +
        'do_esp", '
      
        '   :"vol_caixas", :"qtd_caixas", :"pes_liquido", :"pes_bruto", :' +
        '"num_lista", '
      '   :"ies_lista_geral", :"ies_somente_lista", :"ies_pallets", '
      
        '   :"qtd_pallets", :"vol_pallets", :"pes_liq_pallets", :"pes_bru' +
        'to_pallets", '
      ':"ies_base_comissao", :"cod_fabricante")')
    RefreshSQL.Strings = (
      'Select *'
      'from "imp_ped_cli" '
      'where'
      '  "imp_ped_cli"."cod_empresa" = :"cod_empresa" and'
      '  "imp_ped_cli"."cod_cliente" = :"cod_cliente" and'
      '  "imp_ped_cli"."num_pedido_cli" = :"num_pedido_cli"')
    SelectSQL.Strings = (
      'select * from "imp_ped_cli"'
      'where 1=2'
      '')
    ModifySQL.Strings = (
      'update "imp_ped_cli"'
      'set'
      '  "imp_ped_cli"."cod_empresa" = :"cod_empresa",'
      '  "imp_ped_cli"."cod_cliente" = :"cod_cliente",'
      '  "imp_ped_cli"."num_pedido_cli" = :"num_pedido_cli",'
      '  "imp_ped_cli"."num_pedido" = :"num_pedido",'
      '  "imp_ped_cli"."cod_fornecedor" = :"cod_fornecedor",'
      '  "imp_ped_cli"."ies_situacao" = :"ies_situacao",'
      '  "imp_ped_cli"."dat_cadastro" = :"dat_cadastro",'
      '  "imp_ped_cli"."vlr_liquido" = :"vlr_liquido",'
      '  "imp_ped_cli"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "imp_ped_cli"."vol_caixas" = :"vol_caixas",'
      '  "imp_ped_cli"."qtd_caixas" = :"qtd_caixas",'
      '  "imp_ped_cli"."pes_liquido" = :"pes_liquido",'
      '  "imp_ped_cli"."pes_bruto" = :"pes_bruto",'
      '  "imp_ped_cli"."num_lista" = :"num_lista",'
      '  "imp_ped_cli"."ies_lista_geral" = :"ies_lista_geral",'
      '  "imp_ped_cli"."ies_somente_lista" = :"ies_somente_lista",'
      '  "imp_ped_cli"."ies_pallets" = :"ies_pallets",'
      '  "imp_ped_cli"."qtd_pallets" = :"qtd_pallets",'
      '  "imp_ped_cli"."vol_pallets" = :"vol_pallets",'
      '  "imp_ped_cli"."pes_liq_pallets" = :"pes_liq_pallets",'
      '  "imp_ped_cli"."pes_bruto_pallets" = :"pes_bruto_pallets",'
      '  "imp_ped_cli"."ies_base_comissao" = :"ies_base_comissao",'
      '  "imp_ped_cli"."cod_fabricante" =:"cod_fabricante"'
      'where'
      '  "imp_ped_cli"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "imp_ped_cli"."num_pedido_cli" = :"OLD_num_pedido_cli"')
    Left = 21
    Top = 240
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"imp_ped_cli"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"imp_ped_cli"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object IBDataSetnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"imp_ped_cli"."num_pedido_cli"'
      OnValidate = IBDataSetnum_pedido_cliValidate
      FixedChar = True
      Size = 15
    end
    object IBDataSetnum_pedido: TIntegerField
      FieldName = 'num_pedido'
      Origin = '"imp_ped_cli"."num_pedido"'
      OnValidate = IBDataSetnum_pedidoValidate
    end
    object IBDataSetcod_fornecedor: TSmallintField
      DisplayLabel = 'Fornecedor'
      FieldName = 'cod_fornecedor'
      Origin = '"imp_ped_cli"."cod_fornecedor"'
      Required = True
    end
    object IBDataSeties_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"imp_ped_cli"."ies_situacao"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IBDataSetcalSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calSituacao'
      Size = 10
      Calculated = True
    end
    object IBDataSetdat_cadastro: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"imp_ped_cli"."dat_cadastro"'
      DisplayFormat = 'dd/mm/yy'
    end
    object IBDataSetvlr_liquido: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'vlr_liquido'
      Origin = '"imp_ped_cli"."vlr_liquido"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetvol_caixas: TIBBCDField
      DisplayLabel = 'Volume Total'
      FieldName = 'vol_caixas'
      Origin = '"imp_ped_cli"."vol_caixas"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object IBDataSetqtd_caixas: TIntegerField
      DisplayLabel = 'Total Caixas'
      FieldName = 'qtd_caixas'
      Origin = '"imp_ped_cli"."qtd_caixas"'
      DisplayFormat = '#,##0'
    end
    object IBDataSetpes_liquido: TIBBCDField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'pes_liquido'
      Origin = '"imp_ped_cli"."pes_liquido"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetpes_bruto: TIBBCDField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'pes_bruto'
      Origin = '"imp_ped_cli"."pes_bruto"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetnum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"imp_ped_cli"."num_lista"'
    end
    object IBDataSetlkpFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpFornecedor'
      LookupDataSet = Fornecedores
      LookupKeyFields = 'cod_fornecedor'
      LookupResultField = 'raz_social_reduz'
      KeyFields = 'cod_fornecedor'
      Size = 30
      Lookup = True
    end
    object IBDataSetvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"imp_ped_cli"."vlr_liquido_esp"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSeties_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"imp_ped_cli"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetqtd_pallets: TIntegerField
      DisplayLabel = 'Volumes'
      FieldName = 'qtd_pallets'
      Origin = 'imp_ped_cli.qtd_pallets'
      DisplayFormat = '#,##0'
    end
    object IBDataSetvol_pallets: TIBBCDField
      DisplayLabel = 'Volumes(m'#179')'
      FieldName = 'vol_pallets'
      Origin = 'imp_ped_cli.vol_pallets'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
    object IBDataSetpes_liq_pallets: TIBBCDField
      DisplayLabel = 'Pes L'#237'q(Kg)'
      FieldName = 'pes_liq_pallets'
      Origin = 'imp_ped_cli.pes_liq_pallets'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetpes_bruto_pallets: TIBBCDField
      DisplayLabel = 'Pes Bruto(Kg)'
      FieldName = 'pes_bruto_pallets'
      Origin = 'imp_ped_cli.pes_bruto_pallets'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSeties_preco_esp: TIBStringField
      FieldName = 'ies_preco_esp'
      Origin = '"imp_ped_cli"."ies_preco_esp"'
      FixedChar = True
      Size = 1
    end
    object IBDataSeties_comissao: TSmallintField
      FieldName = 'ies_comissao'
      Origin = '"imp_ped_cli"."ies_comissao"'
    end
    object IBDataSeties_base_comissao: TIBStringField
      FieldName = 'ies_base_comissao'
      Origin = '"imp_ped_cli"."ies_base_comissao"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetcod_fabricante: TSmallintField
      FieldName = 'cod_fabricante'
      Origin = '"imp_ped_cli"."cod_fabricante"'
    end
    object IBDataSetlkpFabricante: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpFabricante'
      LookupDataSet = Fabricantes
      LookupKeyFields = 'cod_fabricante'
      LookupResultField = 'nome'
      KeyFields = 'cod_fabricante'
      Size = 50
      Lookup = True
    end
  end
  inherited dsIBDataSet: TDataSource
    OnDataChange = dsIBDataSetDataChange
    Left = 21
    Top = 272
  end
  inherited QrAux: TIBQuery
    Left = 687
    Top = 472
  end
  inherited IBDataSetGrade: TIBDataSet
    OnCalcFields = IBDataSetGradeCalcFields
    OnNewRecord = IBDataSetGradeNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "imp_ped_cli_prod"'
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"OLD_cod_cliente" and'
      
        '  "imp_ped_cli_prod"."num_pedido_cli" = :"OLD_num_pedido_cli" an' +
        'd'
      '  "imp_ped_cli_prod"."seq" = :"OLD_seq"')
    InsertSQL.Strings = (
      'insert into "imp_ped_cli_prod"'
      
        '  ("imp_ped_cli_prod"."cod_empresa", "imp_ped_cli_prod"."cod_cli' +
        'ente", '
      
        '   "imp_ped_cli_prod"."num_pedido_cli", "imp_ped_cli_prod"."seq"' +
        ', '
      '"imp_ped_cli_prod"."cod_produto", '
      '   "imp_ped_cli_prod"."qtde", "imp_ped_cli_prod"."preco", '
      '"imp_ped_cli_prod"."preco_esp", '
      
        '   "imp_ped_cli_prod"."ies_situacao", "imp_ped_cli_prod"."dat_ca' +
        'dastro", '
      
        '   "imp_ped_cli_prod"."ies_status", "imp_ped_cli_prod"."vlr_liqu' +
        'ido", '
      '"imp_ped_cli_prod"."vlr_liquido_esp", '
      
        '   "imp_ped_cli_prod"."vol_caixas", "imp_ped_cli_prod"."qtd_caix' +
        'as", '
      '"imp_ped_cli_prod"."pes_liquido", '
      
        '   "imp_ped_cli_prod"."pes_bruto", "imp_ped_cli_prod"."ies_emb_e' +
        'sp", '
      '"imp_ped_cli_prod"."un_cx_master", '
      
        '   "imp_ped_cli_prod"."pct_comissao_f", "imp_ped_cli_prod"."pct_' +
        'comissao_c", '
      '"imp_ped_cli_prod"."dat_preco",'
      
        '   "imp_ped_cli_prod"."obs_preco", "imp_ped_cli_prod"."obs_preco' +
        '_esp", '
      
        '"imp_ped_cli_prod"."seq_emb_esp", "imp_ped_cli_prod"."seq_pallet' +
        '",'
      
        '   "imp_ped_cli_prod"."qtd_pallet", "imp_ped_cli_prod"."pes_brut' +
        'o_pallet", '
      '"imp_ped_cli_prod"."pes_liquido_pallet",'
      
        '   "imp_ped_cli_prod"."comprimento_pallet", "imp_ped_cli_prod"."' +
        'largura_pallet", '
      '"imp_ped_cli_prod"."altura_pallet",'
      
        '   "imp_ped_cli_prod"."volume_pallet", "imp_ped_cli_prod"."seq_p' +
        'kl", '
      
        '"imp_ped_cli_prod"."pes_pallet_vazio", "imp_ped_cli_prod"."ies_c' +
        'aixa_fechada")'
      'values'
      
        '  (:"cod_empresa", :"cod_cliente", :"num_pedido_cli", :"seq", :"' +
        'cod_produto", '
      
        '   :"qtde", :"preco", :"preco_esp", :"ies_situacao", :"dat_cadas' +
        'tro", :"ies_status", '
      
        '   :"vlr_liquido", :"vlr_liquido_esp", :"vol_caixas", :"qtd_caix' +
        'as", :"pes_liquido", '
      
        '   :"pes_bruto", :"ies_emb_esp", :"un_cx_master", :"pct_comissao' +
        '_f", '
      ':"pct_comissao_c", :"dat_preco", :"obs_preco", :"obs_preco_esp",'
      
        '   :"seq_emp_esp", :"seq_pallet", :"qtd_pallet", :"pes_bruto_pal' +
        'let", '
      ':"pes_liquido_pallet", :"comprimento_pallet",'
      
        '   :"largura_pallet", :"altura_pallet", :"volume_pallet", :"seq_' +
        'pkl", :"pes_pallet_vazio",'
      ':"ies_caixa_fechada")'
      '')
    RefreshSQL.Strings = (
      'Select *'
      'from "imp_ped_cli_prod" '
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"cod_cliente" and'
      '  "imp_ped_cli_prod"."num_pedido_cli" = :"num_pedido_cli" and'
      '  "imp_ped_cli_prod"."seq" = :"seq"')
    SelectSQL.Strings = (
      'select * from "imp_ped_cli_prod" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and a."num_pedido_cli" = :num_pedido_cli'
      '  and (a."ies_situacao" = '#39'I'#39
      '  or a."ies_situacao" = '#39'C'#39')'
      'order by a."seq"')
    ModifySQL.Strings = (
      'update "imp_ped_cli_prod"'
      'set'
      '  "imp_ped_cli_prod"."cod_empresa" = :"cod_empresa",'
      '  "imp_ped_cli_prod"."cod_cliente" = :"cod_cliente",'
      '  "imp_ped_cli_prod"."num_pedido_cli" = :"num_pedido_cli",'
      '  "imp_ped_cli_prod"."seq" = :"seq",'
      '  "imp_ped_cli_prod"."cod_produto" = :"cod_produto",'
      '  "imp_ped_cli_prod"."qtde" = :"qtde",'
      '  "imp_ped_cli_prod"."preco" = :"preco",'
      '  "imp_ped_cli_prod"."preco_esp" = :"preco_esp",'
      '  "imp_ped_cli_prod"."ies_situacao" = :"ies_situacao",'
      '  "imp_ped_cli_prod"."dat_cadastro" = :"dat_cadastro",'
      '  "imp_ped_cli_prod"."ies_status" = :"ies_status",'
      '  "imp_ped_cli_prod"."vlr_liquido" = :"vlr_liquido",'
      '  "imp_ped_cli_prod"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "imp_ped_cli_prod"."vol_caixas" = :"vol_caixas",'
      '  "imp_ped_cli_prod"."qtd_caixas" = :"qtd_caixas",'
      '  "imp_ped_cli_prod"."pes_liquido" = :"pes_liquido",'
      '  "imp_ped_cli_prod"."pes_bruto" = :"pes_bruto",'
      '  "imp_ped_cli_prod"."ies_emb_esp" = :"ies_emb_esp",'
      '  "imp_ped_cli_prod"."un_cx_master" = :"un_cx_master",'
      '  "imp_ped_cli_prod"."pct_comissao_f" = :"pct_comissao_f",'
      '  "imp_ped_cli_prod"."pct_comissao_c" = :"pct_comissao_c",'
      '  "imp_ped_cli_prod"."dat_preco" = :"dat_preco",'
      '  "imp_ped_cli_prod"."obs_preco" = :"obs_preco",'
      '  "imp_ped_cli_prod"."obs_preco" = :"obs_preco_esp",'
      '  "imp_ped_cli_prod"."seq_pkl" = :"seq_pkl",'
      '  "imp_ped_cli_prod"."seq_emb_esp" = :"seq_emb_esp",'
      '  "imp_ped_cli_prod"."seq_pallet" = :"seq_pallet",'
      '  "imp_ped_cli_prod"."qtd_pallet" = :"qtd_pallet",'
      '  "imp_ped_cli_prod"."pes_bruto_pallet" = :"pes_bruto_pallet",'
      
        '  "imp_ped_cli_prod"."pes_liquido_pallet" = :"pes_liquido_pallet' +
        '",'
      
        '  "imp_ped_cli_prod"."comprimento_pallet" = :"comprimento_pallet' +
        '",'
      '  "imp_ped_cli_prod"."largura_pallet" = :"largura_pallet",'
      '  "imp_ped_cli_prod"."altura_pallet" = :"altura_pallet",'
      '  "imp_ped_cli_prod"."volume_pallet" = :"volume_pallet", '
      '  "imp_ped_cli_prod"."pes_pallet_vazio" = :"pes_pallet_vazio",'
      '  "imp_ped_cli_prod"."ies_caixa_fechada" = :"ies_caixa_fechada"'
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"OLD_cod_cliente" and'
      
        '  "imp_ped_cli_prod"."num_pedido_cli" = :"OLD_num_pedido_cli" an' +
        'd'
      '  "imp_ped_cli_prod"."seq" = :"OLD_seq"'
      '')
    Active = True
    Left = 56
    Top = 240
    object IBDataSetGradeseq: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'seq'
      Origin = '"imp_ped_cli_prod"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object IBDataSetGradecod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"imp_ped_cli_prod"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Visible = False
    end
    object IBDataSetGradenum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"imp_ped_cli_prod"."num_pedido_cli"'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object IBDataSetGradecod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"imp_ped_cli_prod"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Visible = False
      Size = 12
    end
    object IBDataSetGradecod_produto: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"imp_ped_cli_prod"."cod_produto"'
      Visible = False
      OnGetText = IBDataSetGradecod_produtoGetText
      OnValidate = IBDataSetGradecod_produtoValidate
      Size = 15
    end
    object IBDataSetGradeDescricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descricao'
      ReadOnly = True
      Size = 100
      Calculated = True
    end
    object IBDataSetGradeqtde: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtde'
      Origin = '"imp_ped_cli_prod"."qtde"'
      Required = True
      DisplayFormat = '#,###0.00'
      Precision = 18
      Size = 3
    end
    object IBDataSetGradepreco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      Origin = '"imp_ped_cli_prod"."preco"'
      ReadOnly = True
      DisplayFormat = '#,##0.000000'
    end
    object IBDataSetGradepreco_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'preco_esp'
      Origin = '"imp_ped_cli_prod"."preco_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object IBDataSetGradeies_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"imp_ped_cli_prod"."ies_situacao"'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IBDataSetGradecalSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calSituacao'
      ReadOnly = True
      Size = 10
      Calculated = True
    end
    object IBDataSetGradeies_status: TIBStringField
      FieldName = 'ies_status'
      Origin = '"imp_ped_cli_prod"."ies_status"'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object IBDataSetGradevlr_liquido: TIBBCDField
      DisplayLabel = 'Valor Real'
      FieldName = 'vlr_liquido'
      Origin = '"imp_ped_cli_prod"."vlr_liquido"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetGradevlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Valor Especial'
      FieldName = 'vlr_liquido_esp'
      Origin = '"imp_ped_cli_prod"."vlr_liquido_esp"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetGradevol_caixas: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'vol_caixas'
      Origin = '"imp_ped_cli_prod"."vol_caixas"'
      ReadOnly = True
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 3
    end
    object IBDataSetGradeqtd_caixas: TIntegerField
      DisplayLabel = 'Qtd Caixas'
      FieldName = 'qtd_caixas'
      Origin = '"imp_ped_cli_prod"."qtd_caixas"'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object IBDataSetGradepes_liquido: TIBBCDField
      DisplayLabel = 'Pes L'#237'quido'
      FieldName = 'pes_liquido'
      Origin = '"imp_ped_cli_prod"."pes_liquido"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetGradepes_bruto: TIBBCDField
      DisplayLabel = 'Pes Bruto'
      FieldName = 'pes_bruto'
      Origin = '"imp_ped_cli_prod"."pes_bruto"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetGradedat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"imp_ped_cli_prod"."dat_cadastro"'
      ReadOnly = True
      Visible = False
    end
    object IBDataSetGradeies_emb_esp: TIBStringField
      DisplayLabel = 'Emb'
      FieldName = 'ies_emb_esp'
      Origin = '"imp_ped_cli_prod"."ies_emb_esp"'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object IBDataSetGradepct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"imp_ped_cli_prod"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object IBDataSetGradepct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"imp_ped_cli_prod"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
    object IBDataSetGradedat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = '"imp_ped_cli_prod"."dat_preco"'
    end
    object IBDataSetGradeobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"imp_ped_cli_prod"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetGradeseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"imp_ped_cli_prod"."seq_emb_esp"'
    end
    object IBDataSetGradeseq_pallet: TIntegerField
      DisplayLabel = 'Pal'
      FieldName = 'seq_pallet'
      Origin = '"imp_ped_cli_prod"."seq_pallet"'
    end
    object IBDataSetGradeqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = '"imp_ped_cli_prod"."qtd_pallet"'
    end
    object IBDataSetGradepes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = '"imp_ped_cli_prod"."pes_bruto_pallet"'
      Precision = 18
      Size = 2
    end
    object IBDataSetGradepes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = '"imp_ped_cli_prod"."pes_liquido_pallet"'
      Precision = 18
      Size = 2
    end
    object IBDataSetGradecomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = '"imp_ped_cli_prod"."comprimento_pallet"'
      Precision = 9
      Size = 4
    end
    object IBDataSetGradelargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = '"imp_ped_cli_prod"."largura_pallet"'
      Precision = 9
      Size = 4
    end
    object IBDataSetGradealtura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = '"imp_ped_cli_prod"."altura_pallet"'
      Precision = 9
      Size = 4
    end
    object IBDataSetGradevolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = '"imp_ped_cli_prod"."volume_pallet"'
      Precision = 18
      Size = 4
    end
    object IBDataSetGradeseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = '"imp_ped_cli_prod"."seq_pkl"'
    end
    object IBDataSetGradeobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"imp_ped_cli_prod"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetGradepes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"imp_ped_cli_prod"."pes_pallet_vazio"'
    end
    object IBDataSetGradeun_cx_master: TIBBCDField
      DisplayLabel = 'UN/CX'
      FieldName = 'un_cx_master'
      Origin = '"imp_ped_cli_prod"."un_cx_master"'
      Precision = 9
      Size = 4
    end
    object IBDataSetGradeies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"imp_ped_cli_prod"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsIBDataSetGrade: TDataSource
    Left = 56
    Top = 272
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 688
    Top = 376
  end
  object Clientes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = ClientesAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_cliente", "nom_cliente_reduz"'
      'from "cliente"'
      'order by 1')
    Left = 688
    Top = 408
    object Clientescod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object Clientesnom_cliente_reduz: TIBStringField
      FieldName = 'nom_cliente_reduz'
      Origin = '"cliente"."nom_cliente_reduz"'
      Required = True
      Size = 30
    end
  end
  object dsClientes: TDataSource
    DataSet = Clientes
    Left = 688
    Top = 440
  end
  object cby_imp_ped_cli: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "cby_imp_ped_cli"(:cod_empresa, :cod_cliente, :num' +
        '_pedido_cli);')
    Left = 728
    Top = 344
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
        Name = 'num_pedido_cli'
        ParamType = ptUnknown
      end>
    object cby_imp_ped_clivol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"cby_imp_ped_cli"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object cby_imp_ped_cliqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"cby_imp_ped_cli"."qtd_caixas"'
    end
    object cby_imp_ped_clipes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"cby_imp_ped_cli"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object cby_imp_ped_clipes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"cby_imp_ped_cli"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object cby_imp_ped_clivol_pallets: TIBBCDField
      FieldName = 'vol_pallets'
      Origin = '"cby_imp_ped_cli"."vol_pallets"'
      Precision = 18
      Size = 3
    end
    object cby_imp_ped_cliqtd_pallets: TIntegerField
      FieldName = 'qtd_pallets'
      Origin = '"cby_imp_ped_cli"."qtd_pallets"'
    end
    object cby_imp_ped_clipes_liq_pallets: TIBBCDField
      FieldName = 'pes_liq_pallets'
      Origin = '"cby_imp_ped_cli"."pes_liq_pallets"'
      Precision = 18
      Size = 2
    end
    object cby_imp_ped_clipes_bruto_pallets: TIBBCDField
      FieldName = 'pes_bruto_pallets'
      Origin = '"cby_imp_ped_cli"."pes_bruto_pallets"'
      Precision = 18
      Size = 2
    end
    object cby_imp_ped_clivol_geral: TIBBCDField
      FieldName = 'vol_geral'
      Origin = '"cby_imp_ped_cli"."vol_geral"'
      Precision = 18
      Size = 3
    end
    object cby_imp_ped_clicxs_outpallet: TIntegerField
      FieldName = 'cxs_outpallet'
      Origin = '"cby_imp_ped_cli"."cxs_outpallet"'
    end
    object cby_imp_ped_clipes_liq_geral: TIBBCDField
      FieldName = 'pes_liq_geral'
      Origin = '"cby_imp_ped_cli"."pes_liq_geral"'
      Precision = 18
      Size = 2
    end
    object cby_imp_ped_clipes_bru_geral: TIBBCDField
      FieldName = 'pes_bru_geral'
      Origin = '"cby_imp_ped_cli"."pes_bru_geral"'
      Precision = 18
      Size = 2
    end
    object cby_imp_ped_clivlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"cby_imp_ped_cli"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object cby_imp_ped_clivlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"cby_imp_ped_cli"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 728
    Top = 376
  end
  object parametro_cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "parametro_cliente" p'
      'where p."cod_cliente" = :cod_cliente')
    Left = 768
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object parametro_clientecod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"parametro_cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object parametro_clientemas_cod_produto: TIBStringField
      FieldName = 'mas_cod_produto'
      Origin = '"parametro_cliente"."mas_cod_produto"'
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 768
    Top = 376
  end
  object Fornecedores: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = FornecedoresAfterOpen
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a."raz_social_reduz",  "cod_fornecedor", "ies_idioma", "c' +
        'od_moeda"'
      'from "fornecedor" a'
      'where exists (select * from "produto" b'
      '               where b."cod_empresa" = :cod_empresa'
      '                 and b."cod_cliente" = :cod_cliente'
      '                 and b."cod_fornecedor" = a."cod_fornecedor")'
      'order by 1')
    Left = 728
    Top = 408
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
    object Fornecedoresraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object Fornecedorescod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Fornecedoresies_idioma: TIBStringField
      FieldName = 'ies_idioma'
      Origin = '"fornecedor"."ies_idioma"'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object Fornecedorescod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"fornecedor"."cod_moeda"'
    end
  end
  object dsFornecedores: TDataSource
    DataSet = Fornecedores
    Left = 728
    Top = 440
  end
  object parametro_comercial: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "parametro_comercial"'
      'where'
      '  "parametro_comercial"."cod_empresa" = :"OLD_cod_empresa"')
    InsertSQL.Strings = (
      'insert into "parametro_comercial"'
      
        '  ("parametro_comercial"."cod_empresa", "parametro_comercial"."c' +
        'od_vendedor", '
      
        '   "parametro_comercial"."cod_transportadora", "parametro_comerc' +
        'ial"."cod_moeda", '
      
        '   "parametro_comercial"."serie_nf", "parametro_comercial"."dias' +
        '_atualiza", '
      
        '   "parametro_comercial"."ano_pedido", "parametro_comercial"."pr' +
        'ox_num_pedido", '
      
        '   "parametro_comercial"."dias_entrega", "parametro_comercial"."' +
        'dir_planilhas", '
      
        '   "parametro_comercial"."ult_num_nf", "parametro_comercial"."ul' +
        't_num_romaneio", '
      
        '   "parametro_comercial"."ies_modelo", "parametro_comercial"."mo' +
        'd_lista_preco", '
      
        '   "parametro_comercial"."mod_pedido_imp", "parametro_comercial"' +
        '."mod_romaneio", '
      
        '   "parametro_comercial"."mod_cad_produto", "parametro_comercial' +
        '"."cod_tip_embarque", '
      
        '   "parametro_comercial"."mod_ship_list", "parametro_comercial".' +
        '"seq_rel_lista", '
      
        '   "parametro_comercial"."mod_plan_excel", "parametro_comercial"' +
        '."ies_base_comissao")'
      'values'
      
        '  (:"cod_empresa", :"cod_vendedor", :"cod_transportadora", :"cod' +
        '_moeda", '
      
        '   :"serie_nf", :"dias_atualiza", :"ano_pedido", :"prox_num_pedi' +
        'do", :"dias_entrega", '
      
        '   :"dir_planilhas", :"ult_num_nf", :"ult_num_romaneio", :"ies_m' +
        'odelo", '
      
        '   :"mod_lista_preco", :"mod_pedido_imp", :"mod_romaneio", :"mod' +
        '_cad_produto", '
      
        '   :"cod_tip_embarque", :"mod_ship_list", :"seq_rel_lista", :"mo' +
        'd_plan_excel", :"ies_base_comissao")')
    RefreshSQL.Strings = (
      'Select '
      '  "parametro_comercial"."cod_empresa",'
      '  "parametro_comercial"."cod_vendedor",'
      '  "parametro_comercial"."cod_transportadora",'
      '  "parametro_comercial"."cod_moeda",'
      '  "parametro_comercial"."serie_nf",'
      '  "parametro_comercial"."dias_atualiza",'
      '  "parametro_comercial"."ano_pedido",'
      '  "parametro_comercial"."prox_num_pedido",'
      '  "parametro_comercial"."dias_entrega",'
      '  "parametro_comercial"."dir_planilhas",'
      '  "parametro_comercial"."ult_num_nf",'
      '  "parametro_comercial"."ult_num_romaneio",'
      '  "parametro_comercial"."ies_modelo",'
      '  "parametro_comercial"."mod_lista_preco",'
      '  "parametro_comercial"."mod_pedido_imp",'
      '  "parametro_comercial"."mod_romaneio",'
      '  "parametro_comercial"."mod_cad_produto",'
      '  "parametro_comercial"."cod_tip_embarque",'
      '  "parametro_comercial"."mod_ship_list",'
      '  "parametro_comercial"."seq_rel_lista",'
      '  "parametro_comercial"."mod_plan_excel",'
      '  "parametro_comercial"."ies_base_comissao"'
      'from "parametro_comercial" '
      'where'
      '  "parametro_comercial"."cod_empresa" = :"cod_empresa"')
    SelectSQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    ModifySQL.Strings = (
      'update "parametro_comercial"'
      'set'
      '  "parametro_comercial"."cod_empresa" = :"cod_empresa",'
      '  "parametro_comercial"."cod_vendedor" = :"cod_vendedor",'
      
        '  "parametro_comercial"."cod_transportadora" = :"cod_transportad' +
        'ora",'
      '  "parametro_comercial"."cod_moeda" = :"cod_moeda",'
      '  "parametro_comercial"."serie_nf" = :"serie_nf",'
      '  "parametro_comercial"."dias_atualiza" = :"dias_atualiza",'
      '  "parametro_comercial"."ano_pedido" = :"ano_pedido",'
      '  "parametro_comercial"."prox_num_pedido" = :"prox_num_pedido",'
      '  "parametro_comercial"."dias_entrega" = :"dias_entrega",'
      '  "parametro_comercial"."dir_planilhas" = :"dir_planilhas",'
      '  "parametro_comercial"."ult_num_nf" = :"ult_num_nf",'
      
        '  "parametro_comercial"."ult_num_romaneio" = :"ult_num_romaneio"' +
        ','
      '  "parametro_comercial"."ies_modelo" = :"ies_modelo",'
      '  "parametro_comercial"."mod_lista_preco" = :"mod_lista_preco",'
      '  "parametro_comercial"."mod_pedido_imp" = :"mod_pedido_imp",'
      '  "parametro_comercial"."mod_romaneio" = :"mod_romaneio",'
      '  "parametro_comercial"."mod_cad_produto" = :"mod_cad_produto",'
      
        '  "parametro_comercial"."cod_tip_embarque" = :"cod_tip_embarque"' +
        ','
      '  "parametro_comercial"."mod_ship_list" = :"mod_ship_list",'
      '  "parametro_comercial"."seq_rel_lista" = :"seq_rel_lista",'
      '  "parametro_comercial"."mod_plan_excel" = :"mod_plan_excel",'
      
        '  "parametro_comercial"."ies_base_comissao" = :"ies_base_comissa' +
        'o"'
      'where'
      '  "parametro_comercial"."cod_empresa" = :"OLD_cod_empresa"')
    Left = 408
    Top = 448
    object parametro_comercialcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"parametro_comercial"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object parametro_comercialcod_vendedor: TSmallintField
      FieldName = 'cod_vendedor'
      Origin = '"parametro_comercial"."cod_vendedor"'
      Required = True
    end
    object parametro_comercialcod_transportadora: TSmallintField
      FieldName = 'cod_transportadora'
      Origin = '"parametro_comercial"."cod_transportadora"'
      Required = True
    end
    object parametro_comercialserie_nf: TIBStringField
      FieldName = 'serie_nf'
      Origin = '"parametro_comercial"."serie_nf"'
      Size = 4
    end
    object parametro_comercialdias_atualiza: TSmallintField
      FieldName = 'dias_atualiza'
      Origin = '"parametro_comercial"."dias_atualiza"'
    end
    object parametro_comercialano_pedido: TIntegerField
      FieldName = 'ano_pedido'
      Origin = '"parametro_comercial"."ano_pedido"'
    end
    object parametro_comercialprox_num_pedido: TIntegerField
      FieldName = 'prox_num_pedido'
      Origin = '"parametro_comercial"."prox_num_pedido"'
    end
    object parametro_comercialdias_entrega: TSmallintField
      FieldName = 'dias_entrega'
      Origin = '"parametro_comercial"."dias_entrega"'
    end
    object parametro_comercialies_modelo: TIntegerField
      FieldName = 'ies_modelo'
      Origin = '"parametro_comercial"."ies_modelo"'
    end
    object parametro_comercialmod_pedido_imp: TBlobField
      FieldName = 'mod_pedido_imp'
      Origin = '"parametro_comercial"."mod_pedido_imp"'
      Size = 8
    end
    object parametro_comercialdir_planilhas: TIBStringField
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
    end
    object parametro_comercialmod_plan_excel: TBlobField
      FieldName = 'mod_plan_excel'
      Origin = '"parametro_comercial"."mod_plan_excel"'
      Size = 8
    end
    object parametro_comercialies_base_comissao: TIBStringField
      FieldName = 'ies_base_comissao'
      Origin = '"parametro_comercial"."ies_base_comissao"'
      FixedChar = True
      Size = 1
    end
  end
  object imp_ped_cli: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = imp_ped_cliAfterDelete
    AfterPost = imp_ped_cliAfterPost
    AfterScroll = imp_ped_cliAfterScroll
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "imp_ped_cli"'
      'where'
      '  "imp_ped_cli"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "imp_ped_cli"."num_pedido_cli" = :"OLD_num_pedido_cli"')
    InsertSQL.Strings = (
      'insert into "imp_ped_cli"'
      
        '  ("imp_ped_cli"."cod_empresa", "imp_ped_cli"."cod_cliente", "im' +
        'p_ped_cli"."num_pedido_cli", '
      
        '   "imp_ped_cli"."num_pedido", "imp_ped_cli"."cod_fornecedor", "' +
        'imp_ped_cli"."ies_situacao", '
      
        '   "imp_ped_cli"."dat_cadastro", "imp_ped_cli"."vlr_liquido", "i' +
        'mp_ped_cli"."vlr_liquido_esp", '
      
        '   "imp_ped_cli"."vol_caixas", "imp_ped_cli"."qtd_caixas", "imp_' +
        'ped_cli"."pes_liquido", '
      
        '   "imp_ped_cli"."pes_bruto", "imp_ped_cli"."num_lista", "imp_pe' +
        'd_cli"."ies_lista_geral", '
      
        '   "imp_ped_cli"."ies_somente_lista", "imp_ped_cli"."ies_pallets' +
        '", "imp_ped_cli"."qtd_pallets", '
      
        '   "imp_ped_cli"."vol_pallets", "imp_ped_cli"."pes_liq_pallets",' +
        ' "imp_ped_cli"."pes_bruto_pallets", '
      
        '   "imp_ped_cli"."ies_preco_esp", "imp_ped_cli"."vol_geral", "im' +
        'p_ped_cli"."cxs_outpallet", '
      '   "imp_ped_cli"."pes_liq_geral", "imp_ped_cli"."pes_bru_geral")'
      'values'
      
        '  (:"cod_empresa", :"cod_cliente", :"num_pedido_cli", :"num_pedi' +
        'do", :"cod_fornecedor", '
      
        '   :"ies_situacao", :"dat_cadastro", :"vlr_liquido", :"vlr_liqui' +
        'do_esp", '
      
        '   :"vol_caixas", :"qtd_caixas", :"pes_liquido", :"pes_bruto", :' +
        '"num_lista", '
      
        '   :"ies_lista_geral", :"ies_somente_lista", :"ies_pallets", :"q' +
        'td_pallets", '
      
        '   :"vol_pallets", :"pes_liq_pallets", :"pes_bruto_pallets", :"i' +
        'es_preco_esp", '
      
        '   :"vol_geral", :"cxs_outpallet", :"pes_liq_geral", :"pes_bru_g' +
        'eral")')
    RefreshSQL.Strings = (
      'Select '
      '  "imp_ped_cli"."cod_empresa",'
      '  "imp_ped_cli"."cod_cliente",'
      '  "imp_ped_cli"."num_pedido_cli",'
      '  "imp_ped_cli"."num_pedido",'
      '  "imp_ped_cli"."cod_fornecedor",'
      '  "imp_ped_cli"."ies_situacao",'
      '  "imp_ped_cli"."dat_cadastro",'
      '  "imp_ped_cli"."vlr_liquido",'
      '  "imp_ped_cli"."vlr_liquido_esp",'
      '  "imp_ped_cli"."vol_caixas",'
      '  "imp_ped_cli"."qtd_caixas",'
      '  "imp_ped_cli"."pes_liquido",'
      '  "imp_ped_cli"."pes_bruto",'
      '  "imp_ped_cli"."num_lista",'
      '  "imp_ped_cli"."ies_lista_geral",'
      '  "imp_ped_cli"."ies_somente_lista",'
      '  "imp_ped_cli"."ies_pallets",'
      '  "imp_ped_cli"."qtd_pallets",'
      '  "imp_ped_cli"."vol_pallets",'
      '  "imp_ped_cli"."pes_liq_pallets",'
      '  "imp_ped_cli"."pes_bruto_pallets",'
      '  "imp_ped_cli"."ies_preco_esp",'
      '  "imp_ped_cli"."vol_geral",'
      '  "imp_ped_cli"."cxs_outpallet",'
      '  "imp_ped_cli"."pes_liq_geral",'
      '  "imp_ped_cli"."pes_bru_geral"'
      'from "imp_ped_cli" '
      'where'
      '  "imp_ped_cli"."cod_empresa" = :"cod_empresa" and'
      '  "imp_ped_cli"."cod_cliente" = :"cod_cliente" and'
      '  "imp_ped_cli"."num_pedido_cli" = :"num_pedido_cli"')
    SelectSQL.Strings = (
      'select * from "imp_ped_cli"'
      'where "ies_situacao" = '#39#39)
    ModifySQL.Strings = (
      'update "imp_ped_cli"'
      'set'
      '  "imp_ped_cli"."cod_empresa" = :"cod_empresa",'
      '  "imp_ped_cli"."cod_cliente" = :"cod_cliente",'
      '  "imp_ped_cli"."num_pedido_cli" = :"num_pedido_cli",'
      '  "imp_ped_cli"."num_pedido" = :"num_pedido",'
      '  "imp_ped_cli"."cod_fornecedor" = :"cod_fornecedor",'
      '  "imp_ped_cli"."ies_situacao" = :"ies_situacao",'
      '  "imp_ped_cli"."dat_cadastro" = :"dat_cadastro",'
      '  "imp_ped_cli"."vlr_liquido" = :"vlr_liquido",'
      '  "imp_ped_cli"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "imp_ped_cli"."vol_caixas" = :"vol_caixas",'
      '  "imp_ped_cli"."qtd_caixas" = :"qtd_caixas",'
      '  "imp_ped_cli"."pes_liquido" = :"pes_liquido",'
      '  "imp_ped_cli"."pes_bruto" = :"pes_bruto",'
      '  "imp_ped_cli"."num_lista" = :"num_lista",'
      '  "imp_ped_cli"."ies_lista_geral" = :"ies_lista_geral",'
      '  "imp_ped_cli"."ies_somente_lista" = :"ies_somente_lista",'
      '  "imp_ped_cli"."ies_pallets" = :"ies_pallets",'
      '  "imp_ped_cli"."qtd_pallets" = :"qtd_pallets",'
      '  "imp_ped_cli"."vol_pallets" = :"vol_pallets",'
      '  "imp_ped_cli"."pes_liq_pallets" = :"pes_liq_pallets",'
      '  "imp_ped_cli"."pes_bruto_pallets" = :"pes_bruto_pallets",'
      '  "imp_ped_cli"."ies_preco_esp" = :"ies_preco_esp",'
      '  "imp_ped_cli"."vol_geral" = :"vol_geral",'
      '  "imp_ped_cli"."cxs_outpallet" = :"cxs_outpallet",'
      '  "imp_ped_cli"."pes_liq_geral" = :"pes_liq_geral",'
      '  "imp_ped_cli"."pes_bru_geral" = :"pes_bru_geral"'
      'where'
      '  "imp_ped_cli"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli"."cod_cliente" = :"OLD_cod_cliente" and'
      '  "imp_ped_cli"."num_pedido_cli" = :"OLD_num_pedido_cli"')
    Left = 448
    Top = 384
    object imp_ped_clicod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"imp_ped_cli"."cod_empresa"'
      Required = True
    end
    object imp_ped_clicod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"imp_ped_cli"."cod_cliente"'
      Required = True
      Size = 12
    end
    object imp_ped_clinum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"imp_ped_cli"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object imp_ped_clicod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"imp_ped_cli"."cod_fornecedor"'
    end
    object imp_ped_cliies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"imp_ped_cli"."ies_situacao"'
      FixedChar = True
      Size = 1
    end
    object imp_ped_clidat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"imp_ped_cli"."dat_cadastro"'
      DisplayFormat = 'dd/mm/yy'
    end
    object imp_ped_clivlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"imp_ped_cli"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object imp_ped_clivol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"imp_ped_cli"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object imp_ped_cliqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"imp_ped_cli"."qtd_caixas"'
    end
    object imp_ped_clipes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"imp_ped_cli"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object imp_ped_clipes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"imp_ped_cli"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object imp_ped_clinum_lista: TSmallintField
      DisplayLabel = 'Lista de Pre'#231'os'
      FieldName = 'num_lista'
      Origin = '"imp_ped_cli"."num_lista"'
    end
    object imp_ped_clinum_pedido: TIntegerField
      FieldName = 'num_pedido'
      Origin = '"imp_ped_cli"."num_pedido"'
    end
    object imp_ped_clivlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"imp_ped_cli"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object imp_ped_cliies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"imp_ped_cli"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object imp_ped_cliqtd_pallets: TIntegerField
      FieldName = 'qtd_pallets'
      Origin = 'imp_ped_cli.qtd_pallets'
    end
    object imp_ped_clivol_pallets: TIBBCDField
      FieldName = 'vol_pallets'
      Origin = 'imp_ped_cli.vol_pallets'
      Precision = 18
      Size = 3
    end
    object imp_ped_clipes_liq_pallets: TIBBCDField
      FieldName = 'pes_liq_pallets'
      Origin = 'imp_ped_cli.pes_liq_pallets'
      Precision = 18
      Size = 2
    end
    object imp_ped_clipes_bruto_pallets: TIBBCDField
      FieldName = 'pes_bruto_pallets'
      Origin = 'imp_ped_cli.pes_bruto_pallets'
      Precision = 18
      Size = 2
    end
    object imp_ped_clivol_geral: TIBBCDField
      FieldName = 'vol_geral'
      Origin = '"imp_ped_cli"."vol_geral"'
      Precision = 18
      Size = 3
    end
    object imp_ped_clicxs_outpallet: TIntegerField
      FieldName = 'cxs_outpallet'
      Origin = '"imp_ped_cli"."cxs_outpallet"'
    end
    object imp_ped_clipes_liq_geral: TIBBCDField
      FieldName = 'pes_liq_geral'
      Origin = '"imp_ped_cli"."pes_liq_geral"'
      Precision = 18
      Size = 2
    end
    object imp_ped_clipes_bru_geral: TIBBCDField
      FieldName = 'pes_bru_geral'
      Origin = '"imp_ped_cli"."pes_bru_geral"'
      Precision = 18
      Size = 2
    end
  end
  object imp_ped_cli_prod: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = imp_ped_cli_prodAfterDelete
    AfterPost = imp_ped_cli_prodAfterPost
    BeforePost = IBDataSetGradeBeforePost
    OnNewRecord = imp_ped_cli_prodNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "imp_ped_cli_prod"'
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"OLD_cod_cliente" and'
      
        '  "imp_ped_cli_prod"."num_pedido_cli" = :"OLD_num_pedido_cli" an' +
        'd'
      '  "imp_ped_cli_prod"."seq" = :"OLD_seq"')
    InsertSQL.Strings = (
      'insert into "imp_ped_cli_prod"'
      
        '  ("imp_ped_cli_prod"."cod_empresa", "imp_ped_cli_prod"."cod_cli' +
        'ente", '
      
        '   "imp_ped_cli_prod"."num_pedido_cli", "imp_ped_cli_prod"."seq"' +
        ', '
      '"imp_ped_cli_prod"."cod_produto", '
      '   "imp_ped_cli_prod"."qtde", "imp_ped_cli_prod"."preco", '
      '"imp_ped_cli_prod"."preco_esp", '
      
        '   "imp_ped_cli_prod"."ies_situacao", "imp_ped_cli_prod"."dat_ca' +
        'dastro", '
      
        '   "imp_ped_cli_prod"."ies_status", "imp_ped_cli_prod"."vlr_liqu' +
        'ido", '
      '"imp_ped_cli_prod"."vlr_liquido_esp", '
      
        '   "imp_ped_cli_prod"."vol_caixas", "imp_ped_cli_prod"."qtd_caix' +
        'as", '
      '"imp_ped_cli_prod"."pes_liquido", '
      
        '   "imp_ped_cli_prod"."pes_bruto", "imp_ped_cli_prod"."ies_emb_e' +
        'sp", '
      '"imp_ped_cli_prod"."un_cx_master", '
      
        '   "imp_ped_cli_prod"."pct_comissao_f", "imp_ped_cli_prod"."pct_' +
        'comissao_c", '
      '"imp_ped_cli_prod"."dat_preco",'
      
        '   "imp_ped_cli_prod"."obs_preco",  "imp_ped_cli_prod"."obs_prec' +
        'o_esp", '
      
        '"imp_ped_cli_prod"."seq_emb_esp", "imp_ped_cli_prod"."seq_pallet' +
        '",'
      
        '   "imp_ped_cli_prod"."qtd_pallet", "imp_ped_cli_prod"."pes_brut' +
        'o_pallet", '
      '"imp_ped_cli_prod"."pes_liquido_pallet",'
      
        '   "imp_ped_cli_prod"."comprimento_pallet", "imp_ped_cli_prod"."' +
        'largura_pallet", '
      '"imp_ped_cli_prod"."altura_pallet",'
      
        '   "imp_ped_cli_prod"."volume_pallet", "imp_ped_cli_prod"."seq_p' +
        'kl", '
      
        '"imp_ped_cli_prod"."pes_pallet_vazio", "imp_ped_cli_prod"."ies_c' +
        'aixa_fechada")'
      'values'
      
        '  (:"cod_empresa", :"cod_cliente", :"num_pedido_cli", :"seq", :"' +
        'cod_produto", '
      
        '   :"qtde", :"preco", :"preco_esp", :"ies_situacao", :"dat_cadas' +
        'tro", :"ies_status", '
      
        '   :"vlr_liquido", :"vlr_liquido_esp", :"vol_caixas", :"qtd_caix' +
        'as", :"pes_liquido", '
      
        '   :"pes_bruto", :"ies_emb_esp", :"un_cx_master", :"pct_comissao' +
        '_f", '
      
        ':"pct_comissao_c", :"dat_preco", :"obs_preco", :"obs_preco_esp",' +
        ' '
      
        '   :"seq_emp_esp", :"seq_pallet", :"qtd_pallet", :"pes_bruto_pal' +
        'let", '
      ':"pes_liquido_pallet", :"comprimento_pallet",'
      
        '   :"largura_pallet", :"altura_pallet", :"volume_pallet", :"seq_' +
        'pkl", :"pes_pallet_vazio",'
      ':"ies_caixa_fechada")')
    RefreshSQL.Strings = (
      'Select *'
      'from "imp_ped_cli_prod" '
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"cod_cliente" and'
      '  "imp_ped_cli_prod"."num_pedido_cli" = :"num_pedido_cli" and'
      '  "imp_ped_cli_prod"."seq" = :"seq"')
    SelectSQL.Strings = (
      'select * from "imp_ped_cli_prod"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_cliente" = :cod_cliente'
      '  and "num_pedido_cli" = :num_pedido_cli')
    ModifySQL.Strings = (
      'update "imp_ped_cli_prod"'
      'set'
      '  "imp_ped_cli_prod"."cod_empresa" = :"cod_empresa",'
      '  "imp_ped_cli_prod"."cod_cliente" = :"cod_cliente",'
      '  "imp_ped_cli_prod"."num_pedido_cli" = :"num_pedido_cli",'
      '  "imp_ped_cli_prod"."seq" = :"seq",'
      '  "imp_ped_cli_prod"."cod_produto" = :"cod_produto",'
      '  "imp_ped_cli_prod"."qtde" = :"qtde",'
      '  "imp_ped_cli_prod"."preco" = :"preco",'
      '  "imp_ped_cli_prod"."preco_esp" = :"preco_esp",'
      '  "imp_ped_cli_prod"."ies_situacao" = :"ies_situacao",'
      '  "imp_ped_cli_prod"."dat_cadastro" = :"dat_cadastro",'
      '  "imp_ped_cli_prod"."ies_status" = :"ies_status",'
      '  "imp_ped_cli_prod"."vlr_liquido" = :"vlr_liquido",'
      '  "imp_ped_cli_prod"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "imp_ped_cli_prod"."vol_caixas" = :"vol_caixas",'
      '  "imp_ped_cli_prod"."qtd_caixas" = :"qtd_caixas",'
      '  "imp_ped_cli_prod"."pes_liquido" = :"pes_liquido",'
      '  "imp_ped_cli_prod"."pes_bruto" = :"pes_bruto",'
      '  "imp_ped_cli_prod"."ies_emb_esp" = :"ies_emb_esp",'
      '  "imp_ped_cli_prod"."un_cx_master" = :"un_cx_master",'
      '  "imp_ped_cli_prod"."pct_comissao_f" = :"pct_comissao_f",'
      '  "imp_ped_cli_prod"."pct_comissao_c" = :"pct_comissao_c",'
      '  "imp_ped_cli_prod"."dat_preco" = :"dat_preco",'
      '  "imp_ped_cli_prod"."obs_preco" = :"obs_preco",'
      '  "imp_ped_cli_prod"."obs_preco_esp" = :"obs_preco_esp",  '
      '  "imp_ped_cli_prod"."seq_pkl" = :"seq_pkl",'
      '  "imp_ped_cli_prod"."seq_emb_esp" = :"seq_emb_esp",'
      '  "imp_ped_cli_prod"."seq_pallet" = :"seq_pallet",'
      '  "imp_ped_cli_prod"."qtd_pallet" = :"qtd_pallet",'
      '  "imp_ped_cli_prod"."pes_bruto_pallet" = :"pes_bruto_pallet",'
      
        '  "imp_ped_cli_prod"."pes_liquido_pallet" = :"pes_liquido_pallet' +
        '",'
      
        '  "imp_ped_cli_prod"."comprimento_pallet" = :"comprimento_pallet' +
        '",'
      '  "imp_ped_cli_prod"."largura_pallet" = :"largura_pallet",'
      '  "imp_ped_cli_prod"."altura_pallet" = :"altura_pallet",'
      '  "imp_ped_cli_prod"."volume_pallet" = :"volume_pallet",'
      '  "imp_ped_cli_prod"."pes_pallet_vazio" = :"pes_pallet_vazio",'
      '  "imp_ped_cli_prod"."ies_caixa_fechada" = :"ies_caixa_fechada"'
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"OLD_cod_cliente" and'
      
        '  "imp_ped_cli_prod"."num_pedido_cli" = :"OLD_num_pedido_cli" an' +
        'd'
      '  "imp_ped_cli_prod"."seq" = :"OLD_seq"')
    Left = 448
    Top = 415
    object imp_ped_cli_prodcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"imp_ped_cli_prod"."cod_empresa"'
      Required = True
    end
    object imp_ped_cli_prodcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"imp_ped_cli_prod"."cod_cliente"'
      Required = True
      Size = 12
    end
    object imp_ped_cli_prodnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"imp_ped_cli_prod"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object imp_ped_cli_prodseq: TSmallintField
      FieldName = 'seq'
      Origin = '"imp_ped_cli_prod"."seq"'
    end
    object imp_ped_cli_prodcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"imp_ped_cli_prod"."cod_produto"'
      Size = 15
    end
    object imp_ped_cli_prodqtde: TIBBCDField
      FieldName = 'qtde'
      Origin = '"imp_ped_cli_prod"."qtde"'
      Precision = 18
      Size = 3
    end
    object imp_ped_cli_prodpreco: TFloatField
      FieldName = 'preco'
      Origin = '"imp_ped_cli_prod"."preco"'
    end
    object imp_ped_cli_prodobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"imp_ped_cli_prod"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object imp_ped_cli_proddat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = '"imp_ped_cli_prod"."dat_preco"'
    end
    object imp_ped_cli_prodpreco_esp: TFloatField
      FieldName = 'preco_esp'
      Origin = '"imp_ped_cli_prod"."preco_esp"'
    end
    object imp_ped_cli_prodobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"imp_ped_cli_prod"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object imp_ped_cli_prodies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"imp_ped_cli_prod"."ies_situacao"'
      FixedChar = True
      Size = 1
    end
    object imp_ped_cli_proddat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"imp_ped_cli_prod"."dat_cadastro"'
    end
    object imp_ped_cli_prodcalSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calSituacao'
      ReadOnly = True
      Size = 10
      Calculated = True
    end
    object imp_ped_cli_prodvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"imp_ped_cli_prod"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object imp_ped_cli_prodvlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"imp_ped_cli_prod"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object imp_ped_cli_prodvol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"imp_ped_cli_prod"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object imp_ped_cli_prodqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"imp_ped_cli_prod"."qtd_caixas"'
    end
    object imp_ped_cli_prodpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"imp_ped_cli_prod"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object imp_ped_cli_prodpes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"imp_ped_cli_prod"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object imp_ped_cli_prodies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"imp_ped_cli_prod"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object imp_ped_cli_prodies_status: TIBStringField
      FieldName = 'ies_status'
      Origin = '"imp_ped_cli_prod"."ies_status"'
      FixedChar = True
      Size = 1
    end
    object imp_ped_cli_prodpct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"imp_ped_cli_prod"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object imp_ped_cli_prodpct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"imp_ped_cli_prod"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
    object imp_ped_cli_prodseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"imp_ped_cli_prod"."seq_emb_esp"'
    end
    object imp_ped_cli_prodseq_pallet: TIntegerField
      FieldName = 'seq_pallet'
      Origin = '"imp_ped_cli_prod"."seq_pallet"'
    end
    object imp_ped_cli_prodqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = '"imp_ped_cli_prod"."qtd_pallet"'
    end
    object imp_ped_cli_prodpes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = '"imp_ped_cli_prod"."pes_bruto_pallet"'
      Precision = 18
      Size = 2
    end
    object imp_ped_cli_prodpes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = '"imp_ped_cli_prod"."pes_liquido_pallet"'
      Precision = 18
      Size = 2
    end
    object imp_ped_cli_prodcomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = '"imp_ped_cli_prod"."comprimento_pallet"'
      Precision = 9
      Size = 4
    end
    object imp_ped_cli_prodlargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = '"imp_ped_cli_prod"."largura_pallet"'
      Precision = 9
      Size = 4
    end
    object imp_ped_cli_prodaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = '"imp_ped_cli_prod"."altura_pallet"'
      Precision = 9
      Size = 4
    end
    object imp_ped_cli_prodvolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = '"imp_ped_cli_prod"."volume_pallet"'
      Precision = 18
      Size = 4
    end
    object imp_ped_cli_prodseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = '"imp_ped_cli_prod"."seq_pkl"'
    end
    object imp_ped_cli_prodpes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"imp_ped_cli_prod"."pes_pallet_vazio"'
    end
    object imp_ped_cli_produn_cx_master: TIBBCDField
      FieldName = 'un_cx_master'
      Origin = '"imp_ped_cli_prod"."un_cx_master"'
      Precision = 9
      Size = 4
    end
    object imp_ped_cli_prodies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"imp_ped_cli_prod"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
  end
  object Pedido: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = PedidoAfterDelete
    AfterPost = PedidoAfterPost
    OnNewRecord = PedidoNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido"'
      'where'
      '  "pedido"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido"."num_pedido" = :"OLD_num_pedido" ')
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
      '   "pedido"."cod_banco",'
      '   "pedido"."cod_banco_int",'
      '   "pedido"."ies_pallets",'
      '   "pedido"."ies_preco_esp",'
      '   "pedido"."ies_comissao",'
      '   "pedido"."ies_base_comissao",'
      '   "pedido"."ies_idioma",'
      '   "pedido"."terms_payment",'
      '   "pedido"."seq_filial")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"ies_situacao", :"ies_tip_ped' +
        'ido",'
      '   :"dat_emissao", :"dat_entrega", :"dat_liberacao",'
      '   :"dat_faturamento", :"login", :"vlr_frete",'
      '   :"txt_observacao", :"cod_cliente",'
      '   :"cod_vendedor", :"num_lista", :"cod_moeda", :"dat_cadastro",'
      
        '   :"cod_banco", :"cod_banco_int", :"ies_pallets", :"ies_preco_e' +
        'sp", :"ies_comissao", :"ies_base_comissao",'
      '   :"ies_idioma", :"terms_payment", :"seq_filial")')
    RefreshSQL.Strings = (
      'Select *'
      'from "pedido" '
      'where'
      '  "pedido"."cod_empresa" = :"cod_empresa" and'
      '  "pedido"."num_pedido" = :"num_pedido" ')
    SelectSQL.Strings = (
      'select * from "pedido"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido')
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
      
        '  "pedido"."vlr_bruto"   = (select "vlr_bruto"   from "cby_pedid' +
        'o"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      
        '  "pedido"."vlr_liquido" = (select "vlr_liquido" from "cby_pedid' +
        'o"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      
        '  "pedido"."vlr_bruto_esp"   = (select "vlr_bruto_esp"   from "c' +
        'by_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      
        '  "pedido"."vlr_liquido_esp" = (select "vlr_liquido_esp" from "c' +
        'by_pedido"("pedido"."cod_empresa", "pedido"."num_pedido")),'
      '  "pedido"."cod_banco" = :"cod_banco",'
      '  "pedido"."cod_banco_int" = :"cod_banco_int",'
      '  "pedido"."ies_pallets" = :"ies_pallets" ,'
      '  "pedido"."ies_preco_esp" = :"ies_preco_esp",'
      '  "pedido"."ies_comissao" = :"ies_comissao",'
      '  "pedido"."ies_base_comissao" = :"ies_base_comissao",'
      '  "pedido"."ies_idioma" = :"ies_idioma",'
      '  "pedido"."terms_payment" = :"terms_payment",'
      '  "pedido"."seq_filial" = :"seq_filial"'
      'where'
      '  "pedido"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido"."num_pedido" = :"OLD_num_pedido"')
    Left = 448
    Top = 448
    object Pedidocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Pedidonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Pedidoies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"pedido"."ies_situacao"'
      Size = 1
    end
    object Pedidoies_tip_pedido: TIBStringField
      FieldName = 'ies_tip_pedido'
      Origin = '"pedido"."ies_tip_pedido"'
      Size = 1
    end
    object Pedidoies_tip_frete: TSmallintField
      FieldName = 'ies_tip_frete'
      Origin = '"pedido"."ies_tip_frete"'
    end
    object Pedidodat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"pedido"."dat_emissao"'
    end
    object Pedidodat_entrega: TDateField
      FieldName = 'dat_entrega'
      Origin = '"pedido"."dat_entrega"'
    end
    object Pedidodat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
    end
    object Pedidodat_faturamento: TDateField
      FieldName = 'dat_faturamento'
      Origin = '"pedido"."dat_faturamento"'
    end
    object Pedidologin: TIBStringField
      FieldName = 'login'
      Origin = '"pedido"."login"'
      Size = 18
    end
    object Pedidovlr_frete: TIBBCDField
      FieldName = 'vlr_frete'
      Origin = '"pedido"."vlr_frete"'
      Precision = 18
      Size = 2
    end
    object Pedidocod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Required = True
      Size = 12
    end
    object Pedidocod_vendedor: TSmallintField
      FieldName = 'cod_vendedor'
      Origin = '"pedido"."cod_vendedor"'
      Required = True
    end
    object Pedidonum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"pedido"."num_lista"'
      Required = True
    end
    object Pedidocod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"pedido"."cod_moeda"'
      Required = True
    end
    object Pedidodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"pedido"."dat_cadastro"'
    end
    object Pedidovlr_bruto: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_bruto'
      Origin = '"pedido"."vlr_bruto"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Pedidovlr_liquido: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_liquido'
      Origin = '"pedido"."vlr_liquido"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Pedidotxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"pedido"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object Pedidovlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object Pedidovlr_bruto_esp: TIBBCDField
      FieldName = 'vlr_bruto_esp'
      Origin = '"pedido"."vlr_bruto_esp"'
      Precision = 18
      Size = 2
    end
    object Pedidocod_banco: TIntegerField
      FieldName = 'cod_banco'
      Origin = '"pedido"."cod_banco"'
    end
    object Pedidoies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"pedido"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object Pedidoies_preco_esp: TIBStringField
      FieldName = 'ies_preco_esp'
      Origin = '"pedido"."ies_preco_esp"'
      FixedChar = True
      Size = 1
    end
    object Pedidoies_comissao: TSmallintField
      FieldName = 'ies_comissao'
      Origin = '"pedido"."ies_comissao"'
    end
    object Pedidoies_base_comissao: TIBStringField
      FieldName = 'ies_base_comissao'
      Origin = '"pedido"."ies_base_comissao"'
      FixedChar = True
      Size = 1
    end
    object Pedidoies_idioma: TIBStringField
      FieldName = 'ies_idioma'
      Origin = '"pedido"."ies_idioma"'
      FixedChar = True
      Size = 1
    end
    object Pedidoterms_payment: TIBStringField
      FieldName = 'terms_payment'
      Origin = '"pedido"."terms_payment"'
      Size = 255
    end
    object Pedidoseq_filial: TIntegerField
      FieldName = 'seq_filial'
      Origin = '"pedido"."seq_filial"'
    end
  end
  object pedido_produto: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = pedido_produtoAfterDelete
    AfterPost = pedido_produtoAfterPost
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
        ', "pedido_produto"."num_sequencia", '
      
        '   "pedido_produto"."cod_produto", "pedido_produto"."qtd_produto' +
        '", "pedido_produto"."qtd_cancelada", '
      
        '   "pedido_produto"."qtd_romaneada", "pedido_produto"."qtd_fatur' +
        'ada", "pedido_produto"."qtd_pendente", '
      
        '   "pedido_produto"."vlr_unitario", "pedido_produto"."vlr_unitar' +
        'io_esp", '
      
        '   "pedido_produto"."dat_cadastro",  "pedido_produto"."ies_situa' +
        'cao", '
      
        '   "pedido_produto"."vlr_liquido", "pedido_produto"."vlr_liquido' +
        '_esp", '
      
        '   "pedido_produto"."qtd_export_box", "pedido_produto"."qtd_inne' +
        'r_box", '
      
        '   "pedido_produto"."vol_caixas", "pedido_produto"."pes_liquido"' +
        ', "pedido_produto"."pes_bruto", '
      
        '   "pedido_produto"."dat_preco", "pedido_produto"."un_cx_master"' +
        ', "pedido_produto"."ies_emb_esp", '
      
        '   "pedido_produto"."obs_preco", "pedido_produto"."obs_preco_esp' +
        '", "pedido_produto"."pct_comissao_f", '
      
        '   "pedido_produto"."pct_comissao_c", "pedido_produto"."texto", ' +
        '"pedido_produto"."txt_observacao", '
      
        '   "pedido_produto"."dat_inspecao", "pedido_produto"."seq_emb_es' +
        'p", "pedido_produto"."seq_pallet", '
      
        '   "pedido_produto"."qtd_pallet", "pedido_produto"."pes_bruto_pa' +
        'llet", '
      
        '   "pedido_produto"."pes_liquido_pallet", "pedido_produto"."comp' +
        'rimento_pallet", '
      
        '   "pedido_produto"."largura_pallet", "pedido_produto"."altura_p' +
        'allet", '
      
        '   "pedido_produto"."volume_pallet", "pedido_produto"."seq_pkl",' +
        ' "pedido_produto"."num_seq_origem", '
      
        '   "pedido_produto"."pes_pallet_vazio", "pedido_produto"."ies_er' +
        'ros", "pedido_produto"."ies_colunas", '
      
        '   "pedido_produto"."txt_status_producao", "pedido_produto"."ies' +
        '_result_inspecao", '
      
        '   "pedido_produto"."ies_caixa_fechada", "pedido_produto"."qtd_s' +
        'aldo", '
      
        '   "pedido_produto"."qtd_romanear", "pedido_produto"."dat_upd_et' +
        'd")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"num_sequencia", :"cod_produt' +
        'o", :"qtd_produto", '
      
        '   :"qtd_cancelada", :"qtd_romaneada", :"qtd_faturada", :"qtd_pe' +
        'ndente", '
      '   :"vlr_unitario", :"vlr_unitario_esp", :"dat_cadastro", '
      
        '   :"ies_situacao", :"vlr_liquido", :"vlr_liquido_esp", :"qtd_ex' +
        'port_box", '
      
        '   :"qtd_inner_box", :"vol_caixas", :"pes_liquido", :"pes_bruto"' +
        ', :"dat_preco", '
      
        '   :"un_cx_master", :"ies_emb_esp", :"obs_preco", :"obs_preco_es' +
        'p", :"pct_comissao_f", '
      
        '   :"pct_comissao_c", :"texto", :"txt_observacao", :"dat_inspeca' +
        'o", :"seq_emb_esp", '
      
        '   :"seq_pallet", :"qtd_pallet", :"pes_bruto_pallet", :"pes_liqu' +
        'ido_pallet", '
      
        '   :"comprimento_pallet", :"largura_pallet", :"altura_pallet", :' +
        '"volume_pallet", '
      
        '   :"seq_pkl", :"num_seq_origem", :"pes_pallet_vazio", :"ies_err' +
        'os", :"ies_colunas", '
      
        '   :"txt_status_producao", :"ies_result_inspecao", :"ies_caixa_f' +
        'echada", '
      '   :"qtd_saldo", :"qtd_romanear", :"dat_upd_etd")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "pedido_produto" '
      'where'
      '  "pedido_produto"."cod_empresa" = :"cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select * from "pedido_produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      '  and "num_sequencia" = :num_sequencia')
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
      
        '  "pedido_produto"."qtd_pendente" = "pedido_produto"."qtd_produt' +
        'o" - ("pedido_produto"."qtd_cancelada" + "pedido_produto"."qtd_f' +
        'aturada"),'
      
        '  "pedido_produto"."vlr_liquido" =  "pedido_produto"."qtd_penden' +
        'te" * "pedido_produto"."vlr_unitario",'
      
        '  "pedido_produto"."vlr_liquido_esp" =  "pedido_produto"."qtd_pe' +
        'ndente" * "pedido_produto"."vlr_unitario_esp",'
      '  "pedido_produto"."qtd_export_box" = :"qtd_export_box",'
      '  "pedido_produto"."qtd_inner_box" = :"qtd_inner_box",'
      '  "pedido_produto"."vol_caixas" = :"vol_caixas",'
      '  "pedido_produto"."pes_liquido" = :"pes_liquido",'
      '  "pedido_produto"."pes_bruto" = :"pes_bruto",'
      '  "pedido_produto"."dat_preco" = :"dat_preco",'
      '  "pedido_produto"."obs_preco" = :"obs_preco",'
      '  "pedido_produto"."un_cx_master" = :"un_cx_master",'
      '  "pedido_produto"."ies_emb_esp" = :"ies_emb_esp",'
      '  "pedido_produto"."pct_comissao_f" = :"pct_comissao_f",'
      '  "pedido_produto"."pct_comissao_c" = :"pct_comissao_c",'
      '  "pedido_produto"."seq_pkl" = :"seq_pkl",'
      '  "pedido_produto"."seq_emb_esp" = :"seq_emb_esp",'
      '  "pedido_produto"."seq_pallet" = :"seq_pallet",'
      '  "pedido_produto"."qtd_pallet" = :"qtd_pallet",'
      '  "pedido_produto"."pes_bruto_pallet" = :"pes_bruto_pallet",'
      '  "pedido_produto"."pes_liquido_pallet" = :"pes_liquido_pallet",'
      '  "pedido_produto"."comprimento_pallet" = :"comprimento_pallet",'
      '  "pedido_produto"."largura_pallet" = :"largura_pallet",'
      '  "pedido_produto"."altura_pallet" = :"altura_pallet",'
      '  "pedido_produto"."volume_pallet" = :"volume_pallet",'
      '  "pedido_produto"."obs_preco_esp" = :"obs_preco_esp",'
      '  "pedido_produto"."pes_pallet_vazio" = :"pes_pallet_vazio",'
      '  "pedido_produto"."dat_upd_etd" = :"dat_upd_etd"'
      'where'
      '  "pedido_produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_produto"."num_pedido" = :"OLD_num_pedido" and'
      '  "pedido_produto"."num_sequencia" = :"OLD_num_sequencia"'
      ''
      ''
      ''
      '')
    Left = 448
    Top = 480
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
      Required = True
    end
    object pedido_produtonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_produtocod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"pedido_produto"."cod_produto"'
      Required = True
      Size = 15
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
    object pedido_produtodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"pedido_produto"."dat_cadastro"'
    end
    object pedido_produtoqtd_pendente: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'qtd_pendente'
      Origin = '"pedido_produto"."qtd_pendente"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object pedido_produtovlr_liquido: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object pedido_produtovlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido_produto"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object pedido_produtovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
    end
    object pedido_produtovlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = '"pedido_produto"."vlr_unitario_esp"'
    end
    object pedido_produtoqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"pedido_produto"."qtd_export_box"'
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
    object pedido_produtodat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = '"pedido_produto"."dat_preco"'
    end
    object pedido_produtoies_emb_esp: TIBStringField
      FieldName = 'ies_emb_esp'
      Origin = '"pedido_produto"."ies_emb_esp"'
      FixedChar = True
      Size = 1
    end
    object pedido_produtoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"pedido_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtopct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"pedido_produto"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object pedido_produtopct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"pedido_produto"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
    object pedido_produtotexto: TMemoField
      FieldName = 'texto'
      Origin = '"pedido_produto"."texto"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtotxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"pedido_produto"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtodat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = '"pedido_produto"."dat_inspecao"'
    end
    object pedido_produtoseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"pedido_produto"."seq_emb_esp"'
    end
    object pedido_produtoseq_pallet: TIntegerField
      FieldName = 'seq_pallet'
      Origin = '"pedido_produto"."seq_pallet"'
    end
    object pedido_produtoqtd_pallet: TIntegerField
      FieldName = 'qtd_pallet'
      Origin = '"pedido_produto"."qtd_pallet"'
    end
    object pedido_produtopes_bruto_pallet: TIBBCDField
      FieldName = 'pes_bruto_pallet'
      Origin = '"pedido_produto"."pes_bruto_pallet"'
      Precision = 18
      Size = 2
    end
    object pedido_produtopes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Origin = '"pedido_produto"."pes_liquido_pallet"'
      Precision = 18
      Size = 2
    end
    object pedido_produtocomprimento_pallet: TIBBCDField
      FieldName = 'comprimento_pallet'
      Origin = '"pedido_produto"."comprimento_pallet"'
      Precision = 9
      Size = 4
    end
    object pedido_produtolargura_pallet: TIBBCDField
      FieldName = 'largura_pallet'
      Origin = '"pedido_produto"."largura_pallet"'
      Precision = 9
      Size = 4
    end
    object pedido_produtoaltura_pallet: TIBBCDField
      FieldName = 'altura_pallet'
      Origin = '"pedido_produto"."altura_pallet"'
      Precision = 9
      Size = 4
    end
    object pedido_produtovolume_pallet: TIBBCDField
      FieldName = 'volume_pallet'
      Origin = '"pedido_produto"."volume_pallet"'
      Precision = 18
      Size = 4
    end
    object pedido_produtoseq_pkl: TIntegerField
      FieldName = 'seq_pkl'
      Origin = '"pedido_produto"."seq_pkl"'
    end
    object pedido_produtoobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"pedido_produto"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtopes_pallet_vazio: TFloatField
      FieldName = 'pes_pallet_vazio'
      Origin = '"pedido_produto"."pes_pallet_vazio"'
    end
    object pedido_produtoqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"pedido_produto"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object pedido_produtoun_cx_master: TIBBCDField
      FieldName = 'un_cx_master'
      Origin = '"pedido_produto"."un_cx_master"'
      Precision = 9
      Size = 4
    end
    object pedido_produtoies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"pedido_produto"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
  end
  object pedido_complemento: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterCancel = pedido_complementoAfterCancel
    AfterClose = pedido_complementoAfterClose
    AfterDelete = pedido_complementoAfterDelete
    AfterPost = pedido_complementoAfterPost
    BeforeOpen = pedido_complementoBeforeOpen
    OnNewRecord = pedido_complementoNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "pedido_complemento"'
      'where'
      '  "pedido_complemento"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido_complemento"."num_pedido" = :"OLD_num_pedido"')
    InsertSQL.Strings = (
      'insert into "pedido_complemento"'
      
        '  ("pedido_complemento"."cod_empresa", "pedido_complemento"."num' +
        '_pedido", '
      
        '   "pedido_complemento"."num_pedido_cli", "pedido_complemento"."' +
        'num_pedido_for", '
      
        '   "pedido_complemento"."cod_container", "pedido_complemento"."c' +
        'od_fornecedor", '
      
        '   "pedido_complemento"."cod_porto_emb", "pedido_complemento"."c' +
        'od_porto_des", '
      '   "pedido_complemento"."cod_cond_venda")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido", :"num_pedido_cli", :"num_pedid' +
        'o_for", '
      
        '   :"cod_container", :"cod_fornecedor", :"cod_porto_emb", :"cod_' +
        'porto_des", '
      '   :"cod_cond_venda")')
    RefreshSQL.Strings = (
      'Select '
      '  "pedido_complemento"."cod_empresa",'
      '  "pedido_complemento"."num_pedido",'
      '  "pedido_complemento"."num_pedido_cli",'
      '  "pedido_complemento"."num_pedido_for",'
      '  "pedido_complemento"."cod_container",'
      '  "pedido_complemento"."cod_fornecedor",'
      '  "pedido_complemento"."cod_porto_emb",'
      '  "pedido_complemento"."cod_porto_des",'
      '  "pedido_complemento"."cod_cond_venda"'
      'from "pedido_complemento" '
      'where'
      '  "pedido_complemento"."cod_empresa" = :"cod_empresa" and'
      '  "pedido_complemento"."num_pedido" = :"num_pedido"')
    SelectSQL.Strings = (
      'select * from "pedido_complemento"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido')
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
      '')
    Left = 448
    Top = 512
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
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object pedido_complementonum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
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
    object pedido_complementocod_cond_venda: TIntegerField
      FieldName = 'cod_cond_venda'
      Origin = '"pedido_complemento"."cod_cond_venda"'
    end
    object pedido_complementonum_container: TIntegerField
      FieldName = 'num_container'
      Origin = '"pedido_complemento"."num_container"'
    end
    object pedido_complementovol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"pedido_complemento"."vol_total"'
      Precision = 18
      Size = 3
    end
    object pedido_complementoqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"pedido_complemento"."qtd_caixas"'
    end
    object pedido_complementopes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"pedido_complemento"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object pedido_complementopes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"pedido_complemento"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object pedido_complementonum_ref_volume: TIBStringField
      FieldName = 'num_ref_volume'
      Origin = '"pedido_complemento"."num_ref_volume"'
      FixedChar = True
      Size = 15
    end
    object pedido_complementobanco_intermed: TIBStringField
      FieldName = 'banco_intermed'
      Origin = '"pedido_complemento"."banco_intermed"'
      Size = 255
    end
    object pedido_complementoswift: TIBStringField
      FieldName = 'swift'
      Origin = '"pedido_complemento"."swift"'
      Size = 30
    end
    object pedido_complementoqtd_pallets: TIntegerField
      FieldName = 'qtd_pallets'
      Origin = 'pedido_complemento.qtd_pallets'
    end
    object pedido_complementovol_pallets: TIBBCDField
      FieldName = 'vol_pallets'
      Origin = 'pedido_complemento.vol_pallets'
      Precision = 18
      Size = 3
    end
    object pedido_complementopes_liq_pallets: TIBBCDField
      FieldName = 'pes_liq_pallets'
      Origin = 'pedido_complemento.pes_liq_pallets'
      Precision = 18
      Size = 2
    end
    object pedido_complementopes_bruto_pallets: TIBBCDField
      FieldName = 'pes_bruto_pallets'
      Origin = 'pedido_complemento.pes_bruto_pallets'
      Precision = 18
      Size = 2
    end
  end
  object Sequencia: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select MAX(a."seq")+1 "seq"'
      'from "imp_ped_cli_prod" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and a."num_pedido_cli" = :num_pedido_cli')
    Left = 484
    Top = 416
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
        Name = 'num_pedido_cli'
        ParamType = ptUnknown
      end>
    object Sequenciaseq: TLargeintField
      FieldName = 'seq'
    end
  end
  object delete_pedido: TIBSQL
    Database = dmConnection.dbSig
    ParamCheck = True
    SQL.Strings = (
      'delete from "pedido" a'
      'where a."cod_empresa" = :cod_empresa'
      '    and a."num_pedido" = :num_pedido'
      '    and not exists(select * from "pedido_produto" b'
      '                  where b."cod_empresa" = a."cod_empresa"'
      '                    and b."num_pedido"  = a."num_pedido")')
    Transaction = dmConnection.TransSig
    Left = 152
    Top = 400
  end
  object delete_itens: TIBSQL
    Database = dmConnection.dbSig
    ParamCheck = True
    SQL.Strings = (
      'delete from "pedido_produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido')
    Transaction = dmConnection.TransSig
    Left = 192
    Top = 400
  end
  object delete_complemento: TIBSQL
    Database = dmConnection.dbSig
    ParamCheck = True
    SQL.Strings = (
      'delete from "pedido_complemento"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido')
    Transaction = dmConnection.TransSig
    Left = 232
    Top = 400
  end
  object sql_situacao_importado: TIBSQL
    Database = dmConnection.dbSig
    ParamCheck = True
    SQL.Strings = (
      'update "imp_ped_cli" a'
      '  set a."ies_situacao" = '#39'I'#39
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and a."num_pedido_cli" = :num_pedido_cli'
      '  and Not exists(select *'
      '                   from "imp_ped_cli_prod" b'
      '                  where b."cod_empresa" = a."cod_empresa"'
      '                    and b."cod_cliente" = a."cod_cliente"'
      '                    and b."num_pedido_cli" = a."num_pedido_cli"'
      '                    and b."ies_situacao" <> '#39'I'#39
      '                    and  b."ies_situacao" <> '#39'C'#39')')
    Transaction = dmConnection.TransSig
    Left = 272
    Top = 400
  end
  object sql_situacao_erro: TIBSQL
    Database = dmConnection.dbSig
    ParamCheck = True
    SQL.Strings = (
      'update "imp_ped_cli" a'
      '  set a."ies_situacao" = '#39'E'#39
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and a."num_pedido_cli" = :num_pedido_cli'
      '  and exists(select *'
      '                   from "imp_ped_cli_prod" b'
      '                  where b."cod_empresa" = a."cod_empresa"'
      '                    and b."cod_cliente" = a."cod_cliente"'
      '                    and b."num_pedido_cli" = a."num_pedido_cli"'
      '                    and b."ies_situacao" in ('#39'E'#39', '#39'X'#39'))')
    Transaction = dmConnection.TransSig
    Left = 312
    Top = 400
  end
  object up_imp_ped_cli_prod: TIBSQL
    Database = dmConnection.dbSig
    ParamCheck = True
    SQL.Strings = (
      'update "imp_ped_cli_prod" x'
      '  set x."ies_status" = '#39'G'#39
      'where x."cod_empresa" =  :cod_empresa'
      '  and x."cod_cliente" =  :cod_cliente'
      '  and x."num_ref_volume" =  :num_ref_volume'
      '  and x."seq" = : seq')
    Transaction = dmConnection.TransSig
    Left = 232
    Top = 440
  end
  object Banco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_banco"'
      'from "banco"'
      'where "cod_fornecedor" = :cod_fornecedor'
      '  and "ies_tipo" = '#39'B'#39
      '  and "ies_default" = '#39'S'#39)
    Left = 368
    Top = 400
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
  end
  object emb_especial_imp: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = emb_especial_impAfterDelete
    AfterPost = emb_especial_impAfterPost
    AfterScroll = emb_especial_impAfterScroll
    BeforeDelete = emb_especial_impBeforeDelete
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "emb_especial_imp"'
      'where'
      '  "emb_especial_imp"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "emb_especial_imp"."num_pedido_cli" = :"OLD_num_pedido_cli" an' +
        'd'
      '  "emb_especial_imp"."seq" = :"OLD_seq"')
    InsertSQL.Strings = (
      'insert into "emb_especial_imp"'
      
        '  ("emb_especial_imp"."cod_empresa", "emb_especial_imp"."num_ped' +
        'ido_cli", '
      
        '   "emb_especial_imp"."seq", "emb_especial_imp"."den_embalagem",' +
        ' "emb_especial_imp"."qtd_total", '
      
        '   "emb_especial_imp"."vol_total", "emb_especial_imp"."pes_bruto' +
        '", "emb_especial_imp"."pes_liquido", '
      
        '   "emb_especial_imp"."qtd_caixas", "emb_especial_imp"."qtd_prod' +
        'uto", "emb_especial_imp"."pes_unitario", '
      
        '   "emb_especial_imp"."altura", "emb_especial_imp"."largura", "e' +
        'mb_especial_imp"."profundidade", '
      
        '   "emb_especial_imp"."pes_bruto_cx", "emb_especial_imp"."mescla' +
        'r")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido_cli", :"seq", :"den_embalagem", ' +
        ':"qtd_total", '
      
        '   :"vol_total", :"pes_bruto", :"pes_liquido", :"qtd_caixas", :"' +
        'qtd_produto", '
      
        '   :"pes_unitario", :"altura", :"largura", :"profundidade", :"pe' +
        's_bruto_cx", :"mesclar")')
    RefreshSQL.Strings = (
      'Select *'
      'from "emb_especial_imp" '
      'where'
      '  "emb_especial_imp"."cod_empresa" = :"cod_empresa" and'
      '  "emb_especial_imp"."num_pedido_cli" = :"num_pedido_cli" and'
      '  "emb_especial_imp"."seq" = :"seq"')
    SelectSQL.Strings = (
      'select * from "emb_especial_imp"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido_cli" = :num_pedido_cli'
      'order by "seq"')
    ModifySQL.Strings = (
      'update "emb_especial_imp"'
      'set'
      '  "emb_especial_imp"."cod_empresa" = :"cod_empresa",'
      '  "emb_especial_imp"."num_pedido_cli" = :"num_pedido_cli",'
      '  "emb_especial_imp"."seq" = :"seq",'
      '  "emb_especial_imp"."den_embalagem" = :"den_embalagem",'
      '  "emb_especial_imp"."qtd_total" = :"qtd_total",'
      '  "emb_especial_imp"."vol_total" = :"vol_total",'
      '  "emb_especial_imp"."pes_bruto" = :"pes_bruto",'
      '  "emb_especial_imp"."pes_liquido" = :"pes_liquido",'
      '  "emb_especial_imp"."qtd_caixas" = :"qtd_caixas",'
      '  "emb_especial_imp"."qtd_produto" = :"qtd_produto",'
      '  "emb_especial_imp"."pes_unitario" = :"pes_unitario",'
      '  "emb_especial_imp"."altura" = :"altura",'
      '  "emb_especial_imp"."largura" = :"largura",'
      '  "emb_especial_imp"."profundidade" = :"profundidade",'
      '  "emb_especial_imp"."pes_bruto_cx" = :"pes_bruto_cx",'
      '  "emb_especial_imp"."mesclar" = :"mesclar"'
      'where'
      '  "emb_especial_imp"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "emb_especial_imp"."num_pedido_cli" = :"OLD_num_pedido_cli" an' +
        'd'
      '  "emb_especial_imp"."seq" = :"OLD_seq"')
    Left = 110
    Top = 472
    object emb_especial_impcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"emb_especial_imp"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_impnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"emb_especial_imp"."num_pedido_cli"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 15
    end
    object emb_especial_impseq: TIntegerField
      FieldName = 'seq'
      Origin = '"emb_especial_imp"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_impden_embalagem: TIBStringField
      FieldName = 'den_embalagem'
      Origin = '"emb_especial_imp"."den_embalagem"'
      Size = 75
    end
    object emb_especial_impqtd_total: TIBBCDField
      FieldName = 'qtd_total'
      Origin = '"emb_especial_imp"."qtd_total"'
      DisplayFormat = '#,###0.00'
      Precision = 18
      Size = 3
    end
    object emb_especial_impvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"emb_especial_imp"."vol_total"'
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 3
    end
    object emb_especial_imppes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"emb_especial_imp"."pes_bruto"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object emb_especial_imppes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_imp"."pes_liquido"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object emb_especial_impqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"emb_especial_imp"."qtd_caixas"'
    end
    object emb_especial_impqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_imp"."qtd_produto"'
      DisplayFormat = '#,###0.00'
      Precision = 18
      Size = 3
    end
    object emb_especial_imppes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"emb_especial_imp"."pes_unitario"'
      DisplayFormat = '##,##0.00'
    end
    object emb_especial_impaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"emb_especial_imp"."altura"'
      DisplayFormat = '#,#0.00'
      Precision = 9
      Size = 4
    end
    object emb_especial_implargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"emb_especial_imp"."largura"'
      DisplayFormat = '#,#0.00'
      Precision = 9
      Size = 4
    end
    object emb_especial_impprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"emb_especial_imp"."profundidade"'
      DisplayFormat = '#,#0.00'
      Precision = 9
      Size = 4
    end
    object emb_especial_imppes_bruto_cx: TFloatField
      DisplayLabel = 'Peso Bruto Cx'
      FieldName = 'pes_bruto_cx'
      Origin = 'emb_especial_imp.pes_bruto_cx'
      DisplayFormat = '##,##0.00000'
    end
    object emb_especial_impmesclar: TIBStringField
      FieldName = 'mesclar'
      Origin = '"emb_especial_imp"."mesclar"'
      FixedChar = True
      Size = 1
    end
  end
  object emb_especial_item_imp: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = emb_especial_item_impAfterDelete
    AfterPost = emb_especial_item_impAfterPost
    OnCalcFields = emb_especial_item_impCalcFields
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "emb_especial_item_imp"'
      'where'
      '  "emb_especial_item_imp"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "emb_especial_item_imp"."num_pedido_cli" = :"OLD_num_pedido_cl' +
        'i" and'
      '  "emb_especial_item_imp"."seq" = :"OLD_seq" and'
      '  "emb_especial_item_imp"."num_sequencia" = :"OLD_num_sequencia"')
    InsertSQL.Strings = (
      'insert into "emb_especial_item_imp"'
      
        '  ("emb_especial_item_imp"."cod_empresa", "emb_especial_item_imp' +
        '"."num_pedido_cli", '
      
        '   "emb_especial_item_imp"."seq", "emb_especial_item_imp"."num_s' +
        'equencia", '
      
        '   "emb_especial_item_imp"."cod_produto", "emb_especial_item_imp' +
        '"."qtd_produto", '
      '   "emb_especial_item_imp"."pes_liquido")'
      'values'
      
        '  (:"cod_empresa", :"num_pedido_cli", :"seq", :"num_sequencia", ' +
        ':"cod_produto", '
      '   :"qtd_produto", :"pes_liquido")')
    RefreshSQL.Strings = (
      'Select '
      '  "emb_especial_item_imp"."cod_empresa",'
      '  "emb_especial_item_imp"."num_pedido_cli",'
      '  "emb_especial_item_imp"."seq",'
      '  "emb_especial_item_imp"."num_sequencia",'
      '  "emb_especial_item_imp"."cod_produto",'
      '  "emb_especial_item_imp"."qtd_produto",'
      '  "emb_especial_item_imp"."pes_liquido"'
      'from "emb_especial_item_imp" '
      'where'
      '  "emb_especial_item_imp"."cod_empresa" = :"cod_empresa" and'
      
        '  "emb_especial_item_imp"."num_pedido_cli" = :"num_pedido_cli" a' +
        'nd'
      '  "emb_especial_item_imp"."seq" = :"seq" and'
      '  "emb_especial_item_imp"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select b.*'
      'from "emb_especial_item_imp" b'
      'where b."cod_empresa" = :cod_empresa'
      '  and b."num_pedido_cli" = :num_pedido_cli'
      '  and b."seq" = :seq')
    ModifySQL.Strings = (
      'update "emb_especial_item_imp"'
      'set'
      '  "emb_especial_item_imp"."cod_empresa" = :"cod_empresa",'
      '  "emb_especial_item_imp"."num_pedido_cli" = :"num_pedido_cli",'
      '  "emb_especial_item_imp"."seq" = :"seq",'
      '  "emb_especial_item_imp"."num_sequencia" = :"num_sequencia",'
      '  "emb_especial_item_imp"."cod_produto" = :"cod_produto",'
      '  "emb_especial_item_imp"."qtd_produto" = :"qtd_produto",'
      '  "emb_especial_item_imp"."pes_liquido" = :"pes_liquido"'
      'where'
      '  "emb_especial_item_imp"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "emb_especial_item_imp"."num_pedido_cli" = :"OLD_num_pedido_cl' +
        'i" and'
      '  "emb_especial_item_imp"."seq" = :"OLD_seq" and'
      '  "emb_especial_item_imp"."num_sequencia" = :"OLD_num_sequencia"')
    Left = 110
    Top = 504
    object emb_especial_item_impcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"emb_especial_item_imp"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_item_impnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"emb_especial_item_imp"."num_pedido_cli"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 15
    end
    object emb_especial_item_impseq: TIntegerField
      FieldName = 'seq'
      Origin = '"emb_especial_item_imp"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_item_impnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"emb_especial_item_imp"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_especial_item_impcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"emb_especial_item_imp"."cod_produto"'
      OnGetText = emb_especial_item_impcod_produtoGetText
      Size = 15
    end
    object emb_especial_item_impDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Descricao'
      Size = 100
      Calculated = True
    end
    object emb_especial_item_impqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_item_imp"."qtd_produto"'
      DisplayFormat = '#,###0.00'
      Precision = 18
      Size = 3
    end
    object emb_especial_item_imppes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_item_imp"."pes_liquido"'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object ds_emb_especial_imp: TDataSource
    DataSet = emb_especial_imp
    Left = 142
    Top = 472
  end
  object ds_emb_especial_item_imp: TDataSource
    DataSet = emb_especial_item_imp
    Left = 142
    Top = 504
  end
  object emb_especial_ped: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = emb_especial_pedAfterPost
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
        'ido", '
      '"emb_especial_ped"."seq", '
      
        '   "emb_especial_ped"."den_embalagem", "emb_especial_ped"."qtd_t' +
        'otal", '
      
        '   "emb_especial_ped"."vol_total", "emb_especial_ped"."pes_bruto' +
        '", '
      '"emb_especial_ped"."pes_liquido", '
      
        '   "emb_especial_ped"."qtd_caixas", "emb_especial_ped"."qtd_prod' +
        'uto", '
      '"emb_especial_ped"."pes_unitario", '
      '   "emb_especial_ped"."altura", "emb_especial_ped"."largura", '
      '"emb_especial_ped"."profundidade", '
      
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
      '  and "seq" = :seq')
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
    Left = 196
    Top = 469
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
      Precision = 18
      Size = 3
    end
    object emb_especial_pedvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"emb_especial_ped"."vol_total"'
      Precision = 18
      Size = 3
    end
    object emb_especial_pedpes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"emb_especial_ped"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object emb_especial_pedpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_ped"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object emb_especial_pedqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"emb_especial_ped"."qtd_caixas"'
    end
    object emb_especial_pedqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_ped"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object emb_especial_pedpes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"emb_especial_ped"."pes_unitario"'
    end
    object emb_especial_pedaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"emb_especial_ped"."altura"'
      Precision = 9
      Size = 4
    end
    object emb_especial_pedlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"emb_especial_ped"."largura"'
      Precision = 9
      Size = 4
    end
    object emb_especial_pedprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"emb_especial_ped"."profundidade"'
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
    AfterPost = emb_especial_item_pedAfterPost
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
      'Select '
      '  "emb_especial_item_ped"."cod_empresa",'
      '  "emb_especial_item_ped"."num_pedido",'
      '  "emb_especial_item_ped"."seq",'
      '  "emb_especial_item_ped"."num_sequencia",'
      '  "emb_especial_item_ped"."cod_produto",'
      '  "emb_especial_item_ped"."qtd_produto",'
      '  "emb_especial_item_ped"."pes_liquido"'
      'from "emb_especial_item_ped" '
      'where'
      '  "emb_especial_item_ped"."cod_empresa" = :"cod_empresa" and'
      '  "emb_especial_item_ped"."num_pedido" = :"num_pedido" and'
      '  "emb_especial_item_ped"."seq" = :"seq" and'
      '  "emb_especial_item_ped"."num_sequencia" = :"num_sequencia"')
    SelectSQL.Strings = (
      'select * from "emb_especial_item_ped"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido" = :num_pedido'
      '  and "seq" = :seq'
      '  and "num_sequencia" = :num_sequencia')
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
    Left = 196
    Top = 501
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
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"emb_especial_item_ped"."cod_produto"'
      Size = 15
    end
    object emb_especial_item_pedqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_item_ped"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object emb_especial_item_pedpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_item_ped"."pes_liquido"'
      Precision = 18
      Size = 2
    end
  end
  object IBDataSetGradeErros: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterCancel = IBDataSetGradeAfterCancel
    AfterClose = IBDataSetGradeAfterClose
    AfterDelete = IBDataSetGradeErrosAfterDelete
    AfterPost = IBDataSetGradeAfterPost
    AfterScroll = IBDataSetGradeErrosAfterScroll
    BeforeOpen = IBDataSetGradeBeforeOpen
    BeforePost = IBDataSetGradeBeforePost
    OnCalcFields = IBDataSetGradeCalcFields
    OnDeleteError = IBDataSetGradeDeleteError
    OnEditError = IBDataSetGradeEditError
    OnNewRecord = IBDataSetGradeNewRecord
    OnPostError = IBDataSetGradePostError
    OnUpdateError = IBDataSetGradeUpdateError
    BufferChunks = 1000
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "imp_ped_cli_prod"'
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"OLD_cod_cliente" and'
      
        '  "imp_ped_cli_prod"."num_pedido_cli" = :"OLD_num_pedido_cli" an' +
        'd'
      '  "imp_ped_cli_prod"."seq" = :"OLD_seq"')
    InsertSQL.Strings = (
      'insert into "imp_ped_cli_prod"'
      
        '  ("imp_ped_cli_prod"."cod_empresa", "imp_ped_cli_prod"."cod_cli' +
        'ente", '
      
        '   "imp_ped_cli_prod"."num_pedido_cli", "imp_ped_cli_prod"."seq"' +
        ', '
      '   "imp_ped_cli_prod"."cod_produto",'
      '   "imp_ped_cli_prod"."qtde", "imp_ped_cli_prod"."preco", '
      '   "imp_ped_cli_prod"."preco_esp",'
      
        '   "imp_ped_cli_prod"."ies_situacao", "imp_ped_cli_prod"."dat_ca' +
        'dastro", '
      
        '   "imp_ped_cli_prod"."ies_status", "imp_ped_cli_prod"."vlr_liqu' +
        'ido", '
      '   "imp_ped_cli_prod"."vlr_liquido_esp",'
      
        '   "imp_ped_cli_prod"."vol_caixas", "imp_ped_cli_prod"."qtd_caix' +
        'as", '
      '   "imp_ped_cli_prod"."pes_liquido",'
      
        '   "imp_ped_cli_prod"."pes_bruto", "imp_ped_cli_prod"."ies_emb_e' +
        'sp", '
      '   "imp_ped_cli_prod"."un_cx_master",'
      
        '   "imp_ped_cli_prod"."pct_comissao_f", "imp_ped_cli_prod"."pct_' +
        'comissao_c",'
      
        '   "imp_ped_cli_prod"."dat_preco",  "imp_ped_cli_prod"."obs_prec' +
        'o",'
      
        '   "imp_ped_cli_prod"."seq_emb_esp", "imp_ped_cli_prod"."ies_cai' +
        'xa_fechada")'
      'values'
      
        '  (:"cod_empresa", :"cod_cliente", :"num_pedido_cli", :"seq", :"' +
        'cod_produto", '
      
        '   :"qtde", :"preco", :"preco_esp", :"ies_situacao", :"dat_cadas' +
        'tro", :"ies_status", '
      
        '   :"vlr_liquido", :"vlr_liquido_esp", :"vol_caixas", :"qtd_caix' +
        'as", :"pes_liquido", '
      
        '   :"pes_bruto", :"ies_emb_esp", :"un_cx_master", :"pct_comissao' +
        '_f", '
      ':"pct_comissao_c", :"dat_preco", :"obs_preco", :"seq_emb_esp", '
      ':"ies_caixa_fechada")'
      '')
    RefreshSQL.Strings = (
      'Select *'
      'from "imp_ped_cli_prod" '
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"cod_cliente" and'
      '  "imp_ped_cli_prod"."num_pedido_cli" = :"num_pedido_cli" and'
      '  "imp_ped_cli_prod"."seq" = :"seq"')
    SelectSQL.Strings = (
      'select * from "imp_ped_cli_prod" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and a."num_pedido_cli" = :num_pedido_cli'
      '  and (a."ies_situacao" = '#39'E'#39
      '  or a."ies_situacao" = '#39'X'#39
      '  or a."ies_situacao" = '#39'P'#39')'
      'order by a."seq"')
    ModifySQL.Strings = (
      'update "imp_ped_cli_prod"'
      'set'
      '  "imp_ped_cli_prod"."cod_empresa" = :"cod_empresa",'
      '  "imp_ped_cli_prod"."cod_cliente" = :"cod_cliente",'
      '  "imp_ped_cli_prod"."num_pedido_cli" = :"num_pedido_cli",'
      '  "imp_ped_cli_prod"."seq" = :"seq",'
      '  "imp_ped_cli_prod"."cod_produto" = :"cod_produto",'
      '  "imp_ped_cli_prod"."qtde" = :"qtde",'
      '  "imp_ped_cli_prod"."preco" = :"preco",'
      '  "imp_ped_cli_prod"."preco_esp" = :"preco_esp",'
      '  "imp_ped_cli_prod"."ies_situacao" = :"ies_situacao",'
      '  "imp_ped_cli_prod"."dat_cadastro" = :"dat_cadastro",'
      '  "imp_ped_cli_prod"."ies_status" = :"ies_status",'
      '  "imp_ped_cli_prod"."vlr_liquido" = :"vlr_liquido",'
      '  "imp_ped_cli_prod"."vlr_liquido_esp" = :"vlr_liquido_esp",'
      '  "imp_ped_cli_prod"."vol_caixas" = :"vol_caixas",'
      '  "imp_ped_cli_prod"."qtd_caixas" = :"qtd_caixas",'
      '  "imp_ped_cli_prod"."pes_liquido" = :"pes_liquido",'
      '  "imp_ped_cli_prod"."pes_bruto" = :"pes_bruto",'
      '  "imp_ped_cli_prod"."ies_emb_esp" = :"ies_emb_esp",'
      '  "imp_ped_cli_prod"."un_cx_master" = :"un_cx_master",'
      '  "imp_ped_cli_prod"."pct_comissao_f" = :"pct_comissao_f",'
      '  "imp_ped_cli_prod"."pct_comissao_c" = :"pct_comissao_c",'
      '  "imp_ped_cli_prod"."dat_preco" = :"dat_preco",'
      '  "imp_ped_cli_prod"."obs_preco" = :"obs_preco",'
      '  "imp_ped_cli_prod"."seq_emb_esp" = :"seq_emb_esp",'
      '  "imp_ped_cli_prod"."ies_caixa_fechada" = :"ies_caixa_fechada"'
      'where'
      '  "imp_ped_cli_prod"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "imp_ped_cli_prod"."cod_cliente" = :"OLD_cod_cliente" and'
      
        '  "imp_ped_cli_prod"."num_pedido_cli" = :"OLD_num_pedido_cli" an' +
        'd'
      '  "imp_ped_cli_prod"."seq" = :"OLD_seq"'
      '')
    Active = True
    Left = 90
    Top = 240
    object SmallintField1: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'seq'
      Origin = '"imp_ped_cli_prod"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"imp_ped_cli_prod"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Visible = False
    end
    object IBStringField1: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"imp_ped_cli_prod"."num_pedido_cli"'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object IBStringField2: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"imp_ped_cli_prod"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Visible = False
      Size = 12
    end
    object IBDataSetGradeErroscod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"imp_ped_cli_prod"."cod_produto"'
      Required = True
      Size = 15
    end
    object IBDataSetGradeErrosDescricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descricao'
      ReadOnly = True
      Size = 100
      Calculated = True
    end
    object IBBCDField1: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtde'
      Origin = '"imp_ped_cli_prod"."qtde"'
      Required = True
      DisplayFormat = '#,###0.00'
      Precision = 18
      Size = 3
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      Origin = '"imp_ped_cli_prod"."preco"'
      ReadOnly = True
      DisplayFormat = '#,##0.000000'
    end
    object IBStringField4: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"imp_ped_cli_prod"."ies_situacao"'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object StringField2: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calSituacao'
      ReadOnly = True
      Size = 10
      Calculated = True
    end
    object IBStringField5: TIBStringField
      FieldName = 'ies_status'
      Origin = '"imp_ped_cli_prod"."ies_status"'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Valor Real'
      FieldName = 'vlr_liquido'
      Origin = '"imp_ped_cli_prod"."vlr_liquido"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBBCDField3: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'vol_caixas'
      Origin = '"imp_ped_cli_prod"."vol_caixas"'
      ReadOnly = True
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 3
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Qtd Caixas'
      FieldName = 'qtd_caixas'
      Origin = '"imp_ped_cli_prod"."qtd_caixas"'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object IBBCDField4: TIBBCDField
      DisplayLabel = 'Pes L'#237'quido'
      FieldName = 'pes_liquido'
      Origin = '"imp_ped_cli_prod"."pes_liquido"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBBCDField5: TIBBCDField
      DisplayLabel = 'Pes Bruto'
      FieldName = 'pes_bruto'
      Origin = '"imp_ped_cli_prod"."pes_bruto"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"imp_ped_cli_prod"."dat_cadastro"'
      ReadOnly = True
      Visible = False
    end
    object IBStringField6: TIBStringField
      DisplayLabel = 'Emb Esp'
      FieldName = 'ies_emb_esp'
      Origin = '"imp_ped_cli_prod"."ies_emb_esp"'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object IBDataSetGradeErrospct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"imp_ped_cli_prod"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object IBDataSetGradeErrospct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"imp_ped_cli_prod"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
    object IBDataSetGradeErrospreco_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'preco_esp'
      Origin = '"imp_ped_cli_prod"."preco_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object IBDataSetGradeErrosvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Valor Esp'
      FieldName = 'vlr_liquido_esp'
      Origin = '"imp_ped_cli_prod"."vlr_liquido_esp"'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object IBDataSetGradeErrosdat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = '"imp_ped_cli_prod"."dat_preco"'
    end
    object IBDataSetGradeErrosobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"imp_ped_cli_prod"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetGradeErrosseq_emb_esp: TIntegerField
      FieldName = 'seq_emb_esp'
      Origin = '"imp_ped_cli_prod"."seq_emb_esp"'
    end
    object IBDataSetGradeErrosun_cx_master: TIBBCDField
      DisplayLabel = 'UN/CX'
      FieldName = 'un_cx_master'
      Origin = '"imp_ped_cli_prod"."un_cx_master"'
      Precision = 9
      Size = 4
    end
    object IBDataSetGradeErrosies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"imp_ped_cli_prod"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetGradeErrosobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"imp_ped_cli_prod"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsIBDataSetGradeErros: TDataSource
    DataSet = IBDataSetGradeErros
    Left = 90
    Top = 272
  end
  object PopupMenu: TPopupMenu
    Left = 916
    Top = 36
    object mnuConfCaixas: TMenuItem
      Action = actConfCaixas
    end
    object ConfirmarTodasasCaixas1: TMenuItem
      Action = actConfAllCaixas
    end
  end
  object QrAux2: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "imp_ped_cli_prod"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_cliente" = :cod_cliente'
      '  and "num_pedido_cli" = :num_pedido_cli')
    Left = 732
    Top = 472
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
        Name = 'num_pedido_cli'
        ParamType = ptUnknown
      end>
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 812
    Top = 384
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 852
    Top = 384
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
    Left = 772
    Top = 440
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
  object TotalPesoPallets: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select SUM("pes_liquido") * 1.10 "pes_liquido_pallet"'
      'from "imp_ped_cli_prod"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_cliente" = :cod_cliente'
      '  and "num_pedido_cli" = :num_pedido_cli'
      '  and "seq_pallet" = :seq_pallet')
    Left = 492
    Top = 456
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
        Name = 'num_pedido_cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_pallet'
        ParamType = ptUnknown
      end>
    object TotalPesoPalletspes_liquido_pallet: TIBBCDField
      FieldName = 'pes_liquido_pallet'
      Precision = 18
      Size = 4
    end
  end
  object AtualizarPallets: TIBSQL
    Database = dmConnection.dbSig
    ParamCheck = True
    SQL.Strings = (
      'update "imp_ped_cli_prod"'
      '  set "pes_liquido_pallet" = :"pes_liquido_pallet",'
      '      "pes_bruto_pallet"   = :"pes_bruto_pallet"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_cliente" = :cod_cliente'
      '  and "num_pedido_cli" = :num_pedido_cli'
      '  and "seq_pkl" = :seq_pkl')
    Transaction = dmConnection.TransSig
    Left = 492
    Top = 488
  end
  object emb_esp_imp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "emb_especial_imp"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido_cli" = :num_pedido_cli'
      '  and "seq" = :seq')
    Left = 116
    Top = 539
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido_cli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq'
        ParamType = ptUnknown
      end>
    object emb_esp_impcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"emb_especial_imp"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_impnum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"emb_especial_imp"."num_pedido_cli"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 15
    end
    object emb_esp_impseq: TIntegerField
      FieldName = 'seq'
      Origin = '"emb_especial_imp"."seq"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object emb_esp_impden_embalagem: TIBStringField
      FieldName = 'den_embalagem'
      Origin = '"emb_especial_imp"."den_embalagem"'
      Size = 75
    end
    object emb_esp_impqtd_total: TIBBCDField
      FieldName = 'qtd_total'
      Origin = '"emb_especial_imp"."qtd_total"'
      Precision = 18
      Size = 3
    end
    object emb_esp_impvol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"emb_especial_imp"."vol_total"'
      Precision = 18
      Size = 3
    end
    object emb_esp_imppes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"emb_especial_imp"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object emb_esp_imppes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"emb_especial_imp"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object emb_esp_impqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"emb_especial_imp"."qtd_caixas"'
    end
    object emb_esp_impqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"emb_especial_imp"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object emb_esp_imppes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"emb_especial_imp"."pes_unitario"'
    end
    object emb_esp_impaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"emb_especial_imp"."altura"'
      Precision = 9
      Size = 4
    end
    object emb_esp_implargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"emb_especial_imp"."largura"'
      Precision = 9
      Size = 4
    end
    object emb_esp_impprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"emb_especial_imp"."profundidade"'
      Precision = 9
      Size = 4
    end
    object emb_esp_imppes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = 'emb_especial_imp.pes_bruto_cx'
    end
    object emb_esp_impmesclar: TIBStringField
      FieldName = 'mesclar'
      Origin = '"emb_especial_imp"."mesclar"'
      FixedChar = True
      Size = 1
    end
  end
  object spr_emb_esp_imp: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_emb_esp_imp'
    Left = 500
    Top = 523
  end
  object emb_esp_item_imp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from "emb_especial_item_imp"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_pedido_cli" = :num_pedido_cli'
      '  and "seq" = :seq'
      '  and "num_sequencia" = :num_sequencia')
    Left = 116
    Top = 571
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido_cli'
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
  object spr_vlr_esp_imp: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_vlr_esp_imp'
    Left = 276
    Top = 440
  end
  object emb_padrao: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "cby_calc_embalagem"(:cod_empresa, :cod_produto, :' +
        'qtd_produto);')
    Left = 774
    Top = 472
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
  object Fabricantes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = FabricantesAfterOpen
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "fabricantes"'
      'order by "nome"')
    Left = 812
    Top = 440
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
  end
  object dsFabricantes: TDataSource
    DataSet = Fabricantes
    Left = 812
    Top = 472
  end
end
