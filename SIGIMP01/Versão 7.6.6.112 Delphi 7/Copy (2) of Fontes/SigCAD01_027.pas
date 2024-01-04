unit SigCAD01_027;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadTipoCliente = class(Tfr_Cad)
    IBDataSetcod_tip_cliente: TSmallintField;
    IBDataSetden_tip_cliente: TIBStringField;
    Label1: TLabel;
    dbedcod_tip_cliente: TDBEdit;
    Label2: TLabel;
    dbedden_tip_cliente: TDBEdit;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedden_tip_clienteExit(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
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
  fr_CadTipoCliente: Tfr_CadTipoCliente;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTipoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadTipoCliente := nil;
end;

procedure Tfr_CadTipoCliente.dbedden_tip_clienteExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadTipoCliente.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_tip_cliente.AsInteger := InsertCode('tipo_cliente', 'cod_tip_cliente');
end;

procedure Tfr_CadTipoCliente.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadTipoCliente.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('tipo_cliente') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_tip_cliente', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadTipoCliente.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadTipoCliente.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadTipoCliente.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_cliente.FocusControl;
end;

procedure Tfr_CadTipoCliente.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_cliente.FocusControl;
end;

procedure Tfr_CadTipoCliente.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_cliente.FocusControl;
end;

end.
