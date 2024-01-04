unit unConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ActnList;

type
  Tfr_Consultas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ActionList1: TActionList;
    actPesquisar: TAction;
    actImprimir: TAction;
    procedure ToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Consultas: Tfr_Consultas;

implementation

uses unConnection;

{$R *.dfm}

procedure Tfr_Consultas.ToolButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfr_Consultas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fr_Consultas := nil;
end;

end.
