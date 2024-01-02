unit unMenuCompl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, ToolWin, ActnMan, ActnCtrls, ActnMenus,
  StdCtrls, ComCtrls, ExtCtrls, jpeg;

type
  Tfr_MenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    Ajuda1: TMenuItem;
    ActionList1: TActionList;
    HeaderControl1: THeaderControl;
    imgSig: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure HeaderControl1DrawSection(HeaderControl: THeaderControl;
      Section: THeaderSection; const Rect: TRect; Pressed: Boolean);
  private

  protected
    { Private declarations }
    procedure Set_Value; virtual;
  public
    { Public declarations }
  	procedure AppMsg(var Msg: TMsg; var Handled: Boolean);    
  end;


function CriarForm(pTForm: TComponentClass; var pForm; Modal: Boolean = False;
	Cascata: Boolean = True; const Maximize: Boolean = False): Boolean;

function AbrirPesquisa: Boolean;

var
  fr_MenuPrincipal: Tfr_MenuPrincipal;

implementation

uses unConnection, UnAbout, UnPesquisa, DB;

{$R *.dfm}

function CriarForm(pTForm: TComponentClass; var pForm; Modal: Boolean;
	Cascata: Boolean; const Maximize: Boolean): Boolean;
var
	lIdx: Byte;
   Existir_Formulario: Boolean;
begin
	Result := False;
	try
   	LockWindowUpdate(Application.MainForm.Handle);

      Existir_Formulario := Assigned(TForm(pForm));
      if not Existir_Formulario then
      begin
         Application.CreateForm(pTForm, pForm);

         Existir_Formulario := Assigned(TForm(pForm));
         if not Existir_Formulario then
         	Exit;

         with TForm(pForm) do
         begin
            HelpContext	:= StrToIntDef(HelpKeyword, 0);
            HelpType		:= htContext;
            with Constraints do
            begin
               MinHeight	:= Height;
               MinWidth	:= Width;
            end;
         end;
      end;

			with TForm(pForm) do
   	   begin
         	if Existir_Formulario then

      		ShowHint := True;

            if Modal then
            begin
               if Existir_Formulario then
      	      	ShowModal;
            end else Show;
   	   end;

      if Cascata then
         Application.MainForm.Cascade;

      with Application.MainForm do
			if (MDIChildCount > 0) and (Cascata) then
   	   	for lIdx := 0  to MDIChildCount -1 do
            	with MDIChildren[lIdx] do
               begin
                  Height	:= Constraints.MinHeight;
                  Width		:= Constraints.MinWidth;
               end;

      if Maximize then
      	TForm(pForm).WindowState	:= wsMaximized;
   finally
   	LockWindowUpdate(0);
   end;
	Result := not Result;
end;

function AbrirPesquisa: Boolean;
begin
   if not Assigned(fr_Pesquisa) then
      Application.CreateForm(Tfr_Pesquisa, fr_Pesquisa);

   fr_Pesquisa.ShowModal;
   Result := fr_Pesquisa.ModalResult = mrOk;
end;

procedure Tfr_MenuPrincipal.ShowHint(Sender: TObject);
begin
	with Application do
  begin
    HintPause          := 0;
    HintShortCuts		:= True;
	  HintShortPause	   := 0;
    HintHidePause      := 15000;
    ShowHint				:= True;
	  HintColor				:= clInfoBk;
	end;
(*
  with HeaderControl1 do
  begin
    Sections[0].Text 	:= Application.Hint;
    Repaint;
    Refresh;
  end;
*)
end;

procedure Tfr_MenuPrincipal.AppMsg(var Msg: TMsg; var Handled: Boolean);
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
               Screen.ActiveForm.Perform(WM_NextDlgCtl, 1, 0);
            end;
         end;
         if Msg.wParam = VK_Return then
            Msg.wParam := VK_Tab;
      end;
end;

procedure Tfr_MenuPrincipal.FormCreate(Sender: TObject);
begin
  Set_Value;
	Caption	:= Application.Title;
  Repaint;
	Application.OnHint			:= ShowHint;
	Application.OnMessage		:= AppMsg;

  imgSig.Picture.Bitmap.FreeImage;
  try
		imgSig.Picture.LoadFromFile(Buscar_Logo);
  except end;
end;


procedure Tfr_MenuPrincipal.FormResize(Sender: TObject);
begin
   with HeaderControl1 do
   begin
      //Sections[0].Text 	:= Application.Hint;
      if vgServer = 'system_bkp:' then
      begin
         Sections[0].Text := 'SERVER BACKUP';
         Sections[2].Text := 'SERVER BACKUP';
      end;
      
      Sections[1].Width	:= Width -(Sections[0].Width + Sections[2].Width + Sections[3].Width);
      Sections[1].Text 	:= 'Empresa: ' + dmConnection.empresacod_empresa.AsString + ' - ' +
                                           dmConnection.empresanom_empresa_reduz.AsString +
                             '  --  Usuário: ' + dmConnection.usuariologin.AsString +
                             '  --  Logado desde: ' + UsuarioLoginDate();
      Sections[3].Text	:= Application.Name;
      Repaint;
      Refresh;
   end;
end;

procedure Tfr_MenuPrincipal.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
   try
      LockWindowUpdate(Self.Handle);
      imgSig.Top   := (Self.ClientHeight - imgSig.Height) div 2;
      imgSig.Left  := (Self.ClientWidth - imgSig.Width) div 2;
   finally
      LockWindowUpdate(0);
      imgSig.Repaint;
      imgSig.Refresh;
      Screen.Realign;
   end;
end;


procedure Tfr_MenuPrincipal.Set_Value;
begin
end;

procedure Tfr_MenuPrincipal.HeaderControl1DrawSection(
  HeaderControl: THeaderControl; Section: THeaderSection;
  const Rect: TRect; Pressed: Boolean);
begin
  if (Section = HeaderControl.Sections[0]) or (Section = HeaderControl.Sections[2]) then
  begin
    HeaderControl.Canvas.Font.Color := clRed;
    HeaderControl.Canvas.TextRect(Rect, Rect.Left+2, Rect.Top, Section.Text);
  end;
end;

end.
