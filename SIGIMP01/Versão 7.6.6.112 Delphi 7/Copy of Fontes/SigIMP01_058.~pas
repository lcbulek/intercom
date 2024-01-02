unit SigIMP01_058;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask;

type
  Tfr_CadPortos = class(Tfr_Cad)
    IBDataSetcod_porto: TIntegerField;
    IBDataSetden_porto: TIBStringField;
    IBDataSeties_tipo: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dbeden_porto: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetAfterDelete(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value;
  end;

var
  fr_CadPortos: Tfr_CadPortos;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadPortos.Set_Value;
begin
  OpenTable(IBDataSet);
end;

procedure Tfr_CadPortos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fr_CadPortos := nil;
end;

procedure Tfr_CadPortos.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
  dbeden_porto.SetFocus;
end;

procedure Tfr_CadPortos.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_porto.AsInteger := InsertCode('portos', 'cod_porto');
end;

procedure Tfr_CadPortos.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  dbeden_porto.SetFocus;
end;

procedure Tfr_CadPortos.IBDataSetAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dbeden_porto.SetFocus;                                                                         
end;

procedure Tfr_CadPortos.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('portos') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_porto', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;

end;

end.
