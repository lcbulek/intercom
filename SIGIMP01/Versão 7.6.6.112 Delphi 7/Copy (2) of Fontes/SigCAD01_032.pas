unit SigCAD01_032;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, DBCtrls, StdCtrls, Mask, ComCtrls, ToolWin;

type
  Tfr_CadServico = class(Tfr_Cad)
    IBDataSetcod_empresa: TSmallintField;
    IBDataSetden_servico: TIBStringField;
    IBDataSetden_servico_reduz: TIBStringField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSetpct_irrf: TIBBCDField;
    IBDataSetpct_iss: TIBBCDField;
    IBDataSeties_calc_irrf: TIBStringField;
    IBDataSetvlr_unitario: TIBBCDField;
    IBDataSetdat_cadastro: TDateField;
    QrAuxcod_tip_produto: TSmallintField;
    QrAuxden_tip_produto: TIBStringField;
    Label2: TLabel;
    Label1: TLabel;
    edtcod_servico: TDBEdit;
    edtden_servico: TDBEdit;
    edtden_servico_reduz: TDBEdit;
    Label3: TLabel;
    chkies_situacao: TDBCheckBox;
    Label9: TLabel;
    Label18: TLabel;
    dbeddat_cadastro: TDBEdit;
    Label13: TLabel;
    edtpct_irrf: TDBEdit;
    Label4: TLabel;
    edtpct_iss: TDBEdit;
    chkies_calc_irrf: TDBCheckBox;
    Label10: TLabel;
    dbedvlr_unitario: TDBEdit;
    IBDataSeties_tip_servico: TIBStringField;
    cmbies_tip_servico: TDBComboBox;
    IBDataSetcod_servico: TIntegerField;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    qryUnidMed: TIBQuery;
    IBDataSetcod_unidade: TSmallintField;
    qryUnidMedcod_uni_medida: TSmallintField;
    qryUnidMedden_uni_medida: TIBStringField;
    IBDataSetlkDenUnidMedida: TIBStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure IBDataSeties_situacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSeties_calc_irrfGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSeties_tip_servicoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbedvlr_unitarioExit(Sender: TObject);
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
  fr_CadServico: Tfr_CadServico;

implementation

uses unConnection, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	fr_CadServico	:= nil;
end;

procedure Tfr_CadServico.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
   if IBDataSeties_tip_servico.AsString <> 'F' then
      IBDataSeties_tip_servico.AsString := 'H';

	if DataSet.State = dsInsert then
  	IBDataSetcod_servico.AsInteger := InsertCode('servico', 'cod_servico', True);
end;

procedure Tfr_CadServico.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
   IBDataSetcod_empresa.AsInteger			 := vgCod_Empresa;
   IBDataSeties_situacao.AsString      := 'A';
   IBDataSetpct_irrf.AsFloat           := 0.00;
   IBDataSeties_calc_irrf.AsString		 := 'S';
   IBDataSetpct_iss.AsFloat            := 0.00;
   IBDataSetvlr_unitario.AsCurrency    := 0.00;
   IBDataSetdat_cadastro.AsDateTime    := Buscar_DateTime;
end;

procedure Tfr_CadServico.IBDataSeties_situacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   Text := Get_Situacao(Sender.AsString)
end;

procedure Tfr_CadServico.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadServico.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
	IBDataSetden_servico.FocusControl;
end;

procedure Tfr_CadServico.IBDataSeties_calc_irrfGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString[1] = 'S' then
      Text := 'Sim'
   else
   if Sender.AsString[1] = 'N' then
      Text := 'Não'
   else Text := '...';
end;

procedure Tfr_CadServico.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('servico') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_servico', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end else
   if (DBEdit1.Focused) or (DBLookupComboBox1.Focused) then
    begin
    	if Pesquisar('medida') then
      	if AbrirPesquisa then
        	with IBDataSet do
          	IBDataSetcod_unidade.AsInteger := dmConnection.qryPesquisa.FieldByName('campo1').AsInteger;
    end;
end;

procedure Tfr_CadServico.IBDataSeties_tip_servicoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  	if not Sender.IsNull then
      if Sender.AsString[1] = 'F' then
         Text	 := 'Fixo'
      else Text := 'Por Hora';
end;

procedure Tfr_CadServico.dbedvlr_unitarioExit(Sender: TObject);
begin
  inherited;
  FieldRequired;
end;

procedure Tfr_CadServico.IBDataSeties_situacaoSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Set_Situacao(Text);
end;

procedure Tfr_CadServico.Set_Value;
begin
  inherited;
  qryUnidMed.Open;
	IBDataSet.Close;
  IBDataSet.ParamByName('cod_empresa').AsShort := vgCod_Empresa;
  OpenTable(IBDataSet);
end;

end.
