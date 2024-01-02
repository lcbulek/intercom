object fr_FmGrade_Selecao: Tfr_FmGrade_Selecao
  Left = 0
  Top = 0
  Width = 398
  Height = 127
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 185
    Top = 0
    Width = 5
    Height = 127
  end
  object pnlBotao: TPanel
    Left = 190
    Top = 0
    Width = 37
    Height = 127
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 1
    TabStop = True
    object SpeedButton1: TSpeedButton
      Left = 7
      Top = 6
      Width = 23
      Height = 22
      Action = act_I_Um
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 7
      Top = 28
      Width = 23
      Height = 22
      Action = act_I_Todo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 7
      Top = 60
      Width = 23
      Height = 22
      Action = act_D_Um
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton4: TSpeedButton
      Left = 7
      Top = 82
      Width = 23
      Height = 22
      Action = act_D_Todo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
  end
  object grbSelecionado: TGroupBox
    Left = 227
    Top = 0
    Width = 171
    Height = 127
    Align = alClient
    Caption = 'Selecionado(s)'
    TabOrder = 2
    TabStop = True
    inline fr_FmGrid2: Tfr_FmGrid
      Left = 2
      Top = 16
      Width = 167
      Height = 109
      Align = alClient
      TabOrder = 0
      inherited grdGrid: TDBGrid
        Width = 167
        Height = 109
        TabStop = True
        OnDblClick = fr_FmGrid2DBGrid1DblClick
      end
      inherited dtsFmGrid: TDataSource
        DataSet = qrySelecionado
      end
    end
  end
  object grbLivre: TGroupBox
    Left = 0
    Top = 0
    Width = 185
    Height = 127
    Align = alLeft
    Caption = 'Livre(s)'
    TabOrder = 0
    TabStop = True
    inline fr_FmGrid1: Tfr_FmGrid
      Left = 2
      Top = 16
      Width = 181
      Height = 109
      Align = alClient
      TabOrder = 0
      inherited grdGrid: TDBGrid
        Width = 181
        Height = 109
        TabStop = True
        OnDblClick = fr_FmGrid1DBGrid1DblClick
      end
      inherited dtsFmGrid: TDataSource
        DataSet = qrySelecao
      end
    end
  end
  object ActionList1: TActionList
    Left = 284
    Top = 36
    object act_I_Um: TAction
      Caption = '>'
      OnExecute = act_I_UmExecute
    end
    object act_I_Todo: TAction
      Caption = '>>'
      OnExecute = act_I_TodoExecute
    end
    object act_D_Um: TAction
      Caption = '<'
      OnExecute = act_D_UmExecute
    end
    object act_D_Todo: TAction
      Caption = '<<'
      OnExecute = act_D_TodoExecute
    end
  end
  object qrySelecao: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnFilterRecord = qrySelecaoFilterRecord
    Left = 13
    Top = 34
  end
  object qrySelecionado: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    OnFilterRecord = qrySelecionadoFilterRecord
    Left = 242
    Top = 34
  end
end
