unit SigIMP01_038;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, StdCtrls, Mask, DBCtrls, DB, IBCustomDataSet, IBQuery,
  ActnList, unNavigator, ComCtrls, ToolWin, ExtCtrls;

type
  Tfr_CadContainers = class(Tfr_Cad)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    IBDataSetcod_container: TIntegerField;
    IBDataSetden_container: TIBStringField;
    IBDataSetcomprimento: TIBBCDField;
    IBDataSetlargura: TIBBCDField;
    IBDataSetaltura: TIBBCDField;
    IBDataSetarea_disp: TIBBCDField;
    IBDataSetarea_util: TIBBCDField;
    IBDataSetpeso_maximo: TIBBCDField;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    IBDataSettip_container: TIBStringField;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value;
  end;

var
  fr_CadContainers: Tfr_CadContainers;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadContainers.Set_Value;
begin
  OpenTable(IBDataSet);
end;

procedure Tfr_CadContainers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  IBDataSet.Close;
  Action := caFree;
  fr_CadContainers := nil;
end;

procedure Tfr_CadContainers.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadContainers.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('containers') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_container', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

end.
