object dmNF_liquidar: TdmNF_liquidar
  OldCreateOrder = False
  Left = 468
  Top = 316
  Height = 270
  Width = 505
  object sqlLiquidar_NF: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'update "nota_fiscal_saida"'
      'set "ies_situacao" = '#39'F'#39','
      '    "dat_emissao" = case when "dat_emissao" is null'
      '                         then current_timestamp'
      '                         else "dat_emissao"'
      '                    end'
      'where'
      '    "cod_empresa"     = :cod_empresa'
      'and "num_nota_fiscal" = :num_nota_fiscal'
      'and "serie"           = :serie')
    Transaction = dmConnection.TransSig
    Left = 72
    Top = 12
  end
  object sqlInsert_Doc: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'INSERT INTO "documento_receber" ('
      '    "cod_empresa",'
      '    "num_documento",'
      '    "num_parcela",'
      '    "cod_cliente",'
      '    "cod_categoria",'
      '    "cod_sub_categoria",'
      '    "cod_tip_documento",'
      '    "cod_contacc",'
      '    "cod_tip_pagamento",'
      '    "num_nota_fiscal",'
      '    "serie",'
      '    "ies_situacao",'
      '    "dat_emissao",'
      '    "dat_vencimento",'
      '    "dat_pagamento",'
      '    "dat_movimento",'
      '    "dat_cadastro",'
      '    "vlr_bruto",'
      '    "vlr_desconto",'
      '    "vlr_juro",'
      '    "txt_observacao")'
      '  VALUES ('
      '    :"cod_empresa",'
      '    :"num_documento",'
      '    :"num_parcela",'
      '    :"cod_cliente",'
      '    :"cod_categoria",'
      '    :"cod_sub_categoria",'
      '    :"cod_tip_documento",'
      '    :"cod_contacc",'
      '    :"cod_tip_pagamento",'
      '    :"num_nota_fiscal",'
      '    :"serie",'
      '    :"ies_situacao",'
      '    :"dat_emissao",'
      '    :"dat_vencimento",'
      '    NULL,'
      '    NULL,'
      '    :"dat_cadastro",'
      '    :"vlr_bruto",'
      '    :"vlr_desconto",'
      '    :"vlr_juro",'
      '    :"txt_observacao");')
    Transaction = dmConnection.TransSig
    Left = 72
    Top = 60
  end
  object sqlUpdate_Estoque: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      
        'update "estoque" a set "qtd_estoque" = "qtd_estoque"   - :qtd_es' +
        'toque,'
      
        '                     "qtd_reservada" = "qtd_reservada" - :qtd_re' +
        'servada,'
      '                     a."dat_ult_saida" = current_timestamp'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'and "cod_produto" = :cod_produto')
    Transaction = dmConnection.TransSig
    Left = 72
    Top = 114
  end
  object sqlInsert_Estoque_Movimento: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'insert into "estoque_movimento"'
      '  ("cod_empresa", "cod_operacao", "cod_produto",'
      '   "cst_movimento", "dat_movimento",'
      '   "ies_tip_movto", "login", "nom_tela",'
      '   "num_documento", "num_movimento", "qtd_movimento",'
      '   "dat_cadastro")'
      'values'
      '  (:"cod_empresa", :"cod_operacao", :"cod_produto",'
      '   :"cst_movimento", current_timestamp,'
      '   :"ies_tip_movto", :"login", :"nom_tela",'
      '   :"num_documento", :"num_movimento", :"qtd_movimento",'
      '   current_timestamp)')
    Transaction = dmConnection.TransSig
    Left = 72
    Top = 163
  end
  object qryParametro_Documento_Receber: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_empresa", "cod_categoria", "cod_sub_categoria",'
      '       "cod_tip_documento", "cod_tip_pagamento", "cod_contacc",'
      '       "pct_juro", "pct_juro_dia", "vlr_multa",'
      '       "vlr_multa_dia", "qtd_dia_protesto"'
      'from "parametro_documento_receber"'
      'where'
      '    "cod_empresa" = :cod_empresa')
    Left = 228
    Top = 12
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end>
    object qryParametro_Documento_Recebercod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"parametro_documento_receber"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryParametro_Documento_Recebercod_categoria: TSmallintField
      FieldName = 'cod_categoria'
      Origin = '"parametro_documento_receber"."cod_categoria"'
      Required = True
    end
    object qryParametro_Documento_Recebercod_sub_categoria: TSmallintField
      FieldName = 'cod_sub_categoria'
      Origin = '"parametro_documento_receber"."cod_sub_categoria"'
      Required = True
    end
    object qryParametro_Documento_Recebercod_tip_documento: TSmallintField
      FieldName = 'cod_tip_documento'
      Origin = '"parametro_documento_receber"."cod_tip_documento"'
      Required = True
    end
    object qryParametro_Documento_Recebercod_tip_pagamento: TSmallintField
      FieldName = 'cod_tip_pagamento'
      Origin = '"parametro_documento_receber"."cod_tip_pagamento"'
      Required = True
    end
    object qryParametro_Documento_Recebercod_contacc: TIBStringField
      FieldName = 'cod_contacc'
      Origin = '"parametro_documento_receber"."cod_contacc"'
      Required = True
    end
    object qryParametro_Documento_Receberpct_juro: TIBBCDField
      FieldName = 'pct_juro'
      Origin = '"parametro_documento_receber"."pct_juro"'
      Precision = 9
      Size = 2
    end
    object qryParametro_Documento_Receberpct_juro_dia: TIBBCDField
      FieldName = 'pct_juro_dia'
      Origin = '"parametro_documento_receber"."pct_juro_dia"'
      Precision = 9
      Size = 2
    end
    object qryParametro_Documento_Recebervlr_multa: TIBBCDField
      FieldName = 'vlr_multa'
      Origin = '"parametro_documento_receber"."vlr_multa"'
      Precision = 18
      Size = 3
    end
    object qryParametro_Documento_Recebervlr_multa_dia: TIBBCDField
      FieldName = 'vlr_multa_dia'
      Origin = '"parametro_documento_receber"."vlr_multa_dia"'
      Precision = 18
      Size = 3
    end
    object qryParametro_Documento_Receberqtd_dia_protesto: TSmallintField
      FieldName = 'qtd_dia_protesto'
      Origin = '"parametro_documento_receber"."qtd_dia_protesto"'
    end
  end
  object qryPagamento_Parcela: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select *'
      'from "pagamento_parcela"'
      'where'
      '    "cod_pagamento" = :cod_pagamento'
      '    ')
    Left = 232
    Top = 64
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_pagamento'
        ParamType = ptInput
      end>
    object qryPagamento_Parcelacod_pagamento: TSmallintField
      FieldName = 'cod_pagamento'
      Origin = '"pagamento_parcela"."cod_pagamento"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPagamento_Parcelanum_parcela: TSmallintField
      FieldName = 'num_parcela'
      Origin = '"pagamento_parcela"."num_parcela"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPagamento_Parcelapct_parcela: TIBBCDField
      FieldName = 'pct_parcela'
      Origin = '"pagamento_parcela"."pct_parcela"'
      Precision = 9
      Size = 2
    end
    object qryPagamento_Parcelapct_desconto: TIBBCDField
      FieldName = 'pct_desconto'
      Origin = '"pagamento_parcela"."pct_desconto"'
      Precision = 9
      Size = 2
    end
    object qryPagamento_Parcelapct_juro: TIBBCDField
      FieldName = 'pct_juro'
      Origin = '"pagamento_parcela"."pct_juro"'
      Precision = 9
      Size = 2
    end
    object qryPagamento_Parcelaqtd_prazo: TSmallintField
      FieldName = 'qtd_prazo'
      Origin = '"pagamento_parcela"."qtd_prazo"'
    end
  end
  object qryRomaneio_Produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select'
      '   "cod_empresa",'
      '   "num_romaneio",'
      '   "num_sequencia",'
      '   "cod_produto",'
      '   "ies_situacao",'
      '   "dat_entrega",'
      '   "qtd_romaneada",'
      '   "num_nota_fiscal",'
      '   "num_sequencia_nf",'
      '   "dat_cadastro"'
      'from "romaneio_produto" a'
      'where'
      '    "cod_empresa"      = :cod_empresa'
      'and "num_nota_fiscal"  = :num_nota_fiscal'
      'and "num_sequencia_nf" = :num_sequencia_nf'
      'and "serie"            = :serie')
    Left = 229
    Top = 120
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'num_nota_fiscal'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'num_sequencia_nf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = ''
      end>
    object qryRomaneio_Produtocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"romaneio_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRomaneio_Produtonum_romaneio: TIntegerField
      FieldName = 'num_romaneio'
      Origin = '"romaneio_produto"."num_romaneio"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRomaneio_Produtonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"romaneio_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRomaneio_Produtocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"romaneio_produto"."cod_produto"'
      Required = True
      Size = 7
    end
    object qryRomaneio_Produtoies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"romaneio_produto"."ies_situacao"'
      Size = 1
    end
    object qryRomaneio_Produtodat_entrega: TDateField
      FieldName = 'dat_entrega'
      Origin = '"romaneio_produto"."dat_entrega"'
    end
    object qryRomaneio_Produtoqtd_romaneada: TIBBCDField
      FieldName = 'qtd_romaneada'
      Origin = '"romaneio_produto"."qtd_romaneada"'
      Precision = 18
      Size = 3
    end
    object qryRomaneio_Produtonum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"romaneio_produto"."num_nota_fiscal"'
    end
    object qryRomaneio_Produtonum_sequencia_nf: TSmallintField
      FieldName = 'num_sequencia_nf'
      Origin = '"romaneio_produto"."num_sequencia_nf"'
    end
    object qryRomaneio_Produtodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"romaneio_produto"."dat_cadastro"'
    end
  end
  object qryRomaneio_Kit: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select'
      '   "cod_empresa",'
      '   "num_romaneio",'
      '   "num_sequencia",'
      '   "cod_produto",'
      '   "cod_produto_componente",'
      '   "ies_situacao",'
      '   "dat_entrega",'
      '   "qtd_romaneada",'
      '   "num_nota_fiscal",'
      '   "num_sequencia_nf",'
      '   "dat_cadastro"'
      'from "romaneio_kit"'
      'where'
      '    "cod_empresa"      = :cod_empresa'
      'and "num_nota_fiscal"  = :num_nota_fiscal'
      'and "num_sequencia_nf" = :num_sequencia_nf'
      'and "serie" = :serie')
    Left = 230
    Top = 169
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'num_nota_fiscal'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'num_sequencia_nf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = ''
      end>
    object qryRomaneio_Kitcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"romaneio_kit"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRomaneio_Kitnum_romaneio: TIntegerField
      FieldName = 'num_romaneio'
      Origin = '"romaneio_kit"."num_romaneio"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRomaneio_Kitnum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"romaneio_kit"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRomaneio_Kitcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"romaneio_kit"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object qryRomaneio_Kitcod_produto_componente: TIBStringField
      FieldName = 'cod_produto_componente'
      Origin = '"romaneio_kit"."cod_produto_componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object qryRomaneio_Kities_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"romaneio_kit"."ies_situacao"'
      Size = 1
    end
    object qryRomaneio_Kitdat_entrega: TDateField
      FieldName = 'dat_entrega'
      Origin = '"romaneio_kit"."dat_entrega"'
    end
    object qryRomaneio_Kitqtd_romaneada: TIBBCDField
      FieldName = 'qtd_romaneada'
      Origin = '"romaneio_kit"."qtd_romaneada"'
      Precision = 18
      Size = 3
    end
    object qryRomaneio_Kitnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"romaneio_kit"."num_nota_fiscal"'
    end
    object qryRomaneio_Kitnum_sequencia_nf: TSmallintField
      FieldName = 'num_sequencia_nf'
      Origin = '"romaneio_kit"."num_sequencia_nf"'
    end
    object qryRomaneio_Kitdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"romaneio_kit"."dat_cadastro"'
    end
  end
  object qryCliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select'
      '  "cod_categoria",'
      '  "cod_sub_categoria"'
      'from "cliente"'
      'where'
      '    "cod_cliente"= :cod_cliente')
    Left = 376
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object qryClientecod_categoria: TSmallintField
      FieldName = 'cod_categoria'
      Origin = '"cliente"."cod_categoria"'
      Required = True
    end
    object qryClientecod_sub_categoria: TSmallintField
      FieldName = 'cod_sub_categoria'
      Origin = '"cliente"."cod_sub_categoria"'
      Required = True
    end
  end
  object qryPedido_Parcela: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select'
      '  a."cod_empresa",'
      '  a."num_parcela",'
      '  a."dat_vencimento",'
      '  a."vlr_parcela"'
      'from "pedido_parcela" a, "nota_fiscal_saida" b'
      'where'
      '    a."cod_empresa" = :cod_empresa'
      'and b."num_nota_fiscal" = :num_nota_fiscal'
      'and b."serie" = :serie'
      'and b."cod_empresa" = a."cod_empresa"'
      'and b."num_pedido" = a."num_pedido"'
      'order by a."num_parcela"'
      '')
    Left = 376
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'num_nota_fiscal'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = ''
      end>
    object qryPedido_Parcelacod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_parcela"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedido_Parcelanum_parcela: TSmallintField
      FieldName = 'num_parcela'
      Origin = '"pedido_parcela"."num_parcela"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPedido_Parceladat_vencimento: TDateField
      FieldName = 'dat_vencimento'
      Origin = '"pedido_parcela"."dat_vencimento"'
    end
    object qryPedido_Parcelavlr_parcela: TIBBCDField
      FieldName = 'vlr_parcela'
      Origin = '"pedido_parcela"."vlr_parcela"'
      Precision = 18
      Size = 3
    end
  end
  object qryParcela_unica: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select sum(a."vlr_liquido") as "valor"'
      'from "nota_fiscal_saida_produto" a'
      'where a."cod_empresa" = :"cod_empresa"'
      'and a."num_nota_fiscal" = :"num_nota_fiscal"'
      'and a."serie" = :serie'
      
        'and (a."cod_produto" in (select b."cod_produto" from "produto_co' +
        'm" b'
      '  where b."cod_empresa" = a."cod_empresa"'
      '  and b."cod_produto" = a."cod_produto"'
      '  and b."ies_faturar" = '#39'N'#39
      '  and b."ies_romanear" = '#39'N'#39')'
      
        '  or a."cod_produto" not in (select b."cod_produto" from "produt' +
        'o_com" b'
      '  where b."cod_empresa" = a."cod_empresa")'
      ')')
    Left = 376
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_nota_fiscal'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = ''
      end>
    object qryParcela_unicavalor: TIBBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 2
    end
  end
end
