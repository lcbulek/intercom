unit SigCAD01_008;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadCidade = class(Tfr_Cad)
    IBDataSetcod_unidade_federativa: TSmallintField;
    QrAuxcod_unidade_federativa: TSmallintField;
    IBDataSetlkDenUnidadeFederativa: TIBStringField;
    QrAuxnom_unidade_federativa: TIBStringField;
    IBDataSetnom_cidade: TIBStringField;
    Label1: TLabel;
    dbedcod_cidade: TDBEdit;
    Label2: TLabel;
    dbednom_cidade: TDBEdit;
    Label3: TLabel;
    dblklkDenUnidadeFederativa: TDBLookupComboBox;
    IBDataSetcod_cidade: TSmallintField;
    edtcod_unidade_federativa: TDBEdit;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dblklkDenUnidadeFederativaExit(Sender: TObject);
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
  fr_CadCidade: Tfr_CadCidade;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadCidade   := nil;
end;

procedure Tfr_CadCidade.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
	OpenTableAux(QrAux);
end;

procedure Tfr_CadCidade.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadCidade.dblklkDenUnidadeFederativaExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadCidade.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
   if DataSet.State = dsInsert then
      IBDataSetcod_cidade.AsInteger   := InsertCode('cidade', 'cod_cidade');
end;

procedure Tfr_CadCidade.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('cidade') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_cidade', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end else
   if IBDataSet.State in [dsInsert, dsEdit] then
      if (edtcod_unidade_federativa.Focused) or (dblklkDenUnidadeFederativa.Focused) then
      begin
         if Pesquisar('unidade_federativa') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_unidade_federativa.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;
      end;
end;

procedure Tfr_CadCidade.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadCidade.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadCidade.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_cidade.FocusControl;
end;

procedure Tfr_CadCidade.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_cidade.FocusControl;
end;

procedure Tfr_CadCidade.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_cidade.FocusControl;
end;


end.
