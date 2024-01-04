object frm_MudaNumPedidos: Tfrm_MudaNumPedidos
  Left = 441
  Top = 501
  HelpType = htKeyword
  HelpKeyword = '062'
  BorderIcons = [biMinimize]
  BorderStyle = bsSingle
  Caption = 'Mudar Numera'#231#227'o de Pedidos'
  ClientHeight = 146
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 76
    Height = 13
    Caption = 'N'#250'mero Anterior'
  end
  object Label2: TLabel
    Left = 176
    Top = 16
    Width = 66
    Height = 13
    Caption = 'Novo N'#250'mero'
  end
  object edNumAnterior: TEdit
    Left = 40
    Top = 30
    Width = 83
    Height = 21
    MaxLength = 12
    TabOrder = 0
    OnKeyPress = edNumAnteriorKeyPress
  end
  object edNovoNumero: TEdit
    Left = 176
    Top = 30
    Width = 83
    Height = 21
    MaxLength = 5
    TabOrder = 1
    OnKeyPress = edNovoNumeroKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkYes
  end
  object BitBtn2: TBitBtn
    Left = 184
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkClose
  end
  object spr_mudar_num_pedido: TIBStoredProc
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    StoredProcName = 'spr_mudar_num_pedido'
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'NUM_PEDIDO_ANT'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'NUM_PEDIDO_NOV'
        ParamType = ptInput
      end>
  end
end
