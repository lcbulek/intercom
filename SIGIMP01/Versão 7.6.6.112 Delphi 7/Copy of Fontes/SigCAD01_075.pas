unit SigCAD01_075;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin;

type
  Tfr_CadCondVenda = class(Tfr_Cad)
    Label1: TLabel;
    dbedcod_tip_pagamento: TDBEdit;
    Label2: TLabel;
    dbedden_tip_pagamento: TDBEdit;
    IBDataSetcod_tip_condicao: TSmallintField;
    IBDataSetden_tip_condicao: TIBStringField;
    IBDataSeties_situacao: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeEdit(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSeties_situacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
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
  fr_CadCondVenda: Tfr_CadCondVenda;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadCondVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadCondVenda := nil;
end;

procedure Tfr_CadCondVenda.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadCondVenda.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_tip_condicao.AsInteger   := InsertCode('condicao_venda', 'cod_tip_condicao');
end;

procedure Tfr_CadCondVenda.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('condicao_venda') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_tip_condicao', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadCondVenda.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadCondVenda.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_condicao.FocusControl;
end;

procedure Tfr_CadCondVenda.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_condicao.FocusControl;
end;

procedure Tfr_CadCondVenda.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_tip_condicao.FocusControl;
end;

procedure Tfr_CadCondVenda.IBDataSeties_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   Text := Get_Situacao(Sender.AsString);
end;

procedure Tfr_CadCondVenda.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
     IBDataSeties_situacao.AsString        := 'A';
end;

procedure Tfr_CadCondVenda.IBDataSeties_situacaoSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Set_Situacao(Text);
end;

end.
