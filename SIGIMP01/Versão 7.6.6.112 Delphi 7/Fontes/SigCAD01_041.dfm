inherited fr_CadTurno: Tfr_CadTurno
  Left = 393
  Top = 285
  HelpType = htKeyword
  HelpKeyword = '041'
  ActiveControl = edtden_turno
  Caption = 'Turno'
  ClientHeight = 173
  ClientWidth = 449
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 449
    Height = 137
    object Label1: TLabel [0]
      Left = 10
      Top = 10
      Width = 35
      Height = 21
      AutoSize = False
      Caption = 'Turno'
      FocusControl = edtcod_turno
      Layout = tlBottom
    end
    object Label2: TLabel [1]
      Left = 10
      Top = 34
      Width = 63
      Height = 21
      AutoSize = False
      Caption = 'Descri'#231#227'o'
      FocusControl = edtden_turno
      Layout = tlBottom
    end
    object Label3: TLabel [2]
      Left = 10
      Top = 60
      Width = 77
      Height = 21
      AutoSize = False
      Caption = 'Hora inicio'
      FocusControl = edthor_inicio
      Layout = tlBottom
    end
    object Label4: TLabel [3]
      Left = 10
      Top = 85
      Width = 84
      Height = 21
      AutoSize = False
      Caption = 'Hora t'#233'rmino'
      FocusControl = edthor_termino
      Layout = tlBottom
    end
    object Label5: TLabel [4]
      Left = 10
      Top = 109
      Width = 112
      Height = 21
      AutoSize = False
      Caption = 'Data de cadastro'
      FocusControl = dbeddat_cadastro
      Layout = tlBottom
    end
    inherited pnlF1: TPanel
      Left = 392
      inherited ToolBar1: TToolBar
        inherited ToolButton2: TToolButton
          Action = fr_FmNavigator1.acF3
        end
      end
    end
    object edtcod_turno: TDBEdit
      Left = 131
      Top = 10
      Width = 50
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'cod_turno'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 1
    end
    object edtden_turno: TDBEdit
      Left = 131
      Top = 34
      Width = 288
      Height = 22
      DataField = 'den_turno'
      DataSource = dsIBDataSet
      TabOrder = 2
    end
    object edthor_inicio: TDBEdit
      Left = 131
      Top = 60
      Width = 100
      Height = 22
      DataField = 'hor_inicio'
      DataSource = dsIBDataSet
      TabOrder = 3
    end
    object edthor_termino: TDBEdit
      Left = 131
      Top = 85
      Width = 100
      Height = 22
      DataField = 'hor_termino'
      DataSource = dsIBDataSet
      TabOrder = 4
      OnExit = edthor_terminoExit
    end
    object dbeddat_cadastro: TDBEdit
      Left = 131
      Top = 109
      Width = 85
      Height = 22
      TabStop = False
      Color = clInfoBk
      DataField = 'dat_cadastro'
      DataSource = dsIBDataSet
      ReadOnly = True
      TabOrder = 5
    end
  end
  inherited fr_FmNavigator1: Tfr_FmNavigator
    Top = 137
    Width = 449
    inherited ToolBar1: TToolBar
      Width = 449
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
  inherited IBDataSet: TIBDataSet
    BeforeDelete = IBDataSetBeforeDelete
    BeforeEdit = IBDataSetBeforeEdit
    BeforeInsert = IBDataSetBeforeInsert
    BeforePost = IBDataSetBeforePost
    OnNewRecord = IBDataSetNewRecord
    DeleteSQL.Strings = (
      'delete from "turno"'
      'where'
      '  "turno"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "turno"."cod_turno" = :"OLD_cod_turno"')
    InsertSQL.Strings = (
      'insert into "turno"'
      
        '  ("turno"."cod_empresa", "turno"."cod_turno", "turno"."dat_cada' +
        'stro", '
      
        '   "turno"."den_turno", "turno"."hor_inicio", "turno"."hor_termi' +
        'no")'
      'values'
      
        '  (:"cod_empresa", :"cod_turno", :"dat_cadastro", :"den_turno", ' +
        ':"hor_inicio", '
      '   :"hor_termino")')
    RefreshSQL.Strings = (
      'Select '
      '  "turno"."cod_empresa",'
      '  "turno"."cod_turno",'
      '  "turno"."den_turno",'
      '  "turno"."hor_inicio",'
      '  "turno"."hor_termino",'
      '  "turno"."dat_cadastro"'
      'from "turno" '
      'where'
      '  "turno"."cod_empresa" = :"cod_empresa" and'
      '  "turno"."cod_turno" = :"cod_turno"')
    SelectSQL.Strings = (
      'select "cod_empresa",'
      '       "cod_turno",'
      '       "den_turno",'
      '       "hor_inicio",'
      '       "hor_termino",'
      '       "dat_cadastro"'
      'from "turno"'
      'where'
      '    "cod_empresa" = :cod_empresa'
      'order by 2')
    ModifySQL.Strings = (
      'update "turno"'
      'set'
      '  "turno"."cod_empresa" = :"cod_empresa",'
      '  "turno"."cod_turno" = :"cod_turno",'
      '  "turno"."dat_cadastro" = :"dat_cadastro",'
      '  "turno"."den_turno" = :"den_turno",'
      '  "turno"."hor_inicio" = :"hor_inicio",'
      '  "turno"."hor_termino" = :"hor_termino"'
      'where'
      '  "turno"."cod_empresa" = :"OLD_cod_empresa" and'
      '  "turno"."cod_turno" = :"OLD_cod_turno"')
    object IBDataSetcod_empresa: TSmallintField
      FieldName = 'cod_empresa'
      Origin = '"turno"."cod_empresa"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBDataSetcod_turno: TSmallintField
      DisplayLabel = 'Turno'
      FieldName = 'cod_turno'
      Origin = '"turno"."cod_turno"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSetden_turno: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'den_turno'
      Origin = '"turno"."den_turno"'
      Required = True
      Size = 75
    end
    object IBDataSethor_inicio: TTimeField
      DisplayLabel = 'Hora inicio'
      FieldName = 'hor_inicio'
      Origin = '"turno"."hor_inicio"'
      OnChange = IBDataSethor_inicioChange
      EditMask = '!90:00:00;1;_'
    end
    object IBDataSethor_termino: TTimeField
      DisplayLabel = 'Hora t'#233'rmino'
      FieldName = 'hor_termino'
      Origin = '"turno"."hor_termino"'
      EditMask = '!90:00:00;1;_'
    end
    object IBDataSetdat_cadastro: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'dat_cadastro'
      Origin = '"turno"."dat_cadastro"'
    end
  end
end
