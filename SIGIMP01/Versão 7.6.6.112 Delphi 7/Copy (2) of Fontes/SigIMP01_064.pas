unit SigIMP01_064;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, ActnList, ExtCtrls, Grids, DBGrids,
  JvExControls, JvComponent, JvDBLookup, StdCtrls, DB, IBCustomDataSet,
  IBQuery;

type
  Tfrm_PesquisaComissoes = class(TForm)
    ActionList1: TActionList;
    acOK: TAction;
    acClose: TAction;
    acClear: TAction;
    acFiltrar: TAction;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dlcCliente: TJvDBLookupCombo;
    Label3: TLabel;
    dlcFornecedor: TJvDBLookupCombo;
    GroupBox2: TGroupBox;
    dbgComissoes: TDBGrid;
    Cliente: TIBQuery;
    ds_cliente: TDataSource;
    Clientecod_cliente: TIBStringField;
    Fornecedor: TIBQuery;
    ds_Fornecedor: TDataSource;
    Comissoes: TIBQuery;
    ds_comissoes: TDataSource;
    rgSituacao: TRadioGroup;
    Label2: TLabel;
    edNumFatura: TEdit;
    Fornecedorcod_fornecedor: TSmallintField;
    Fornecedorraz_social_reduz: TIBStringField;
    Comissoescod_empresa: TSmallintField;
    Comissoesnum_nota_fiscal: TIntegerField;
    Comissoesserie: TIBStringField;
    Comissoesnum_fatura: TIBStringField;
    Comissoescod_cliente: TIBStringField;
    Comissoescod_fornecedor: TSmallintField;
    Comissoesvlr_faturado: TIBBCDField;
    Comissoesies_situacao: TIBStringField;
    Comissoesobs_geral: TMemoField;
    Comissoesraz_social_reduz: TIBStringField;
    ImageList1: TImageList;
    Comissoesvlr_comissao_c: TIBBCDField;
    Comissoesvlr_comissao_f: TIBBCDField;
    rgComissao: TRadioGroup;
    procedure acOKExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acClearExecute(Sender: TObject);
    procedure acFiltrarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dlcClienteChange(Sender: TObject);
    procedure dlcFornecedorChange(Sender: TObject);
    procedure dbgComissoesDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgSituacaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Gerar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_PesquisaComissoes: Tfrm_PesquisaComissoes;

implementation

uses unConnection;

{$R *.dfm}


procedure Tfrm_PesquisaComissoes.Gerar;
begin
  rgSituacao.Visible := False;
  rgComissao.Visible := True;
  Label2.Visible := False;
  edNumFatura.Visible := False;
  ShowModal;
end;

procedure Tfrm_PesquisaComissoes.acOKExecute(Sender: TObject);
begin
    ModalResult := mrOk;
end;

procedure Tfrm_PesquisaComissoes.acCloseExecute(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure Tfrm_PesquisaComissoes.acClearExecute(Sender: TObject);
begin
  dlcFornecedor.ClearValue;
  dlcCliente.ClearValue;
  Cliente.Close;
  Comissoes.Close;
  edNumFatura.Clear;
end;

procedure Tfrm_PesquisaComissoes.acFiltrarExecute(Sender: TObject);
begin
  if (dlcFornecedor.Value <> '0') then
  begin
    with Comissoes do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select a.*, b."raz_social_reduz"                ');
      SQL.Add('  from "comissao_faturas" a, "fornecedor" b     ');
      SQL.Add(' where b."cod_fornecedor" = a."cod_fornecedor"  ');
      SQL.Add('   and a."cod_empresa" = :cod_empresa           ');
      SQL.Add('   and a."ies_situacao" = :ies_situacao         ');
      SQL.Add('  and a."cod_fornecedor" = :cod_fornecedor');
      ParamByName('cod_fornecedor').AsInteger := Fornecedorcod_fornecedor.AsInteger;

      if (dlcCliente.Value <> '0') then
      begin
         SQL.Add('   and a."cod_cliente" = :cod_cliente');
         ParamByName('cod_cliente').AsString := Clientecod_cliente.AsString;
      end;

      SQL.Add('order by a."cod_cliente", a."num_fatura"');
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      ParamByName('ies_situacao').AsString := Copy(rgSituacao.Items[rgSituacao.ItemIndex],1,1);
      Open;
    end;
  end
  else if trim(edNumFatura.Text) <> '' then
  begin
    with Comissoes do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select a.*, b."raz_social_reduz"                ');
      SQL.Add('  from "comissao_faturas" a, "fornecedor" b     ');
      SQL.Add(' where b."cod_fornecedor" = a."cod_fornecedor"  ');
      SQL.Add('   and a."cod_empresa" = :cod_empresa           ');
      SQL.Add('  and a."num_fatura" = :num_fatura');
      ParamByName('num_fatura').AsString := trim(edNumFatura.Text);
      SQL.Add('order by a."cod_cliente", a."num_fatura"');
      ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
      Open;
    end;
  end;

end;

procedure Tfrm_PesquisaComissoes.FormCreate(Sender: TObject);
begin
  Fornecedor.Open;
  Cliente.Open;
end;

procedure Tfrm_PesquisaComissoes.dlcClienteChange(Sender: TObject);
begin
  acFiltrarExecute(nil);
end;

procedure Tfrm_PesquisaComissoes.dlcFornecedorChange(Sender: TObject);
begin
  with Cliente do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_fornecedor').AsInteger := Fornecedorcod_fornecedor.AsInteger;
    Open;
  end;
end;

procedure Tfrm_PesquisaComissoes.dbgComissoesDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfrm_PesquisaComissoes.FormShow(Sender: TObject);
begin
  acFiltrarExecute(nil);
end;

procedure Tfrm_PesquisaComissoes.rgSituacaoClick(Sender: TObject);
begin
  acFiltrarExecute(nil);
end;

procedure Tfrm_PesquisaComissoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  rgSituacao.Visible := True;
  rgComissao.Visible := False;
  Label2.Visible := True;
  edNumFatura.Visible := True;

end;

end.
