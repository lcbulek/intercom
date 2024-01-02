inherited fr_Reclamacao: Tfr_Reclamacao
  Left = 376
  Top = 470
  HelpType = htKeyword
  HelpKeyword = '083'
  Caption = 'Relat'#243'rio Reclama'#231#245'es de Produtos'
  ClientHeight = 91
  ClientWidth = 636
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited ToolBar1: TToolBar
    Top = 58
    Width = 636
  end
  inherited pnlRelatorio: TPanel
    Width = 636
    Height = 58
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 632
      Height = 54
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Label3: TLabel
        Left = 4
        Top = 2
        Width = 105
        Height = 14
        Caption = 'Produto Cliente'
      end
      object SpeedButton1: TSpeedButton
        Left = 117
        Top = 16
        Width = 42
        Height = 22
        Action = actPesquisar
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007B7B7B009C9C9C0039393900FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF006BC6FF004A73FF009C9C9C0039393900FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF006BC6FF004A73FF009C9C9C0039393900FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF006BC6FF004A73FF009C9C9C00FF00FF00848484007B7B
          7B006B6B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF006BC6FF008484840084848400F7CEA500FFFF
          D600FFE7D600848484004A4A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00A5A5A500FFE7B500FFF7D600FFFF
          D600FFFFD600FFFFFF00949494006B6B6B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00F7CEA500FFE7B500FFFFD600FFFF
          D600FFFFFF00FFFFFF00FFFFD6004A4A4A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FFF7D600FFD68C00FFF7D600FFFF
          D600FFFFD600FFFFD600FFFFD60052525200FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FFE7B500FFE7B500FFE7B500FFFF
          D600FFFFD600FFFFD600FFFFD60052525200FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00FFFFFF00FFF7D600FFE7
          B500FFE7B500FFF7D600FFAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADADAD00FFFFD600FFFF
          D600FFFFD600FFAD8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C6C6C600C6C6
          C600C6C6C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object Label2: TLabel
        Left = 161
        Top = 2
        Width = 63
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object edCodProdCli: TEdit
        Left = 4
        Top = 16
        Width = 110
        Height = 22
        TabOrder = 0
        OnExit = edCodProdCliExit
      end
      object DBEdit2: TDBEdit
        Left = 159
        Top = 16
        Width = 463
        Height = 22
        Color = clInfoBk
        DataField = 'den_produto'
        DataSource = ds_Produtos
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  inherited ActionList1: TActionList
    object actPesquisar: TAction
      Caption = 'F3'
      ImageIndex = 49
      OnExecute = actPesquisarExecute
    end
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select p."cod_produto", p."den_produto", p."ies_situacao",  '
      '       p."cod_uni_medida", p."pes_unitario"                 '
      'from "produto" p, "produto_cliente" b                       '
      'where p."cod_empresa" = :cod_empresa                        '
      '  and b."cod_prod_cli" = :cod_prod_cli                      '
      '  and b."cod_empresa" = p."cod_empresa"                     '
      '  and b."cod_produto" = p."cod_produto"                     '
      'order by p."den_produto"                                    ')
    Left = 212
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_prod_cli'
        ParamType = ptUnknown
      end>
    object Produtoscod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object Produtosden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
    object Produtosies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"produto"."ies_situacao"'
      Size = 1
    end
    object Produtoscod_uni_medida: TSmallintField
      FieldName = 'cod_uni_medida'
      Origin = '"produto"."cod_uni_medida"'
      Required = True
    end
    object Produtospes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
  end
  object ds_Produtos: TDataSource
    DataSet = Produtos
    Left = 252
    Top = 57
  end
end
