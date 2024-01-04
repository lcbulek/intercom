unit SigCAD01_007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadUnidadeFederativa = class(Tfr_Cad)
    IBDataSetcod_unidade_federativa: TSmallintField;
    IBDataSetsigla: TIBStringField;
    IBDataSetcod_pais: TSmallintField;
    QrAuxcod_pais: TSmallintField;
    QrAuxnom_pais: TIBStringField;
    IBDataSetlkNomPais: TIBStringField;
    Label1: TLabel;
    dbedcod_unidade_federativa: TDBEdit;
    Label2: TLabel;
    dbednom_unidade_federativa: TDBEdit;
    Label3: TLabel;
    dbbedsigla: TDBEdit;
    Label4: TLabel;
    dblklkNomPais: TDBLookupComboBox;
    IBDataSetnom_unidade_federativa: TIBStringField;
    edtcod_pais: TDBEdit;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dblklkNomPaisExit(Sender: TObject);
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
  fr_CadUnidadeFederativa: Tfr_CadUnidadeFederativa;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadUnidadeFederativa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadUnidadeFederativa := nil;
end;

procedure Tfr_CadUnidadeFederativa.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  OpenTableAux(QrAux);
end;

procedure Tfr_CadUnidadeFederativa.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadUnidadeFederativa.dblklkNomPaisExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadUnidadeFederativa.IBDataSetBeforePost(DataSet: TDataSet);
	function NovaUnidadeFederativa: Smallint;
   var
   	lQr: TIBQuery;
   begin
   	lQr := TIBQuery.Create(nil);
      with lQr, SQL do
      try
         Database := dmConnection.dbSig;
         Clear;
         Add(' select max("cod_unidade_federativa") +1 cod_unidade_federativa ');
         Add(' from "unidade_federativa" ');
         Open;
         if FieldByName('cod_unidade_federativa').IsNull then
            Result := 1
         else Result := FieldByName('cod_unidade_federativa').AsInteger;
      finally
      	lQr.Close;
        	lQr.Free;
      end;
   end;
begin
  inherited;
   if DataSet.State = dsInsert then
      IBDataSetcod_unidade_federativa.AsInteger   := InsertCode('unidade_federativa', 'cod_unidade_federativa');
end;

procedure Tfr_CadUnidadeFederativa.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('unidade_federativa') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_unidade_federativa', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end else
   if IBDataSet.State in [dsInsert, dsEdit] then
      if (edtcod_pais.Focused) or (dblklkNomPais.Focused) then
      begin
         if Pesquisar('pais') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_pais.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;
      end;
end;

procedure Tfr_CadUnidadeFederativa.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadUnidadeFederativa.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadUnidadeFederativa.IBDataSetBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_unidade_federativa.FocusControl;
end;

procedure Tfr_CadUnidadeFederativa.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_unidade_federativa.FocusControl;
end;

procedure Tfr_CadUnidadeFederativa.IBDataSetBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_unidade_federativa.FocusControl;
end;

end.
