unit unPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnGrid, ExtCtrls, ActnList, ComCtrls, ToolWin,
  DBCtrls, ImgList, Buttons;

type
  Tfr_Pesquisa = class(TForm)
    GroupBox1: TGroupBox;
    fr_FmGrid1: Tfr_FmGrid;
    ActionList1: TActionList;
    acOK: TAction;
    acClose: TAction;
    edCod: TEdit;
    edDen: TEdit;
    ImageList1: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure acOKExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure edCodChange(Sender: TObject);
    procedure edDenChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Pesquisa: Tfr_Pesquisa;
  
implementation

uses DBLocal, DBTables, unConnection;

{$R *.dfm}

procedure Tfr_Pesquisa.acOKExecute(Sender: TObject);
begin
   ModalResult	:= mrOk;
end;

procedure Tfr_Pesquisa.acCloseExecute(Sender: TObject);
begin
   ModalResult	:= mrCancel;
end;

procedure Tfr_Pesquisa.edCodChange(Sender: TObject);
begin
	if Length(TEdit(Sender).Text) > 0 then
      with dmConnection, qryPesquisa do
      begin
         Filtered				:= False;
         vFilPesquisa[0]	:= 'S';
         vFilPesquisa[1] 	:= UpperCase(TEdit(Sender).Text);
         Filtered				:= True;
      end
   else
      with dmConnection, qryPesquisa do
      begin
         Filtered				:= False;
         vFilPesquisa[0]	:= 'N';
      end;
end;

procedure Tfr_Pesquisa.edDenChange(Sender: TObject);
begin
	if Length(TEdit(Sender).Text) > 0 then
  	with dmConnection, qryPesquisa do
    begin
    	 Filtered			:= False;
      vFilPesquisa[2]	:= 'S';
      vFilPesquisa[3]	:= UpperCase(TEdit(Sender).Text);
      Filtered			:= True;
      end
  else
  	with dmConnection, qryPesquisa do
   	begin
   		Filtered			:= False;
	    vFilPesquisa[2]	:= 'N';
    end;
end;

procedure Tfr_Pesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	vFilPesquisa[0] := 'N';
  vFilPesquisa[2] := 'N';
end;

procedure Tfr_Pesquisa.FormShow(Sender: TObject);
begin
	edCod.Clear;
  edCod.SetFocus;
  edDen.Clear;
end;

end.
