unit unAbout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, jpeg;

type
  Tfr_Sobre = class(TForm)
    Panel2: TPanel;
    Image2: TImage;
    Panel1: TPanel;
    Label8: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    Image1: TImage;
    OKButton: TButton;
    ProductName: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     x : Boolean;
    { Public declarations }
  end;

var
  fr_Sobre: Tfr_Sobre;

implementation

uses unConnection;


{$R *.DFM}

procedure Tfr_Sobre.OKButtonClick(Sender: TObject);
begin
   Close;
end;

procedure Tfr_Sobre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   fr_Sobre := nil;
   Action   := caFree;
end;

procedure Tfr_Sobre.FormCreate(Sender: TObject);
	function RetornaMesAno: String;
   begin
      //Result := UpperCase(FormatDateTime('mmm', Date)) + ' / ' + FormatDateTime('yyyy', Date);
     Result := FormatDateTime('yyyy', Date);
   end;
begin
   Caption	:= Application.Name +' - '+ PegaVersaoExe(Application.ExeName);
   ProductName.Caption	:= Caption;
   Label8.Caption  := '© ' + RetornaMesAno + ' by Three Seven Systems ' +#13 +'Fone (41)3327-3543 - Curitiba/PR';
end;

end.


