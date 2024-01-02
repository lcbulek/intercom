unit unNavigator;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, ActnList, DBActns, ImgList, ExtCtrls, DBCtrls;

type
  Tfr_FmNavigator = class(TFrame)
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    acFirst: TDataSetFirst;
    acPrior: TDataSetPrior;
    acNext: TDataSetNext;
    acLast: TDataSetLast;
    acInsert: TDataSetInsert;
    acDelete: TDataSetDelete;
    acEdit: TDataSetEdit;
    acPost: TDataSetPost;
    acCancel: TDataSetCancel;
    acRefresh: TDataSetRefresh;
    acClose: TAction;
    acF3: TAction;
    ToolButton12: TToolButton;
    ImageList1: TImageList;
    ToolButton13: TToolButton;
    procedure acCloseExecute(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses unConnection;

{$R *.dfm}

procedure Tfr_FmNavigator.acCloseExecute(Sender: TObject);
begin
   Screen.ActiveCustomForm.Close;
end;

procedure Tfr_FmNavigator.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  { Alterado para mostrar o Caption e botões em Português }
	if (Action = acDelete) and (not Handled) then
     Handled := Application.MessageBox('Confirma exclusão?', 'Exclusão', MB_ICONQUESTION+MB_YESNO) = IDNO;
end;

end.
