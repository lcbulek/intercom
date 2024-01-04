unit SigCAD01_033;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadComprador = class(Tfr_Cad)
    IBDataSetnom_comprador: TIBStringField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    Label1: TLabel;
    edtcod_comprador: TDBEdit;
    Label2: TLabel;
    edtcomprador: TDBEdit;
    chkies_situacao: TDBCheckBox;
    Label11: TLabel;
    edtdat_cadastro: TDBEdit;
    IBDataSetcod_comprador: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure chkies_situacaoExit(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBDataSeties_situacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSeties_situacaoSetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadComprador: Tfr_CadComprador;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadComprador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	fr_CadComprador	:= nil;
end;

procedure Tfr_CadComprador.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_comprador.AsInteger := InsertCode('comprador', 'cod_comprador');
end;

procedure Tfr_CadComprador.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
	IBDataSeties_situacao.AsString 	:= 'A';
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadComprador.chkies_situacaoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadComprador.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSetnom_comprador.FocusControl;
end;

procedure Tfr_CadComprador.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
	if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('comprador') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_comprador', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadComprador.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadComprador.IBDataSeties_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   Text := Get_Situacao(Sender.AsString)
end;

procedure Tfr_CadComprador.IBDataSeties_situacaoSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Set_Situacao(Text);
end;

procedure Tfr_CadComprador.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

end.
