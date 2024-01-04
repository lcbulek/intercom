unit SigCAD01_026;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin,
  JvExControls, JvComponent, JvDBLookup;

type
  Tfr_CadTipoProduro = class(Tfr_Cad)
    IBDataSetcod_tip_produto: TSmallintField;
    IBDataSetden_tip_produto: TIBStringField;
    Label1: TLabel;
    dbedcod_tip_produto: TDBEdit;
    Label2: TLabel;
    dbedden_tip_produto: TDBEdit;
    IBDataSetden_tip_produto_ing: TIBStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    IBDataSetcod_gru_produto: TSmallintField;
    grupo_produto: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure Set_Value; override;
  public
    { Public declarations }
  end;

var
  fr_CadTipoProduro: Tfr_CadTipoProduro;

implementation

uses unConnection, UnMenuCompl, SigCAD01_047;

{$R *.dfm}

procedure Tfr_CadTipoProduro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadTipoProduro := nil;
end;

procedure Tfr_CadTipoProduro.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadTipoProduro.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
	if DataSet.State = dsInsert then
  	IBDataSetcod_tip_produto.AsInteger   := InsertCode('tipo_produto', 'cod_tip_produto');
end;

procedure Tfr_CadTipoProduro.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('tipo_produto') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_tip_produto', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end
   end;
end;

procedure Tfr_CadTipoProduro.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadTipoProduro.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_gru_produto.FocusControl;
end;

procedure Tfr_CadTipoProduro.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_gru_produto.FocusControl;
end;

procedure Tfr_CadTipoProduro.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_gru_produto').AsInteger := 1; { default, mas não é mais utilizado, não consta da tela }
end;

end.
