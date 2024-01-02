unit SigCAD01_047;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, IBQuery, DB, IBCustomDataSet, ActnList, unNavigator,
  ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  Tfr_Cad_Traducoes = class(Tfr_Cad)
    Panel2: TPanel;
    Label1: TLabel;
    edtCodigo: TEdit;
    Label2: TLabel;
    edtDescricao: TEdit;
    DBGrid1: TDBGrid;
    IBDataSetcod_trad: TIntegerField;            
    IBDataSetcod_idioma: TIntegerField;
    IBDataSetden_trad: TIBStringField;
    QrAuxcod_idioma: TSmallintField;
    QrAuxden_idioma: TIBStringField;
    IBDataSetlkIdioma: TStringField;
    tradutor_mestre: TIBDataSet;              
    tradutor_mestrecod_trad: TIntegerField;
    tradutor_mestretabela: TIBStringField;
    tradutor_mestrecampo: TIBStringField;
    tradutor_mestrechave1: TIBStringField;
    tradutor_mestrechave2: TIBStringField;
    tradutor_mestrechave3: TIBStringField;
    tradutor_mestrechave4: TIBStringField;
    tradutor_mestrechave5: TIBStringField;
    prox_cod_trad: TIBQuery;
    prox_cod_tradcod_trad: TFloatField;
    Panel3: TPanel;
    Label3: TLabel;
    dlcIdioma: TDBLookupComboBox;
    Label4: TLabel;
    dbdDescricao: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
    procedure IBDataSetBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    lTabela, lCampo, lChave1, lChave2, lChave3, lChave4, lChave5 : String;
    lCodTrad : Integer;

    procedure AbrirTraducao(Codigo, Descricao, Tabela, Campo, Chave1: String;
                                           Chave2: String = '';
                                           Chave3: String = '';
                                           Chave4: String = '';
                                           Chave5: String = '');

    function VerTraducaoMestre: boolean;
    function ProxRegMestre: Integer;
    procedure InserirMestre;
  end;

var
  fr_Cad_Traducoes: Tfr_Cad_Traducoes;

implementation

uses unConnection;

{$R *.dfm}


procedure Tfr_Cad_Traducoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  IBDataSet.Close;
  QrAux.Close;
  Action := caFree;
  fr_Cad_Traducoes := nil;
end;

function Tfr_Cad_Traducoes.VerTraducaoMestre: boolean;
begin
  { verificar a existência do registro mestre de tradução }
  with tradutor_mestre do
  begin
    Close;
    SelectSQL.Clear;
    SelectSQL.Add('select * from "tradutor_mestre"      ');
    SelectSQL.Add(' where rtrim("tabela") = ' + QuotedStr(lTabela));
    SelectSQL.Add('   and rtrim("campo")  = ' + QuotedStr(lCampo));

    if trim(lChave1) <> '' then
       SelectSQL.Add('   and rtrim("chave1") = ' + QuotedStr(lChave1));

    if trim(lChave2) <> '' then
       SelectSQL.Add('   and rtrim("chave2") = ' + QuotedStr(lChave2));

    if trim(lChave3) <> '' then
       SelectSQL.Add('   and rtrim("chave3") = ' + QuotedStr(lChave3));

    if trim(lChave4) <> '' then
       SelectSQL.Add('   and rtrim("chave4") = ' + QuotedStr(lChave4));

    if trim(lChave5) <> '' then
       SelectSQL.Add('   and rtrim("chave5") = ' + QuotedStr(lChave5));

    Open;
    Result := Not(IsEmpty);
  end;
end;

function Tfr_Cad_Traducoes.ProxRegMestre: Integer;
begin
  { Gera o próximo código mestre }
  with prox_cod_trad do
  begin
    Close;
    Open;
    if IsEmpty then Result := 1
               else Result := FieldByName('cod_trad').AsInteger;
    Close;
  end;
end;

procedure Tfr_Cad_Traducoes.InserirMestre;
begin
  { Inserir registro de traduções mestre }
  with tradutor_mestre do
  begin
    Insert;
    FieldByName('cod_trad').AsInteger := ProxRegMestre;
    FieldByName('tabela').AsString    := lTabela;
    FieldByName('campo').AsString     := lCampo;
    FieldByName('chave1').AsString    := lChave1;
    FieldByName('chave2').AsString    := lChave2;
    FieldByName('chave3').AsString    := lChave3;
    FieldByName('chave4').AsString    := lChave4;
    FieldByName('chave5').AsString    := lChave5;
    Post;
    Transaction.CommitRetaining;
  end;
end;

{ Chamado do form }
procedure Tfr_Cad_Traducoes.AbrirTraducao(Codigo, Descricao, Tabela, Campo, Chave1: String;
                                          Chave2: String = '';
                                          Chave3: String = '';
                                          Chave4: String = '';
                                          Chave5: String = '');
begin
  edtCodigo.Text := Codigo;
  edtDescricao.Text := Descricao;

  { mover para variáveis globais }
  lTabela := Tabela;                         
  lCampo  := Campo;
  lChave1 := Chave1;
  lChave2 := Chave2;                         
  lChave3 := Chave3;
  lChave4 := Chave4;
  lChave5 := Chave5;                                
  { abrir tradução mestre }
  VerTraducaoMestre;
  { abrir tradução itens }
  with IBDataSet do
  begin
    Close;
    ParamByName('cod_trad').AsInteger := tradutor_mestre.FieldByName('cod_trad').AsInteger;
    Open;
  end;
  ShowModal;
end;

procedure Tfr_Cad_Traducoes.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if Not(VerTraducaoMestre) then
     InserirMestre;
end;

procedure Tfr_Cad_Traducoes.IBDataSetBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cod_trad').AsInteger := tradutor_mestre.FieldByName('cod_trad').AsInteger;
end;

end.
