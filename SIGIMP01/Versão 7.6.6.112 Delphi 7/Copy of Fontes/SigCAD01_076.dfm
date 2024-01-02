inherited fr_CadSitEmbalagem: Tfr_CadSitEmbalagem
  Left = 486
  Top = 198
  HelpType = htKeyword
  HelpKeyword = '076'
  Caption = 'Apar'#234'ncia e Situa'#231#227'o das Embalagens'
  ClientHeight = 607
  ClientWidth = 728
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 728
    Height = 570
    object Panel2: TPanel [0]
      Left = 2
      Top = 2
      Width = 724
      Height = 44
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object Label2: TLabel
        Left = 160
        Top = 2
        Width = 63
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object Label3: TLabel
        Left = 4
        Top = 2
        Width = 49
        Height = 14
        Caption = 'Produto'
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
      object edCodProduto: TEdit
        Left = 4
        Top = 16
        Width = 110
        Height = 22
        TabOrder = 0
        OnExit = edCodProdutoExit
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 16
        Width = 510
        Height = 22
        TabStop = False
        Color = clInfoBk
        DataField = 'den_produto'
        DataSource = ds_Produtos
        ReadOnly = True
        TabOrder = 1
      end
    end
    inherited Button1: TButton
      Left = 688
      Width = 30
      Action = fr_FmNavigator1.acF3
      Visible = False
    end
    object panGrupo: TPanel
      Left = 2
      Top = 46
      Width = 724
      Height = 236
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 2
      OnEnter = panGrupoEnter
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 720
        Height = 41
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label4: TLabel
          Left = 4
          Top = 1
          Width = 35
          Height = 14
          Caption = 'Grupo'
        end
        object dlcGrupo: TJvDBLookupCombo
          Left = 5
          Top = 14
          Width = 436
          Height = 21
          DataField = 'lkGrupo'
          DataSource = dsIBDataSet
          TabOrder = 0
        end
      end
      object Panel6: TPanel
        Left = 2
        Top = 150
        Width = 720
        Height = 84
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object JvDBGrid1: TJvDBGrid
          Left = 2
          Top = 2
          Width = 716
          Height = 80
          Align = alClient
          DataSource = dsIBDataSet
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'lkGrupo'
              Visible = True
            end>
        end
      end
      object Panel7: TPanel
        Left = 2
        Top = 43
        Width = 720
        Height = 107
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        object DBMemo1: TDBMemo
          Left = 2
          Top = 2
          Width = 716
          Height = 103
          Align = alClient
          DataField = 'txt_observacao'
          DataSource = dsIBDataSet
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object panComponente: TPanel
      Left = 2
      Top = 282
      Width = 724
      Height = 286
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 3
      OnEnter = panComponenteEnter
      object Panel8: TPanel
        Left = 2
        Top = 2
        Width = 720
        Height = 41
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label5: TLabel
          Left = 4
          Top = 1
          Width = 70
          Height = 14
          Caption = 'Componente'
        end
        object dlcComponente: TJvDBLookupCombo
          Left = 5
          Top = 14
          Width = 436
          Height = 21
          DataField = 'lkComponente'
          DataSource = ds_embalagem_situacao
          TabOrder = 0
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 443
          Top = 3
          Width = 221
          Height = 33
          Caption = 'Situa'#231#227'o'
          Columns = 2
          DataField = 'ies_situacao'
          DataSource = ds_embalagem_situacao
          Items.Strings = (
            'Em andamento'
            'Resolvido')
          TabOrder = 1
          Values.Strings = (
            'A'
            'R')
        end
      end
      object Panel9: TPanel
        Left = 2
        Top = 43
        Width = 720
        Height = 162
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object DBMemo2: TDBMemo
          Left = 2
          Top = 2
          Width = 716
          Height = 158
          Align = alClient
          DataField = 'txt_observacao'
          DataSource = ds_embalagem_situacao
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Panel10: TPanel
        Left = 2
        Top = 205
        Width = 720
        Height = 79
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        object JvDBGrid2: TJvDBGrid
          Left = 2
          Top = 2
          Width = 716
          Height = 75
          Align = alClient
          DataSource = ds_embalagem_situacao
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = []
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 18
          Columns = <
            item
              Expanded = False
              FieldName = 'lkComponente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'calSituacao'
              Visible = True
            end>
        end
      end
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 570
    Width = 728
    inherited ToolBar1: TToolBar
      Width = 728
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
  object BitBtn2: TBitBtn [2]
    Left = 559
    Top = 571
    Width = 47
    Height = 36
    Action = actImagens
    Caption = 'Imagens'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00844A4A00FF00FF00FF00FF00FF00FF00FF00
      FF00CECECE00FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDE
      B500FFDEB500FFD6AD00FFD6AD0084525200FF00FF00FF00FF00FF00FF00FF00
      FF00D6D6D600FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFDEB500FFDEB500FFD6AD0084525200FF00FF00FF00FF00FF00FF00FF00
      FF00D6D6D600C6E7B50084D68C0084D6940084DEA5008CE7B5008CE7B5008CE7
      C6008CE7C60094EFD600FFDEB50084525200FF00FF00FF00FF00FF00FF00FF00
      FF00D6D6D6007BA57300004A0000004A0000004A0000004A00000039000084DE
      B50094F7E70094F7E700FFDEB500945A5A00FF00FF00FF00FF00FF00FF00FF00
      FF00D6D6D6007B947300006300000039000000390000006300002984290073C6
      730073C6730073BD4A00FFDEB50094636300FF00FF00FF00FF00FF00FF00FF00
      FF00EFEFE700C6E7B5003994390000520000006300004AB54A0094942100E77B
      0000E77B0000E77B0000FFDEB50094636300FF00FF00FF00FF00FF00FF00FF00
      FF00EFEFE70094D68C0029A529000873080010730800BD520000BD520000C65A
      0000C65A0000C65A0000FFE7C600A56B6B00FF00FF00FF00FF00FF00FF00FF00
      FF00EFEFE700F7E7B500FFD67B00FFD67B00FFD67B00FFD67B00FFD67B00EFBD
      6B00BD631800AD420000FFE7C600A5736B00FF00FF00FF00FF00FF00FF00FF00
      FF00EFEFE700FFF7D600FFAD2100FFAD2100FFAD2100FFAD2100FFCE7300FFFF
      C600FFFFC600FFFFC600FFE7C600AD7B7300FF00FF00FF00FF00FF00FF00FF00
      FF00EFEFE700FFE7C600F7CE9C00F7CE9C00F7CE9C00F7CE9C00F7CE9C00F7CE
      9C00F7CE9C00F7CE9C00FFEFD600AD7B7300FF00FF00FF00FF00FF00FF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFEFD600FFEFD600AD847B00FF00FF00FF00FF00FF00FF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FF9C0000E77B000063636300FF00FF00FF00FF00FF00FF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7EF00FFC6630063636300FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      E700EFEFE70063636300FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphTop
  end
  inherited ActionList1: TActionList
    Left = 136
    Top = 144
    object actPesquisar: TAction
      Caption = 'F3'
      ImageIndex = 49
      ShortCut = 114
      OnExecute = actPesquisarExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
      ImageIndex = 16
    end
    object actImagens: TAction
      Caption = 'Imagens'
      ImageIndex = 94
      OnExecute = actImagensExecute
    end
  end
  inherited IBDataSet: TIBDataSet
    AfterScroll = IBDataSetAfterScroll
    BeforeDelete = IBDataSetBeforeDelete
    BeforeScroll = IBDataSetBeforeScroll
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem_visual"'
      'where'
      '  "embalagem_visual"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem_visual"."cod_produto" = :"OLD_cod_produto" and'
      
        '  "embalagem_visual"."cod_gru_embalagem" = :"OLD_cod_gru_embalag' +
        'em"')
    InsertSQL.Strings = (
      'insert into "embalagem_visual"'
      
        '  ("embalagem_visual"."cod_empresa", "embalagem_visual"."cod_pro' +
        'duto", '
      
        '   "embalagem_visual"."cod_gru_embalagem", "embalagem_visual"."t' +
        'xt_observacao")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"cod_gru_embalagem", :"txt_o' +
        'bservacao")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem_visual"."cod_empresa",'
      '  "embalagem_visual"."cod_produto",'
      '  "embalagem_visual"."cod_gru_embalagem",'
      '  "embalagem_visual"."txt_observacao"'
      'from "embalagem_visual" '
      'where'
      '  "embalagem_visual"."cod_empresa" = :"cod_empresa" and'
      '  "embalagem_visual"."cod_produto" = :"cod_produto" and'
      '  "embalagem_visual"."cod_gru_embalagem" = :"cod_gru_embalagem"')
    SelectSQL.Strings = (
      'select * from "embalagem_visual"'
      'where "cod_empresa" = :cod_empresa'
      '   and "cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "embalagem_visual"'
      'set'
      '  "embalagem_visual"."cod_empresa" = :"cod_empresa",'
      '  "embalagem_visual"."cod_produto" = :"cod_produto",'
      '  "embalagem_visual"."cod_gru_embalagem" = :"cod_gru_embalagem",'
      '  "embalagem_visual"."txt_observacao" = :"txt_observacao"'
      'where'
      '  "embalagem_visual"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem_visual"."cod_produto" = :"OLD_cod_produto" and'
      
        '  "embalagem_visual"."cod_gru_embalagem" = :"OLD_cod_gru_embalag' +
        'em"')
    Left = 168
    Top = 144
    object IBDataSetcod_empresa: TIntegerField
      FieldName = 'cod_empresa'
      Origin = '"embalagem_visual"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"embalagem_visual"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 15
    end
    object IBDataSetcod_gru_embalagem: TIntegerField
      FieldName = 'cod_gru_embalagem'
      Origin = '"embalagem_visual"."cod_gru_embalagem"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSettxt_observacao: TMemoField
      FieldName = 'txt_observacao'
      Origin = '"embalagem_visual"."txt_observacao"'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSetlkGrupo: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 75
      FieldKind = fkLookup
      FieldName = 'lkGrupo'
      LookupDataSet = embalagem_grupo
      LookupKeyFields = 'cod_gru_embalagem'
      LookupResultField = 'den_gru_embalagem'
      KeyFields = 'cod_gru_embalagem'
      Size = 75
      Lookup = True
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 167
    Top = 178
  end
  inherited QrAux: TIBQuery
    Left = 239
    Top = 146
  end
  object embalagem_grupo: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select * from "embalagem_grupo"')
    Left = 274
    Top = 146
    object embalagem_grupocod_gru_embalagem: TIntegerField
      FieldName = 'cod_gru_embalagem'
      Origin = '"embalagem_grupo"."cod_gru_embalagem"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object embalagem_grupoden_gru_embalagem: TIBStringField
      FieldName = 'den_gru_embalagem'
      Origin = '"embalagem_grupo"."den_gru_embalagem"'
      Size = 75
    end
  end
  object embalagem_componente: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    SQL.Strings = (
      'select *'
      'from "embalagem_componente" a'
      'where a."cod_gru_embalagem" = :cod_gru_embalagem')
    Left = 306
    Top = 146
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_gru_embalagem'
        ParamType = ptUnknown
      end>
    object embalagem_componentecod_componente: TIntegerField
      FieldName = 'cod_componente'
      Origin = '"embalagem_componente"."cod_componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object embalagem_componentecod_gru_embalagem: TIntegerField
      FieldName = 'cod_gru_embalagem'
      Origin = '"embalagem_componente"."cod_gru_embalagem"'
    end
    object embalagem_componenteden_componente: TIBStringField
      FieldName = 'den_componente'
      Origin = '"embalagem_componente"."den_componente"'
      Size = 100
    end
  end
  object embalagem_situacao: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterCancel = IBDataSetAfterCancel
    AfterClose = IBDataSetAfterClose
    AfterDelete = IBDataSetAfterDelete
    AfterPost = IBDataSetAfterPost
    BeforeInsert = embalagem_situacaoBeforeInsert
    BeforeOpen = IBDataSetBeforeOpen
    OnCalcFields = embalagem_situacaoCalcFields
    OnDeleteError = IBDataSetDeleteError
    OnEditError = IBDataSetDeleteError
    OnNewRecord = embalagem_situacaoNewRecord
    OnPostError = IBDataSetDeleteError
    OnUpdateError = IBDataSetUpdateError
    DeleteSQL.Strings = (
      'delete from "embalagem_situacao"'
      'where'
      '  "embalagem_situacao"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem_situacao"."cod_produto" = :"OLD_cod_produto" and'
      
        '  "embalagem_situacao"."cod_gru_embalagem" = :"OLD_cod_gru_embal' +
        'agem" and'
      '  "embalagem_situacao"."cod_componente" = :"OLD_cod_componente"')
    InsertSQL.Strings = (
      'insert into "embalagem_situacao"'
      
        '  ("embalagem_situacao"."cod_empresa", "embalagem_situacao"."cod' +
        '_produto", '
      
        '   "embalagem_situacao"."cod_gru_embalagem", "embalagem_situacao' +
        '"."cod_componente", '
      
        '   "embalagem_situacao"."txt_observacao", "embalagem_situacao"."' +
        'ies_situacao", '
      '   "embalagem_situacao"."dat_cadastro")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"cod_gru_embalagem", :"cod_c' +
        'omponente", '
      '   :"txt_observacao", :"ies_situacao", :"dat_cadastro")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem_situacao"."cod_empresa",'
      '  "embalagem_situacao"."cod_produto",'
      '  "embalagem_situacao"."cod_gru_embalagem",'
      '  "embalagem_situacao"."cod_componente",'
      '  "embalagem_situacao"."txt_observacao",'
      '  "embalagem_situacao"."ies_situacao",'
      '  "embalagem_situacao"."dat_cadastro"'
      'from "embalagem_situacao" '
      'where'
      '  "embalagem_situacao"."cod_empresa" = :"cod_empresa" and'
      '  "embalagem_situacao"."cod_produto" = :"cod_produto" and'
      
        '  "embalagem_situacao"."cod_gru_embalagem" = :"cod_gru_embalagem' +
        '" and'
      '  "embalagem_situacao"."cod_componente" = :"cod_componente"')
    SelectSQL.Strings = (
      'select * from "embalagem_situacao"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto'
      '  and "cod_gru_embalagem" = :cod_gru_embalagem')
    ModifySQL.Strings = (
      'update "embalagem_situacao"'
      'set'
      '  "embalagem_situacao"."cod_empresa" = :"cod_empresa",'
      '  "embalagem_situacao"."cod_produto" = :"cod_produto",'
      
        '  "embalagem_situacao"."cod_gru_embalagem" = :"cod_gru_embalagem' +
        '",'
      '  "embalagem_situacao"."cod_componente" = :"cod_componente",'
      '  "embalagem_situacao"."txt_observacao" = :"txt_observacao",'
      '  "embalagem_situacao"."ies_situacao" = :"ies_situacao",'
      '  "embalagem_situacao"."dat_cadastro" = :"dat_cadastro"'
      'where'
      '  "embalagem_situacao"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem_situacao"."cod_produto" = :"OLD_cod_produto" and'
      
        '  "embalagem_situacao"."cod_gru_embalagem" = :"OLD_cod_gru_embal' +
        'agem" and'
      '  "embalagem_situacao"."cod_componente" = :"OLD_cod_componente"')
    Left = 202
    Top = 145
    object embalagem_situacaocod_empresa: TIntegerField
      FieldName = 'cod_empresa'
      Origin = '"embalagem_situacao"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object embalagem_situacaocod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"embalagem_situacao"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 15
    end
    object embalagem_situacaocod_gru_embalagem: TIntegerField
      FieldName = 'cod_gru_embalagem'
      Origin = '"embalagem_situacao"."cod_gru_embalagem"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object embalagem_situacaocod_componente: TIntegerField
      FieldName = 'cod_componente'
      Origin = '"embalagem_situacao"."cod_componente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object embalagem_situacaolkComponente: TStringField
      DisplayLabel = 'Componente'
      DisplayWidth = 75
      FieldKind = fkLookup
      FieldName = 'lkComponente'
      LookupDataSet = embalagem_componente
      LookupKeyFields = 'cod_componente'
      LookupResultField = 'den_componente'
      KeyFields = 'cod_componente'
      Size = 75
      Lookup = True
    end
    object embalagem_situacaotxt_observacao: TMemoField
      DisplayWidth = 37
      FieldName = 'txt_observacao'
      Origin = '"embalagem_situacao"."txt_observacao"'
      Visible = False
      BlobType = ftMemo
      Size = 8
    end
    object embalagem_situacaoies_situacao: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 10
      FieldName = 'ies_situacao'
      Origin = '"embalagem_situacao"."ies_situacao"'
      FixedChar = True
      Size = 1
    end
    object embalagem_situacaodat_cadastro: TDateField
      FieldName = 'dat_cadastro'
      Origin = '"embalagem_situacao"."dat_cadastro"'
      Visible = False
    end
    object embalagem_situacaocalSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'calSituacao'
      Size = 12
      Calculated = True
    end
  end
  object ds_embalagem_situacao: TDataSource
    DataSet = embalagem_situacao
    Left = 202
    Top = 177
  end
  object Produtos: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterScroll = ProdutosAfterScroll
    BeforeOpen = ProdutosBeforeOpen
    SQL.Strings = (
      'select p."cod_produto", p."den_produto", p."ies_situacao",  '
      '       p."cod_uni_medida", p."pes_unitario", p."cod_cliente"'
      'from "produto" p'
      'where p."cod_empresa" = :cod_empresa                        '
      '  and p."cod_produto" = :cod_produto'
      'order by p."den_produto"')
    Left = 172
    Top = 113
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
    object Produtoscod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"produto"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
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
    object Produtoscod_cliente: TIBStringField
      FieldName = 'cod_cliente'
      Origin = '"produto_cliente"."cod_cliente"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
  end
  object ds_Produtos: TDataSource
    DataSet = Produtos
    Left = 212
    Top = 113
  end
end
