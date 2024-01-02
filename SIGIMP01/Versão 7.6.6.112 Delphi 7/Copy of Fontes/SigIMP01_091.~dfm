object dmProdList: TdmProdList
  OldCreateOrder = False
  Left = 682
  Top = 308
  Height = 418
  Width = 623
  object parametro_comercial: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "parametro_comercial"'
      'where "cod_empresa" = :cod_empresa')
    Left = 42
    Top = 81
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
    object parametro_comercialies_modelo: TIntegerField
      FieldName = 'ies_modelo'
      Origin = '"parametro_comercial"."ies_modelo"'
    end
    object parametro_comercialmod_romaneio: TBlobField
      FieldName = 'mod_romaneio'
      Origin = '"parametro_comercial"."mod_romaneio"'
      Size = 8
    end
    object parametro_comercialcod_tip_embarque: TSmallintField
      FieldName = 'cod_tip_embarque'
      Origin = '"parametro_comercial"."cod_tip_embarque"'
    end
    object parametro_comercialdir_planilhas: TIBStringField
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
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
    object parametro_comercialult_num_prod_list: TIntegerField
      FieldName = 'ult_num_prod_list'
      Origin = '"parametro_comercial"."ult_num_prod_list"'
    end
  end
  object prod_list: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "prod_list"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list')
    Left = 136
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end>
    object prod_listcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"prod_list"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_listcod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"prod_list"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object prod_listcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"prod_list"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object prod_listnum_prod_list: TIntegerField
      FieldName = 'num_prod_list'
      Origin = '"prod_list"."num_prod_list"'
    end
    object prod_listies_gerar: TIBStringField
      FieldName = 'ies_gerar'
      Origin = '"prod_list"."ies_gerar"'
      FixedChar = True
      Size = 1
    end
    object prod_listies_pallets: TIBStringField
      FieldName = 'ies_pallets'
      Origin = '"prod_list"."ies_pallets"'
      FixedChar = True
      Size = 1
    end
    object prod_listies_plan_default: TSmallintField
      FieldName = 'ies_plan_default'
      Origin = '"prod_list"."ies_plan_default"'
    end
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 42
    Top = 8
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 153
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 243
    Top = 8
  end
  object cliente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_cliente", "nom_cliente_reduz"'
      'from "cliente"'
      'where "cod_cliente" = :cod_cliente')
    Left = 192
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end>
    object clientecod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
  object fornecedor: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select "cod_fornecedor", "raz_social_reduz"'
      'from "fornecedor"'
      'where "cod_fornecedor" = :cod_fornecedor')
    Left = 272
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object fornecedorcod_fornecedor: TSmallintField
      FieldName = 'cod_fornecedor'
      Origin = '"fornecedor"."cod_fornecedor"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fornecedorraz_social_reduz: TIBStringField
      FieldName = 'raz_social_reduz'
      Origin = '"fornecedor"."raz_social_reduz"'
      Required = True
      Size = 30
    end
  end
  object faturas_prodlist: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      ' select "num_fatura"'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "num_fatura" <> '#39#39
      'group by 1'
      'order by 1'
      '')
    Left = 40
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end>
    object faturas_prodlistnum_fatura: TIBStringField
      FieldName = 'num_fatura'
      Size = 25
    end
  end
  object itens_prodlist: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Left = 128
    Top = 136
  end
  object Saldos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      
        'select * from "spr_saldos_produtos"(:cod_empresa, :num_pedido, :' +
        'cod_produto, :num_seq_pedido);')
    Left = 200
    Top = 136
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
        Name = 'cod_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_seq_pedido'
        ParamType = ptUnknown
      end>
    object Saldosqtd_confirmada: TIBBCDField
      FieldName = 'qtd_confirmada'
      Origin = '"spr_saldos_produtos"."qtd_confirmada"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_embarcada: TIBBCDField
      FieldName = 'qtd_embarcada'
      Origin = '"spr_saldos_produtos"."qtd_embarcada"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_pendente: TIBBCDField
      FieldName = 'qtd_pendente'
      Origin = '"spr_saldos_produtos"."qtd_pendente"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"spr_saldos_produtos"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object Saldosqtd_saldo: TIBBCDField
      FieldName = 'qtd_saldo'
      Origin = '"spr_saldos_produtos"."qtd_saldo"'
      Precision = 18
      Size = 2
    end
  end
  object pedido_produto: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select a."cod_empresa", a."num_pedido", a."num_sequencia",'
      
        '       a."qtd_produto", a."qtd_cancelada", a."qtd_romaneada", a.' +
        '"qtd_faturada", a."qtd_pendente", '
      '       a."qtd_romanear", a."qtd_saldo",'
      
        '       a."qtd_export_box", a."qtd_inner_box", a."vol_caixas", a.' +
        '"pes_liquido", a."pes_bruto", a."ies_caixa_fechada",'
      
        '       a."vlr_unitario", a."vlr_unitario_esp", a."vlr_liquido", ' +
        'a."vlr_liquido_esp",'
      
        '       a."ies_result_inspecao", a."txt_status_producao", a."dat_' +
        'inspecao", a."obs_preco", a."obs_preco_esp", b."pes_unitario"'
      'from "pedido_produto" a, "produto" b'
      ' where a."cod_empresa" = :cod_empresa'
      '   and a."num_pedido" = :num_pedido'
      '   and a."num_sequencia" = :num_sequencia'
      '   and b."cod_empresa" = a."cod_empresa"'
      '   and b."cod_produto" = a."cod_produto"')
    Left = 272
    Top = 136
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
        Name = 'num_sequencia'
        ParamType = ptUnknown
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
    object pedido_produtoqtd_romanear: TIBBCDField
      FieldName = 'qtd_romanear'
      Origin = '"pedido_produto"."qtd_romanear"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_saldo: TIBBCDField
      FieldName = 'qtd_saldo'
      Origin = '"pedido_produto"."qtd_saldo"'
      Precision = 18
      Size = 3
    end
    object pedido_produtoqtd_export_box: TIntegerField
      FieldName = 'qtd_export_box'
      Origin = '"pedido_produto"."qtd_export_box"'
    end
    object pedido_produtoqtd_inner_box: TIBBCDField
      FieldName = 'qtd_inner_box'
      Origin = '"pedido_produto"."qtd_inner_box"'
      Precision = 9
      Size = 4
    end
    object pedido_produtovol_caixas: TIBBCDField
      FieldName = 'vol_caixas'
      Origin = '"pedido_produto"."vol_caixas"'
      Precision = 18
      Size = 3
    end
    object pedido_produtopes_liquido: TIBBCDField
      FieldName = 'pes_liquido'
      Origin = '"pedido_produto"."pes_liquido"'
      Precision = 18
      Size = 2
    end
    object pedido_produtopes_bruto: TIBBCDField
      FieldName = 'pes_bruto'
      Origin = '"pedido_produto"."pes_bruto"'
      Precision = 18
      Size = 2
    end
    object pedido_produtoies_caixa_fechada: TIBStringField
      FieldName = 'ies_caixa_fechada'
      Origin = '"pedido_produto"."ies_caixa_fechada"'
      FixedChar = True
      Size = 1
    end
    object pedido_produtovlr_unitario: TFloatField
      FieldName = 'vlr_unitario'
      Origin = '"pedido_produto"."vlr_unitario"'
    end
    object pedido_produtovlr_unitario_esp: TFloatField
      FieldName = 'vlr_unitario_esp'
      Origin = '"pedido_produto"."vlr_unitario_esp"'
    end
    object pedido_produtovlr_liquido: TIBBCDField
      FieldName = 'vlr_liquido'
      Origin = '"pedido_produto"."vlr_liquido"'
      Precision = 18
      Size = 2
    end
    object pedido_produtovlr_liquido_esp: TIBBCDField
      FieldName = 'vlr_liquido_esp'
      Origin = '"pedido_produto"."vlr_liquido_esp"'
      Precision = 18
      Size = 2
    end
    object pedido_produtoies_result_inspecao: TIBStringField
      FieldName = 'ies_result_inspecao'
      Origin = '"pedido_produto"."ies_result_inspecao"'
      FixedChar = True
      Size = 1
    end
    object pedido_produtotxt_status_producao: TMemoField
      FieldName = 'txt_status_producao'
      Origin = '"pedido_produto"."txt_status_producao"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtodat_inspecao: TDateField
      FieldName = 'dat_inspecao'
      Origin = '"pedido_produto"."dat_inspecao"'
    end
    object pedido_produtoobs_preco: TMemoField
      FieldName = 'obs_preco'
      Origin = '"pedido_produto"."obs_preco"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtoobs_preco_esp: TMemoField
      FieldName = 'obs_preco_esp'
      Origin = '"pedido_produto"."obs_preco_esp"'
      BlobType = ftMemo
      Size = 8
    end
    object pedido_produtopes_unitario: TFloatField
      FieldName = 'pes_unitario'
      Origin = '"produto"."pes_unitario"'
    end
  end
  object ProdListGrupos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select *'
      'from "prod_list_itens"'
      'where "cod_empresa" = :cod_empresa'
      '  and "num_prod_list" = :num_prod_list'
      '  and "grupo" = :grupo'
      'order by "num_sequencia"')
    Left = 40
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end>
  end
  object ProdListEmbEsp: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "prod_list_itens"                           '
      ' where "cod_empresa" = :cod_empresa                       '
      '   and "num_prod_list" = :num_prod_list                   '
      '   and "seq_emb_esp" = :seq_emb_esp'
      ' order by "num_sequencia"')
    Left = 128
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_emb_esp'
        ParamType = ptUnknown
      end>
  end
  object ProdListPallets: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "prod_list_itens"                           '
      ' where "cod_empresa" = :cod_empresa                       '
      '   and "num_prod_list" = :num_prod_list                   '
      '   and "seq_pallet" = :seq_pallet'
      ' order by "num_sequencia"')
    Left = 216
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_prod_list'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seq_pallet'
        ParamType = ptUnknown
      end>
  end
end
