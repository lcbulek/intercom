unit SigCAD01_015;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin,
  JvExControls, JvComponent, JvDBLookup;

type
  Tfr_CadFornecedor_Contato = class(Tfr_Cad)
    IBDataSetnom_contato: TIBStringField;
    IBDataSetnum_fone: TIBStringField;
    IBDataSete_mail: TIBStringField;
    Label2: TLabel;
    dbednom_contato: TDBEdit;
    Label3: TLabel;
    dbednum_fone: TDBEdit;
    Label4: TLabel;
    dbede_mail: TDBEdit;
    IBDataSetcod_fornecedor: TSmallintField;
    IBDataSetcod_contato: TSmallintField;
    cliente: TIBQuery;
    clientecod_cliente: TIBStringField;
    IBDataSetcod_cliente: TIBStringField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label1: TLabel;
    seq_contato: TIBQuery;
    seq_contatoprox_codigo: TLargeintField;
    dsCliente: TDataSource;
    IBDataSetlkpCliente: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    function SeqContato(CodFornecedor: Integer) : Integer;
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value; override;
  end;

var
  fr_CadFornecedor_Contato: Tfr_CadFornecedor_Contato;

implementation

uses unConnection, UnMenuCompl, SigCAD01_016;

{$R *.dfm}

procedure Tfr_CadFornecedor_Contato.Set_Value;
begin
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_fornecedor').AsInteger := fr_CadFornecedor.IBDataSet.FieldByName('cod_fornecedor').AsInteger;
    Open;
  end;
end;

procedure Tfr_CadFornecedor_Contato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadFornecedor_Contato := nil;
end;

procedure Tfr_CadFornecedor_Contato.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
	IBDataSetcod_fornecedor.AsInteger	:= fr_CadFornecedor.IBDataSetcod_fornecedor.AsInteger;
  IBDataSetcod_contato.AsInteger		:= SeqContato(fr_CadFornecedor.IBDataSetcod_fornecedor.AsInteger);
end;

procedure Tfr_CadFornecedor_Contato.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

function Tfr_CadFornecedor_Contato.SeqContato(CodFornecedor: Integer) : Integer;
begin
  with seq_contato do
  begin
    Close;
    ParamByName('cod_fornecedor').AsInteger := CodFornecedor;

    Open;
    Result := FieldByName('prox_codigo').AsInteger;
    if Result = 0 then Result := 1;
    Close;
  end;
end;

procedure Tfr_CadFornecedor_Contato.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('fornecedor_contato', fr_CadFornecedor.IBDataSet.FieldByName('cod_fornecedor').AsString ) then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_contato', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;

end;

end.
