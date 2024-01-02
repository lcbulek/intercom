object fr_Filtro: Tfr_Filtro
  Left = 358
  Top = 174
  HelpType = htKeyword
  HelpKeyword = '003'
  ActiveControl = edNumPedIntercom
  AutoScroll = False
  Caption = 'Pesquisar Pedidos e Faturas'
  ClientHeight = 766
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
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 1350
    Height = 116
    Align = alTop
    TabOrder = 0
    object pnlFornecedor: TPanel
      Left = 717
      Top = 16
      Width = 631
      Height = 98
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object gbComentarioPed: TGroupBox
        Left = 0
        Top = 0
        Width = 631
        Height = 50
        Align = alTop
        Caption = 'Coment'#225'rios para Pedidos (somente na tela)'
        TabOrder = 0
        object dbmComentarios: TDBMemo
          Left = 2
          Top = 16
          Width = 627
          Height = 32
          Align = alClient
          DataField = 'txt_observacao'
          DataSource = ds_Pedidos
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object gbComentarioFat: TGroupBox
        Left = 0
        Top = 50
        Width = 631
        Height = 81
        Align = alTop
        Caption = 'Coment'#225'rios para Faturas (somente na tela)'
        TabOrder = 1
        object DBMemo1: TDBMemo
          Left = 2
          Top = 16
          Width = 627
          Height = 63
          Align = alClient
          DataField = 'txt_observacao'
          DataSource = ds_Faturas
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object GroupBox8: TGroupBox
      Left = 2
      Top = 16
      Width = 715
      Height = 98
      Align = alLeft
      Caption = 'Filtros para pesquisa'
      TabOrder = 1
      DesignSize = (
        715
        98)
      object Label1: TLabel
        Left = 7
        Top = 57
        Width = 56
        Height = 14
        Caption = 'Clientes'
      end
      object Label2: TLabel
        Left = 220
        Top = 57
        Width = 84
        Height = 14
        Caption = 'Fornecedores'
      end
      object Label3: TLabel
        Left = 453
        Top = 57
        Width = 21
        Height = 14
        Caption = 'Ano'
      end
      object edNumPedIntercom: TLabeledEdit
        Left = 7
        Top = 30
        Width = 44
        Height = 22
        CharCase = ecUpperCase
        EditLabel.Width = 42
        EditLabel.Height = 14
        EditLabel.Caption = 'Number'
        MaxLength = 20
        TabOrder = 0
        OnKeyPress = edNumPedIntercomKeyPress
      end
      object edNumPedido: TLabeledEdit
        Left = 55
        Top = 30
        Width = 150
        Height = 22
        CharCase = ecUpperCase
        EditLabel.Width = 35
        EditLabel.Height = 14
        EditLabel.Caption = 'Order'
        MaxLength = 20
        TabOrder = 1
      end
      object edNumConfirmacao: TLabeledEdit
        Left = 208
        Top = 30
        Width = 150
        Height = 22
        CharCase = ecUpperCase
        EditLabel.Width = 56
        EditLabel.Height = 14
        EditLabel.Caption = 'Proforma'
        MaxLength = 20
        TabOrder = 2
      end
      object edNumFatura: TLabeledEdit
        Left = 361
        Top = 30
        Width = 150
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        EditLabel.Width = 49
        EditLabel.Height = 14
        EditLabel.Caption = 'Invoice'
        MaxLength = 25
        TabOrder = 3
      end
      object dbcClientes: TJvDBLookupCombo
        Left = 7
        Top = 71
        Width = 212
        Height = 21
        DropDownCount = 30
        DisplayAllFields = True
        DisplayEmpty = ' '
        EmptyValue = '0'
        LookupField = 'cod_cliente'
        LookupDisplay = 'cod_cliente'
        LookupSource = ds_Clientes
        TabOrder = 5
        OnClick = dbcClientesClick
      end
      object dbcFornecedores: TJvDBLookupCombo
        Left = 220
        Top = 71
        Width = 233
        Height = 21
        DropDownCount = 30
        DisplayAllFields = True
        DisplayEmpty = ' '
        EmptyValue = '0'
        LookupField = 'cod_fornecedor'
        LookupDisplay = 'raz_social_reduz'
        LookupSource = ds_Fornecedores
        TabOrder = 6
      end
      object seAno: TSpinEdit
        Left = 453
        Top = 70
        Width = 60
        Height = 23
        MaxLength = 4
        MaxValue = 0
        MinValue = 0
        TabOrder = 7
        Value = 0
      end
      object edNumLote: TLabeledEdit
        Left = 515
        Top = 30
        Width = 192
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        EditLabel.Width = 28
        EditLabel.Height = 14
        EditLabel.Caption = 'Lote'
        MaxLength = 25
        TabOrder = 4
      end
      object JvImgBtn5: TJvImgBtn
        Left = 555
        Top = 60
        Width = 100
        Height = 33
        Action = act_Filtrar
        Anchors = [akTop]
        TabOrder = 8
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Courier New'
        HotTrackFont.Style = []
        Images = dmConnection.ImageList
        ImageIndex = 49
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 116
    Width = 1350
    Height = 650
    Align = alClient
    TabOrder = 1
    object pgcFiltro: TPageControl
      Left = 1
      Top = 1
      Width = 1348
      Height = 648
      ActivePage = tbsPedido
      Align = alClient
      TabOrder = 0
      TabWidth = 125
      OnChange = pgcFiltroChange
      object tbsPedido: TTabSheet
        Caption = 'Pedidos(F5)'
        object Panel4: TPanel
          Left = 0
          Top = 574
          Width = 1340
          Height = 45
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1294
            Height = 45
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            OnEnter = Panel3Enter
            OnExit = Panel3Exit
            DesignSize = (
              1294
              45)
            object Label48: TLabel
              Left = 6
              Top = 0
              Width = 91
              Height = 14
              Caption = 'Busca produto'
            end
            object Label55: TLabel
              Left = 156
              Top = 0
              Width = 105
              Height = 14
              Caption = 'Busca descri'#231#227'o'
            end
            object edBuscaCodigo: TEdit
              Left = 6
              Top = 15
              Width = 146
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 20
              TabOrder = 0
              OnKeyDown = edBuscaCodigoKeyDown
            end
            object edBuscaDesc: TEdit
              Left = 156
              Top = 15
              Width = 335
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 75
              TabOrder = 1
              OnKeyDown = edBuscaDescKeyDown
            end
            object btnSalvarPedido: TJvImgBtn
              Left = 1342
              Top = 7
              Width = 100
              Height = 33
              Action = actSalvarPedido
              Anchors = [akTop]
              TabOrder = 2
              HotTrackFont.Charset = ANSI_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Courier New'
              HotTrackFont.Style = []
              Images = dmConnection.ImageList
              ImageIndex = 47
            end
            object btnAgruparPedidos: TButton
              Left = 504
              Top = 12
              Width = 211
              Height = 25
              Caption = 'Agrupar Pedidos para Embarque'
              TabOrder = 3
              OnClick = btnAgruparPedidosClick
            end
            object btnDesagruparPedidos: TButton
              Left = 720
              Top = 12
              Width = 194
              Height = 25
              Caption = 'Remover Pedidos do Embarque'
              TabOrder = 4
              OnClick = btnDesagruparPedidosClick
            end
            object JvImgBtn2: TJvImgBtn
              Left = 920
              Top = 7
              Width = 160
              Height = 33
              Action = actSalvarPedido
              Anchors = [akTop]
              TabOrder = 5
              HotTrackFont.Charset = ANSI_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Courier New'
              HotTrackFont.Style = []
              Images = dmConnection.ImageList
              ImageIndex = 47
            end
          end
          object ToolBar1: TToolBar
            Left = 1298
            Top = 0
            Width = 46
            Height = 45
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
            TabOrder = 1
            Transparent = True
            object ToolButton2: TToolButton
              Left = 3
              Top = 0
              Action = dmConnection.acClose
              AutoSize = True
            end
          end
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 1340
          Height = 257
          Align = alClient
          TabOrder = 1
          object gfPedido: TJvDBGridFooter
            Left = 2
            Top = 236
            Width = 1336
            Height = 19
            Columns = <
              item
                Alignment = taRightJustify
                DisplayMask = '###,##0.00'
                FieldName = 'vlr_bruto'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '###,##0.00'
                FieldName = 'vlr_liquido_esp'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '###,##0.00'
                FieldName = 'calVlrFaturado'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '###,##0.00'
                FieldName = 'calVlrPendente'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '###,##0.00'
                FieldName = 'calVlrFaturadoEsp'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '###,##0.00'
                FieldName = 'calVlrPendenteEsp'
              end>
            DataSource = ds_Pedidos
            DBGrid = dbgPedidos
            OnCalculate = gfPedidoCalculate
          end
          object dbgPedidos: TJvDBUltimGrid
            Left = 2
            Top = 16
            Width = 1336
            Height = 220
            Align = alClient
            DataSource = ds_Pedidos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            OnCellClick = dbgPedidosCellClick
            OnDrawColumnCell = dbgPedidosDrawColumnCell
            OnDblClick = dbgPedidosDblClick
            MultiSelect = True
            ShowCellHint = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 18
            Columns = <
              item
                Expanded = False
                FieldName = 'cod_cliente'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'raz_social_reduz'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_pedido_cli'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_emissao'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_pedido_for'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_liberacao'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_entrega'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_vertratadm'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ies_li'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_verli'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_ctn_marks'
                Width = 64
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_embalagem'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'grupo'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'terms_payment'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'den_tip_condicao'
                Title.Caption = 'Incoterm'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'porto_emb'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'porto_dest'
                Width = 64
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'vlr_bruto'
                Title.Color = clMoneyGreen
                Width = 64
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_liquido_esp'
                Title.Color = clMoneyGreen
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pes_bruto'
                Title.Color = clMoneyGreen
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vol_total'
                Title.Color = clMoneyGreen
                Width = 64
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'calVlrPendente'
                Title.Color = clSkyBlue
                Width = 64
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'calVlrPendenteEsp'
                Title.Color = clSkyBlue
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'calPesBruto'
                Title.Color = clSkyBlue
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'calVolTotal'
                Title.Color = clSkyBlue
                Width = 56
                Visible = True
              end>
          end
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 437
          Width = 1340
          Height = 137
          Align = alBottom
          Caption = 'Produtos do Pedido'
          TabOrder = 2
          object dbgProdutosPedidos: TJvDBUltimGrid
            Left = 2
            Top = 16
            Width = 1336
            Height = 100
            Align = alClient
            DataSource = dsPedidoProdutos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            OnDrawColumnCell = dbgProdutosPedidosDrawColumnCell
            ShowCellHint = True
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
                FieldName = 'num_sequencia'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_produto'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'calDenPortugues'
                Width = 160
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'calDenIngles'
                Width = 160
                Visible = True
              end
              item
                Color = 16777088
                Expanded = False
                FieldName = 'qtd_pedido'
                Width = 70
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'vlr_unit_pedido'
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'vlr_pedido'
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_unit_ped_esp'
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_pedido_esp'
                Width = 74
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'num_fatura'
                Width = 75
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'dat_fatura'
                Width = 60
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'qtd_fatura'
                Width = 70
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'vlr_fatura'
                Width = 74
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_fatura_esp'
                Width = 74
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'qtd_pendente'
                Width = 70
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'vlr_pendente'
                Width = 74
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_pendente_esp'
                Width = 74
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
                FieldName = 'volume'
                Width = 48
                Visible = True
              end>
          end
          object gfProdutosPedidos: TJvDBGridFooter
            Left = 2
            Top = 116
            Width = 1336
            Height = 19
            Columns = <
              item
                FieldName = 'vlr_pedido'
              end
              item
                FieldName = 'vlr_pedido_esp'
              end
              item
                FieldName = 'vlr_fatura'
              end
              item
                FieldName = 'vlr_fatura_esp'
              end
              item
                FieldName = 'vlr_pendente'
              end
              item
                FieldName = 'vlr_pendente_esp'
              end
              item
                FieldName = 'pes_bruto'
              end
              item
                FieldName = 'volume'
              end>
            DataSource = dsPedidoProdutos
            DBGrid = dbgProdutosPedidos
            OnCalculate = gfProdutosPedidosCalculate
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 257
          Width = 1340
          Height = 180
          Align = alBottom
          Caption = 'Panel6'
          TabOrder = 3
          object GroupBox7: TGroupBox
            Left = 1
            Top = 1
            Width = 1338
            Height = 178
            Align = alClient
            Caption = 'Pagamentos efetuados no pedido'
            TabOrder = 0
            object sgPagPedido: TJvStringGrid
              Left = 2
              Top = 16
              Width = 1334
              Height = 160
              Align = alClient
              ColCount = 13
              DefaultRowHeight = 18
              FixedCols = 0
              RowCount = 15
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
              ParentFont = False
              TabOrder = 0
              Alignment = taCenter
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'MS Sans Serif'
              FixedFont.Style = []
              ColWidths = (
                236
                64
                64
                64
                91
                94
                205
                263
                172
                216
                168
                120
                64)
            end
          end
        end
      end
      object tbsNF: TTabSheet
        Caption = 'Faturas(F6)'
        ImageIndex = 1
        object pnlNF: TPanel
          Left = 0
          Top = 575
          Width = 1340
          Height = 44
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object ToolBar3: TToolBar
            Left = 1294
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
            object ToolButton3: TToolButton
              Left = 3
              Top = 0
              Action = dmConnection.acClose
              AutoSize = True
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 1294
            Height = 44
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            OnEnter = Panel3Enter
            OnExit = Panel3Exit
            DesignSize = (
              1294
              44)
            object Label4: TLabel
              Left = 6
              Top = 0
              Width = 91
              Height = 14
              Caption = 'Busca produto'
            end
            object Label5: TLabel
              Left = 156
              Top = 0
              Width = 105
              Height = 14
              Caption = 'Busca descri'#231#227'o'
            end
            object edBuscaCodigo1: TEdit
              Left = 6
              Top = 15
              Width = 146
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 20
              TabOrder = 0
              OnKeyDown = edBuscaCodigo1KeyDown
            end
            object edBuscaDesc1: TEdit
              Left = 156
              Top = 15
              Width = 335
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 75
              TabOrder = 1
              OnKeyDown = edBuscaDesc1KeyDown
            end
            object JvImgBtn1: TJvImgBtn
              Left = 921
              Top = 6
              Width = 160
              Height = 33
              Action = actSalvarFaturas
              Anchors = [akTop]
              TabOrder = 2
              HotTrackFont.Charset = ANSI_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Courier New'
              HotTrackFont.Style = []
              Images = dmConnection.ImageList
              ImageIndex = 47
            end
            object btnAgruparFaturas: TButton
              Left = 504
              Top = 12
              Width = 209
              Height = 25
              Caption = 'Agrupar Faturas para Embarque'
              TabOrder = 3
              OnClick = btnAgruparFaturasClick
            end
            object btnDesagruparFaturas: TButton
              Left = 717
              Top = 12
              Width = 197
              Height = 25
              Caption = 'Remover Faturas do Embarque'
              TabOrder = 4
              OnClick = btnDesagruparFaturasClick
            end
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 1340
          Height = 258
          Align = alClient
          TabOrder = 1
          object dbgFaturas: TJvDBUltimGrid
            Left = 2
            Top = 16
            Width = 1336
            Height = 221
            Align = alClient
            DataSource = ds_Faturas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            OnCellClick = dbgFaturasCellClick
            OnDrawColumnCell = dbgFaturasDrawColumnCell
            OnDblClick = dbgFaturasDblClick
            MultiSelect = True
            ShowCellHint = True
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
                FieldName = 'cod_cliente'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'raz_social_reduz'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_emissao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_fatura'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_vertratadm'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ies_li'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_verli'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_ref_volume'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'porto_emb'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'porto_dest'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_instBL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_apro_bl'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_mod_doc'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_fotos'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_liquidacao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_coleta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_embarque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_eda_br'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_pl_des'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_env_originais'
                Title.Caption = 'Env I/PL'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'dat_rec_originais'
                Title.Caption = 'Rec I/PL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_env_bl'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_rec_bl'
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'vlr_liquido'
                Title.Caption = 'Total Real'
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_liquido_esp'
                Title.Caption = 'Total Esp'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pes_bru_geral'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pes_liq_geral'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vol_geral'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_caixas'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_pallets'
                Width = 52
                Visible = True
              end>
          end
          object gfFaturas: TJvDBGridFooter
            Left = 2
            Top = 237
            Width = 1336
            Height = 19
            Columns = <
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_liquido'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_liquido_esp'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_comissao_f'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_comissao_c'
              end>
            DataSource = ds_Faturas
            DBGrid = dbgFaturas
            OnCalculate = gfFaturasCalculate
          end
        end
        object GroupBox10: TGroupBox
          Left = 0
          Top = 438
          Width = 1340
          Height = 137
          Align = alBottom
          Caption = 'Produtos da Fatura'
          TabOrder = 2
          object dbgProdutosFatura: TJvDBUltimGrid
            Left = 2
            Top = 16
            Width = 1336
            Height = 100
            Align = alClient
            DataSource = dsProdutosFatura
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            ShowCellHint = True
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
                FieldName = 'cod_produto'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'calDenPortugues'
                Width = 160
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'calDenIngles'
                Width = 160
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_pedido_cli'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_produto'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_unitario'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_liquido'
                Width = 74
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_unitario_esp'
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_liquido_esp'
                Width = 74
                Visible = True
              end>
          end
          object JvDBGridFooter1: TJvDBGridFooter
            Left = 2
            Top = 116
            Width = 1336
            Height = 19
            Columns = <
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_liquido'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_liquido_esp'
              end>
            DataSource = dsProdutosFatura
            DBGrid = dbgProdutosFatura
            OnCalculate = JvDBGridFooter1Calculate
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 258
          Width = 1340
          Height = 180
          Align = alBottom
          TabOrder = 3
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 1338
            Height = 178
            Align = alClient
            Caption = 'Pagamentos efetuados na fatura'
            TabOrder = 0
            object sgPagFatura: TJvStringGrid
              Left = 2
              Top = 16
              Width = 1334
              Height = 160
              Align = alClient
              ColCount = 6
              DefaultRowHeight = 18
              FixedCols = 0
              RowCount = 15
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
              ParentFont = False
              TabOrder = 0
              Alignment = taCenter
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'MS Sans Serif'
              FixedFont.Style = []
              ColWidths = (
                236
                64
                64
                64
                91
                94)
            end
          end
        end
      end
      object tbsComissao: TTabSheet
        Caption = 'Comiss'#245'es(F7)'
        ImageIndex = 2
        object GroupBox11: TGroupBox
          Left = 0
          Top = 0
          Width = 1340
          Height = 308
          Align = alTop
          TabOrder = 0
          object dbgComissoes: TJvDBUltimGrid
            Left = 2
            Top = 16
            Width = 1336
            Height = 271
            Align = alClient
            DataSource = ds_Faturas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            OnDblClick = dbgFaturasDblClick
            ShowCellHint = True
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
                FieldName = 'cod_cliente'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'raz_social_reduz'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_emissao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_fatura'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_ref_volume'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_liquidacao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_embarque'
                Visible = True
              end
              item
                Color = 8454143
                Expanded = False
                FieldName = 'vlr_liquido'
                Title.Caption = 'Total Real'
                Visible = True
              end
              item
                Color = 16744703
                Expanded = False
                FieldName = 'vlr_liquido_esp'
                Title.Caption = 'Total Esp'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_comissao_f'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_pgto_comis_f'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_comissao_c'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_pgto_comis_c'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_acerto_com'
                Width = 60
                Visible = True
              end>
          end
          object gfComissoes: TJvDBGridFooter
            Left = 2
            Top = 287
            Width = 1336
            Height = 19
            Columns = <
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_liquido'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_liquido_esp'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_comissao_f'
              end
              item
                Alignment = taRightJustify
                DisplayMask = '#,##0.00'
                FieldName = 'vlr_comissao_c'
              end>
            DataSource = ds_Faturas
            DBGrid = dbgComissoes
            OnCalculate = gfFaturasCalculate
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 399
    Top = 200
    object act_F4: TAction
      Caption = 'act_F4'
      ShortCut = 115
      OnExecute = act_F4Execute
    end
    object actNF_Open: TAction
      Category = 'NF'
      Caption = '&Abrir'
      ImageIndex = 111
      OnExecute = actNF_OpenExecute
    end
    object actNF_Insert: TAction
      Category = 'NF'
      Caption = '&Novo'
      Enabled = False
      ImageIndex = 110
      Visible = False
      OnExecute = actNF_InsertExecute
    end
    object actPedido_Open: TAction
      Category = 'Pedido'
      Caption = '&Abrir'
      ImageIndex = 111
      OnExecute = actPedido_OpenExecute
    end
    object actPedido_Insert: TAction
      Category = 'Pedido'
      Caption = '&Novo'
      Enabled = False
      ImageIndex = 110
      Visible = False
      OnExecute = actPedido_InsertExecute
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
    object act_Filtrar: TAction
      Caption = 'Pesquisar'
      ImageIndex = 49
      ShortCut = 114
      OnExecute = act_FiltrarExecute
    end
    object actPedidoNF: TAction
      Category = 'Pedido'
      Caption = 'actPedidoNF'
    end
    object actSalvarPedido: TAction
      Category = 'Pedido'
      Caption = '&Salvar coment'#225'rio'
      ImageIndex = 47
      OnExecute = actSalvarPedidoExecute
    end
    object actSalvarFaturas: TAction
      Category = 'NF'
      Caption = '&Salvar coment'#225'rio'
      ImageIndex = 47
      OnExecute = actSalvarFaturasExecute
    end
    object act_F7: TAction
      Caption = 'act_F7'
      ShortCut = 118
      OnExecute = act_F7Execute
    end
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
      ''
      'order by "cod_cliente"')
    Left = 592
    Top = 16
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
    Left = 592
    Top = 56
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
  object ds_Clientes: TDataSource
    DataSet = Clientes
    Left = 626
    Top = 16
  end
  object ds_Fornecedores: TDataSource
    DataSet = Fornecedores
    Left = 628
    Top = 56
  end
  object Pedidos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = PedidosAfterOpen
    AfterPost = PedidosAfterPost
    AfterScroll = PedidosAfterScroll
    OnCalcFields = PedidosCalcFields
    CachedUpdates = True
    SQL.Strings = (
      
        'select                                                          ' +
        '                      '
      
        '        a."cod_empresa",                                        ' +
        '                      '
      
        '        a."num_pedido",                                         ' +
        '                      '
      
        '        a."cod_cliente",                                        ' +
        '                      '
      
        '        a."dat_emissao",                                        ' +
        '                      '
      
        '        a."dat_entrega",                                        ' +
        '                      '
      
        '        a."dat_cadastro",                                       ' +
        '                      '
      
        '        a."dat_liberacao",                                      ' +
        '                      '
      '        a."cor_embarque",'
      
        '        b."cod_cond_venda",                                     ' +
        '                      '
      
        '        b."cod_porto_emb",                                      ' +
        '                      '
      '        b."cod_porto_des",'
      '        a."dat_embalagem",'
      '        a."dat_ctn_marks",'
      
        '   b."pes_bruto", b."vol_total", a."terms_payment",  a."txt_obse' +
        'rvacao",              '
      
        '   a."vlr_bruto", a."vlr_liquido", a."vlr_bruto_esp", a."vlr_liq' +
        'uido_esp",            '
      
        '   b."num_pedido_cli", b."num_pedido_for", b."cod_fornecedor", c' +
        '."raz_social_reduz",  '
      
        '   a."dat_vertratadm", a."ies_li", a."dat_verli", a."ies_preco_e' +
        'sp"'
      
        ' from "pedido" a, "pedido_complemento" b, "fornecedor" c        ' +
        '                      '
      
        ' where                                                          ' +
        '                      '
      
        '       a."cod_empresa" = :"cod_empresa"                         ' +
        '                      '
      
        '   and a."cod_cliente" = :"cod_cliente"                         ' +
        '                      '
      '  and substr(a."dat_emissao", 1,4) = :ano'
      
        '   and b."cod_empresa" = a."cod_empresa"                        ' +
        '                      '
      
        '   and b."num_pedido" = a."num_pedido"                          ' +
        '                      '
      
        '   and c."cod_fornecedor" = b."cod_fornecedor"                  ' +
        '                      '
      
        '   and a."cod_cliente" in (select "cod_cliente"                 ' +
        '                      '
      
        '                             from "usuario_cliente"             ' +
        '                      '
      
        '                            where "login" = :login)             ' +
        '                      '
      ' order by a."dat_emissao" descending ')
    UpdateObject = upPedidos
    Left = 29
    Top = 178
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
        Name = 'ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end>
    object Pedidosnum_pedido_cli: TIBStringField
      DisplayLabel = 'Order'
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object Pedidosnum_pedido_for: TIBStringField
      DisplayLabel = 'Proforma'
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object Pedidosdat_emissao: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dat_emissao'
      Origin = '"pedido"."dat_emissao"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidosdat_liberacao: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 8
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidoscod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Size = 12
    end
    object Pedidosraz_social_reduz: TIBStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 18
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Size = 30
    end
    object Pedidosvlr_bruto: TIBBCDField
      DisplayLabel = 'Tot Real B'
      FieldName = 'vlr_bruto'
      Origin = '"pedido"."vlr_bruto"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidosvlr_liquido: TIBBCDField
      DisplayLabel = 'Tot Real L'
      FieldName = 'vlr_liquido'
      Origin = '"pedido"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidosvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Tot Esp L'
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidosnum_pedido: TLargeintField
      DisplayLabel = 'Pedido'
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Pedidosvlr_bruto_esp: TIBBCDField
      DisplayLabel = 'Tot Esp B'
      FieldName = 'vlr_bruto_esp'
      Origin = '"pedido"."vlr_bruto_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidosdat_entrega: TDateField
      DisplayLabel = 'Prv Pront'
      FieldName = 'dat_entrega'
      Origin = '"pedido"."dat_entrega"'
      Visible = False
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidoscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object Pedidosdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"pedido"."dat_cadastro"'
      Visible = False
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidoscod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = '"pedido_complemento"."cod_fornecedor"'
      Visible = False
    end
    object PedidoscalVlrPendente: TFloatField
      DisplayLabel = 'Pend Real'
      FieldKind = fkCalculated
      FieldName = 'calVlrPendente'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object PedidoscalVlrPendenteEsp: TFloatField
      DisplayLabel = 'Pend Esp'
      FieldKind = fkCalculated
      FieldName = 'calVlrPendenteEsp'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object PedidoscalVlrFaturado: TFloatField
      DisplayLabel = 'Fat Real'
      FieldKind = fkCalculated
      FieldName = 'calVlrFaturado'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object PedidoscalVlrFaturadoEsp: TFloatField
      DisplayLabel = 'Fat Esp'
      FieldKind = fkCalculated
      FieldName = 'calVlrFaturadoEsp'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object PedidoscalPesBruto: TFloatField
      DisplayLabel = 'Pes Bru'
      FieldKind = fkCalculated
      FieldName = 'calPesBruto'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object PedidoscalVolTotal: TFloatField
      DisplayLabel = 'Vol Tot'
      FieldKind = fkCalculated
      FieldName = 'calVolTotal'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object Pedidospes_bruto: TIBBCDField
      DisplayLabel = 'Pes Bru'
      FieldName = 'pes_bruto'
      Origin = '"pedido_complemento"."pes_bruto"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidosvol_total: TIBBCDField
      DisplayLabel = 'Vol Tot'
      FieldName = 'vol_total'
      Origin = '"pedido_complemento"."vol_total"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object Pedidostxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"pedido"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object Pedidosterms_payment: TIBStringField
      DisplayLabel = 'Condi'#231#227'o'
      DisplayWidth = 10
      FieldName = 'terms_payment'
      Origin = '"pedido"."terms_payment"'
      Size = 255
    end
    object Pedidosdat_vertratadm: TDateField
      DisplayLabel = 'VTA'
      FieldName = 'dat_vertratadm'
      Origin = '"pedido"."dat_vertratadm"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidosies_li: TIBStringField
      DisplayLabel = 'LI'
      FieldName = 'ies_li'
      Origin = '"pedido"."ies_li"'
      FixedChar = True
      Size = 1
    end
    object Pedidosdat_verli: TDateField
      DisplayLabel = 'Venc LI'
      FieldName = 'dat_verli'
      Origin = '"pedido"."dat_verli"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidoscod_cond_venda: TIntegerField
      FieldName = 'cod_cond_venda'
      Origin = '"pedido_complemento"."cod_cond_venda"'
    end
    object Pedidosden_tip_condicao: TStringField
      DisplayLabel = 'Incoter'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'den_tip_condicao'
      Size = 40
      Calculated = True
    end
    object Pedidosgrupo: TStringField
      DisplayLabel = 'Produtos'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'grupo'
      Size = 1024
      Calculated = True
    end
    object Pedidosporto_emb: TStringField
      DisplayLabel = 'Pto Emb'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'porto_emb'
      Size = 50
      Calculated = True
    end
    object Pedidosporto_dest: TStringField
      DisplayLabel = 'Pto Des'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'porto_dest'
      Size = 50
      Calculated = True
    end
    object Pedidoscod_porto_emb: TIntegerField
      FieldName = 'cod_porto_emb'
      Origin = '"pedido_complemento"."cod_porto_emb"'
    end
    object Pedidoscod_porto_des: TIntegerField
      FieldName = 'cod_porto_des'
      Origin = '"pedido_complemento"."cod_porto_des"'
    end
    object Pedidoscor_embarque: TSmallintField
      FieldName = 'cor_embarque'
      Origin = '"pedido"."cor_embarque"'
    end
    object Pedidosdat_embalagem: TDateField
      DisplayLabel = 'Embalagem'
      FieldName = 'dat_embalagem'
      Origin = '"pedido"."dat_embalagem"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Pedidosdat_ctn_marks: TDateField
      DisplayLabel = 'Ctn Marks'
      FieldName = 'dat_ctn_marks'
      Origin = '"pedido"."dat_ctn_marks"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Pedidosies_preco_esp: TIBStringField
      FieldName = 'ies_preco_esp'
      Origin = '"pedido"."ies_preco_esp"'
      FixedChar = True
      Size = 1
    end
  end
  object ds_Pedidos: TDataSource
    DataSet = Pedidos
    OnStateChange = ds_PedidosStateChange
    Left = 61
    Top = 178
  end
  object Faturas: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = FaturasAfterOpen
    AfterPost = FaturasAfterPost
    AfterScroll = FaturasAfterScroll
    OnCalcFields = FaturasCalcFields
    CachedUpdates = True
    SQL.Strings = (
      'select'
      '  a."cod_empresa",'
      
        '  a."num_nota_fiscal",                                          ' +
        '                                   '
      
        '  a."serie",                                                    ' +
        '                                   '
      
        '  a."cod_cliente",                                              ' +
        '                                   '
      
        '  a."dat_emissao",                                              ' +
        '                                   '
      '  a."dat_liquidacao",'
      '  a."dat_embarque",'
      
        '  a."dat_cadastro",                                             ' +
        '                                   '
      '  a."dat_env_originais",'
      '  a."dat_rec_originais",'
      '  a."dat_coleta",'
      '  a."dat_eda_br",'
      
        '  a."ies_situacao",                                             ' +
        '                                   '
      '  a."vlr_bruto",'
      '  a."vlr_bruto_esp",'
      
        '  a."vlr_liquido",                                              ' +
        '                                   '
      '  a."vlr_liquido_esp",'
      '  b."pes_bru_geral",'
      '  b."pes_liq_geral",'
      
        '  b."vol_geral",                                                ' +
        '                                   '
      
        '  b."qtd_caixas",                                               ' +
        '                                   '
      '  b."qtd_pallets", '
      '  b."num_ref_volume",'
      '  b."num_fatura",'
      '  b."cod_cond_venda",'
      '  b."cod_porto_emb",'
      '  b."cod_porto_dest",'
      '  c."cod_fornecedor",'
      '  c."raz_social_reduz",'
      '  a."txt_observacao",'
      '  a."dat_vertratadm", a."ies_li", a."dat_verli",'
      
        '  a."vlr_comissao_f" + sig_nvl(a."overprice_com_f") "vlr_comissa' +
        'o_f",'
      '  a."dat_pgto_comis_f",'
      
        '  a."vlr_comissao_c" + sig_nvl(a."overprice_com_c") "vlr_comissa' +
        'o_c",'
      '  a."dat_pgto_comis_c",'
      '  a."dat_acerto_com", '
      '  a."cor_embarque", '
      '  a."dat_fotos", a."dat_instBL", a."dat_mod_doc",'
      
        '  a."dat_env_bl", a."dat_rec_bl", a."dat_apro_bl", a."dat_pl_des' +
        '",'
      '  a."ies_preco_esp"'
      
        '  from "nota_fiscal_saida" a, "nf_saida_complemento" b, "fornece' +
        'dor" c'
      
        ' where                                                          ' +
        '                                   '
      '       a."cod_empresa"      = :cod_empresa'
      '   and b."cod_empresa"      = a."cod_empresa"'
      
        '   and b."num_nota_fiscal"  = a."num_nota_fiscal"               ' +
        '                                   '
      '   and b."serie"            = a."serie"'
      '   and c."cod_fornecedor"   = b."cod_fornecedor"'
      'order by a."dat_emissao" desc, a."num_nota_fiscal" desc')
    UpdateObject = upFaturas
    Left = 29
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object Faturasnum_fatura: TIBStringField
      DisplayLabel = 'Invoice'
      DisplayWidth = 18
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
    object Faturasdat_emissao: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 11
      FieldName = 'dat_emissao'
      Origin = '"nota_fiscal_saida"."dat_emissao"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Faturasies_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 8
      FieldName = 'ies_situacao'
      Origin = '"nota_fiscal_saida"."ies_situacao"'
      OnGetText = Faturasies_situacaoGetText
      Size = 1
    end
    object Faturascod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 9
      FieldName = 'cod_cliente'
      Origin = '"nota_fiscal_saida"."cod_cliente"'
      Required = True
      Size = 12
    end
    object Faturasraz_social_reduz: TIBStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 19
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object Faturasvlr_liquido: TIBBCDField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 14
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Faturasvlr_bruto: TIBBCDField
      DisplayLabel = 'Valor Bruto'
      DisplayWidth = 14
      FieldName = 'vlr_bruto'
      Origin = '"nota_fiscal_saida"."vlr_bruto"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Faturasvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Valor Total Esp'
      FieldName = 'vlr_liquido_esp'
      Origin = '"nota_fiscal_saida"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Faturasvlr_bruto_esp: TIBBCDField
      DisplayLabel = 'Valor Bruto Esp'
      FieldName = 'vlr_bruto_esp'
      Origin = '"nota_fiscal_saida"."vlr_bruto_esp"'
      Precision = 18
      Size = 2
    end
    object Faturasvol_total: TIBBCDField
      DisplayLabel = 'Vol Tot'
      DisplayWidth = 12
      FieldName = 'vol_geral'
      Origin = '"nf_saida_complemento"."vol_total"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object Faturasqtd_caixas: TIntegerField
      DisplayLabel = 'Caixas'
      DisplayWidth = 11
      FieldName = 'qtd_caixas'
      Origin = '"nf_saida_complemento"."qtd_caixas"'
      DisplayFormat = '#,##0'
    end
    object Faturaspes_bru_geral: TIBBCDField
      DisplayLabel = 'Pes Bru'
      FieldName = 'pes_bru_geral'
      Origin = '"nf_saida_complemento"."pes_bru_geral"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Faturaspes_liq_geral: TIBBCDField
      DisplayLabel = 'Pes Liq'
      FieldName = 'pes_liq_geral'
      Origin = '"nf_saida_complemento"."pes_liq_geral"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Faturasqtd_pallets: TIntegerField
      DisplayLabel = 'Pallets'
      FieldName = 'qtd_pallets'
      Origin = '"nf_saida_complemento"."qtd_pallets"'
      DisplayFormat = '#,###'
    end
    object Faturasnum_ref_volume: TIBStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 14
      FieldName = 'num_ref_volume'
      Origin = '"nf_saida_complemento"."num_ref_volume"'
      FixedChar = True
      Size = 25
    end
    object Faturascod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"nota_fiscal_saida"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object Faturasnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object Faturasserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Size = 4
    end
    object Faturasdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"nota_fiscal_saida"."dat_cadastro"'
      Visible = False
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturascod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object Faturasdat_liquidacao: TDateField
      DisplayLabel = 'Liquida'
      FieldName = 'dat_liquidacao'
      Origin = '"nota_fiscal_saida"."dat_liquidacao"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturastxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"nota_fiscal_saida"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object Faturasdat_embarque: TDateField
      DisplayLabel = 'Embarque'
      FieldName = 'dat_embarque'
      Origin = '"nota_fiscal_saida"."dat_embarque"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_env_originais: TDateField
      DisplayLabel = 'Env Orig'
      FieldName = 'dat_env_originais'
      Origin = '"nota_fiscal_saida"."dat_env_originais"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_rec_originais: TDateField
      DisplayLabel = 'Rec Orig'
      FieldName = 'dat_rec_originais'
      Origin = '"nota_fiscal_saida"."dat_rec_originais"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasvlr_comissao_f: TFloatField
      DisplayLabel = 'Com For'
      FieldName = 'vlr_comissao_f'
      DisplayFormat = '#,##0.00'
    end
    object Faturasdat_pgto_comis_f: TDateField
      DisplayLabel = 'Dat Pgto'
      FieldName = 'dat_pgto_comis_f'
      Origin = '"nota_fiscal_saida"."dat_pgto_comis_f"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasvlr_comissao_c: TFloatField
      DisplayLabel = 'Com Cli'
      FieldName = 'vlr_comissao_c'
      DisplayFormat = '#,##0.00'
    end
    object Faturasdat_pgto_comis_c: TDateField
      DisplayLabel = 'Dat Pgto'
      FieldName = 'dat_pgto_comis_c'
      Origin = '"nota_fiscal_saida"."dat_pgto_comis_c"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_acerto_com: TDateField
      DisplayLabel = 'AcertCom'
      FieldName = 'dat_acerto_com'
      Origin = '"nota_fiscal_saida"."dat_acerto_com"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_vertratadm: TDateField
      DisplayLabel = 'VTA'
      FieldName = 'dat_vertratadm'
      Origin = '"nota_fiscal_saida"."dat_vertratadm"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasies_li: TIBStringField
      DisplayLabel = 'LI'
      FieldName = 'ies_li'
      Origin = '"nota_fiscal_saida"."ies_li"'
      FixedChar = True
      Size = 1
    end
    object Faturasdat_verli: TDateField
      DisplayLabel = 'Venc LI'
      FieldName = 'dat_verli'
      Origin = '"nota_fiscal_saida"."dat_verli"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturascod_cond_venda: TIntegerField
      FieldName = 'cod_cond_venda'
      Origin = '"nf_saida_complemento"."cod_cond_venda"'
    end
    object Faturasden_tip_condicao: TStringField
      DisplayLabel = 'Incoter'
      FieldKind = fkCalculated
      FieldName = 'den_tip_condicao'
      Size = 40
      Calculated = True
    end
    object Faturasdat_coleta: TDateField
      DisplayLabel = 'Prv Emb'
      FieldName = 'dat_coleta'
      Origin = '"nota_fiscal_saida"."dat_coleta"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_eda_br: TDateField
      DisplayLabel = 'ETA BRA'
      FieldName = 'dat_eda_br'
      Origin = '"nota_fiscal_saida"."dat_eda_br"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasporto_emb: TStringField
      DisplayLabel = 'Pto Emb'
      FieldKind = fkCalculated
      FieldName = 'porto_emb'
      Size = 50
      Calculated = True
    end
    object Faturasporto_dest: TStringField
      DisplayLabel = 'Pto Des'
      FieldKind = fkCalculated
      FieldName = 'porto_dest'
      Size = 50
      Calculated = True
    end
    object Faturascod_porto_emb: TIntegerField
      FieldName = 'cod_porto_emb'
      Origin = '"nf_saida_complemento"."cod_porto_emb"'
    end
    object Faturascod_porto_dest: TIntegerField
      FieldName = 'cod_porto_dest'
      Origin = '"nf_saida_complemento"."cod_porto_dest"'
    end
    object Faturascor_embarque: TSmallintField
      FieldName = 'cor_embarque'
      Origin = '"nota_fiscal_saida"."cor_embarque"'
    end
    object Faturasdat_fotos: TDateField
      DisplayLabel = 'Fotos'
      FieldName = 'dat_fotos'
      Origin = '"nota_fiscal_saida"."dat_fotos"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_instBL: TDateField
      DisplayLabel = 'Inst BL'
      FieldName = 'dat_instBL'
      Origin = '"nota_fiscal_saida"."dat_instBL"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_mod_doc: TDateField
      DisplayLabel = 'Mod.Doc'
      FieldName = 'dat_mod_doc'
      Origin = '"nota_fiscal_saida"."dat_mod_doc"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_env_bl: TDateField
      DisplayLabel = 'Env B/L'
      FieldName = 'dat_env_bl'
      Origin = '"nota_fiscal_saida"."dat_env_bl"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_rec_bl: TDateField
      DisplayLabel = 'Rec B/L'
      FieldName = 'dat_rec_bl'
      Origin = '"nota_fiscal_saida"."dat_rec_bl"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasdat_apro_bl: TDateField
      DisplayLabel = 'Apro BL'
      FieldName = 'dat_apro_bl'
      Origin = '"nota_fiscal_saida"."dat_apro_bl"'
      DisplayFormat = 'dd.mm.yy'
    end
    object Faturasies_preco_esp: TIBStringField
      FieldName = 'ies_preco_esp'
      Origin = '"nota_fiscal_saida"."ies_preco_esp"'
      FixedChar = True
      Size = 1
    end
    object Faturasdat_pl_des: TDateField
      DisplayLabel = 'I/PL Des'
      FieldName = 'dat_pl_des'
      Origin = '"nota_fiscal_saida"."dat_pl_des"'
      DisplayFormat = 'dd.mm.yy'
    end
  end
  object ds_Faturas: TDataSource
    DataSet = Faturas
    Left = 61
    Top = 218
  end
  object upPedidos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from "pedido" '
      'where'
      '  "pedido"."cod_empresa" = :"cod_empresa" and'
      '  "pedido"."num_pedido" = :"num_pedido"')
    ModifySQL.Strings = (
      'update "pedido"'
      'set'
      '  "pedido"."txt_observacao" = :"txt_observacao",'
      '  "pedido"."cor_embarque" = :"cor_embarque"'
      'where'
      '  "pedido"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido"."num_pedido" = :"OLD_num_pedido"')
    InsertSQL.Strings = (
      'insert into "pedido"'
      '  ("pedido"."txt_observacao")'
      'values'
      '  (:"txt_observacao")')
    DeleteSQL.Strings = (
      'delete from "pedido"'
      'where'
      '  "pedido"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "pedido"."num_pedido" = :"OLD_num_pedido"')
    Left = 97
    Top = 178
  end
  object cby_pedido_faturados: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from  "cby_pedido_faturados"(:cod_empresa, :num_pedido)' +
        ';')
    Left = 29
    Top = 354
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
    object cby_pedido_faturadosvlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"cby_pedido_faturados"."vlr_bruto"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_adicional: TIBBCDField
      FieldName = 'vlr_adicional'
      Origin = '"cby_pedido_faturados"."vlr_adicional"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_desconto: TIBBCDField
      FieldName = 'vlr_desconto'
      Origin = '"cby_pedido_faturados"."vlr_desconto"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_bruto_esp: TIBBCDField
      FieldName = 'vlr_bruto_esp'
      Origin = '"cby_pedido_faturados"."vlr_bruto_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_canc: TIBBCDField
      FieldName = 'vlr_total_canc'
      Origin = '"cby_pedido_faturados"."vlr_total_canc"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_pend: TIBBCDField
      FieldName = 'vlr_total_pend'
      Origin = '"cby_pedido_faturados"."vlr_total_pend"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_pend_esp: TIBBCDField
      FieldName = 'vlr_total_pend_esp'
      Origin = '"cby_pedido_faturados"."vlr_total_pend_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_fat: TIBBCDField
      FieldName = 'vlr_total_fat'
      Origin = '"cby_pedido_faturados"."vlr_total_fat"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_faturadosvlr_total_fat_esp: TIBBCDField
      FieldName = 'vlr_total_fat_esp'
      Origin = '"cby_pedido_faturados"."vlr_total_fat_esp"'
      Precision = 18
      Size = 2
    end
  end
  object cby_pedido_pendentes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "cby_pedido_pendentes"(:cod_empresa, :num_pedido);')
    Left = 135
    Top = 179
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
    object cby_pedido_pendentesvlr_total: TIBBCDField
      FieldName = 'vlr_total'
      Origin = '"cby_pedido_faturados"."vlr_total"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_pendentesqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"cby_pedido_faturados"."qtd_caixas"'
    end
    object cby_pedido_pendentespes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"cby_pedido_faturados"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_pendentespes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"cby_pedido_faturados"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_pendentesvlr_total_esp: TIBBCDField
      FieldName = 'vlr_total_esp'
      Origin = '"cby_pedido_pendentes"."vlr_total_esp"'
      Precision = 18
      Size = 2
    end
    object cby_pedido_pendentesvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"cby_pedido_pendentes"."volume"'
      Precision = 18
      Size = 3
    end
  end
  object Grupos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."den_tip_produto"'
      'from "tipo_produto" a'
      'where'
      '  exists (select * from "pedido_produto" b'
      '           where b."cod_empresa" = :cod_empresa'
      '             and b."num_pedido"  = :num_pedido'
      '             and exists (select * from "produto" c'
      
        '                          where c."cod_empresa" = b."cod_empresa' +
        '"'
      
        '                            and c."cod_produto" = b."cod_produto' +
        '"'
      
        '                            and c."cod_tip_produto" = a."cod_tip' +
        '_produto"))'
      'group by 1'
      'order by 1'
      '')
    Left = 198
    Top = 180
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
  object PedidoProdutos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnCalcFields = PedidoProdutosCalcFields
    SQL.Strings = (
      'select * from "spr_pedidos_faturas"(:cod_empresa, :num_pedido);')
    Left = 29
    Top = 508
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
    object PedidoProdutosnum_sequencia: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'num_sequencia'
    end
    object PedidoProdutoscod_produto: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"pedido_produto"."cod_produto"'
      Required = True
      OnGetText = PedidoProdutoscod_produtoGetText
      Size = 15
    end
    object PedidoProdutosvlr_unit_pedido: TFloatField
      DisplayLabel = 'Pre'#231'o Real'
      FieldName = 'vlr_unit_pedido'
      Origin = '"spr_pedidos_faturas"."vlr_unit_pedido"'
      DisplayFormat = '#,##0.000000'
    end
    object PedidoProdutosvlr_unit_ped_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'vlr_unit_ped_esp'
      Origin = '"spr_pedidos_faturas"."vlr_unit_ped_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object PedidoProdutosqtd_pedido: TIBBCDField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtd_pedido'
      Origin = '"spr_pedidos_faturas"."qtd_pedido"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object PedidoProdutosvlr_pedido: TIBBCDField
      DisplayLabel = 'Total R'
      DisplayWidth = 10
      FieldName = 'vlr_pedido'
      Origin = '"pedido_produto"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosvlr_pedido_esp: TIBBCDField
      DisplayLabel = 'Total E'
      FieldName = 'vlr_pedido_esp'
      Origin = '"spr_pedidos_faturas"."vlr_pedido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosnum_fatura: TIBStringField
      DisplayLabel = 'Invoice'
      DisplayWidth = 15
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
    object PedidoProdutosdat_fatura: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_fatura'
      DisplayFormat = 'dd/mm/yy'
    end
    object PedidoProdutosqtd_fatura: TIBBCDField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtd_fatura'
      Origin = '"spr_pedidos_faturas"."qtd_fatura"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object PedidoProdutosvlr_unit_fatura: TFloatField
      FieldName = 'vlr_unit_fatura'
      Origin = '"spr_pedidos_faturas"."vlr_unit_fatura"'
      Visible = False
      DisplayFormat = '#,##0.000000'
    end
    object PedidoProdutosvlr_fatura: TIBBCDField
      DisplayLabel = 'Total R'
      FieldName = 'vlr_fatura'
      Origin = '"spr_pedidos_faturas"."vlr_fatura"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosvlr_fatura_esp: TIBBCDField
      DisplayLabel = 'Total E'
      FieldName = 'vlr_fatura_esp'
      Origin = '"spr_pedidos_faturas"."vlr_fatura_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosqtd_pendente: TIBBCDField
      DisplayLabel = 'QtdPend'
      FieldName = 'qtd_pendente'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object PedidoProdutosvlr_pendente: TIBBCDField
      DisplayLabel = 'Pend R'
      FieldName = 'vlr_pendente'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosvlr_pendente_esp: TIBBCDField
      DisplayLabel = 'Pend E'
      FieldName = 'vlr_pendente_esp'
      Origin = '"spr_pedidos_faturas"."vlr_pendente_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object PedidoProdutospes_bruto: TIBBCDField
      DisplayLabel = 'Pes Bruto'
      FieldName = 'pes_bruto'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object PedidoProdutosvolume: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
      Origin = '"spr_pedidos_faturas"."volume"'
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 3
    end
    object PedidoProdutoscalDenPortugues: TStringField
      DisplayLabel = 'Descri'#231#227'o em Portugu'#234's'
      FieldKind = fkCalculated
      FieldName = 'calDenPortugues'
      Size = 1024
      Calculated = True
    end
    object PedidoProdutoscalDenIngles: TStringField
      DisplayLabel = 'Descri'#231#227'o em Ingl'#234's'
      FieldKind = fkCalculated
      FieldName = 'calDenIngles'
      Size = 1024
      Calculated = True
    end
  end
  object dsPedidoProdutos: TDataSource
    DataSet = PedidoProdutos
    Left = 30
    Top = 541
  end
  object TotalPedidoProdutos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "spr_tot_pedidos_faturas"(:cod_empresa, :num_pedid' +
        'o);')
    Left = 64
    Top = 507
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
    object TotalPedidoProdutosvlr_total_pedido: TIBBCDField
      FieldName = 'vlr_total_pedido'
      Origin = '"spr_tot_pedidos_faturas"."vlr_total_pedido"'
      Precision = 18
      Size = 2
    end
    object TotalPedidoProdutosvlr_total_ped_esp: TIBBCDField
      FieldName = 'vlr_total_ped_esp'
      Origin = '"spr_tot_pedidos_faturas"."vlr_total_ped_esp"'
      Precision = 18
      Size = 2
    end
    object TotalPedidoProdutosvlr_total_fatura: TIBBCDField
      FieldName = 'vlr_total_fatura'
      Origin = '"spr_tot_pedidos_faturas"."vlr_total_fatura"'
      Precision = 18
      Size = 2
    end
    object TotalPedidoProdutosvlr_total_fat_esp: TIBBCDField
      FieldName = 'vlr_total_fat_esp'
      Origin = '"spr_tot_pedidos_faturas"."vlr_total_fat_esp"'
      Precision = 18
      Size = 2
    end
    object TotalPedidoProdutosvlr_total_pendente: TIBBCDField
      FieldName = 'vlr_total_pendente'
      Origin = '"spr_tot_pedidos_faturas"."vlr_total_pendente"'
      Precision = 18
      Size = 2
    end
    object TotalPedidoProdutosvlr_total_pendente_esp: TIBBCDField
      FieldName = 'vlr_total_pendente_esp'
      Origin = '"spr_tot_pedidos_faturas"."vlr_total_pendente_esp"'
      Precision = 18
      Size = 2
    end
    object TotalPedidoProdutospes_bruto_total: TIBBCDField
      FieldName = 'pes_bruto_total'
      Origin = '"spr_tot_pedidos_faturas"."pes_bruto_total"'
      Precision = 18
      Size = 2
    end
    object TotalPedidoProdutosvolume_total: TIBBCDField
      FieldName = 'volume_total'
      Origin = '"spr_tot_pedidos_faturas"."volume_total"'
      Precision = 18
      Size = 2
    end
  end
  object dsTotalPedidoProdutos: TDataSource
    DataSet = TotalPedidoProdutos
    Left = 66
    Top = 542
  end
  object cby_produto_pendentes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "cby_produto_pendentes"(:cod_empresa, :num_pedido,' +
        ' :cod_produto);')
    Left = 167
    Top = 179
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
      end>
    object cby_produto_pendentesvlr_total: TIBBCDField
      FieldName = 'vlr_total'
      Origin = '"cby_produto_pendentes"."vlr_total"'
      Precision = 18
      Size = 2
    end
    object cby_produto_pendentesqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"cby_produto_pendentes"."qtd_caixas"'
    end
    object cby_produto_pendentespes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"cby_produto_pendentes"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object cby_produto_pendentespes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"cby_produto_pendentes"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object cby_produto_pendentesvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"cby_produto_pendentes"."volume"'
      Precision = 18
      Size = 3
    end
  end
  object pedido_pagamento_ad: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      '   select a.*, b."num_fatura"'
      '     from "pedido_pagamento" a'
      '      left join "nf_saida_complemento" b'
      '            on b."cod_empresa" = a."cod_empresa"'
      '           and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '           and b."serie" = a."serie"'
      '    where a."cod_empresa" = :cod_empresa'
      '      and a."num_pedido" = :num_pedido'
      '      and a."num_nota_fiscal" is null'
      '    order by a."dat_pagamento"')
    Left = 63
    Top = 353
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
    object pedido_pagamento_advlr_pagamento: TIBBCDField
      FieldName = 'vlr_pagamento'
      Origin = '"pedido_pagamento"."vlr_pagamento"'
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_addat_pagamento: TDateField
      FieldName = 'dat_pagamento'
      Origin = '"pedido_pagamento"."dat_pagamento"'
    end
    object pedido_pagamento_advlr_pagamento_esp: TIBBCDField
      FieldName = 'vlr_pagamento_esp'
      Origin = '"pedido_pagamento"."vlr_pagamento_esp"'
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_adnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"pedido_pagamento"."num_nota_fiscal"'
    end
  end
  object upFaturas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select  *'
      'from "nota_fiscal_saida" '
      'where'
      '  "nota_fiscal_saida"."cod_empresa" = :"cod_empresa" and'
      '  "nota_fiscal_saida"."num_nota_fiscal" = :"num_nota_fiscal" and'
      '  "nota_fiscal_saida"."serie" = :"serie"')
    ModifySQL.Strings = (
      'update "nota_fiscal_saida"'
      'set'
      '  "nota_fiscal_saida"."txt_observacao" = :"txt_observacao",'
      '  "nota_fiscal_saida"."cor_embarque" = :"cor_embarque"'
      'where'
      '  "nota_fiscal_saida"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "nota_fiscal_saida"."num_nota_fiscal" = :"OLD_num_nota_fiscal"' +
        ' and'
      '  "nota_fiscal_saida"."serie" = :"OLD_serie"')
    InsertSQL.Strings = (
      'insert into "nota_fiscal_saida"'
      
        '  ("nota_fiscal_saida"."txt_observacao", "nota_fiscal_saida"."co' +
        'r_embarque")'
      'values'
      '  (:"txt_observacao", :"cor_embarque")')
    DeleteSQL.Strings = (
      'delete from "nota_fiscal_saida"'
      'where'
      '  "nota_fiscal_saida"."cod_empresa" = :"OLD_cod_empresa" and'
      
        '  "nota_fiscal_saida"."num_nota_fiscal" = :"OLD_num_nota_fiscal"' +
        ' and'
      '  "nota_fiscal_saida"."serie" = :"OLD_serie"')
    Left = 96
    Top = 216
  end
  object ProdutosFatura: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnCalcFields = ProdutosFaturaCalcFields
    SQL.Strings = (
      'select a.*, c."num_pedido_cli", c."num_pedido_for"'
      '  from "nota_fiscal_saida_produto" a, "pedido_complemento" c'
      'where'
      '    a."cod_empresa"     = :cod_empresa'
      'and a."num_nota_fiscal" = :num_nota_fiscal'
      'and a."serie" = :serie'
      'and c."cod_empresa" = a."cod_empresa"'
      'and c."num_pedido"  = a."num_pedido"'
      'order by'
      '  "num_sequencia"')
    Left = 101
    Top = 511
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
    object ProdutosFaturacod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"nota_fiscal_saida_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutosFaturacalDenPortugues: TStringField
      DisplayLabel = 'Descri'#231#227'o Portugu'#234's'
      FieldKind = fkCalculated
      FieldName = 'calDenPortugues'
      Size = 1024
      Calculated = True
    end
    object ProdutosFaturacalDenIngles: TStringField
      DisplayLabel = 'Descri'#231#227'o Ingl'#234's'
      FieldKind = fkCalculated
      FieldName = 'calDenIngles'
      Size = 1024
      Calculated = True
    end
    object ProdutosFaturanum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida_produto"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ProdutosFaturaserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida_produto"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object ProdutosFaturanum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"nota_fiscal_saida_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ProdutosFaturacod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"nota_fiscal_saida_produto"."cod_produto"'
      Required = True
      OnGetText = ProdutosFaturacod_produtoGetText
      Size = 15
    end
    object ProdutosFaturanum_pedido_cli: TIBStringField
      DisplayLabel = 'Order'
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object ProdutosFaturaqtd_produto: TIBBCDField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object ProdutosFaturavlr_unitario: TFloatField
      DisplayLabel = 'Pre'#231'o Real'
      FieldName = 'vlr_unitario'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario"'
      DisplayFormat = '#,##0.000000'
    end
    object ProdutosFaturavlr_liquido: TIBBCDField
      DisplayLabel = 'Total R'
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object ProdutosFaturavlr_unitario_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'vlr_unitario_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object ProdutosFaturavlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total E'
      FieldName = 'vlr_liquido_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsProdutosFatura: TDataSource
    DataSet = ProdutosFatura
    Left = 101
    Top = 543
  end
  object CondicaoVenda: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "den_tip_condicao"'
      '  from "condicao_venda"'
      'where "cod_tip_condicao" = :"cod_tip_condicao"')
    Left = 234
    Top = 182
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_tip_condicao'
        ParamType = ptUnknown
      end>
  end
  object Portos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "den_porto" from "portos"'
      'where "cod_porto" = :"cod_porto"')
    Left = 269
    Top = 182
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_porto'
        ParamType = ptUnknown
      end>
  end
  object spr_faturas_pedido: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "spr_faturas_pedido"(:cod_empresa, :num_pedido);')
    Left = 95
    Top = 353
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
  object pedido_pagamento_ef: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      '   select a.*, b."num_fatura"'
      '     from "pedido_pagamento" a'
      '      left join "nf_saida_complemento" b'
      '            on b."cod_empresa" = a."cod_empresa"'
      '           and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '           and b."serie" = a."serie"'
      '    where a."cod_empresa" = :cod_empresa'
      '      and a."num_pedido" = :num_pedido'
      '      and a."num_nota_fiscal" = :num_nota_fiscal'
      '      and a."serie" = '#39'1'#39
      '    order by a."dat_pagamento"')
    Left = 127
    Top = 352
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
        Name = 'num_nota_fiscal'
        ParamType = ptUnknown
      end>
    object pedido_pagamento_efvlr_pagamento: TIBBCDField
      FieldName = 'vlr_pagamento'
      Origin = '"pedido_pagamento"."vlr_pagamento"'
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_efdat_pagamento: TDateField
      FieldName = 'dat_pagamento'
      Origin = '"pedido_pagamento"."dat_pagamento"'
    end
    object pedido_pagamento_efvlr_pagamento_esp: TIBBCDField
      FieldName = 'vlr_pagamento_esp'
      Origin = '"pedido_pagamento"."vlr_pagamento_esp"'
      Precision = 18
      Size = 2
    end
    object pedido_pagamento_efnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"pedido_pagamento"."num_nota_fiscal"'
    end
    object pedido_pagamento_efnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
  end
  object spr_saldo_confirmacao: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "spr_saldo_confirmacao"(:cod_empresa, :num_nota_fi' +
        'scal, :serie);')
    Left = 141
    Top = 214
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
    object spr_saldo_confirmacaonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"spr_saldo_confirmacao"."num_pedido"'
    end
    object spr_saldo_confirmacaonum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"spr_saldo_confirmacao"."num_pedido_for"'
      Size = 15
    end
    object spr_saldo_confirmacaonum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"spr_saldo_confirmacao"."num_pedido_cli"'
      Size = 15
    end
    object spr_saldo_confirmacaodat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"spr_saldo_confirmacao"."dat_liberacao"'
    end
    object spr_saldo_confirmacaovlr_faturado: TIBBCDField
      FieldName = 'vlr_faturado'
      Origin = '"spr_saldo_confirmacao"."vlr_faturado"'
      Precision = 18
      Size = 2
    end
    object spr_saldo_confirmacaovlr_faturado_esp: TIBBCDField
      FieldName = 'vlr_faturado_esp'
      Origin = '"spr_saldo_confirmacao"."vlr_faturado_esp"'
      Precision = 18
      Size = 2
    end
    object spr_saldo_confirmacaovlr_saldo_fat: TIBBCDField
      FieldName = 'vlr_saldo_fat'
      Origin = '"spr_saldo_confirmacao"."vlr_saldo_fat"'
      Precision = 18
      Size = 2
    end
    object spr_saldo_confirmacaovlr_saldo_fat_esp: TIBBCDField
      FieldName = 'vlr_saldo_fat_esp'
      Origin = '"spr_saldo_confirmacao"."vlr_saldo_fat_esp"'
      Precision = 18
      Size = 2
    end
  end
  object spr_fatura_pedido_ptgadiantado: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "spr_fatura_pedido_ptgadiantado"(:cod_empresa, :nu' +
        'm_nota_fiscal, :num_pedido);')
    Left = 181
    Top = 214
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
        Name = 'num_pedido'
        ParamType = ptUnknown
      end>
    object spr_fatura_pedido_ptgadiantadodat_pagamento: TDateField
      FieldName = 'dat_pagamento'
      Origin = '"spr_fatura_pedido_ptgadiantado"."dat_pagamento"'
    end
    object spr_fatura_pedido_ptgadiantadovlr_pagamento: TIBBCDField
      FieldName = 'vlr_pagamento'
      Origin = '"spr_fatura_pedido_ptgadiantado"."vlr_pagamento"'
      Precision = 18
      Size = 2
    end
    object spr_fatura_pedido_ptgadiantadovlr_pagamento_esp: TIBBCDField
      FieldName = 'vlr_pagamento_esp'
      Origin = '"spr_fatura_pedido_ptgadiantado"."vlr_pagamento_esp"'
      Precision = 18
      Size = 2
    end
    object spr_fatura_pedido_ptgadiantadonum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"spr_fatura_pedido_ptgadiantado"."num_pedido_cli"'
      Size = 15
    end
  end
  object fatura_pagamento: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select *'
      'from "fatura_pagamento"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_nota_fiscal" = :num_nota_fiscal'
      '  and "serie" = :serie'
      '  and "num_pedido" = :num_pedido'
      'order by "dat_pagamento"')
    Left = 221
    Top = 214
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
        Name = 'num_pedido'
        ParamType = ptUnknown
      end>
    object fatura_pagamentocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"fatura_pagamento"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fatura_pagamentonum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"fatura_pagamento"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fatura_pagamentoserie: TIBStringField
      FieldName = 'serie'
      Origin = '"fatura_pagamento"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object fatura_pagamentonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"fatura_pagamento"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fatura_pagamentovlr_pagamento: TIBBCDField
      FieldName = 'vlr_pagamento'
      Origin = '"fatura_pagamento"."vlr_pagamento"'
      Precision = 18
      Size = 2
    end
    object fatura_pagamentovlr_pagamento_esp: TIBBCDField
      FieldName = 'vlr_pagamento_esp'
      Origin = '"fatura_pagamento"."vlr_pagamento_esp"'
      Precision = 18
      Size = 2
    end
    object fatura_pagamentodat_pagamento: TDateField
      FieldName = 'dat_pagamento'
      Origin = '"fatura_pagamento"."dat_pagamento"'
    end
    object fatura_pagamentotxt_pagamento: TMemoField
      FieldName = 'txt_pagamento'
      Origin = '"fatura_pagamento"."txt_pagamento"'
      BlobType = ftMemo
      Size = 8
    end
    object fatura_pagamentonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"fatura_pagamento"."num_pedido"'
    end
  end
end
