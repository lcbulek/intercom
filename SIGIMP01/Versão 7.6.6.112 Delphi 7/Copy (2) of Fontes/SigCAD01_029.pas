unit SigCAD01_029;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadTipoNotaFiscal = class(Tfr_Cad)
    IBDataSetcod_tip_nota_fiscal: TSmallintField;
    IBDataSetden_tip_nota_fiscal: TIBStringField;
    IBDataSeties_tip_nota_fiscal: TIBStringField;
    IBDataSeties_gera_documento: TIBStringField;
    Label1: TLabel;
    dbedcod_tip_nota_fiscal: TDBEdit;
    Label2: TLabel;
    dbedden_tip_nota_fiscal: TDBEdit;
    Label3: TLabel;
    dbcbies_tip_nota_fiscal: TDBComboBox;
    dbckies_gera_documento: TDBCheckBox;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSeties_tip_nota_fiscalGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSeties_gera_documentoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure dbckies_gera_documentoExit(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
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
  fr_CadTipoNotaFiscal: Tfr_CadTipoNotaFiscal;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTipoNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadTipoNotaFiscal := nil;
end;

procedure Tfr_CadTipoNotaFiscal.IBDataSeties_tip_nota_fiscalGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString = 'E' then
      Text := 'E - Entrada'
   else
   if Sender.AsString = 'S' then
      Text := 'S - Saída'
   else Text := '...';
end;

procedure Tfr_CadTipoNotaFiscal.IBDataSeties_gera_documentoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString = 'S' then
      Text := 'Sim'
   else
   if Sender.AsString = 'N' then
      Text := 'Não'
   else Text := '...';
end;

procedure Tfr_CadTipoNotaFiscal.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSeties_tip_nota_fiscal.AsString  := 'E';
   IBDataSeties_gera_documento.AsString   := 'S';
   IBDataSetdat_cadastro.AsDateTime			:= Buscar_DateTime;
end;

procedure Tfr_CadTipoNotaFiscal.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadTipoNotaFiscal.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_tip_nota_fiscal.AsInteger := InsertCode('tipo_nota_fiscal', 'cod_tip_nota_fiscal');
end;

procedure Tfr_CadTipoNotaFiscal.dbckies_gera_documentoExit(
  Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadTipoNotaFiscal.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('tipo_nota_fiscal') then
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

procedure Tfr_CadTipoNotaFiscal.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadTipoNotaFiscal.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_nota_fiscal.FocusControl;
end;

procedure Tfr_CadTipoNotaFiscal.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_nota_fiscal.FocusControl;
end;

procedure Tfr_CadTipoNotaFiscal.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_nota_fiscal.FocusControl;
end;

end.
