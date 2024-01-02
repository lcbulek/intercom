object dmCOM: TdmCOM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 752
  Top = 281
  Height = 581
  Width = 822
  object Embalagem: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "embalagem"'
      'where "cod_empresa" = :cod_empresa'
      '    and "cod_produto" = :cod_produto')
    Left = 72
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'cod_empresa'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'cod_produto'
        ParamType = ptInput
        Value = ''
      end>
    object Embalagemcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Embalagemcod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object Embalagempeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
    end
    object Embalagemaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      Precision = 9
      Size = 4
    end
    object Embalagemlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      Precision = 9
      Size = 4
    end
    object Embalagemprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      Precision = 9
      Size = 4
    end
    object Embalagemvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      Precision = 18
      Size = 4
    end
    object Embalagemarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      Precision = 18
      Size = 4
    end
    object Embalagemqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object Embalagemqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object Embalagemobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem"."observacao"'
      Size = 255
    end
    object Embalagemdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem"."dat_cadastro"'
    end
    object Embalagemdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem"."dat_cad_dimensoes"'
    end
    object Embalagemdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem"."dat_cad_peso"'
    end
    object Embalagemdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem"."dat_cad_master"'
    end
    object Embalagemdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem"."dat_cad_inner"'
    end
    object Embalagemobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem"."obs_caixas"'
      Size = 255
    end
  end
  object cby_calc_embalagem: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "cby_calc_embalagem"(:cod_empresa, :cod_produto, :' +
        'qtd_produto);')
    Left = 176
    Top = 24
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
      end
      item
        DataType = ftUnknown
        Name = 'qtd_produto'
        ParamType = ptUnknown
      end>
    object cby_calc_embalagemvol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"cby_calc_embalagem"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object cby_calc_embalagemqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"cby_calc_embalagem"."qtd_export_box"'
    end
    object cby_calc_embalagemqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"cby_calc_embalagem"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object cby_calc_embalagemqtd_master_box: TIBBCDField
      FieldName = 'qtd_master_box'
      Origin = '"cby_calc_embalagem"."qtd_master_box"'
      Precision = 9
      Size = 4
    end
    object cby_calc_embalagempes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"cby_calc_embalagem"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object cby_calc_embalagempes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"cby_calc_embalagem"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object cby_calc_embalagempes_bruto_caixa: TIBBCDField
      FieldName = 'pes_bruto_caixa'
      Origin = '"cby_calc_embalagem"."pes_bruto_caixa"'
      Precision = 18
      Size = 2
    end
    object cby_calc_embalagempes_unit_prod: TFloatField
      FieldName = 'pes_unit_prod'
      Origin = '"cby_calc_embalagem"."pes_unit_prod"'
    end
    object cby_calc_embalagempes_unit_caixa: TFloatField
      FieldName = 'pes_unit_caixa'
      Origin = '"cby_calc_embalagem"."pes_unit_caixa"'
    end
    object cby_calc_embalagemcaixa_fechada: TIBStringField
      FieldName = 'caixa_fechada'
      Origin = '"cby_calc_embalagem"."caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object cby_calc_embalagemaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"cby_calc_embalagem"."altura"'
      Precision = 9
      Size = 2
    end
    object cby_calc_embalagemlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"cby_calc_embalagem"."largura"'
      Precision = 9
      Size = 2
    end
    object cby_calc_embalagemcomprimento: TIBBCDField
      FieldName = 'comprimento'
      Origin = '"cby_calc_embalagem"."comprimento"'
      Precision = 9
      Size = 2
    end
    object cby_calc_embalagemvol_master_box: TIBBCDField
      FieldName = 'vol_master_box'
      Origin = '"cby_calc_embalagem"."vol_master_box"'
      Precision = 18
      Size = 4
    end
    object cby_calc_embalagemobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"cby_calc_embalagem"."observacao"'
      Size = 255
    end
    object cby_calc_embalagemdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"cby_calc_embalagem"."dat_cadastro"'
    end
    object cby_calc_embalagemdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"cby_calc_embalagem"."dat_cad_dimensoes"'
    end
    object cby_calc_embalagemdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"cby_calc_embalagem"."dat_cad_peso"'
    end
    object cby_calc_embalagemdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"cby_calc_embalagem"."dat_cad_master"'
    end
    object cby_calc_embalagemdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"cby_calc_embalagem"."dat_cad_inner"'
    end
    object cby_calc_embalagemobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"cby_calc_embalagem"."obs_caixas"'
      Size = 255
    end
  end
  object ultimo_pedido_cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select first 1 *'
      'from "pedido" a, "pedido_complemento" b'
      'where'
      '      a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and b."cod_fornecedor" = :cod_fornecedor'
      '  and a."dat_liberacao"  = ( select max(b."dat_liberacao")'
      '                            from "pedido" b'
      '                           where'
      
        '                                 b."cod_empresa"    = a."cod_emp' +
        'resa"'
      
        '                             and b."cod_cliente"    = a."cod_cli' +
        'ente"'
      '                             and b."ies_situacao"  <> '#39'C'#39
      '                             and b."ies_tip_pedido" = '#39'P'#39')'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido" = a."num_pedido"'
      'order by a."dat_emissao" desc')
    Left = 200
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object ultimo_pedido_clientecod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"pedido"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ultimo_pedido_clientenum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ultimo_pedido_clienteies_situacao: TIBStringField
      FieldName = 'ies_situacao'
      Origin = '"pedido"."ies_situacao"'
      Size = 1
    end
    object ultimo_pedido_clienteies_tip_pedido: TIBStringField
      FieldName = 'ies_tip_pedido'
      Origin = '"pedido"."ies_tip_pedido"'
      Size = 1
    end
    object ultimo_pedido_clienteies_tip_frete: TSmallintField
      FieldName = 'ies_tip_frete'
      Origin = '"pedido"."ies_tip_frete"'
    end
    object ultimo_pedido_clientedat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"pedido"."dat_emissao"'
    end
    object ultimo_pedido_clientedat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
    end
    object ultimo_pedido_clientedat_faturamento: TDateField
      FieldName = 'dat_faturamento'
      Origin = '"pedido"."dat_faturamento"'
    end
    object ultimo_pedido_clientelogin: TIBStringField
      FieldName = 'login'
      Origin = '"pedido"."login"'
      Size = 18
    end
    object ultimo_pedido_clientevlr_frete: TIBBCDField
      FieldName = 'vlr_frete'
      Origin = '"pedido"."vlr_frete"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientecod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Required = True
      Size = 12
    end
    object ultimo_pedido_clientecod_vendedor: TSmallintField
      FieldName = 'cod_vendedor'
      Origin = '"pedido"."cod_vendedor"'
    end
    object ultimo_pedido_clientenum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"pedido"."num_lista"'
      Required = True
    end
    object ultimo_pedido_clientecod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"pedido"."cod_moeda"'
    end
    object ultimo_pedido_clientedat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
      Origin = '"pedido"."dat_cadastro"'
    end
    object ultimo_pedido_clientedat_entrega: TDateField
      FieldName = 'dat_entrega'
      Origin = '"pedido"."dat_entrega"'
    end
    object ultimo_pedido_clientevlr_bruto: TIBBCDField
      FieldName = 'vlr_bruto'
      Origin = '"pedido"."vlr_bruto"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientevlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientetxt_pedido: TMemoField
      FieldName = 'txt_pedido'
      Origin = '"pedido"."txt_pedido"'
      BlobType = ftMemo
      Size = 8
    end
    object ultimo_pedido_clientetxt_confirmacao: TMemoField
      FieldName = 'txt_confirmacao'
      Origin = '"pedido"."txt_confirmacao"'
      BlobType = ftMemo
      Size = 8
    end
    object ultimo_pedido_clientecod_banco: TIntegerField
      FieldName = 'cod_banco'
      Origin = '"pedido"."cod_banco"'
    end
    object ultimo_pedido_clientecod_banco_int: TIntegerField
      FieldName = 'cod_banco_int'
      Origin = '"pedido"."cod_banco_int"'
    end
    object ultimo_pedido_clienteies_pago: TIBStringField
      FieldName = 'ies_pago'
      Origin = '"pedido"."ies_pago"'
      FixedChar = True
      Size = 1
    end
    object ultimo_pedido_clientetexto: TMemoField
      FieldName = 'texto'
      Origin = '"pedido"."texto"'
      BlobType = ftMemo
      Size = 8
    end
    object ultimo_pedido_clientetxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"pedido"."txt_observacao"'
      BlobType = ftMemo
      Size = 8
    end
    object ultimo_pedido_clientevlr_condicao: TIBBCDField
      FieldName = 'vlr_condicao'
      Origin = '"pedido"."vlr_condicao"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientevlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientevlr_bruto_esp: TIBBCDField
      FieldName = 'vlr_bruto_esp'
      Origin = '"pedido"."vlr_bruto_esp"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientevlr_adicional: TIBBCDField
      FieldName = 'vlr_adicional'
      Origin = '"pedido"."vlr_adicional"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientevlr_desconto: TIBBCDField
      FieldName = 'vlr_desconto'
      Origin = '"pedido"."vlr_desconto"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientevlr_adicional_esp: TIBBCDField
      FieldName = 'vlr_adicional_esp'
      Origin = '"pedido"."vlr_adicional_esp"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientevlr_desconto_esp: TIBBCDField
      FieldName = 'vlr_desconto_esp'
      Origin = '"pedido"."vlr_desconto_esp"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clienteies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"pedido"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object ultimo_pedido_clienteies_preco_esp: TIBStringField
      FieldName = 'ies_preco_esp'
      Origin = '"pedido"."ies_preco_esp"'
      FixedChar = True
      Size = 1
    end
    object ultimo_pedido_clienteies_comissao: TSmallintField
      FieldName = 'ies_comissao'
      Origin = '"pedido"."ies_comissao"'
    end
    object ultimo_pedido_clienteies_base_comissao: TIBStringField
      FieldName = 'ies_base_comissao'
      Origin = '"pedido"."ies_base_comissao"'
      FixedChar = True
      Size = 1
    end
    object ultimo_pedido_clienteies_insurance: TIBStringField
      FieldName = 'ies_insurance'
      Origin = '"pedido"."ies_insurance"'
      FixedChar = True
      Size = 1
    end
    object ultimo_pedido_clienteies_idioma: TIBStringField
      FieldName = 'ies_idioma'
      Origin = '"pedido"."ies_idioma"'
      FixedChar = True
      Size = 1
    end
    object ultimo_pedido_clienteterms_payment: TIBStringField
      FieldName = 'terms_payment'
      Origin = '"pedido"."terms_payment"'
      Size = 255
    end
    object ultimo_pedido_clientecod_empresa1: TSmallintField
      FieldName = 'cod_empresa1'
      Origin = '"pedido_complemento"."cod_empresa"'
      Required = True
    end
    object ultimo_pedido_clientenum_pedido1: TLargeintField
      FieldName = 'num_pedido1'
      Origin = '"pedido_complemento"."num_pedido"'
    end
    object ultimo_pedido_clientenum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object ultimo_pedido_clientenum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object ultimo_pedido_clientecod_container: TIntegerField
      FieldName = 'cod_container'
      Origin = '"pedido_complemento"."cod_container"'
    end
    object ultimo_pedido_clientecod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = '"pedido_complemento"."cod_fornecedor"'
    end
    object ultimo_pedido_clientecod_porto_emb: TIntegerField
      FieldName = 'cod_porto_emb'
      Origin = '"pedido_complemento"."cod_porto_emb"'
    end
    object ultimo_pedido_clientecod_porto_des: TIntegerField
      FieldName = 'cod_porto_des'
      Origin = '"pedido_complemento"."cod_porto_des"'
    end
    object ultimo_pedido_clientecod_cond_venda: TIntegerField
      FieldName = 'cod_cond_venda'
      Origin = '"pedido_complemento"."cod_cond_venda"'
    end
    object ultimo_pedido_clientenum_container: TIntegerField
      FieldName = 'num_container'
      Origin = '"pedido_complemento"."num_container"'
    end
    object ultimo_pedido_clientevol_total: TIBBCDField
      FieldName = 'vol_total'
      Origin = '"pedido_complemento"."vol_total"'
      Precision = 18
      Size = 3
    end
    object ultimo_pedido_clienteqtd_caixas: TIntegerField
      FieldName = 'qtd_caixas'
      Origin = '"pedido_complemento"."qtd_caixas"'
    end
    object ultimo_pedido_clientepes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"pedido_complemento"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientepes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"pedido_complemento"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientenum_ref_volume: TIBStringField
      FieldName = 'num_ref_volume'
      Origin = '"pedido_complemento"."num_ref_volume"'
      FixedChar = True
      Size = 15
    end
    object ultimo_pedido_clientebanco_intermed: TIBStringField
      FieldName = 'banco_intermed'
      Origin = '"pedido_complemento"."banco_intermed"'
      Size = 255
    end
    object ultimo_pedido_clienteswift: TIBStringField
      FieldName = 'swift'
      Origin = '"pedido_complemento"."swift"'
      Size = 30
    end
    object ultimo_pedido_clienteqtd_pallets: TIntegerField
      FieldName = 'qtd_pallets'
      Origin = '"pedido_complemento"."qtd_pallets"'
    end
    object ultimo_pedido_clientevol_pallets: TIBBCDField
      FieldName = 'vol_pallets'
      Origin = '"pedido_complemento"."vol_pallets"'
      Precision = 18
      Size = 3
    end
    object ultimo_pedido_clientepes_liq_pallets: TIBBCDField
      FieldName = 'pes_liq_pallets'
      Origin = '"pedido_complemento"."pes_liq_pallets"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientepes_bruto_pallets: TIBBCDField
      FieldName = 'pes_bruto_pallets'
      Origin = '"pedido_complemento"."pes_bruto_pallets"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientevol_geral: TIBBCDField
      FieldName = 'vol_geral'
      Origin = '"pedido_complemento"."vol_geral"'
      Precision = 18
      Size = 3
    end
    object ultimo_pedido_clientecxs_outpallet: TIntegerField
      FieldName = 'cxs_outpallet'
      Origin = '"pedido_complemento"."cxs_outpallet"'
    end
    object ultimo_pedido_clientepes_liq_geral: TIBBCDField
      FieldName = 'pes_liq_geral'
      Origin = '"pedido_complemento"."pes_liq_geral"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clientepes_bru_geral: TIBBCDField
      FieldName = 'pes_bru_geral'
      Origin = '"pedido_complemento"."pes_bru_geral"'
      Precision = 18
      Size = 2
    end
    object ultimo_pedido_clienteseq_filial: TIntegerField
      FieldName = 'seq_filial'
      Origin = '"pedido"."seq_filial"'
    end
  end
  object VerPedido: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select a."num_pedido", b."num_pedido_cli", b."num_pedido_for", a' +
        '."cod_cliente", b."cod_fornecedor", c."raz_social_reduz"'
      '  from "pedido" a, "pedido_complemento" b, "fornecedor" c'
      ' where a."cod_empresa" = :cod_empresa'
      '   and a."num_pedido" = :num_pedido'
      '   and b."cod_empresa" = a."cod_empresa"'
      '   and b."num_pedido" = a."num_pedido"'
      '   and c."cod_fornecedor" = b."cod_fornecedor"')
    Left = 72
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido'
        ParamType = ptUnknown
      end>
    object VerPedidonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VerPedidonum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object VerPedidonum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object VerPedidocod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"pedido"."cod_cliente"'
      Required = True
      Size = 12
    end
    object VerPedidocod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = '"pedido_complemento"."cod_fornecedor"'
    end
    object VerPedidoraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
  object parametro_comercial: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterPost = parametro_comercialAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "parametro_comercial"'
      'where'
      '  "parametro_comercial"."cod_empresa" = :"OLD_cod_empresa"')
    InsertSQL.Strings = (
      'insert into "parametro_comercial"'
      
        '  ("parametro_comercial"."cod_empresa", "parametro_comercial"."c' +
        'od_vendedor", '
      
        '   "parametro_comercial"."cod_transportadora", "parametro_comerc' +
        'ial"."cod_moeda", '
      
        '   "parametro_comercial"."serie_nf", "parametro_comercial"."dias' +
        '_atualiza", '
      
        '   "parametro_comercial"."ano_pedido", "parametro_comercial"."pr' +
        'ox_num_pedido", '
      
        '   "parametro_comercial"."dias_entrega", "parametro_comercial"."' +
        'dir_planilhas", '
      
        '   "parametro_comercial"."ult_num_nf", "parametro_comercial"."ul' +
        't_num_romaneio", '
      
        '   "parametro_comercial"."ies_modelo", "parametro_comercial"."mo' +
        'd_lista_preco", '
      
        '   "parametro_comercial"."mod_pedido_imp", "parametro_comercial"' +
        '."mod_romaneio", '
      
        '   "parametro_comercial"."mod_cad_produto", "parametro_comercial' +
        '"."cod_tip_embarque", '
      
        '   "parametro_comercial"."mod_ship_list", "parametro_comercial".' +
        '"seq_rel_lista", '
      
        '   "parametro_comercial"."mod_plan_excel", "parametro_comercial"' +
        '."mod_plan_itens_emb", '
      
        '   "parametro_comercial"."mod_plan_itens_emb_fat", "parametro_co' +
        'mercial"."dias_inspecao", '
      
        '   "parametro_comercial"."mod_plan_alt_ped", "parametro_comercia' +
        'l"."mod_plan_alt_fat", '
      
        '   "parametro_comercial"."ult_num_prod_list", "parametro_comerci' +
        'al"."ies_base_comissao", '
      '   "parametro_comercial"."cor_embarque")'
      'values'
      
        '  (:"cod_empresa", :"cod_vendedor", :"cod_transportadora", :"cod' +
        '_moeda", '
      
        '   :"serie_nf", :"dias_atualiza", :"ano_pedido", :"prox_num_pedi' +
        'do", :"dias_entrega", '
      
        '   :"dir_planilhas", :"ult_num_nf", :"ult_num_romaneio", :"ies_m' +
        'odelo", '
      
        '   :"mod_lista_preco", :"mod_pedido_imp", :"mod_romaneio", :"mod' +
        '_cad_produto", '
      
        '   :"cod_tip_embarque", :"mod_ship_list", :"seq_rel_lista", :"mo' +
        'd_plan_excel", '
      
        '   :"mod_plan_itens_emb", :"mod_plan_itens_emb_fat", :"dias_insp' +
        'ecao", '
      
        '   :"mod_plan_alt_ped", :"mod_plan_alt_fat", :"ult_num_prod_list' +
        '", :"ies_base_comissao",'
      '   :"cor_embarque")')
    RefreshSQL.Strings = (
      'Select * from "parametro_comercial" '
      'where'
      '  "parametro_comercial"."cod_empresa" = :"cod_empresa"')
    SelectSQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    ModifySQL.Strings = (
      'update "parametro_comercial"'
      'set'
      '  "parametro_comercial"."cod_empresa" = :"cod_empresa",'
      '  "parametro_comercial"."cod_vendedor" = :"cod_vendedor",'
      
        '  "parametro_comercial"."cod_transportadora" = :"cod_transportad' +
        'ora",'
      '  "parametro_comercial"."cod_moeda" = :"cod_moeda",'
      '  "parametro_comercial"."serie_nf" = :"serie_nf",'
      '  "parametro_comercial"."dias_atualiza" = :"dias_atualiza",'
      '  "parametro_comercial"."ano_pedido" = :"ano_pedido",'
      '  "parametro_comercial"."prox_num_pedido" = :"prox_num_pedido",'
      '  "parametro_comercial"."dias_entrega" = :"dias_entrega",'
      '  "parametro_comercial"."dir_planilhas" = :"dir_planilhas",'
      '  "parametro_comercial"."ult_num_nf" = :"ult_num_nf",'
      
        '  "parametro_comercial"."ult_num_romaneio" = :"ult_num_romaneio"' +
        ','
      '  "parametro_comercial"."ies_modelo" = :"ies_modelo",'
      '  "parametro_comercial"."mod_lista_preco" = :"mod_lista_preco",'
      '  "parametro_comercial"."mod_pedido_imp" = :"mod_pedido_imp",'
      '  "parametro_comercial"."mod_romaneio" = :"mod_romaneio",'
      '  "parametro_comercial"."mod_cad_produto" = :"mod_cad_produto",'
      
        '  "parametro_comercial"."cod_tip_embarque" = :"cod_tip_embarque"' +
        ','
      '  "parametro_comercial"."mod_ship_list" = :"mod_ship_list",'
      '  "parametro_comercial"."seq_rel_lista" = :"seq_rel_lista",'
      '  "parametro_comercial"."mod_plan_excel" = :"mod_plan_excel",'
      
        '  "parametro_comercial"."mod_plan_itens_emb" = :"mod_plan_itens_' +
        'emb",'
      
        '  "parametro_comercial"."mod_plan_itens_emb_fat" = :"mod_plan_it' +
        'ens_emb_fat",'
      '  "parametro_comercial"."dias_inspecao" = :"dias_inspecao",'
      
        '  "parametro_comercial"."mod_plan_alt_ped" = :"mod_plan_alt_ped"' +
        ','
      
        '  "parametro_comercial"."mod_plan_alt_fat" = :"mod_plan_alt_fat"' +
        ','
      
        '  "parametro_comercial"."ult_num_prod_list" = :"ult_num_prod_lis' +
        't", '
      
        '  "parametro_comercial"."ies_base_comissao" = :"ies_base_comissa' +
        'o",'
      '  "parametro_comercial"."cor_embarque" = :"cor_embarque"'
      'where'
      '  "parametro_comercial"."cod_empresa" = :"OLD_cod_empresa"')
    Left = 280
    Top = 24
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
    end
    object parametro_comercialcod_moeda: TSmallintField
      FieldName = 'cod_moeda'
      Origin = '"parametro_comercial"."cod_moeda"'
      Required = True
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
    object parametro_comercialdir_planilhas: TIBStringField
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
    end
    object parametro_comercialult_num_nf: TIntegerField
      FieldName = 'ult_num_nf'
      Origin = '"parametro_comercial"."ult_num_nf"'
    end
    object parametro_comercialult_num_romaneio: TIntegerField
      FieldName = 'ult_num_romaneio'
      Origin = '"parametro_comercial"."ult_num_romaneio"'
    end
    object parametro_comercialies_modelo: TIntegerField
      FieldName = 'ies_modelo'
      Origin = '"parametro_comercial"."ies_modelo"'
    end
    object parametro_comercialmod_lista_preco: TBlobField
      FieldName = 'mod_lista_preco'
      Origin = '"parametro_comercial"."mod_lista_preco"'
      Size = 8
    end
    object parametro_comercialmod_pedido_imp: TBlobField
      FieldName = 'mod_pedido_imp'
      Origin = '"parametro_comercial"."mod_pedido_imp"'
      Size = 8
    end
    object parametro_comercialmod_romaneio: TBlobField
      FieldName = 'mod_romaneio'
      Origin = '"parametro_comercial"."mod_romaneio"'
      Size = 8
    end
    object parametro_comercialmod_cad_produto: TBlobField
      FieldName = 'mod_cad_produto'
      Origin = '"parametro_comercial"."mod_cad_produto"'
      Size = 8
    end
    object parametro_comercialcod_tip_embarque: TSmallintField
      FieldName = 'cod_tip_embarque'
      Origin = '"parametro_comercial"."cod_tip_embarque"'
    end
    object parametro_comercialseq_rel_lista: TIntegerField
      FieldName = 'seq_rel_lista'
      Origin = '"parametro_comercial"."seq_rel_lista"'
    end
    object parametro_comercialmod_plan_excel: TBlobField
      FieldName = 'mod_plan_excel'
      Origin = '"parametro_comercial"."mod_plan_excel"'
      Size = 8
    end
    object parametro_comercialmod_ship_list: TBlobField
      FieldName = 'mod_ship_list'
      Origin = '"parametro_comercial"."mod_ship_list"'
      Size = 8
    end
    object parametro_comercialdias_inspecao: TSmallintField
      FieldName = 'dias_inspecao'
      Origin = '"parametro_comercial"."dias_inspecao"'
    end
    object parametro_comercialmod_plan_alt_ped: TBlobField
      FieldName = 'mod_plan_alt_ped'
      Origin = 'parametro_comercial.mod_plan_alt_ped'
      Size = 8
    end
    object parametro_comercialmod_plan_alt_fat: TBlobField
      FieldName = 'mod_plan_alt_fat'
      Origin = 'parametro_comercial.mod_plan_alt_fat'
      Size = 8
    end
    object parametro_comercialmod_plan_pedido: TBlobField
      FieldName = 'mod_plan_pedido'
      Origin = '"parametro_comercial"."mod_plan_pedido"'
      Size = 8
    end
    object parametro_comercialies_base_comissao: TIBStringField
      FieldName = 'ies_base_comissao'
      Origin = '"parametro_comercial"."ies_base_comissao"'
      FixedChar = True
      Size = 1
    end
    object parametro_comercialcor_embarque: TSmallintField
      FieldName = 'cor_embarque'
      Origin = '"parametro_comercial"."cor_embarque"'
    end
    object parametro_comercialmod_plan_shipmarks: TBlobField
      FieldName = 'mod_plan_shipmarks'
      Origin = '"parametro_comercial"."mod_plan_shipmarks"'
      Size = 8
    end
  end
  object CheckPedido: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Left = 176
    Top = 80
  end
  object CheckNf: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Left = 280
    Top = 80
  end
  object Ultimo_Pedido_Produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      '-- '#218'ltima Confirma'#231#227'o de Venda do Produto'
      
        'select first 1 a."num_pedido", c."num_pedido_for", c."num_pedido' +
        '_cli", a."dat_liberacao", b."vlr_unitario", b."obs_preco",'
      '               a."terms_payment"'
      'from "pedido" a, "pedido_produto" b, "pedido_complemento" c'
      'where a."ies_tip_pedido" = '#39'P'#39
      '  and a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and b."cod_produto" = :cod_produto'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido" = a."num_pedido"'
      '  and c."cod_empresa" = a."cod_empresa"'
      '  and c."num_pedido" = a."num_pedido"'
      'order by a."dat_liberacao" desc, a."num_pedido" DESC')
    Left = 72
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end>
    object Ultimo_Pedido_Produtonum_pedido: TLargeintField
      FieldName = 'num_pedido'
      Origin = '"pedido"."num_pedido"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Ultimo_Pedido_Produtonum_pedido_for: TIBStringField
      FieldName = 'num_pedido_for'
      Origin = '"pedido_complemento"."num_pedido_for"'
      FixedChar = True
      Size = 15
    end
    object Ultimo_Pedido_Produtonum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
    object Ultimo_Pedido_Produtodat_liberacao: TDateField
      FieldName = 'dat_liberacao'
      Origin = '"pedido"."dat_liberacao"'
    end
    object Ultimo_Pedido_Produtovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
    end
    object Ultimo_Pedido_Produtoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"pedido_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object Ultimo_Pedido_Produtoterms_payment: TIBStringField
      FieldName = 'terms_payment'
      Origin = '"pedido"."terms_payment"'
      Size = 255
    end
  end
  object ListaGeralCliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select first 1 a."num_lista", a."den_lista", b."dat_cadastro", b' +
        '."vlr_unitario", b."obs_preco"'
      'from "lista" a, "lista_preco" b'
      'where'
      '      a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and b."cod_produto" = :cod_produto'
      '  and a."ies_tip_lista" = '#39'G'#39
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_lista"   = a."num_lista"'
      'order by b."dat_cadastro" desc, a."num_lista" desc')
    Left = 72
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto'
        ParamType = ptUnknown
      end>
    object ListaGeralClientenum_lista: TSmallintField
      FieldName = 'num_lista'
      Origin = '"lista"."num_lista"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ListaGeralClienteden_lista: TIBStringField
      FieldName = 'den_lista'
      Origin = '"lista"."den_lista"'
      Required = True
      Size = 75
    end
    object ListaGeralClientedat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"lista_preco"."dat_cadastro"'
    end
    object ListaGeralClientevlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"lista_preco"."vlr_unitario"'
    end
    object ListaGeralClienteobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"lista_preco"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object Fatura: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "num_fatura"'
      'from "nf_saida_complemento"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_nota_fiscal" = :num_nota_fiscal'
      '  and "serie" = :serie')
    Left = 288
    Top = 136
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
    object Faturanum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Origin = '"nf_saida_complemento"."num_fatura"'
      FixedChar = True
      Size = 25
    end
  end
  object tipo_produto_pedido: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        '  select a."cod_tip_produto", a."den_tip_produto", a."den_tip_pr' +
        'oduto_ing"'
      '  from "tipo_produto" a'
      '  where'
      '    exists (select * from "pedido_produto" b'
      '             where b."cod_empresa" = :cod_empresa'
      '               and b."num_pedido"  = :num_pedido'
      '               and exists (select * from "produto" c'
      
        '                            where c."cod_empresa" = b."cod_empre' +
        'sa"'
      
        '                              and c."cod_produto" = b."cod_produ' +
        'to"'
      
        '                              and c."cod_tip_produto" = a."cod_t' +
        'ip_produto"))'
      '  group by 1,2,3'
      '  order by 2')
    Left = 184
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUM_PEDIDO'
        ParamType = ptUnknown
      end>
    object tipo_produto_pedidocod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Required = True
    end
    object tipo_produto_pedidoden_tip_produto: TIBStringField
      FieldName = 'den_tip_produto'
      Required = True
      Size = 128
    end
    object tipo_produto_pedidoden_tip_produto_ing: TIBStringField
      FieldName = 'den_tip_produto_ing'
      Size = 128
    end
  end
  object ncm_pedido: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select b."ncm_cod", b."cod_cliente"'
      '  from "pedido_produto" a, "produto" b, "tipo_produto" c'
      ' where a."cod_empresa" = :cod_empresa'
      '   and a."num_pedido" = :num_pedido'
      '   and c."cod_tip_produto" = :cod_tip_produto'
      '   and b."cod_empresa" = a."cod_empresa"'
      '   and b."cod_produto" = a."cod_produto"'
      '   and c."cod_tip_produto" = b."cod_tip_produto"'
      'group by 1,2'
      'order by 1,2')
    Left = 288
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_tip_produto'
        ParamType = ptUnknown
      end>
    object ncm_pedidoncm_cod: TIntegerField
      FieldName = 'ncm_cod'
    end
    object ncm_pedidocod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Size = 12
    end
  end
  object tipo_produto_fatura: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select a."cod_tip_produto", a."den_tip_produto", a."den_tip_prod' +
        'uto_ing"'
      'from "tipo_produto" a'
      'where'
      '  exists (select * from "nota_fiscal_saida_produto" b'
      '           where b."cod_empresa" = :cod_empresa'
      '             and b."num_nota_fiscal" = :num_nota_fiscal'
      '             and b."serie" = :serie'
      '             and exists (select * from "produto" c'
      
        '                          where c."cod_empresa" = b."cod_empresa' +
        '"'
      
        '                            and c."cod_produto" = b."cod_produto' +
        '"'
      
        '                            and c."cod_tip_produto" = a."cod_tip' +
        '_produto"))'
      'group by 1,2,3'
      'order by 2')
    Left = 400
    Top = 80
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
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end>
    object tipo_produto_faturacod_tip_produto: TSmallintField
      FieldName = 'cod_tip_produto'
      Required = True
    end
    object tipo_produto_faturaden_tip_produto: TIBStringField
      FieldName = 'den_tip_produto'
      Required = True
      Size = 128
    end
    object tipo_produto_faturaden_tip_produto_ing: TIBStringField
      FieldName = 'den_tip_produto_ing'
      Size = 128
    end
  end
  object ncm_fatura: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select b."ncm_cod", b."cod_cliente"'
      
        'from "nota_fiscal_saida_produto" a, "produto" b, "tipo_produto" ' +
        'c'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_nota_fiscal" = :num_nota_fiscal'
      '  and a."serie" = :serie'
      '  and c."cod_tip_produto" = :cod_tip_produto'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."cod_produto" = a."cod_produto"'
      '  and c."cod_tip_produto" = b."cod_tip_produto"'
      'group by 1,2'
      'order by 1,2')
    Left = 400
    Top = 136
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
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_tip_produto'
        ParamType = ptUnknown
      end>
    object ncm_faturancm_cod: TIntegerField
      FieldName = 'ncm_cod'
    end
    object ncm_faturacod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Size = 12
    end
  end
  object Nota_Fiscal_Saida: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."num_nota_fiscal", a."serie"'
      'from "nota_fiscal_saida" a,  "nf_saida_complemento" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and b."num_fatura" = :num_fatura'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_nota_fiscal" = a."num_nota_fiscal"'
      '  and b."serie" = a."serie"'
      '')
    Left = 400
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_fatura'
        ParamType = ptUnknown
      end>
    object Nota_Fiscal_Saidanum_nota_fiscal: TIntegerField
      FieldName = 'num_nota_fiscal'
      Origin = '"nota_fiscal_saida"."num_nota_fiscal"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Nota_Fiscal_Saidaserie: TIBStringField
      FieldName = 'serie'
      Origin = '"nota_fiscal_saida"."serie"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
  end
  object ExcelWorkBook: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 504
    Top = 32
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 592
    Top = 32
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 504
    Top = 88
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 592
    Top = 88
  end
  object ProdutosHistPreco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."cod_produto",  a."cod_cliente", a."cod_fornecedor"'
      'from "produto" a'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."cod_cliente" = :cod_cliente'
      '  and a."cod_fornecedor" = :cod_fornecedor')
    Left = 528
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object ProdutosHistPrecocod_produto: TIBStringField
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ProdutosHistPrecocod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"produto"."cod_cliente"'
      Size = 12
    end
    object ProdutosHistPrecocod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"produto"."cod_fornecedor"'
    end
  end
  object ultimos_precos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select c."dat_cadastro" "data_preco", c."vlr_unitario" "vlr_unit' +
        'ario",                                                          ' +
        '                        '
      
        'CAST('#39'LISTA INICIAL : '#39' || rtrim(b."den_lista") AS CHAR(100)) "o' +
        'bs_preco", cast(c."num_lista" as numeric(12,0)) "numero",'
      #39'G'#39' "ies_origem"'
      
        'from "lista" b, "lista_preco" c                                 ' +
        '                                                                ' +
        '                        '
      
        'where                                                           ' +
        '                                                                ' +
        '                        '
      '      b."cod_empresa" = :cod_empresa1'
      '  and b."cod_cliente" = :cod_cliente1'
      
        '  and c."cod_empresa" = b."cod_empresa"                         ' +
        '                                                                ' +
        '                        '
      
        '  and c."num_lista" = b."num_lista"                             ' +
        '                                                                ' +
        '                        '
      '  and c."cod_produto" = :cod_produto1'
      '  and b."ies_tip_lista" = '#39'G'#39
      '  and b."ies_situacao" = '#39'A'#39
      'union all'
      
        'select c."dat_cadastro" "data_preco", c."vlr_unitario" "vlr_unit' +
        'ario",'
      
        'CAST('#39'COTA'#199#195'O : '#39' || rtrim(b."den_lista") AS CHAR(100)) "obs_pre' +
        'co", cast(c."num_lista" as numeric(12,0)) "numero",'
      #39'C'#39' "ies_origem"'
      
        'from "lista" b, "lista_preco" c                                 ' +
        '                                                                ' +
        '                        '
      
        'where                                                           ' +
        '                                                                ' +
        '                        '
      '      b."cod_empresa" = :cod_empresa2'
      '  and b."cod_cliente" = :cod_cliente2'
      
        '  and c."cod_empresa" = b."cod_empresa"                         ' +
        '                                                                ' +
        '                        '
      
        '  and c."num_lista" = b."num_lista"                             ' +
        '                                                                ' +
        '                        '
      '  and c."cod_produto" = :cod_produto2'
      '  and b."ies_tip_lista" = '#39'C'#39
      '  and b."ies_situacao" = '#39'A'#39
      'union all'
      
        'select a."dat_liberacao" "data_preco", b."vlr_unitario" "vlr_uni' +
        'tario",                                                         ' +
        '                        '
      
        'CAST('#39'PRICE OF ORDER : '#39' || rtrim(c."num_pedido_cli") || '#39', S/C:' +
        ' '#39' || ltrim(c."num_pedido_for") AS CHAR(100)) "obs_preco",'
      'a."num_pedido" "numero",'
      #39'P'#39' "ies_origem"'
      
        'from "pedido" a, "pedido_produto" b, "pedido_complemento" c     ' +
        '                                                                ' +
        '                        '
      'where a."ies_tip_pedido" = '#39'P'#39
      '  and a."cod_empresa" = :cod_empresa3'
      '  and a."cod_cliente" = :cod_cliente3'
      '  and b."cod_produto" = :cod_produto3'
      
        '  and b."cod_empresa" = a."cod_empresa"                         ' +
        '                                                                ' +
        '                        '
      
        '  and b."num_pedido" = a."num_pedido"                           ' +
        '                                                                ' +
        '                        '
      
        '  and c."cod_empresa" = a."cod_empresa"                         ' +
        '                                                                ' +
        '                        '
      
        '  and c."num_pedido" = a."num_pedido"                           ' +
        '                                                                ' +
        '                        '
      'group by 1,2,3,4,5'
      'order by 1 desc, 4 desc')
    Left = 597
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_empresa2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_empresa3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_produto3'
        ParamType = ptUnknown
      end>
    object ultimos_precosdata_preco: TDateField
      FieldName = 'data_preco'
    end
    object ultimos_precosvlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
    end
    object ultimos_precosobs_preco: TIBStringField
      FieldName = 'obs_preco'
      FixedChar = True
      Size = 100
    end
    object ultimos_precosnumero: TLargeintField
      FieldName = 'numero'
    end
    object ultimos_precosies_origem: TIBStringField
      FieldName = 'ies_origem'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ultimos_precosobs: TStringField
      FieldKind = fkCalculated
      FieldName = 'obs'
      Size = 1024
      Calculated = True
    end
  end
  object lista_preco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "obs_preco"'
      'from "lista_preco"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_lista" = :num_lista'
      '  and "cod_produto" = :cod_produto')
    Left = 472
    Top = 264
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
        Name = 'cod_produto'
        ParamType = ptUnknown
      end>
    object lista_precoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = 'lista_preco.obs_preco'
      BlobType = ftMemo
      Size = 8
    end
  end
  object PedidoHistPreco: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."dat_emissao", a."terms_payment", b."num_pedido_cli"'
      'from "pedido" a, "pedido_complemento" b'
      'where a."cod_empresa" = :cod_empresa'
      '  and a."num_pedido" = :num_pedido'
      '  and b."cod_empresa" = a."cod_empresa"'
      '  and b."num_pedido" = a."num_pedido"'
      '')
    Left = 536
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido'
        ParamType = ptUnknown
      end>
    object PedidoHistPrecodat_emissao: TDateTimeField
      FieldName = 'dat_emissao'
      Origin = '"pedido"."dat_emissao"'
    end
    object PedidoHistPrecoterms_payment: TIBStringField
      FieldName = 'terms_payment'
      Origin = '"pedido"."terms_payment"'
      Size = 255
    end
    object PedidoHistPreconum_pedido_cli: TIBStringField
      FieldName = 'num_pedido_cli'
      Origin = '"pedido_complemento"."num_pedido_cli"'
      FixedChar = True
      Size = 15
    end
  end
  object Fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "raz_social_reduz"'
      'from "fornecedor"'
      'where "cod_fornecedor" = :cod_fornecedor')
    Left = 608
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object Fornecedorraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
  object Cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'Select "cod_cliente"'
      'from "cliente"'
      'where "cod_cliente" = :cod_cliente')
    Left = 680
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object Clientecod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
end
