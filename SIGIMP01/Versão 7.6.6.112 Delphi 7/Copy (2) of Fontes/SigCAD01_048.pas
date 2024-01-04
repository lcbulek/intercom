unit SigCAD01_048;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfr_CadTipoEmbalagem = class(Tfr_Cad)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    IBDataSetseq: TSmallintField;
    IBDataSetcod_tip_produto: TSmallintField;
    IBDataSetlkTipoProduto: TStringField;
    ProxSeq: TIBQuery;
    ProxSeqseq: TLargeintField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value;
  end;

var                                                      
  fr_CadTipoEmbalagem: Tfr_CadTipoEmbalagem;

implementation                                  

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTipoEmbalagem.Set_Value;
begin
  QrAux.Open;
  IBDataSet.Close;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadTipoEmbalagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  IBDataSet.Close;
  QrAux.Close;
  inherited;
  Action := caFree;
  fr_CadTipoEmbalagem := nil;
end;

procedure Tfr_CadTipoEmbalagem.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadTipoEmbalagem.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
	if IBDataSet.State in [dsBrowse] then
  begin
  	if Pesquisar('tipo_embalagem') then
    	if AbrirPesquisa then
      	with IBDataSet do
        	try
          	 DisableControls;
            First;
            Locate('cod_tip_produto', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
          finally
          	EnableControls;
          end;
	end;

end;

procedure Tfr_CadTipoEmbalagem.IBDataSetNewRecord(DataSet: TDataSet);
Var
  Seq : integer;
begin
  inherited;
  seq := 0;
  with ProxSeq do
  begin
    Close;
    Open;
    if (FieldByName('Seq').IsNull) or (FieldByName('Seq').AsInteger = 0) then 
       Seq := 1
    else Seq := FieldByName('seq').AsInteger;    
  end;
  IBdataSet.FieldByName('seq').AsInteger := Seq;
end;

end.
