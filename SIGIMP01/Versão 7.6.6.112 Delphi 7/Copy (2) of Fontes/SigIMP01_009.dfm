object dmNF: TdmNF
  OldCreateOrder = False
  Left = 528
  Top = 249
  Height = 345
  Width = 453
  object nf: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'Select'
      '  a."cod_empresa",'
      '  a."num_nota_fiscal",'
      '  a."serie",'
      '  a."cod_cliente",'
      '  a."cod_pagamento",'
      '  a."cod_nat_operacao",'
      '  a."cod_moeda",'
      '  a."cod_tip_pagamento",'
      '  a."cod_vendedor",'
      '  a."cod_transportadora",'
      '  a."cod_grupo_transporte",'
      '  a."cod_tip_nota_fiscal",'
      '  a."ies_situacao",'
      '  a."ies_tip_frete",'
      '  a."ies_clc_frete",'
      '  a."pct_icms",'
      '  a."pct_desp_financeira",'
      '  a."vlr_frete",'
      '  a."vlr_seguro",'
      '  a."vlr_outros",'
      '  a."dat_liquidacao",'
      '  a."dat_emissao",'
      '  a."dat_cadastro",'
      '  a."texto",'
      '  a."txt_observacao",'
      '  a."cod_cfop",'
      '  a."qtd_produto",'
      '  a."pes_bruto",'
      '  a."pes_liquido",'
      '  a."vlr_ipi",'
      '  a."vlr_icmsr",'
      '  a."base_icmss",'
      '  a."vlr_icmss",'
      '  a."base_icms",'
      '  a."vlr_icms",'
      '  a."vlr_produto",'
      '  a."qtd_servico",'
      '  a."vlr_servico",'
      '  a."vlr_irrf",'
      '  a."vlr_iss",'
      '  a."vlr_bruto",'
      '  a."vlr_liquido",'
      '  c."cod_operacao",'
      '  c."ies_controla_estoque",'
      '  d."ies_gera_documento"'
      'from "nota_fiscal_saida"  a'
      
        '     join "nat_operacao" b on b."cod_nat_operacao" = a."cod_nat_' +
        'operacao"'
      '     join "operacao" c on c."cod_operacao" = b."cod_operacao"'
      
        '     join "tipo_nota_fiscal" d on d."cod_tip_nota_fiscal" = a."c' +
        'od_tip_nota_fiscal"'
      '                              and (d."ies_tip_nota_fiscal" = '#39'E'#39
      
        '                                   or d."ies_tip_nota_fiscal" = ' +
        #39'S'#39')'
      'where'
      '    a."cod_empresa"     = :cod_empresa'
      'and a."num_nota_fiscal" = :num_nota_fiscal'
      'and a."serie"           = :serie')
    Left = 42
    Top = 12
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
        DataType = ftString
        Name = 'serie'
        ParamType = ptInput
        Value = ''
      end>
    object nfcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"nota_fiscal_saida"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfnum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nfserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object nfcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"nota_fiscal_saida"."cod_cliente"'
      Required = True
      Size = 12
    end
    object nfcod_pagamento: TSmallintField
      FieldName = 'cod_pagamento'
      Origin = '"nota_fiscal_saida"."cod_pagamento"'
      Required = True
    end
    object nfcod_nat_operacao: TIntegerField
      FieldName = 'cod_nat_operacao'
      Origin = '"nota_fiscal_saida"."cod_nat_operacao"'
      Required = True
    end
    object nfcod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"nota_fiscal_saida"."cod_moeda"'
      Required = True
    end
    object nfcod_tip_pagamento: TSmallintField
      FieldName = 'cod_tip_pagamento'
      Origin = '"nota_fiscal_saida"."cod_tip_pagamento"'
      Required = True
    end
    object nfcod_vendedor: TSmallintField
      FieldName = 'cod_vendedor'
      Origin = '"nota_fiscal_saida"."cod_vendedor"'
      Required = True
    end
    object nfcod_transportadora: TSmallintField
      FieldName = 'cod_transportadora'
      Origin = '"nota_fiscal_saida"."cod_transportadora"'
    end
    object nfcod_grupo_transporte: TIBStringField
      FieldName = 'cod_grupo_transporte'
      Origin = '"nota_fiscal_saida"."cod_grupo_transporte"'
      Required = True
      Size = 3
    end
    object nfcod_tip_nota_fiscal: TIBStringField
      FieldName = 'cod_tip_nota_fiscal'
      Origin = '"nota_fiscal_saida"."cod_tip_nota_fiscal"'
      Required = True
      Size = 3
    end
    object nfies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"nota_fiscal_saida"."ies_situacao"'
      Size = 1
    end
    object nfies_tip_frete: TSmallintField
      FieldName = 'ies_tip_frete'
      Origin = '"nota_fiscal_saida"."ies_tip_frete"'
    end
    object nfies_clc_frete: TIBStringField
      FieldName = 'ies_clc_frete'
      Origin = '"nota_fiscal_saida"."ies_clc_frete"'
      Size = 1
    end
    object nfpct_icms: TIBBCDField
      FieldName = 'pct_icms'
      Origin = '"nota_fiscal_saida"."pct_icms"'
      Precision = 9
      Size = 2
    end
    object nfpct_desp_financeira: TIBBCDField
      FieldName = 'pct_desp_financeira'
      Origin = '"nota_fiscal_saida"."pct_desp_financeira"'
      Precision = 9
      Size = 2
    end
    object nfvlr_frete: TIBBCDField
      FieldName = 'vlr_frete'
      Origin = '"nota_fiscal_saida"."vlr_frete"'
      Precision = 18
      Size = 2
    end
    object nfvlr_seguro: TIBBCDField
      FieldName = 'vlr_seguro'
      Origin = '"nota_fiscal_saida"."vlr_seguro"'
      Precision = 18
      Size = 2
    end
    object nfvlr_outros: TIBBCDField
      FieldName = 'vlr_outros'
      Origin = '"nota_fiscal_saida"."vlr_outros"'
      Precision = 18
      Size = 2
    end
    object nfdat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"nota_fiscal_saida"."dat_emissao"'
    end
    object nfdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"nota_fiscal_saida"."dat_cadastro"'
    end
    object nftexto: TIBStringField
      FieldName = 'texto'
      Origin = '"nota_fiscal_saida"."texto"'
      Size = 255
    end
    object nftxt_observacao: TIBStringField
      FieldName = 'txt_observacao'
      Origin = '"nota_fiscal_saida"."txt_observacao"'
      Size = 255
    end
    object nfcod_cfop: TSmallintField
      FieldName = 'cod_cfop'
      Origin = '"nota_fiscal_saida"."cod_cfop"'
      Required = True
    end
    object nfqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida"."qtd_produto"'
      Precision = 18
      Size = 2
    end
    object nfpes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"nota_fiscal_saida"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object nfpes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"nota_fiscal_saida"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object nfvlr_ipi: TIBBCDField
      FieldName = 'vlr_ipi'
      Origin = '"nota_fiscal_saida"."vlr_ipi"'
      Precision = 18
      Size = 2
    end
    object nfvlr_icmsr: TIBBCDField
      FieldName = 'vlr_icmsr'
      Origin = '"nota_fiscal_saida"."vlr_icmsr"'
      Precision = 18
      Size = 2
    end
    object nfbase_icmss: TIBBCDField
      FieldName = 'base_icmss'
      Origin = '"nota_fiscal_saida"."base_icmss"'
      Precision = 18
      Size = 2
    end
    object nfvlr_icmss: TIBBCDField
      FieldName = 'vlr_icmss'
      Origin = '"nota_fiscal_saida"."vlr_icmss"'
      Precision = 18
      Size = 2
    end
    object nfbase_icms: TIBBCDField
      FieldName = 'base_icms'
      Origin = '"nota_fiscal_saida"."base_icms"'
      Precision = 18
      Size = 2
    end
    object nfvlr_icms: TIBBCDField
      FieldName = 'vlr_icms'
      Origin = '"nota_fiscal_saida"."vlr_icms"'
      Precision = 18
      Size = 2
    end
    object nfvlr_produto: TIBBCDField
      FieldName = 'vlr_produto'
      Origin = '"nota_fiscal_saida"."vlr_produto"'
      Precision = 18
      Size = 2
    end
    object nfqtd_servico: TIBBCDField
      FieldName = 'qtd_servico'
      Origin = '"nota_fiscal_saida"."qtd_servico"'
      Precision = 18
      Size = 2
    end
    object nfvlr_servico: TIBBCDField
      FieldName = 'vlr_servico'
      Origin = '"nota_fiscal_saida"."vlr_servico"'
      Precision = 18
      Size = 2
    end
    object nfvlr_irrf: TIBBCDField
      FieldName = 'vlr_irrf'
      Origin = '"nota_fiscal_saida"."vlr_irrf"'
      Precision = 18
      Size = 2
    end
    object nfvlr_iss: TIBBCDField
      FieldName = 'vlr_iss'
      Origin = '"nota_fiscal_saida"."vlr_iss"'
      Precision = 18
      Size = 2
    end
    object nfvlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"nota_fiscal_saida"."vlr_bruto"'
      Precision = 18
      Size = 2
    end
    object nfvlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object nfcod_operacao: TSmallintField
      FieldName = 'cod_operacao'
      Origin = '"operacao"."cod_operacao"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nfies_controla_estoque: TIBStringField
      FieldName = 'ies_controla_estoque'
      Origin = '"operacao"."ies_controla_estoque"'
      Size = 1
    end
    object nfies_gera_documento: TIBStringField
      FieldName = 'ies_gera_documento'
      Origin = '"tipo_nota_fiscal"."ies_gera_documento"'
      Size = 1
    end
    object nfdat_liquidacao: TDateField
      FieldName = 'dat_liquidacao'
      Origin = '"nota_fiscal_saida"."dat_liquidacao"'
    end
  end
  object nf_produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = nf_produtoAfterScroll
    SQL.Strings = (
      'select'
      '  "cod_empresa"'
      '  ,"num_nota_fiscal"'
      '  ,"serie"'
      '  ,"num_sequencia"'
      '  ,"cod_produto"'
      '  ,"qtd_produto"'
      '  ,"pct_ipi"'
      '  ,"pct_icmsr"'
      '  ,"pct_icmss"'
      '  ,"pct_desconto"'
      '  ,"vlr_unitario"'
      '  ,"vlr_desconto_adic"'
      '  ,"texto"'
      '  ,"txt_observacao"'
      '  ,"dat_cadastro"'
      '  ,"pct_icms"'
      '  ,"vlr_bruto"'
      '  ,"vlr_ipi"'
      '  ,"vlr_icmsr"'
      '  ,"base_icmss"'
      '  ,"vlr_icmss"'
      '  ,"base_icms"'
      '  ,"vlr_icms"'
      '  ,"vlr_desconto"'
      '  ,"vlr_liquido"'
      'from "nota_fiscal_saida_produto"'
      'where'
      '  "cod_empresa"       = :cod_empresa'
      'and "num_nota_fiscal" = :num_nota_fiscal'
      'and "serie" = :serie'
      'order by'
      '  "num_sequencia"')
    Left = 42
    Top = 60
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
    object nf_produtocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"nota_fiscal_saida_produto"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nf_produtonum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida_produto"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nf_produtoserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida_produto"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object nf_produtonum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"nota_fiscal_saida_produto"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nf_produtocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"nota_fiscal_saida_produto"."cod_produto"'
      Required = True
      Size = 7
    end
    object nf_produtoqtd_produto: TIBBCDField
      FieldName = 'qtd_produto'
      Origin = '"nota_fiscal_saida_produto"."qtd_produto"'
      Precision = 18
      Size = 3
    end
    object nf_produtopct_ipi: TIBBCDField
      FieldName = 'pct_ipi'
      Origin = '"nota_fiscal_saida_produto"."pct_ipi"'
      Precision = 9
      Size = 2
    end
    object nf_produtopct_icmsr: TIBBCDField
      FieldName = 'pct_icmsr'
      Origin = '"nota_fiscal_saida_produto"."pct_icmsr"'
      Precision = 9
      Size = 2
    end
    object nf_produtopct_icmss: TIBBCDField
      FieldName = 'pct_icmss'
      Origin = '"nota_fiscal_saida_produto"."pct_icmss"'
      Precision = 9
      Size = 2
    end
    object nf_produtopct_desconto: TIBBCDField
      FieldName = 'pct_desconto'
      Origin = '"nota_fiscal_saida_produto"."pct_desconto"'
      Precision = 9
      Size = 2
    end
    object nf_produtovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"nota_fiscal_saida_produto"."vlr_unitario"'
    end
    object nf_produtovlr_desconto_adic: TIBBCDField
      FieldName = 'vlr_desconto_adic'
      Origin = '"nota_fiscal_saida_produto"."vlr_desconto_adic"'
      Precision = 18
      Size = 2
    end
    object nf_produtotexto: TIBStringField
      FieldName = 'texto'
      Origin = '"nota_fiscal_saida_produto"."texto"'
      Size = 255
    end
    object nf_produtotxt_observacao: TIBStringField
      FieldName = 'txt_observacao'
      Origin = '"nota_fiscal_saida_produto"."txt_observacao"'
      Size = 255
    end
    object nf_produtodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"nota_fiscal_saida_produto"."dat_cadastro"'
    end
    object nf_produtopct_icms: TIBBCDField
      FieldName = 'pct_icms'
      Origin = '"nota_fiscal_saida_produto"."pct_icms"'
      Precision = 9
      Size = 2
    end
    object nf_produtovlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"nota_fiscal_saida_produto"."vlr_bruto"'
      Precision = 18
      Size = 2
    end
    object nf_produtovlr_ipi: TIBBCDField
      FieldName = 'vlr_ipi'
      Origin = '"nota_fiscal_saida_produto"."vlr_ipi"'
      Precision = 18
      Size = 2
    end
    object nf_produtovlr_icmsr: TIBBCDField
      FieldName = 'vlr_icmsr'
      Origin = '"nota_fiscal_saida_produto"."vlr_icmsr"'
      Precision = 18
      Size = 2
    end
    object nf_produtobase_icmss: TIBBCDField
      FieldName = 'base_icmss'
      Origin = '"nota_fiscal_saida_produto"."base_icmss"'
      Precision = 18
      Size = 2
    end
    object nf_produtovlr_icmss: TIBBCDField
      FieldName = 'vlr_icmss'
      Origin = '"nota_fiscal_saida_produto"."vlr_icmss"'
      Precision = 18
      Size = 2
    end
    object nf_produtobase_icms: TIBBCDField
      FieldName = 'base_icms'
      Origin = '"nota_fiscal_saida_produto"."base_icms"'
      Precision = 18
      Size = 2
    end
    object nf_produtovlr_icms: TIBBCDField
      FieldName = 'vlr_icms'
      Origin = '"nota_fiscal_saida_produto"."vlr_icms"'
      Precision = 18
      Size = 2
    end
    object nf_produtovlr_desconto: TIBBCDField
      FieldName = 'vlr_desconto'
      Origin = '"nota_fiscal_saida_produto"."vlr_desconto"'
      Precision = 18
      Size = 2
    end
    object nf_produtovlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
  end
  object nf_servico: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'Select '
      '  "cod_empresa",'
      '  "num_nota_fiscal",'
      '  "serie",'
      '  "num_sequencia",'
      '  "cod_servico",'
      '  "qtd_servico",'
      '  "pct_irrf",'
      '  "pct_iss",'
      '  "pct_desconto",'
      '  "vlr_unitario",'
      '  "vlr_bruto",'
      '  "vlr_irrf",'
      '  "vlr_iss",'
      '  "vlr_desconto",'
      '  "vlr_desconto_adic",'
      '  "vlr_liquido",'
      '  "texto",'
      '  "txt_observacao",'
      '  "dat_cadastro"'
      'from "nota_fiscal_saida_servico" '
      'where'
      '    "cod_empresa" = :cod_empresa'
      'and "num_nota_fiscal" = :num_nota_fiscal'
      'and "serie" = :serie')
    Left = 42
    Top = 108
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
    object nf_servicocod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"nota_fiscal_saida_servico"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nf_serviconum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida_servico"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nf_servicoserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida_servico"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object nf_serviconum_sequencia: TSmallintField
      FieldName = 'num_sequencia'
      Origin = '"nota_fiscal_saida_servico"."num_sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nf_servicocod_servico: TSmallintField
      FieldName = 'cod_servico'
      Origin = '"nota_fiscal_saida_servico"."cod_servico"'
      Required = True
    end
    object nf_servicoqtd_servico: TIBBCDField
      FieldName = 'qtd_servico'
      Origin = '"nota_fiscal_saida_servico"."qtd_servico"'
      Precision = 18
      Size = 3
    end
    object nf_servicopct_irrf: TIBBCDField
      FieldName = 'pct_irrf'
      Origin = '"nota_fiscal_saida_servico"."pct_irrf"'
      Precision = 9
      Size = 2
    end
    object nf_servicopct_iss: TIBBCDField
      FieldName = 'pct_iss'
      Origin = '"nota_fiscal_saida_servico"."pct_iss"'
      Precision = 9
      Size = 2
    end
    object nf_servicopct_desconto: TIBBCDField
      FieldName = 'pct_desconto'
      Origin = '"nota_fiscal_saida_servico"."pct_desconto"'
      Precision = 9
      Size = 2
    end
    object nf_servicovlr_unitario: TIBBCDField
      FieldName = 'vlr_unitario'
      Origin = '"nota_fiscal_saida_servico"."vlr_unitario"'
      Precision = 18
      Size = 2
    end
    object nf_servicovlr_bruto: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_bruto'
      Origin = '"nota_fiscal_saida_servico"."vlr_bruto"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object nf_servicovlr_irrf: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_irrf'
      Origin = '"nota_fiscal_saida_servico"."vlr_irrf"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object nf_servicovlr_iss: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_iss'
      Origin = '"nota_fiscal_saida_servico"."vlr_iss"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object nf_servicovlr_desconto: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_desconto'
      Origin = '"nota_fiscal_saida_servico"."vlr_desconto"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object nf_servicovlr_desconto_adic: TIBBCDField
      FieldName = 'vlr_desconto_adic'
      Origin = '"nota_fiscal_saida_servico"."vlr_desconto_adic"'
      Precision = 18
      Size = 2
    end
    object nf_servicovlr_liquido: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'vlr_liquido'
      Origin = '"nota_fiscal_saida_servico"."vlr_liquido"'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object nf_servicotexto: TIBStringField
      FieldName = 'texto'
      Origin = '"nota_fiscal_saida_servico"."texto"'
      Size = 255
    end
    object nf_servicotxt_observacao: TIBStringField
      FieldName = 'txt_observacao'
      Origin = '"nota_fiscal_saida_servico"."txt_observacao"'
      Size = 255
    end
    object nf_servicodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"nota_fiscal_saida_servico"."dat_cadastro"'
    end
  end
  object qryFechamentoEstoque: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select first 1 "yearmonth"'
      'from "estoque_historico"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'and "yearmonth"   = :yearmonth')
    Left = 138
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'yearmonth'
        ParamType = ptUnknown
      end>
  end
  object qryKit: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select'
      '  "cod_empresa",'
      '  "cod_produto",'
      '  "cod_produto_componente",'
      '  "qtd_necessaria",'
      '  "dat_cadastro"'
      'from "kit"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'and "cod_produto" = :cod_produto'
      'order by "cod_produto_componente"')
    Left = 144
    Top = 114
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'cod_empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod_produto'
        ParamType = ptInput
      end>
    object qryKitcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"kit"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryKitcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"kit"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object qryKitcod_produto_componente: TIBStringField
      FieldName = 'cod_produto_componente'
      Origin = '"kit"."cod_produto_componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 7
    end
    object qryKitqtd_necessaria: TIBBCDField
      FieldName = 'qtd_necessaria'
      Origin = '"kit"."qtd_necessaria"'
      Precision = 18
      Size = 3
    end
    object qryKitdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"kit"."dat_cadastro"'
    end
  end
end
