unit SigCAD01_023;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadPagamento = class(Tfr_Cad)
    Label1: TLabel;
    dbedcod_pagamento: TDBEdit;
    Label2: TLabel;
    IBDataSetcod_pagamento: TSmallintField;
    IBDataSetden_pagamento: TIBStringField;
    DBMemo1: TDBMemo;                                                          
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);                          
    procedure dbedpct_desp_financeiraExit(Sender: TObject);
    procedure FormShow(Sender: TObject);                                        
    procedure IBDataSeties_situacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSeties_situacaoSetText(Sender: TField;
      const Text: String);
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
  fr_CadPagamento: Tfr_CadPagamento;

implementation

uses unConnection, SigIMP01_001, UnMenuCompl, UnPesquisa;

{$R *.dfm}

procedure Tfr_CadPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadPagamento := nil;
end;

procedure Tfr_CadPagamento.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_pagamento.AsInteger := InsertCode('pagamento', 'cod_pagamento');
end;

procedure Tfr_CadPagamento.dbedpct_desp_financeiraExit(Sender: TObject);
begin
  inherited;
	FieldRequired;
end;

procedure Tfr_CadPagamento.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadPagamento.IBDataSeties_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   Text := Get_Situacao(Sender.AsString)
end;

procedure Tfr_CadPagamento.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('pagamento') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_pagamento', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
end;

procedure Tfr_CadPagamento.IBDataSeties_situacaoSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Set_Situacao(Text);
end;

procedure Tfr_CadPagamento.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadPagamento.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_pagamento.FocusControl;
end;

procedure Tfr_CadPagamento.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_pagamento.FocusControl;
end;

procedure Tfr_CadPagamento.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_pagamento.FocusControl;
end;

end.
