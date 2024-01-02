unit SigCAD01_077;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, StdCtrls, Mask, DBCtrls, DB, IBCustomDataSet, IBQuery,
  ActnList, unNavigator, ComCtrls, ToolWin, ExtCtrls;

type
  Tfr_CadComponentes = class(Tfr_Cad)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QrAuxcod_gru_embalagem: TIntegerField;
    QrAuxden_gru_embalagem: TIBStringField;
    IBDataSetcod_componente: TIntegerField;
    IBDataSetden_componente: TIBStringField;
    IBDataSetcod_gru_embalagem: TIntegerField;
    IBDataSetlkGrupo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadComponentes: Tfr_CadComponentes;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadComponentes.Set_Value;
begin
  IBDataSet.Open;
end;

procedure Tfr_CadComponentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  IBDataSet.Close;
  Action := caFree;
  fr_CadComponentes := nil;
end;

procedure Tfr_CadComponentes.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if IBDataSet.State in [dsInsert] then
     IBDataSet.FieldByName('cod_componente').AsInteger := InsertCode('embalagem_componente', 'cod_componente');
end;

procedure Tfr_CadComponentes.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadComponentes.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('embalagem_componente') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_componente', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

end.
