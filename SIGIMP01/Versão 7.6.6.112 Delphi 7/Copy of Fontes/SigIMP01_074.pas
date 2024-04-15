unit SigIMP01_074;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, ActnList, ExtCtrls, Grids, DBGrids,
  JvExControls, JvComponent, JvDBLookup, StdCtrls, DB, IBCustomDataSet,
  IBQuery, DBCtrls;

type
  Tfrm_PesquisaAdcDesc = class(TForm)
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
    Cliente: TIBQuery;
    ds_cliente: TDataSource;
    Clientecod_cliente: TIBStringField;
    Fornecedor: TIBQuery;
    ds_Fornecedor: TDataSource;
    Fornecedorcod_fornecedor: TSmallintField;
    Fornecedorraz_social_reduz: TIBStringField;
    adicional_desconto: TIBQuery;
    ds_Lista: TDataSource;
    rgComissao: TRadioGroup;
    rgTipo: TRadioGroup;
    ImageList1: TImageList;
    abgResultado: TDBGrid;
    adicional_descontocod_empresa: TSmallintField;
    adicional_descontocod_cliente: TIBStringField;
    adicional_descontocod_fornecedor: TSmallintField;
    adicional_descontoies_comissao: TIBStringField;
    adicional_descontoies_tipo: TIBStringField;
    adicional_descontovlr_adic_desc: TIBBCDField;
    adicional_descontovlr_adic_desc_esp: TIBBCDField;
    adicional_descontotxt_descricao: TMemoField;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    adicional_descontolkpFornecedor: TStringField;
    Fornecedor_lkp: TIBQuery;
    Fornecedor_lkpcod_fornecedor: TSmallintField;
    Fornecedor_lkpraz_social_reduz: TIBStringField;
    adicional_descontonum_sequencia: TIntegerField;
    procedure acOKExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acClearExecute(Sender: TObject);
    procedure acFiltrarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dlcClienteChange(Sender: TObject);
    procedure dlcFornecedorChange(Sender: TObject);
    procedure abgResultadoDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Abrir(CodCliente: String; CodFornecedor: Integer);
  end;

var
  frm_PesquisaAdcDesc: Tfrm_PesquisaAdcDesc;

implementation

uses unConnection;                                         

{$R *.dfm}

procedure Tfrm_PesquisaAdcDesc.Abrir(CodCliente: String; CodFornecedor: Integer);
begin
  dlcCliente.KeyValue := CodCliente;
  dlcFornecedor.KeyValue := CodFornecedor;
  acFiltrarExecute(nil);
end;

procedure Tfrm_PesquisaAdcDesc.acOKExecute(Sender: TObject);                                                 
begin
    ModalResult := mrOk;
end;                                                               

procedure Tfrm_PesquisaAdcDesc.acCloseExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfrm_PesquisaAdcDesc.acClearExecute(Sender: TObject);
begin
  dlcCliente.ClearValue;
  Fornecedor.Close;
  dlcFornecedor.ClearValue;
  adicional_desconto.Close;
end;

procedure Tfrm_PesquisaAdcDesc.acFiltrarExecute(Sender: TObject);
begin
  with adicional_desconto do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select *                                  ');
    SQL.Add('from "adicional_desconto"                 ');
    SQL.Add('where "cod_empresa" = :cod_empresa        ');
    if dlcCliente.Value <> '0' then
    begin
      SQL.Add('  and "cod_cliente" = :cod_cliente        ');
      ParamByName('cod_cliente').AsString := Clientecod_cliente.AsString;
    end;
    if dlcFornecedor.Value <> '0' then
    begin
      SQL.Add('  and "cod_fornecedor" = :cod_fornecedor  ');
      ParamByName('cod_fornecedor').AsInteger := Fornecedorcod_fornecedor.AsInteger;
    end;
    if rgTipo.ItemIndex = 0 then
       SQL.Add('  and "ies_tipo" = ''A''')
    else if rgTipo.ItemIndex = 1 then
       SQL.Add('  and "ies_tipo" = ''D''');

    if rgComissao.ItemIndex = 0 then
       SQL.Add('  and "ies_comissao" = ''S''')
    else
       SQL.Add('  and "ies_comissao" = ''N''');

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    Open;
  end;
end;

procedure Tfrm_PesquisaAdcDesc.FormCreate(Sender: TObject);
begin
  with Cliente do
  begin
    Open;
  end;
  Fornecedor.Open;
end;

procedure Tfrm_PesquisaAdcDesc.dlcClienteChange(Sender: TObject);
begin
  with Fornecedor do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_cliente').AsString := Clientecod_cliente.AsString;
    Open;
  end;
end;

procedure Tfrm_PesquisaAdcDesc.dlcFornecedorChange(Sender: TObject);
begin
  acFiltrarExecute(nil);
end;

procedure Tfrm_PesquisaAdcDesc.abgResultadoDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfrm_PesquisaAdcDesc.FormShow(Sender: TObject);
begin
  acFiltrarExecute(nil);
end;

end.
