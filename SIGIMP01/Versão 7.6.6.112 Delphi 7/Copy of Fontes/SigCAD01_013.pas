unit SigCAD01_013;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadCliente_Endereco = class(Tfr_Cad)
    IBDataSetnum_ender: TSmallintField;
    IBDataSettip_ender: TIBStringField;
    IBDataSetcod_cidade: TIntegerField;
    IBDataSetrua: TIBStringField;
    IBDataSetcompl: TIBStringField;
    IBDataSetbairro: TIBStringField;
    IBDataSetcep: TIBStringField;
    IBDataSetcx_postal: TIBStringField;
    IBDataSetnum_fone: TIBStringField;
    IBDataSetnum_fax: TIBStringField;
    IBDataSete_mail0: TIBStringField;
    IBDataSete_mail1: TIBStringField;
    IBDataSethome_page: TIBStringField;
    IBDataSetobservacao: TIBStringField;
    dbtxcod_cliente: TDBText;
    dbtxnom_cliente: TDBText;
    QrAuxcod_cidade: TIntegerField;
    QrAuxnom_cidade: TIBStringField;
    IBDataSetlkNomCidade: TIBStringField;
    Label1: TLabel;
    dbcbtip_ender: TDBComboBox;
    dblklkNomCidade: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    dbmmobservacao: TDBMemo;
    dbedhome_page: TDBEdit;
    dbede_mail1: TDBEdit;
    dbede_mail0: TDBEdit;
    dbednum_fone: TDBEdit;
    Label12: TLabel;
    dbednum_fax: TDBEdit;
    dbedcx_postal: TDBEdit;
    dbedbairro: TDBEdit;
    Label7: TLabel;
    dbedcep: TDBEdit;
    dbednumero: TDBEdit;
    Label5: TLabel;
    dbedcompl: TDBEdit;
    dbedrua: TDBEdit;
    edtcod_cidade: TDBEdit;
    IBDataSetdat_cadastro: TDateField;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    IBDataSetcod_cliente: TIBStringField;
    IBDataSetnumero: TIntegerField;
    GroupBox1: TGroupBox;
    IBDataSetcod_identif: TIBStringField;
    IBDataSetden_identif: TIBStringField;
    Label14: TLabel;
    dbedcod_identif: TDBEdit;
    Label15: TLabel;
    dbedden_identif: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbmmobservacaoExit(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSettip_enderGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Set_Value; override;
  end;

var
  fr_CadCliente_Endereco: Tfr_CadCliente_Endereco;

implementation

uses SigCAD01_012, unConnection, UnMenuCompl, unPesquisaCEP;

{$R *.dfm}

procedure Tfr_CadCliente_Endereco.Set_Value;
begin
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_cliente').AsString := fr_CadCliente.IBDataSetcod_cliente.AsString;
    Open;
  end;
end;

procedure Tfr_CadCliente_Endereco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   fr_CadCliente_Endereco := nil;
end;

procedure Tfr_CadCliente_Endereco.dbmmobservacaoExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadCliente_Endereco.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_cliente.AsString    := fr_CadCliente.IBDataSetcod_cliente.AsString;
   IBDataSetnum_ender.AsInteger		 := IBDataSet.RecordCount +1;
   IBDataSettip_ender.AsString      := 'G';
   IBDataSetdat_cadastro.AsDateTime := Buscar_DateTime;
end;

procedure Tfr_CadCliente_Endereco.IBDataSettip_enderGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString = 'G' then
      Text := 'G - Geral'
   else
   if Sender.AsString = 'C' then
      Text := 'C - Cobrança'
   else
   if Sender.AsString = 'O' then
      Text := 'O - Outros';
end;

procedure Tfr_CadCliente_Endereco.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  OpenTableAux(QrAux);
end;

procedure Tfr_CadCliente_Endereco.fr_FmNavigator1acF3Execute(
  Sender: TObject);
begin
  inherited;
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
        FPesquisaCEP.var_tipocad := 'cliente - endereco';
        FPesquisaCEP.ShowModal;
        FPesquisaCEP.Free;
      end;

   {if IBDataSet.State in [dsInsert, dsEdit] then
      if (edtcod_cidade.Focused) or (dblklkNomCidade.Focused) then
      begin
         if Pesquisar('cidade') then
            if AbrirPesquisa then
               with IBDataSet do
                  IBDataSetcod_cidade.AsInteger  := dmConnection.qryPesquisa.FieldByName('campo1').AsVariant;
      end;}
end;

procedure Tfr_CadCliente_Endereco.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   IBDataSettip_ender.FocusControl;
end;

procedure Tfr_CadCliente_Endereco.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   IBDataSettip_ender.FocusControl;
end;

procedure Tfr_CadCliente_Endereco.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

end.
