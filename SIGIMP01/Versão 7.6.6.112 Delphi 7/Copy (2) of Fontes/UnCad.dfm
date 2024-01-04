object fr_Cad: Tfr_Cad
  Left = 615
  Top = 261
  BorderStyle = bsToolWindow
  Caption = 'Cadastro'
  ClientHeight = 162
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 125
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Button1: TButton
      Left = 352
      Top = 7
      Width = 70
      Height = 25
      Action = fr_FmNavigator1.acF3
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  inline fr_FmNavigator1: Tfr_FmNavigator
    Left = 0
    Top = 125
    Width = 427
    Height = 37
    Align = alBottom
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -9
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    inherited ToolBar1: TToolBar
      Width = 427
    end
    inherited ActionList1: TActionList
      OnExecute = fr_FmNavigator1ActionList1Execute
      Top = 10
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
      inherited acF3: TAction
        Hint = ''
        ShortCut = 0
        SecondaryShortCuts.Strings = (
          'F3')
        OnExecute = fr_FmNavigator1acF3Execute
      end
      inherited acCancel: TDataSetCancel
        DataSource = dsIBDataSet
      end
      inherited acRefresh: TDataSetRefresh
        DataSource = dsIBDataSet
      end
    end
    inherited ImageList1: TImageList
      Top = 12
    end
  end
  object ActionList1: TActionList
    Images = dmConnection.ImageList
    Left = 296
    Top = 40
  end
  object IBDataSet: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    ForcedRefresh = True
    AfterCancel = IBDataSetAfterCancel
    AfterClose = IBDataSetAfterClose
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BeforeInsert = IBDataSetBeforeInsert
    BeforeOpen = IBDataSetBeforeOpen
    OnDeleteError = IBDataSetDeleteError
    OnEditError = IBDataSetDeleteError
    OnPostError = IBDataSetDeleteError
    OnUpdateError = IBDataSetUpdateError
    BufferChunks = 1000
    CachedUpdates = False
    Left = 328
    Top = 40
  end
  object dsIBDataSet: TDataSource
    DataSet = IBDataSet
    Left = 340
    Top = 45
  end
  object QrAux: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    BufferChunks = 1000
    CachedUpdates = False
    Left = 375
    Top = 40
  end
end
