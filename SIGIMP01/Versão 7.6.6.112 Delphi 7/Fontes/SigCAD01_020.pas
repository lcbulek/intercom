unit SigCAD01_020;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadMedida = class(Tfr_Cad)
    IBDataSetcod_uni_medida: TSmallintField;
    IBDataSetden_uni_medida: TIBStringField;
    IBDataSetsigla: TIBStringField;
    Label1: TLabel;
    dbedcod_uni_medida: TDBEdit;
    Label2: TLabel;
    dbedden_uni_medida: TDBEdit;
    Label3: TLabel;
    dbedsigla: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetden_uni_medida_i: TIBStringField;
    IBDataSetsigla_i: TIBStringField;
    IBDataSetsigla_vol: TIBStringField;
    IBDataSetsigla_vol_i: TIBStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
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
  fr_CadMedida: Tfr_CadMedida;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadMedida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	fr_CadMedida := nil;
end;

procedure Tfr_CadMedida.FormShow(Sender: TObject);
begin
  inherited;
	Set_Value;   
end;

procedure Tfr_CadMedida.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_uni_medida.AsInteger := InsertCode('medida', 'cod_uni_medida');
end;

procedure Tfr_CadMedida.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('medida') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_uni_medida', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadMedida.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadMedida.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadMedida.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_uni_medida.FocusControl;
end;

procedure Tfr_CadMedida.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_uni_medida.FocusControl;
end;

end.
