object fr_MenuPrincipal: Tfr_MenuPrincipal
  Left = 713
  Top = 149
  AutoScroll = False
  Caption = 'fr_MenuPrincipal'
  ClientHeight = 446
  ClientWidth = 644
  Color = clWindow
  Constraints.MinHeight = 492
  Constraints.MinWidth = 652
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 14
  object imgSig: TImage
    Left = 20
    Top = 23
    Width = 228
    Height = 222
    Center = True
    Stretch = True
    Transparent = True
  end
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 426
    Width = 644
    Height = 20
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    Images = dmConnection.ImageList
    Sections = <
      item
        Alignment = taCenter
        ImageIndex = -1
        MaxWidth = 150
        Style = hsOwnerDraw
        Width = 150
      end
      item
        Alignment = taCenter
        ImageIndex = -1
        Width = 125
      end
      item
        Alignment = taCenter
        ImageIndex = -1
        MaxWidth = 150
        Style = hsOwnerDraw
        Width = 150
      end
      item
        Alignment = taCenter
        ImageIndex = -1
        Text = 'Sig'
        Width = 100
      end>
    Style = hsFlat
    OnDrawSection = HeaderControl1DrawSection
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Images = dmConnection.ImageList
    Left = 105
    Top = 40
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      object Fechar1: TMenuItem
        Action = dmConnection.acSobre
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Ajuda1: TMenuItem
      end
    end
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 144
    Top = 42
  end
end
