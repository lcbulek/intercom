unit unGrade_Selecao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, UnGrid, Buttons, ActnList, DB, IBCustomDataSet,
  IBQuery;

type
  Tfr_FmGrade_Selecao = class(TFrame)
    ActionList1: TActionList;
    act_I_Um: TAction;
    act_I_Todo: TAction;
    act_D_Um: TAction;
    act_D_Todo: TAction;
    qrySelecao: TIBQuery;
    qrySelecionado: TIBQuery;
    Splitter1: TSplitter;
    pnlBotao: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    grbSelecionado: TGroupBox;
    fr_FmGrid2: Tfr_FmGrid;
    grbLivre: TGroupBox;
    fr_FmGrid1: Tfr_FmGrid;
    procedure fr_FmGrid1DBGrid1DblClick(Sender: TObject);
    procedure fr_FmGrid2DBGrid1DblClick(Sender: TObject);
    procedure act_I_UmExecute(Sender: TObject);
    procedure act_I_TodoExecute(Sender: TObject);
    procedure act_D_UmExecute(Sender: TObject);
    procedure act_D_TodoExecute(Sender: TObject);
    procedure qrySelecaoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qrySelecionadoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
  	FCampo: String;

    procedure Insert;
    procedure InsertFull;
    procedure Delete;
    procedure DeleteFull;
    { Private declarations }
  public
  	List: TStringList;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure Open; overload;

    procedure Filter;
    { Public declarations }
  published
  	property Campo: String read FCampo write FCampo;
  end;

implementation

uses unConnection;

{$R *.dfm}

procedure Tfr_FmGrade_Selecao.Insert;
begin
	if qrySelecao.IsEmpty then Exit;

	if List.IndexOf(qrySelecao[FCampo]) < 0 then
  begin
    List.Add(qrySelecao[FCampo]);
    Filter;
  end;
end;

procedure Tfr_FmGrade_Selecao.InsertFull;
begin
	if qrySelecao.IsEmpty then Exit;
  
  List.Clear;
  try
	  qrySelecao.DisableControls;
	  qrySelecao.First;
		repeat
  		List.Add(qrySelecao[FCampo]);

    	qrySelecao.Next;
	  until qrySelecao.Eof;
	finally
  	qrySelecao.EnableControls;
		Filter;
  end;
end;

procedure Tfr_FmGrade_Selecao.Delete;
begin
	if qrySelecionado.IsEmpty then Exit;

	if List.IndexOf(qrySelecionado[FCampo]) >= 0 then
  begin
  	List.Delete(List.IndexOf(qrySelecionado[FCampo]));
    Filter;
  end;
end;

procedure Tfr_FmGrade_Selecao.DeleteFull;
begin
  List.Clear;
  Filter;
end;

procedure Tfr_FmGrade_Selecao.fr_FmGrid1DBGrid1DblClick(Sender: TObject);
begin
   Insert;
end;

procedure Tfr_FmGrade_Selecao.fr_FmGrid2DBGrid1DblClick(Sender: TObject);
begin
   Delete;
end;

procedure Tfr_FmGrade_Selecao.act_I_UmExecute(Sender: TObject);
begin
	Insert;
end;

procedure Tfr_FmGrade_Selecao.act_I_TodoExecute(Sender: TObject);
begin
  InsertFull;
end;

procedure Tfr_FmGrade_Selecao.act_D_UmExecute(Sender: TObject);
begin
  Delete;
end;

procedure Tfr_FmGrade_Selecao.act_D_TodoExecute(Sender: TObject);
begin
  DeleteFull;
end;

constructor Tfr_FmGrade_Selecao.Create(AOwner: TComponent);
begin
  inherited;
  List	:= TStringList.Create;
  with List do
  	Capacity	:= 1024;
end;

destructor Tfr_FmGrade_Selecao.Destroy;
begin
  List.Free;
  inherited;
end;

procedure Tfr_FmGrade_Selecao.Open;
begin
	DeleteFull;
	try
    qrySelecao.DisableControls;
    qrySelecao.Close;
	  qrySelecao.Open;
    qrySelecao.EnableControls;


    qrySelecionado.DisableControls;
    qrySelecionado.Close;
	  qrySelecionado.Open;
    qrySelecionado.EnableControls;
	finally
		Filter;
  end;
end;

procedure Tfr_FmGrade_Selecao.Filter;
begin
	with qrySelecao do
  	try
    	DisableControls;
      Filtered	:= False;
      Filtered	:= True;
    finally
    	EnableControls;
    end;

  with qrySelecionado do
    try
    	DisableControls;
      Filtered	:= False;
      Filtered	:= True;
    finally
      EnableControls;
    end;
end;

procedure Tfr_FmGrade_Selecao.qrySelecaoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := List.IndexOf(DataSet[FCampo]) < 0;
end;

procedure Tfr_FmGrade_Selecao.qrySelecionadoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 	Accept := List.IndexOf(DataSet[FCampo]) >= 0;
end;


end.
