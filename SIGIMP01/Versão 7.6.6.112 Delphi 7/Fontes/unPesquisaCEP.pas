unit unPesquisaCEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls, ExtCtrls,
  Buttons, IBDatabase;

type
  TFPesquisaCEP = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    qryPesquisaEndereco: TIBQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    qryPesquisaEnderecoCODLOC: TIntegerField;
    qryPesquisaEnderecoLOGRAD: TIBStringField;
    qryPesquisaEnderecoCOMPL: TIBStringField;
    qryPesquisaEnderecoBAIRRO: TIBStringField;
    qryPesquisaEnderecoLOCAL: TIBStringField;
    qryPesquisaEnderecoUF: TIBStringField;
    qryPesquisaEnderecoCEP: TIBStringField;
    procedure Edit2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    var_tipocad: string;
    { Public declarations }
  end;

var
  FPesquisaCEP: TFPesquisaCEP;


implementation

uses Math, SigCAD01_002, SigCAD01_013, SigCAD01_017, SigCAD01_031, unConnection;
{$R *.dfm}

procedure TFPesquisaCEP.Edit2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ShowHint := True;
end;

procedure TFPesquisaCEP.BitBtn1Click(Sender: TObject);
begin
  with qryPesquisaEndereco do
  begin
    Close;
    if (Edit2.Text = '') then
      ParamByName('LOCALIDADE').Value := ''
    else
      ParamByName('LOCALIDADE').Value := Edit2.Text;
      ParamByName('CEP').Value        := Edit1.Text;
      ParamByName('LOGRADOURO').Value := Edit3.Text;
      Open;

    if IsEmpty then
      MessageDlg('Registro não encontrado', mtInformation, [mbOK], 0);

  end;
end;

procedure TFPesquisaCEP.Edit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ShowHint := True;
end;

procedure TFPesquisaCEP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FPesquisaCEP := nil;
end;

procedure TFPesquisaCEP.BitBtn2Click(Sender: TObject);
begin

  if var_tipocad = 'cliente - endereco' then
  begin
    if fr_CadCliente_Endereco.IBDataSet.State in [dsInsert, dsEdit]  then
     begin
       fr_CadCliente_Endereco.IBDataSetrua.Value := qryPesquisaEnderecoLOGRAD.Value;
       fr_CadCliente_Endereco.dbedrua.Text := qryPesquisaEnderecoLOGRAD.Value;
       fr_CadCliente_Endereco.IBDataSetbairro.Value := qryPesquisaEnderecoBAIRRO.Value;
       fr_CadCliente_Endereco.dbedbairro.Text := qryPesquisaEnderecoBAIRRO.Value;
       fr_CadCliente_Endereco.IBDataSetcep.Value := qryPesquisaEnderecoCEP.Value;
       fr_CadCliente_Endereco.dbedcep.Text := qryPesquisaEnderecoCEP.Value;
       fr_CadCliente_Endereco.IBDataSetcod_cidade.Value := qryPesquisaEnderecoCODLOC.Value;
       fr_CadCliente_Endereco.edtcod_cidade.Text := inttostr(qryPesquisaEnderecoCODLOC.Value);
       fr_CadCliente_Endereco.dbednumero.Focused;
     end;
  end;

  if var_tipocad = 'empresa' then
  begin
    if fr_CadEmpresa.IBDataSet.State in [dsInsert, dsEdit]  then
     begin
       fr_CadEmpresa.IBDataSetrua.Value := qryPesquisaEnderecoLOGRAD.Value;
       fr_CadEmpresa.dbedrua.Text := qryPesquisaEnderecoLOGRAD.Value;
       fr_CadEmpresa.IBDataSetbairro.Value := qryPesquisaEnderecoBAIRRO.Value;
       fr_CadEmpresa.dbedbairro.Text := qryPesquisaEnderecoBAIRRO.Value;
       fr_CadEmpresa.IBDataSetcep.Value := qryPesquisaEnderecoCEP.Value;
       fr_CadEmpresa.dbedcep.Text := qryPesquisaEnderecoCEP.Value;
       fr_CadEmpresa.IBDataSetcod_cidade.Value := qryPesquisaEnderecoCODLOC.Value;
       fr_CadEmpresa.edtcod_cidade.Text := inttostr(qryPesquisaEnderecoCODLOC.Value);
       fr_CadEmpresa.dbednumero.Focused;
     end;
  end;
  Close;
end;

procedure TFPesquisaCEP.Edit1Exit(Sender: TObject);
begin
  with qryPesquisaEndereco do
  begin
    Close;
    if (Edit2.Text = '') then
      ParamByName('LOCALIDADE').Value := ''
    else
      ParamByName('LOCALIDADE').Value := Edit2.Text;
      ParamByName('CEP').Value        := Edit1.Text;
      ParamByName('LOGRADOURO').Value := Edit3.Text;
      Open;

    if (IsEmpty and (Edit1.Text <> '')) then
      MessageDlg('Registro não encontrado', mtInformation, [mbOK], 0);
  end;
end;

procedure TFPesquisaCEP.Edit3Exit(Sender: TObject);
begin
  with qryPesquisaEndereco do
  begin
    Close;
    if (Edit2.Text = '') then
      ParamByName('LOCALIDADE').Value := ''
    else
      ParamByName('LOCALIDADE').Value := Edit2.Text;
      ParamByName('CEP').Value        := Edit1.Text;
      ParamByName('LOGRADOURO').Value := Edit3.Text;
      Open;

    if (IsEmpty and (Edit3.Text <> '')) then
      MessageDlg('Registro não encontrado', mtInformation, [mbOK], 0);
  end;
end;

procedure TFPesquisaCEP.DBGrid1DblClick(Sender: TObject);
begin
  if var_tipocad = 'cliente - endereco' then
  begin
    if fr_CadCliente_Endereco.IBDataSet.State in [dsInsert, dsEdit]  then
     begin
       fr_CadCliente_Endereco.IBDataSetrua.Value := qryPesquisaEnderecoLOGRAD.Value;
       fr_CadCliente_Endereco.dbedrua.Text := qryPesquisaEnderecoLOGRAD.Value;
       fr_CadCliente_Endereco.IBDataSetbairro.Value := qryPesquisaEnderecoBAIRRO.Value;
       fr_CadCliente_Endereco.dbedbairro.Text := qryPesquisaEnderecoBAIRRO.Value;
       fr_CadCliente_Endereco.IBDataSetcep.Value := qryPesquisaEnderecoCEP.Value;
       fr_CadCliente_Endereco.dbedcep.Text := qryPesquisaEnderecoCEP.Value;
       fr_CadCliente_Endereco.IBDataSetcod_cidade.Value := qryPesquisaEnderecoCODLOC.Value;
       fr_CadCliente_Endereco.edtcod_cidade.Text := inttostr(qryPesquisaEnderecoCODLOC.Value);
       fr_CadCliente_Endereco.dbednumero.Focused;
     end;
  end;

  if var_tipocad = 'empresa' then
  begin
    if fr_CadEmpresa.IBDataSet.State in [dsInsert, dsEdit]  then
     begin
       fr_CadEmpresa.IBDataSetrua.Value := qryPesquisaEnderecoLOGRAD.Value;
       fr_CadEmpresa.dbedrua.Text := qryPesquisaEnderecoLOGRAD.Value;
       fr_CadEmpresa.IBDataSetbairro.Value := qryPesquisaEnderecoBAIRRO.Value;
       fr_CadEmpresa.dbedbairro.Text := qryPesquisaEnderecoBAIRRO.Value;
       fr_CadEmpresa.IBDataSetcep.Value := qryPesquisaEnderecoCEP.Value;
       fr_CadEmpresa.dbedcep.Text := qryPesquisaEnderecoCEP.Value;
       fr_CadEmpresa.IBDataSetcod_cidade.Value := qryPesquisaEnderecoCODLOC.Value;
       fr_CadEmpresa.edtcod_cidade.Text := inttostr(qryPesquisaEnderecoCODLOC.Value);
       fr_CadEmpresa.dbednumero.Focused;
     end;
  end;


  Close;

end;

procedure TFPesquisaCEP.Edit2Exit(Sender: TObject);
begin
  with qryPesquisaEndereco do
  begin
    Close;
    if (Edit2.Text = '') then
      ParamByName('LOCALIDADE').Value := ''
    else
      ParamByName('LOCALIDADE').Value := Edit2.Text;
      ParamByName('CEP').Value        := Edit1.Text;
      ParamByName('LOGRADOURO').Value := Edit3.Text;
      Open;

    if (IsEmpty and (Edit2.Text <> '')) then
      MessageDlg('Registro não encontrado', mtInformation, [mbOK], 0);
  end;
end;

end.
