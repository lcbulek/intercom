inherited rl_ListaPrecos1: Trl_ListaPrecos1
  Left = 632
  Top = 332
  Caption = 'Lista de Pre'#231'os dos itens do pedido'
  FormStyle = fsNormal
  Visible = False
  PixelsPerInch = 96
  TextHeight = 14
  inherited tipo_produto: TIBQuery
    SQL.Strings = (
      'select *'
      'from "tipo_produto" a'
      'where exists (select * from "produto" b, "pedido_produto" c'
      '               where b."cod_empresa" = :cod_empresa'
      '                 and b."cod_cliente" = :cod_cliente'
      '                 and b."cod_fornecedor" = :cod_fornecedor'
      '                 and c."num_pedido" = :num_pedido'
      '                 and b."cod_tip_produto" = a."cod_tip_produto"'
      '                 and c."cod_empresa" = b."cod_empresa"'
      '                 and c."cod_produto" = b."cod_produto")'
      'order by a."den_tip_produto"')
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
      end
      item
        DataType = ftUnknown
        Name = 'num_pedido'
        ParamType = ptUnknown
      end>
  end
end
