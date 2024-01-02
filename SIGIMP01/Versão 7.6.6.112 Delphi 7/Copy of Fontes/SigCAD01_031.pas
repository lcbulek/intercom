unit SigCAD01_031;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadVendedor = class(Tfr_Cad)
    IBDataSeties_situacao: TIBStringField;
    IBDataSetcnpj: TIBStringField;
    IBDataSetrua: TIBStringField;                   
    IBDataSetcompl: TIBStringField;
    IBDataSetbairro: TIBStringField;
    IBDataSetcep: TIBStringField;
    IBDataSetcx_postal: TIBStringField;
    IBDataSetnum_fone: TIBStringField;
    IBDataSetnum_fax: TIBStringField;
    IBDataSetcod_cidade: TIntegerField;
    IBDataSetdat_cadastro: TDateField;
    IBDataSetobservacao: TIBStringField;
    IBDataSetnom_vendedor: TIBStringField;
    QrAuxcod_cidade: TIntegerField;
    QrAuxnom_cidade: TIBStringField;
    IBDataSetlkNomCidade: TIBStringField;
    Label1: TLabel;
    dbedcod_vendedor: TDBEdit;
    Label2: TLabel;
    dbednom_vendedor: TDBEdit;
    Label6: TLabel;
    dbedrua: TDBEdit;
    Label7: TLabel;
    dbedcompl: TDBEdit;
    Label8: TLabel;
    dbednumero: TDBEdit;
    Label9: TLabel;
    dbedbairro: TDBEdit;
    Label10: TLabel;
    dbedcep: TDBEdit;
    Label12: TLabel;
    dbednum_fone: TDBEdit;
    Label13: TLabel;
    dbednum_fax: TDBEdit;
    Label19: TLabel;
    dblklkNomCidade: TDBLookupComboBox;
    dbmmobservacao: TDBMemo;
    Label20: TLabel;
    Label18: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetcod_vendedor: TIntegerField;
    IBDataSetnumero: TSmallintField;
    IBDataSetinsc_estadual: TIBStringField;
    IBDataSetpct_comissao: TIBBCDField;
    edtcod_cidade: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure dbmmobservacaoExit(Sender: TObject);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetpct_comissaoValidate(Sender: TField);
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
  fr_CadVendedor: Tfr_CadVendedor;

implementation

uses unConnection, UnMenuCompl, unPesquisaCEP;

{$R *.dfm}

procedure Tfr_CadVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadVendedor := nil;
end;

procedure Tfr_CadVendedor.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  OpenTableAux(QrAux);
end;

procedure Tfr_CadVendedor.dbmmobservacaoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadVendedor.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
{	if DataSet.State = dsInsert then
  	IBDataSetcod_vendedor.AsInteger := InsertCode('vendedor', 'cod_vendedor');}

end;

procedure Tfr_CadVendedor.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSeties_situacao.AsString   := 'A';
   IBDataSetpct_comissao.AsFloat    := 0.00;
   IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadVendedor.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadVendedor.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('vendedor') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_vendedor', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end else
   if IBDataSet.State in [dsInsert, dsEdit] then
      if (edtcod_cidade.Focused) or (dblklkNomCidade.Focused) then
      begin
         if Pesquisar('cidade') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_cidade.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;
      end else
      if (dbedrua.Focused) or (dbedcep.Focused) or (dbedbairro.Focused) then
      begin
        Application.CreateForm(TFPesquisaCEP, FPesquisaCEP);
        FPesquisaCEP.var_tipocad := 'vendedor';
        FPesquisaCEP.ShowModal;
        FPesquisaCEP.Free;
      end;
end;

procedure Tfr_CadVendedor.IBDataSetpct_comissaoValidate(Sender: TField);
begin
  inherited;
   if (Sender.AsFloat < 0.00) or (Sender.AsFloat > 100.00) then
      try
         Sender.AsFloat := 0.00;
         MessageDlg('Valor inválido.', mtError, [mbCancel], 0);
      finally
         Sender.FocusControl;
      end;
end;

procedure Tfr_CadVendedor.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadVendedor.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_vendedor.FocusControl;
end;

procedure Tfr_CadVendedor.IBDataSetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_vendedor.FocusControl;
end;

procedure Tfr_CadVendedor.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_vendedor.FocusControl;
end;

end.
