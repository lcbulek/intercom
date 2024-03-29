unit unLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, IniFiles, DB,
  IBCustomDataSet, jpeg;

const
	ctLogin: String = 'Login';
  ctUser_Name: String = 'user_name';
  
type
  Tfr_Login = class(TForm)
    pnLogin: TPanel;
    edUsuario: TLabeledEdit;
    edSenha: TLabeledEdit;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    dblkden_empresa: TDBLookupListBox;
    Image1: TImage;
    stServer: TStaticText;
    procedure edSenhaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSenhaEnter(Sender: TObject);
    procedure bt_BaseClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
  public
    { Public declarations }
  end;

var
  fr_Login: Tfr_Login;

implementation

uses unConnection;


{$R *.dfm}

procedure Tfr_Login.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
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

procedure Tfr_Login.edSenhaExit(Sender: TObject);
var
	LIni: TIniFile;
begin
	LIni := TIniFile.Create(Buscar_Ini);
  with lIni do
  try
  	WriteString(ctLogin, ctUser_Name, edUsuario.Text);
  finally
  	Free;
  end;

  if (Length(edUsuario.Text) > 0) and (Length(edSenha.Text) > 0) 	then
  try
    vgLogin	:= edUsuario.Text;
    vgSenha	:= edSenha.Text;
    if not btOk.Enabled then
    	btOk.Enabled	:= Conectar_FireBird;
    finally

  	if not btOk.Enabled then edSenha.SetFocus
    else dblkden_empresa.SetFocus;
    edSenha.Clear;
  end;
  stServer.Visible :=  vgServer = 'system_bkp:';
end;

procedure Tfr_Login.FormCreate(Sender: TObject);
begin
	Application.OnMessage	:= ProcessaMsg;
  vg_base_atual := 0;
end;

procedure Tfr_Login.FormShow(Sender: TObject);
var
	LIni: TIniFile;
begin
	LIni := TIniFile.Create(Buscar_Ini);
  with LIni do
  try
  	if not FileExists(Buscar_Ini) then
    	WriteString(ctLogin, ctUser_Name, 'seu login');

    edUsuario.Text := ReadString(ctLogin, ctUser_Name, 'seu login');
//    edSenha.SetFocus;
  finally
  	Free;
  end;
end;

procedure Tfr_Login.edSenhaEnter(Sender: TObject);
begin
	btOk.Enabled	:= False;
end;

procedure Tfr_Login.bt_BaseClick(Sender: TObject);
begin
	vg_base_atual := 0;
  edSenha.SetFocus;
end;

procedure Tfr_Login.btOkClick(Sender: TObject);
begin
  vgCod_Empresa	:= dblkden_empresa.KeyValue;
end;

end.
