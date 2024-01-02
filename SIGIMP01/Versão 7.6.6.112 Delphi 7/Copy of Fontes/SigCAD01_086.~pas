unit SigCAD01_086;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, DB, IBCustomDataSet, IBQuery, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask;

type
  TfrmNCM = class(Tfr_Cad)
    IBDataSetncm_cod: TIntegerField;
    IBDataSetncm_letra: TIBStringField;
    IBDataSetncm_den: TIBStringField;
    IBDataSetncm_lic: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetncm_codGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNCM: TfrmNCM;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure TfrmNCM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmNCM := nil;
end;

procedure TfrmNCM.FormShow(Sender: TObject);
begin
  inherited;
  IBDataSet.Open;
end;

procedure TfrmNCM.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('ncm') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('ncm_cod', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;

end;

procedure TfrmNCM.IBDataSetncm_codGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Not(Sender.IsNull) then Text := FormatarNcm(Sender.AsInteger);
end;

procedure TfrmNCM.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSet.FieldByName('ncm_letra').Clear;
  IBDataSet.FieldByName('ncm_lic').AsString := 'N';
end;

end.
