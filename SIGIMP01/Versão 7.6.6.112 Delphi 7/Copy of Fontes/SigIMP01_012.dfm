inherited rl_LayoutListaPrecos: Trl_LayoutListaPrecos
  Left = 131
  Top = 240
  Width = 1131
  Height = 641
  HelpType = htKeyword
  HelpKeyword = '011'
  HorzScrollBar.Position = 33
  Caption = 'Relat'#243'rio de Lista de Pre'#231'os'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited qkrPadrao: TQuickRep
    Left = -17
    Top = 16
    Width = 1123
    Height = 794
    DataSet = ListaPreco
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Orientation = poLandscape
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    ReportTitle = 'Lista de Pre'#231'os'
    inherited PageHeaderBand1: TQRBand
      Width = 1047
      Height = 108
      Frame.DrawTop = True
      Size.Values = (
        285.750000000000000000
        2770.187500000000000000)
      inherited QRDBText1: TQRDBText
        Height = 18
        Size.Values = (
          47.625000000000000000
          21.166666666666670000
          21.166666666666670000
          206.375000000000000000)
        FontSize = 8
      end
      inherited QRSysData1: TQRSysData
        Left = 298
        Size.Values = (
          60.854166666666680000
          788.458333333333400000
          87.312500000000000000
          1129.770833333333000000)
        FontSize = 14
      end
      inherited lbUnit: TQRLabel
        Top = 72
        Size.Values = (
          42.333333333333340000
          21.166666666666670000
          190.500000000000000000
          82.020833333333340000)
        FontSize = 7
      end
      inherited qkrImage1: TQRImage
        Left = 941
        Width = 102
        Height = 77
        Size.Values = (
          204.107142857142800000
          2490.863095238095000000
          1.889880952380953000
          270.252976190476200000)
      end
      inherited QRSysData3: TQRSysData
        Left = 1006
        Top = 83
        Size.Values = (
          42.333333333333340000
          2661.708333333333000000
          219.604166666666700000
          95.250000000000000000)
        FontSize = 7
      end
    end
    inherited DetailBand1: TQRBand
      Top = 218
      Width = 1047
      Height = 13
      Size.Values = (
        34.395833333333340000
        2770.187500000000000000)
      object QRDBText8: TQRDBText
        Left = 1
        Top = 1
        Width = 108
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          2.645833333333333000
          2.645833333333333000
          285.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'cod_produto'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 135
        Top = 1
        Width = 300
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          357.187500000000000000
          1.889880952380953000
          793.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'den_produto'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 497
        Top = 1
        Width = 57
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          1315.357142857143000000
          1.889880952380953000
          151.190476190476200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'vlr_unitario'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText12: TQRDBText
        Left = 436
        Top = 1
        Width = 59
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          1154.717261904762000000
          1.889880952380953000
          156.860119047619000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'dat_preco'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 557
        Top = 1
        Width = 487
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          1474.107142857143000000
          1.889880952380953000
          1288.898809523810000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'obs_preco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    inherited QRGroup1: TQRGroup
      Top = 146
      Width = 1047
      Height = 72
      Frame.DrawBottom = True
      Font.Style = [fsBold]
      Size.Values = (
        190.500000000000000000
        2770.187500000000000000)
      Expression = 'ListaPreco.num_lista'
      ReprintOnNewPage = True
      object QRDBText2: TQRDBText
        Left = 1
        Top = 11
        Width = 46
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          1.889880952380953000
          30.238095238095240000
          120.952380952381000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'num_lista'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 64
        Top = 11
        Width = 338
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          168.199404761904800000
          30.238095238095240000
          893.913690476190600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'den_lista'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 966
        Top = 11
        Width = 77
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          2555.119047619048000000
          30.238095238095240000
          204.107142857142800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'dat_cadastro'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 1
        Top = 39
        Width = 309
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          2.645833333333333000
          103.187500000000000000
          817.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'nom_cliente'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 555
        Top = 39
        Width = 296
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1468.437500000000000000
          103.187500000000000000
          783.166666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ListaPreco
        DataField = 'raz_social'
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel1: TQRLabel
        Left = 1
        Top = 0
        Width = 55
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          1.889880952380953000
          0.000000000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Num.Lista'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel2: TQRLabel
        Left = 64
        Top = 0
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          168.199404761904800000
          0.000000000000000000
          160.639880952381000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Descri'#231#227'o'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 966
        Top = 0
        Width = 77
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          2555.119047619048000000
          0.000000000000000000
          204.107142857142800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data cadastro'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 1
        Top = 26
        Width = 45
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          2.645833333333333000
          68.791666666666680000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 555
        Top = 26
        Width = 66
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1468.437500000000000000
          68.791666666666680000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fornecedor'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 1
        Top = 56
        Width = 109
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          2.645833333333333000
          148.166666666666700000
          288.395833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Produto'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel9: TQRLabel
        Left = 135
        Top = 56
        Width = 300
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          357.187500000000000000
          147.410714285714300000
          793.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Descri'#231#227'o'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel10: TQRLabel
        Left = 497
        Top = 56
        Width = 57
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          1315.357142857143000000
          147.410714285714300000
          151.190476190476200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Pre'#231'o'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel11: TQRLabel
        Left = 436
        Top = 56
        Width = 59
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          1154.717261904762000000
          147.410714285714300000
          156.860119047619000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data Pre'#231'o'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 54
        Width = 1047
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.779761904761905000
          0.000000000000000000
          141.741071428571400000
          2770.565476190476000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 25
        Width = 1047
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.779761904761905000
          0.000000000000000000
          66.145833333333340000
          2770.565476190476000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 557
        Top = 56
        Width = 56
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.017857142857150000
          1474.107142857143000000
          147.410714285714300000
          147.410714285714300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Observa'#231#227'o'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    inherited QRBand1: TQRBand
      Top = 231
      Width = 1047
      Height = 25
      Size.Values = (
        66.145833333333340000
        2770.187500000000000000)
    end
    inherited SummaryBand1: TQRBand
      Top = 256
      Width = 1047
      Height = 25
      Size.Values = (
        66.145833333333340000
        2770.187500000000000000)
    end
  end
  object ListaPreco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select l."cod_cliente", l."num_lista", l."dat_cadastro", l."den_' +
        'lista", l."ies_situacao",'
      
        '       a."cod_produto", a."dat_cadastro" "dat_preco", a."vlr_uni' +
        'tario", a."obs_preco",'
      
        '       b."den_produto", b."cod_fornecedor", b."cod_prod_fornec",' +
        ' d."raz_social", e."nom_cliente"'
      
        'from "lista" l, "lista_preco" a, "produto" b,  "fornecedor" d, "' +
        'cliente" e'
      'where a."cod_empresa" = :cod_empresa'
      '  and l."num_lista" = :num_lista'
      '  and a."num_lista" = l."num_lista"'
      '  and d."cod_fornecedor" = :cod_fornecedor'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."cod_produto" = a."cod_produto"'
      '  and d."cod_fornecedor" = b."cod_fornecedor"'
      '  and e."cod_cliente" = l."cod_cliente"'
      'order by b."den_produto"')
    Left = 491
    Top = 110
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_lista'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object ListaPreconum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"lista"."num_lista"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ListaPrecodat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"lista"."dat_cadastro"'
    end
    object ListaPrecoden_lista: TIBStringField
      FieldName = 'den_lista'
      Origin = '"lista"."den_lista"'
      Required = True
      Size = 75
    end
    object ListaPrecoies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"lista"."ies_situacao"'
      Size = 1
    end
    object ListaPrecocod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"lista_preco"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = ListaPrecocod_produtoGetText
      Size = 15
    end
    object ListaPrecodat_preco: TDateField
      FieldName = 'dat_preco'
      Origin = '"lista_preco"."dat_cadastro"'
      DisplayFormat = 'DD/MM/YY'
    end
    object ListaPrecovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"lista_preco"."vlr_unitario"'
      DisplayFormat = '###,##0.000000'
    end
    object ListaPrecoden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
    object ListaPrecocod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"produto_fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ListaPrecocod_prod_fornec: TIBStringField
      FieldName = 'cod_prod_fornec'
      Origin = '"produto_fornecedor"."cod_prod_fornec"'
      Size = 15
    end
    object ListaPrecoraz_social: TIBStringField
      FieldName = 'raz_social'
      Origin = '"fornecedor"."raz_social"'
      Size = 50
    end
    object ListaPreconom_cliente: TIBStringField
      FieldName = 'nom_cliente'
      Origin = '"cliente"."nom_cliente"'
      Size = 50
    end
    object ListaPrecocod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"lista"."cod_cliente"'
      Size = 12
    end
    object ListaPrecoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"lista_preco"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
  end
end
