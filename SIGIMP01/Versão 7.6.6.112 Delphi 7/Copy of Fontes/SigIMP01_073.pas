unit SigIMP01_073;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, JvExControls,
  JvComponent, JvDBLookup, Mask;

type
  Tfr_CadAdicDescPendentes = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetcod_cliente: TIBStringField;
    IBDataSetcod_fornecedor: TSmallintField;
    IBDataSeties_comissao: TIBStringField;
    IBDataSeties_tipo: TIBStringField;
    IBDataSetvlr_adic_desc: TIBBCDField;
    IBDataSetvlr_adic_desc_esp: TIBBCDField;
    IBDataSettxt_descricao: TMemoField;
    Clientes: TIBQuery;
    Fornecedores: TIBQuery;
    Fornecedorescod_fornecedor: TSmallintField;
    Fornecedoresraz_social_reduz: TIBStringField;
    Clientescod_cliente: TIBStringField;
    IBDataSetlkpcliente: TIBStringField;
    IBDataSetlkpraz_social_reduz: TStringField;
    Label5: TLabel;
    dlcCliente: TJvDBLookupCombo;
    Label3: TLabel;
    dlcFornecedor: TJvDBLookupCombo;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    IBDataSetnum_sequencia: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadAdicDescPendentes: Tfr_CadAdicDescPendentes;

implementation

uses unConnection, UnMenuCompl, SIGIMP01_074;

{$R *.dfm}

procedure Tfr_CadAdicDescPendentes.Set_Value;
begin
  inherited;
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
end;

procedure Tfr_CadAdicDescPendentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fr_CadAdicDescPendentes := nil;
end;

procedure Tfr_CadAdicDescPendentes.FormShow(Sender: TObject);
begin
  inherited;
  with Clientes do
  begin
    ParamByNAme('login').Value := vgLogin;
    Open;
  end;
  with Fornecedores do
  begin
    ParamByName('cod_empresa').Value := vgCod_Empresa;
    ParamByNAme('login').Value := vgLogin;
    Open;
  end;
  dlcCliente.KeyValue := 0;
  dlcFornecedor.KeyValue := 0;
  Set_Value;
end;

procedure Tfr_CadAdicDescPendentes.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetnum_sequencia.AsInteger := InsertCode('adicional_desconto', 'num_sequencia', True);

end;

procedure Tfr_CadAdicDescPendentes.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').AsInteger := vgCod_Empresa;
  DataSet.FieldByName('ies_comissao').AsString := 'N';
end;

procedure Tfr_CadAdicDescPendentes.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
	if IBDataSet.State in [dsBrowse] then
  begin
      if Not (Assigned(frm_PesquisaAdcDesc)) then
         Application.CreateForm(Tfrm_PesquisaAdcDesc, frm_PesquisaAdcDesc);

      frm_PesquisaAdcDesc.ShowModal;
      if (frm_PesquisaAdcDesc.ModalResult = mrOk) then
         IBDataSet.Locate('num_sequencia', frm_PesquisaAdcDesc.adicional_descontonum_sequencia.AsInteger, [loPartialKey]);
  end;

end;

end.
