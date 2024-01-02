unit SigCAD01_040;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfr_CadEquipamento = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetcod_equipamento: TSmallintField;
    IBDataSetden_equipamento: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    Label1: TLabel;
    edtcod_equipamento: TDBEdit;
    Label2: TLabel;
    edtden_equipamento: TDBEdit;
    Label4: TLabel;
    dbeddat_cadastro: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure edtden_equipamentoExit(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadEquipamento: Tfr_CadEquipamento;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadEquipamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadEquipamento := nil;
end;

procedure Tfr_CadEquipamento.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_equipamento.FocusControl;
end;

procedure Tfr_CadEquipamento.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_equipamento.FocusControl;
end;

procedure Tfr_CadEquipamento.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   IBDataSetden_equipamento.FocusControl;
end;

procedure Tfr_CadEquipamento.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_empresa.AsInteger   := vgCod_Empresa;
   IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadEquipamento.FormShow(Sender: TObject);
begin
  inherited;
	Set_Value;
end;

procedure Tfr_CadEquipamento.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('equipamento') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_equipamento', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadEquipamento.edtden_equipamentoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadEquipamento.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_equipamento.AsInteger := InsertCode('equipamento', 'cod_equipamento', True);
end;

procedure Tfr_CadEquipamento.Set_Value;
begin
  inherited;
  IBDataSet.Close;
  IBDataSet.ParamByName('cod_empresa').AsShort := vgCod_Empresa;
  OpenTable(IBDataSet);
end;

end.
