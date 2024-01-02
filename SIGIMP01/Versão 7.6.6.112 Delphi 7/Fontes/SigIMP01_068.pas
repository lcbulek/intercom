unit SigIMP01_068;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Tfr_CadGrupoProduto = class(Tfr_Cad)
    IBDataSetcod_gru_produto: TSmallintField;
    IBDataSetden_gru_produto: TIBStringField;
    IBDataSetden_gru_produto_ing: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadGrupoProduto: Tfr_CadGrupoProduto;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadGrupoProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fr_CadGrupoProduto := nil;
end;

procedure Tfr_CadGrupoProduto.FormCreate(Sender: TObject);
begin
  inherited;
  IBDataSet.Open;
end;

procedure Tfr_CadGrupoProduto.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_gru_produto.FocusControl;
end;

procedure Tfr_CadGrupoProduto.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetden_gru_produto.FocusControl;
end;

procedure Tfr_CadGrupoProduto.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_gru_produto.AsInteger   := InsertCode('grupo_produto', 'cod_gru_produto');

end;

procedure Tfr_CadGrupoProduto.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
      if Pesquisar('grupo_produto') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_gru_produto', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;

end;

end.
