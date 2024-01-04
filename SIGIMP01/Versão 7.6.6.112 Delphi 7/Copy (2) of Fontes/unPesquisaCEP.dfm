object FPesquisaCEP: TFPesquisaCEP
  Left = 306
  Top = 172
  Width = 567
  Height = 363
  Caption = 'Endere'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 325
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 6
      Top = 2
      Width = 545
      Height = 56
      Caption = 'Filtro'
      TabOrder = 0
      object Label1: TLabel
        Left = 160
        Top = 16
        Width = 21
        Height = 13
        Caption = 'CEP'
      end
      object Label2: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label3: TLabel
        Left = 243
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Edit2: TEdit
        Left = 8
        Top = 30
        Width = 150
        Height = 21
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        OnExit = Edit2Exit
        OnMouseDown = Edit2MouseDown
      end
      object Edit3: TEdit
        Left = 243
        Top = 30
        Width = 293
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnExit = Edit3Exit
      end
      object Edit1: TEdit
        Left = 159
        Top = 30
        Width = 83
        Height = 21
        Hint = 'Digite somente n'#250'meros'
        MaxLength = 8
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = Edit1Exit
        OnMouseDown = Edit1MouseDown
      end
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 61
      Width = 544
      Height = 240
      BorderStyle = bsNone
      DataSource = DataSource1
      FixedColor = 15132390
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CEP'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGRAD'
          Title.Caption = 'Endere'#231'o'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCAL'
          Title.Caption = 'Cidade'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 20
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 398
      Top = 306
      Width = 75
      Height = 25
      Caption = '&Localizar'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF6B6B6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF7B7B7B9C9C9C393939FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        6BC6FF4A73FF9C9C9C393939FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6BC6FF4A73FF9C9C9C393939FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF6BC6FF4A73FF9C9C9CFF00FF8484847B7B7B6B6B6BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6BC6FF84848484
        8484F7CEA5FFFFD6FFE7D68484844A4A4AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFA5A5A5FFE7B5FFF7D6FFFFD6FFFFD6FFFFFF9494
        946B6B6BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF7CEA5FF
        E7B5FFFFD6FFFFD6FFFFFFFFFFFFFFFFD64A4A4AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFFF7D6FFD68CFFF7D6FFFFD6FFFFD6FFFFD6FFFF
        D6525252FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFE7B5FF
        E7B5FFE7B5FFFFD6FFFFD6FFFFD6FFFFD6525252FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFADADADFFFFFFFFF7D6FFE7B5FFE7B5FFF7D6FFAD
        8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD
        ADADFFFFD6FFFFD6FFFFD6FFAD8CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6C6C6C6C6C6C6C6C6FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn2: TBitBtn
      Left = 476
      Top = 306
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 3
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFE7E7E7CECE9CCE9C63CE9C63F7CEA5FFFFFFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFCE9C9C9C63319C63319C
        63319C63319C63319C6331F7CEA5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FFFFFFCE9C639C63319C63319C63319C63319C63319C63319C63319C6331C6C6
        C6FF00FFFF00FFFF00FFFF00FFFF00FFCECE9C9C63319C6331CE9C63E7E7E7FF
        FFFFFFFFFFF7CEA59C63319C63319C6331F7F7F7FF00FFFF00FFFF00FFFFFFFF
        9C63319C63319C6331FFFFFFCE9C9C9C63319C6331CECECEE7E7E79C63319C63
        31CE9C9CFF00FFFF00FFFF00FFFFFFFF9C63319C6331CECE9CCECECE9C63319C
        63319C63319C6331F7F7F79C9C319C63319C9C63FF00FFFF00FFFF00FFF7F7F7
        9C63319C6331D6D6D6CE9C9C9C6331CECE9C9C9C639C6331DEDEDE9C9C639C63
        319C6331FF00FFFF00FFFF00FFFFFFFF9C63319C6331CE9C9CDEDEDE9C6331DE
        DEDE9C9C639C6331FFFFFF9C63319C6331CE9C63FF00FFFF00FFFF00FFFFFFFF
        9C63639C63319C6331F7F7F7F7CEA5DEDEDECE9C63EFEFEFF7CEA59C63319C63
        31CECE9CFF00FFFF00FFFF00FFFF00FFCECECE9C63319C63319C6331CECE9CDE
        DEDECE9C63CE9C9C9C63319C63319C6331FFFFFFFF00FFFF00FFFF00FFFF00FF
        FF00FFCE9C9C9C63319C63319C6331DEDEDECE9C639C63319C63319C6331DEDE
        DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF7CEA59C63319C63319C
        63319C63319C6331CE9C63E7E7E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFFFFFFDEDEDEF7CEA5D6D6D6EFEFEFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object qryPesquisaEndereco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "spr_cep_pesquisa"(:CEP,:LOCALIDADE,:LOGRADOURO)')
    Left = 40
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOCALIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOGRADOURO'
        ParamType = ptUnknown
      end>
    object qryPesquisaEnderecoCODLOC: TIntegerField
      FieldName = 'CODLOC'
      Origin = '"spr_cep_pesquisa"."CODLOC"'
    end
    object qryPesquisaEnderecoLOGRAD: TIBStringField
      FieldName = 'LOGRAD'
      Origin = '"spr_cep_pesquisa"."LOGRAD"'
      Size = 72
    end
    object qryPesquisaEnderecoCOMPL: TIBStringField
      FieldName = 'COMPL'
      Origin = '"spr_cep_pesquisa"."COMPL"'
      Size = 72
    end
    object qryPesquisaEnderecoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"spr_cep_pesquisa"."BAIRRO"'
      Size = 72
    end
    object qryPesquisaEnderecoLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"spr_cep_pesquisa"."LOCAL"'
      Size = 72
    end
    object qryPesquisaEnderecoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"spr_cep_pesquisa"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryPesquisaEnderecoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"spr_cep_pesquisa"."CEP"'
      EditMask = '!99.999-999;0;_'
      FixedChar = True
      Size = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = qryPesquisaEndereco
    Left = 24
    Top = 104
  end
end
