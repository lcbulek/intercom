unit SigIMP01_024;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadCondicoesPgto1 = class(Tfr_Cad)
    Label1: TLabel;
    dbedcod_pagamento: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    IBDataSetcod_condicao: TSmallintField;
    IBDataSetden_condicao: TIBStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actOK: TAction;
    actCancelar: TAction;
    IBDataSetden_condicao_ptb: TIBStringField;
    Label3: TLabel;
    DBMemo2: TDBMemo;
    IBDataSetden_condicao_esp: TIBStringField;
    Label4: TLabel;
    DBMemo3: TDBMemo;
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure dbedpct_desp_financeiraExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBDataSeties_situacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSeties_situacaoSetText(Sender: TField;
      const Text: String);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure actOKExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadCondicoesPgto1: Tfr_CadCondicoesPgto1;

implementation

uses unConnection, SigIMP01_001, UnMenuCompl, UnPesquisa;

{$R *.dfm}

procedure Tfr_CadCondicoesPgto1.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_condicao.AsInteger := InsertCode('condicao', 'cod_condicao');
end;

procedure Tfr_CadCondicoesPgto1.dbedpct_desp_financeiraExit(Sender: TObject);
begin
  inherited;
	FieldRequired;
end;

procedure Tfr_CadCondicoesPgto1.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadCondicoesPgto1.IBDataSeties_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   Text := Get_Situacao(Sender.AsString)
end;

procedure Tfr_CadCondicoesPgto1.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('condicao') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_condicao', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadCondicoesPgto1.IBDataSeties_situacaoSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Set_Situacao(Text);
end;

procedure Tfr_CadCondicoesPgto1.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadCondicoesPgto1.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_condicao.FocusControl;
end;

procedure Tfr_CadCondicoesPgto1.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_condicao.FocusControl;
end;

procedure Tfr_CadCondicoesPgto1.actOKExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure Tfr_CadCondicoesPgto1.actCancelarExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
