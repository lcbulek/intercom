unit unCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, UnGrid, ActnList, Buttons, IBQuery, DB, UnNavigator,
  IBCustomDataSet, Grids, DBGrids, DateUtils, ComCtrls, ToolWin, StdCtrls;

type
  Tfr_Cad = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    IBDataSet: TIBDataSet;
    dsIBDataSet: TDataSource;
    QrAux: TIBQuery;
    fr_FmNavigator1: Tfr_FmNavigator;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fr_FmNavigator1ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure IBDataSetBeforeOpen(DataSet: TDataSet);
    procedure IBDataSetDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBDataSetAfterCancel(DataSet: TDataSet);
    procedure IBDataSetAfterDelete(DataSet: TDataSet);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure fr_FmNavigator1acF3Execute(Sender: TObject);
    procedure IBDataSetAfterClose(DataSet: TDataSet);
    procedure IBDataSetUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure IBDataSetBeforeInsert(DataSet: TDataSet);
  protected
		procedure Filtrar_Tabela(Tabela: TIBCustomDataSet);
     procedure Set_Value; virtual; abstract;

  	function Set_Situacao(Text: String): String;
  	function Get_Situacao(Text: String): String;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenTable(Tabela: TIBDataSet);
    procedure OpenTableAux(Tabela: TIBQuery);
    function FieldRequired(Inserir: Boolean = True): Boolean;
    procedure AbreGrade;
    constructor Create(AOwner: TComponent); override;

    procedure ChangeDataSource(DataSource: TDataSource);
  end;

var
  fr_Cad: Tfr_Cad;

implementation

uses unConnection, UnGrade;


{$R *.dfm}

procedure Tfr_Cad.OpenTable(Tabela: TIBDataSet);
begin
	with Tabela do
  	if not Active then
    	Active := True
    else
    begin
    	Close;
      Active := True;
    end;
end;

procedure Tfr_Cad.OpenTableAux(Tabela: TIBQuery);
begin
	with Tabela do
  	if not Active then
    	Active := True
    else
    begin
    	Close;
      Active := True;
    end;
end;
  
procedure Tfr_Cad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Post;
  Action	:= caFree;
end;

procedure Tfr_Cad.fr_FmNavigator1ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
	if Action = fr_FmNavigator1.acInsert then Handled	:= not Permitir_Acesso(CtInsert, Buscar_Unit(ClassName));
  if Action = fr_FmNavigator1.acEdit then   Handled	:= not Permitir_Acesso(CtEdit, Buscar_Unit(ClassName));
  if Action = fr_FmNavigator1.acDelete then Handled	:= not Permitir_Acesso(CtDelete, Buscar_Unit(ClassName));

	fr_FmNavigator1.ActionList1Execute(Action, Handled);
end;

procedure Tfr_Cad.IBDataSetBeforeOpen(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).CachedUpdates := True;
	if not TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).Prepare;
end;

function Tfr_Cad.FieldRequired(Inserir: Boolean): Boolean;
var
	lCampo: Byte;
begin
   Result	:= True;
	with IBDataSet do
   begin
      if State in [dsInsert, dsEdit] then
         for lCampo := 0 to Fields.Count -1 do
            if (IBDataSet.Fields.Fields[lCampo].Required) then
            begin
            	Result := Fields.Fields[lCampo].IsNull;
               if Fields.Fields[lCampo].IsNull and not (IBDataSet.Fields.Fields[lCampo].ProviderFlags = [pfInUpdate..pfInKey]) then
	               try
   	            	raise Exception.Create('O campo '+Fields.Fields[lCampo].DisplayLabel+' é obrigatório o preenchimento...');
                  finally
                  	Fields.Fields[lCampo].FocusControl;
                  end;
            end;

	   if not Result then
   		if State in [dsInsert, dsEdit] then fr_FmNavigator1.acPost.Execute;
   end;
end;

procedure Tfr_Cad.IBDataSetDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
	Exception_Cadastro(DataSet, E, Action);
end;

procedure Tfr_Cad.IBDataSetAfterCancel(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      CancelUpdates;
      Transaction.RollbackRetaining;
   except
   end;
   fr_FmNavigator1.acInsert.Checked := False;
end;

procedure Tfr_Cad.IBDataSetAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
		Transaction.RollbackRetaining;
   end;
end;

procedure Tfr_Cad.IBDataSetAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      Prepare;
      ApplyUpdates;
      Transaction.CommitRetaining;
   except
   	Transaction.RollbackRetaining;
   end;
   fr_FmNavigator1.acInsert.Checked := False;
end;

procedure Tfr_Cad.AbreGrade;
begin
end;

procedure Tfr_Cad.fr_FmNavigator1acF3Execute(Sender: TObject);
begin
  if IBDataSet.State in [dsEdit, dsInsert] then Exit;
end;

function Tfr_Cad.Get_Situacao(Text: String): String;
begin
	if Length(Text) > 0 then
		if Text = 'A' then Result	:= 'Ativo'
   	else
   	if Text = 'I' then Result	:= 'Inativo'
   	else
   	if Text = 'C' then Result	:= 'Cancelado'
   	else
   	if Text = 'S' then Result	:= 'Sim'
   	else
   	if Text = 'N' then Result	:= 'Não';
end;

function Tfr_Cad.Set_Situacao(Text: String): String;
begin
	if Length(Text) > 0 then
		if Text = 'Ativo' then Result	:= 'A'
   	else
   	if Text = 'Inativo' then Result	:= 'I'
   	else
   	if Text = 'Cancelado' then Result	:= 'C'
   	else
   	if Text = 'Sim' then Result	:= 'S'
   	else
   	if Text = 'Não' then Result	:= 'N';
end;

procedure Tfr_Cad.IBDataSetAfterClose(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := False;
	if TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).UnPrepare;
end;

procedure Tfr_Cad.IBDataSetUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
   Exception_Update(DataSet, E, UpdateKind, UpdateAction);
end;

procedure Tfr_Cad.Filtrar_Tabela(Tabela: TIBCustomDataSet);
begin
	with Tabela do
   try
      DisableControls;
      Filtered	:= False;
      Filtered	:= True;
   finally
      EnableControls;
   end;
end;


constructor Tfr_Cad.Create(AOwner: TComponent);
begin
  inherited;

end;


procedure Tfr_Cad.ChangeDataSource(DataSource: TDataSource);
begin
  { Ao entrar na grade, mudar o DataSource do navigator }
  with fr_FmNavigator1 do
  begin
    acFirst.DataSource   := DataSource;
    acPrior.DataSource   := DataSource;
    acNext.DataSource    := DataSource;
    acLast.DataSource    := DataSource;
    acInsert.DataSource  := DataSource;
    acDelete.DataSource  := DataSource;
    acEdit.DataSource    := DataSource;
    acPost.DataSource    := DataSource;
    acCancel.DataSource  := DataSource;
    acRefresh.DataSource := DataSource;
  end;
end;

procedure Tfr_Cad.IBDataSetBeforeInsert(DataSet: TDataSet);
begin
  fr_FmNavigator1.acInsert.Checked := True;
end;

end.
