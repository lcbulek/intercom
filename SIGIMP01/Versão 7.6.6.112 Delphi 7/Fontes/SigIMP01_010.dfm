inherited fr_HistCompras: Tfr_HistCompras
  Left = 368
  Top = 151
  HelpType = htKeyword
  HelpKeyword = '010'
  Caption = 'Hist'#243'rico de Compras do Produto'
  ClientHeight = 781
  ClientWidth = 1182
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1182
    Height = 0
    Visible = False
  end
  inherited Panel2: TPanel
    Top = 0
    Width = 1182
    Height = 735
    object pgHistorico: TPageControl
      Left = 1
      Top = 1
      Width = 1180
      Height = 733
      ActivePage = tsProdutos
      Align = alClient
      TabOrder = 0
      OnChange = pgHistoricoChange
      object tsProdutos: TTabSheet
        Caption = 'Produtos'
        object GroupBox4: TGroupBox
          Left = 0
          Top = 73
          Width = 1172
          Height = 282
          Align = alTop
          Caption = 'Hist'#243'rico de Pre'#231'os'
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 1168
            Height = 265
            Align = alClient
            DataSource = ds_lista
            FixedColor = 15132390
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'data_preco'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'obs_preco'
                Title.Caption = 'Observa'#231#245'es dos pre'#231'os'
                Width = 813
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_unitario'
                Width = 92
                Visible = True
              end>
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 355
          Width = 1172
          Height = 350
          Align = alClient
          Caption = 'Hist'#243'rico de Compras'
          TabOrder = 1
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 1168
            Height = 333
            Align = alClient
            Color = clWhite
            DataSource = ds_pedidos
            FixedColor = 15132390
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'num_pedido_cli'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_pedido_for'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_pedido'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ies_tip_pedido'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_produto'
                Width = 54
                Visible = True
              end
              item
                Color = clYellow
                Expanded = False
                FieldName = 'vlr_unitario'
                Visible = True
              end
              item
                Color = clYellow
                Expanded = False
                FieldName = 'vlr_liquido'
                Width = 77
                Visible = True
              end
              item
                Color = clFuchsia
                Expanded = False
                FieldName = 'vlr_unitario_esp'
                Visible = True
              end
              item
                Color = clFuchsia
                Expanded = False
                FieldName = 'vlr_liquido_esp'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_fatura'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_ref_volume'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_embarque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_embarcada'
                Width = 67
                Visible = True
              end
              item
                Color = clYellow
                Expanded = False
                FieldName = 'vlr_real_fat'
                Width = 69
                Visible = True
              end
              item
                Color = clFuchsia
                Expanded = False
                FieldName = 'vlr_esp_fat'
                Width = 74
                Visible = True
              end>
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1172
          Height = 73
          Align = alTop
          TabOrder = 2
          DesignSize = (
            1172
            73)
          object Label1: TLabel
            Left = 6
            Top = 2
            Width = 72
            Height = 13
            Caption = 'Produto Cliente'
          end
          object Label2: TLabel
            Left = 193
            Top = 2
            Width = 37
            Height = 13
            Caption = 'Produto'
            FocusControl = DBEdit1
          end
          object Label15: TLabel
            Left = 316
            Top = 2
            Width = 32
            Height = 13
            Caption = 'Cliente'
            FocusControl = DBEdit4
          end
          object Label17: TLabel
            Left = 472
            Top = 2
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
            FocusControl = DBEdit6
          end
          object Label18: TLabel
            Left = 628
            Top = 2
            Width = 91
            Height = 13
            Caption = 'Produto fornecedor'
            FocusControl = DBEdit7
          end
          object Label31: TLabel
            Left = 748
            Top = 2
            Width = 16
            Height = 13
            Caption = 'UN'
            FocusControl = DBEdit20
          end
          object Label19: TLabel
            Left = 823
            Top = 2
            Width = 42
            Height = 13
            Caption = 'Situa'#231#227'o'
            FocusControl = DBEdit8
          end
          object Label13: TLabel
            Left = 5
            Top = 36
            Width = 115
            Height = 13
            Caption = 'Descri'#231#227'o em portugu'#234's'
            FocusControl = DBEdit2
          end
          object Label14: TLabel
            Left = 473
            Top = 36
            Width = 95
            Height = 13
            Caption = 'Descri'#231#227'o em ingl'#234's'
            FocusControl = DBEdit3
          end
          object edCodProd: TEdit
            Left = 6
            Top = 15
            Width = 140
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 15
            TabOrder = 0
            OnExit = edCodProdExit
          end
          object DBEdit1: TDBEdit
            Left = 193
            Top = 15
            Width = 120
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'cod_produto'
            DataSource = ds_produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 316
            Top = 15
            Width = 154
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'cod_cliente'
            DataSource = ds_produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit6: TDBEdit
            Left = 472
            Top = 15
            Width = 154
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'raz_social_reduz'
            DataSource = ds_produto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit7: TDBEdit
            Left = 628
            Top = 15
            Width = 120
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'cod_prod_fornec'
            DataSource = ds_produto
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit20: TDBEdit
            Left = 748
            Top = 15
            Width = 69
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'calUniMedida'
            DataSource = ds_produto
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit8: TDBEdit
            Left = 823
            Top = 15
            Width = 71
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'ies_situacao'
            DataSource = ds_produto
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit2: TDBEdit
            Left = 5
            Top = 50
            Width = 466
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'den_produto'
            DataSource = ds_produto
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit3: TDBEdit
            Left = 473
            Top = 50
            Width = 466
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'den_produto_ing'
            DataSource = ds_produto
            ReadOnly = True
            TabOrder = 8
          end
          object pnlF1: TPanel
            Left = 1140
            Top = 3
            Width = 27
            Height = 24
            Anchors = [akTop, akRight]
            BevelOuter = bvNone
            TabOrder = 9
          end
          object BitBtn2: TBitBtn
            Left = 150
            Top = 16
            Width = 41
            Height = 21
            Action = actPesquisar
            Caption = 'F3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007B7B7B009C9C9C0039393900FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF006BC6FF004A73FF009C9C9C0039393900FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF006BC6FF004A73FF009C9C9C0039393900FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF006BC6FF004A73FF009C9C9C00FF00FF00848484007B7B
              7B006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF006BC6FF008484840084848400F7CEA500FFFF
              D600FFE7D600848484004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00A5A5A500FFE7B500FFF7D600FFFF
              D600FFFFD600FFFFFF00949494006B6B6B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00F7CEA500FFE7B500FFFFD600FFFF
              D600FFFFFF00FFFFFF00FFFFD6004A4A4A00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFF7D600FFD68C00FFF7D600FFFF
              D600FFFFD600FFFFD600FFFFD60052525200FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFE7B500FFE7B500FFE7B500FFFF
              D600FFFFD600FFFFD600FFFFD60052525200FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00FFFFFF00FFF7D600FFE7
              B500FFE7B500FFF7D600FFAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00FFFFD600FFFF
              D600FFFFD600FFAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C6C6C600C6C6
              C600C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
        end
      end
      object tsTipoProdutos: TTabSheet
        Caption = 'Tipos de Produtos'
        ImageIndex = 1
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1172
          Height = 44
          Align = alTop
          TabOrder = 0
          object Label10: TLabel
            Left = 1
            Top = 3
            Width = 32
            Height = 13
            Caption = 'Cliente'
          end
          object Label11: TLabel
            Left = 198
            Top = 3
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
          end
          object Label6: TLabel
            Left = 504
            Top = 3
            Width = 76
            Height = 13
            Caption = 'Tipo de Produto'
          end
          object Label3: TLabel
            Left = 811
            Top = 3
            Width = 19
            Height = 13
            Caption = 'Ano'
          end
          object cbClientes: TComboBox
            Left = 1
            Top = 17
            Width = 190
            Height = 21
            CharCase = ecUpperCase
            DropDownCount = 30
            ItemHeight = 13
            TabOrder = 0
            OnClick = cbClientesClick
          end
          object dbxFornecedor: TDBLookupComboBox
            Left = 198
            Top = 17
            Width = 300
            Height = 21
            DropDownRows = 30
            KeyField = 'cod_fornecedor'
            ListField = 'raz_social_reduz'
            ListSource = dsFornecedor
            TabOrder = 1
            OnClick = dbxFornecedorClick
          end
          object dbxTipoProduto: TDBLookupComboBox
            Left = 504
            Top = 17
            Width = 300
            Height = 21
            DropDownRows = 30
            KeyField = 'cod_tip_produto'
            ListField = 'den_tip_produto'
            ListSource = dsTipo_Produto
            TabOrder = 2
          end
          object BitBtn1: TBitBtn
            Left = 944
            Top = 12
            Width = 42
            Height = 25
            Action = actPesquisar
            Caption = 'F3'
            TabOrder = 4
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007B7B7B009C9C9C0039393900FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF006BC6FF004A73FF009C9C9C0039393900FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF006BC6FF004A73FF009C9C9C0039393900FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF006BC6FF004A73FF009C9C9C00FF00FF00848484007B7B
              7B006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF006BC6FF008484840084848400F7CEA500FFFF
              D600FFE7D600848484004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00A5A5A500FFE7B500FFF7D600FFFF
              D600FFFFD600FFFFFF00949494006B6B6B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00F7CEA500FFE7B500FFFFD600FFFF
              D600FFFFFF00FFFFFF00FFFFD6004A4A4A00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFF7D600FFD68C00FFF7D600FFFF
              D600FFFFD600FFFFD600FFFFD60052525200FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FFE7B500FFE7B500FFE7B500FFFF
              D600FFFFD600FFFFD600FFFFD60052525200FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00FFFFFF00FFF7D600FFE7
              B500FFE7B500FFF7D600FFAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00FFFFD600FFFF
              D600FFFFD600FFAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C6C6C600C6C6
              C600C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
          object seAno: TSpinEdit
            Left = 811
            Top = 17
            Width = 60
            Height = 22
            MaxLength = 4
            MaxValue = 0
            MinValue = 0
            TabOrder = 3
            Value = 0
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 44
          Width = 1172
          Height = 352
          Align = alClient
          Caption = 'Pedidos'
          TabOrder = 1
          object JvDBUltimGrid1: TJvDBUltimGrid
            Left = 2
            Top = 15
            Width = 1168
            Height = 335
            Align = alClient
            DataSource = ds_Pedidos2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
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
                FieldName = 'num_pedido_cli'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_pedido_for'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_liberacao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ies_tip_pedido'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_cliente'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'raz_social_reduz'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_produto'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'den_produto'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_produto'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_unitario'
                Width = 63
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
                FieldName = 'vlr_unitario_esp'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_liquido_esp'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_faturada'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_pendente'
                Width = 59
                Visible = True
              end>
          end
        end
        object GroupBox6: TGroupBox
          Left = 0
          Top = 396
          Width = 1172
          Height = 309
          Align = alBottom
          Caption = 'Faturas'
          TabOrder = 2
          object JvDBUltimGrid2: TJvDBUltimGrid
            Left = 2
            Top = 15
            Width = 1168
            Height = 292
            Align = alClient
            DataSource = ds_Faturas2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
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
                FieldName = 'num_fatura'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'num_ref_volume'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dat_emissao'
                Width = 50
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
                FieldName = 'num_pedido_for'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_cliente'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'raz_social_reduz'
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'den_tip_condicao'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cod_produto'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'den_produto'
                Width = 181
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_produto'
                Width = 63
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
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_unitario_esp'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlr_liquido_esp'
                Width = 65
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited Panel3: TPanel
    Top = 735
    Width = 1182
    inherited ToolBar1: TToolBar
      Left = 1088
      Width = 93
      inherited ToolButton2: TToolButton
        AutoSize = False
      end
    end
  end
  object Produto: TIBQuery [3]
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = ProdutoAfterScroll
    BeforeOpen = ProdutoBeforeOpen
    OnCalcFields = ProdutoCalcFields
    SQL.Strings = (
      'select p."cod_produto", p."den_produto" , p."ies_situacao",'
      
        '       p."cod_uni_medida", p."pes_unitario", p."cod_cliente", p.' +
        '"cod_fornecedor",'
      
        '       p."cod_prod_fornec", p."den_produto_ing", f."raz_social_r' +
        'eduz", c."nom_cliente_reduz"'
      'from "produto" p, "fornecedor" f, "cliente" c'
      'where p."cod_empresa" = :cod_empresa'
      '  and p."cod_produto" = :cod_produto'
      '  and f."cod_fornecedor" = p."cod_fornecedor"'
      '  and c."cod_cliente" = p."cod_cliente"')
    Left = 72
    Top = 136
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
      end>
    object Produtocod_produto: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      OnGetText = Produtocod_produtoGetText
      Size = 15
    end
    object Produtoies_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"produto"."ies_situacao"'
      OnGetText = Produtoies_situacaoGetText
      Size = 1
    end
    object ProdutocalUniMedida: TStringField
      DisplayLabel = 'UN'
      FieldKind = fkCalculated
      FieldName = 'calUniMedida'
      Size = 3
      Calculated = True
    end
    object Produtocod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"produto"."cod_uni_medida"'
      Required = True
    end
    object Produtopes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
      DisplayFormat = '##,##0.00000'
    end
    object Produtocod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"produto"."cod_cliente"'
      Size = 12
    end
    object Produtocod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"produto"."cod_fornecedor"'
    end
    object Produtocod_prod_fornec: TIBStringField
      FieldName = 'cod_prod_fornec'
      Origin = '"produto"."cod_prod_fornec"'
      Size = 15
    end
    object Produtoraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object Produtonom_cliente_reduz: TIBStringField
      FieldName = 'nom_cliente_reduz'
      Origin = '"cliente"."nom_cliente_reduz"'
      Required = True
      Size = 30
    end
    object Produtoden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object Produtoden_produto_ing: TIBStringField
      FieldName = 'den_produto_ing'
      Origin = '"produto"."den_produto_ing"'
      Size = 100
    end
  end
  object ds_produto: TDataSource [4]
    DataSet = Produto
    Left = 73
    Top = 169
  end
  object UnidadeMedida: TIBQuery [5]
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "sigla"'
      'from "medida"'
      'where "cod_uni_medida" = :cod_uni_medida')
    Left = 112
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_uni_medida'
        ParamType = ptUnknown
      end>
    object UnidadeMedidasigla: TIBStringField
      FieldName = 'sigla'
      Origin = '"medida"."sigla"'
      Size = 3
    end
  end
  object Pedidos: TIBQuery [6]
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select c."num_pedido_cli", c."num_pedido_for",'
      
        '       case when b."ies_tip_pedido" = '#39'O'#39' then cast(b."dat_emiss' +
        'ao"  as date)'
      '            when b."ies_tip_pedido" = '#39'P'#39' then b."dat_liberacao"'
      '       end "dat_pedido",'
      '       case when b."ies_tip_pedido" = '#39'O'#39' then '#39'OR'#39
      '            when b."ies_tip_pedido" = '#39'P'#39' then '#39'SC'#39
      '       end "ies_tip_pedido",'
      
        '       a."qtd_produto", a."vlr_unitario", a."vlr_liquido", a."vl' +
        'r_unitario_esp", a."vlr_liquido_esp",'
      '       f."num_fatura", f."num_ref_volume", e."dat_embarque",'
      
        '       d."qtd_produto" "qtd_embarcada", d."vlr_liquido" "vlr_rea' +
        'l_fat", d."vlr_liquido_esp" "vlr_esp_fat"'
      'from "pedido_produto" a left join "nota_fiscal_saida_produto" d'
      '                        on d."cod_empresa" = a."cod_empresa"'
      '                       and d."num_pedido"  = a."num_pedido"'
      
        '                       and d."num_seq_pedido" = a."num_sequencia' +
        '"'
      '                       left join "nota_fiscal_saida" e'
      '                         on e."cod_empresa" = d."cod_empresa"'
      
        '                        and e."num_nota_fiscal" = d."num_nota_fi' +
        'scal"'
      '                        and e."serie" = d."serie"'
      '                       left join "nf_saida_complemento" f'
      '                         on f."cod_empresa" = d."cod_empresa"'
      
        '                        and f."num_nota_fiscal" = d."num_nota_fi' +
        'scal"'
      '                        and f."serie" = d."serie",'
      '     "pedido" b, "pedido_complemento" c'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_produto" = :cod_produto'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido" = a."num_pedido"'
      '  and c."cod_empresa" = b."cod_empresa"'
      '  and c."num_pedido" = b."num_pedido"'
      'order by 3 desc, 1')
    Left = 178
    Top = 137
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
    object Pedidosdat_pedido: TDateField
      DisplayLabel = 'Date'
      FieldName = 'dat_pedido'
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidosies_tip_pedido: TIBStringField
      DisplayLabel = 'OR/SC'
      FieldName = 'ies_tip_pedido'
      FixedChar = True
      Size = 2
    end
    object Pedidosqtd_produto: TIBBCDField
      DisplayLabel = 'Quantity'
      FieldName = 'qtd_produto'
      Origin = '"pedido_produto"."qtd_produto"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object Pedidosvlr_unitario: TFloatField
      DisplayLabel = 'Real Price'
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
      DisplayFormat = '#,##0.000000'
    end
    object Pedidosvlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidosvlr_unitario_esp: TFloatField
      DisplayLabel = 'Special Price'
      FieldName = 'vlr_unitario_esp'
      Origin = '"pedido_produto"."vlr_unitario_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object Pedidosvlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Special'
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido_produto"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidosnum_fatura: TIBStringField
      DisplayLabel = 'Invoice'
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
    object Pedidosnum_ref_volume: TIBStringField
      DisplayLabel = 'LOT'
      FieldName = 'num_ref_volume'
      Origin = '"nf_saida_complemento"."num_ref_volume"'
      Size = 25
    end
    object Pedidosdat_embarque: TDateField
      DisplayLabel = 'Date Shipment'
      FieldName = 'dat_embarque'
      Origin = '"nota_fiscal_saida"."dat_embarque"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidosqtd_embarcada: TIBBCDField
      DisplayLabel = 'Qty Shipped'
      FieldName = 'qtd_embarcada'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object Pedidosvlr_real_fat: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_real_fat'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidosvlr_esp_fat: TIBBCDField
      DisplayLabel = 'Total Special'
      FieldName = 'vlr_esp_fat'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object ds_pedidos: TDataSource [7]
    DataSet = Pedidos
    Left = 178
    Top = 169
  end
  object Lista: TIBQuery [8]
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select c."dat_cadastro" "data_preco", c."vlr_unitario" "vlr_unit' +
        'ario",                                                          ' +
        '                        '
      
        'CAST('#39'LISTA GERAL : '#39' || rtrim(b."den_lista") AS CHAR(100)) "obs' +
        '_preco", cast(c."num_lista" as numeric(12,0)) "numero",'
      #39'G'#39' "ies_origem"'
      
        'from "lista" b, "lista_preco" c                                 ' +
        '                                                                ' +
        '                        '
      
        'where                                                           ' +
        '                                                                ' +
        '                        '
      '      b."cod_empresa" = :cod_empresa1'
      '  and b."cod_cliente" = :cod_cliente1'
      
        '  and c."cod_empresa" = b."cod_empresa"                         ' +
        '                                                                ' +
        '                        '
      
        '  and c."num_lista" = b."num_lista"                             ' +
        '                                                                ' +
        '                        '
      '  and c."cod_produto" = :cod_produto1'
      '  and b."ies_tip_lista" = '#39'G'#39
      '  and b."ies_situacao" = '#39'A'#39
      'union all'
      
        'select c."dat_cadastro" "data_preco", c."vlr_unitario" "vlr_unit' +
        'ario",'
      
        'CAST('#39'COTA'#199#195'O : '#39' || rtrim(b."den_lista") AS CHAR(100)) "obs_pre' +
        'co", cast(c."num_lista" as numeric(12,0)) "numero",'
      #39'C'#39' "ies_origem"'
      
        'from "lista" b, "lista_preco" c                                 ' +
        '                                                                ' +
        '                        '
      
        'where                                                           ' +
        '                                                                ' +
        '                        '
      '      b."cod_empresa" = :cod_empresa2'
      '  and b."cod_cliente" = :cod_cliente2'
      
        '  and c."cod_empresa" = b."cod_empresa"                         ' +
        '                                                                ' +
        '                        '
      
        '  and c."num_lista" = b."num_lista"                             ' +
        '                                                                ' +
        '                        '
      '  and c."cod_produto" = :cod_produto2'
      '  and b."ies_tip_lista" = '#39'C'#39
      '  and b."ies_situacao" = '#39'A'#39
      'union all'
      
        'select a."dat_liberacao" "data_preco", b."vlr_unitario" "vlr_uni' +
        'tario",                                                         ' +
        '                        '
      
        'CAST('#39'PRICE OF ORDER : '#39' || rtrim(c."num_pedido_cli") || '#39', S/C:' +
        ' '#39' || ltrim(c."num_pedido_for") AS CHAR(100)) "obs_preco",'
      'a."num_pedido" "numero",'
      #39'P'#39' "ies_origem"'
      
        'from "pedido" a, "pedido_produto" b, "pedido_complemento" c     ' +
        '                                                                ' +
        '                        '
      'where a."ies_tip_pedido" = '#39'P'#39
      '  and a."cod_empresa" = :cod_empresa3'
      '  and a."cod_cliente" = :cod_cliente3'
      '  and b."cod_produto" = :cod_produto3'
      
        '  and b."cod_empresa" = a."cod_empresa"                         ' +
        '                                                                ' +
        '                        '
      
        '  and b."num_pedido" = a."num_pedido"                           ' +
        '                                                                ' +
        '                        '
      
        '  and c."cod_empresa" = a."cod_empresa"                         ' +
        '                                                                ' +
        '                        '
      
        '  and c."num_pedido" = a."num_pedido"                           ' +
        '                                                                ' +
        '                        '
      'group by 1,2,3,4,5'
      
        'order by 1 desc                                                 ' +
        '                                                                ' +
        '                        ')
    Left = 145
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_empresa2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_empresa3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto3'
        ParamType = ptUnknown
      end>
    object Listadata_preco: TDateField
      DisplayLabel = 'Data Pre'#231'o'
      FieldName = 'data_preco'
    end
    object Listaies_origem: TIBStringField
      DisplayLabel = 'L/P'
      FieldName = 'ies_origem'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Listavlr_unitario: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'vlr_unitario'
      DisplayFormat = '#,##0.000000'
    end
    object Listaobs_preco: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'obs_preco'
      FixedChar = True
      Size = 100
    end
    object Listanumero: TLargeintField
      DisplayLabel = 'Lista/Pedido'
      FieldName = 'numero'
    end
  end
  object ds_lista: TDataSource [9]
    DataSet = Lista
    Left = 146
    Top = 169
  end
  inherited ActionList1: TActionList
    Left = 899
    Top = 40
    inherited actPesquisar: TAction
      Hint = 'Chamar a tela de pesquisa de produtos'
      OnExecute = actPesquisarExecute
    end
    inherited actImprimir: TAction
      Visible = False
    end
  end
  object Cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select cast('#39'*** Todos ***'#39' as CHAR(13)) "cod_cliente"'
      'from "cliente"'
      'union'
      'select cast("cod_cliente" as char(13)) "cod_cliente"'
      'from "cliente"'
      'order by 1')
    Left = 72
    Top = 208
    object Clientecod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Required = True
      FixedChar = True
      Size = 13
    end
  end
  object Fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = FornecedorAfterOpen
    SQL.Strings = (
      
        'select cast('#39'*** TODOS ***'#39' as char(50)) "raz_social_reduz", cas' +
        't(0 as smallint) "cod_fornecedor"'
      'from "fornecedor" a'
      'union'
      
        'select cast(a."raz_social_reduz" as char(50)) "raz_social_reduz"' +
        ', cast(a."cod_fornecedor" as smallint) "cod_fornecedor"'
      'from "fornecedor" a'
      'order by 1')
    Left = 72
    Top = 241
    object Fornecedorraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Required = True
      FixedChar = True
      Size = 50
    end
    object Fornecedorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
    end
  end
  object dsFornecedor: TDataSource
    DataSet = Fornecedor
    Left = 104
    Top = 241
  end
  object tipo_produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = tipo_produtoAfterOpen
    SQL.Strings = (
      
        'select cast('#39'*** TODOS ***'#39' as varchar(128)) "den_tip_produto", ' +
        'cast(0 as smallint) "cod_tip_produto"'
      'from "tipo_produto"'
      'union'
      
        'select cast("den_tip_produto" as varchar(128)) "den_tip_produto"' +
        ', cast("cod_tip_produto" as smallint) "cod_tip_produto"'
      'from "tipo_produto"'
      'order by 1')
    Left = 72
    Top = 273
    object tipo_produtoden_tip_produto: TIBStringField
      FieldName = 'den_tip_produto'
      Size = 128
    end
    object tipo_produtocod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Required = True
    end
  end
  object dsTipo_Produto: TDataSource
    DataSet = tipo_produto
    Left = 104
    Top = 273
  end
  object ds_Pedidos2: TDataSource
    DataSet = Pedidos2
    Left = 261
    Top = 170
  end
  object ds_Faturas2: TDataSource
    DataSet = Faturas2
    Left = 301
    Top = 170
  end
  object Pedidos2: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select a."num_pedido", a."dat_emissao", a."dat_liberacao", a."ie' +
        's_situacao", a."ies_tip_pedido",'
      
        '       d."raz_social_reduz", c."num_pedido_cli", a."cod_cliente"' +
        ', c."num_pedido_for",'
      
        '       b."cod_produto", e."den_produto", b."num_sequencia", b."q' +
        'td_produto",'
      
        '       b."vlr_unitario", b."vlr_liquido", b."vlr_unitario_esp", ' +
        'b."vlr_liquido_esp",'
      '       b."qtd_romaneada", b."qtd_faturada", b."qtd_pendente"'
      
        'from "pedido" a,  "pedido_produto" b, "pedido_complemento" c, "f' +
        'ornecedor" d, "produto" e'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and c."cod_fornecedor" = :cod_fornecedor'
      '  and c."cod_empresa" = a."cod_empresa"'
      '  and c."num_pedido" = a."num_pedido"'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido"  = a."num_pedido"'
      '  and a."ies_situacao" <> '#39'C'#39
      '  and d."cod_fornecedor" = c."cod_fornecedor"'
      '  and e."cod_empresa" = b."cod_empresa"'
      '  and e."cod_produto" = b."cod_produto"'
      '  and exists (select * from "produto" x'
      '               where x."cod_empresa" = a."cod_empresa"'
      '                 and x."cod_produto" = b."cod_produto"'
      '                 and x."cod_tip_produto" = :cod_tip_produto'
      '                 )'
      
        'order by a."dat_liberacao" desc, c."num_pedido_cli", b."cod_prod' +
        'uto"')
    Left = 262
    Top = 139
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
      end
      item
        DataType = ftUnknown
        Name = 'cod_tip_produto'
        ParamType = ptUnknown
      end>
    object Pedidos2num_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Pedidos2dat_emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dat_emissao'
      Origin = '"pedido"."dat_emissao"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidos2dat_liberacao: TDateField
      DisplayLabel = 'Confirma'#231#227'o'
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Pedidos2ies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"pedido"."ies_situacao"'
      Size = 1
    end
    object Pedidos2ies_tip_pedido: TIBStringField
      DisplayLabel = 'OR/SC'
      FieldName = 'ies_tip_pedido'
      Origin = '"pedido"."ies_tip_pedido"'
      Size = 1
    end
    object Pedidos2num_pedido_cli: TIBStringField
      DisplayLabel = 'N'#250'mero Pedido'
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object Pedidos2cod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Required = True
      Size = 12
    end
    object Pedidos2raz_social_reduz: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object Pedidos2num_pedido_for: TIBStringField
      DisplayLabel = 'N'#250'mero Confirma'#231#227'o'
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object Pedidos2cod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"pedido_produto"."cod_produto"'
      Required = True
      OnGetText = Pedidos2cod_produtoGetText
      Size = 15
    end
    object Pedidos2den_produto: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object Pedidos2num_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Pedidos2qtd_produto: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd_produto'
      Origin = '"pedido_produto"."qtd_produto"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object Pedidos2vlr_unitario: TFloatField
      DisplayLabel = 'Pre'#231'o Real'
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
      DisplayFormat = '#,##0.000000'
    end
    object Pedidos2vlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidos2vlr_unitario_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'vlr_unitario_esp'
      Origin = '"pedido_produto"."vlr_unitario_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object Pedidos2vlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Esp'
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido_produto"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Pedidos2qtd_romaneada: TIBBCDField
      DisplayLabel = 'Romaneada'
      FieldName = 'qtd_romaneada'
      Origin = '"pedido_produto"."qtd_romaneada"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object Pedidos2qtd_faturada: TIBBCDField
      DisplayLabel = 'Faturada'
      FieldName = 'qtd_faturada'
      Origin = '"pedido_produto"."qtd_faturada"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object Pedidos2qtd_pendente: TIBBCDField
      DisplayLabel = 'Pendente'
      FieldName = 'qtd_pendente'
      Origin = '"pedido_produto"."qtd_pendente"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
  end
  object Faturas2: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select a."dat_emissao", c."num_fatura", b."num_pedido", b."num_s' +
        'eq_pedido", a."cod_cliente", f."raz_social_reduz",'
      
        '       b."cod_produto", p."den_produto", b."qtd_produto", b."vlr' +
        '_unitario", b."vlr_liquido", b."vlr_unitario_esp", b."vlr_liquid' +
        'o_esp",'
      
        '       d."num_pedido_cli", d."num_pedido_for", e."den_tip_condic' +
        'ao",'
      '       a."num_nota_fiscal", a."serie", c."num_ref_volume"'
      
        'from "nota_fiscal_saida" a, "nota_fiscal_saida_produto" b, "forn' +
        'ecedor" f, "produto" p,'
      '     "nf_saida_complemento" c'
      '     left join "condicao_venda" e'
      '     on e."cod_tip_condicao" = c."cod_cond_venda",'
      '     "pedido_complemento" d'
      'where'
      '      a."ies_situacao" <> '#39'C'#39
      '  and a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and c."cod_fornecedor" = :cod_fornecedor'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and b."serie" = a."serie"'
      '  and c."cod_empresa" = a."cod_empresa"'
      '  and c."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and c."serie" = a."serie"'
      '  and d."cod_empresa" = b."cod_empresa"'
      '  and d."num_pedido" = b."num_pedido"'
      '  and f."cod_fornecedor" = c."cod_fornecedor"'
      '  and p."cod_empresa" = b."cod_empresa"'
      '  and p."cod_produto" = b."cod_produto"'
      '  and exists (select * from "produto" x'
      '               where x."cod_empresa" = a."cod_empresa"'
      '                 and x."cod_produto" = b."cod_produto"'
      '                 and x."cod_tip_produto" = :cod_tip_produto'
      '                 )'
      'order by a."dat_emissao" desc, b."cod_produto"')
    Left = 301
    Top = 136
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
      end
      item
        DataType = ftUnknown
        Name = 'cod_tip_produto'
        ParamType = ptUnknown
      end>
    object Faturas2dat_emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dat_emissao'
      Origin = '"nota_fiscal_saida"."dat_emissao"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Faturas2num_fatura: TIBStringField
      DisplayLabel = 'N'#250'mero Fatura'
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
    object Faturas2num_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"nota_fiscal_saida_produto"."num_pedido"'
    end
    object Faturas2num_seq_pedido: TSmallintField
      FieldName = 'num_seq_pedido'
      Origin = '"nota_fiscal_saida_produto"."num_seq_pedido"'
    end
    object Faturas2cod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"nota_fiscal_saida"."cod_cliente"'
      Required = True
      Size = 12
    end
    object Faturas2raz_social_reduz: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object Faturas2cod_produto: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Origin = '"nota_fiscal_saida_produto"."cod_produto"'
      Required = True
      OnGetText = Faturas2cod_produtoGetText
      Size = 15
    end
    object Faturas2den_produto: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object Faturas2qtd_produto: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object Faturas2vlr_unitario: TFloatField
      DisplayLabel = 'Pre'#231'o Real'
      FieldName = 'vlr_unitario'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario"'
      DisplayFormat = '#,##0.000000'
    end
    object Faturas2vlr_liquido: TIBBCDField
      DisplayLabel = 'Total Real'
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Faturas2vlr_unitario_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Esp'
      FieldName = 'vlr_unitario_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object Faturas2vlr_liquido_esp: TIBBCDField
      DisplayLabel = 'Total Esp'
      FieldName = 'vlr_liquido_esp'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Faturas2num_pedido_cli: TIBStringField
      DisplayLabel = 'N'#250'mero Pedido'
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object Faturas2num_pedido_for: TIBStringField
      DisplayLabel = 'N'#250'm Confirma'#231#227'o'
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object Faturas2den_tip_condicao: TIBStringField
      DisplayLabel = 'Condi'#231#227'o de Venda'
      FieldName = 'den_tip_condicao'
      Origin = '"condicao_venda"."den_tip_condicao"'
      Size = 40
    end
    object Faturas2num_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Faturas2serie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object Faturas2num_ref_volume: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'num_ref_volume'
      Origin = '"nf_saida_complemento"."num_ref_volume"'
      Size = 25
    end
  end
end
