inherited fr_CadMarcaCorEmb: Tfr_CadMarcaCorEmb
  Left = 172
  Top = 248
  HelpType = htKeyword
  HelpKeyword = '078'
  Caption = 'Marca, Cor e Embalagem'
  ClientHeight = 531
  ClientWidth = 924
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label5: TLabel [0]
    Left = 360
    Top = 56
    Width = 140
    Height = 14
    Caption = 'Embalagem Individual'
  end
  inherited Panel1: TPanel
    Width = 924
    Height = 495
    object Label4: TLabel [0]
      Left = 8
      Top = 49
      Width = 140
      Height = 14
      Caption = 'Apar'#234'ncia do Produto'
      FocusControl = DBMemo1
    end
    object Label6: TLabel [1]
      Left = 464
      Top = 49
      Width = 140
      Height = 14
      Caption = 'Embalagem Individual'
      FocusControl = DBMemo2
    end
    object Label7: TLabel [2]
      Left = 8
      Top = 268
      Width = 105
      Height = 14
      Caption = 'Embalagem Inner'
      FocusControl = DBMemo3
    end
    object Label8: TLabel [3]
      Left = 464
      Top = 268
      Width = 112
      Height = 14
      Caption = 'Embalagem Master'
      FocusControl = DBMemo4
    end
    inherited pnlF1: TPanel
      Left = 867
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 920
      Height = 47
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 49
        Height = 14
        Caption = 'Produto'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 204
        Top = 6
        Width = 63
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object Label3: TLabel
        Left = 89
        Top = 8
        Width = 105
        Height = 14
        Caption = 'Produto Cliente'
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 22
        Width = 80
        Height = 16
        TabStop = False
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'cod_produto'
        DataSource = fr_CadProduto.dsIBDataSet
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 204
        Top = 22
        Width = 350
        Height = 16
        TabStop = False
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'den_produto'
        DataSource = fr_CadProduto.dsIBDataSet
        ReadOnly = True
        TabOrder = 1
      end
      object edCodProdCli: TEdit
        Left = 89
        Top = 22
        Width = 110
        Height = 16
        TabStop = False
        BorderStyle = bsNone
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 765
        Top = 14
        Width = 104
        Height = 25
        Caption = 'Ver Imagens'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F777773FF333333003333300
          33333337733333773F33330333333333033333733FFFFFFF73F3303300000003
          303337F37777777337F3303330CCC0333033373337777733373F0333330C0333
          33037F33337773FFF37F03333330300033037F3FFFF73777FF7F0300000307B7
          03037F77777F77777F7F030999030BBB03037F77777F77777F7F0309990307B7
          03037377777F7777737330099903300030333777777F377737F3300000033333
          3033377777733333373333033333333303333373FF33333F7333333003333300
          3333333773FFFF77333333333000003333333333377777333333}
        NumGlyphs = 2
      end
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 64
      Width = 450
      Height = 203
      DataField = 'txt_aparencia'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object DBMemo2: TDBMemo
      Left = 464
      Top = 64
      Width = 450
      Height = 203
      DataField = 'txt_individual'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object DBMemo3: TDBMemo
      Left = 8
      Top = 283
      Width = 450
      Height = 203
      DataField = 'txt_inner'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object DBMemo4: TDBMemo
      Left = 464
      Top = 283
      Width = 450
      Height = 203
      DataField = 'txt_master'
      DataSource = dsIBDataSet
      ScrollBars = ssVertical
      TabOrder = 5
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 495
    Width = 924
    inherited ToolBar1: TToolBar
      Width = 924
      Height = 32
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
  inherited ActionList1: TActionList
    Left = 648
    Top = 8
  end
  inherited IBDataSet: TIBDataSet
    BeforeInsert = IBDataSetBeforeInsert
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem_visual"'
      'where'
      '  "embalagem_visual"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem_visual"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "embalagem_visual"'
      
        '  ("embalagem_visual"."cod_empresa", "embalagem_visual"."cod_pro' +
        'duto", '
      
        '   "embalagem_visual"."txt_aparencia", "embalagem_visual"."txt_i' +
        'ndividual", '
      
        '   "embalagem_visual"."txt_inner", "embalagem_visual"."txt_maste' +
        'r", "embalagem_visual"."lnk_fotos", '
      '   "embalagem_visual"."dat_cadastro")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"txt_aparencia", :"txt_indiv' +
        'idual", '
      '   :"txt_inner", :"txt_master", :"lnk_fotos", :"dat_cadastro")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem_visual"."cod_empresa",'
      '  "embalagem_visual"."cod_produto",'
      '  "embalagem_visual"."txt_aparencia",'
      '  "embalagem_visual"."txt_individual",'
      '  "embalagem_visual"."txt_inner",'
      '  "embalagem_visual"."txt_master",'
      '  "embalagem_visual"."lnk_fotos",'
      '  "embalagem_visual"."dat_cadastro"'
      'from "embalagem_visual" '
      'where'
      '  "embalagem_visual"."cod_empresa" = :"cod_empresa" and'
      '  "embalagem_visual"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select * from "embalagem_visual"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "embalagem_visual"'
      'set'
      '  "embalagem_visual"."cod_empresa" = :"cod_empresa",'
      '  "embalagem_visual"."cod_produto" = :"cod_produto",'
      '  "embalagem_visual"."txt_aparencia" = :"txt_aparencia",'
      '  "embalagem_visual"."txt_individual" = :"txt_individual",'
      '  "embalagem_visual"."txt_inner" = :"txt_inner",'
      '  "embalagem_visual"."txt_master" = :"txt_master",'
      '  "embalagem_visual"."lnk_fotos" = :"lnk_fotos",'
      '  "embalagem_visual"."dat_cadastro" = :"dat_cadastro"'
      'where'
      '  "embalagem_visual"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem_visual"."cod_produto" = :"OLD_cod_produto"')
    Left = 680
    Top = 8
    object IBDataSetcod_empresa: TIntegerField
      FieldName = 'cod_empresa'
      Origin = '"embalagem_visual"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"embalagem_visual"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object IBDataSettxt_aparencia: TMemoField
      DisplayLabel = 'Apar'#234'ncia do Produto'
      FieldName = 'txt_aparencia'
      Origin = '"embalagem_visual"."txt_aparencia"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSettxt_individual: TMemoField
      DisplayLabel = 'Embalagem Individual'
      FieldName = 'txt_individual'
      Origin = '"embalagem_visual"."txt_individual"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSettxt_inner: TMemoField
      DisplayLabel = 'Embalagem Inner'
      FieldName = 'txt_inner'
      Origin = '"embalagem_visual"."txt_inner"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSettxt_master: TMemoField
      DisplayLabel = 'Embalagem Master'
      FieldName = 'txt_master'
      Origin = '"embalagem_visual"."txt_master"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetlnk_fotos: TIBStringField
      DisplayLabel = 'Link para fotos'
      FieldName = 'lnk_fotos'
      Origin = '"embalagem_visual"."lnk_fotos"'
      Size = 255
    end
    object IBDataSetdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem_visual"."dat_cadastro"'
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 692
    Top = 13
  end
  inherited QrAux: TIBQuery
    Left = 727
    Top = 8
  end
end
