unit SigCAD01_078;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls, JvExControls,
  JvComponent, JvSpeedButton, JvComponentBase, JvBaseDlg, JvBrowseFolder,
  Buttons;

type
  Tfr_CadMarcaCorEmb = class(Tfr_Cad)
    IBDataSetcod_empresa: TIntegerField;
    IBDataSetcod_produto: TIBStringField;
    IBDataSettxt_aparencia: TMemoField;
    IBDataSettxt_individual: TMemoField;
    IBDataSettxt_inner: TMemoField;
    IBDataSettxt_master: TMemoField;
    IBDataSetlnk_fotos: TIBStringField;
    IBDataSetdat_cadastro: TDateField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edCodProdCli: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    Label7: TLabel;
    DBMemo3: TDBMemo;
    Label8: TLabel;
    DBMemo4: TDBMemo;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value;
  end;

var
  fr_CadMarcaCorEmb: Tfr_CadMarcaCorEmb;

implementation

uses unConnection, SigCAD01_025, SigCAD01_079;

{$R *.dfm}

procedure Tfr_CadMarcaCorEmb.Set_Value;
begin
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString;
    Open;
  end;

  with ProdutoCliente(fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString) do
  begin
    edCodProdCli.Text := fmtProduto;
  end;
end;

procedure Tfr_CadMarcaCorEmb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Assigned(fr_Imagens) then fr_Imagens.Close;
  IBDataSet.Close;
  Action := caFree;
  fr_CadMarcaCorEmb := nil;
end;

procedure Tfr_CadMarcaCorEmb.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadMarcaCorEmb.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_empresa').Value := vgCod_Empresa;
  DataSet.FieldByName('cod_produto').Value := fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString;
end;

procedure Tfr_CadMarcaCorEmb.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if Not(IBDataSet.IsEmpty) then
  begin
    Application.MessageBox('É permitido somente uma informação de Marca, Cor e Embalagem para o produto', 'Informação', MB_ICONINFORMATION+MB_OK);
    Abort;
  end;
end;

procedure Tfr_CadMarcaCorEmb.BitBtn1Click(Sender: TObject);
Var
  Produto: String;
begin
  inherited;

  with ProdutoCliente(fr_CadProduto.IBDataSet.FieldByName('cod_Produto').AsString) do
  begin
    Produto := fmtProduto;
  end;
  if Not(Assigned(fr_Imagens)) then
     Application.CreateForm(Tfr_Imagens, fr_Imagens);

  fr_Imagens.Imagens.Directory := trim(dmConnection.empresalnk_fotos.AsString) + '\' +
                                  trim(Produto);
  fr_Imagens.Show;
end;

end.
