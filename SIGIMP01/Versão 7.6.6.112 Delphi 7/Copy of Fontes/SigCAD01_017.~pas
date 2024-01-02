unit SigCAD01_017;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadTransportadora = class(Tfr_Cad)
    QrAuxcod_cidade: TIntegerField;
    QrAuxnom_cidade: TIBStringField;
    Label1: TLabel;
    dbedcod_transportadora: TDBEdit;
    Label2: TLabel;
    dbednom_transportadora: TDBEdit;
    dbmmobservacao: TDBMemo;
    Label14: TLabel;
    dbeddat_cadastro: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    IBDataSetcod_transportadora: TSmallintField;
    IBDataSetnom_transportadora: TIBStringField;
    IBDataSetobservacao: TIBStringField;
    IBDataSetemail: TIBStringField;
    IBDataSetendereco: TMemoField;
    IBDataSetdat_cadastro: TDateField;
    Label3: TLabel;
    IBDataSeties_situacao: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure dbmmobservacaoExit(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
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
  fr_CadTransportadora: Tfr_CadTransportadora;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadTransportadora := nil;
end;

procedure Tfr_CadTransportadora.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadTransportadora.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_transportadora.AsInteger := InsertCode('transportadora', 'cod_transportadora');
end;

procedure Tfr_CadTransportadora.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSeties_situacao.AsString   := 'A';
   IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadTransportadora.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
   OpenTableAux(QrAux);
end;

procedure Tfr_CadTransportadora.dbmmobservacaoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadTransportadora.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('transportadora') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_transportadora', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadTransportadora.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadTransportadora.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_transportadora.FocusControl;
end;

procedure Tfr_CadTransportadora.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetnom_transportadora.FocusControl;
end;

end.
