unit SigCAD01_081;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfr_CadGruEmbalagem = class(Tfr_Cad)
    IBDataSetcod_gru_embalagem: TIntegerField;
    IBDataSetden_gru_embalagem: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dbeden_gru_embalagem: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadGruEmbalagem: Tfr_CadGruEmbalagem;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadGruEmbalagem.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;


procedure Tfr_CadGruEmbalagem.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadGruEmbalagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fr_CadGruEmbalagem := nil;
end;

procedure Tfr_CadGruEmbalagem.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_gru_embalagem.AsInteger := InsertCode('embalagem_grupo', 'cod_gru_embalagem');
end;

procedure Tfr_CadGruEmbalagem.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  dbeden_gru_embalagem.SetFocus;
end;

procedure Tfr_CadGruEmbalagem.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('embalagem_grupo') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_gru_embalagem', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

end.
