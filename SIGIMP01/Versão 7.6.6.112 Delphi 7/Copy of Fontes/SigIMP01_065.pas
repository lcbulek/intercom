unit SigIMP01_065;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfr_CadTipoEmbarque = class(Tfr_Cad)
    IBDataSetcod_tip_embarque: TSmallintField;
    IBDataSetden_tip_embarque: TIBStringField;
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
  fr_CadTipoEmbarque: Tfr_CadTipoEmbarque;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTipoEmbarque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fr_CadTipoEmbarque := nil;
end;

procedure Tfr_CadTipoEmbarque.FormCreate(Sender: TObject);
begin
  inherited;
  IBDataSet.Open; 
end;

procedure Tfr_CadTipoEmbarque.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_tip_embarque.AsInteger   := InsertCode('tipo_embarque', 'cod_tip_embarque');

end;

procedure Tfr_CadTipoEmbarque.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_embarque.FocusControl;
end;

procedure Tfr_CadTipoEmbarque.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_embarque.FocusControl;
end;

procedure Tfr_CadTipoEmbarque.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_embarque.FocusControl;
end;

procedure Tfr_CadTipoEmbarque.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('tipo_embarque') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_tip_embarque', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

end.
