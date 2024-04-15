unit SigCAD01_012;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, IBSQL, DB, IBCustomDataSet, ActnList, UnNavigator,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ToolWin, IBStoredProc,
  JvDBCheckBox;

type
  Tfr_CadCliente = class(Tfr_Cad)
    Label1: TLabel;
    dbedcod_cliente: TDBEdit;
    Label2: TLabel;
    dbednom_cliente: TDBEdit;
    dbednom_cliente_reduz: TDBEdit;
    Label11: TLabel;
    dbeddat_cadastro: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeMascara: TDBEdit;
    Label5: TLabel;
    ncm_fmt_geral: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    IBDataSetcod_cliente: TIBStringField;
    IBDataSetnom_cliente: TIBStringField;
    IBDataSetnom_cliente_reduz: TIBStringField;
    IBDataSetcod_class: TIBStringField;
    IBDataSeties_situacao: TIBStringField;
    IBDataSetcnpj: TIBStringField;
    IBDataSetinsc_estadual: TIBStringField;
    IBDataSetsuframa: TIntegerField;
    IBDataSetobservacao: TIBStringField;
    IBDataSetcod_tip_cliente: TSmallintField;
    IBDataSetdat_cadastro: TDateField;
    IBDataSeties_tip_cliente: TIBStringField;
    IBDataSetruc: TIBStringField;
    IBDataSetmas_cod_produto: TIBStringField;
    IBDataSetden_destination_exp: TIBStringField;
    IBDataSetncm_formato: TIBStringField;
    IBDataSetidioma_shipmarks: TIBStringField;
    GroupBox1: TGroupBox;
    JvDBCheckBox1: TJvDBCheckBox;
    JvDBCheckBox2: TJvDBCheckBox;
    JvDBCheckBox3: TJvDBCheckBox;
    JvDBCheckBox4: TJvDBCheckBox;
    IBDataSetncm_pedido: TIBStringField;
    IBDataSetncm_fatura: TIBStringField;
    IBDataSetncm_pack_list: TIBStringField;
    IBDataSetncm_bl: TIBStringField;
    IBDataSetncm_formato_ped: TIBStringField;
    IBDataSetncm_formato_fat: TIBStringField;
    IBDataSetncm_formato_pkl: TIBStringField;
    IBDataSetncm_formato_bol: TIBStringField;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    actFilial: TAction;
    Button2: TButton;
    IBDataSetden_portosdest: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dbmendereco: TDBMemo;
    dbmobservacao: TDBMemo;
    dbmden_portosdest: TDBMemo;
    IBDataSetendereco: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetAfterDelete(DataSet: TDataSet);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure actFilialExecute(Sender: TObject);
    procedure dbmden_portosdestKeyPress(Sender: TObject; var Key: Char);

 private
    { Private declarations }
  protected
    procedure Set_Value; override;
 public
    { Public declarations }
  end;

var
  fr_CadCliente : Tfr_CadCliente;

implementation

uses unConnection, SigIMP01_001, SigCAD01_088, UnMenuCompl;

{$R *.dfm}

procedure Tfr_CadCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fr_CadCliente := nil;
end;

procedure Tfr_CadCliente.FormShow(Sender: TObject);
begin
  inherited;
  Set_Value;
end;

procedure Tfr_CadCliente.IBDataSetNewRecord(DataSet: TDataSet);
begin
   inherited;
   IBDataSetcod_class.AsString        := 'A';
   IBDataSeties_situacao.AsString     := 'A';
   IBDataSetcod_tip_cliente.AsInteger := 1;
   IBDataSetdat_cadastro.AsDateTime   := Buscar_DateTime;
   IBDataSetidioma_shipmarks.AsString := 'P';
   IBDataSetncm_formato.Value         := '####.##.##';
   IBDataSetncm_formato_ped.Value     := '####.##.##';
   IBDataSetncm_formato_fat.Value     := '####.##.##';
   IBDataSetncm_formato_pkl.Value     := '####.##.##';
   IBDataSetncm_formato_bol.Value     := '####.##.##';         
end;

procedure Tfr_CadCliente.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  inherited;
   if IBDataSet.State in [dsBrowse] then
   begin
      if Pesquisar('cliente') then
         if AbrirPesquisa then
            with IBDataSet do
            try
               DisableControls;
               First;
               Locate('cod_cliente', dmConnection.qryPesquisa.FieldByName('campo1').AsVariant, []);
            finally
               EnableControls;
            end;
   end;
                                                                    
end;

procedure Tfr_CadCliente.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  IBDataSetcod_cliente.FocusControl;
end;

procedure Tfr_CadCliente.Set_Value;
begin
  inherited;
  OpenTable(IBDataSet);
end;

procedure Tfr_CadCliente.IBDataSetAfterDelete(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;

end;

procedure Tfr_CadCliente.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
	with TIBDataSet(DataSet) do
   try
      Prepare;                      
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;
end;

procedure Tfr_CadCliente.actFilialExecute(Sender: TObject);
begin
  inherited;
  CriarForm(Tfr_ClienteFilial, fr_ClienteFilial, false, false);
end;

procedure Tfr_CadCliente.dbmden_portosdestKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1];
end;

end.
                                                        
