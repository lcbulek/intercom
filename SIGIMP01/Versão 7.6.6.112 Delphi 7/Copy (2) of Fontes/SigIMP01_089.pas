unit SigIMP01_089;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, StdCtrls, DBCtrls, Mask, DB, IBCustomDataSet, IBQuery,
  ActnList, unNavigator, ComCtrls, ToolWin, ExtCtrls;

type
  Tfr_Fabricantes = class(Tfr_Cad)
    IBDataSetcod_fabricante: TSmallintField;
    IBDataSetnome: TIBStringField;
    IBDataSetdescricao: TMemoField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_Fabricantes: Tfr_Fabricantes;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_Fabricantes.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;


procedure Tfr_Fabricantes.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('fabricantes') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('nome', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

procedure Tfr_Fabricantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fr_Fabricantes := nil;
end;

procedure Tfr_Fabricantes.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_fabricante.AsInteger := InsertCode('fabricantes', 'cod_fabricante');
end;

procedure Tfr_Fabricantes.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

end.
