unit SigCAD01_021;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadMoeda = class(Tfr_Cad)
    IBDataSetcod_moeda: TSmallintField;
    IBDataSetden_moeda: TIBStringField;
    Label1: TLabel;
    dbedden_moeda: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    IBDataSetcodigo: TIBStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure dbedden_moedaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadMoeda: Tfr_CadMoeda;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadMoeda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadMoeda := nil;
end;

procedure Tfr_CadMoeda.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_moeda.AsInteger := InsertCode('moeda', 'cod_moeda');
end;

procedure Tfr_CadMoeda.dbedden_moedaExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadMoeda.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadMoeda.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('moeda') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_moeda', dmConnection.qryPesquisa.FieldByName('campo3').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadMoeda.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadMoeda.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadMoeda.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_moeda.FocusControl;
end;

procedure Tfr_CadMoeda.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_moeda.FocusControl;
end;

end.                            
