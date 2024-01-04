unit SigIMP01_076;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, StdCtrls, Mask, DBCtrls, DB, IBCustomDataSet, IBQuery,
  ActnList, unNavigator, ComCtrls, ToolWin, ExtCtrls, IBStoredProc;

type
  Tfr_CadNcm = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetncm_cod: TIntegerField;
    IBDataSetncm_lic: TIBStringField;
    IBDataSetncm_imetro: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    spr_ncm: TIBStoredProc;
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadNcm: Tfr_CadNcm;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadNcm.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').Value := vgCod_Empresa; 
end;

procedure Tfr_CadNcm.FormCreate(Sender: TObject);
begin
  inherited;
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    Open;
  end;
end;

procedure Tfr_CadNcm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fr_CadNcm := nil;
end;

procedure Tfr_CadNcm.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('ncm') then                                                       
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('ncm_cod', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

procedure Tfr_CadNcm.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
  with spr_ncm do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;                                         
    ParamByName('ncm_cod').AsInteger := IBDataSetncm_cod.AsInteger;
    ParamByName('oper').AsString := 'U';
    ExecProc;
    try
    Transaction.CommitRetaining;
    except
    Transaction.RollbackRetaining;
    end;
  end;
end;

procedure Tfr_CadNcm.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  IBDataSetncm_cod.FocusControl;
  with spr_ncm do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('ncm_cod').AsInteger := IBDataSetncm_cod.AsInteger;
    ParamByName('oper').AsString := 'D';
    ExecProc;
    try
    Transaction.CommitRetaining;
    except
    Transaction.RollbackRetaining;
    end;
  end;
  inherited;
end;

procedure Tfr_CadNcm.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetncm_cod.FocusControl;  
end;

procedure Tfr_CadNcm.IBDataSetAfterEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetncm_cod.FocusControl;
end;

end.
