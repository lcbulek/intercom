object fr_PesquisaProduto: Tfr_PesquisaProduto
  Left = 362
  Top = 83
  Width = 1366
  Height = 641
  ActiveControl = edtCodProd
  Caption = 'Pesquisar Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 544
    Width = 1358
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    OnEnter = Panel1Enter
    OnExit = Panel1Exit
    object Label3: TLabel
      Left = 3
      Top = 0
      Width = 103
      Height = 13
      Caption = 'Busca produto cliente'
    end
    object Label4: TLabel
      Left = 144
      Top = 0
      Width = 129
      Height = 13
      Caption = 'Busca descri'#231#227'o portugu'#234's'
    end
    object Label9: TLabel
      Left = 421
      Top = 0
      Width = 109
      Height = 13
      Caption = 'Busca descri'#231#227'o ingl'#234's'
    end
    object edBuscaCodigo: TEdit
      Left = 3
      Top = 16
      Width = 126
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 0
      OnKeyDown = edBuscaCodigoKeyDown
    end
    object edBuscaDesc: TEdit
      Left = 144
      Top = 16
      Width = 261
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 75
      TabOrder = 1
      OnKeyDown = edBuscaDescKeyDown
    end
    object edBuscaDescTrad: TEdit
      Left = 420
      Top = 16
      Width = 261
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 75
      TabOrder = 2
      OnKeyDown = edBuscaDescTradKeyDown
    end
    object panGauge: TPanel
      Left = 689
      Top = 16
      Width = 378
      Height = 9
      BevelOuter = bvLowered
      TabOrder = 3
    end
    object cbImages: TCheckBox
      Left = 1104
      Top = 8
      Width = 209
      Height = 17
      Caption = 'Mostrar imagens dos produtos no Excel'
      TabOrder = 4
    end
  end
  object grdGrid: TDBGrid
    Left = 0
    Top = 295
    Width = 1358
    Height = 104
    Align = alClient
    Color = clWhite
    DataSource = dtsFmGrid
    FixedColor = 15132390
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    OnDblClick = acOKExecute
    Columns = <
      item
        Expanded = False
        FieldName = 'cod_produto'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_cliente'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkpFornecedor'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calDenProduto_detpor'
        Width = 650
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calDenProduto_det'
        Width = 650
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1358
    Height = 295
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 2
      Top = 2
      Width = 373
      Height = 291
      Align = alLeft
      Caption = 'Par'#226'metros para pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 98
        Height = 14
        Caption = 'C'#243'digo Produto'
      end
      object Label2: TLabel
        Left = 8
        Top = 55
        Width = 133
        Height = 14
        Caption = 'Descri'#231#227'o Portugu'#234's'
      end
      object Label7: TLabel
        Left = 8
        Top = 96
        Width = 112
        Height = 14
        Caption = 'Descri'#231#227'o Ingl'#234's'
      end
      object Label10: TLabel
        Left = 8
        Top = 135
        Width = 49
        Height = 14
        Caption = 'Cliente'
      end
      object Label11: TLabel
        Left = 8
        Top = 174
        Width = 70
        Height = 14
        Caption = 'Fornecedor'
      end
      object Label6: TLabel
        Left = 8
        Top = 213
        Width = 105
        Height = 14
        Caption = 'Tipo de Produto'
      end
      object edtCodProd: TEdit
        Left = 8
        Top = 32
        Width = 126
        Height = 22
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 0
      end
      object edtDescProd: TEdit
        Left = 8
        Top = 71
        Width = 358
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 74
        TabOrder = 2
      end
      object edtDescTrad: TEdit
        Left = 8
        Top = 113
        Width = 359
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 74
        TabOrder = 3
      end
      object cbClientes: TComboBox
        Left = 8
        Top = 151
        Width = 359
        Height = 22
        CharCase = ecUpperCase
        DropDownCount = 30
        ItemHeight = 14
        TabOrder = 4
        OnClick = cbClientesClick
      end
      object dbxFornecedor: TDBLookupComboBox
        Left = 8
        Top = 189
        Width = 359
        Height = 22
        DropDownRows = 30
        KeyField = 'cod_fornecedor'
        ListField = 'raz_social_reduz'
        ListSource = dsFornecedor
        TabOrder = 5
        OnClick = dbxFornecedorClick
      end
      object dbxTipoProduto: TDBLookupComboBox
        Left = 8
        Top = 227
        Width = 359
        Height = 22
        DropDownRows = 30
        KeyField = 'cod_tip_produto'
        ListField = 'den_tip_produto'
        ListSource = dsTipo_Produto
        TabOrder = 6
      end
      object rgOrdem: TRadioGroup
        Left = 185
        Top = 8
        Width = 165
        Height = 61
        Caption = 'Ordenar por:'
        ItemIndex = 1
        Items.Strings = (
          'C'#243'digo Produto'
          'Descri'#231#227'o Portugu'#234's'
          'Descri'#231#227'o Ingl'#234's')
        TabOrder = 1
      end
      object rgSituacao: TRadioGroup
        Left = 8
        Top = 250
        Width = 357
        Height = 38
        Caption = 'Situa'#231#227'o'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo'
          'Todos')
        TabOrder = 7
      end
    end
    object GroupBox4: TGroupBox
      Left = 375
      Top = 2
      Width = 981
      Height = 291
      Align = alClient
      Caption = 'Detalhes do Produto'
      TabOrder = 1
      object Label12: TLabel
        Left = 5
        Top = 12
        Width = 55
        Height = 16
        Caption = 'Produto'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 211
        Top = 12
        Width = 62
        Height = 16
        Caption = 'Situa'#231#227'o'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 5
        Top = 50
        Width = 115
        Height = 13
        Caption = 'Descri'#231#227'o em portugu'#234's'
      end
      object Label14: TLabel
        Left = 5
        Top = 84
        Width = 95
        Height = 13
        Caption = 'Descri'#231#227'o em ingl'#234's'
      end
      object Label15: TLabel
        Left = 5
        Top = 119
        Width = 32
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBEdit4
      end
      object Label17: TLabel
        Left = 264
        Top = 119
        Width = 54
        Height = 13
        Caption = 'Fornecedor'
        FocusControl = DBEdit6
      end
      object Label5: TLabel
        Left = 309
        Top = 12
        Width = 24
        Height = 13
        Caption = 'NCM'
        FocusControl = DBEdit5
      end
      object Imagem: TImage
        Left = 784
        Top = 125
        Width = 160
        Height = 160
        ParentShowHint = False
        Proportional = True
        ShowHint = True
        Stretch = True
      end
      object Label18: TLabel
        Left = 784
        Top = 110
        Width = 91
        Height = 13
        Caption = 'Imagem do produto'
      end
      object Label32: TLabel
        Left = 5
        Top = 251
        Width = 85
        Height = 13
        Caption = 'Peso Unit'#225'rio (Kg)'
        FocusControl = DBEdit21
      end
      object Label31: TLabel
        Left = 176
        Top = 251
        Width = 93
        Height = 13
        Caption = 'Unidade de Medida'
        FocusControl = DBEdit20
      end
      object Label36: TLabel
        Left = 96
        Top = 251
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit26
      end
      object DBEdit1: TDBEdit
        Left = 5
        Top = 27
        Width = 170
        Height = 24
        TabStop = False
        Color = clBtnFace
        DataField = 'cod_produto'
        DataSource = dtsFmGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 211
        Top = 27
        Width = 71
        Height = 24
        TabStop = False
        Color = clBtnFace
        DataField = 'ies_situacao'
        DataSource = dtsFmGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 5
        Top = 133
        Width = 255
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'cod_cliente'
        DataSource = dtsFmGrid
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 264
        Top = 133
        Width = 255
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'lkpFornecedor'
        DataSource = dtsFmGrid
        ReadOnly = True
        TabOrder = 6
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 158
        Width = 515
        Height = 88
        Caption = 'Pre'#231'o do Item'
        TabOrder = 7
        object Label27: TLabel
          Left = 83
          Top = 13
          Width = 78
          Height = 13
          Caption = 'Origem do pre'#231'o'
          FocusControl = DBEdit16
        end
        object Label28: TLabel
          Left = 3
          Top = 13
          Width = 54
          Height = 13
          Caption = 'Data Pre'#231'o'
          FocusControl = DBEdit17
        end
        object Label30: TLabel
          Left = 411
          Top = 13
          Width = 65
          Height = 13
          Caption = 'Pre'#231'o unit'#225'rio'
          FocusControl = DBEdit19
        end
        object Label8: TLabel
          Left = 3
          Top = 46
          Width = 94
          Height = 13
          Caption = 'Comiss'#227'o Cliente(%)'
          FocusControl = DBEdit7
        end
        object Label16: TLabel
          Left = 107
          Top = 46
          Width = 116
          Height = 13
          Caption = 'Comiss'#227'o Fornecedor(%)'
          FocusControl = DBEdit18
        end
        object DBEdit16: TDBEdit
          Left = 83
          Top = 26
          Width = 319
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'obs_preco'
          DataSource = dtsFmGrid
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit17: TDBEdit
          Left = 3
          Top = 26
          Width = 80
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'dat_preco'
          DataSource = dtsFmGrid
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit19: TDBEdit
          Left = 411
          Top = 26
          Width = 102
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'vlr_unitario'
          DataSource = dtsFmGrid
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 3
          Top = 62
          Width = 94
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'pct_comissao_c'
          DataSource = dtsFmGrid
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit18: TDBEdit
          Left = 107
          Top = 62
          Width = 117
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'pct_comissao_f'
          DataSource = dtsFmGrid
          ReadOnly = True
          TabOrder = 4
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 235
          Top = 46
          Width = 106
          Height = 38
          Caption = 'Licen'#231'a Importa'#231#227'o'
          Columns = 2
          DataField = 'ncm_lic'
          DataSource = dtsFmGrid
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ReadOnly = True
          TabOrder = 5
          Values.Strings = (
            'S'
            'N')
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 363
          Top = 45
          Width = 106
          Height = 38
          Caption = 'Licen'#231'a INMETRO'
          Columns = 2
          DataField = 'ncm_imetro'
          DataSource = dtsFmGrid
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ReadOnly = True
          TabOrder = 6
          Values.Strings = (
            'S'
            'N')
        end
      end
      object DBEdit5: TDBEdit
        Left = 309
        Top = 27
        Width = 80
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'ncm_cod'
        DataSource = dtsFmGrid
        ReadOnly = True
        TabOrder = 2
      end
      object GroupBox2: TGroupBox
        Left = 520
        Top = 111
        Width = 166
        Height = 57
        Caption = 'Caixa Inner'
        TabOrder = 8
        object Label26: TLabel
          Left = 9
          Top = 16
          Width = 44
          Height = 13
          Caption = 'Qtd Inner'
          FocusControl = DBEdit15
        end
        object Label33: TLabel
          Left = 88
          Top = 16
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit23
        end
        object DBEdit15: TDBEdit
          Left = 9
          Top = 32
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'qtd_inner'
          DataSource = dsEmbalagem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit23: TDBEdit
          Left = 88
          Top = 32
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'dat_cad_inner'
          DataSource = dsEmbalagem
          ReadOnly = True
          TabOrder = 1
        end
      end
      object DBEdit2: TDBEdit
        Left = 5
        Top = 64
        Width = 512
        Height = 21
        Color = clBtnFace
        DataField = 'calDenProduto_detpor'
        DataSource = dtsFmGrid
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 5
        Top = 98
        Width = 512
        Height = 21
        Color = clBtnFace
        DataField = 'calDenProduto_det'
        DataSource = dtsFmGrid
        ReadOnly = True
        TabOrder = 4
      end
      object GroupBox5: TGroupBox
        Left = 520
        Top = 16
        Width = 425
        Height = 91
        Caption = 'Caixa Master'
        TabOrder = 9
        object Label23: TLabel
          Left = 9
          Top = 12
          Width = 81
          Height = 13
          Caption = 'Comprimento(cm)'
        end
        object Label21: TLabel
          Left = 96
          Top = 12
          Width = 47
          Height = 13
          Caption = 'Altura(cm)'
        end
        object Label22: TLabel
          Left = 175
          Top = 12
          Width = 56
          Height = 13
          Caption = 'Largura(cm)'
        end
        object Label24: TLabel
          Left = 253
          Top = 12
          Width = 52
          Height = 13
          Caption = 'Volume(m'#179')'
        end
        object Label20: TLabel
          Left = 9
          Top = 52
          Width = 74
          Height = 13
          Caption = 'Peso Bruto (Kg)'
        end
        object Label25: TLabel
          Left = 175
          Top = 52
          Width = 52
          Height = 13
          Caption = 'Qtd Master'
          FocusControl = DBEdit14
        end
        object Label29: TLabel
          Left = 332
          Top = 12
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label34: TLabel
          Left = 97
          Top = 52
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit24
        end
        object Label35: TLabel
          Left = 255
          Top = 52
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit25
        end
        object DBEdit13: TDBEdit
          Left = 253
          Top = 28
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'volume'
          DataSource = dsEmbalagem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 175
          Top = 28
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'largura'
          DataSource = dsEmbalagem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 96
          Top = 28
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'altura'
          DataSource = dsEmbalagem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 9
          Top = 28
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'profundidade'
          DataSource = dsEmbalagem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 9
          Top = 67
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'pes_bruto_cx'
          DataSource = dsEmbalagem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Left = 175
          Top = 67
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'qtd_master'
          DataSource = dsEmbalagem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit22: TDBEdit
          Left = 332
          Top = 28
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'dat_cad_dimensoes'
          DataSource = dsEmbalagem
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit24: TDBEdit
          Left = 96
          Top = 67
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'dat_cad_peso'
          DataSource = dsEmbalagem
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit25: TDBEdit
          Left = 253
          Top = 67
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'dat_cad_master'
          DataSource = dsEmbalagem
          ReadOnly = True
          TabOrder = 8
        end
      end
      object DBEdit21: TDBEdit
        Left = 5
        Top = 266
        Width = 85
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'pes_unitario'
        DataSource = dtsFmGrid
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit20: TDBEdit
        Left = 176
        Top = 266
        Width = 93
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'calUniMedida'
        DataSource = dtsFmGrid
        ReadOnly = True
        TabOrder = 11
      end
      object Button6: TButton
        Left = 529
        Top = 192
        Width = 153
        Height = 25
        Action = actOpenImages
        TabOrder = 12
      end
      object Button7: TButton
        Left = 529
        Top = 219
        Width = 153
        Height = 25
        Action = actOpenPackages
        TabOrder = 13
      end
      object DBEdit26: TDBEdit
        Left = 96
        Top = 266
        Width = 76
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'dat_cad_peso'
        DataSource = dtsFmGrid
        ReadOnly = True
        TabOrder = 14
      end
    end
  end
  object TPanel
    Left = 0
    Top = 583
    Width = 1358
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 1272
      Top = 0
      Width = 68
      Height = 25
      Action = dmConnection.acClose
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FFEF
        F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FF00FF00FF00FF00C6DEEF002184
        BD002194D600188CDE002194D600189CD6001094D60021A5E70029A5E70029AD
        E70029ADEF0010B5EF0000A5DE001094CE003984AD00FF00FF005AA5D60021AD
        FF0018ADFF0031ADFF0031B5FF0031B5FF0031BDFF0039BDFF0039CEFF0031D6
        FF0018DEFF0010D6FF0010CEFF0010BDFF0029A5EF00FFFFFF005AB5DE0018A5
        FF0039B5FF0039B5FF0039BDFF004ABDFF005AC6FF0063CEF70063D6F70052DE
        FF0031E7FF0018E7F70021E7FF0018CEFF0029B5EF00EFFFFF0052ADD60031B5
        FF004ABDFF0042BDFF0084D6F700D6FFFF00E7FFFF00CEF7FF00CEFFFF00BDFF
        FF008CE7FF0031E7FF0010E7FF0000CEFF0018B5E700EFFFFF0063ADE70039B5
        FF0052BDFF0073C6FF00C6F7FF00A5E7FF0063C6EF005ACEFF0052C6F7008CD6
        FF00D6FFFF007BE7FF0029E7FF0010CEFF0021B5EF00F7FFFF006BADE70042BD
        FF005ABDFF009CE7FF00C6EFFF0073C6F7004AC6FF0042BDFF0039CEFF0042D6
        FF0084DEF700BDFFFF0031DEFF0021CEFF0021ADE700F7FFFF0063B5DE0042C6
        FF005AC6FF00B5F7FF00ADDEFF005AC6FF0042C6FF0063CEFF004ACEFF0029CE
        FF0063DEFF00DEFFFF004ADEFF0029BDFF0031ADE700F7FFFF0063BDDE0063CE
        FF0073CEFF00B5F7FF00BDDEFF005AC6FF004ABDFF00ADF7FF005ACEFF0031C6
        FF0063CEEF00DEFFFF0042C6FF0031BDFF0031A5E700F7FFFF006BBDDE0063CE
        FF0073CEFF009CE7FF00D6FFFF006BBDF70063C6FF00BDF7FF0073C6FF0042BD
        F70084DEFF00CEF7FF0039B5F70031B5FF0029A5EF00EFFFFF0073BDDE0073CE
        FF0073D6FF007BCEF700DEFFFF00B5DEFF007BC6F700BDFFFF0073BDEF0073D6
        FF00C6FFFF007BCEFF0039ADF70042B5FF002194DE00EFFFFF0073BDDE007BCE
        FF0084D6FF007BD6FF0094CEF700BDF7FF0073BDEF00B5F7FF007BC6F70084DE
        FF0073C6F70039B5F70039BDFF0042B5FF002994D600F7FFFF0084CEE7008CD6
        FF0094DEFF0084D6FF007BCEFF0073CEFF006BCEFF00BDFFFF0084CEFF005AC6
        FF004ABDFF0039BDFF0039B5FF0042B5FF00319CDE00FFFFFF008CBDDE0094DE
        FF0094DEFF008CDEFF007BD6FF006BCEFF006BCEFF008CDEFF007BCEF7005AC6
        FF005ACEFF0052C6FF004ABDFF0039B5FF002994DE00FFFFFF00ADCEEF0094DE
        FF008CE7FF007BDEFF007BD6FF0073CEFF006BCEFF006BCEFF0063CEFF005AC6
        FF0052C6FF004AC6FF0042BDFF0039BDFF00318CCE00FFF7FF00FF00FF00ADCE
        EF008CC6DE007BBDEF0073BDE7006BBDE70073BDEF006BB5EF006BB5EF006BB5
        EF0063B5EF005AB5EF0052ADDE0063B5DE00A5C6E700FF00FF00}
    end
    object Button1: TButton
      Left = 8
      Top = 2
      Width = 115
      Height = 25
      Action = acFiltrar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 136
      Top = 2
      Width = 137
      Height = 25
      Action = acOK
      TabOrder = 1
    end
    object Button3: TButton
      Left = 280
      Top = 2
      Width = 95
      Height = 25
      Action = acClear
      TabOrder = 2
    end
    object Button4: TButton
      Left = 384
      Top = 2
      Width = 250
      Height = 25
      Action = actGerarExcel
      TabOrder = 3
    end
    object Button5: TButton
      Left = 640
      Top = 2
      Width = 225
      Height = 25
      Action = actAbrirExcel
      TabOrder = 4
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 399
    Width = 1358
    Height = 145
    Align = alBottom
    Caption = 'Hist'#243'rico de Compras e Embarques do Produto'
    TabOrder = 4
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 1354
      Height = 128
      Align = alClient
      Color = clWhite
      DataSource = ds_spr_produtos_embarcados
      FixedColor = 15132390
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
    end
  end
  object dtsFmGrid: TDataSource
    AutoEdit = False
    DataSet = qryProduto
    Left = 128
    Top = 432
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 168
    Top = 432
    object acOK: TAction
      Caption = 'Abrir Produto Selecionado'
      Hint = 'Selecionar e transferir'
      ImageIndex = 3
      ShortCut = 115
      OnExecute = acOKExecute
    end
    object acClose: TAction
      Caption = 'Cancelar(F6)'
      Hint = 'Cancelar'
      ImageIndex = 6
      ShortCut = 117
      SecondaryShortCuts.Strings = (
        'Esc')
      OnExecute = acCloseExecute
    end
    object acClear: TAction
      Caption = 'Limpar Pesquisa'
      ImageIndex = 5
      ShortCut = 116
      OnExecute = acClearExecute
    end
    object acFiltrar: TAction
      Caption = 'Pesquisar Produtos'
      ImageIndex = 2
      ShortCut = 114
      OnExecute = acFiltrarExecute
    end
    object actGerarExcel: TAction
      Caption = 'Gerar Excel Produtos Pesquisados p/poder Alterar'
      ImageIndex = 7
      OnExecute = actGerarExcelExecute
    end
    object actAbrirExcel: TAction
      Caption = 'Abrir Excel Produtos Alterados p/Importar'
      ImageIndex = 7
      OnExecute = actAbrirExcelExecute
    end
    object actOpenImages: TAction
      Caption = 'Abrir Pasta Imagens'
      OnExecute = actOpenImagesExecute
    end
    object actOpenPackages: TAction
      Caption = 'Abrir Pasta Embalagens'
      OnExecute = actOpenPackagesExecute
    end
    object actFechar: TAction
      Caption = 'Fechar'
    end
  end
  object ImageList1: TImageList
    Left = 208
    Top = 432
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000660000000000000000000000000000000000000000
      000000000000E7E7E700CECE9C00CE9C6300CE9C6300F7CEA500FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007F007F7F7F0000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      000000660000006600000066000000000000000000000000000000000000FFFF
      FF00CE9C9C009C6331009C6331009C6331009C6331009C6331009C633100F7CE
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000007F0000007F007F7F7F000000000000000000000000000000FF000000
      7F007F7F7F000000000000000000000000000000000000660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000066000000660000000000000000000000000000FFFFFF00CE9C
      63009C6331009C6331009C6331009C6331009C6331009C6331009C6331009C63
      3100C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000007F0000007F0000007F0000007F007F7F7F0000007F0000007F000000
      7F0000007F007F7F7F0000000000000000000000000000660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000066000000660000000000000000000000000000CECE9C009C63
      31009C633100CE9C6300E7E7E700FFFFFF00FFFFFF00F7CEA5009C6331009C63
      31009C633100F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000007F0000007F0000007F0000007F0000007F0000007F000000
      7F007F7F7F000000000000000000000000000000000000660000FFFFFF000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000006600000000000000000000FFFFFF009C6331009C63
      31009C633100FFFFFF00CE9C9C009C6331009C633100CECECE00E7E7E7009C63
      31009C633100CE9C9C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000007F0000007F0000007F0000007F0000007F000000
      7F00000000000000000000000000000000000000000000660000FFFFFF000066
      000000660000006600000066000000660000FFFFFF0000660000006600000066
      0000FFFFFF0000660000006600000000000000000000FFFFFF009C6331009C63
      3100CECE9C00CECECE009C6331009C6331009C6331009C633100F7F7F7009C9C
      31009C6331009C9C630000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000007F0000007F0000007F0000007F0000007F007F7F
      7F00000000000000000000000000000000000000000000660000FFFFFF00FFFF
      FF00006600000066000000660000FFFFFF000066000000660000006600000066
      0000FFFFFF0000660000006600000000000000000000F7F7F7009C6331009C63
      3100D6D6D600CE9C9C009C633100CECE9C009C9C63009C633100DEDEDE009C9C
      63009C6331009C63310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000008080000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000007F0000007F0000007F0000007F007F7F
      7F00000000000000000000000000000000000000000000660000FFFFFF00FFFF
      FF00FFFFFF0000660000FFFFFF00006600000066000000660000FFFFFF00FFFF
      FF00FFFFFF0000660000006600000000000000000000FFFFFF009C6331009C63
      3100CE9C9C00DEDEDE009C633100DEDEDE009C9C63009C633100FFFFFF009C63
      31009C633100CE9C630000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000000000FF
      FF00000000000080800000000000000000000000000000000000000000000000
      0000000000000000FF0000007F0000007F0000007F0000007F0000007F007F7F
      7F00000000000000000000000000000000000000000000660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000660000006600000066000000660000FFFFFF00FFFF
      FF00FFFFFF0000660000006600000000000000000000FFFFFF009C6363009C63
      31009C633100F7F7F700F7CEA500DEDEDE00CE9C6300EFEFEF00F7CEA5009C63
      31009C633100CECE9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000808000000000000000000000000000000000000000
      00000000FF0000007F0000007F0000007F007F7F7F0000007F0000007F000000
      7F00000000000000000000000000000000000000000000660000FFFFFF00FFFF
      FF00FFFFFF00006600000066000000660000006600000066000000660000FFFF
      FF00FFFFFF000066000000660000000000000000000000000000CECECE009C63
      31009C6331009C633100CECE9C00DEDEDE00CE9C6300CE9C9C009C6331009C63
      31009C633100FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF0000808000008080000000000000000000000000000000
      000000007F0000007F0000007F007F7F7F00000000000000FF0000007F000000
      7F007F7F7F000000000000000000000000000000000000660000FFFFFF00FFFF
      FF00006600000066000000660000FFFFFF000066000000660000006600000066
      0000FFFFFF00006600000066000000000000000000000000000000000000CE9C
      9C009C6331009C6331009C633100DEDEDE00CE9C63009C6331009C6331009C63
      3100DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000000000000000000000000000000
      00000000FF0000007F0000000000000000000000000000000000000000000000
      FF0000007F0000007F0000000000000000000000000000660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000066000000660000000000000000000000000000000000000000
      0000F7CEA5009C6331009C6331009C6331009C6331009C633100CE9C6300E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000007F000000FF0000000000000000000000000000660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000066000000660000000000000000000000000000000000000000
      000000000000FFFFFF00DEDEDE00F7CEA500D6D6D600EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000660000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700D6D6D600EFEF
      EF00DEDEDE00DEDEDE00EFEFEF00D6D6D600EFEFEF00212108004A4A0000B5B5
      AD00D6D6D600EFEFEF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D600EFEFEF00E7E7E700DEDE
      DE00F7F7F700D6D6D600E7E7E700DEDEDE00DEDEDE004A4A0800FFFF00008C8C
      000084848400DEDEDE00EFEFEF00D6D6D6000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700E7E7E700DEDEDE00F7F7
      F700DEDEDE00EFEFEF00EFEFEF00DEDEDE00F7F7F7004A4A0800FFFF00008C8C
      000052520800A5A5A500E7E7E700F7F7F7000000000000000000000000000000
      0000000000008484840084848400000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F0000007F00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A0042424200F7F7F700D6D6D6004A4A0800FFFF00008C8C
      00007B7B00004A4A0800313131004A4A4A000000000000000000000000000000
      0000848484008484840084848400848484000000000084848400848484000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000007F0000007F00007F000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00B5B5B500BDBDBD0042424200313131003131310042420000FFFF00008C8C
      00007B7B00004242000063636300BDBDBD008484840000000000848484000000
      0000000000008484840084848400848484008484840084848400000000008484
      84008484840000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000000000007F000000007F
      0000007F0000007F0000007F0000007F00007F00000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00393939008C8C8C00393939007B7B7B007B7B7B0042420000FFFF00008C8C
      00007B7B00004242000063636300BDBDBD008484840084848400000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F000000007F0000007F
      000000FF0000007F0000007F0000007F0000007F00007F000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00393931004A4A1000101010007B7B7B007B7B7B0042420000FFFF00008C8C
      00007B7B00004242000063636300BDBDBD00FFFFFF0084848400000000000000
      0000000000008484840000000000848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000007F0000007F0000007F
      00000000000000FF0000007F0000007F0000007F00007F000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD0042422100EFEF000094940000636363007B7B7B0042420000FFFF00004242
      2100636300004242000063636300BDBDBD00FFFFFF008484840000000000FFFF
      FF00000000000000000000000000848484000000000084848400848484008484
      8400848484000000000084848400000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000FF0000007F000000FF
      0000000000000000000000FF0000007F0000007F0000007F00007F0000000000
      000000000000000000000000000000000000ADADAD0031310800212100002121
      000042420000FFFF0000FFFF0000424200006363630042420000FFFF00007B7B
      00006B6B00004242000063636300BDBDBD00FFFFFF00848484000000000000FF
      0000000000008484840000000000000000000000000084848400000000008484
      8400848484000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      000000000000000000000000000000FF0000007F0000007F0000007F00007F00
      0000000000000000000000000000000000008C8C8C00FFFF2900FFFFAD00FFFF
      AD00FFFFAD00FFFFAD00FFFFDE00E7E700004A4A080042420000FFFF00008C8C
      00007B7B00004242000063636300BDBDBD008484840000000000848484000000
      000084848400000000000000000000000000FFFFFF0000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF0000007F0000007F0000007F
      000000000000000000000000000000000000A5A5A5007B7B08007B7B08007B7B
      08008C8C0800FFFF3900FFFF73005A5A00005A5A5A0042420000FFFF00008C8C
      00007B7B00004242000063636300BDBDBD000000000000000000848484000000
      0000848484008484840000000000FFFFFF00FF00000000000000848484000000
      000084848400000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000007F0000007F
      00007F000000000000000000000000000000BDBDBD00ADADAD00ADADAD00ADAD
      AD004A4A2900FFFF0800E7E700005A5A52007B7B7B0042420000FFFF00008C8C
      00007B7B00004242000063636300BDBDBD000000000000000000000000000000
      0000848484000000000084848400FFFFFF00FF000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF0000007F
      0000007F00007F0000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00424231006B6B2100212118007B7B7B007B7B7B005A5A52009C9C0000D6D6
      00007B7B00004242000063636300BDBDBD000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FF000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007F0000007F00007F00000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00737373008C8C8C00424242007B7B7B007B7B7B007B7B7B00525252009C9C
      00008C8C00004242000063636300BDBDBD000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000007F0000007F000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00424242007B7B7B007B7B7B007B7B7B007B7B7B005A5A
      5200D6D600004A4A000073737300BDBDBD000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FF000000FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00949494008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C00B5B5B500BDBDBD000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF847FFFFFFFFFFFFF00EFF7FF8001
      F81F31BFE3EF8001E00F39FFE1C78001C007993FF0038001C003CA1FF0078001
      8003F40FF80F800180039C07FC0F800180039603FC0F80018003CB01F80F8001
      8003FF80F00F8001C003F7C0F0878001E007FFE0F3E38001F00FEFF0FFF38001
      F83FFFF8FFFF8001FFFFFFFCFFFFFFFF8001FDFFFFFFFFFF0000F47FFFFFFFFF
      0000D81F07C1F3FF0000B00F07C1F1FF0000580707C1C07F000038070101803F
      00003A030001883F00002E8102018C1F00002B230201DE0F000056138003FF0F
      0000D057C107FF870000F41FC107FFC30000FC0FE38FFFF10000FE07E38FFFF1
      0000FE07E38FFFFB0000FF1FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryProduto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = qryProdutoAfterScroll
    OnCalcFields = qryProdutoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select p.*'
      'from "produto" p    '
      'where 1=2                    ')
    Left = 88
    Top = 432
    object qryProdutoden_produto: TIBStringField
      DisplayLabel = 'Descri'#231#227'o em portugu'#234's'
      DisplayWidth = 100
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object qryProdutocod_produto: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 16
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      OnGetText = qryProdutocod_produtoGetText
      Size = 15
    end
    object qryProdutoies_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"produto"."ies_situacao"'
      OnGetText = qryProdutoies_situacaoGetText
      Size = 1
    end
    object qryProdutocalUniMedida: TStringField
      DisplayLabel = 'UN'
      FieldKind = fkCalculated
      FieldName = 'calUniMedida'
      Size = 3
      Calculated = True
    end
    object qryProdutocod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"produto"."cod_uni_medida"'
      Required = True
    end
    object qryProdutopes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
      DisplayFormat = '##0.00000'
    end
    object qryProdutoden_produto_ing: TIBStringField
      DisplayLabel = 'Descri'#231#227'o em ingl'#234's'
      FieldName = 'den_produto_ing'
      Origin = '"produto"."den_produto_ing"'
      Size = 100
    end
    object qryProdutocod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"produto"."cod_cliente"'
      Size = 12
    end
    object qryProdutocod_fornecedor: TSmallintField
      DisplayLabel = 'Fornecedor'
      FieldName = 'cod_fornecedor'
      Origin = '"produto"."cod_fornecedor"'
    end
    object qryProdutolkpFornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'lkpFornecedor'
      LookupDataSet = Fornecedor_Lkp
      LookupKeyFields = 'cod_fornecedor'
      LookupResultField = 'raz_social_reduz'
      KeyFields = 'cod_fornecedor'
      Size = 30
      Lookup = True
    end
    object qryProdutovlr_unitario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vlr_unitario'
      DisplayFormat = '#,##0.000000'
      Calculated = True
    end
    object qryProdutoobs_preco: TStringField
      FieldKind = fkCalculated
      FieldName = 'obs_preco'
      Size = 255
      Calculated = True
    end
    object qryProdutodat_preco: TDateField
      FieldKind = fkCalculated
      FieldName = 'dat_preco'
      Calculated = True
    end
    object qryProdutoncm_cod: TIntegerField
      FieldName = 'ncm_cod'
      Origin = 'produto.ncm_cod'
      OnGetText = qryProdutoncm_codGetText
    end
    object qryProdutoncm_letra: TIBStringField
      FieldName = 'ncm_letra'
      Origin = '"produto"."ncm_letra"'
      FixedChar = True
      Size = 1
    end
    object qryProdutoncm_lic: TIBStringField
      FieldName = 'ncm_lic'
      Origin = '"produto"."ncm_lic"'
      FixedChar = True
      Size = 1
    end
    object qryProdutopct_comissao_f: TIBBCDField
      DisplayLabel = 'Comiss'#227'o For(%)'
      FieldName = 'pct_comissao_f'
      Origin = '"produto"."pct_comissao_f"'
      DisplayFormat = '##0.00'
      Precision = 9
      Size = 2
    end
    object qryProdutopct_comissao_c: TIBBCDField
      DisplayLabel = 'Comiss'#227'o Cli(%)'
      FieldName = 'pct_comissao_c'
      Origin = '"produto"."pct_comissao_c"'
      DisplayFormat = '##0.00'
      Precision = 9
      Size = 2
    end
    object qryProdutoncm_imetro: TIBStringField
      FieldName = 'ncm_imetro'
      Origin = '"produto"."ncm_imetro"'
      FixedChar = True
      Size = 1
    end
    object qryProdutocalDenProduto_detpor: TStringField
      DisplayLabel = 'Descri'#231#227'o em portugu'#234's'
      DisplayWidth = 500
      FieldKind = fkCalculated
      FieldName = 'calDenProduto_detpor'
      Size = 500
      Calculated = True
    end
    object qryProdutocalDenProduto_det: TStringField
      DisplayLabel = 'Descri'#231#227'o em ingl'#234's'
      FieldKind = fkCalculated
      FieldName = 'calDenProduto_det'
      Size = 500
      Calculated = True
    end
    object qryProdutodat_cad_peso: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_cad_peso'
      Origin = '"produto"."dat_cad_peso"'
      DisplayFormat = 'dd/mm/yy'
    end
  end
  object qryTipProd: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_tip_produto", "den_tip_produto"  from "tipo_produto"')
    Left = 248
    Top = 320
    object qryTipProdcod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Origin = '"tipo_produto"."cod_tip_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTipProdden_tip_produto: TIBStringField
      FieldName = 'den_tip_produto'
      Origin = '"tipo_produto"."den_tip_produto"'
      Required = True
      Size = 128
    end
  end
  object dtsTipProd: TDataSource
    DataSet = qryTipProd
    Left = 280
    Top = 320
  end
  object Cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cast('#39'*** Todos ***'#39' as CHAR(13)) "cod_cliente"'
      'from "cliente"'
      'union'
      'select cast("cod_cliente" as char(13)) "cod_cliente"'
      'from "cliente"'
      'order by 1')
    Left = 248
    Top = 472
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
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select cast('#39'*** TODOS ***'#39' as char(50)) "raz_social_reduz", cas' +
        't(0 as smallint) "cod_fornecedor"'
      
        'from "fornecedor" a                                             ' +
        '                                                       '
      'union'
      
        'select cast(a."raz_social_reduz" as char(50)) "raz_social_reduz"' +
        ', cast(a."cod_fornecedor" as smallint) "cod_fornecedor"'
      '  from "fornecedor" a'
      'order by 1')
    Left = 288
    Top = 440
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
    Left = 320
    Top = 440
  end
  object Embalagem: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "embalagem" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_produto" = :cod_produto')
    Left = 336
    Top = 320
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
    object Embalagemcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Embalagemcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Embalagemaltura: TIBBCDField
      DisplayLabel = 'Altura'
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagemlargura: TIBBCDField
      DisplayLabel = 'Largura'
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagemprofundidade: TIBBCDField
      DisplayLabel = 'Profundidade'
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagemvolume: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object Embalagemarea: TIBBCDField
      DisplayLabel = #193'rea'
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object Embalagemobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem"."observacao"'
      Size = 255
    end
    object Embalagemdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem"."dat_cadastro"'
    end
    object Embalagemqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object Embalagemqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object Embalagempes_bruto_cx: TIBBCDField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem"."pes_bruto_cx"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object Embalagemdat_cad_dimensoes: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem"."dat_cad_dimensoes"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Embalagemdat_cad_peso: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem"."dat_cad_peso"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Embalagemdat_cad_master: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_cad_master'
      Origin = '"embalagem"."dat_cad_master"'
      DisplayFormat = 'dd/mm/yy'
    end
    object Embalagemdat_cad_inner: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem"."dat_cad_inner"'
      DisplayFormat = 'dd/mm/yy'
    end
  end
  object dsEmbalagem: TDataSource
    DataSet = Embalagem
    Left = 368
    Top = 320
  end
  object UnidadeMedida: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "sigla"'
      'from "medida"'
      'where "cod_uni_medida" = :cod_uni_medida')
    Left = 336
    Top = 360
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
  object Fornecedor_Lkp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_fornecedor", "raz_social_reduz"'
      'from "fornecedor"')
    Left = 248
    Top = 440
    object Fornecedor_Lkpcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Fornecedor_Lkpraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
  object tipo_produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterOpen = tipo_produtoAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select cast('#39'*** TODOS ***'#39' as varchar(128)) "den_tip_produto", ' +
        'cast(0 as smallint) "cod_tip_produto"'
      'from "tipo_produto"'
      'union'
      
        'select cast("den_tip_produto" as varchar(128)) "den_tip_produto"' +
        ', cast("cod_tip_produto" as smallint) "cod_tip_produto"'
      'from "tipo_produto"'
      'order by 1')
    Left = 288
    Top = 472
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
    Left = 320
    Top = 472
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "mod_cad_produto", "ies_modelo"'
      'from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 488
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object parametro_comercialmod_cad_produto: TBlobField
      FieldName = 'mod_cad_produto'
      Origin = '"parametro_comercial"."mod_cad_produto"'
      Size = 8
    end
    object parametro_comercialies_modelo: TIntegerField
      FieldName = 'ies_modelo'
      Origin = '"parametro_comercial"."ies_modelo"'
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 448
    Top = 320
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 488
    Top = 320
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 568
    Top = 320
  end
  object SaveDialog: TJvSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Height = 0
    Width = 0
    Left = 529
    Top = 320
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select p.*'
      'from "produto" p    '
      'where 1=2 ')
    Left = 446
    Top = 354
    object Produtoscod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produtoscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Produtosden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object Produtoscod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Origin = '"produto"."cod_tip_produto"'
      Required = True
    end
    object Produtoscod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"produto"."cod_uni_medida"'
      Required = True
    end
    object Produtosies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"produto"."ies_situacao"'
      Size = 1
    end
    object Produtospes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
    object Produtosdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"produto"."dat_cadastro"'
    end
    object Produtosobs_peso_unitario: TIBStringField
      FieldName = 'obs_peso_unitario'
      Origin = '"produto"."obs_peso_unitario"'
      Size = 255
    end
    object Produtosdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"produto"."dat_cad_peso"'
    end
    object Produtosden_produto_det: TMemoField
      FieldName = 'den_produto_det'
      Origin = '"produto"."den_produto_det"'
      BlobType = ftMemo
      Size = 8
    end
    object Produtoscod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"produto"."cod_cliente"'
      Size = 12
    end
    object Produtoscod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"produto"."cod_fornecedor"'
    end
    object Produtoscod_prod_fornec: TIBStringField
      FieldName = 'cod_prod_fornec'
      Origin = '"produto"."cod_prod_fornec"'
      Size = 15
    end
    object Produtosden_produto_ing: TIBStringField
      FieldName = 'den_produto_ing'
      Origin = '"produto"."den_produto_ing"'
      Size = 100
    end
    object Produtosden_produto_detpor: TMemoField
      FieldName = 'den_produto_detpor'
      Origin = '"produto"."den_produto_detpor"'
      BlobType = ftMemo
      Size = 8
    end
    object Produtospct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"produto"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object Produtospct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"produto"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
    object Produtosncm_cod: TIntegerField
      FieldName = 'ncm_cod'
      Origin = 'produto.ncm_cod'
    end
    object Produtosncm_letra: TIBStringField
      FieldName = 'ncm_letra'
      Origin = '"produto"."ncm_letra"'
      FixedChar = True
      Size = 1
    end
    object Produtosncm_lic: TIBStringField
      FieldName = 'ncm_lic'
      Origin = '"produto"."ncm_lic"'
      FixedChar = True
      Size = 1
    end
    object Produtosncm_imetro: TIBStringField
      FieldName = 'ncm_imetro'
      Origin = '"produto"."ncm_imetro"'
      FixedChar = True
      Size = 1
    end
  end
  object fornecedores: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_fornecedor", "raz_social_reduz"'
      '  from "fornecedor"'
      'where  "ies_situacao" = '#39'A'#39
      'order by 2')
    Left = 528
    Top = 354
    object SmallintField1: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
  object clientes: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_cliente"'
      'from "cliente"'
      'order by 1')
    Left = 568
    Top = 352
    object IBStringField2: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
  object unidades_medida: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select "cod_uni_medida", ("den_uni_medida" || '#39' - '#39' || "sigla") ' +
        '"den_uni_medida", "sigla"'
      'from "medida"'
      'order by "sigla"')
    Left = 606
    Top = 352
    object unidades_medidacod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"medida"."cod_uni_medida"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object unidades_medidaden_uni_medida: TIBStringField
      FieldName = 'den_uni_medida'
      ProviderFlags = []
      Size = 81
    end
    object unidades_medidasigla: TIBStringField
      FieldName = 'sigla'
      Origin = '"medida"."sigla"'
      Size = 3
    end
  end
  object TipoProduto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "den_tip_produto"'
      'from "tipo_produto"'
      'order by 1')
    Left = 642
    Top = 351
    object TipoProdutoden_tip_produto: TIBStringField
      FieldName = 'den_tip_produto'
      Origin = '"tipo_produto"."den_tip_produto"'
      Size = 128
    end
  end
  object BuscaTipoProduto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_tip_produto"'
      'from "tipo_produto"'
      'where "den_tip_produto" = :den_tip_produto')
    Left = 448
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'den_tip_produto'
        ParamType = ptUnknown
      end>
    object BuscaTipoProdutocod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Origin = '"tipo_produto"."cod_tip_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object BuscaUnidadeMedida: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_uni_medida"'
      'from "medida"'
      'where "sigla" = :sigla')
    Left = 488
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sigla'
        ParamType = ptUnknown
      end>
    object BuscaUnidadeMedidacod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"medida"."cod_uni_medida"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryTipo_Produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_tip_produto", "den_tip_produto"'
      'from "tipo_produto"'
      'where "cod_tip_produto" = :cod_tip_produto')
    Left = 528
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_tip_produto'
        ParamType = ptUnknown
      end>
    object qryTipo_Produtocod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Origin = '"tipo_produto"."cod_tip_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTipo_Produtoden_tip_produto: TIBStringField
      FieldName = 'den_tip_produto'
      Origin = '"tipo_produto"."den_tip_produto"'
      Required = True
      Size = 128
    end
  end
  object qryUnidade_Medida: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_uni_medida","sigla"'
      'from "medida"'
      'where "cod_uni_medida" = :cod_uni_medida')
    Left = 568
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_uni_medida'
        ParamType = ptUnknown
      end>
    object qryUnidade_Medidacod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"medida"."cod_uni_medida"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUnidade_Medidasigla: TIBStringField
      FieldName = 'sigla'
      Origin = '"medida"."sigla"'
      Size = 3
    end
  end
  object qryFornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "cod_fornecedor", "raz_social_reduz"'
      'from "fornecedor"'
      'where "cod_fornecedor" = :cod_fornecedor')
    Left = 607
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object qryFornecedorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryFornecedorraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
  object EmbalagemImp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from "embalagem"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    Left = 641
    Top = 383
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
    object EmbalagemImpcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EmbalagemImpcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object EmbalagemImppeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
    end
    object EmbalagemImpaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      Precision = 9
      Size = 4
    end
    object EmbalagemImplargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      Precision = 9
      Size = 4
    end
    object EmbalagemImpprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      Precision = 9
      Size = 4
    end
    object EmbalagemImpvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      Precision = 18
      Size = 4
    end
    object EmbalagemImparea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      Precision = 18
      Size = 4
    end
    object EmbalagemImpqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object EmbalagemImpqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object EmbalagemImpobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem"."observacao"'
      Size = 255
    end
    object EmbalagemImpdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem"."dat_cadastro"'
    end
    object EmbalagemImpdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem"."dat_cad_dimensoes"'
    end
    object EmbalagemImpdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem"."dat_cad_peso"'
    end
    object EmbalagemImpdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem"."dat_cad_master"'
    end
    object EmbalagemImpdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem"."dat_cad_inner"'
    end
    object EmbalagemImpobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem"."obs_caixas"'
      Size = 255
    end
    object EmbalagemImppes_bruto_cx: TIBBCDField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem"."pes_bruto_cx"'
      Precision = 18
      Size = 2
    end
  end
  object spr_produtos_embarcados: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from "spr_produtos_embarcados"(:cod_empresa, :cod_produ' +
        'to, :cod_cliente, :cod_fornecedor, :ano);')
    Left = 248
    Top = 600
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
        Name = 'ano'
        ParamType = ptUnknown
      end>
    object spr_produtos_embarcadosnum_pedido_cli: TIBStringField
      DisplayLabel = 'Pedido'
      FieldName = 'num_pedido_cli'
      Origin = '"spr_produtos_embarcados"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object spr_produtos_embarcadosnum_pedido_for: TIBStringField
      DisplayLabel = 'Confirma'#231#227'o'
      FieldName = 'num_pedido_for'
      Origin = '"spr_produtos_embarcados"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object spr_produtos_embarcadosdat_liberacao: TDateField
      DisplayLabel = 'Confirma'#231#227'o'
      DisplayWidth = 9
      FieldName = 'dat_liberacao'
      Origin = '"spr_produtos_embarcados"."dat_liberacao"'
      DisplayFormat = 'dd/mm/yy'
    end
    object spr_produtos_embarcadoscod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"spr_produtos_embarcados"."cod_cliente"'
      Size = 12
    end
    object spr_produtos_embarcadosraz_social_reduz: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'raz_social_reduz'
      Origin = '"spr_produtos_embarcados"."raz_social_reduz"'
      Size = 30
    end
    object spr_produtos_embarcadosqtd_pedido: TIBBCDField
      DisplayLabel = 'Qtd Pedido'
      DisplayWidth = 12
      FieldName = 'qtd_pedido'
      Origin = '"spr_produtos_embarcados"."qtd_pedido"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object spr_produtos_embarcadosvlr_unit_pedido: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      DisplayWidth = 15
      FieldName = 'vlr_unit_pedido'
      Origin = '"spr_produtos_embarcados"."vlr_unit_pedido"'
      DisplayFormat = '#,##0.000000'
    end
    object spr_produtos_embarcadosvlr_pedido: TIBBCDField
      DisplayLabel = 'Total Real'
      DisplayWidth = 12
      FieldName = 'vlr_pedido'
      Origin = '"spr_produtos_embarcados"."vlr_pedido"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object spr_produtos_embarcadosvlr_unit_ped_esp: TFloatField
      DisplayLabel = 'Pre'#231'o Unit Esp'
      DisplayWidth = 15
      FieldName = 'vlr_unit_ped_esp'
      Origin = '"spr_produtos_embarcados"."vlr_unit_ped_esp"'
      DisplayFormat = '#,##0.000000'
    end
    object spr_produtos_embarcadosvlr_pedido_esp: TIBBCDField
      DisplayLabel = 'Total Especial'
      DisplayWidth = 12
      FieldName = 'vlr_pedido_esp'
      Origin = '"spr_produtos_embarcados"."vlr_pedido_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object spr_produtos_embarcadosnum_ref_volume: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'num_ref_volume'
      Origin = '"spr_produtos_embarcados"."num_ref_volume"'
      FixedChar = True
      Size = 25
    end
    object spr_produtos_embarcadosnum_fatura: TIBStringField
      DisplayLabel = 'Fatura'
      FieldName = 'num_fatura'
      Origin = '"spr_produtos_embarcados"."num_fatura"'
      Size = 25
    end
    object spr_produtos_embarcadosdat_embarque: TDateField
      DisplayLabel = 'Embarque'
      DisplayWidth = 9
      FieldName = 'dat_embarque'
      Origin = '"spr_produtos_embarcados"."dat_embarque"'
      DisplayFormat = 'dd/mm/yy'
    end
    object spr_produtos_embarcadosqtd_fatura: TIBBCDField
      DisplayLabel = 'Qtd Embarcada'
      DisplayWidth = 12
      FieldName = 'qtd_fatura'
      Origin = '"spr_produtos_embarcados"."qtd_fatura"'
      DisplayFormat = '#,##0.0'
      Precision = 18
      Size = 3
    end
    object spr_produtos_embarcadosvlr_fatura: TIBBCDField
      DisplayLabel = 'Total Real'
      DisplayWidth = 12
      FieldName = 'vlr_fatura'
      Origin = '"spr_produtos_embarcados"."vlr_fatura"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object spr_produtos_embarcadosvlr_fatura_esp: TIBBCDField
      DisplayLabel = 'Total Especial'
      DisplayWidth = 12
      FieldName = 'vlr_fatura_esp'
      Origin = '"spr_produtos_embarcados"."vlr_fatura_esp"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object ds_spr_produtos_embarcados: TDataSource
    DataSet = spr_produtos_embarcados
    Left = 248
    Top = 632
  end
end
