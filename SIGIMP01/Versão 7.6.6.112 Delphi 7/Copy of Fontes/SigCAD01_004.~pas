unit SigCAD01_004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin,
  JvExControls, JvComponent, JvDBLookup, IBStoredProc;

type
  Tfr_CadBanco = class(Tfr_Cad)
    Label2: TLabel;
    dbeNomBanco: TDBEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    IBDataSetcod_banco: TSmallintField;
    IBDataSetnom_banco: TIBStringField;
    IBDataSetcod_fornecedor: TIntegerField;
    IBDataSeties_tipo: TIBStringField;
    IBDataSeties_default: TIBStringField;
    IBDataSettxt_descricao: TMemoField;
    DBRadioGroup2: TDBRadioGroup;
    spr_muda_default_banco: TIBStoredProc;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetAfterDelete(DataSet: TDataSet);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  protected
  public
    { Public declarations }
    procedure Set_Value; override;
  end;

var
  fr_CadBanco: Tfr_CadBanco;

implementation

uses unConnection, UnMenuCompl, SigCAD01_016;

{$R *.dfm}

procedure Tfr_CadBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fr_CadBanco := nil;
end;

procedure Tfr_CadBanco.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadBanco.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSeties_tipo.AsString     := 'B';
   IBDataSeties_default.AsString  := 'S';
   IBDataSetcod_banco.AsInteger   := InsertCode('banco', 'cod_banco');
   IBDataSetcod_fornecedor.AsInteger := fr_CadFornecedor.IBDataSetcod_fornecedor.AsInteger;
end;

procedure Tfr_CadBanco.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('banco', fr_CadFornecedor.IBDataSetcod_fornecedor.AsString) then
         if AbrirPesquisa then
            with IBDataSet do
            try
               Close;
               Open;
               DisableControls;
               First;
               Locate('cod_banco', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
end;

procedure Tfr_CadBanco.Set_Value;
begin
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_fornecedor').Value := fr_CadFornecedor.IBDataSetcod_fornecedor.AsInteger;
    Open;
  end;
end;

procedure Tfr_CadBanco.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  dbeNomBanco.SetFocus;
end;

procedure Tfr_CadBanco.IBDataSetAfterDelete(DataSet: TDataSet);
begin
  inherited;
  dbeNomBanco.SetFocus;
end;

procedure Tfr_CadBanco.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
  { mudar tipo default do banco }
  if (IBDataSeties_default.AsString = 'S') then
  begin
    with spr_muda_default_banco do  { a procedure coloca em todos os bancos do fornecedor ies_default = 'N', para que aja somente 1 banco default }
    begin
      ParamByName('cod_fornecedor').AsInteger := IBDataSetcod_fornecedor.AsInteger;
      ExecProc;
 	   try
  	 Transaction.CommitRetaining;
     except
  	 Transaction.RollbackRetaining;
     end;
    end;
  end;
end;

end.
