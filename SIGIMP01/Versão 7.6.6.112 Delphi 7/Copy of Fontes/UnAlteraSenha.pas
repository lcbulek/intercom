unit UnAlteraSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, DB, IBDatabase,
  IBCustomDataSet, IBQuery;

type
  Tfr_AlterarSenha = class(TForm)
    Panel1: TPanel;
    edUsuario: TEdit;
    edSenhaAtual: TEdit;
    edConfSenha: TEdit;
    lblUsuario: TLabel;
    lblSenhaAtual: TLabel;
    lblNovaSenha: TLabel;
    lblConfSenha: TLabel;
    BtOK: TBitBtn;
    BtCancela: TBitBtn;
    Image1: TImage;
    edNovaSenha: TEdit;
    procedure BtCancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtOKClick(Sender: TObject);
    procedure edSenhaAtualExit(Sender: TObject);
    procedure edConfSenhaExit(Sender: TObject);
    procedure edUsuarioExit(Sender: TObject);
    procedure edSenhaAtualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNovaSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edConfSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     SenhaAtual : string;
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;


var
  fr_AlterarSenha: Tfr_AlterarSenha;
  RootUsuario : string;

implementation

uses unConnection, Math;

{$R *.dfm}

procedure Tfr_AlterarSenha.BtCancelaClick(Sender: TObject);
begin
   close;
end;

procedure Tfr_AlterarSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    fr_AlterarSenha := nil;
    Action := caFree;
end;

procedure Tfr_AlterarSenha.FormShow(Sender: TObject);
begin
    edUsuario.Text := vgLogin;
    with dmConnection.usuario do
     begin
       SQL.Clear;
       SQL.Add('select * ');
       SQL.Add('from "usuario"');
       SQL.Add('where "login" = :prLogin');
       ParamByName( 'prLogin' ).AsString := vgLogin;
       Open;
       RootUsuario := FieldByName('ies_root').AsString;
       if ((edUsuario.Text = vgLogin) and (RootUsuario = 'S')) then
        begin
          edUsuario.ReadOnly := false;
        end else
          edUsuario.ReadOnly := true;
    end;
end;

//Procedimento que recebe o login do usuário por parametro e e verifica se ele existe ou não.
procedure Tfr_AlterarSenha.edUsuarioExit(Sender: TObject);
begin
   with dmConnection.usuario do
     begin
       SQL.Clear;
       SQL.Add('select * ');
       SQL.Add('from "usuario"');
       SQL.Add('where "login" = :prLogin');
       ParamByName( 'prLogin' ).AsString := edUsuario.Text;
       Open;
       if not ( Eof ) then
       begin
         SenhaAtual := Crypitc(FieldByName('senha').AsString);
       end else
       begin
         MessageDlg( 'Usuário não foi encontrado!', mtError, [mbOK], 0 );
         BtCancela.SetFocus;
       end;
     end;
end;

//Procedimento que verifica a senha do usuário. Caso a senha for valida habilita os campos para alteração senão envia uma mensagem de senha inválida.
procedure Tfr_AlterarSenha.edSenhaAtualExit(Sender: TObject);
begin
  if Trim(edSenhaAtual.Text) = '' then Exit;

   If edSenhaAtual.Text = SenhaAtual then
   begin
      edNovaSenha.Enabled := True;
      edNovaSenha.Color := clWindow;
      lblNovaSenha.Enabled := True;
      edConfSenha.Enabled := True;
      edConfSenha.Color := clWindow;
      lblConfSenha.Enabled := True;
      edNovaSenha.SetFocus;
   end else
      begin
      MessageDlg('Senha incorreta!', mtError, [mbOK], 0);
      edSenhaAtual.Clear;
      BtCancela.SetFocus;
      end;
end;

//Procedimento que verifica se a senha digitada no no campo para confirmar a senha é igual a do campo nova senha.
procedure Tfr_AlterarSenha.edConfSenhaExit(Sender: TObject);
begin
   if edNovaSenha.Text <> edConfSenha.Text then
   begin
     MessageDlg('Senha não foi confirmada corretamente!', mtError, [mbOK], 0);
     edConfSenha.Clear;
     BtCancela.SetFocus;
   end else
   begin
     BtOK.Enabled := True;
     BtOK.SetFocus;
   end;
end;

//Procedimento que atualiza a senha do usuario.
procedure Tfr_AlterarSenha.BtOKClick(Sender: TObject);
begin
   with dmConnection.usuario do
      begin
      SQL.Clear;
      SQL.Text := 'update "usuario" set "senha" = ' + QuotedStr(Crypitc( edNovaSenha.Text )) + 'where "login" =' + QuotedStr(edUsuario.Text);
      ExecSQL;
      end;
   MessageDlg('Senha alterada com sucesso!', mtInformation , [mbOK], 0);
   Close;
end;

procedure Tfr_AlterarSenha.edSenhaAtualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfr_AlterarSenha.edNovaSenhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfr_AlterarSenha.edConfSenhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfr_AlterarSenha.edUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

end.
