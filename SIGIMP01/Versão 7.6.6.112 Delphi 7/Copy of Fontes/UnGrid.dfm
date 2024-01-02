object fr_FmGrid: Tfr_FmGrid
  Left = 0
  Top = 0
  Width = 380
  Height = 153
  TabOrder = 0
  object grdGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 380
    Height = 153
    TabStop = False
    Align = alClient
    BorderStyle = bsNone
    DataSource = dtsFmGrid
    FixedColor = 15132390
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
  end
  object dtsFmGrid: TDataSource
    AutoEdit = False
  end
end
