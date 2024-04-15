unit SigADM02_006;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadUsuario = class(Tfr_Cad)
    IBDataSetlogin: TIBStringField;
    IBDataSetnome: TIBStringField;
    IBDataSetsenha: TIBStringField;
    IBDataSeties_root: TIBStringField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    Label1: TLabel;
    dbedlogin: TDBEdit;
    Label2: TLabel;
    dbednome: TDBEdit;
    Label3: TLabel;
    dbedsenha: TDBEdit;
    Label6: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSeties_tipo: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbckies_rootExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetsenhaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure IBDataSetsenhaSetText(Sender: TField; const Text: String);
  private
  protected
    procedure Set_Value; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadUsuario: Tfr_CadUsuario;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	fr_CadUsuario	:= nil;
end;

procedure Tfr_CadUsuario.dbckies_rootExit(Sender: TObject);
begin
  inherited;          
  FieldRequired;
end;

procedure Tfr_CadUsuario.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadUsuario.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSeties_root.AsString 		:= 'S';
   IBDataSeties_situacao.AsString	:= 'A';
   IBDataSeties_tipo.AsString     := 'L';
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadUsuario.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('usuario') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('login', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadUsuario.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadUsuario.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetlogin.FocusControl;
end;

procedure Tfr_CadUsuario.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetlogin.FocusControl;
end;

procedure Tfr_CadUsuario.IBDataSetsenhaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  inherited;
  Text := Sender.AsString;
  Text := Crypitc(Sender.AsString);
end;

procedure Tfr_CadUsuario.IBDataSetsenhaSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Crypitc(Text);
end;

end.
