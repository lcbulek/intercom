unit SigCAD01_039;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfr_CadMotivo_Parada = class(Tfr_Cad)
    IBDataSetcod_motivo_parada: TSmallintField;
    IBDataSetden_motivo_parada: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    Label1: TLabel;
    edtcod_motivo_parada: TDBEdit;
    Label2: TLabel;
    edtden_motivo_parada: TDBEdit;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure edtden_motivo_paradaExit(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadMotivo_Parada: Tfr_CadMotivo_Parada;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadMotivo_Parada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadMotivo_Parada := nil;
end;

procedure Tfr_CadMotivo_Parada.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_motivo_parada.AsInteger := InsertCode('motivo_parada', 'cod_motivo_parada');
end;

procedure Tfr_CadMotivo_Parada.edtden_motivo_paradaExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadMotivo_Parada.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_motivo_parada.FocusControl;
end;

procedure Tfr_CadMotivo_Parada.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_motivo_parada.FocusControl;
end;

procedure Tfr_CadMotivo_Parada.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_motivo_parada.FocusControl;
end;

procedure Tfr_CadMotivo_Parada.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadMotivo_Parada.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadMotivo_Parada.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('motivo_parada') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_motivo_parada', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadMotivo_Parada.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

end.
