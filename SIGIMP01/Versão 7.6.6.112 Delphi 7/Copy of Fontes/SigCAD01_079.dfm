object fr_Imagens: Tfr_Imagens
  Left = 365
  Top = 214
  Width = 848
  Height = 569
  HelpType = htKeyword
  HelpKeyword = '079'
  BorderStyle = bsSizeToolWin
  Caption = 'Imagens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 47
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 6
      Width = 37
      Height = 13
      Caption = 'Produto'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 124
      Top = 6
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 22
      Width = 118
      Height = 16
      TabStop = False
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'cod_produto'
      DataSource = fr_CadSitEmbalagem.ds_Produtos
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 124
      Top = 22
      Width = 709
      Height = 16
      TabStop = False
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'den_produto'
      DataSource = fr_CadSitEmbalagem.ds_Produtos
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 494
    Width = 840
    Height = 41
    Align = alBottom
    Alignment = taRightJustify
    BevelInner = bvLowered
    TabOrder = 1
    object Panel3: TPanel
      Left = 653
      Top = 2
      Width = 185
      Height = 37
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 110
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
    end
  end
  object Imagens: TJvThumbView
    Left = 0
    Top = 47
    Width = 840
    Height = 447
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Align = alClient
    BorderStyle = bsNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    TabStop = True
    AlignView = vtNormal
    AutoScrolling = True
    ThumbGap = 4
    AutoHandleKeyb = True
    MinMemory = True
    MaxWidth = 200
    MaxHeight = 200
    Size = 100
    ScrollMode = smVertical
    Sorted = True
    AsButtons = False
    TitlePlacement = tpDown
    Filter = 
      'All (*.gif;*.cur;*.pcx;*.ani;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wm' +
      'f)|*.gif;*.cur;*.pcx;*.ani;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|' +
      'CompuServe GIF Image (*.gif)|*.gif|Cursor files (*.cur)|*.cur|PC' +
      'X Image (*.pcx)|*.pcx|ANI Image (*.ani)|*.ani|JPEG Image File (*' +
      '.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bm' +
      'p|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles' +
      ' (*.wmf)|*.wmf'
    ThumbColor = clNone
    ShowShadow = False
    ShadowColor = clBlack
  end
end
