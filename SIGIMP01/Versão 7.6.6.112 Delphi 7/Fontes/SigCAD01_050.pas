unit SigCAD01_050;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, DB, IBCustomDataSet, StdCtrls, Mask, DBCtrls, IBQuery,
  ActnList, unNavigator, ComCtrls, ToolWin, ExtCtrls, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, Grids, DBGrids, Math,
  IBSQL;

type
  Tfr_CadEmbalagem = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetcod_produto: TIBStringField;
    IBDataSetaltura: TIBBCDField;
    IBDataSetlargura: TIBBCDField;
    IBDataSetprofundidade: TIBBCDField;
    IBDataSetvolume: TIBBCDField;
    IBDataSetarea: TIBBCDField;
    dsAux: TDataSource;
    IBDataSetobservacao: TIBStringField;
    IBDataSetdat_cadastro: TDateTimeField;
    pcEmbalagem: TPageControl;
    tsEmbalagem: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Embalagem_Hist: TIBDataSet;
    ds_Embalagem_Hist: TDataSource;
    Embalagem_Histcod_empresa: TSmallintField;
    Embalagem_Histcod_produto: TIBStringField;
    Embalagem_Histaltura: TIBBCDField;
    Embalagem_Histlargura: TIBBCDField;
    Embalagem_Histprofundidade: TIBBCDField;
    Embalagem_Histvolume: TIBBCDField;
    Embalagem_Histarea: TIBBCDField;
    Embalagem_Histobservacao: TIBStringField;
    Embalagem_Histdat_cadastro: TDateTimeField;
    IBDataSetpeso_unitario: TFloatField;
    Embalagem_Histpeso_unitario: TFloatField;
    Embalagem_Histsequencia: TIntegerField;
    IBDataSetdat_cad_dimensoes: TDateField;
    IBDataSetdat_cad_peso: TDateField;
    IBDataSetdat_cad_master: TDateField;
    IBDataSetdat_cad_inner: TDateField;
    Embalagem_Histdat_cad_dimensoes: TDateField;
    Embalagem_Histdat_cad_peso: TDateField;
    Embalagem_Histdat_cad_master: TDateField;
    Embalagem_Histdat_cad_inner: TDateField;
    IBDataSetobs_caixas: TIBStringField;
    Panel4: TPanel;
    Label3: TLabel;
    dbeAltura: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    JvDBDatePickerEdit4: TJvDBDatePickerEdit;
    Panel5: TPanel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label22: TLabel;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    Panel6: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label23: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvDBDatePickerEdit3: TJvDBDatePickerEdit;
    GroupBox5: TGroupBox;
    DBMemo3: TDBMemo;
    Embalagem_Histobs_caixas: TIBStringField;
    tsHistorico: TTabSheet;
    Panel7: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit17: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox7: TGroupBox;
    Panel8: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    JvDBDatePickerEdit5: TJvDBDatePickerEdit;
    Panel9: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit25: TDBEdit;
    JvDBDatePickerEdit6: TJvDBDatePickerEdit;
    GroupBox8: TGroupBox;
    DBMemo4: TDBMemo;
    GroupBox9: TGroupBox;
    Panel10: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    JvDBDatePickerEdit7: TJvDBDatePickerEdit;
    JvDBDatePickerEdit8: TJvDBDatePickerEdit;
    GroupBox10: TGroupBox;
    DBMemo5: TDBMemo;
    DBGrid2: TDBGrid;
    IBDataSetcalVolume: TFloatField;
    IBDataSetcalArea: TFloatField;
    del_hist: TIBSQL;
    IBDataSetqtd_master: TIBBCDField;
    IBDataSetqtd_inner: TIBBCDField;
    Embalagem_Histqtd_master: TIBBCDField;
    Embalagem_Histqtd_inner: TIBBCDField;
    IBDataSetpes_bruto_cx: TFloatField;
    Embalagem_Histpes_bruto_cx: TFloatField;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    cby_calc_embalagem: TIBQuery;
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetCalcFields(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure Embalagem_HistNewRecord(DataSet: TDataSet);
    procedure Embalagem_HistAfterDelete(DataSet: TDataSet);
    procedure Embalagem_HistAfterPost(DataSet: TDataSet);
    procedure pcEmbalagemChange(Sender: TObject);
    procedure Embalagem_HistAfterOpen(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value;

  end;

var
  fr_CadEmbalagem: Tfr_CadEmbalagem;

implementation

uses unConnection, SigCAD01_025, SigIMP01_045;

{$R *.dfm}

procedure Tfr_CadEmbalagem.Set_Value;
begin
  { cadastro de embalagem }
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString;
    Open;
  end;
  { hist�rico da embalagens }
  with Embalagem_Hist do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString;
    Open;
  end;
  pcEmbalagem.ActivePage := tsEmbalagem;  
end;


procedure Tfr_CadEmbalagem.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
end;

procedure Tfr_CadEmbalagem.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
  IBDataSet.FieldByName('cod_produto').AsString := fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString;
  IBDataSet.FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
  IBDataSet.FieldByName('dat_cad_dimensoes').AsDateTime := Buscar_DateTime;
  IBDataSet.FieldByName('dat_cad_peso').AsDateTime := Buscar_DateTime;
  IBDataSet.FieldByName('dat_cad_master').AsDateTime := Buscar_DateTime;
  IBDataSet.FieldByName('dat_cad_inner').AsDateTime := Buscar_DateTime;        
  IBDataSet.FieldByName('observacao').AsString := ' ';
  IBDataSet.FieldByName('obs_caixas').AsString := ' ';
end;

procedure Tfr_CadEmbalagem.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;

end;

procedure Tfr_CadEmbalagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  IBDataSet.Close;
  Embalagem_Hist.Close;

  Action := caFree;
  fr_CadEmbalagem := nil;
end;

procedure Tfr_CadEmbalagem.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
  { Atualizar o Histr�rico de Embalagens, quando for uma altera��o cadastral }
  if IBDataSet.State = dsEdit then
  begin
    Embalagem_Hist.Append;
    Embalagem_Hist.Post;
    Embalagem_Hist.Close;
    Embalagem_Hist.Open;
  end;
  IBDataSet.FieldByName('area').AsFloat := IBDataSet.FieldByName('calArea').AsFloat;
  IBDataSet.FieldByname('volume').AsFloat := IBDataSet.FieldByName('calVolume').AsFloat;
  { Peso da Caixa Vazia - alterado em 16.03.16 }
  with dmCOM.CalcEmbalagem(IBDataSet.FieldByName('cod_produto').AsString, 1.0) do
  begin
    IBDataSet.FieldByName('peso_unitario').AsFloat :=  IBDataSet.FieldByName('pes_bruto_cx').AsFloat - (PesUnitProd/1000 * IBDataSet.FieldByName('qtd_master').AsFloat);
  end;

end;

procedure Tfr_CadEmbalagem.IBDataSetCalcFields(DataSet: TDataSet);
begin
  inherited;
  { calcular dimens�es da caixa }
  IBDataSet.FieldByName('calArea').Value  := IBDataSet.FieldByName('largura').AsFloat *
                                             IBDataSet.FieldByName('profundidade').AsFloat;

  IBDataSet.FieldByName('calVolume').Value := Arredonda((IBDataSet.FieldByName('largura').AsFloat *
                                              IBDataSet.FieldByName('profundidade').AsFloat *
                                              IBDataSet.FieldByName('altura').AsFloat)/1000000, -4);

end;

procedure Tfr_CadEmbalagem.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if Not(IBDataSet.IsEmpty) then
  begin
    Application.MessageBox('� permitido somente uma embalagem para o produto', 'Informa��o', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
end;

procedure Tfr_CadEmbalagem.Embalagem_HistNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByname('sequencia').AsInteger := InsertCode('embalagem_hist', 'sequencia');
    FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
    FieldByName('cod_produto').AsString := fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString;
    FieldByName('dat_cadastro').AsDateTime := Buscar_DateTime;
    FieldByname('dat_cad_dimensoes').Value := IBDataSet.FieldByname('dat_cad_dimensoes').OldValue;
    FieldByname('dat_cad_peso').Value := IBDataSet.FieldByname('dat_cad_peso').OldValue;
    FieldByname('dat_cad_master').Value := IBDataSet.FieldByname('dat_cad_master').OldValue;
    FieldByname('dat_cad_inner').Value := IBDataSet.FieldByname('dat_cad_inner').OldValue;

    FieldByName('altura').Value := IBDataSet.FieldByName('altura').OldValue;
    FieldByName('largura').Value := IBDataSet.FieldByName('largura').OldValue;
    FieldByName('profundidade').Value := IBDataSet.FieldByName('profundidade').OldValue;
    FieldByName('peso_unitario').Value := IBDataSet.FieldByName('peso_unitario').OldValue;
    FieldByName('volume').Value := IBDataSet.FieldByName('volume').OldValue;
    FieldByName('area').Value := IBDataSet.FieldByName('area').OldValue;
    FieldByName('qtd_master').Value := IBDataSet.FieldByName('qtd_master').OldValue;
    FieldByName('qtd_inner').Value := IBDataSet.FieldByName('qtd_inner').OldValue;
    FieldByName('pes_bruto_cx').Value := IBDataSet.FieldByName('pes_bruto_cx').OldValue;

    if IBDataSet.FieldByName('observacao').OldValue = null then
       FieldByName('observacao').AsString := ''
    else
       FieldByName('observacao').AsString := IBDataSet.FieldByName('observacao').OldValue;

    if IBDataSet.FieldByName('obs_caixas').OldValue = null then
       FieldByName('obs_caixas').AsString := ''
    else
       FieldByName('obs_caixas').AsString := IBDataSet.FieldByName('obs_caixas').OldValue;

  end;
end;

procedure Tfr_CadEmbalagem.Embalagem_HistAfterDelete(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;                                                           
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;

end;

procedure Tfr_CadEmbalagem.Embalagem_HistAfterPost(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;

end;

procedure Tfr_CadEmbalagem.pcEmbalagemChange(Sender: TObject);
begin
  inherited;
  if pcEmbalagem.ActivePage = tsEmbalagem
  then ChangeDataSource(dsIBDataSet)
  else ChangeDataSource(ds_Embalagem_Hist);
end;

procedure Tfr_CadEmbalagem.Embalagem_HistAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Embalagem_Hist.First;
end;

procedure Tfr_CadEmbalagem.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with del_hist do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByName('cod_produto').Value := IBDataSetcod_produto.AsString;
    ExecQuery;
  end;
  Embalagem_Hist.Close;
  Embalagem_Hist.Open;
end;

procedure Tfr_CadEmbalagem.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
  RecalcularPedidos(IBDataSetcod_produto.AsString);
  RecalcularFaturas(IBDataSetcod_produto.AsString);
  RecalcularProdList(IBDataSetcod_produto.AsString);
end;

end.
