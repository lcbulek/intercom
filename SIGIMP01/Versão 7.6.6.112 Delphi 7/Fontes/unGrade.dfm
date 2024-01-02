object fr_Grade: Tfr_Grade
  Left = 370
  Top = 212
  AutoScroll = False
  Caption = 'Grade'
  ClientHeight = 280
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline fr_FmGrid1: Tfr_FmGrid
    Left = 0
    Top = 0
    Width = 441
    Height = 280
    Align = alClient
    TabOrder = 0
    inherited grdGrid: TDBGrid
      Width = 441
      Height = 280
      Color = clWhite
      FixedColor = clCream
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    end
  end
end
