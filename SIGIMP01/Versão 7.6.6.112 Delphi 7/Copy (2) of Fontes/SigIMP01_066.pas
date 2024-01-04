unit SigIMP01_066;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfr_CadArmadores = class(Tfr_Cad)
    IBDataSetcod_armador: TSmallintField;
    IBDataSetden_armador: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadArmadores: Tfr_CadArmadores;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadArmadores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fr_CadArmadores := nil;
end;

procedure Tfr_CadArmadores.FormCreate(Sender: TObject);
begin
  inherited;
  IBDataSet.Open;
end;

procedure Tfr_CadArmadores.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_armador.AsInteger   := InsertCode('armadores', 'cod_armador');
end;

procedure Tfr_CadArmadores.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_armador.FocusControl;
end;

procedure Tfr_CadArmadores.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_armador.FocusControl;
end;

procedure Tfr_CadArmadores.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_armador.FocusControl;
end;

procedure Tfr_CadArmadores.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('armadores') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_armador', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

end.
