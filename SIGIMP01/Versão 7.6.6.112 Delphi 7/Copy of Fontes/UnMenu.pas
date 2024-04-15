unit UnMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, Menus, ExtCtrls, StdCtrls, DBCtrls, Buttons,
  ComCtrls, ToolWin, ActnCtrls, ActnMenus, ImgList, DB, IBCustomDataSet,
  IBQuery, JvComponent, JvTrayIcon, JvComponentBase;

type
  Tfr_Menu = class(TForm)
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    Sobre3: TMenuItem;
    Ajuda2: TMenuItem;                         
    Fechar2: TMenuItem;
    N2: TMenuItem;
    Timer1: TTimer;
    HeaderControl1: THeaderControl;
    MainMenu: TMainMenu;
    acAtualiza: TAction;
    PopupMenu2: TPopupMenu;
    act_Ativar: TAction;
    act_Desativar: TAction;
    JvTrayIcon: TJvTrayIcon;
    procedure FormCreate(Sender: TObject);
    procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
    procedure ShowHint(sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure act_AtivarExecute(Sender: TObject);
    procedure act_DesativarExecute(Sender: TObject);
    procedure JvTrayIconDblClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
   FListaPrograma: TStringList;

   procedure CapturaClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fr_Menu: Tfr_Menu;

implementation

uses unConnection;

{$R *.dfm}


procedure Tfr_Menu.ShowHint(Sender: TObject);
begin
   with Application do
   begin
   	HintShortCuts	:= True;
	   HintShortPause	:= 500;
   	ShowHint			:= True;
	   HintColor		:= clSkyBlue;
   end;

   with HeaderControl1 do
   begin
      Sections[0].Text 	:= Application.Hint;
      Sections[1].Width	:= Width -(Sections[0].Width + Sections[2].Width + Sections[3].Width);
      Sections[1].Text 	:= 'Empresa: '+dmConnection.empresanom_empresa.AsString+'  --  Usuário: '+dmConnection.usuariologin.AsString+'...';
      Sections[3].Text	:= Application.Name;
      Repaint;
      Refresh;
   end;
end;

procedure Tfr_Menu.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
begin
   if Msg.Message = WM_KEYDOWN then
      if not(Screen.ActiveControl is TCustomMemo) and
         not(Screen.ActiveControl is TButtonControl) then
         begin
            if not(Screen.ActiveControl is TCustomControl) then
            begin
               if Msg.wParam = VK_Down then
                  Msg.wParam := VK_Tab;
               if Msg.wParam = VK_UP then
               begin
                  Msg.wParam := VK_Clear;
                  Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
               end;
            end;
            if Msg.wParam = VK_Return then
            	Msg.wParam := VK_Tab;
         end;
end;

procedure Tfr_Menu.CapturaClick(Sender: TObject);
begin
   WinExec(Pchar(FListaPrograma.Values[TMenuItem(Sender).Hint] +
                                   ' ' +
                                   LowerCase(vgLogin) +
                                   ' ' +
                                   LowerCase(vgSenha) +
                                   ' ' +
                                   dmConnection.empresacod_empresa.AsString +
                                   ' ' +
                                   '0' +
                                   ' ' +
                                   '0' +
                                   ' ' +
                                   '0' +
                                   ' ' +
                                   IntToStr(vg_base_atual)), SW_NORMAL);
	act_Ativar.Execute;
end;

procedure Tfr_Menu.FormCreate(Sender: TObject);
begin
  Align                   := alTop;
	Application.OnMessage		:= ProcessaMsg;
  JvTrayIcon.PopupMenu	:= PopupMenu2;
  JvTrayIcon.Hint	:= Application.Title;
end;

procedure Tfr_Menu.Timer1Timer(Sender: TObject);
begin
	with HeaderControl1 do Sections[2].Text	:= FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
end;


procedure Tfr_Menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FListaPrograma.Destroy;
end;

procedure Tfr_Menu.FormResize(Sender: TObject);
begin
   with HeaderControl1 do
   begin
      Sections[0].Text 	:= Application.Hint;
      Sections[1].Width	:= Width -(Sections[0].Width + Sections[2].Width + Sections[3].Width);
      Sections[1].Text 	:= 'Empresa: '+dmConnection.empresanom_empresa.AsString+'  --  Usuário: '+dmConnection.usuariologin.AsString+'...';
      Sections[3].Text	:= Application.Name;
      Repaint;
      Refresh;
   end;
end;

procedure Tfr_Menu.act_AtivarExecute(Sender: TObject);
begin
	if IsWindowVisible(Handle) then
    JvTrayIcon.HideApplication;
end;

procedure Tfr_Menu.act_DesativarExecute(Sender: TObject);
begin
  if not IsWindowVisible(Handle) then
    JvTrayIcon.ShowApplication;
end;

procedure Tfr_Menu.JvTrayIconDblClick(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  dmConnection.acClose.Execute;
end;

end.
