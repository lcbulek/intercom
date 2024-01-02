object fr_Menu: Tfr_Menu
  Left = 365
  Top = 373
  HelpType = htKeyword
  HelpKeyword = '001'
  BorderStyle = bsNone
  Caption = 'Menu Principal'
  ClientHeight = 49
  ClientWidth = 711
  Color = clBtnFace
  ParentFont = True
  Menu = MainMenu
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 32
    Width = 711
    Height = 17
    Align = alBottom
    BorderWidth = 1
    Sections = <
      item
        ImageIndex = -1
        MaxWidth = 350
        Width = 350
      end
      item
        Alignment = taCenter
        ImageIndex = -1
        Width = 125
      end
      item
        Alignment = taCenter
        ImageIndex = -1
        Width = 125
      end
      item
        Alignment = taCenter
        ImageIndex = -1
        Text = 'Sig'
        Width = 65
      end>
    Style = hsFlat
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 233
    Top = 7
    object acAtualiza: TAction
      Caption = 'Atualizar'
      ImageIndex = 74
      ShortCut = 116
    end
    object act_Ativar: TAction
      Caption = 'Ativar'
      OnExecute = act_AtivarExecute
    end
    object act_Desativar: TAction
      Caption = 'Desativar'
      OnExecute = act_DesativarExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Alignment = paCenter
    Images = dmConnection.ImageList
    Left = 205
    Top = 8
    object Ajuda2: TMenuItem
      Action = dmConnection.acHelp
    end
    object Sobre3: TMenuItem
      Action = dmConnection.acSobre
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Fechar2: TMenuItem
      Action = dmConnection.acClose
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 261
    Top = 7
  end
  object MainMenu: TMainMenu
    Images = dmConnection.ImageList
    Left = 177
    Top = 7
  end
  object PopupMenu2: TPopupMenu
    Images = dmConnection.ImageList
    Left = 293
    Top = 7
  end
  object JvTrayIcon: TJvTrayIcon
    Active = True
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000077770000000000000000000000078FFFFFFFFFF70000000000000
      0000077777777777777FF700000000000000000000000000000FFF8000000000
      08FFFFFFFFFFFFFFFFF0FFFF000000000FFFFFFFFFFFFFFFFFF08FFF7000000F
      FFFFFFFFFFFFFFFFFFFF08FFFF00000FF00000FFFFFFFFFFFFFF0FFFFF00000F
      F00800FFFFFFFFFFFF0F008FFFF000FFF0FFFFFFF000FFFF7000007FFFF000FF
      F0FFFF0FFF00FFFF00FF7008FFF800FFFFFFFF0FFF70FFF807FF800FFFFF00FF
      FFFFFF0FFFF0FFF00FFF7000FFFF0FFFFFFFFF0FFFF0FFF00FFF7777FFFF0FFF
      FFFFF80FFFF0FFF000FFFFFFFFFF0FFFFFFFF80FFFF7FFFF00FFFFFFFFFF0FFF
      FFFFF70FFFF7FFFF00FFFFFFFFFF0FFFFFFF00FFFFF7FFFF008FFFFF8FFF00FF
      FFF800FFFFF78FFFF00FFFFF7FFF00FFFFF700FFFFFF08FFF70FFFFF7FF800FF
      FFF700FFFFF807FFFFF88F807FF000FFFFF700FFFFF0007FFFF077708FF0000F
      FFFF00FFFFFFFFFFFFFFFFFFFF00000FFFFF00FFFFFFFFFFFFFFFFFFFF000000
      8FFFF8000000000000000000780000000FFFFF00000000000000000000000000
      007FFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFFFF00000000000
      000000FFFFFFFFFFFFF700000000000000000008FFFFFFFFFF70000000700000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
    IconIndex = -1
    Visibility = [tvAutoHide, tvRestoreClick, tvMinimizeClick]
    OnDblClick = JvTrayIconDblClick
    Left = 324
    Top = 6
  end
end
