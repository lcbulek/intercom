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
    procedure acAtualizaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure act_AtivarExecute(Sender: TObject);
    procedure act_DesativarExecute(Sender: TObject);
    procedure JvTrayIconDblClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
   FListaPrograma: TStringList;

   procedure CriaMenu(Menu: TMenu);
   procedure CapturaClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fr_Menu: Tfr_Menu;

implementation

uses unConnection;

{$R *.dfm}

procedure Tfr_Menu.CriaMenu(Menu: TMenu);
var
	LQrSistema, LQrModulo, LQrSubModulo: TIBQuery;
  LNvSistema, LNvModulo, LNvSubModulo: TMenuItem;
  LIndexSistema, LIndexModulo, LIndexSubModulo: Integer;
begin
   try
      if Assigned(FListaPrograma) then
         FListaPrograma.Destroy;
   finally
      FListaPrograma  := TStringList.Create;
   end;

	Menu.Items.Clear;
   LQrSistema := TIBQuery.Create(fr_Menu);
   with LQrSistema, SQL do
      try
         DataBase := dmConnection.dbSig;
         Close;
         Clear;
         Add(' select distinct a.* ');
         Add(' from "sistema" a ');
         Add('      join "modulo" b on b."cod_sistema" = a."cod_sistema" ');
         Add('      join "vwsub_modulo" c on c."cod_modulo" = b."cod_modulo" ');
         Add('      join "vwusuario_sub_modulo" d on d."cod_sub_modulo" = c."cod_sub_modulo" ');
         Add('                                    and d."login"          = :login ');
         ParamByName('login').AsString	:= vgLogin;
         Add(' order by a."nom_sistema" ');
         Open;
         Last;
         First;
         LIndexSistema 	:= 0;
         while not Eof do
         begin
            LNvSistema   				:= TMenuItem.Create(Menu);
            LNvSistema.Caption 		:= AnsiUpperCase(Copy(FieldByName('nom_sistema').AsString, 1, 1)) +
            AnsiLowerCase(Copy(FieldByName('nom_sistema').AsString, 2, Length(FieldByName('nom_sistema').AsString)));
            Menu.Items.Add(LNvSistema);

            LQrModulo := TIBQuery.Create(fr_Menu);
            with LQrModulo, SQL do
            try
               DataBase := dmConnection.dbSig;
               Clear;
               Add(' select distinct a.* ');
               Add(' from "modulo" a ');
               Add('      join "vwsub_modulo" b on b."cod_modulo" = a."cod_modulo" ');
               Add('      join "vwusuario_sub_modulo" d on d."cod_sub_modulo" = b."cod_sub_modulo" ');
		         Add('                                    and d."login"          = :login ');
      		   ParamByName('login').AsString	:= vgLogin;
               Add(' where ');
               Add('     a."cod_sistema" = :cod_sistema ');
               Add(' order by a."nom_modulo" ');
               ParamByName('cod_sistema').AsInteger := LQrSistema.FieldByName('cod_sistema').AsInteger;
               Open;
               Last;
               First;
               LIndexModulo	 	:= 0;
               while not Eof do
               begin
                  LNvModulo   				:= TMenuItem.Create(Menu);
                  LNvModulo.Caption 		:= AnsiUpperCase(Copy(LQrModulo.FieldByName('nom_modulo').AsString, 1, 1)) +
                  AnsiLowerCase(Copy(LQrModulo.FieldByName('nom_modulo').AsString, 2, Length(LQrModulo.FieldByName('nom_modulo').AsString)));
                  if (LQrModulo.FieldByName('nom_modulo').AsString <> LQrSistema.FieldByName('nom_sistema').AsString) or
                  	(LQrModulo.RecordCount <> 1) then // 20040916
	                  Menu.Items[LIndexSistema].Insert(LIndexModulo, LNvModulo);

                  LQrSubModulo := TIBQuery.Create(fr_Menu);
                  with LQrSubModulo, SQL do
                  try
                     DataBase := dmConnection.dbSig;
                     Clear;
                     Add(' select distinct a.* ');
                     Add(' from "vwsub_modulo" a ');
                     Add('      join "vwusuario_sub_modulo" d on d."cod_sub_modulo" = a."cod_sub_modulo" ');
				             Add('                                    and d."login"          = :login ');
                     ParamByName('login').AsString	:= vgLogin;
                     Add(' where ');
                     Add('     a."cod_modulo"  = :cod_modulo ');
                     Add(' order by a."nom_sub_modulo" ');
                     ParamByName('cod_modulo').AsInteger := LQrModulo.FieldByName('cod_modulo').AsInteger;
                     Open;
                     LIndexSubModulo	:= 0;
                     if not IsEmpty then
                     begin
                     	Last;
	                     First;
                        while not Eof do
                        begin
                           LNvSubModulo   				:= TMenuItem.Create(Menu);
                           LNvSubModulo.Hint         := LQrSubModulo.FieldByName('cod_sub_modulo').AsString;
                           LNvSubModulo.Caption 		:= AnsiUpperCase(Copy(LQrSubModulo.FieldByName('nom_sub_modulo').AsString, 1, 1)) +
                           AnsiLowerCase(Copy(LQrSubModulo.FieldByName('nom_sub_modulo').AsString, 2, Length(LQrSubModulo.FieldByName('nom_sub_modulo').AsString)));

                           if (LQrModulo.FieldByName('nom_modulo').AsString <> LQrSistema.FieldByName('nom_sistema').AsString) or (LQrModulo.RecordCount <> 1) then // 20040916
                           begin
                           	if (LQrSubModulo.FieldByName('nom_sub_modulo').AsString <> LQrModulo.FieldByName('nom_modulo').AsString) or
                               (LQrSubModulo.RecordCount <> 1) then // 20040916
                            begin
	                           	Menu.Items[LIndexSistema].Items[LIndexModulo].Insert(LIndexSubModulo, LNvSubModulo);
   		                        Menu.Items[LIndexSistema].Items[LIndexModulo].Items[LIndexSubModulo].OnClick := CapturaClick;
                            end else
                            begin
                            	Menu.Items[LIndexSistema].Items[LIndexModulo].Hint		:= LQrSubModulo.FieldByName('cod_sub_modulo').AsString;
                              Menu.Items[LIndexSistema].Items[LIndexModulo].OnClick	:= CapturaClick;
                            end;
                           end else
                           if (LQrSubModulo.FieldByName('nom_sub_modulo').AsString <> LQrSistema.FieldByName('nom_sistema').AsString) or
										   		    (LQrModulo.RecordCount <> 1) or
                              (LQrSubModulo.RecordCount <> 1) then // 20040916
                           begin
	                         	Menu.Items[LIndexSistema].Insert(LIndexSubModulo, LNvSubModulo);
   		                      Menu.Items[LIndexSistema].Items[LIndexSubModulo].OnClick := CapturaClick;
                           end else
                           begin
                           	Menu.Items[LIndexSistema].Hint		:= LQrSubModulo.FieldByName('cod_sub_modulo').AsString;
                            Menu.Items[LIndexSistema].OnClick	:= CapturaClick;
                           end;

                           FListaPrograma.Add(LNvSubModulo.Hint+'=' +LQrSubModulo.FieldByName('local').AsString);

                           LQrSubModulo.Next;
                           Inc(LIndexSubModulo);
                        end;
                     end;
                  finally
                     LQrSubModulo.Close;
                     LQrSubModulo.Free;
                  end;
                  LQrModulo.Next;
                  Inc(LIndexModulo);
               end;
            finally
               LQrModulo.Close;
               LQrModulo.Free;
            end;
            LQrSistema.Next;
            Inc(LIndexSistema);
         end;
      finally
         LQrSistema.Close;
         LQrSistema.Free;
         
         LNvSistema   				:= TMenuItem.Create(Menu);
         LNvSistema.Caption 		:= 'Sistema';
         Menu.Items.Add(LNvSistema);

         LNvModulo					:= TMenuItem.Create(Menu);
         LNvModulo.Caption		:= 'Sobre o sistema';
         Menu.Items[Menu.Items.Count -1].Insert(0, LNvModulo);
         Menu.Items[Menu.Items.Count -1].Items[0].Action := dmConnection.acSobre;

         LNvModulo					:= TMenuItem.Create(Menu);
         LNvModulo.Caption		:= 'Ajuda do sistema';
         Menu.Items[Menu.Items.Count -1].Insert(1, LNvModulo);
         Menu.Items[Menu.Items.Count -1].Items[1].Action := dmConnection.acHelp;

         LNvModulo					:= TMenuItem.Create(Menu);
         LNvModulo.Caption		:= 'Alterar Senha';
         Menu.Items[Menu.Items.Count -1].Insert(2, LNvModulo);
         Menu.Items[Menu.Items.Count -1].Items[2].Action := dmConnection.acAlterarSenha;

         LNvModulo					:= TMenuItem.Create(Menu);
         LNvModulo.Caption		:= '-';
         Menu.Items[Menu.Items.Count -1].Insert(3, LNvModulo);

         LNvModulo					:= TMenuItem.Create(Menu);
         LNvModulo.Caption		:= 'Atualizar';
         Menu.Items[Menu.Items.Count -1].Insert(4, LNvModulo);
         Menu.Items[Menu.Items.Count -1].Items[4].Action := acAtualiza;

         LNvModulo					:= TMenuItem.Create(Menu);
         LNvModulo.Caption		:= '-';
         Menu.Items[Menu.Items.Count -1].Insert(5, LNvModulo);

         LNvModulo					:= TMenuItem.Create(Menu);
         LNvModulo.Caption		:= 'Fechar';
         Menu.Items[Menu.Items.Count -1].Insert(6, LNvModulo);
         Menu.Items[Menu.Items.Count -1].Items[6].Action := dmConnection.acClose;

      end;
end;

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
	CriaMenu(MainMenu);
  CriaMenu(PopupMenu2);
  JvTrayIcon.PopupMenu	:= PopupMenu2;
  JvTrayIcon.Hint	:= Application.Title;
end;

procedure Tfr_Menu.Timer1Timer(Sender: TObject);
begin
	with HeaderControl1 do Sections[2].Text	:= FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
end;


procedure Tfr_Menu.acAtualizaExecute(Sender: TObject);
begin
	CriaMenu(MainMenu);
  CriaMenu(PopupMenu2);
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
