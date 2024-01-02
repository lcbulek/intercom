inherited fr_CadEmbalagem: Tfr_CadEmbalagem
  Left = 805
  Top = 252
  HelpType = htKeyword
  HelpKeyword = '050'
  Caption = 'Embalagem'
  ClientHeight = 539
  ClientWidth = 588
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 588
    Height = 502
    object pcEmbalagem: TPageControl
      Left = 2
      Top = 2
      Width = 584
      Height = 498
      ActivePage = tsEmbalagem
      Align = alClient
      TabOrder = 0
      OnChange = pcEmbalagemChange
      object tsEmbalagem: TTabSheet
        Caption = 'Embalagem'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 576
          Height = 50
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label1: TLabel
            Left = 3
            Top = 6
            Width = 42
            Height = 14
            Caption = 'C'#243'digo'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 132
            Top = 6
            Width = 63
            Height = 14
            Caption = 'Descri'#231#227'o'
          end
          object DBEdit1: TDBEdit
            Left = 3
            Top = 22
            Width = 126
            Height = 16
            TabStop = False
            BorderStyle = bsNone
            Color = clInfoBk
            DataField = 'cod_produto'
            DataSource = fr_CadProduto.dsIBDataSet
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 132
            Top = 22
            Width = 437
            Height = 16
            TabStop = False
            BorderStyle = bsNone
            Color = clInfoBk
            DataField = 'den_produto'
            DataSource = fr_CadProduto.dsIBDataSet
            ReadOnly = True
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 274
          Width = 576
          Height = 195
          Align = alBottom
          Caption = 'Quantidade de produtos nas caixas'
          TabOrder = 2
          object Panel6: TPanel
            Left = 2
            Top = 16
            Width = 572
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label7: TLabel
              Left = 5
              Top = 3
              Width = 42
              Height = 14
              Caption = 'Master'
            end
            object Label9: TLabel
              Left = 221
              Top = 3
              Width = 35
              Height = 14
              Caption = 'Inner'
            end
            object Label12: TLabel
              Left = 112
              Top = 3
              Width = 77
              Height = 14
              Caption = 'Cad. Master'
            end
            object Label23: TLabel
              Left = 331
              Top = 3
              Width = 70
              Height = 14
              Caption = 'Cad. Inner'
            end
            object DBEdit6: TDBEdit
              Left = 5
              Top = 16
              Width = 94
              Height = 22
              DataField = 'qtd_master'
              DataSource = dsIBDataSet
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 221
              Top = 16
              Width = 94
              Height = 22
              DataField = 'qtd_inner'
              DataSource = dsIBDataSet
              TabOrder = 2
            end
            object JvDBDatePickerEdit1: TJvDBDatePickerEdit
              Left = 113
              Top = 16
              Width = 93
              Height = 22
              AllowNoDate = True
              DataField = 'dat_cad_master'
              DataSource = dsIBDataSet
              DateFormat = 'dd.MM.yyyy'
              DateSeparator = '.'
              StoreDateFormat = True
              TabOrder = 1
            end
            object JvDBDatePickerEdit3: TJvDBDatePickerEdit
              Left = 329
              Top = 16
              Width = 96
              Height = 22
              AllowNoDate = True
              DataField = 'dat_cad_inner'
              DataSource = dsIBDataSet
              DateFormat = 'dd.MM.yyyy'
              DateSeparator = '.'
              StoreDateFormat = True
              TabOrder = 3
            end
          end
          object GroupBox5: TGroupBox
            Left = 2
            Top = 56
            Width = 572
            Height = 137
            Align = alClient
            Caption = 'Observa'#231#245'es'
            TabOrder = 1
            object DBMemo3: TDBMemo
              Left = 2
              Top = 16
              Width = 568
              Height = 119
              Align = alClient
              DataField = 'obs_caixas'
              DataSource = dsIBDataSet
              MaxLength = 255
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 50
          Width = 576
          Height = 224
          Align = alClient
          Caption = 'Dimens'#245'es'
          TabOrder = 1
          object Panel4: TPanel
            Left = 2
            Top = 16
            Width = 572
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              Left = 5
              Top = 1
              Width = 77
              Height = 14
              Caption = 'Altura (cm)'
              FocusControl = dbeAltura
            end
            object Label4: TLabel
              Left = 112
              Top = 1
              Width = 84
              Height = 14
              Caption = 'Largura (cm)'
              FocusControl = DBEdit3
            end
            object Label5: TLabel
              Left = 220
              Top = 1
              Width = 105
              Height = 14
              Caption = 'Comprimento(cm)'
              FocusControl = DBEdit4
            end
            object Label6: TLabel
              Left = 348
              Top = 1
              Width = 77
              Height = 14
              Caption = 'Volume (m'#179')'
              FocusControl = DBEdit5
            end
            object Label10: TLabel
              Left = 452
              Top = 1
              Width = 98
              Height = 14
              Caption = 'Cad. Dimens'#245'es'
            end
            object dbeAltura: TDBEdit
              Left = 5
              Top = 17
              Width = 97
              Height = 22
              DataField = 'altura'
              DataSource = dsIBDataSet
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 112
              Top = 17
              Width = 97
              Height = 22
              DataField = 'largura'
              DataSource = dsIBDataSet
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 220
              Top = 17
              Width = 97
              Height = 22
              DataField = 'profundidade'
              DataSource = dsIBDataSet
              TabOrder = 2
            end
            object DBEdit5: TDBEdit
              Left = 350
              Top = 17
              Width = 97
              Height = 22
              TabStop = False
              BorderStyle = bsNone
              Color = clInfoBk
              DataField = 'calVolume'
              DataSource = dsIBDataSet
              ReadOnly = True
              TabOrder = 3
            end
            object JvDBDatePickerEdit4: TJvDBDatePickerEdit
              Left = 452
              Top = 17
              Width = 96
              Height = 22
              AllowNoDate = True
              DataField = 'dat_cad_dimensoes'
              DataSource = dsIBDataSet
              DateFormat = 'dd.MM.yyyy'
              DateSeparator = '.'
              StoreDateFormat = True
              TabOrder = 4
            end
          end
          object Panel5: TPanel
            Left = 2
            Top = 182
            Width = 572
            Height = 40
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              Left = 5
              Top = 2
              Width = 98
              Height = 14
              Caption = 'Peso Bruto(Kg)'
            end
            object Label22: TLabel
              Left = 113
              Top = 2
              Width = 63
              Height = 14
              Caption = 'Cad. Peso'
            end
            object Label11: TLabel
              Left = 210
              Top = 2
              Width = 112
              Height = 14
              Caption = 'Pes Cx Vazia(Kg)'
              FocusControl = DBEdit9
            end
            object DBEdit7: TDBEdit
              Left = 5
              Top = 15
              Width = 97
              Height = 22
              DataField = 'pes_bruto_cx'
              DataSource = dsIBDataSet
              TabOrder = 0
            end
            object JvDBDatePickerEdit2: TJvDBDatePickerEdit
              Left = 111
              Top = 15
              Width = 96
              Height = 22
              AllowNoDate = True
              DataField = 'dat_cad_peso'
              DataSource = dsIBDataSet
              DateFormat = 'dd.MM.yyyy'
              DateSeparator = '.'
              StoreDateFormat = True
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 210
              Top = 15
              Width = 111
              Height = 22
              Color = clInfoBk
              DataField = 'peso_unitario'
              DataSource = dsIBDataSet
              ReadOnly = True
              TabOrder = 2
            end
          end
          object GroupBox3: TGroupBox
            Left = 2
            Top = 57
            Width = 572
            Height = 125
            Align = alClient
            Caption = 'Observa'#231#245'es'
            TabOrder = 1
            object DBMemo1: TDBMemo
              Left = 2
              Top = 16
              Width = 568
              Height = 107
              Align = alClient
              DataField = 'observacao'
              DataSource = dsIBDataSet
              MaxLength = 255
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
      end
      object tsHistorico: TTabSheet
        Caption = 'Hist'#243'rico'
        ImageIndex = 2
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 576
          Height = 50
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label24: TLabel
            Left = 3
            Top = 6
            Width = 42
            Height = 14
            Caption = 'C'#243'digo'
            FocusControl = DBEdit17
          end
          object Label25: TLabel
            Left = 132
            Top = 6
            Width = 63
            Height = 14
            Caption = 'Descri'#231#227'o'
          end
          object DBEdit17: TDBEdit
            Left = 3
            Top = 22
            Width = 126
            Height = 16
            TabStop = False
            BorderStyle = bsNone
            Color = clInfoBk
            DataField = 'cod_produto'
            DataSource = fr_CadProduto.dsIBDataSet
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit20: TDBEdit
            Left = 132
            Top = 22
            Width = 437
            Height = 16
            TabStop = False
            BorderStyle = bsNone
            Color = clInfoBk
            DataField = 'den_produto'
            DataSource = fr_CadProduto.dsIBDataSet
            ReadOnly = True
            TabOrder = 1
          end
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 50
          Width = 576
          Height = 179
          Align = alTop
          Caption = 'Dimens'#245'es'
          TabOrder = 1
          object Panel8: TPanel
            Left = 2
            Top = 16
            Width = 572
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label26: TLabel
              Left = 5
              Top = 1
              Width = 77
              Height = 14
              Caption = 'Altura (cm)'
              FocusControl = DBEdit21
            end
            object Label27: TLabel
              Left = 112
              Top = 1
              Width = 84
              Height = 14
              Caption = 'Largura (cm)'
              FocusControl = DBEdit22
            end
            object Label28: TLabel
              Left = 220
              Top = 1
              Width = 105
              Height = 14
              Caption = 'Comprimento(cm)'
              FocusControl = DBEdit23
            end
            object Label29: TLabel
              Left = 348
              Top = 1
              Width = 77
              Height = 14
              Caption = 'Volume (m'#179')'
              FocusControl = DBEdit24
            end
            object Label30: TLabel
              Left = 452
              Top = 1
              Width = 98
              Height = 14
              Caption = 'Cad. Dimens'#245'es'
            end
            object DBEdit21: TDBEdit
              Left = 5
              Top = 17
              Width = 97
              Height = 22
              DataField = 'altura'
              DataSource = ds_Embalagem_Hist
              TabOrder = 0
            end
            object DBEdit22: TDBEdit
              Left = 112
              Top = 17
              Width = 97
              Height = 22
              DataField = 'largura'
              DataSource = ds_Embalagem_Hist
              TabOrder = 1
            end
            object DBEdit23: TDBEdit
              Left = 220
              Top = 17
              Width = 97
              Height = 22
              DataField = 'profundidade'
              DataSource = ds_Embalagem_Hist
              TabOrder = 2
            end
            object DBEdit24: TDBEdit
              Left = 350
              Top = 17
              Width = 97
              Height = 22
              TabStop = False
              BorderStyle = bsNone
              Color = clInfoBk
              DataField = 'volume'
              DataSource = ds_Embalagem_Hist
              ReadOnly = True
              TabOrder = 3
            end
            object JvDBDatePickerEdit5: TJvDBDatePickerEdit
              Left = 452
              Top = 17
              Width = 97
              Height = 22
              AllowNoDate = True
              DataField = 'dat_cad_dimensoes'
              DataSource = ds_Embalagem_Hist
              DateFormat = 'dd.MM.yyyy'
              DateSeparator = '.'
              StoreDateFormat = True
              TabOrder = 4
            end
          end
          object Panel9: TPanel
            Left = 2
            Top = 137
            Width = 572
            Height = 40
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Label31: TLabel
              Left = 5
              Top = 2
              Width = 98
              Height = 14
              Caption = 'Peso Bruto(Kg)'
            end
            object Label32: TLabel
              Left = 113
              Top = 2
              Width = 63
              Height = 14
              Caption = 'Cad. Peso'
            end
            object Label13: TLabel
              Left = 212
              Top = 2
              Width = 112
              Height = 14
              Caption = 'Pes Cx Vazia(Kg)'
              FocusControl = DBEdit10
            end
            object DBEdit25: TDBEdit
              Left = 5
              Top = 15
              Width = 97
              Height = 22
              DataField = 'pes_bruto_cx'
              DataSource = ds_Embalagem_Hist
              TabOrder = 0
            end
            object JvDBDatePickerEdit6: TJvDBDatePickerEdit
              Left = 111
              Top = 15
              Width = 96
              Height = 22
              AllowNoDate = True
              DataField = 'dat_cad_peso'
              DataSource = ds_Embalagem_Hist
              DateFormat = 'dd.MM.yyyy'
              DateSeparator = '.'
              StoreDateFormat = True
              TabOrder = 1
            end
            object DBEdit10: TDBEdit
              Left = 212
              Top = 15
              Width = 109
              Height = 22
              DataField = 'peso_unitario'
              DataSource = ds_Embalagem_Hist
              TabOrder = 2
            end
          end
          object GroupBox8: TGroupBox
            Left = 2
            Top = 57
            Width = 572
            Height = 80
            Align = alClient
            Caption = 'Observa'#231#245'es'
            TabOrder = 2
            object DBMemo4: TDBMemo
              Left = 2
              Top = 16
              Width = 568
              Height = 62
              Align = alClient
              DataField = 'observacao'
              DataSource = ds_Embalagem_Hist
              MaxLength = 255
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object GroupBox9: TGroupBox
          Left = 0
          Top = 229
          Width = 576
          Height = 140
          Align = alTop
          Caption = 'Quantidade de produtos nas caixas'
          TabOrder = 2
          object Panel10: TPanel
            Left = 2
            Top = 16
            Width = 572
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label33: TLabel
              Left = 5
              Top = 3
              Width = 42
              Height = 14
              Caption = 'Master'
            end
            object Label34: TLabel
              Left = 221
              Top = 3
              Width = 35
              Height = 14
              Caption = 'Inner'
            end
            object Label35: TLabel
              Left = 112
              Top = 3
              Width = 77
              Height = 14
              Caption = 'Cad. Master'
            end
            object Label36: TLabel
              Left = 331
              Top = 3
              Width = 70
              Height = 14
              Caption = 'Cad. Inner'
            end
            object DBEdit26: TDBEdit
              Left = 5
              Top = 16
              Width = 94
              Height = 22
              DataField = 'qtd_master'
              DataSource = ds_Embalagem_Hist
              TabOrder = 0
            end
            object DBEdit27: TDBEdit
              Left = 221
              Top = 16
              Width = 94
              Height = 22
              DataField = 'qtd_inner'
              DataSource = ds_Embalagem_Hist
              TabOrder = 2
            end
            object JvDBDatePickerEdit7: TJvDBDatePickerEdit
              Left = 113
              Top = 16
              Width = 93
              Height = 22
              AllowNoDate = True
              DataField = 'dat_cad_master'
              DataSource = ds_Embalagem_Hist
              DateFormat = 'dd.MM.yyyy'
              DateSeparator = '.'
              StoreDateFormat = True
              TabOrder = 1
            end
            object JvDBDatePickerEdit8: TJvDBDatePickerEdit
              Left = 329
              Top = 16
              Width = 96
              Height = 22
              AllowNoDate = True
              DataField = 'dat_cad_inner'
              DataSource = ds_Embalagem_Hist
              DateFormat = 'dd.MM.yyyy'
              DateSeparator = '.'
              StoreDateFormat = True
              TabOrder = 3
            end
          end
          object GroupBox10: TGroupBox
            Left = 2
            Top = 56
            Width = 572
            Height = 82
            Align = alClient
            Caption = 'Observa'#231#245'es'
            TabOrder = 1
            object DBMemo5: TDBMemo
              Left = 2
              Top = 16
              Width = 568
              Height = 64
              Align = alClient
              DataField = 'obs_caixas'
              DataSource = ds_Embalagem_Hist
              MaxLength = 255
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 369
          Width = 576
          Height = 100
          Align = alClient
          DataSource = ds_Embalagem_Hist
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 3
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'dat_cadastro'
              Title.Caption = 'Dat.Hist'#243'rico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'altura'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'largura'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'profundidade'
              Title.Caption = 'Profund.'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'volume'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtd_master'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qtd_inner'
              Visible = True
            end>
        end
      end
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 502
    Width = 588
    inherited ToolBar1: TToolBar
      Width = 588
    end
    inherited ActionList1: TActionList
      Left = 286
      Top = 10
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
    inherited ImageList1: TImageList
      Left = 323
      Top = 12
    end
  end
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforePost = IBDataSetBeforePost
    OnCalcFields = IBDataSetCalcFields
    OnNewRecord = IBDataSetNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    InsertSQL.Strings = (
      'insert into "embalagem"'
      
        '  ("embalagem"."cod_empresa", "embalagem"."cod_produto", "embala' +
        'gem"."peso_unitario", '
      
        '   "embalagem"."altura", "embalagem"."largura", "embalagem"."pro' +
        'fundidade", '
      
        '   "embalagem"."volume", "embalagem"."area", "embalagem"."qtd_ma' +
        'ster", '
      
        '   "embalagem"."qtd_inner", "embalagem"."observacao", "embalagem' +
        '"."dat_cadastro", '
      
        '   "embalagem"."dat_cad_dimensoes", "embalagem"."dat_cad_peso", ' +
        '"embalagem"."dat_cad_master", '
      
        '   "embalagem"."dat_cad_inner", "embalagem"."obs_caixas", "embal' +
        'agem"."pes_bruto_cx")'
      'values'
      
        '  (:"cod_empresa", :"cod_produto", :"peso_unitario", :"altura", ' +
        ':"largura", '
      
        '   :"profundidade", :"volume", :"area", :"qtd_master", :"qtd_inn' +
        'er", :"observacao", '
      
        '   :"dat_cadastro", :"dat_cad_dimensoes", :"dat_cad_peso", :"dat' +
        '_cad_master", '
      '   :"dat_cad_inner", :"obs_caixas", :"pes_bruto_cx")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem"."cod_empresa",'
      '  "embalagem"."cod_produto",'
      '  "embalagem"."peso_unitario",'
      '  "embalagem"."altura",'
      '  "embalagem"."largura",'
      '  "embalagem"."profundidade",'
      '  "embalagem"."volume",'
      '  "embalagem"."area",'
      '  "embalagem"."qtd_master",'
      '  "embalagem"."qtd_inner",'
      '  "embalagem"."observacao",'
      '  "embalagem"."dat_cadastro",'
      '  "embalagem"."dat_cad_dimensoes",'
      '  "embalagem"."dat_cad_peso",'
      '  "embalagem"."dat_cad_master",'
      '  "embalagem"."dat_cad_inner",'
      '  "embalagem"."obs_caixas",'
      '  "embalagem"."pes_bruto_cx"'
      'from "embalagem" '
      'where'
      '  "embalagem"."cod_empresa" = :"cod_empresa" and'
      '  "embalagem"."cod_produto" = :"cod_produto"')
    SelectSQL.Strings = (
      'select * from "embalagem"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    ModifySQL.Strings = (
      'update "embalagem"'
      'set'
      '  "embalagem"."cod_empresa" = :"cod_empresa",'
      '  "embalagem"."cod_produto" = :"cod_produto",'
      '  "embalagem"."peso_unitario" = :"peso_unitario",'
      '  "embalagem"."altura" = :"altura",'
      '  "embalagem"."largura" = :"largura",'
      '  "embalagem"."profundidade" = :"profundidade",'
      '  "embalagem"."volume" = :"volume",'
      '  "embalagem"."area" = :"area",'
      '  "embalagem"."qtd_master" = :"qtd_master",'
      '  "embalagem"."qtd_inner" = :"qtd_inner",'
      '  "embalagem"."observacao" = :"observacao",'
      '  "embalagem"."dat_cadastro" = :"dat_cadastro",'
      '  "embalagem"."dat_cad_dimensoes" = :"dat_cad_dimensoes",'
      '  "embalagem"."dat_cad_peso" = :"dat_cad_peso",'
      '  "embalagem"."dat_cad_master" = :"dat_cad_master",'
      '  "embalagem"."dat_cad_inner" = :"dat_cad_inner",'
      '  "embalagem"."obs_caixas" = :"obs_caixas",'
      '  "embalagem"."pes_bruto_cx" = :"pes_bruto_cx"'
      'where'
      '  "embalagem"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "embalagem"."cod_produto" = :"OLD_cod_produto"')
    Left = 327
    Top = 32
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"embalagem"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object IBDataSetpeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem"."peso_unitario"'
      DisplayFormat = '#,##0.00000'
    end
    object IBDataSetpes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem"."pes_bruto_cx"'
      DisplayFormat = '#,##0.00'
    end
    object IBDataSetaltura: TIBBCDField
      FieldName = 'altura'
      Origin = '"embalagem"."altura"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object IBDataSetlargura: TIBBCDField
      FieldName = 'largura'
      Origin = '"embalagem"."largura"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object IBDataSetprofundidade: TIBBCDField
      FieldName = 'profundidade'
      Origin = '"embalagem"."profundidade"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object IBDataSetvolume: TIBBCDField
      FieldName = 'volume'
      Origin = '"embalagem"."volume"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object IBDataSetarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem"."area"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object IBDataSetobservacao: TIBStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'observacao'
      Origin = '"embalagem"."observacao"'
      Size = 255
    end
    object IBDataSetdat_cadastro: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"embalagem"."dat_cadastro"'
    end
    object IBDataSetdat_cad_dimensoes: TDateField
      DisplayLabel = 'Cad.Dimens'#245'es'
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem"."dat_cad_dimensoes"'
    end
    object IBDataSetdat_cad_peso: TDateField
      DisplayLabel = 'Cad.Peso'
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem"."dat_cad_peso"'
    end
    object IBDataSetdat_cad_master: TDateField
      DisplayLabel = 'Cad.Master'
      FieldName = 'dat_cad_master'
      Origin = '"embalagem"."dat_cad_master"'
    end
    object IBDataSetdat_cad_inner: TDateField
      DisplayLabel = 'Cad.Inner'
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem"."dat_cad_inner"'
    end
    object IBDataSetobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem"."obs_caixas"'
      Size = 255
    end
    object IBDataSetcalVolume: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calVolume'
      DisplayFormat = '##,###,##0.0000'
      Calculated = True
    end
    object IBDataSetcalArea: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calArea'
      Calculated = True
    end
    object IBDataSetqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object IBDataSetqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem"."qtd_inner"'
      Precision = 9
      Size = 4
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 329
    Top = 69
  end
  inherited QrAux: TIBQuery
    Left = 359
  end
  object dsAux: TDataSource
    DataSet = QrAux
    Left = 361
    Top = 70
  end
  object Embalagem_Hist: TIBDataSet
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    AfterDelete = Embalagem_HistAfterDelete
    AfterOpen = Embalagem_HistAfterOpen
    AfterPost = Embalagem_HistAfterPost
    OnNewRecord = Embalagem_HistNewRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from "embalagem_hist"'
      'where'
      '  "embalagem_hist"."sequencia" = :"OLD_sequencia"')
    InsertSQL.Strings = (
      'insert into "embalagem_hist"'
      
        '  ("embalagem_hist"."sequencia", "embalagem_hist"."cod_empresa",' +
        ' '
      '"embalagem_hist"."cod_produto", '
      '   "embalagem_hist"."peso_unitario", "embalagem_hist"."altura", '
      '"embalagem_hist"."largura", '
      '   "embalagem_hist"."profundidade", "embalagem_hist"."volume", '
      '"embalagem_hist"."area", '
      '   "embalagem_hist"."qtd_master", "embalagem_hist"."qtd_inner", '
      '"embalagem_hist"."observacao", '
      
        '   "embalagem_hist"."dat_cadastro", "embalagem_hist"."dat_cad_di' +
        'mensoes", '
      
        '   "embalagem_hist"."dat_cad_peso", "embalagem_hist"."dat_cad_ma' +
        'ster", '
      
        '   "embalagem_hist"."dat_cad_inner", "embalagem_hist"."obs_caixa' +
        's", '
      '   "embalagem_hist"."pes_bruto_cx")'
      'values'
      
        '  (:"sequencia", :"cod_empresa", :"cod_produto", :"peso_unitario' +
        '", :"altura", '
      
        '   :"largura", :"profundidade", :"volume", :"area", :"qtd_master' +
        '", :"qtd_inner", '
      
        '   :"observacao", :"dat_cadastro", :"dat_cad_dimensoes", :"dat_c' +
        'ad_peso", '
      
        '   :"dat_cad_master", :"dat_cad_inner", :"obs_caixas", :"pes_bru' +
        'to_cx")')
    RefreshSQL.Strings = (
      'Select '
      '  "embalagem_hist"."sequencia",'
      '  "embalagem_hist"."cod_empresa",'
      '  "embalagem_hist"."cod_produto",'
      '  "embalagem_hist"."peso_unitario",'
      '  "embalagem_hist"."altura",'
      '  "embalagem_hist"."largura",'
      '  "embalagem_hist"."profundidade",'
      '  "embalagem_hist"."volume",'
      '  "embalagem_hist"."area",'
      '  "embalagem_hist"."qtd_master",'
      '  "embalagem_hist"."qtd_inner",'
      '  "embalagem_hist"."observacao",'
      '  "embalagem_hist"."dat_cadastro",'
      '  "embalagem_hist"."dat_cad_dimensoes",'
      '  "embalagem_hist"."dat_cad_peso",'
      '  "embalagem_hist"."dat_cad_master",'
      '  "embalagem_hist"."dat_cad_inner",'
      '  "embalagem_hist"."obs_caixas",'
      '  "embalagem_hist"."pes_bruto_cx"'
      'from "embalagem_hist" '
      'where'
      '  "embalagem_hist"."sequencia" = :"sequencia"')
    SelectSQL.Strings = (
      'select * from "embalagem_hist"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto'
      'order by "dat_cadastro" desc')
    ModifySQL.Strings = (
      'update "embalagem_hist"'
      'set'
      '  "embalagem_hist"."sequencia" = :"sequencia",'
      '  "embalagem_hist"."cod_empresa" = :"cod_empresa",'
      '  "embalagem_hist"."cod_produto" = :"cod_produto",'
      '  "embalagem_hist"."peso_unitario" = :"peso_unitario",'
      '  "embalagem_hist"."altura" = :"altura",'
      '  "embalagem_hist"."largura" = :"largura",'
      '  "embalagem_hist"."profundidade" = :"profundidade",'
      '  "embalagem_hist"."volume" = :"volume",'
      '  "embalagem_hist"."area" = :"area",'
      '  "embalagem_hist"."qtd_master" = :"qtd_master",'
      '  "embalagem_hist"."qtd_inner" = :"qtd_inner",'
      '  "embalagem_hist"."observacao" = :"observacao",'
      '  "embalagem_hist"."dat_cadastro" = :"dat_cadastro",'
      '  "embalagem_hist"."dat_cad_dimensoes" = :"dat_cad_dimensoes",'
      '  "embalagem_hist"."dat_cad_peso" = :"dat_cad_peso",'
      '  "embalagem_hist"."dat_cad_master" = :"dat_cad_master",'
      '  "embalagem_hist"."dat_cad_inner" = :"dat_cad_inner",'
      '  "embalagem_hist"."obs_caixas" = :"obs_caixas",'
      '  "embalagem_hist"."pes_bruto_cx" = :"pes_bruto_cx"'
      'where'
      '  "embalagem_hist"."sequencia" = :"OLD_sequencia"')
    Left = 402
    Top = 40
    object Embalagem_Histsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = '"embalagem_hist"."sequencia"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Embalagem_Histdat_cadastro: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      DisplayWidth = 10
      FieldName = 'dat_cadastro'
      Origin = '"embalagem_hist"."dat_cadastro"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Embalagem_Histaltura: TIBBCDField
      DisplayLabel = 'Altura'
      DisplayWidth = 10
      FieldName = 'altura'
      Origin = '"embalagem_hist"."altura"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histlargura: TIBBCDField
      DisplayLabel = 'Largura'
      FieldName = 'largura'
      Origin = '"embalagem_hist"."largura"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histprofundidade: TIBBCDField
      DisplayLabel = 'Profundidade'
      FieldName = 'profundidade'
      Origin = '"embalagem_hist"."profundidade"'
      DisplayFormat = '##,###,##0.00'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"embalagem_hist"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object Embalagem_Histcod_produto: TIBStringField
      DisplayWidth = 15
      FieldName = 'cod_produto'
      Origin = '"embalagem_hist"."cod_produto"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 15
    end
    object Embalagem_Histvolume: TIBBCDField
      DisplayLabel = 'Volume(m'#179')'
      FieldName = 'volume'
      Origin = '"embalagem_hist"."volume"'
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object Embalagem_Histarea: TIBBCDField
      FieldName = 'area'
      Origin = '"embalagem_hist"."area"'
      Visible = False
      DisplayFormat = '##,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object Embalagem_Histobservacao: TIBStringField
      FieldName = 'observacao'
      Origin = '"embalagem_hist"."observacao"'
      Visible = False
      Size = 255
    end
    object Embalagem_Histpeso_unitario: TFloatField
      FieldName = 'peso_unitario'
      Origin = '"embalagem_hist"."peso_unitario"'
      Visible = False
      DisplayFormat = '#,##0.00000'
    end
    object Embalagem_Histdat_cad_dimensoes: TDateField
      FieldName = 'dat_cad_dimensoes'
      Origin = '"embalagem_hist"."dat_cad_dimensoes"'
    end
    object Embalagem_Histdat_cad_peso: TDateField
      FieldName = 'dat_cad_peso'
      Origin = '"embalagem_hist"."dat_cad_peso"'
    end
    object Embalagem_Histdat_cad_master: TDateField
      FieldName = 'dat_cad_master'
      Origin = '"embalagem_hist"."dat_cad_master"'
    end
    object Embalagem_Histdat_cad_inner: TDateField
      FieldName = 'dat_cad_inner'
      Origin = '"embalagem_hist"."dat_cad_inner"'
    end
    object Embalagem_Histobs_caixas: TIBStringField
      FieldName = 'obs_caixas'
      Origin = '"embalagem_hist"."obs_caixas"'
      Size = 255
    end
    object Embalagem_Histqtd_master: TIBBCDField
      FieldName = 'qtd_master'
      Origin = '"embalagem_hist"."qtd_master"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histqtd_inner: TIBBCDField
      FieldName = 'qtd_inner'
      Origin = '"embalagem_hist"."qtd_inner"'
      Precision = 9
      Size = 4
    end
    object Embalagem_Histpes_bruto_cx: TFloatField
      FieldName = 'pes_bruto_cx'
      Origin = '"embalagem_hist"."pes_bruto_cx"'
      DisplayFormat = '#,##0.00'
    end
  end
  object ds_Embalagem_Hist: TDataSource
    DataSet = Embalagem_Hist
    Left = 404
    Top = 67
  end
  object del_hist: TIBSQL
    Database = dmConnection.dbSig
    SQL.Strings = (
      'delete from "embalagem_hist"'
      'where "cod_empresa" = :cod_empresa'
      '  and "cod_produto" = :cod_produto')
    Transaction = dmConnection.TransSig
    Left = 454
    Top = 43
  end
  object cby_calc_embalagem: TIBQuery
    Database = dmConnection.dbSig
    Transaction = dmConnection.TransSig
    Left = 336
    Top = 109
  end
end
