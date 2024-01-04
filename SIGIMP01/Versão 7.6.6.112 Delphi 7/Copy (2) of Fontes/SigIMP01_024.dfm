inherited fr_CadCondicoesPgto1: Tfr_CadCondicoesPgto1
  Left = 656
  Top = 271
  HelpType = htKeyword
  HelpKeyword = '023'
  Caption = 'Condi'#231#245'es de Pagamento'
  ClientHeight = 399
  ClientWidth = 453
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 453
    Height = 363
    object Label1: TLabel [0]
      Left = 8
      Top = 10
      Width = 42
      Height = 14
      Caption = 'C'#243'digo'
      FocusControl = dbedcod_pagamento
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 8
      Top = 48
      Width = 133
      Height = 14
      Caption = 'Descri'#231#227'o em Ingl'#234's'
      Layout = tlBottom
    end
    object Label3: TLabel [2]
      Left = 8
      Top = 144
      Width = 154
      Height = 14
      Caption = 'Descri'#231#227'o em portugu'#234's'
      Layout = tlBottom
    end
    object Label4: TLabel [3]
      Left = 8
      Top = 240
      Width = 147
      Height = 14
      Caption = 'Descri'#231#227'o em espanhol'
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 396
      TabOrder = 4
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object dbedcod_pagamento: TDBEdit
      Left = 8
      Top = 24
      Width = 43
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_condicao'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 64
      Width = 433
      Height = 73
      DataField = 'den_condicao'
      DataSource = dsIBDataSet
      MaxLength = 255
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 268
      Top = 331
      Width = 84
      Height = 25
      Action = actOK
      Caption = 'OK'
      TabOrder = 5
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F7FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BDE7BD0008730800187B1800187B1800187B1800187B1800087B0800087B
        0800087B0800007B000000630000F7FFFF00FF00FF00FF00FF00FF00FF00FF00
        FF0010841000319C310039A5390039A5390039A53900E7F7E70031AD310021AD
        210008B5080008B50800007B0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF001084100039A539004AA54A00FFFFFF0039A53900FFFFFF0031AD310021AD
        2100E7F7E70008B50800187B1800FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00188C18004AA54A004AA54A00FFFFFF00FFFFFF0031BD310031AD3100FFFF
        FF0021AD210018AD1800187B1800FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00219C210052AD520052AD52004AA54A004AA54A0039A5390031AD310021AD
        210021AD2100189C1800187B1800FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00219C2100FFFFFF00FFFFFF00FFFFFF004AA54A0039A5390031A5310021AD
        2100FFFFFF00FFFFFF00187B1800FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00319C310063B5630052AD520052AD5200FFFFFF0039A53900319C3100FFFF
        FF00219C2100219C2100187B1800FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00319C310063B5630063B56300FFFFFF004AA54A00FFFFFF00319C3100FFFF
        FF00FFFFFF00299C2900187B1800FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF0039A539007BBD7B007BBD7B0063B5630052AD5200FFFFFF004AA54A0039A5
        390039A53900319C3100187B1800FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF004AA54A008CD68C007BBD7B0063B5630063B56300FFFFFF0052AD520052AD
        52004AA54A0039A53900187B1800FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00F7FFFF0039A53900319C3100319C3100319C3100319C3100219C2100219C
        2100219C2100188C1800A5DEA500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn2: TBitBtn
      Left = 356
      Top = 331
      Width = 84
      Height = 25
      Action = actCancelar
      Caption = 'Cancelar'
      TabOrder = 6
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F7FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00425ACE001031C6001842CE002142C6001842CE001842CE001039CE000839
        CE000831CE000029CE000021B500F7FFFF00FF00FF00FF00FF00FF00FF00FF00
        FF000831DE00214AE7003152E700395AE700315AE700295AE7002152E700184A
        E700104AEF000039E7000029CE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF001039DE00315AE7004263E7008CA5EF00FFFFFF00E7EFFF00F7F7FF00EFF7
        FF001052EF000842EF000031CE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF002142DE004263E7006B84EF00EFF7FF004A6BE7003963E7003163EF006B94
        F700EFEFFF00104AE7000839D600FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00294AE7004A6BE700E7EFFF006B84EF004A6BE700FFFFFF00315AE7002152
        E700EFF7FF00184AE7001842CE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF003152E7005A73EF00FFFFFF00526BE7004A63E700FFFFFF00315AE7002152
        E700DEE7FF00214AE7002142CE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00395AE700637BEF00BDC6F700A5B5F7004A63E700FFFFFF003152E700214A
        E700FFFFFF00294AE700214ACE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF004263E700738CEF006B84EF00FFFFFF00A5B5F7004263E7005A73EF00EFF7
        FF007B94EF002952E700294ACE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF004A6BE7008C9CEF00738CEF006384EF00B5C6F700FFFFFF00E7EFFF00637B
        EF00395AE7003152E7002142CE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF005A73EF00A5B5F700849CEF00738CEF006B84EF00637BEF00637BEF005A73
        EF004A6BE700395AE7002142CE00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00F7F7FF005273E7004A6BE7004263E700395AE700395AE7003152E7002952
        E7002952E7001842DE004A63D600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 160
      Width = 433
      Height = 73
      DataField = 'den_condicao_ptb'
      DataSource = dsIBDataSet
      MaxLength = 255
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object DBMemo3: TDBMemo
      Left = 8
      Top = 256
      Width = 433
      Height = 73
      DataField = 'den_condicao_esp'
      DataSource = dsIBDataSet
      MaxLength = 255
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 363
    Width = 453
    inherited ToolBar1: TToolBar
      Width = 453
      inherited ToolButton12: TToolButton
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
    object actOK: TAction
      Caption = 'OK'
      ImageIndex = 150
      OnExecute = actOKExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 151
      OnExecute = actCancelarExecute
    end
  end
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforePost = IBDataSetBeforePost
    DeleteSQL.Strings = (
      'delete from "condicao"'
      'where'
      '  "condicao"."cod_condicao" = :"OLD_cod_condicao"')
    InsertSQL.Strings = (
      'insert into "condicao"'
      
        '  ("condicao"."cod_condicao", "condicao"."den_condicao", "condic' +
        'ao"."den_condicao_ptb", '
      '   "condicao"."den_condicao_esp")'
      'values'
      
        '  (:"cod_condicao", :"den_condicao", :"den_condicao_ptb", :"den_' +
        'condicao_esp")')
    RefreshSQL.Strings = (
      'Select '
      '  "condicao"."cod_condicao",'
      '  "condicao"."den_condicao",'
      '  "condicao"."den_condicao_ptb",'
      '  "condicao"."den_condicao_esp"'
      'from "condicao" '
      'where'
      '  "condicao"."cod_condicao" = :"cod_condicao"')
    SelectSQL.Strings = (
      'select * from "condicao"')
    ModifySQL.Strings = (
      'update "condicao"'
      'set'
      '  "condicao"."cod_condicao" = :"cod_condicao",'
      '  "condicao"."den_condicao" = :"den_condicao",'
      '  "condicao"."den_condicao_ptb" = :"den_condicao_ptb",'
      '  "condicao"."den_condicao_esp" = :"den_condicao_esp"'
      'where'
      '  "condicao"."cod_condicao" = :"OLD_cod_condicao"')
    object IBDataSetcod_condicao: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_condicao'
      Origin = '"condicao"."cod_condicao"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_condicao: TIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'den_condicao'
      Origin = '"condicao"."den_condicao"'
      Size = 255
    end
    object IBDataSetden_condicao_ptb: TIBStringField
      FieldName = 'den_condicao_ptb'
      Origin = '"condicao"."den_condicao_ptb"'
      Size = 255
    end
    object IBDataSetden_condicao_esp: TIBStringField
      FieldName = 'den_condicao_esp'
      Origin = '"condicao"."den_condicao_esp"'
      Size = 255
    end
  end
  inherited dsIBDataSet: TDataSource
    Left = 332
    Top = 69
  end
end
