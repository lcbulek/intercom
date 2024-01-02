inherited fr_CadProduto: Tfr_CadProduto
  Left = 420
  Top = 165
  HelpType = htKeyword
  HelpKeyword = '025'
  Caption = 'Produto'
  ClientHeight = 652
  ClientWidth = 1278
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 1278
    Height = 617
    object Label1: TLabel [0]
      Left = 8
      Top = 9
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = dbedcod_produto
      Layout = tlBottom
    end
    object Label8: TLabel [1]
      Left = 8
      Top = 341
      Width = 84
      Height = 14
      Caption = 'Tipo produto'
      Layout = tlBottom
    end
    object Label9: TLabel [2]
      Left = 451
      Top = 455
      Width = 119
      Height = 14
      Caption = 'Unidade de medida'
      Layout = tlBottom
    end
    object Label14: TLabel [3]
      Left = 8
      Top = 457
      Width = 21
      Height = 14
      Caption = 'NCM'
      FocusControl = dbeNcm_cod
      Layout = tlBottom
    end
    object Label18: TLabel [4]
      Left = 409
      Top = 10
      Width = 112
      Height = 14
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    object Label10: TLabel [5]
      Left = 141
      Top = 9
      Width = 133
      Height = 14
      Caption = 'Situa'#231#227'o do Produto'
    end
    object Label4: TLabel [6]
      Left = 8
      Top = 196
      Width = 203
      Height = 14
      Caption = 'Descri'#231#227'o Detalhada em Ingl'#234's'
      FocusControl = DBMemo2
    end
    object Label5: TLabel [7]
      Left = 8
      Top = 379
      Width = 70
      Height = 14
      Caption = 'Fornecedor'
    end
    object Label6: TLabel [8]
      Left = 609
      Top = 377
      Width = 133
      Height = 14
      Caption = 'Cod Prod Fornecedor'
      FocusControl = dbeCodProdFornec
    end
    object Label7: TLabel [9]
      Left = 8
      Top = 417
      Width = 49
      Height = 14
      Caption = 'Cliente'
      FocusControl = dbeCodCliente
    end
    object Label11: TLabel [10]
      Left = 8
      Top = 52
      Width = 224
      Height = 14
      Caption = 'Descri'#231#227'o Detalhada em Portugu'#234's'
      FocusControl = DBMemo2
    end
    object Label13: TLabel [11]
      Left = 451
      Top = 379
      Width = 154
      Height = 14
      Alignment = taCenter
      Caption = 'Comiss'#227'o Fornecedor(%)'
      FocusControl = DBEdit1
    end
    object Label15: TLabel [12]
      Left = 451
      Top = 417
      Width = 133
      Height = 14
      Alignment = taCenter
      Caption = 'Comiss'#227'o Cliente(%)'
      FocusControl = DBEdit2
    end
    object Label20: TLabel [13]
      Left = 776
      Top = 269
      Width = 119
      Height = 14
      Caption = 'Imagem do produto'
    end
    object Imagem: TImage [14]
      Left = 776
      Top = 285
      Width = 230
      Height = 230
      Hint = 
        'As imagens dos produtos dever'#227'o ser armazenadas em D:[Pasta da E' +
        'mpresa Usu'#225'ria] + '#39'\PRODUCTS DATABASE\IMAGES\'#39'  + "C'#243'digo do Pro' +
        'duto" . '#39'"jpg"'
      ParentShowHint = False
      Proportional = True
      ShowHint = True
      Stretch = True
    end
    object Label16: TLabel [15]
      Left = 661
      Top = 531
      Width = 98
      Height = 14
      Caption = 'Pre'#231'o unit'#225'rio'
      FocusControl = dbePreco
    end
    object Label31: TLabel [16]
      Left = 8
      Top = 532
      Width = 70
      Height = 14
      Caption = 'Data Pre'#231'o'
    end
    object Label32: TLabel [17]
      Left = 108
      Top = 531
      Width = 105
      Height = 14
      Caption = 'Origem do Pre'#231'o'
      FocusControl = dbeObsPreco
    end
    object Label12: TLabel [18]
      Left = 8
      Top = 493
      Width = 119
      Height = 14
      Caption = 'Peso unit'#225'rio(Kg)'
      Layout = tlBottom
    end
    object Label17: TLabel [19]
      Left = 133
      Top = 493
      Width = 28
      Height = 14
      Caption = 'Data'
    end
    inherited Button1: TButton
      Left = 608
      Width = 153
      Action = fr_FmNavigator1.acF3
      Caption = 'Procurar Produtos'
      TabOrder = 27
      Visible = False
    end
    object dbedcod_produto: TDBEdit
      Left = 8
      Top = 28
      Width = 126
      Height = 22
      CharCase = ecUpperCase
      DataField = 'cod_produto'
      DataSource = dsIBDataSet
      TabOrder = 0
    end
    object dbeNcm_cod: TDBEdit
      Left = 8
      Top = 472
      Width = 111
      Height = 22
      DataField = 'ncm_cod'
      DataSource = dsIBDataSet
      MaxLength = 8
      TabOrder = 14
    end
    object dbeddat_cadastro: TDBEdit
      Left = 409
      Top = 29
      Width = 114
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 2
    end
    object dblklkDenTipProdto: TDBLookupComboBox
      Left = 60
      Top = 357
      Width = 390
      Height = 22
      DataField = 'lkDenTipProdto'
      DataSource = dsIBDataSet
      TabOrder = 6
    end
    object dblklkDenUniMedida: TDBLookupComboBox
      Left = 451
      Top = 471
      Width = 235
      Height = 22
      DataField = 'lkDenUniMedida'
      DataSource = dsIBDataSet
      TabOrder = 18
    end
    object edtcod_tip_produto: TDBEdit
      Left = 8
      Top = 357
      Width = 50
      Height = 22
      DataField = 'cod_tip_produto'
      DataSource = dsIBDataSet
      TabOrder = 5
    end
    object grpBotoes: TGroupBox
      Left = 2
      Top = 568
      Width = 1274
      Height = 47
      Align = alBottom
      TabOrder = 26
      object lbProcess: TLabel
        Left = 930
        Top = 24
        Width = 7
        Height = 14
        Color = clCream
        ParentColor = False
      end
      object BitBtn1: TBitBtn
        Left = 455
        Top = 18
        Width = 230
        Height = 26
        Action = actImportar
        Caption = 'Importar Planilha Atualizada'
        TabOrder = 1
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
      object BitBtn2: TBitBtn
        Left = 689
        Top = 18
        Width = 233
        Height = 26
        Action = actAbrir
        Caption = 'Procurar Planilha p/Importar'
        TabOrder = 0
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
      object panGauge: TPanel
        Left = 7
        Top = 8
        Width = 439
        Height = 9
        BevelOuter = bvLowered
        TabOrder = 2
      end
      object BitBtn3: TBitBtn
        Left = 2
        Top = 18
        Width = 448
        Height = 26
        Action = actGerarExcelNovo
        Caption = 'Abrir planilha em branco p/cadastrar mais de 1 produto novo'
        TabOrder = 3
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
    end
    object rgSituacao: TDBRadioGroup
      Left = 140
      Top = 22
      Width = 212
      Height = 31
      Columns = 2
      DataField = 'ies_situacao'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Ativo'
        'Inativo')
      TabOrder = 1
      Values.Strings = (
        'A'
        'I')
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 212
      Width = 765
      Height = 130
      DataField = 'den_produto_det'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 4
      OnKeyPress = DBMemo2KeyPress
    end
    object dbeCodFornecedor: TDBEdit
      Left = 8
      Top = 393
      Width = 50
      Height = 22
      DataField = 'cod_fornecedor'
      DataSource = dsIBDataSet
      TabOrder = 7
    end
    object dblcRazSocial: TDBLookupComboBox
      Left = 60
      Top = 393
      Width = 390
      Height = 22
      DataField = 'lkRazSocial'
      DataSource = dsIBDataSet
      TabOrder = 8
    end
    object dbeCodProdFornec: TDBEdit
      Left = 609
      Top = 393
      Width = 126
      Height = 22
      CharCase = ecUpperCase
      DataField = 'cod_prod_fornec'
      DataSource = dsIBDataSet
      TabOrder = 10
    end
    object dbeCodCliente: TDBEdit
      Left = 8
      Top = 433
      Width = 75
      Height = 22
      CharCase = ecUpperCase
      DataField = 'cod_cliente'
      DataSource = dsIBDataSet
      TabOrder = 11
    end
    object dlkCliente: TDBLookupComboBox
      Left = 87
      Top = 433
      Width = 362
      Height = 22
      DataField = 'lkCliente'
      DataSource = dsIBDataSet
      TabOrder = 12
    end
    object DBMemo3: TDBMemo
      Left = 8
      Top = 66
      Width = 765
      Height = 130
      DataField = 'den_produto_detpor'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 3
      OnKeyPress = DBMemo3KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 451
      Top = 393
      Width = 72
      Height = 22
      DataField = 'pct_comissao_f'
      DataSource = dsIBDataSet
      TabOrder = 9
    end
    object DBEdit2: TDBEdit
      Left = 451
      Top = 433
      Width = 72
      Height = 22
      DataField = 'pct_comissao_c'
      DataSource = dsIBDataSet
      TabOrder = 13
    end
    object DBEdit3: TDBEdit
      Left = 121
      Top = 472
      Width = 15
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ncm_letra'
      DataSource = dsIBDataSet
      TabOrder = 15
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 140
      Top = 461
      Width = 141
      Height = 33
      Caption = 'Licen'#231'a Importa'#231#227'o'
      Columns = 2
      DataField = 'ncm_lic'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 16
      Values.Strings = (
        'S'
        'N')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 284
      Top = 461
      Width = 141
      Height = 33
      Caption = 'Licenciado INMETRO'
      Columns = 2
      DataField = 'ncm_imetro'
      DataSource = dsIBDataSet
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 17
      Values.Strings = (
        'S'
        'N')
    end
    object dbePreco: TDBEdit
      Left = 661
      Top = 547
      Width = 112
      Height = 22
      DataField = 'preco'
      DataSource = dsIBDataSet
      TabOrder = 23
    end
    object dtpDatPreco: TJvDBDatePickerEdit
      Left = 8
      Top = 548
      Width = 96
      Height = 22
      AllowNoDate = True
      DataField = 'dat_preco'
      DataSource = dsIBDataSet
      DateFormat = 'dd.MM.yyyy'
      DateSeparator = '.'
      DisabledColor = clCream
      StoreDateFormat = True
      TabOrder = 21
    end
    object dbeObsPreco: TDBEdit
      Left = 108
      Top = 547
      Width = 549
      Height = 22
      CharCase = ecUpperCase
      DataField = 'obs_preco'
      DataSource = dsIBDataSet
      TabOrder = 22
    end
    object GroupBox2: TGroupBox
      Left = 776
      Top = 52
      Width = 497
      Height = 143
      Caption = 'Caixa Master'
      TabOrder = 24
      object Label19: TLabel
        Left = 212
        Top = 19
        Width = 77
        Height = 14
        Caption = 'Altura (cm)'
      end
      object Label21: TLabel
        Left = 117
        Top = 19
        Width = 84
        Height = 14
        Caption = 'Largura (cm)'
      end
      object Label22: TLabel
        Left = 8
        Top = 19
        Width = 105
        Height = 14
        Caption = 'Comprimento(cm)'
      end
      object Label23: TLabel
        Left = 304
        Top = 19
        Width = 77
        Height = 14
        Caption = 'Volume (m'#179')'
      end
      object Label24: TLabel
        Left = 397
        Top = 19
        Width = 28
        Height = 14
        Caption = 'Data'
      end
      object Label25: TLabel
        Left = 8
        Top = 59
        Width = 98
        Height = 14
        Caption = 'Peso Bruto(Kg)'
      end
      object Label26: TLabel
        Left = 117
        Top = 59
        Width = 28
        Height = 14
        Caption = 'Data'
      end
      object Label27: TLabel
        Left = 8
        Top = 99
        Width = 70
        Height = 14
        Caption = 'Qtd Master'
      end
      object Label28: TLabel
        Left = 117
        Top = 99
        Width = 28
        Height = 14
        Caption = 'Data'
      end
      object DBEdit5: TDBEdit
        Left = 8
        Top = 35
        Width = 91
        Height = 22
        DataField = 'profundidade'
        DataSource = dsEmbalagem
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 117
        Top = 35
        Width = 91
        Height = 22
        DataField = 'largura'
        DataSource = dsEmbalagem
        TabOrder = 1
      end
      object dbeAltura: TDBEdit
        Left = 212
        Top = 35
        Width = 91
        Height = 22
        DataField = 'altura'
        DataSource = dsEmbalagem
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 304
        Top = 35
        Width = 91
        Height = 22
        Color = clInfoBk
        DataField = 'calVolume'
        DataSource = dsEmbalagem
        ReadOnly = True
        TabOrder = 3
      end
      object JvDBDatePickerEdit4: TJvDBDatePickerEdit
        Left = 397
        Top = 35
        Width = 95
        Height = 22
        AllowNoDate = True
        DataField = 'dat_cad_dimensoes'
        DataSource = dsEmbalagem
        DateFormat = 'dd.MM.yyyy'
        DateSeparator = '.'
        StoreDateFormat = True
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 8
        Top = 75
        Width = 91
        Height = 22
        DataField = 'pes_bruto_cx'
        DataSource = dsEmbalagem
        TabOrder = 5
      end
      object JvDBDatePickerEdit2: TJvDBDatePickerEdit
        Left = 117
        Top = 75
        Width = 95
        Height = 22
        AllowNoDate = True
        DataField = 'dat_cad_peso'
        DataSource = dsEmbalagem
        DateFormat = 'dd.MM.yyyy'
        DateSeparator = '.'
        StoreDateFormat = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 8
        Top = 115
        Width = 91
        Height = 22
        DataField = 'qtd_master'
        DataSource = dsEmbalagem
        TabOrder = 7
      end
      object JvDBDatePickerEdit3: TJvDBDatePickerEdit
        Left = 117
        Top = 115
        Width = 95
        Height = 22
        AllowNoDate = True
        DataField = 'dat_cad_master'
        DataSource = dsEmbalagem
        DateFormat = 'dd.MM.yyyy'
        DateSeparator = '.'
        StoreDateFormat = True
        TabOrder = 8
      end
    end
    object GroupBox3: TGroupBox
      Left = 776
      Top = 196
      Width = 497
      Height = 67
      Caption = 'Caixa Inner'
      TabOrder = 25
      object Label29: TLabel
        Left = 8
        Top = 19
        Width = 63
        Height = 14
        Caption = 'Qtd Inner'
      end
      object Label30: TLabel
        Left = 117
        Top = 19
        Width = 28
        Height = 14
        Caption = 'Data'
      end
      object DBEdit9: TDBEdit
        Left = 8
        Top = 35
        Width = 91
        Height = 22
        DataField = 'qtd_inner'
        DataSource = dsEmbalagem
        TabOrder = 0
      end
      object JvDBDatePickerEdit5: TJvDBDatePickerEdit
        Left = 117
        Top = 35
        Width = 95
        Height = 22
        AllowNoDate = True
        DataField = 'dat_cad_inner'
        DataSource = dsEmbalagem
        DateFormat = 'dd.MM.yyyy'
        DateSeparator = '.'
        StoreDateFormat = True
        TabOrder = 1
      end
    end
    object dbedpes_unitario: TDBEdit
      Left = 8
      Top = 509
      Width = 116
      Height = 22
      DataField = 'pes_unitario'
      DataSource = dsIBDataSet
      TabOrder = 19
    end
    object JvDBDatePickerEdit1: TJvDBDatePickerEdit
      Left = 133
      Top = 509
      Width = 95
      Height = 22
      AllowNoDate = True
      DataField = 'dat_cad_peso'
      DataSource = dsIBDataSet
      DateFormat = 'dd.MM.yyyy'
      DateSeparator = '.'
      StoreDateFormat = True
      TabOrder = 20
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 617
    Width = 1278
    Height = 35
    inherited ToolBar1: TToolBar
      Width = 1278
    end
    inherited ActionList1: TActionList
      Left = 438
      Top = 2
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
    inherited ImageList1: TImageList
      Left = 475
      Top = 4
    end
  end
  inherited ActionList1: TActionList
    Left = 536
    Top = 104
    object actProdutosFornec: TAction
      Caption = '&Fornecedores'
      Hint = 'Produto no fornecedor'
    end
    object actProdutoCliente: TAction
      Caption = '&Clientes'
      Hint = 'Produto no cliente'
    end
    object actImportar: TAction
      Caption = 'Importar Planilha Atualizada'
      ImageIndex = 235
      OnExecute = actImportarExecute
    end
    object actAbrir: TAction
      Caption = 'Procurar Planilha p/Importar'
      ImageIndex = 235
      OnExecute = actAbrirExecute
    end
    object actGerarExcelNovo: TAction
      Caption = 'Abrir planilha em branco p/cadastrar mais de 1 produto novo'
      ImageIndex = 235
      OnExecute = actGerarExcelNovoExecute
    end
  end
  inherited IBDataSet: TIBDataSet
    AfterInsert = IBDataSetAfterInsert
    BeforeDelete = IBDataSetBeforeDelete
    BeforePost = IBDataSetBeforePost
    OnCalcFields = IBDataSetCalcFields
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "produto"'
      'where'
      '  "produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "produto"'
      
        '  ("produto"."cod_empresa", "produto"."cod_produto", "produto"."' +
        'den_produto", '
      '   "produto"."cod_tip_produto", "produto"."cod_uni_medida", '
      '"produto"."ies_situacao", '
      
        '   "produto"."pes_unitario", "produto"."ncm_cod", "produto"."dat' +
        '_cadastro", '
      '   "produto"."obs_peso_unitario", "produto"."dat_cad_peso", '
      '"produto"."den_produto_det", '
      '   "produto"."cod_cliente", "produto"."cod_fornecedor", '
      '   "produto"."cod_prod_fornec", "produto"."den_produto_ing", '
      '"produto"."den_produto_detpor", '
      '   "produto"."pct_comissao_f", "produto"."pct_comissao_c", '
      
        '"produto"."ncm_letra", "produto"."ncm_lic", "produto"."ncm_imetr' +
        'o",'
      '"produto"."preco", "produto"."dat_preco", "produto"."obs_preco")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"den_produto", :"cod_tip_pro' +
        'duto", '
      
        '   :"cod_uni_medida", :"ies_situacao", :"pes_unitario", :"ncm_co' +
        'd", '
      
        '   :"dat_cadastro", :"obs_peso_unitario", :"dat_cad_peso", :"den' +
        '_produto_det", '
      '   :"cod_cliente",  :"cod_fornecedor", :"cod_prod_fornec", '
      
        '   :"den_produto_ing", :"den_produto_detpor", :"pct_comissao_f",' +
        ' '
      ':"pct_comissao_c",  :"ncm_letra",  :"ncm_lic", :"ncm_imetro",'
      ':"preco", :"dat_preco", :"obs_preco")')
    RefreshSQL.Strings = (
      'Select *'
      'from "produto" '
      'where'
      '  "produto"."cod_empresa" = :"cod_empresa" and'
      '  "produto"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select *'
      'from "produto"'
      'where'
      '  "cod_empresa" = :cod_empresa'
      'and "cod_produto" = :cod_produto'
      '')
    ModifySQL.Strings = (
      'update "produto"'
      'set'
      '  "produto"."cod_empresa" = :"cod_empresa",'
      '  "produto"."cod_produto" = :"cod_produto",'
      '  "produto"."den_produto" = :"den_produto",'
      '  "produto"."cod_tip_produto" = :"cod_tip_produto",'
      '  "produto"."cod_uni_medida" = :"cod_uni_medida",'
      '  "produto"."ies_situacao" = :"ies_situacao",'
      '  "produto"."pes_unitario" = :"pes_unitario",'
      '  "produto"."ncm_cod" = :"ncm_cod",'
      '  "produto"."dat_cadastro" = :"dat_cadastro",'
      '  "produto"."obs_peso_unitario" = :"obs_peso_unitario",'
      '  "produto"."dat_cad_peso" = :"dat_cad_peso",'
      '  "produto"."den_produto_det" = :"den_produto_det",'
      '  "produto"."cod_cliente" = :"cod_cliente",'
      '  "produto"."cod_fornecedor" = :"cod_fornecedor",'
      '  "produto"."cod_prod_fornec" = :"cod_prod_fornec",'
      '  "produto"."den_produto_ing" = :"den_produto_ing",'
      '  "produto"."den_produto_detpor" = :"den_produto_detpor",'
      '  "produto"."pct_comissao_f" = :"pct_comissao_f",'
      '  "produto"."pct_comissao_c" = :"pct_comissao_c", '
      '  "produto"."ncm_letra" = :"ncm_letra", '
      '  "produto"."ncm_lic" = :"ncm_lic",'
      '  "produto"."ncm_imetro" = :"ncm_imetro",'
      '  "produto"."preco" = :"preco",'
      '  "produto"."dat_preco" = :"dat_preco",'
      '  "produto"."obs_preco" = :"obs_preco"'
      'where'
      '  "produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto"."cod_produto" = :"OLD_cod_produto"')
    Left = 72
    Top = 74
    object IBDataSetcod_empresa: TSmallintField
      DisplayLabel = 'Empresa'
      FieldName = 'cod_empresa'
      Origin = '"produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_produto: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = IBDataSetcod_produtoValidate
      Size = 15
    end
    object IBDataSetden_produto: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object IBDataSetden_produto_ing: TIBStringField
      DisplayLabel = 'Descri'#231#227'o em Ingl'#234's'
      FieldName = 'den_produto_ing'
      Origin = '"produto"."den_produto_ing"'
      Size = 100
    end
    object IBDataSetcod_tip_produto: TSmallintField
      DisplayLabel = 'Tipo produto'
      FieldName = 'cod_tip_produto'
      Origin = '"produto"."cod_tip_produto"'
      Required = True
      Visible = False
      OnValidate = IBDataSetcod_tip_produtoValidate
    end
    object IBDataSetlkDenTipProdto: TIBStringField
      DisplayLabel = 'Tipo produto'
      FieldKind = fkLookup
      FieldName = 'lkDenTipProdto'
      LookupDataSet = QrAux
      LookupKeyFields = 'cod_tip_produto'
      LookupResultField = 'den_tip_produto'
      KeyFields = 'cod_tip_produto'
      LookupCache = True
      Size = 75
      Lookup = True
    end
    object IBDataSetcod_uni_medida: TSmallintField
      DisplayLabel = 'Unidade medida'
      FieldName = 'cod_uni_medida'
      Origin = '"produto"."cod_uni_medida"'
      Required = True
      Visible = False
    end
    object IBDataSetlkDenUniMedida: TIBStringField
      DisplayLabel = 'Unidade medida'
      FieldKind = fkLookup
      FieldName = 'lkDenUniMedida'
      LookupDataSet = unidade_medida
      LookupKeyFields = 'cod_uni_medida'
      LookupResultField = 'den_uni_medida'
      KeyFields = 'cod_uni_medida'
      LookupCache = True
      Size = 75
      Lookup = True
    end
    object IBDataSeties_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ies_situacao'
      Origin = '"produto"."ies_situacao"'
      Size = 1
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"produto"."dat_cadastro"'
      EditMask = '!99/99/0000;1;_'
    end
    object IBDataSetpes_unitario: TFloatField
      DisplayLabel = 'Peso Unit'#225'rio'
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
      DisplayFormat = '##0.00000'
    end
    object IBDataSetobs_peso_unitario: TIBStringField
      FieldName = 'obs_peso_unitario'
      Origin = '"produto"."obs_peso_unitario"'
      Size = 255
    end
    object IBDataSetdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"produto"."dat_cad_peso"'
    end
    object IBDataSetden_produto_det: TMemoField
      DisplayLabel = 'Descri'#231#227'o Detalhada'
      FieldName = 'den_produto_det'
      Origin = '"produto"."den_produto_det"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetcod_fornecedor: TSmallintField
      DisplayLabel = 'Fornecedor'
      FieldName = 'cod_fornecedor'
      Origin = '"produto"."cod_fornecedor"'
    end
    object IBDataSetlkRazSocial: TStringField
      FieldKind = fkLookup
      FieldName = 'lkRazSocial'
      LookupDataSet = fornecedor
      LookupKeyFields = 'cod_fornecedor'
      LookupResultField = 'raz_social'
      KeyFields = 'cod_fornecedor'
      Size = 50
      Lookup = True
    end
    object IBDataSetcod_prod_fornec: TIBStringField
      DisplayLabel = 'Cod Prod Fornecedor'
      FieldName = 'cod_prod_fornec'
      Origin = '"produto"."cod_prod_fornec"'
      OnGetText = IBDataSetcod_prod_fornecGetText
      OnValidate = IBDataSetcod_prod_fornecValidate
      Size = 15
    end
    object IBDataSetcod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
      Origin = '"produto"."cod_cliente"'
      Size = 12
    end
    object IBDataSetlkCliente: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'lkCliente'
      LookupDataSet = cliente
      LookupKeyFields = 'cod_cliente'
      LookupResultField = 'nom_cliente'
      KeyFields = 'cod_cliente'
      Size = 50
      Lookup = True
    end
    object IBDataSetden_produto_detpor: TMemoField
      FieldName = 'den_produto_detpor'
      Origin = '"produto"."den_produto_detpor"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetsigla: TStringField
      FieldKind = fkLookup
      FieldName = 'sigla'
      LookupDataSet = unidade_medida
      LookupKeyFields = 'cod_uni_medida'
      LookupResultField = 'sigla'
      KeyFields = 'cod_uni_medida'
      Size = 10
      Lookup = True
    end
    object IBDataSetraz_social_reduz: TStringField
      FieldKind = fkLookup
      FieldName = 'raz_social_reduz'
      LookupDataSet = fornecedor
      LookupKeyFields = 'cod_fornecedor'
      LookupResultField = 'raz_social_reduz'
      KeyFields = 'cod_fornecedor'
      Size = 30
      Lookup = True
    end
    object IBDataSetpct_comissao_f: TIBBCDField
      DisplayLabel = '% com fornecedor'
      FieldName = 'pct_comissao_f'
      Origin = '"produto"."pct_comissao_f"'
      DisplayFormat = '##0.00'
      Precision = 9
      Size = 2
    end
    object IBDataSetpct_comissao_c: TIBBCDField
      DisplayLabel = '% com cliente'
      FieldName = 'pct_comissao_c'
      Origin = '"produto"."pct_comissao_c"'
      DisplayFormat = '##0.00'
      Precision = 9
      Size = 2
    end
    object IBDataSetncm_cod: TIntegerField
      DisplayLabel = 'NCM'
      FieldName = 'ncm_cod'
      Origin = 'produto.ncm_cod'
      OnGetText = IBDataSetncm_codGetText
    end
    object IBDataSetncm_letra: TIBStringField
      FieldName = 'ncm_letra'
      Origin = '"produto"."ncm_letra"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetncm_lic: TIBStringField
      FieldName = 'ncm_lic'
      Origin = '"produto"."ncm_lic"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetncm_imetro: TIBStringField
      FieldName = 'ncm_imetro'
      Origin = '"produto"."ncm_imetro"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetpreco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'preco'
      Origin = '"produto"."preco"'
      DisplayFormat = '#,##0.0000'
    end
    object IBDataSetdat_preco: TDateField
      DisplayLabel = 'Data Pre'#231'o'
      FieldName = 'dat_preco'
      Origin = '"produto"."dat_preco"'
    end
    object IBDataSetobs_preco: TIBStringField
      DisplayLabel = 'Observa'#231#227'o Pre'#231'o'
      FieldName = 'obs_preco'
      Origin = '"produto"."obs_preco"'
      Size = 255
    end
    object IBDataSetcalPreco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calPreco'
      DisplayFormat = '#,##0.0000'
      Calculated = True
    end
    object IBDataSetcalObsPreco: TStringField
      FieldKind = fkCalculated
      FieldName = 'calObsPreco'
      Size = 255
      Calculated = True
    end
    object IBDataSetcalDatPreco: TDateField
      FieldKind = fkCalculated
      FieldName = 'calDatPreco'
      Calculated = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 72
    Top = 107
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      'select "cod_tip_produto", "den_tip_produto"'
      'from "tipo_produto"'
      'order by "den_tip_produto"')
    Left = 113
    Top = 74
    object QrAuxcod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Origin = '"tipo_produto"."cod_tip_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrAuxden_tip_produto: TIBStringField
      FieldName = 'den_tip_produto'
      Origin = '"tipo_produto"."den_tip_produto"'
      Required = True
      Size = 128
    end
  end
  object unidade_medida: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select "cod_uni_medida", ("den_uni_medida" || '#39' - '#39' || "sigla") ' +
        '"den_uni_medida", "sigla"'
      'from "medida"'
      'order by "sigla"')
    Left = 158
    Top = 107
    object unidade_medidacod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"medida"."cod_uni_medida"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object unidade_medidaden_uni_medida: TIBStringField
      FieldName = 'den_uni_medida'
      ProviderFlags = []
      Size = 81
    end
    object unidade_medidasigla: TIBStringField
      FieldName = 'sigla'
      Origin = '"medida"."sigla"'
      Size = 3
    end
  end
  object Produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_produto"'
      'from "produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    Left = 112
    Top = 107
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
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
  end
  object Tipo_Produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "tipo_produto"'
      'where "cod_tip_produto" = :cod_tip_produto')
    Left = 204
    Top = 107
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_tip_produto'
        ParamType = ptUnknown
      end>
  end
  object fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BeforeOpen = fornecedorBeforeOpen
    SQL.Strings = (
      'select "cod_fornecedor", "raz_social_reduz", "raz_social"'
      '  from "fornecedor"'
      'where "cod_fornecedor"  in (select "cod_fornecedor"'
      '                          from "usuario_fornecedor"'
      '                         where "login" = :login)'
      '  and "ies_situacao" = '#39'A'#39
      'order by 2')
    Left = 160
    Top = 74
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end>
    object fornecedorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fornecedorraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
    object fornecedorraz_social: TIBStringField
      FieldName = 'raz_social'
      Origin = '"fornecedor"."raz_social"'
      Size = 100
    end
  end
  object Produto_Fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "produto"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_fornecedor" = :cod_fornecedor'
      '  and "cod_prod_fornec" = :cod_prod_fornec')
    Left = 205
    Top = 74
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
      end
      item
        DataType = ftUnknown
        Name = 'cod_prod_fornec'
        ParamType = ptUnknown
      end>
  end
  object cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BeforeOpen = clienteBeforeOpen
    SQL.Strings = (
      'select "cod_cliente", "nom_cliente"'
      'from "cliente"'
      'where "cod_cliente" in (select "cod_cliente"'
      '                          from "usuario_cliente"'
      '                         where "login" = :login)'
      ''
      'order by 1')
    Left = 112
    Top = 142
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'login'
        ParamType = ptUnknown
      end>
    object clientecod_cliente: TIBStringField
      DisplayLabel = 'Cliente'
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
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 568
    Top = 104
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 600
    Top = 104
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 632
    Top = 104
  end
  object Embalagem: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = EmbalagemAfterDelete
    AfterEdit = EmbalagemAfterEdit
    AfterPost = EmbalagemAfterPost
    BeforeInsert = EmbalagemBeforeInsert
    BeforePost = EmbalagemBeforePost
    OnCalcFields = EmbalagemCalcFields
    OnNewRecord = EmbalagemNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "embalagem"'
      
        '  ("embalagem"."cod_empresa", "embalagem"."cod_produto", "embala' +
        'gem"."peso_unitario", '
      
        '   "embalagem"."altura", "embalagem"."largura", "embalagem"."pro' +
        'fundidade", '
      
        '   "embalagem"."volume", "embalagem"."area", "embalagem"."qtd_ma' +
        'ster", '
      
        '   "embalagem"."qtd_inner", "embalagem"."observacao", "embalagem' +
        '"."dat_cadastro", '
      
        '   "embalagem"."dat_cad_dimensoes", "embalagem"."dat_cad_peso", ' +
        '"embalagem"."dat_cad_master", '
      
        '   "embalagem"."dat_cad_inner", "embalagem"."obs_caixas", "embal' +
        'agem"."pes_bruto_cx"'
      '  )'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"peso_unitario", :"altura", ' +
        ':"largura", '
      
        '   :"profundidade", :"volume", :"area", :"qtd_master", :"qtd_inn' +
        'er", :"observacao", '
      
        '   :"dat_cadastro", :"dat_cad_dimensoes", :"dat_cad_peso", :"dat' +
        '_cad_master", '
      '   :"dat_cad_inner", :"obs_caixas", :"pes_bruto_cx")')
    RefreshSQL.Strings = (
      'Select *  from "embalagem" '
      'where'
      '  "embalagem"."cod_empresa" = :"cod_empresa" and'
      '  "embalagem"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select * from "embalagem"'
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
    Left = 72
    Top = 142
    object Embalagemcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Embalagemcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Embalagempeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
      DisplayFormat = '#,##0.00000'
    end
    object Embalagemaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagemlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagemprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagemvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object Embalagemarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
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
    object Embalagemobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem"."observacao"'
      Size = 255
    end
    object Embalagemdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem"."dat_cadastro"'
    end
    object Embalagemdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem"."dat_cad_dimensoes"'
    end
    object Embalagemdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem"."dat_cad_peso"'
    end
    object Embalagemdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem"."dat_cad_master"'
    end
    object Embalagemdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem"."dat_cad_inner"'
    end
    object Embalagemobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem"."obs_caixas"'
      Size = 255
    end
    object EmbalagemcalVolume: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calVolume'
      DisplayFormat = '##,###,##0.0000'
      Calculated = True
    end
    object Embalagempes_bruto_cx: TIBBCDField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem"."pes_bruto_cx"'
      OnValidate = Embalagempes_bruto_cxValidate
      Precision = 18
      Size = 2
    end
  end
  object parametro_comercial: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "parametro_comercial"'
      'where'
      '  "parametro_comercial"."cod_empresa" = :"OLD_cod_empresa"')
    InsertSQL.Strings = (
      'insert into "parametro_comercial"'
      
        '  ("parametro_comercial"."ano_pedido", "parametro_comercial"."pr' +
        'ox_num_pedido")'
      'values'
      '  (:"ano_pedido", :"prox_num_pedido")')
    RefreshSQL.Strings = (
      'Select  *'
      'from "parametro_comercial" '
      'where'
      '  "parametro_comercial"."cod_empresa" = :"cod_empresa"')
    SelectSQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    ModifySQL.Strings = (
      'update "parametro_comercial"'
      'set'
      '  "parametro_comercial"."ano_pedido" = :"ano_pedido",'
      '  "parametro_comercial"."prox_num_pedido" = :"prox_num_pedido"'
      'where'
      '  "parametro_comercial"."cod_empresa" = :"OLD_cod_empresa"')
    Left = 600
    Top = 136
    object parametro_comercialdir_planilhas: TIBStringField
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
    end
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
  object ProdutosImp: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = ProdutosImpAfterPost
    BeforePost = ProdutosImpBeforePost
    OnNewRecord = ProdutosImpNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "produto"'
      'where'
      '  "produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "produto"'
      
        '  ("produto"."cod_empresa", "produto"."cod_produto", "produto"."' +
        'den_produto", '
      '   "produto"."cod_tip_produto", "produto"."cod_uni_medida", '
      '"produto"."ies_situacao", '
      
        '   "produto"."pes_unitario", "produto"."dat_cadastro", "produto"' +
        '."obs_peso_unitario", '
      
        '   "produto"."dat_cad_peso", "produto"."den_produto_det", "produ' +
        'to"."cod_cliente", '
      '   "produto"."cod_fornecedor", "produto"."cod_prod_fornec", '
      '"produto"."den_produto_ing", '
      '   "produto"."den_produto_detpor", "produto"."pct_comissao_f", '
      '"produto"."pct_comissao_c", '
      
        '   "produto"."ncm_cod", "produto"."ncm_letra", "produto"."ncm_li' +
        'c", "produto"."ncm_imetro",'
      '"produto"."preco", "produto"."dat_preco", "produto"."obs_preco")'
      ''
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"den_produto", :"cod_tip_pro' +
        'duto", '
      
        '   :"cod_uni_medida", :"ies_situacao", :"pes_unitario", :"dat_ca' +
        'dastro", '
      
        '   :"obs_peso_unitario", :"dat_cad_peso", :"den_produto_det", :"' +
        'cod_cliente", '
      '   :"cod_fornecedor", :"cod_prod_fornec", :"den_produto_ing", '
      ':"den_produto_detpor", '
      
        '   :"pct_comissao_f", :"pct_comissao_c", :"ncm_cod", :"ncm_letra' +
        '", :"ncm_lic", :"ncm_imetro",'
      ':"preco", :"dat_preco", :"obs_preco")')
    RefreshSQL.Strings = (
      'Select * from "produto" '
      'where'
      '  "produto"."cod_empresa" = :"cod_empresa" and'
      '  "produto"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select *'
      'from "produto"'
      'where'
      '  "cod_empresa" = :cod_empresa'
      'and "cod_produto" = :cod_produto'
      '')
    ModifySQL.Strings = (
      'update "produto"'
      'set'
      '  "produto"."cod_empresa" = :"cod_empresa",'
      '  "produto"."cod_produto" = :"cod_produto",'
      '  "produto"."den_produto" = :"den_produto",'
      '  "produto"."cod_tip_produto" = :"cod_tip_produto",'
      '  "produto"."cod_uni_medida" = :"cod_uni_medida",'
      '  "produto"."ies_situacao" = :"ies_situacao",'
      '  "produto"."pes_unitario" = :"pes_unitario",'
      '  "produto"."dat_cadastro" = :"dat_cadastro",'
      '  "produto"."obs_peso_unitario" = :"obs_peso_unitario",'
      '  "produto"."dat_cad_peso" = :"dat_cad_peso",'
      '  "produto"."den_produto_det" = :"den_produto_det",'
      '  "produto"."cod_cliente" = :"cod_cliente",'
      '  "produto"."cod_fornecedor" = :"cod_fornecedor",'
      '  "produto"."cod_prod_fornec" = :"cod_prod_fornec",'
      '  "produto"."den_produto_ing" = :"den_produto_ing",'
      '  "produto"."den_produto_detpor" = :"den_produto_detpor",'
      '  "produto"."pct_comissao_f" = :"pct_comissao_f",'
      '  "produto"."pct_comissao_c" = :"pct_comissao_c",'
      '  "produto"."ncm_cod" = :"ncm_cod",'
      '  "produto"."ncm_letra" = :"ncm_letra",'
      '  "produto"."ncm_lic" = :"ncm_lic",'
      '  "produto"."ncm_imetro" = :"ncm_imetro",'
      '  "produto"."preco" = :"preco",'
      '  "produto"."dat_preco" = :"dat_preco",'
      '  "produto"."obs_preco" = :"obs_preco"'
      ''
      'where'
      '  "produto"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "produto"."cod_produto" = :"OLD_cod_produto"')
    Left = 536
    Top = 136
    object ProdutosImpcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutosImpcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ProdutosImpden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 100
    end
    object ProdutosImpcod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Origin = '"produto"."cod_tip_produto"'
      Required = True
    end
    object ProdutosImpcod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"produto"."cod_uni_medida"'
      Required = True
    end
    object ProdutosImpies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"produto"."ies_situacao"'
      Size = 1
    end
    object ProdutosImppes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
    object ProdutosImpdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"produto"."dat_cadastro"'
    end
    object ProdutosImpobs_peso_unitario: TIBStringField
      FieldName = 'obs_peso_unitario'
      Origin = '"produto"."obs_peso_unitario"'
      Size = 255
    end
    object ProdutosImpdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"produto"."dat_cad_peso"'
    end
    object ProdutosImpden_produto_det: TMemoField
      FieldName = 'den_produto_det'
      Origin = '"produto"."den_produto_det"'
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosImpcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"produto"."cod_cliente"'
      Size = 12
    end
    object ProdutosImpcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"produto"."cod_fornecedor"'
    end
    object ProdutosImpcod_prod_fornec: TIBStringField
      FieldName = 'cod_prod_fornec'
      Origin = '"produto"."cod_prod_fornec"'
      Size = 15
    end
    object ProdutosImpden_produto_ing: TIBStringField
      FieldName = 'den_produto_ing'
      Origin = '"produto"."den_produto_ing"'
      Size = 100
    end
    object ProdutosImpden_produto_detpor: TMemoField
      FieldName = 'den_produto_detpor'
      Origin = '"produto"."den_produto_detpor"'
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosImppct_comissao_f: TIBBCDField
      FieldName = 'pct_comissao_f'
      Origin = '"produto"."pct_comissao_f"'
      Precision = 9
      Size = 2
    end
    object ProdutosImppct_comissao_c: TIBBCDField
      FieldName = 'pct_comissao_c'
      Origin = '"produto"."pct_comissao_c"'
      Precision = 9
      Size = 2
    end
    object ProdutosImpncm_cod: TIntegerField
      FieldName = 'ncm_cod'
      Origin = 'produto.ncm_cod'
      OnGetText = ProdutosImpncm_codGetText
    end
    object ProdutosImpncm_letra: TIBStringField
      FieldName = 'ncm_letra'
      Origin = '"produto"."ncm_letra"'
      FixedChar = True
      Size = 1
    end
    object ProdutosImpncm_lic: TIBStringField
      FieldName = 'ncm_lic'
      Origin = '"produto"."ncm_lic"'
      FixedChar = True
      Size = 1
    end
    object ProdutosImpncm_imetro: TIBStringField
      FieldName = 'ncm_imetro'
      Origin = '"produto"."ncm_imetro"'
      FixedChar = True
      Size = 1
    end
    object ProdutosImppreco: TFloatField
      FieldName = 'preco'
      Origin = '"produto"."preco"'
    end
    object ProdutosImpdat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = '"produto"."dat_preco"'
    end
    object ProdutosImpobs_preco: TIBStringField
      FieldName = 'obs_preco'
      Origin = '"produto"."obs_preco"'
      Size = 255
    end
  end
  object BuscaTipoProduto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_tip_produto"'
      'from "tipo_produto"'
      'where "den_tip_produto" = :den_tip_produto')
    Left = 536
    Top = 72
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
    SQL.Strings = (
      'select "cod_uni_medida"'
      'from "medida"'
      'where "sigla" = :sigla')
    Left = 568
    Top = 72
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
  object qryUnidade_Medida: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_uni_medida","sigla"'
      'from "medida"'
      'where "cod_uni_medida" = :cod_uni_medida')
    Left = 600
    Top = 72
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
  object qryTipo_Produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_tip_produto", "den_tip_produto"'
      'from "tipo_produto"'
      'where "cod_tip_produto" = :cod_tip_produto')
    Left = 632
    Top = 72
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
  object qryFornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_fornecedor", "raz_social_reduz"'
      'from "fornecedor"'
      'where "cod_fornecedor" = :cod_fornecedor')
    Left = 664
    Top = 72
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
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select p.*'
      'from "produto" p    '
      'where 1=2 ')
    Left = 566
    Top = 138
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
  object Lista_Preco: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = Lista_PrecoAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "lista_preco"'
      'where'
      '  "lista_preco"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista_preco"."num_lista" = :"OLD_num_lista" and'
      '  "lista_preco"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "lista_preco"'
      
        '  ("lista_preco"."cod_empresa", "lista_preco"."num_lista", "list' +
        'a_preco"."cod_produto", '
      
        '   "lista_preco"."vlr_unitario", "lista_preco"."dat_cadastro", "' +
        'lista_preco"."obs_preco")'
      'values'
      
        '  (:"cod_empresa", :"num_lista", :"cod_produto", :"vlr_unitario"' +
        ', :"dat_cadastro", '
      '   :"obs_preco")')
    RefreshSQL.Strings = (
      'Select '
      '  "lista_preco"."cod_empresa",'
      '  "lista_preco"."num_lista",'
      '  "lista_preco"."cod_produto",'
      '  "lista_preco"."vlr_unitario",'
      '  "lista_preco"."dat_cadastro",'
      '  "lista_preco"."obs_preco"'
      'from "lista_preco" '
      'where'
      '  "lista_preco"."cod_empresa" = :"cod_empresa" and'
      '  "lista_preco"."num_lista" = :"num_lista" and'
      '  "lista_preco"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select * from "lista_preco" b'
      'where b."cod_empresa" = :cod_empresa'
      '  and b."num_lista" = :num_lista'
      '  and b."cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "lista_preco"'
      'set'
      '  "lista_preco"."cod_empresa" = :"cod_empresa",'
      '  "lista_preco"."num_lista" = :"num_lista",'
      '  "lista_preco"."cod_produto" = :"cod_produto",'
      '  "lista_preco"."vlr_unitario" = :"vlr_unitario",'
      '  "lista_preco"."dat_cadastro" = :"dat_cadastro",'
      '  "lista_preco"."obs_preco" = :"obs_preco"'
      'where'
      '  "lista_preco"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista_preco"."num_lista" = :"OLD_num_lista" and'
      '  "lista_preco"."cod_produto" = :"OLD_cod_produto"')
    Left = 568
    Top = 33
    object Lista_Precocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"lista_preco"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Lista_Preconum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"lista_preco"."num_lista"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Lista_Precocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"lista_preco"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Lista_Precovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"lista_preco"."vlr_unitario"'
    end
    object Lista_Precodat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"lista_preco"."dat_cadastro"'
    end
    object Lista_Precoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"lista_preco"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object SaveDialog: TJvSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Height = 0
    Width = 0
    Left = 665
    Top = 104
  end
  object ExcluirListaPreco: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = ExcluirListaPrecoAfterDelete
    AfterPost = ExcluirListaPrecoAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "lista_preco"'
      'where'
      '  "lista_preco"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista_preco"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "lista_preco"'
      '  ("lista_preco"."cod_empresa", "lista_preco"."num_lista", '
      '"lista_preco"."cod_produto", '
      
        '   "lista_preco"."vlr_unitario", "lista_preco"."dat_cadastro", "' +
        'lista_preco"."obs_preco")'
      'values'
      
        '  (:"cod_empresa", :"num_lista", :"cod_produto", :"vlr_unitario"' +
        ', :"dat_cadastro", '
      '   :"obs_preco")')
    RefreshSQL.Strings = (
      'Select '
      '  "lista_preco"."cod_empresa",'
      '  "lista_preco"."num_lista",'
      '  "lista_preco"."cod_produto",'
      '  "lista_preco"."vlr_unitario",'
      '  "lista_preco"."dat_cadastro",'
      '  "lista_preco"."obs_preco"'
      'from "lista_preco" '
      'where'
      '  "lista_preco"."cod_empresa" = :"cod_empresa" and'
      '  "lista_preco"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select * from "lista_preco" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "lista_preco"'
      'set'
      '  "lista_preco"."cod_empresa" = :"cod_empresa",'
      '  "lista_preco"."num_lista" = :"num_lista",'
      '  "lista_preco"."cod_produto" = :"cod_produto",'
      '  "lista_preco"."vlr_unitario" = :"vlr_unitario",'
      '  "lista_preco"."dat_cadastro" = :"dat_cadastro",'
      '  "lista_preco"."obs_preco" = :"obs_preco"'
      'where'
      '  "lista_preco"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista_preco"."cod_produto" = :"OLD_cod_produto"')
    Left = 248
    Top = 72
  end
  object Pedidos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "num_pedido"'
      'from "pedido_produto" a'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto'
      'order by 1')
    Left = 248
    Top = 104
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
    object Pedidosnum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_produto"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object spr_atualizar_precos: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_atualizar_precos'
    Left = 598
    Top = 34
  end
  object dsEmbalagem: TDataSource
    DataSet = Embalagem
    Left = 72
    Top = 174
  end
  object EmbalagemImp: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = EmbalagemAfterPost
    OnNewRecord = EmbalagemNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "embalagem"'
      
        '  ("embalagem"."cod_empresa", "embalagem"."cod_produto", "embala' +
        'gem"."peso_unitario", '
      
        '   "embalagem"."altura", "embalagem"."largura", "embalagem"."pro' +
        'fundidade", '
      
        '   "embalagem"."volume", "embalagem"."area", "embalagem"."qtd_ma' +
        'ster", '
      
        '   "embalagem"."qtd_inner", "embalagem"."observacao", "embalagem' +
        '"."dat_cadastro", '
      
        '   "embalagem"."dat_cad_dimensoes", "embalagem"."dat_cad_peso", ' +
        '"embalagem"."dat_cad_master", '
      
        '   "embalagem"."dat_cad_inner", "embalagem"."obs_caixas", "embal' +
        'agem"."pes_bruto_cx"'
      ' )'
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
      'select * from "embalagem"'
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
      '  "embalagem"."pes_bruto_cx" = :"pes_bruto_cx" '
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    Left = 536
    Top = 168
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
  object TipoProduto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "den_tip_produto"'
      'from "tipo_produto"'
      'order by 1')
    Left = 205
    Top = 142
    object TipoProdutoden_tip_produto: TIBStringField
      FieldName = 'den_tip_produto'
      Origin = '"tipo_produto"."den_tip_produto"'
      Size = 128
    end
  end
  object Lista: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = ListaAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "lista"'
      'where'
      '  "lista"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista"."num_lista" = :"OLD_num_lista"')
    InsertSQL.Strings = (
      'insert into "lista"'
      
        '  ("lista"."cod_empresa", "lista"."num_lista", "lista"."den_list' +
        'a", "lista"."ies_situacao", '
      
        '   "lista"."dat_cadastro", "lista"."cod_cliente", "lista"."ies_t' +
        'ip_lista", '
      '   "lista"."cod_fornecedor")'
      'values'
      
        '  (:"cod_empresa", :"num_lista", :"den_lista", :"ies_situacao", ' +
        ':"dat_cadastro", '
      '   :"cod_cliente", :"ies_tip_lista", :"cod_fornecedor")')
    RefreshSQL.Strings = (
      'Select '
      '  "lista"."cod_empresa",'
      '  "lista"."num_lista",'
      '  "lista"."den_lista",'
      '  "lista"."ies_situacao",'
      '  "lista"."dat_cadastro",'
      '  "lista"."cod_cliente",'
      '  "lista"."ies_tip_lista",'
      '  "lista"."cod_fornecedor"'
      'from "lista" '
      'where'
      '  "lista"."cod_empresa" = :"cod_empresa" and'
      '  "lista"."num_lista" = :"num_lista"')
    SelectSQL.Strings = (
      'select a.*'
      'from "lista" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and a."ies_situacao" = '#39'A'#39
      '  and a."ies_tip_lista" = '#39'G'#39)
    ModifySQL.Strings = (
      'update "lista"'
      'set'
      '  "lista"."cod_empresa" = :"cod_empresa",'
      '  "lista"."num_lista" = :"num_lista",'
      '  "lista"."den_lista" = :"den_lista",'
      '  "lista"."ies_situacao" = :"ies_situacao",'
      '  "lista"."dat_cadastro" = :"dat_cadastro",'
      '  "lista"."cod_cliente" = :"cod_cliente",'
      '  "lista"."ies_tip_lista" = :"ies_tip_lista",'
      '  "lista"."cod_fornecedor" = :"cod_fornecedor"'
      'where'
      '  "lista"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "lista"."num_lista" = :"OLD_num_lista"')
    Left = 536
    Top = 34
    object Listacod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"lista"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Listanum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"lista"."num_lista"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Listaden_lista: TIBStringField
      FieldName = 'den_lista'
      Origin = '"lista"."den_lista"'
      Required = True
      Size = 75
    end
    object Listaies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"lista"."ies_situacao"'
      Size = 1
    end
    object Listadat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"lista"."dat_cadastro"'
    end
    object Listacod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"lista"."cod_cliente"'
      Size = 12
    end
    object Listaies_tip_lista: TIBStringField
      FieldName = 'ies_tip_lista'
      Origin = '"lista"."ies_tip_lista"'
      FixedChar = True
      Size = 1
    end
    object Listacod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"lista"."cod_fornecedor"'
    end
  end
end
