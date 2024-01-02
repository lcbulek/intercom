unit SigCAD01_030;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadTipoPagamento = class(Tfr_Cad)
    IBDataSetcod_tip_pagamento: TSmallintField;
    IBDataSetden_tip_pagamento: TIBStringField;
    Label1: TLabel;
    dbedcod_tip_pagamento: TDBEdit;
    Label2: TLabel;
    dbedden_tip_pagamento: TDBEdit;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    IBDataSeties_bloquear_pedido: TIBStringField;
    chkies_bloquear_pedido: TDBCheckBox;
    chkies_pgto_aut: TDBCheckBox;
    IBDataSeties_pgto_aut: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbedden_tip_pagamentoExit(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSeties_bloquear_pedidoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSeties_bloquear_pedidoSetText(Sender: TField;
      const Text: String);
    procedure IBDataSeties_pgto_autGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSeties_pgto_autSetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadTipoPagamento: Tfr_CadTipoPagamento;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadTipoPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadTipoPagamento := nil;
end;

procedure Tfr_CadTipoPagamento.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadTipoPagamento.dbedden_tip_pagamentoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadTipoPagamento.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_tip_pagamento.AsInteger   := InsertCode('tipo_pagamento', 'cod_tip_pagamento');
end;

procedure Tfr_CadTipoPagamento.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('tipo_pagamento') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_tip_pagamento', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadTipoPagamento.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  IBDataSeties_bloquear_pedido.AsString := 'N';
	IBDataSetdat_cadastro.AsDateTime			:= Buscar_DateTime;
end;

procedure Tfr_CadTipoPagamento.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadTipoPagamento.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_pagamento.FocusControl;
end;

procedure Tfr_CadTipoPagamento.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_pagamento.FocusControl;
end;

procedure Tfr_CadTipoPagamento.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_pagamento.FocusControl;
end;

procedure Tfr_CadTipoPagamento.IBDataSeties_bloquear_pedidoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
	if not Sender.IsNull then
  	if Sender.AsString = 'S' then Text := 'Sim'
  	else Text := 'Não';
end;

procedure Tfr_CadTipoPagamento.IBDataSeties_bloquear_pedidoSetText(
  Sender: TField; const Text: String);
begin
  inherited;
	if Text = 'Sim' then Sender.AsString := 'S'
  else Sender.AsString := 'N';
end;

procedure Tfr_CadTipoPagamento.IBDataSeties_pgto_autGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
	if not Sender.IsNull then
  	if Sender.AsString = 'S' then Text := 'Sim'
  	else Text := 'Não';
end;

procedure Tfr_CadTipoPagamento.IBDataSeties_pgto_autSetText(Sender: TField;
  const Text: String);
begin
  inherited;
	if Text = 'Sim' then Sender.AsString := 'S'
  else Sender.AsString := 'N';
end;

end.
