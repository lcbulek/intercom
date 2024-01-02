unit SigCAD01_087;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, StdCtrls, DBCtrls, Mask, DB, IBCustomDataSet, IBQuery,
  ActnList, unNavigator, ComCtrls, ToolWin, ExtCtrls;

type
  Tfr_Agentes = class(Tfr_Cad)
    IBDataSetcod_agente: TSmallintField;
    IBDataSetnome: TIBStringField;                  
    IBDataSetdescricao: TMemoField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_Agentes: Tfr_Agentes;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_Agentes.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;


procedure Tfr_Agentes.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('agentes') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('nome', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

procedure Tfr_Agentes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fr_Agentes := nil;
end;

procedure Tfr_Agentes.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_agente.AsInteger := InsertCode('agentes', 'cod_agente');
end;
                                                                    
procedure Tfr_Agentes.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

end.
