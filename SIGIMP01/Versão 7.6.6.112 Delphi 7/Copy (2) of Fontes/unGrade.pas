unit unGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnGrid, StdCtrls;

type
  Tfr_Grade = class(TForm)
    fr_FmGrid1: Tfr_FmGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Grade: Tfr_Grade;

implementation

{$R *.dfm}

procedure Tfr_Grade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   fr_Grade	:= nil;
   Action	:= caFree;
end;

procedure Tfr_Grade.FormShow(Sender: TObject);
var
	i: Integer;
begin
{	for i:= 0 to fr_FmGrid1.grdGrid.DataSource.DataSet.FieldCount-1 do
   	if i = 0 then
      begin
      	fr_FmGrid1.grdGrid.DataSource.DataSet.Fields[i].DisplayWidth := Length(fr_FmGrid1.grdGrid.DataSource.DataSet.Fields[i].DisplayLabel);
         if Length(fr_FmGrid1.grdGrid.DataSource.DataSet.Fields[i].DisplayLabel) < 15 then
            fr_FmGrid1.grdGrid.DataSource.DataSet.Fields[i].DisplayWidth := 15;
      end else
   	if Length(fr_FmGrid1.grdGrid.DataSource.DataSet.Fields[i].DisplayLabel) > 20 then
	  		fr_FmGrid1.grdGrid.DataSource.DataSet.Fields[i].DisplayWidth := Length(fr_FmGrid1.grdGrid.DataSource.DataSet.Fields[i].DisplayLabel)
      else fr_FmGrid1.grdGrid.DataSource.DataSet.Fields[i].DisplayWidth := 30;
}
end;

end.
