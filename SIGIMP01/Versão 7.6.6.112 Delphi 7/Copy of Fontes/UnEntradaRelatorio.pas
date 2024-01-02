unit unEntradaRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ComCtrls, ToolWin, ExtCtrls, DateUtils, DB,
  IBCustomDataSet, IBQuery, StdCtrls, Mask;

type
  Trl_EntradaRelatorio = class(TForm)
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    ActionList1: TActionList;
    actImprimir: TAction;
    ToolButton4: TToolButton;
    pnlRelatorio: TPanel;
    act_F3: TAction;
    actExcel: TAction;
    ToolButton1: TToolButton;
    actAbrir: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    actButton6: TAction;
    actButton7: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actVisualizarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
  protected
  	procedure CheckStr_Date(Sender: TObject);
  	procedure Filter(DataSet: TIBCustomDataSet);

  	procedure Imprimir(Imprimir: Boolean=False); virtual;
  private
    { Private declarations }
  protected
  	procedure set_Value; virtual; abstract;
  public
    { Public declarations }
  end;

var
  rl_EntradaRelatorio: Trl_EntradaRelatorio;

implementation

uses unConnection, Masks;

{$R *.dfm}

procedure Trl_EntradaRelatorio.Filter(DataSet: TIBCustomDataSet);
begin
	with DataSet do
   try
      DisableControls;
      Filtered	:= False;
      Filtered	:= True;
   finally
      EnableControls;
   end;
end;

procedure Trl_EntradaRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action	:= caFree;
end;

procedure Trl_EntradaRelatorio.actVisualizarExecute(Sender: TObject);
begin
	Imprimir;
end;

procedure Trl_EntradaRelatorio.actImprimirExecute(Sender: TObject);
begin
	Imprimir(True);
end;

procedure Trl_EntradaRelatorio.Imprimir(Imprimir: Boolean=False);
begin

end;

procedure Trl_EntradaRelatorio.CheckStr_Date(Sender: TObject);
begin
	try
  	if Sender is TMaskEdit then
    	if TMaskEdit(Sender).Text <> '  /  /    ' then
		  	StrToDate(TMaskEdit(Sender).Text);
  except
		if Sender is TMaskEdit then
    	TMaskEdit(Sender).SetFocus;
    raise Exception.Create('Data inválida.');
  end;
end;

end.
