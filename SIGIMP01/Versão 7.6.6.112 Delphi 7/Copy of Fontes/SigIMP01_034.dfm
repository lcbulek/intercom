object dmPedido_cancelar: TdmPedido_cancelar
  OldCreateOrder = False
  Left = 649
  Top = 277
  Height = 285
  Width = 268
  object sqlUpdate_Pedido: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'update "pedido" set "ies_situacao" = '#39'C'#39
      'where'
      '    "cod_empresa" = :cod_empresa'
      'and "num_pedido"  = :num_pedido')
    Transaction = dmConnection.TransSig
    Left = 54
    Top = 12
  end
  object sqlUpdate_Pedido_Produto: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'update "pedido_produto"'
      '   set "qtd_cancelada" = "qtd_cancelada" + "qtd_pendente",'
      '       "qtd_pendente"  = 0'
      'where'
      '    "cod_empresa"   = :cod_empresa'
      'and "num_pedido"    = :num_pedido'
      'and "num_sequencia" = :num_sequencia'
      'and "qtd_pendente" <> 0')
    Transaction = dmConnection.TransSig
    Left = 54
    Top = 66
  end
end
