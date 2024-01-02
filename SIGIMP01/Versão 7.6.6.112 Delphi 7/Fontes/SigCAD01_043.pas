unit SigCAD01_043;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  ComCtrls, ToolWin, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  Tfr_CadFilial = class(Tfr_Cad)
    IBDataSetcod_filial: TSmallintField;
    IBDataSetcod_matriz: TSmallintField;
    IBDataSetdat_cadastro: TDateField;
    IBDataSetlkpNom_Filial: TIBStringField;
    Label18: TLabel;
    dbeddat_cadastro: TDBEdit;
    Label1: TLabel;
    lkpNom_Filial: TDBLookupComboBox;
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadFilial: Tfr_CadFilial;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadFilial.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_matriz.AsInteger			:= vgCod_Empresa;
  IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadFilial.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('filial') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_filial', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end else
   if IBDataSet.State in [dsInsert, dsEdit] then
      if lkpNom_Filial.Focused then
      begin
         if Pesquisar('empresa') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_matriz.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;
      end;
end;

procedure Tfr_CadFilial.FormShow(Sender: TObject);
begin
  inherited;
	Set_Value;
end;

procedure Tfr_CadFilial.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  QrAux.Close;
	QrAux.ParamByName('cod_empresa').AsSmallInt	:= vgCod_Empresa;
  OpenTableAux(QrAux);
end;

procedure Tfr_CadFilial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fr_CadFilial	:= nil;
end;

procedure Tfr_CadFilial.Set_Value;
begin
  inherited;
	IBDataSet.Close;
  IBDataSet.ParamByName('cod_empresa').AsShort	:= vgCod_Empresa;
  OpenTable(IBDataSet);
end;

end.
