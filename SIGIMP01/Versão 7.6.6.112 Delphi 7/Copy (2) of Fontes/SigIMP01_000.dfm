object dmPedido: TdmPedido
  OldCreateOrder = False
  Left = 466
  Top = 234
  Height = 359
  Width = 575
  object pedido: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select'
      '  "cod_empresa",'
      '  "num_pedido",'
      '  "cod_cliente",'
      '  "cod_vendedor",'
      '  "cod_pagamento",'
      '  "cod_tip_pagamento",'
      '  "num_lista",'
      '  "cod_nat_operacao",'
      '  "cod_transportadora",'
      '  "cod_moeda",'
      '  "cod_grupo_transporte",'
      '  "ies_situacao",'
      '  "ies_tip_pedido",'
      '  "ies_tip_frete",'
      '  "ies_tip_entrega",'
      '  "dat_liberacao",'
      '  "dat_faturamento",'
      '  "dat_emissao",'
      '  "dat_entrega",'
      '  "dat_cadastro",'
      '  "texto",'
      '  "txt_observacao",'
      '  "login",'
      '  "vlr_frete",'
      '  "vlr_desconto",'
      '  "vlr_desconto_adic",'
      '  "vlr_ipi",'
      '  "vlr_bruto",'
      '  "vlr_liquido"'
      'from "pedido"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'and "num_pedido"  = :num_pedido')
    Left = 40
    Top = 18
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'num_pedido'
        ParamType = ptInput
      end>
    object pedidocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedidonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pedidocod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Required = True
      Size = 12
    end
    object pedidocod_vendedor: TSmallintField
      FieldName = 'cod_vendedor'
      Origin = '"pedido"."cod_vendedor"'
      Required = True
    end
    object pedidocod_pagamento: TSmallintField
      FieldName = 'cod_pagamento'
      Origin = '"pedido"."cod_pagamento"'
      Required = True
    end
    object pedidocod_tip_pagamento: TSmallintField
      FieldName = 'cod_tip_pagamento'
      Origin = '"pedido"."cod_tip_pagamento"'
      Required = True
    end
    object pedidonum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"pedido"."num_lista"'
      Required = True
    end
    object pedidocod_nat_operacao: TIntegerField
      FieldName = 'cod_nat_operacao'
      Origin = '"pedido"."cod_nat_operacao"'
      Required = True
    end
    object pedidocod_transportadora: TSmallintField
      FieldName = 'cod_transportadora'
      Origin = '"pedido"."cod_transportadora"'
    end
    object pedidocod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"pedido"."cod_moeda"'
      Required = True
    end
    object pedidocod_grupo_transporte: TIBStringField
      FieldName = 'cod_grupo_transporte'
      Origin = '"pedido"."cod_grupo_transporte"'
      Required = True
      Size = 3
    end
    object pedidoies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"pedido"."ies_situacao"'
      Size = 1
    end
    object pedidoies_tip_pedido: TIBStringField
      FieldName = 'ies_tip_pedido'
      Origin = '"pedido"."ies_tip_pedido"'
      Size = 1
    end
    object pedidoies_tip_frete: TSmallintField
      FieldName = 'ies_tip_frete'
      Origin = '"pedido"."ies_tip_frete"'
    end
    object pedidoies_tip_entrega: TIBStringField
      FieldName = 'ies_tip_entrega'
      Origin = '"pedido"."ies_tip_entrega"'
      Size = 2
    end
    object pedidodat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
    end
    object pedidodat_faturamento: TDateField
      FieldName = 'dat_faturamento'
      Origin = '"pedido"."dat_faturamento"'
    end
    object pedidodat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"pedido"."dat_emissao"'
    end
    object pedidodat_entrega: TDateField
      FieldName = 'dat_entrega'
      Origin = '"pedido"."dat_entrega"'
    end
    object pedidodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"pedido"."dat_cadastro"'
    end
    object pedidotexto: TIBStringField
      FieldName = 'texto'
      Origin = '"pedido"."texto"'
      Size = 255
    end
    object pedidotxt_observacao: TIBStringField
      FieldName = 'txt_observacao'
      Origin = '"pedido"."txt_observacao"'
      Size = 255
    end
    object pedidologin: TIBStringField
      FieldName = 'login'
      Origin = '"pedido"."login"'
      Size = 18
    end
    object pedidovlr_frete: TIBBCDField
      FieldName = 'vlr_frete'
      Origin = '"pedido"."vlr_frete"'
      Precision = 18
      Size = 2
    end
    object pedidovlr_desconto: TIBBCDField
      FieldName = 'vlr_desconto'
      Origin = '"pedido"."vlr_desconto"'
      Precision = 18
      Size = 2
    end
    object pedidovlr_desconto_adic: TIBBCDField
      FieldName = 'vlr_desconto_adic'
      Origin = '"pedido"."vlr_desconto_adic"'
      Precision = 18
      Size = 2
    end
    object pedidovlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"pedido"."vlr_bruto"'
      Precision = 18
      Size = 2
    end
    object pedidovlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
  end
  object pedido_produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select'
      '  a."cod_empresa",'
      '  a."num_pedido",'
      '  a."num_sequencia",'
      '  a."cod_produto",'
      '  a."qtd_produto",'
      '  a."qtd_cancelada",'
      '  a."qtd_romaneada",'
      '  a."qtd_faturada",'
      '  a."qtd_pendente",'
      '  a."pct_desconto",'
      '  a."vlr_unitario",'
      '  a."vlr_bruto",'
      '  a."vlr_desconto",'
      '  a."vlr_desconto_adic",'
      '  a."vlr_liquido",'
      '  a."dat_entrega",'
      '  a."dat_cadastro",'
      '  a."texto",'
      '  a."txt_observacao"'
      'from "pedido_produto" a'
      'where'
      '    a."cod_empresa" = :cod_empresa'
      'and a."num_pedido"  = :num_pedido')
    Left = 48
    Top = 72
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'num_pedido'
        ParamType = ptInput
      end>
    object pedido_produtocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object pedido_produtonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido_produto"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pedido_produtonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"pedido_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object pedido_produtocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"pedido_produto"."cod_produto"'
      Required = True
      Size = 15
    end
    object pedido_produtoqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"pedido_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_cancelada: TIBBCDField
      FieldName = 'qtd_cancelada'
      Origin = '"pedido_produto"."qtd_cancelada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_romaneada: TIBBCDField
      FieldName = 'qtd_romaneada'
      Origin = '"pedido_produto"."qtd_romaneada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_faturada: TIBBCDField
      FieldName = 'qtd_faturada'
      Origin = '"pedido_produto"."qtd_faturada"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"pedido_produto"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object pedido_produtopct_desconto: TIBBCDField
      FieldName = 'pct_desconto'
      Origin = '"pedido_produto"."pct_desconto"'
      Precision = 9
      Size = 2
    end
    object pedido_produtovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
    end
    object pedido_produtovlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"pedido_produto"."vlr_bruto"'
      Precision = 18
      Size = 2
    end
    object pedido_produtovlr_desconto: TIBBCDField
      FieldName = 'vlr_desconto'
      Origin = '"pedido_produto"."vlr_desconto"'
      Precision = 18
      Size = 2
    end
    object pedido_produtovlr_desconto_adic: TIBBCDField
      FieldName = 'vlr_desconto_adic'
      Origin = '"pedido_produto"."vlr_desconto_adic"'
      Precision = 18
      Size = 2
    end
    object pedido_produtovlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object pedido_produtodat_entrega: TDateField
      FieldName = 'dat_entrega'
      Origin = '"pedido_produto"."dat_entrega"'
    end
    object pedido_produtodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"pedido_produto"."dat_cadastro"'
    end
    object pedido_produtotexto: TIBStringField
      FieldName = 'texto'
      Origin = '"pedido_produto"."texto"'
      Size = 255
    end
    object pedido_produtotxt_observacao: TIBStringField
      FieldName = 'txt_observacao'
      Origin = '"pedido_produto"."txt_observacao"'
      Size = 255
    end
  end
  object unidade_federacao: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select first 1 c."cod_unidade_federativa"'
      'from "cliente_endereco" a'
      '     join "cidade" c on c."cod_cidade" = a."cod_cidade"'
      'where'
      '    a."cod_cliente" = :cod_cliente')
    Left = 142
    Top = 18
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object unidade_federacaocod_unidade_federativa: TSmallintField
      FieldName = 'cod_unidade_federativa'
      Origin = '"cidade"."cod_unidade_federativa"'
      Required = True
    end
  end
  object sqlUpdate_Pedido: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'update "pedido" set "ies_situacao" = '#39'N'#39
      'where'
      '    "cod_empresa"   = :cod_empresa'
      'and "num_pedido"    = :num_pedido')
    Transaction = dmConnection.TransSig
    Left = 230
    Top = 134
  end
  object parametro_estoque: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select'
      '  "cod_empresa",'
      '  "ies_negativo",'
      '  "dat_ult_inventario",'
      '  "dat_ult_fechamento"'
      'from "parametro_estoque" a'
      'where'
      '    a."cod_empresa" = :cod_empresa')
    Left = 144
    Top = 74
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end>
    object parametro_estoquecod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"parametro_estoque"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object parametro_estoqueies_negativo: TIBStringField
      FieldName = 'ies_negativo'
      Origin = '"parametro_estoque"."ies_negativo"'
      Size = 1
    end
    object parametro_estoquedat_ult_inventario: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'dat_ult_inventario'
      Origin = '"parametro_estoque"."dat_ult_inventario"'
      ProviderFlags = []
      ReadOnly = True
    end
    object parametro_estoquedat_ult_fechamento: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'dat_ult_fechamento'
      Origin = '"parametro_estoque"."dat_ult_fechamento"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "parametro_comercial"'
      'where'
      '    "cod_empresa" = :cod_empresa')
    Left = 148
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object parametro_comercialcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"parametro_comercial"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object parametro_comercialcod_vendedor: TSmallintField
      FieldName = 'cod_vendedor'
      Origin = '"parametro_comercial"."cod_vendedor"'
      Required = True
    end
    object parametro_comercialcod_transportadora: TSmallintField
      FieldName = 'cod_transportadora'
      Origin = '"parametro_comercial"."cod_transportadora"'
      Required = True
    end
    object parametro_comercialcod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"parametro_comercial"."cod_moeda"'
      Required = True
    end
    object parametro_comercialcod_pagamento: TSmallintField
      FieldName = 'cod_pagamento'
      Origin = '"parametro_comercial"."cod_pagamento"'
      Required = True
    end
    object parametro_comercialnum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"parametro_comercial"."num_lista"'
      Required = True
    end
    object parametro_comercialcod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Origin = '"parametro_comercial"."cod_tip_produto"'
      Required = True
    end
    object parametro_comercialcod_tip_pagamento: TSmallintField
      FieldName = 'cod_tip_pagamento'
      Origin = '"parametro_comercial"."cod_tip_pagamento"'
      Required = True
    end
    object parametro_comercialcod_tip_nota_fiscal: TIBStringField
      FieldName = 'cod_tip_nota_fiscal'
      Origin = '"parametro_comercial"."cod_tip_nota_fiscal"'
      Required = True
      Size = 3
    end
    object parametro_comercialcod_tip_nota_fiscal_devolucao: TIBStringField
      FieldName = 'cod_tip_nota_fiscal_devolucao'
      Origin = '"parametro_comercial"."cod_tip_nota_fiscal_devolucao"'
      Required = True
      Size = 3
    end
    object parametro_comercialcod_nat_operacao: TIntegerField
      FieldName = 'cod_nat_operacao'
      Origin = '"parametro_comercial"."cod_nat_operacao"'
      Required = True
    end
    object parametro_comercialcod_nat_operacao_devolucao: TIntegerField
      FieldName = 'cod_nat_operacao_devolucao'
      Origin = '"parametro_comercial"."cod_nat_operacao_devolucao"'
      Required = True
    end
    object parametro_comercialnum_produto_pedido: TSmallintField
      FieldName = 'num_produto_pedido'
      Origin = '"parametro_comercial"."num_produto_pedido"'
    end
    object parametro_comercialnum_produto_nota_fiscal: TSmallintField
      FieldName = 'num_produto_nota_fiscal'
      Origin = '"parametro_comercial"."num_produto_nota_fiscal"'
    end
    object parametro_comercialies_preview: TIBStringField
      FieldName = 'ies_preview'
      Origin = '"parametro_comercial"."ies_preview"'
      Size = 1
    end
    object parametro_comercialies_col_ipi: TIBStringField
      FieldName = 'ies_col_ipi'
      Origin = '"parametro_comercial"."ies_col_ipi"'
      Size = 1
    end
    object parametro_comercialies_clc_frete: TIBStringField
      FieldName = 'ies_clc_frete'
      Origin = '"parametro_comercial"."ies_clc_frete"'
      Size = 1
    end
    object parametro_comercialies_dat_emissao: TIBStringField
      FieldName = 'ies_dat_emissao'
      Origin = '"parametro_comercial"."ies_dat_emissao"'
      Size = 1
    end
    object parametro_comercialies_dat_saida: TIBStringField
      FieldName = 'ies_dat_saida'
      Origin = '"parametro_comercial"."ies_dat_saida"'
      Size = 1
    end
    object parametro_comercialies_dat_liberacao: TIBStringField
      FieldName = 'ies_dat_liberacao'
      Origin = '"parametro_comercial"."ies_dat_liberacao"'
      Size = 1
    end
    object parametro_comercialnum_nota_fiscal_inicio: TIntegerField
      FieldName = 'num_nota_fiscal_inicio'
      Origin = '"parametro_comercial"."num_nota_fiscal_inicio"'
      Required = True
    end
    object parametro_comercialnum_nota_fiscal_termino: TIntegerField
      FieldName = 'num_nota_fiscal_termino'
      Origin = '"parametro_comercial"."num_nota_fiscal_termino"'
      Required = True
    end
    object parametro_comercialies_nf_pq: TIBStringField
      FieldName = 'ies_nf_pq'
      Origin = '"parametro_comercial"."ies_nf_pq"'
      Size = 1
    end
    object parametro_comercialserie_nf: TIBStringField
      FieldName = 'serie_nf'
      Origin = '"parametro_comercial"."serie_nf"'
      Size = 4
    end
    object parametro_comercialdias_atualiza: TSmallintField
      FieldName = 'dias_atualiza'
      Origin = '"parametro_comercial"."dias_atualiza"'
    end
    object parametro_comercialano_pedido: TIntegerField
      FieldName = 'ano_pedido'
      Origin = '"parametro_comercial"."ano_pedido"'
    end
    object parametro_comercialprox_num_pedido: TIntegerField
      FieldName = 'prox_num_pedido'
      Origin = '"parametro_comercial"."prox_num_pedido"'
    end
    object parametro_comercialdias_entrega: TSmallintField
      FieldName = 'dias_entrega'
      Origin = '"parametro_comercial"."dias_entrega"'
    end
    object parametro_comercialvlr_min_irrf: TIBBCDField
      FieldName = 'vlr_min_irrf'
      Origin = '"parametro_comercial"."vlr_min_irrf"'
      Precision = 18
      Size = 2
    end
  end
  object empresa_uf: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select c."cod_unidade_federativa" "uf"'
      'from "empresa" e, "cidade" c'
      'where c."cod_cidade" = e."cod_cidade"'
      '  and e."cod_empresa" = :cod_empresa')
    Left = 232
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    object empresa_ufuf: TSmallintField
      FieldName = 'uf'
      Origin = '"cidade"."cod_unidade_federativa"'
      Required = True
    end
  end
  object cliente_pessoa: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select c."cnpj"'
      'from "cliente" c'
      'where c."cod_cliente" = :cod_cliente')
    Left = 232
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object cliente_pessoacnpj: TIBStringField
      FieldName = 'cnpj'
      Origin = '"cliente"."cnpj"'
      Size = 18
    end
  end
end
