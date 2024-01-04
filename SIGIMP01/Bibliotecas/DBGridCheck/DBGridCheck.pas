unit DBGridCheck;

interface

uses
  Windows, Classes, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TDBGridCheck = class(TJvDBUltimGrid)
  private
    FBoolFields: TStringList;
    procedure SetBoolFields(const Value: TStringList);
  protected
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState); override;
    procedure CellClick(Column: TColumn); override;
    procedure ColEnter; override; 
    procedure ColExit; override;
    procedure KeyPress(var Key: Char); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property BoolFields: TStringList read FBoolFields write SetBoolFields;
  end;

procedure Register;

implementation

uses DB;

procedure Register;
begin
  RegisterComponents('Jv Data Controls', [TDBGridCheck]);
end;

constructor TDBGridCheck.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FBoolFields := TStringList.Create;
end;

destructor TDBGridCheck.Destroy;
begin
  FBoolFields.Free;
  inherited Destroy;
end;

procedure TDBGridCheck.DrawColumnCell(const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
var
   bRect: TRect;
begin
inherited DrawColumnCell(Rect, DataCol, Column, State);
if (Column.Field.DataType = ftBoolean) or (FBoolFields.IndexOf(Column.Field.FieldName) > -1) then
    begin
    with Canvas do
       begin
       bRect := Rect;
       with bRect do
          begin
          Top := Top + 2;
          Bottom := Bottom - 2;
          Left := Left + 2;
          Right := Right - 2;
          end;
       FillRect(Rect);
       if Column.Field.AsString = 'S' then
           begin
           DrawFrameControl(Handle, bRect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED);
           end
       else
           begin
           if Column.Field.AsString = 'N' then
               DrawFrameControl(Handle, bRect, DFC_BUTTON, DFCS_BUTTONCHECK)
           else
               DrawFrameControl(Handle, bRect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE);
           end;
       end;
    end;
end;

procedure TDBGridCheck.CellClick(Column: TColumn);
begin
if not Column.ReadOnly then
    if (Column.Field.DataType = ftBoolean) or (FBoolFields.IndexOf(Column.Field.FieldName) > -1) then
        begin
        if not (DataSource.DataSet.State in [dsEdit]) then
            DataSource.DataSet.Edit;

        if Column.Field.AsString = 'S' then
            Column.Field.AsString := 'N'
        else
            Column.Field.AsString := 'S';
        end;
inherited CellClick(Column);
end;

procedure TDBGridCheck.ColEnter;
begin
if (SelectedField.DataType = ftBoolean) or (FBoolFields.IndexOf(SelectedField.FieldName) > -1) then
    begin
    //InplaceEditor.Hide;
    Options := Options - [dgEditing{, dgAlwaysShowEditor}];
    //Options := Options - [dgEditing, dgAlwaysShowEditor];
    end;
inherited ColEnter;
end;

procedure TDBGridCheck.ColExit;
begin
inherited ColExit;
if (SelectedField.DataType = ftBoolean) or (FBoolFields.IndexOf(SelectedField.FieldName) > -1) then
    Options := Options + [dgEditing];
//Options := Options + [dgEditing, dgAlwaysShowEditor];
end;

procedure TDBGridCheck.SetBoolFields(const Value: TStringList);
begin
FBoolFields.Assign(Value);
end;

procedure TDBGridCheck.KeyPress(var Key: Char);
begin
if key = #32 then
    CellClick(Columns[SelectedIndex]);
inherited KeyPress(Key);
end;

end.
