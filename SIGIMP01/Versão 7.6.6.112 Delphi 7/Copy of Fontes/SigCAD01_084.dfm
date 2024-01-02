inherited rl_Reclamacao: Trl_Reclamacao
  Left = 292
  Top = 227
  Width = 990
  Height = 621
  HelpType = htKeyword
  HelpKeyword = '084'
  Caption = 'rl_Reclamacao'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited qkrPadrao: TQuickRep
    Left = 8
    Width = 952
    Height = 1347
    DataSet = qryRel
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ReportTitle = 'Reclama'#231#245'es de Produtos'
    Zoom = 120
    inherited PageHeaderBand1: TQRBand
      Left = 45
      Top = 45
      Width = 861
      Height = 117
      Size.Values = (
        257.968750000000000000
        1898.385416666667000000)
      inherited QRDBText1: TQRDBText
        Left = 2
        Top = 5
        Width = 94
        Height = 20
        Size.Values = (
          44.097222222222230000
          4.409722222222222000
          11.024305555555560000
          207.256944444444400000)
        FontSize = 8
      end
      inherited QRSysData1: TQRSysData
        Left = 175
        Top = 23
        Width = 512
        Height = 28
        Size.Values = (
          61.736111111111100000
          385.850694444444500000
          50.711805555555560000
          1128.888888888889000000)
        FontSize = 14
      end
      inherited lbUnit: TQRLabel
        Left = 2
        Top = 76
        Width = 37
        Height = 19
        Size.Values = (
          41.892361111111120000
          4.409722222222222000
          167.569444444444400000
          81.579861111111120000)
        FontSize = 7
      end
      inherited qkrImage1: TQRImage
        Left = 796
        Width = 63
        Height = 71
        Size.Values = (
          157.096354166666700000
          1754.518229166667000000
          3.307291666666666000
          138.906250000000000000)
      end
      inherited QRSysData3: TQRSysData
        Left = 656
        Top = 76
        Width = 201
        Height = 19
        Size.Values = (
          41.892361111111110000
          1446.388888888889000000
          167.569444444444500000
          443.177083333333300000)
        AutoSize = False
        FontSize = 7
      end
      object QRLabel1: TQRLabel
        Left = 1
        Top = 97
        Width = 104
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          32.337962962962960000
          1.469907407407407000
          214.606481481481500000
          229.305555555555600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Produto'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel3: TQRLabel
        Left = 108
        Top = 97
        Width = 328
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.807870370370370000
          238.125000000000000000
          214.606481481481500000
          723.194444444444400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Descri'#231#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 437
        Top = 97
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          32.337962962962960000
          964.259259259259300000
          214.606481481481500000
          152.870370370370400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data Ocor.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 509
        Top = 97
        Width = 347
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          32.337962962962960000
          1123.009259259259000000
          214.606481481481500000
          764.351851851851900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Ocorr'#234'ncia'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 95
        Width = 860
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.469907407407407000
          0.000000000000000000
          210.196759259259300000
          1896.180555555556000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrlOrder: TQRLabel
        Left = 176
        Top = 76
        Width = 85
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          388.055555555555500000
          167.569444444444400000
          187.413194444444400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Order Number: '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    inherited DetailBand1: TQRBand
      Left = 45
      Top = 181
      Width = 861
      Height = 16
      Size.Values = (
        35.277777777777780000
        1898.385416666667000000)
      object QRDBText5: TQRDBText
        Left = 437
        Top = 0
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          964.075520833333500000
          0.000000000000000000
          152.135416666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'dat_ocorrencia'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 510
        Top = 0
        Width = 346
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          1124.479166666667000000
          0.000000000000000000
          762.881944444444400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryRel
        DataField = 'txt_ocorrencia'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    inherited QRGroup1: TQRGroup
      Left = 45
      Top = 162
      Width = 861
      Height = 19
      Size.Values = (
        41.892361111111120000
        1898.385416666667000000)
      Expression = 'qryRel.cod_produto'
      FooterBand = nil
      object QRDBText2: TQRDBText
        Left = 1
        Top = 1
        Width = 104
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          1.653645833333333000
          1.653645833333333000
          229.856770833333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'cod_produto'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 108
        Top = 1
        Width = 328
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          238.125000000000000000
          2.204861111111111000
          723.194444444444500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryRel
        DataField = 'den_produto'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 437
        Top = 0
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          964.075520833333500000
          0.000000000000000000
          152.135416666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRel
        DataField = 'dat_ocorrencia'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 510
        Top = 0
        Width = 346
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          1124.479166666667000000
          0.000000000000000000
          762.881944444444400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = qryRel
        DataField = 'txt_ocorrencia'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    inherited QRBand1: TQRBand
      Left = 45
      Top = 197
      Width = 861
      Height = 4
      Frame.DrawTop = True
      Size.Values = (
        8.819444444444445000
        1898.385416666667000000)
    end
    inherited SummaryBand1: TQRBand
      Left = 45
      Top = 197
      Width = 861
      Height = 0
      Size.Values = (
        0.000000000000000000
        1898.385416666667000000)
    end
  end
  object qryRel: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a.*, b."den_produto", b."cod_cliente"'
      'from "produto_reclamacao" a, "produto" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_produto" = :cod_produto'
      '  and a."ies_situacao" = '#39'A'#39
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."cod_produto" = a."cod_produto"'
      'order by a."cod_produto", a."dat_ocorrencia" desc')
    Left = 264
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_empresa'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end>
    object qryRelcod_empresa: TIntegerField
      FieldName = 'cod_empresa'
      Origin = '"produto_reclamacao"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRelcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"produto_reclamacao"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = qryRelcod_produtoGetText
      Size = 15
    end
    object qryRelsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = '"produto_reclamacao"."sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReldat_ocorrencia: TDateField
      FieldName = 'dat_ocorrencia'
      Origin = '"produto_reclamacao"."dat_ocorrencia"'
      DisplayFormat = 'dd/mm/yy'
    end
    object qryReldat_solucao: TDateField
      FieldName = 'dat_solucao'
      Origin = '"produto_reclamacao"."dat_solucao"'
    end
    object qryRelies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"produto_reclamacao"."ies_situacao"'
      FixedChar = True
      Size = 1
    end
    object qryReltxt_ocorrencia: TMemoField
      FieldName = 'txt_ocorrencia'
      Origin = '"produto_reclamacao"."txt_ocorrencia"'
      BlobType = ftMemo
      Size = 8
    end
    object qryRelden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
    object qryRelcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"produto_cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
end
