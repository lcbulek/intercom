inherited rl_SituacaoEmb: Trl_SituacaoEmb
  Left = 307
  Top = 257
  Width = 1035
  Height = 620
  HelpType = htKeyword
  HelpKeyword = '085'
  Caption = 'rl_SituacaoEmb'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Visual: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      '/* Visual e Situa'#231#227'o das Embalagens */'
      
        'select p."cod_produto",  p."den_produto", a."cod_gru_embalagem",' +
        ' a."den_gru_embalagem", p."cod_cliente",'
      
        '       b."txt_observacao", e."cod_componente", e."den_componente' +
        '", d."dat_cadastro", d."ies_situacao", d."txt_observacao" "txt_o' +
        'bs_componente"'
      
        'from  "produto" p, "embalagem_grupo" a, "embalagem_visual" b, "e' +
        'mbalagem_situacao" d, "embalagem_componente" e'
      'where'
      '      p."cod_empresa" = :cod_empresa'
      '  and p."cod_produto" = :cod_produto'
      '  and b."cod_empresa" = p."cod_empresa"'
      '  and b."cod_produto" = p."cod_produto"'
      '  and a."cod_gru_embalagem" = b."cod_gru_embalagem"'
      '  and d."cod_empresa" = p."cod_empresa"'
      '  and d."cod_produto" = p."cod_produto"'
      '  and d."cod_gru_embalagem" = a."cod_gru_embalagem"'
      '  and e."cod_componente" = d."cod_componente"'
      
        'order by p."cod_produto", a."den_gru_embalagem", e."den_componen' +
        'te"'
      '')
    Left = 280
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end>
    object Visualcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = Visualcod_produtoGetText
      Size = 15
    end
    object Visualden_produto: TIBStringField
      FieldName = 'den_produto'
      Origin = '"produto"."den_produto"'
      Required = True
      Size = 75
    end
    object Visualcod_gru_embalagem: TIntegerField
      FieldName = 'cod_gru_embalagem'
      Origin = '"embalagem_grupo"."cod_gru_embalagem"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Visualden_gru_embalagem: TIBStringField
      FieldName = 'den_gru_embalagem'
      Origin = '"embalagem_grupo"."den_gru_embalagem"'
      Size = 75
    end
    object Visualtxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"embalagem_visual"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object Visualcod_componente: TIntegerField
      FieldName = 'cod_componente'
      Origin = '"embalagem_componente"."cod_componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Visualden_componente: TIBStringField
      FieldName = 'den_componente'
      Origin = '"embalagem_componente"."den_componente"'
      Size = 100
    end
    object Visualdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem_situacao"."dat_cadastro"'
    end
    object Visualies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"embalagem_situacao"."ies_situacao"'
      OnGetText = Visualies_situacaoGetText
      FixedChar = True
      Size = 1
    end
    object Visualtxt_obs_componente: TMemoField
      FieldName = 'txt_obs_componente'
      Origin = '"embalagem_situacao"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object Visualcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"produto"."cod_cliente"'
      Size = 12
    end
  end
end
