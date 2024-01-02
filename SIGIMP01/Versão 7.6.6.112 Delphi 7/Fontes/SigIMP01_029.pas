unit SigIMP01_029;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask;

type
  Tfr_CadTipo_NF = class(Tfr_Cad)
    Label1: TLabel;
    dbedcod_tip_nota_fiscal: TDBEdit;
    dbedden_tip_nota_fiscal: TDBEdit;
    Label2: TLabel;
    dbckies_gera_documento: TDBCheckBox;
    dbeddat_cadastro: TDBEdit;
    Label11: TLabel;
    IBDataSetcod_tip_nota_fiscal: TIBStringField;
    IBDataSetden_tip_nota_fiscal: TIBStringField;
    IBDataSeties_tip_nota_fiscal: TIBStringField;
    IBDataSeties_gera_documento: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure dbckies_gera_documentoExit(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSeties_gera_documentoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSeties_gera_documentoSetText(Sender: TField;
      const Text: String);
  private
  protected
    { Private declarations }
		procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadTipo_NF: Tfr_CadTipo_NF;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTipo_NF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   fr_CadTipo_NF := nil;
end;

procedure Tfr_CadTipo_NF.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
	IBDataSeties_tip_nota_fiscal.AsString	:= 'S';
  IBDataSeties_gera_documento.AsString  := 'S';
  IBDataSetdat_cadastro.AsDateTime			:= Buscar_DateTime;
end;

procedure Tfr_CadTipo_NF.FormShow(Sender: TObject);
begin
  inherited;
	Set_Value;
end;

procedure Tfr_CadTipo_NF.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_tip_nota_fiscal.FocusControl;
end;

procedure Tfr_CadTipo_NF.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_tip_nota_fiscal.FocusControl;
end;

procedure Tfr_CadTipo_NF.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_tip_nota_fiscal.FocusControl;
end;

procedure Tfr_CadTipo_NF.dbckies_gera_documentoExit(Sender: TObject);
begin
  inherited;
	FieldRequired;
end;

procedure Tfr_CadTipo_NF.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('tipo_nota_fiscal', 'S') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_tip_nota_fiscal', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadTipo_NF.IBDataSeties_gera_documentoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString = 'S' then
      Text := 'Sim'
   else
   if Sender.AsString = 'N' then
      Text := 'Não'
   else Text := '...';
end;

procedure Tfr_CadTipo_NF.IBDataSeties_gera_documentoSetText(Sender: TField;
  const Text: String);
begin
  inherited;
   if Text = 'Sim' then Sender.AsString := 'S'
   else
   if Text = 'Não' then Sender.AsString := 'N';
end;

procedure Tfr_CadTipo_NF.Set_Value;
begin
	OpenTable(IBDataSet);
end;

end.
