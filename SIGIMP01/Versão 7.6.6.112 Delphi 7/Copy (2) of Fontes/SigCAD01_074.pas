unit SigCAD01_074;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, StdCtrls, Mask, DBCtrls, IBQuery, DB, IBCustomDataSet,
  ActnList, unNavigator, ComCtrls, ToolWin, ExtCtrls;

type
  Tfr_CadTec = class(Tfr_Cad)
    Label1: TLabel;
    dbedcod_tec: TDBEdit;
    dbednomtec: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    IBDataSetcod_tecnico: TSmallintField;
    IBDataSetnom_tecnico: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    QrAuxcod_empresa: TSmallintField;
    QrAuxnom_empresa_reduz: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    protected
   procedure Set_Value; override;
  end;

var
  fr_CadTec: Tfr_CadTec;

implementation

uses Unconnection, UnMenuCompl;
{$R *.dfm}

procedure Tfr_CadTec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   fr_CadTec := nil;
end;

procedure Tfr_CadTec.Set_Value;
begin
  inherited;
      OpenTable(IBDataSet);
end;

procedure Tfr_CadTec.FormShow(Sender: TObject);
begin
  inherited;
    Set_Value;
    Left :=0;
    Top:=0;
end;

procedure Tfr_CadTec.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
     	if DataSet.State = dsInsert then
      	IBDataSetcod_tecnico.AsInteger := InsertCode('tecnico', 'cod_tecnico');
end;

procedure Tfr_CadTec.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_tecnico.FocusControl;
end;

procedure Tfr_CadTec.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_tecnico.FocusControl;
end;

procedure Tfr_CadTec.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_tecnico.FocusControl;
end;

procedure Tfr_CadTec.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
    IBDataSetdat_cadastro.AsDateTime    := Buscar_DateTime;
end;

procedure Tfr_CadTec.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
if IBDataSet.State in [dsBrowse] then
 if Pesquisar('tecnico') then
   if AbrirPesquisa then
     With IBDataSet do
       Try
          DisableControls;
          First;
          Locate('cod_tecnico', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
       finally
         EnableControls;
         end;
         { else
          if IBDataSet.State in [dsInsert, dsEdit] then
      if (dbedcodempresa.Focused) or (dblklkDescEmpresa.Focused) then
  begin
      if Pesquisar('tecnico') then
        if AbrirPesquisa then
          with IBDataSet do
       IBDataSetcod_empresa.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;

     end; }
end;

end.
