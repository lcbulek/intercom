unit unGrid;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DB;

type
  Tfr_FmGrid = class(TFrame)
    grdGrid: TDBGrid;
    dtsFmGrid: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
