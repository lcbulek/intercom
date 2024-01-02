unit SigCAD01_018;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadTipoFornecedor = class(Tfr_Cad)
    IBDataSetcod_tip_fornecedor: TSmallintField;
    IBDataSetden_tip_fornecedor: TIBStringField;
    Label1: TLabel;
    dbedcod_tip_fornecedor: TDBEdit;
    Label2: TLabel;
    dbedden_tip_fornecedor: TDBEdit;
    IBDataSeties_emite_nota: TIBStringField;
    chkies_emite_nota: TDBCheckBox;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure chkies_emite_notaExit(Sender: TObject);
    procedure IBDataSeties_emite_notaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSeties_emite_notaSetText(Sender: TField;
      const Text: String);
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
  fr_CadTipoFornecedor: Tfr_CadTipoFornecedor;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTipoFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadTipoFornecedor := nil;
end;

procedure Tfr_CadTipoFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadTipoFornecedor.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_tip_fornecedor.AsInteger := InsertCode('tipo_fornecedor', 'cod_tip_fornecedor');
end;

procedure Tfr_CadTipoFornecedor.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('tipo_fornecedor') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_tip_fornecedor', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadTipoFornecedor.chkies_emite_notaExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadTipoFornecedor.IBDataSeties_emite_notaGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString = 'S' then
      Text := 'Sim'
   else Text := 'Não';
end;

procedure Tfr_CadTipoFornecedor.IBDataSeties_emite_notaSetText(
  Sender: TField; const Text: String);
begin
  inherited;
   if Text = 'Sim' then
      Sender.AsString := 'S'
   else Sender.AsString := 'N';
end;

procedure Tfr_CadTipoFornecedor.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSeties_emite_nota.AsString := 'S';
   IBDataSetdat_cadastro.AsDateTime	:= Buscar_DateTime;
end;

procedure Tfr_CadTipoFornecedor.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadTipoFornecedor.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_fornecedor.FocusControl;
end;

procedure Tfr_CadTipoFornecedor.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_fornecedor.FocusControl;
end;

procedure Tfr_CadTipoFornecedor.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_fornecedor.FocusControl;
end;

end.
