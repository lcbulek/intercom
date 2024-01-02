object fr_Consultas: Tfr_Consultas
  Left = 432
  Top = 340
  AutoScroll = False
  Caption = 'Consultas'
  ClientHeight = 483
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 667
    Height = 113
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 667
    Height = 324
    Align = alClient
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 437
    Width = 667
    Height = 46
    Align = alBottom
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 573
      Top = 1
      Width = 91
      Height = 44
      Align = alRight
      AutoSize = True
      BorderWidth = 2
      ButtonHeight = 33
      ButtonWidth = 37
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
        Action = actImprimir
      end
      object ToolButton1: TToolButton
        Left = 40
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 213
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 48
        Top = 0
        Action = dmConnection.acClose
        AutoSize = True
      end
    end
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 523
    Top = 448
    object actPesquisar: TAction
      Caption = 'F3'
      ImageIndex = 49
      ShortCut = 114
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      Hint = 'Impress'#227'o de Relat'#243'rio'
      ImageIndex = 16
    end
  end
end
