unit SigCAD01_006;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadPais = class(Tfr_Cad)
    IBDataSetcod_pais: TSmallintField;
    IBDataSetnom_pais: TIBStringField;
    Label1: TLabel;
    dbedcod_pais: TDBEdit;
    Label2: TLabel;
    dbednom_pais: TDBEdit;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbednom_paisExit(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadPais: Tfr_CadPais;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadPais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   fr_CadPais := nil;
end;

procedure Tfr_CadPais.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadPais.dbednom_paisExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadPais.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
   if DataSet.State = dsInsert then
      IBDataSetcod_pais.AsInteger   := InsertCode('pais', 'cod_pais');
end;

procedure Tfr_CadPais.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('pais') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_pais', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadPais.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadPais.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadPais.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_pais.FocusControl;
end;

procedure Tfr_CadPais.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_pais.FocusControl;
end;

procedure Tfr_CadPais.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_pais.FocusControl;
end;

end.
