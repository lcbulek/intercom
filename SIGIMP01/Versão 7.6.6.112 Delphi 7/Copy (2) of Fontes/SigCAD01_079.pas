unit SigCAD01_079;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, JvExForms,
  JvBaseThumbnail, JvThumbViews;

type
  Tfr_Imagens = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Imagens: TJvThumbView;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Imagens: Tfr_Imagens;

implementation

uses unConnection, SIGCAD01_076;

{$R *.dfm}

procedure Tfr_Imagens.BitBtn1Click(Sender: TObject);
begin
  Imagens.Directory := '';
  Close;
end;

procedure Tfr_Imagens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fr_Imagens := nil;
end;

end.
