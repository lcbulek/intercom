unit SigCAD01_042;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, Mask;

type
  Tfr_CadFornecedor_Transportadora = class(Tfr_Cad)
    dbtxcod_fornecedor: TDBText;
    dbtxraz_social: TDBText;
    IBDataSetcod_fornecedor: TSmallintField;
    IBDataSetcod_transportadora: TSmallintField;
    IBDataSetdat_cadastro: TDateField;
    Label5: TLabel;
    dbeddat_cadastro: TDBEdit;
    QrAuxcod_transportadora: TSmallintField;
    QrAuxnom_transportadora: TIBStringField;
    QrAuxcnpj: TIBStringField;
    QrAuxies_situacao: TIBStringField;
    IBDataSetlkpNom_Transportadora: TIBStringField;
    Label1: TLabel;
    lkpNom_Transportadora: TDBLookupComboBox;
    Label2: TLabel;
    edtcnpj: TDBEdit;
    dtsAux: TDataSource;
    edtcod_transportadora: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure lkpNom_TransportadoraExit(Sender: TObject);
    procedure QrAuxcnpjGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetcod_transportadoraValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value; override;
  end;

var
  fr_CadFornecedor_Transportadora: Tfr_CadFornecedor_Transportadora;

implementation

uses unConnection, SigCAD01_016, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadFornecedor_Transportadora.Set_Value;
begin
	with IBDataSet do
  begin
    Close;
    ParamByName('cod_fornecedor').AsInteger := fr_CadFornecedor.IBDataSetcod_fornecedor.AsInteger;
    Open;
  end;
end;

procedure Tfr_CadFornecedor_Transportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	fr_CadFornecedor_Transportadora	:= nil;
end;

procedure Tfr_CadFornecedor_Transportadora.IBDataSetBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  OpenTableAux(QrAux);
end;

procedure Tfr_CadFornecedor_Transportadora.IBDataSetNewRecord(
  DataSet: TDataSet);
begin
  inherited;
	IBDataSetcod_fornecedor.AsInteger	:= fr_CadFornecedor.IBDataSetcod_fornecedor.AsInteger;
  IBDataSetdat_cadastro.AsDateTime 	:= Buscar_DateTime;
end;

procedure Tfr_CadFornecedor_Transportadora.IBDataSetBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
	 IBDataSetcod_transportadora.FocusControl;
end;

procedure Tfr_CadFornecedor_Transportadora.IBDataSetBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
	 IBDataSetcod_transportadora.FocusControl;
end;

procedure Tfr_CadFornecedor_Transportadora.IBDataSetBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
	 IBDataSetcod_transportadora.FocusControl;
end;

procedure Tfr_CadFornecedor_Transportadora.lkpNom_TransportadoraExit(
  Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadFornecedor_Transportadora.QrAuxcnpjGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
	if not Sender.IsNull then Text := FormataCNPJCPF(Sender.AsString);
end;

procedure Tfr_CadFornecedor_Transportadora.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsInsert, dsEdit] then
      if (edtcod_transportadora.Focused) or (lkpNom_Transportadora.Focused) then
      begin
         if Pesquisar('transportadora') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_transportadora.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;
      end;
end;

procedure Tfr_CadFornecedor_Transportadora.IBDataSetcod_transportadoraValidate(
  Sender: TField);
begin
  inherited;
	if not Sender.IsNull then
   try
      QrAux.DisableControls;
      QrAux.First;
      if not QrAux.Locate(QrAuxcod_transportadora.DisplayName, Sender.AsInteger, []) then
      	try
         	Abort;
	      finally
   	      MessageDlg('Atenção. Transportadora não cadastrada.', mtError, [mbCancel], 0);
      	end
      else
      if QrAuxies_situacao.AsString = 'C' then
      	try
         	Abort;
	      finally
   	      MessageDlg('Atenção. Transportadora cancelada.', mtError, [mbCancel], 0);
      	end
   finally
   	QrAux.EnableControls;
   end;
end;

procedure Tfr_CadFornecedor_Transportadora.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

end.
