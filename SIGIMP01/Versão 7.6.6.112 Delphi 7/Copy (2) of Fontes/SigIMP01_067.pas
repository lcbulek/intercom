unit SigIMP01_067;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfr_CadDespachante = class(Tfr_Cad)
    IBDataSetcod_despachante: TSmallintField;
    IBDataSetden_despachante: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadDespachante: Tfr_CadDespachante;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadDespachante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fr_CadDespachante := nil;
end;

procedure Tfr_CadDespachante.FormCreate(Sender: TObject);
begin
  inherited;
  IBDataSet.Open;
end;

procedure Tfr_CadDespachante.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_despachante.AsInteger   := InsertCode('despachante', 'cod_despachante');

end;

procedure Tfr_CadDespachante.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_despachante.FocusControl;
end;

procedure Tfr_CadDespachante.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_despachante.FocusControl;
end;

procedure Tfr_CadDespachante.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('despachante') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_despachante', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

end.
