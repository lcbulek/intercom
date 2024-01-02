unit SigCAD01_046;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, StdCtrls, Mask, DBCtrls, DB, IBCustomDataSet, IBQuery,
  ActnList, unNavigator, ComCtrls, ToolWin, ExtCtrls;

type
  Tfr_Cad_Idiomas = class(Tfr_Cad)
    IBDataSetcod_idioma: TSmallintField;
    IBDataSetden_idioma: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value; override;
  end;

var
  fr_Cad_Idiomas: Tfr_Cad_Idiomas;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_Cad_Idiomas.Set_Value;
begin
  OpenTable(IBDataSet);
end;

procedure Tfr_Cad_Idiomas.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
	if IBDataSet.State in [dsBrowse] then
  begin
  	if Pesquisar('idiomas') then
    	if AbrirPesquisa then
      	with IBDataSet do
        	try
          	 DisableControls;
            First;
            Locate('cod_idioma', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
          finally
          	EnableControls;
          end;
	end;
end;

procedure Tfr_Cad_Idiomas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  IBDataSet.Close;
  QrAux.Close;
  fr_Cad_Idiomas := nil;
end;

procedure Tfr_Cad_Idiomas.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

end.
