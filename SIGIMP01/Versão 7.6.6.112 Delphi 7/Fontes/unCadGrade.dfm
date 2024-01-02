inherited fr_CadGrade: Tfr_CadGrade
  Left = 592
  Top = 208
  Caption = 'Cadastro Grade'
  ClientHeight = 436
  ClientWidth = 569
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 569
    Height = 121
    Align = alTop
    OnEnter = Panel1Enter
    inherited Button1: TButton
      Left = 480
      Top = 15
      Action = fr_FmNavigator1.acF3
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 399
    Width = 569
    inherited ToolBar1: TToolBar
      Width = 569
    end
    inherited ActionList1: TActionList
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
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 121
    Width = 569
    Height = 278
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object DBGrade: TJvDBUltimGrid
        Left = 0
        Top = 0
        Width = 561
        Height = 249
        Align = alClient
        DataSource = dsIBDataSetGrade
        Enabled = False
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        OnEnter = DBGradeEnter
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 18
      end
    end
  end
  inherited IBDataSet: TIBDataSet
    AfterOpen = IBDataSetAfterOpen
    AfterScroll = IBDataSetAfterScroll
    BeforeDelete = IBDataSetBeforeDelete
    OnNewRecord = IBDataSetNewRecord
  end
  object IBDataSetGrade: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterCancel = IBDataSetGradeAfterCancel
    AfterClose = IBDataSetGradeAfterClose
    AfterDelete = IBDataSetGradeAfterDelete
    AfterPost = IBDataSetGradeAfterPost
    BeforeOpen = IBDataSetGradeBeforeOpen
    BeforePost = IBDataSetGradeBeforePost
    OnDeleteError = IBDataSetGradeDeleteError
    OnEditError = IBDataSetGradeEditError
    OnPostError = IBDataSetGradePostError
    OnUpdateError = IBDataSetGradeUpdateError
    Left = 304
    Top = 160
  end
  object dsIBDataSetGrade: TDataSource
    DataSet = IBDataSetGrade
    Left = 320
    Top = 176
  end
end
