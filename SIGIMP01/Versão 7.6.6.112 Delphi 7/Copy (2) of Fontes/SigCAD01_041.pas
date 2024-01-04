unit SigCAD01_041;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls, DateUtils;

type
  Tfr_CadTurno = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetcod_turno: TSmallintField;
    IBDataSetden_turno: TIBStringField;
    IBDataSethor_inicio: TTimeField;
    IBDataSethor_termino: TTimeField;
    IBDataSetdat_cadastro: TDateField;
    Label1: TLabel;
    edtcod_turno: TDBEdit;
    Label2: TLabel;
    edtden_turno: TDBEdit;
    Label3: TLabel;
    edthor_inicio: TDBEdit;
    Label4: TLabel;
    edthor_termino: TDBEdit;
    Label5: TLabel;
    dbeddat_cadastro: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure edthor_terminoExit(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSethor_inicioChange(Sender: TField);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadTurno: Tfr_CadTurno;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTurno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadTurno := nil;
end;

procedure Tfr_CadTurno.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_turno.FocusControl;
end;

procedure Tfr_CadTurno.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_turno.FocusControl;
end;

procedure Tfr_CadTurno.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_turno.FocusControl;
end;

procedure Tfr_CadTurno.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_empresa.AsInteger   := vgCod_Empresa;
   IBDataSethor_inicio.AsDateTime   := Time;
   IBDataSethor_termino.AsDateTime  := IncHour(Time, 8);
   IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadTurno.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadTurno.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('turno') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_turno', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadTurno.edthor_terminoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadTurno.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_turno.AsInteger := InsertCode('turno', 'cod_turno', True);
end;

procedure Tfr_CadTurno.IBDataSethor_inicioChange(Sender: TField);
begin
  inherited;
  IBDataSethor_termino.AsDateTime := IncHour(Sender.AsDateTime, 8);
end;

procedure Tfr_CadTurno.Set_Value;
begin
  inherited;
	IBDataSet.Close;
  IBDataSet.ParamByName('cod_empresa').AsShort := vgCod_Empresa;
  OpenTable(IBDataSet);
end;

end.
