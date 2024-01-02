unit SigCAD01_003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadAEN = class(Tfr_Cad)
    IBDataSetaen1: TSmallintField;
    IBDataSetaen2: TSmallintField;
    IBDataSetaen3: TSmallintField;
    IBDataSetaen4: TSmallintField;
    IBDataSetden_aen: TIBStringField;
    Label1: TLabel;
    edtaen1: TDBEdit;
    Label2: TLabel;
    edtaen2: TDBEdit;
    Label3: TLabel;
    edtaen3: TDBEdit;
    Label4: TLabel;
    edtaen4: TDBEdit;
    Label5: TLabel;
    edtden_aen: TDBEdit;
    Label11: TLabel;
    edtdat_cadastro: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    spbTraduzir: TSpeedButton;
    procedure edtden_aenExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetaen4Validate(Sender: TField);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure TraduzirExecute(Sender: TObject);
  private
    { Private declarations }
    function ValidaAEN: Boolean;
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadAEN: Tfr_CadAEN;

implementation

uses UnMenuCompl, unConnection, SigCAD01_047;

{$R *.dfm}

procedure Tfr_CadAEN.edtden_aenExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadAEN.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadAEN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   fr_CadAEN   := nil;
end;

procedure Tfr_CadAEN.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSetaen1.FocusControl;
end;

procedure Tfr_CadAEN.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_aen.FocusControl;
end;

procedure Tfr_CadAEN.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   IBDataSetaen1.FocusControl;
end;

procedure Tfr_CadAEN.IBDataSetaen4Validate(Sender: TField);
begin
  inherited;
	if not ValidaAEN then
   begin
      MessageDlg('Atenção. AEN já cadastrada.', mtError, [mbCancel], 0);
   	Abort;
   end;
end;

function Tfr_CadAEN.ValidaAEN: Boolean;
begin
	with QrAux do
   begin
   	Close;
      ParamByName('aen1').AsSmallInt := IBDataSetaen1.AsInteger;
      ParamByName('aen2').AsSmallInt := IBDataSetaen2.AsInteger;
      ParamByName('aen3').AsSmallInt := IBDataSetaen3.AsInteger;
      ParamByName('aen4').AsSmallInt := IBDataSetaen4.AsInteger;
      Open;
      Result := IsEmpty;
   end;
end;

procedure Tfr_CadAEN.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadAEN.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
	if IBDataSet.State in [dsBrowse] then
  	if edtaen1.Focused then
    begin
      if Pesquisar('aen') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('aen1', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
		end else
    if edtaen2.Focused then
    begin
	    if Pesquisar('aen', ' "aen1" = ' +IBDataSetaen1.AsString) then
      	if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
//               First;
               Locate('aen1;aen2', VarArrayOf([IBDataSetaen1.AsInteger, dmConnection.qryPesquisa.FieldByName('campo1').AsVariant]), []);
            finally
               EnableControls;
            end;
		end else
    if edtaen3.Focused then
    begin
	    if Pesquisar('aen', ' "aen1" = ' +IBDataSetaen1.AsString + ' and "aen2" = ' +IBDataSetaen2.AsString) then
      	if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
//               First;
               Locate('aen1;aen2;aen3', VarArrayOf([IBDataSetaen1.AsInteger, IBDataSetaen2.AsInteger, dmConnection.qryPesquisa.FieldByName('campo1').AsVariant]), []);
            finally
               EnableControls;
            end;
		end else
    if edtaen4.Focused then
    begin
	    if Pesquisar('aen', ' "aen1" = ' +IBDataSetaen1.AsString + ' and "aen2" = ' +IBDataSetaen2.AsString + ' and "aen3" = ' +IBDataSetaen3.AsString) then
      	if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
//               First;
               Locate('aen1;aen2;aen3;aen4', VarArrayOf([IBDataSetaen1.AsInteger, IBDataSetaen2.AsInteger, IBDataSetaen3.AsInteger, dmConnection.qryPesquisa.FieldByName('campo1').AsVariant]), []);
            finally
               EnableControls;
            end;
		end;
end;

procedure Tfr_CadAEN.Set_Value;
begin
	OpenTable(IBDataSet);
end;

procedure Tfr_CadAEN.TraduzirExecute(Sender: TObject);
begin
  inherited;
  { Chamar o form Traduções (SIGCAD01_047}
  if TSpeedButton(Sender).Tag = 0 then
  begin                                                                  
     if Not(Assigned(fr_Cad_Traducoes)) then
        Application.CreateForm(Tfr_Cad_Traducoes, fr_Cad_Traducoes);

     fr_Cad_Traducoes.AbrirTraducao(IBDataSet.FieldByName('aen1').AsString+'.'+
                                    IBDataSet.FieldByName('aen2').AsString+'.'+
                                    IBDataSet.FieldByName('aen3').AsString+'.'+
                                    IBDataSet.FieldByName('aen4').AsString,
                                    IBDataSet.FieldByName('den_aen').AsString,
                                    'AEN', 'DEN_AEN',
                                    IBDataSet.FieldByName('aen1').AsString,
                                    IBDataSet.FieldByName('aen2').AsString,
                                    IBDataSet.FieldByName('aen3').AsString,
                                    IBDataSet.FieldByName('aen4').AsString);

  end;

end;

end.
