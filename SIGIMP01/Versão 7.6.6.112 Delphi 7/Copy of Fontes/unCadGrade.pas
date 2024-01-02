unit unCadGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnCad, Grids, DBGrids, IBQuery, DB, IBCustomDataSet, ActnList,
  unNavigator, ComCtrls, ToolWin, ExtCtrls, JvDBUltimGrid, JvExDBGrids,
  JvDBGrid, StdCtrls;

type
  Tfr_CadGrade = class(Tfr_Cad)
    IBDataSetGrade: TIBDataSet;
    dsIBDataSetGrade: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrade: TJvDBUltimGrid;
    procedure IBDataSetGradeAfterCancel(DataSet: TDataSet);
    procedure IBDataSetGradeAfterClose(DataSet: TDataSet);
    procedure IBDataSetGradeAfterDelete(DataSet: TDataSet);
    procedure IBDataSetGradeAfterPost(DataSet: TDataSet);
    procedure IBDataSetGradeBeforeOpen(DataSet: TDataSet);
    procedure IBDataSetGradeDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure IBDataSetGradeEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBDataSetGradePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBDataSetGradeUpdateError(DataSet: TDataSet;
      E: EDatabaseError; UpdateKind: TUpdateKind;
      var UpdateAction: TIBUpdateAction);
    procedure DBGradeEnter(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure IBDataSetGradeBeforePost(DataSet: TDataSet);
    procedure IBDataSetAfterScroll(DataSet: TDataSet);
    procedure IBDataSetAfterPost(DataSet: TDataSet);
    procedure IBDataSetAfterOpen(DataSet: TDataSet);
    procedure IBDataSetBeforeDelete(DataSet: TDataSet);
    procedure IBDataSetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CadGrade: Tfr_CadGrade;

implementation

uses unConnection;

{$R *.dfm}

procedure Tfr_CadGrade.IBDataSetGradeAfterCancel(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      CancelUpdates;
      Transaction.RollbackRetaining;
   Except
   end;
end;

procedure Tfr_CadGrade.IBDataSetGradeAfterClose(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := False;
	if TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).UnPrepare;
end;

procedure Tfr_CadGrade.IBDataSetGradeAfterDelete(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   Except
		Transaction.RollbackRetaining;
   end;

end;

procedure Tfr_CadGrade.IBDataSetGradeAfterPost(DataSet: TDataSet);
begin
	with TIBDataSet(DataSet) do
   try
      ApplyUpdates;
      Transaction.CommitRetaining;
   Except
   	Transaction.RollbackRetaining;
   end;

end;

procedure Tfr_CadGrade.IBDataSetGradeBeforeOpen(DataSet: TDataSet);
begin
	TIBDataSet(DataSet).CachedUpdates := True;
	if not TIBDataSet(DataSet).Prepared then
   	TIBDataSet(DataSet).Prepare;

end;

procedure Tfr_CadGrade.IBDataSetGradeDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
	Exception_Cadastro(DataSet, E, Action);
end;

procedure Tfr_CadGrade.IBDataSetGradeEditError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
	Exception_Cadastro(DataSet, E, Action);
end;

procedure Tfr_CadGrade.IBDataSetGradePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
	Exception_Cadastro(DataSet, E, Action);
end;

procedure Tfr_CadGrade.IBDataSetGradeUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
   Exception_Update(DataSet, E, UpdateKind, UpdateAction);
end;

procedure Tfr_CadGrade.DBGradeEnter(Sender: TObject);
begin
  { Ao entrar na grade, mudar o DataSource do navigator }
  with fr_FmNavigator1 do
  begin
    acFirst.  DataSource := dsIBDataSetGrade;    
    acPrior.  DataSource := dsIBDataSetGrade;
    acNext.   DataSource := dsIBDataSetGrade;      
    acLast.   DataSource := dsIBDataSetGrade;
    acInsert. DataSource := dsIBDataSetGrade;                        
    acDelete. DataSource := dsIBDataSetGrade;          
    acEdit.   DataSource := dsIBDataSetGrade;
    acPost.   DataSource := dsIBDataSetGrade;
    acCancel. DataSource := dsIBDataSetGrade;
    acRefresh.DataSource := dsIBDataSetGrade;
  end;
end;

procedure Tfr_CadGrade.Panel1Enter(Sender: TObject);
begin
  { Ao entrar no painel acima da grade, mudar o DataSource do navigator }
  with fr_FmNavigator1 do
  begin
    acFirst.  DataSource := dsIBDataSet;
    acPrior.  DataSource := dsIBDataSet;
    acNext.   DataSource := dsIBDataSet;
    acLast.   DataSource := dsIBDataSet;
    acInsert. DataSource := dsIBDataSet;
    acDelete. DataSource := dsIBDataSet;
    acEdit.   DataSource := dsIBDataSet;
    acPost.   DataSource := dsIBDataSet;
    acCancel. DataSource := dsIBDataSet;
    acRefresh.DataSource := dsIBDataSet;
  end;

end;

procedure Tfr_CadGrade.IBDataSetGradeBeforePost(DataSet: TDataSet);
begin
  { Gravar reg. pai antes do filho, evitando erro de integridade referêncial }
  if IBDataSet.State in [dsEdit, dsInsert] then IBDataSet.Post;
end;

procedure Tfr_CadGrade.IBDataSetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  { Se reg. filho estiver em edição/inserção, salvar antes de um novo select }
  if IBDataSetGrade.State in [dsEdit, dsInsert] then IBDataSetGrade.Post;
end;

procedure Tfr_CadGrade.IBDataSetAfterPost(DataSet: TDataSet);
begin
  inherited;
  { Registro pai gravado, habilita a grade para edição } 
  DBGrade.Enabled := True;
end;

procedure Tfr_CadGrade.IBDataSetAfterOpen(DataSet: TDataSet);
begin
  inherited;
  { Existe reg. pai, habilita a grade para edição }
  if IBDataSet.IsEmpty then DBGrade.Enabled := False
  else DBGrade.Enabled := True;
end;

procedure Tfr_CadGrade.IBDataSetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with IBDataSetGrade do
  begin
    First;
    while Not(EOF) do
      Delete;
  end;
end;

procedure Tfr_CadGrade.IBDataSetNewRecord(DataSet: TDataSet);
begin
  inherited;
  DBGrade.Enabled := False ;
end;

end.
