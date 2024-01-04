unit SigCAD01_014;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadCliente_Contato = class(Tfr_Cad)
    dbtxcod_cliente: TDBText;
    dbtxnom_cliente: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    dbede_mail: TDBEdit;
    Label3: TLabel;
    dbednum_fone: TDBEdit;
    IBDataSetnom_contato: TIBStringField;
    IBDataSetnum_fone: TIBStringField;
    IBDataSete_mail: TIBStringField;
    edrnom_contato: TDBEdit;
    IBDataSetcod_contato: TSmallintField;
    IBDataSetcod_cliente: TIBStringField;
    seq_contato: TIBQuery;
    seq_contatoprox_codigo: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QrAuxies_situacaoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    function SeqContato(CodCliente: String) : Integer;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value; override;
  end;

var
  fr_CadCliente_Contato: Tfr_CadCliente_Contato;

implementation

uses SigCAD01_012, unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadCliente_Contato.Set_Value;
begin
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_cliente').AsString := fr_CadCliente.IBDataSetcod_cliente.AsString;
    Open;
  end;
end;


procedure Tfr_CadCliente_Contato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadCliente_Contato := nil;
end;

procedure Tfr_CadCliente_Contato.QrAuxies_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   Text := Get_Situacao(Sender.AsString)
end;

procedure Tfr_CadCliente_Contato.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_cliente.AsString    := fr_CadCliente.IBDataSetcod_cliente.AsString;
   IBDataSetcod_contato.AsInteger	 := SeqContato(fr_CadCliente.IBDataSetcod_cliente.AsString);
end;

procedure Tfr_CadCliente_Contato.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSetnom_contato.FocusControl;
end;

procedure Tfr_CadCliente_Contato.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

function Tfr_CadCliente_Contato.SeqContato(CodCliente: String) : Integer;
begin
  with seq_contato do
  begin
    Close;
    ParamByName('cod_cliente').AsString := CodCliente;

    Open;
    Result := FieldByName('prox_codigo').AsInteger;
    if Result = 0 then Result := 1;
    Close;
  end;
end;

end.
