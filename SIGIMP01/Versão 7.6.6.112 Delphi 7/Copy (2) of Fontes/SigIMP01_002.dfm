inherited fr_ParametrosComercial: Tfr_ParametrosComercial
  Left = 1083
  Top = 226
  HelpType = htKeyword
  HelpKeyword = '002'
  Caption = 'Par'#226'metros da empresa'
  ClientHeight = 473
  ClientWidth = 669
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 669
    Height = 437
    inherited pnlF1: TPanel
      Left = 606
      inherited ToolBar1: TToolBar
        Visible = False
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object pgcParametro_Comercial: TPageControl
      Left = 2
      Top = 2
      Width = 665
      Height = 433
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      TabWidth = 125
      object tbsPedido: TTabSheet
        Caption = 'Pedido'
        ImageIndex = 1
        object Label20: TLabel
          Left = 1
          Top = 42
          Width = 119
          Height = 14
          Caption = 'Dias para entrega'
          FocusControl = DBEdit3
        end
        object Label19: TLabel
          Left = 1
          Top = 3
          Width = 98
          Height = 14
          Caption = 'Pr'#243'ximo n'#250'mero'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 1
          Top = 82
          Width = 126
          Height = 14
          Caption = 'Dias para inspe'#231#227'o'
          FocusControl = DBEdit1
        end
        object DBEdit3: TDBEdit
          Left = 1
          Top = 59
          Width = 40
          Height = 22
          DataField = 'dias_entrega'
          DataSource = dsIBDataSet
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 1
          Top = 19
          Width = 57
          Height = 22
          DataField = 'prox_num_pedido'
          DataSource = dsIBDataSet
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 1
          Top = 98
          Width = 40
          Height = 22
          DataField = 'dias_inspecao'
          DataSource = dsIBDataSet
          TabOrder = 2
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Fatura'
        ImageIndex = 2
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 210
          Height = 14
          Caption = 'Modalidade de Embarque Default'
          FocusControl = DBLookupComboBox1
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 0
          Top = 16
          Width = 373
          Height = 22
          DataField = 'lkpTipoEmbarque'
          DataSource = dsIBDataSet
          TabOrder = 0
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Planilhas Modelos'
        ImageIndex = 3
        object lbLista: TLabel
          Left = 200
          Top = 35
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbPedido: TLabel
          Left = 200
          Top = 65
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbProduto: TLabel
          Left = 200
          Top = 134
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label1: TLabel
          Left = 2
          Top = 350
          Width = 245
          Height = 14
          Caption = 'Diret'#243'rio principal para documentos'
          FocusControl = dbeDir_Planilhas
        end
        object sbDirPlanProdutos: TSpeedButton
          Left = 406
          Top = 365
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            55555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFBFB
            0555557F555555557F55550FBFBFBFBF0555557F555555557F55550BFBFBFBFB
            0555557F555555557F55550FBFBFBFBF0555557F555555557F55550BFBFBFBFB
            0555557F555555557F55550FBFBFBFBF0555557FFFFFFFFF7555550000000000
            555555777777777755555550FBFB0555555555575FFF75555555555700007555
            5555555577775555555555555555555555555555555555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
          OnClick = sbDirPlanProdutosClick
        end
        object lbShipList: TLabel
          Left = 200
          Top = 101
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbItensEmb: TLabel
          Left = 200
          Top = 166
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbItensEmbFat: TLabel
          Left = 200
          Top = 198
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbPlanBranca: TLabel
          Left = 200
          Top = 9
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbAlteracaoPedidos: TLabel
          Left = 200
          Top = 294
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbAlteracaoFaturas: TLabel
          Left = 200
          Top = 326
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbModeloPedidos: TLabel
          Left = 200
          Top = 262
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbProdEmbarcados: TLabel
          Left = 200
          Top = 230
          Width = 100
          Height = 14
          AutoSize = False
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Button1: TButton
          Left = 0
          Top = 31
          Width = 190
          Height = 25
          Caption = 'Lista de Pre'#231'os'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 0
          Top = 63
          Width = 190
          Height = 25
          Caption = 'Importa'#231#227'o de Pedidos'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 0
          Top = 129
          Width = 190
          Height = 27
          Caption = 'Importa'#231#227'o de Produtos'
          TabOrder = 2
          OnClick = Button4Click
        end
        object dbeDir_Planilhas: TDBEdit
          Left = 2
          Top = 366
          Width = 400
          Height = 22
          DataField = 'dir_planilhas'
          DataSource = dsIBDataSet
          TabOrder = 3
        end
        object Button5: TButton
          Left = 0
          Top = 97
          Width = 190
          Height = 25
          Caption = 'Ship / Production List'
          TabOrder = 4
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 0
          Top = 0
          Width = 190
          Height = 23
          Caption = 'Planilha em Branco'
          TabOrder = 5
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 0
          Top = 161
          Width = 190
          Height = 25
          Caption = 'Produtos Embarcados Pedidos'
          TabOrder = 6
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 0
          Top = 193
          Width = 190
          Height = 25
          Caption = 'Produtos Embarcados Faturas'
          TabOrder = 7
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 0
          Top = 289
          Width = 190
          Height = 25
          Caption = 'Altera'#231#227'o de Pedidos'
          TabOrder = 9
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 0
          Top = 321
          Width = 190
          Height = 25
          Caption = 'Altera'#231#227'o de Faturas'
          TabOrder = 10
          OnClick = Button10Click
        end
        object Button3: TButton
          Left = 0
          Top = 257
          Width = 190
          Height = 25
          Caption = 'Modelo de Pedidos'
          TabOrder = 8
          OnClick = Button3Click
        end
        object Button11: TButton
          Left = 0
          Top = 225
          Width = 190
          Height = 25
          Caption = 'Produtos Embarc. Produtos'
          TabOrder = 11
          OnClick = Button11Click
        end
      end
      object tbsComissao: TTabSheet
        Caption = 'Comiss'#227'o'
        ImageIndex = 3
        object DBRadioGroup1: TDBRadioGroup
          Left = 8
          Top = 8
          Width = 489
          Height = 81
          Caption = 'Base Default para Comiss'#227'o'
          DataField = 'ies_base_comissao'
          DataSource = dsIBDataSet
          Items.Strings = (
            'Fornecedor -> pre'#231'o Real   e  Cliente  -> pre'#231'o Especial'
            'Fornecedor -> pre'#231'o Especial  e  Cliente -> pre'#231'o Real')
          TabOrder = 0
          Values.Strings = (
            '1'
            '2')
        end
      end
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 437
    Width = 669
    inherited ToolBar1: TToolBar
      Width = 669
      inherited ToolButton1: TToolButton
        Visible = False
      end
      inherited ToolButton2: TToolButton
        Visible = False
      end
      inherited ToolButton3: TToolButton
        Visible = False
      end
      inherited ToolButton4: TToolButton
        Visible = False
      end
      inherited ToolButton9: TToolButton
        Visible = False
      end
      inherited ToolButton5: TToolButton
        Visible = False
      end
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
        Enabled = False
        Visible = False
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
    Left = 307
    Top = 74
    inherited acGrade: TAction
      Visible = False
    end
  end
  inherited IBDataSet: TIBDataSet
    OnNewRecord = IBDataSetNewRecord
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
        'al"."mod_plan_pedido",'
      
        '   "parametro_comercial"."ies_base_comissao", "parametro_comerci' +
        'al"."mod_plan_itens_emb_prod")'
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
        '", :"mod_plan_pedido", :"ies_base_comissao",'
      '   :"mod_plan_itens_emb_prod")')
    RefreshSQL.Strings = (
      'Select *'
      'from "parametro_comercial" '
      'where'
      '  "parametro_comercial"."cod_empresa" = :"cod_empresa"')
    SelectSQL.Strings = (
      'select * from "parametro_comercial"'
      'where'
      '    "cod_empresa" = :cod_empresa')
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
        't",'
      '  "parametro_comercial"."mod_plan_pedido" = :"mod_plan_pedido",'
      
        '  "parametro_comercial"."ies_base_comissao" = :"ies_base_comissa' +
        'o",'
      
        '  "parametro_comercial"."mod_plan_itens_emb_prod" = :"mod_plan_i' +
        'tens_emb_prod"'
      'where'
      '  "parametro_comercial"."cod_empresa" = :"OLD_cod_empresa"')
    Left = 307
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"parametro_comercial"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object IBDataSetcod_moeda: TSmallintField
      DisplayLabel = 'Moeda'
      FieldName = 'cod_moeda'
      Origin = '"parametro_comercial"."cod_moeda"'
      Required = True
      Visible = False
    end
    object IBDataSetprox_num_pedido: TIntegerField
      DisplayLabel = 'Pr'#243'ximo n'#250'mero de pedido'
      FieldName = 'prox_num_pedido'
      Origin = '"parametro_comercial"."prox_num_pedido"'
      DisplayFormat = '##,##0'
    end
    object IBDataSetdias_entrega: TSmallintField
      DisplayLabel = 'Dias para entrega'
      FieldName = 'dias_entrega'
      Origin = '"parametro_comercial"."dias_entrega"'
    end
    object IBDataSeties_modelo: TIntegerField
      FieldName = 'ies_modelo'
      Origin = '"parametro_comercial"."ies_modelo"'
    end
    object IBDataSetmod_lista_preco: TBlobField
      FieldName = 'mod_lista_preco'
      Origin = '"parametro_comercial"."mod_lista_preco"'
      Size = 8
    end
    object IBDataSetmod_pedido_imp: TBlobField
      FieldName = 'mod_pedido_imp'
      Origin = '"parametro_comercial"."mod_pedido_imp"'
      Size = 8
    end
    object IBDataSetmod_romaneio: TBlobField
      FieldName = 'mod_romaneio'
      Origin = '"parametro_comercial"."mod_romaneio"'
      Size = 8
    end
    object IBDataSetdir_planilhas: TIBStringField
      DisplayLabel = 'Diret'#243'rio da Planilha de Produtos'
      FieldName = 'dir_planilhas'
      Origin = '"parametro_comercial"."dir_planilhas"'
      Size = 255
    end
    object IBDataSetmod_cad_produto: TBlobField
      FieldName = 'mod_cad_produto'
      Origin = '"parametro_comercial"."mod_cad_produto"'
      Size = 8
    end
    object IBDataSetcod_tip_embarque: TSmallintField
      FieldName = 'cod_tip_embarque'
      Origin = '"parametro_comercial"."cod_tip_embarque"'
    end
    object IBDataSetlkpTipoEmbarque: TStringField
      DisplayLabel = 'Tipo Embarque'
      FieldKind = fkLookup
      FieldName = 'lkpTipoEmbarque'
      LookupDataSet = tipo_embarque
      LookupKeyFields = 'cod_tip_embarque'
      LookupResultField = 'den_tip_embarque'
      KeyFields = 'cod_tip_embarque'
      Size = 80
      Lookup = True
    end
    object IBDataSetmod_ship_list: TBlobField
      FieldName = 'mod_ship_list'
      Origin = '"parametro_comercial"."mod_ship_list"'
      Size = 8
    end
    object IBDataSetmod_plan_excel: TBlobField
      FieldName = 'mod_plan_excel'
      Origin = '"parametro_comercial"."mod_plan_excel"'
      Size = 8
    end
    object IBDataSetmod_plan_itens_emb: TBlobField
      FieldName = 'mod_plan_itens_emb'
      Origin = '"parametro_comercial"."mod_plan_itens_emb"'
      Size = 8
    end
    object IBDataSetmod_plan_itens_emb_fat: TBlobField
      FieldName = 'mod_plan_itens_emb_fat'
      Origin = '"parametro_comercial"."mod_plan_itens_emb_fat"'
      Size = 8
    end
    object IBDataSetdias_inspecao: TSmallintField
      DisplayLabel = 'Dias para in'#237'cio inspe'#231#227'o'
      FieldName = 'dias_inspecao'
      Origin = '"parametro_comercial"."dias_inspecao"'
    end
    object IBDataSetmod_plan_alt_ped: TBlobField
      FieldName = 'mod_plan_alt_ped'
      Origin = 'parametro_comercial.mod_plan_alt_ped'
      Size = 8
    end
    object IBDataSetmod_plan_alt_fat: TBlobField
      FieldName = 'mod_plan_alt_fat'
      Origin = 'parametro_comercial.mod_plan_alt_fat'
      Size = 8
    end
    object IBDataSetserie_nf: TIBStringField
      FieldName = 'serie_nf'
      Origin = '"parametro_comercial"."serie_nf"'
      Size = 4
    end
    object IBDataSetmod_plan_pedido: TBlobField
      FieldName = 'mod_plan_pedido'
      Origin = '"parametro_comercial"."mod_plan_pedido"'
      Size = 8
    end
    object IBDataSeties_base_comissao: TIBStringField
      FieldName = 'ies_base_comissao'
      Origin = '"parametro_comercial"."ies_base_comissao"'
      FixedChar = True
      Size = 1
    end
    object IBDataSetmod_plan_itens_emb_prod: TBlobField
      FieldName = 'mod_plan_itens_emb_prod'
      Origin = '"parametro_comercial"."mod_plan_itens_emb_prod"'
      Size = 8
    end
  end
  inherited dsIBDataSet: TDataSource
    OnDataChange = dsIBDataSetDataChange
    Left = 343
    Top = 39
  end
  inherited QrAux: TIBQuery
    SQL.Strings = (
      '')
    Left = 340
    Top = 77
  end
  object JvSelectDirectory: TJvSelectDirectory
    Left = 318
    Top = 155
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Planilha Excel|*.xls'
    Left = 310
    Top = 115
  end
  object Pastas: TJvBrowseForFolderDialog
    Left = 344
    Top = 112
  end
  object tipo_embarque: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Active = True
    SQL.Strings = (
      'select * from "tipo_embarque"')
    Left = 382
    Top = 83
    object tipo_embarquecod_tip_embarque: TSmallintField
      FieldName = 'cod_tip_embarque'
      Origin = '"tipo_embarque"."cod_tip_embarque"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tipo_embarqueden_tip_embarque: TIBStringField
      FieldName = 'den_tip_embarque'
      Origin = '"tipo_embarque"."den_tip_embarque"'
      Size = 80
    end
  end
end
