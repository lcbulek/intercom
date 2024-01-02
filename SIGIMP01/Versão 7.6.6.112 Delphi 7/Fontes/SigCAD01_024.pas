unit SigCAD01_024;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadCondicoesPgto = class(Tfr_Cad)
    Label2: TLabel;
    IBDataSetcod_condicao: TSmallintField;
    IBDataSetden_condicao: TIBStringField;
    IBDataSetden_condicao_ptb: TIBStringField;
    Label3: TLabel;
    IBDataSetden_condicao_esp: TIBStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadCondicoesPgto: Tfr_CadCondicoesPgto;

implementation

uses unConnection, SigIMP01_001, UnMenuCompl, UnPesquisa;

{$R *.dfm}

procedure Tfr_CadCondicoesPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadCondicoesPgto := nil;
end;

procedure Tfr_CadCondicoesPgto.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_condicao.AsInteger := InsertCode('condicao', 'cod_condicao');
end;

procedure Tfr_CadCondicoesPgto.dbedpct_desp_financeiraExit(Sender: TObject);
begin
  inherited;
	FieldRequired;
end;

procedure Tfr_CadCondicoesPgto.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadCondicoesPgto.IBDataSeties_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   Text := Get_Situacao(Sender.AsString)
end;

procedure Tfr_CadCondicoesPgto.fr_FmNavigator1acF3Execute(Sender: TObject);
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

procedure Tfr_CadCondicoesPgto.IBDataSeties_situacaoSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Set_Situacao(Text);
end;

procedure Tfr_CadCondicoesPgto.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadCondicoesPgto.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_condicao.FocusControl;
end;

procedure Tfr_CadCondicoesPgto.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_condicao.FocusControl;
end;

end.
