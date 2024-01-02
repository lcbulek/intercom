unit unLayoutRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  Trl_LayoutRelatorio = class(TForm)
    qkrPadrao: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    DetailBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    lbUnit: TQRLabel;
    SummaryBand1: TQRBand;
    qkrImage1: TQRImage;
    procedure QRSysData3Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbUnitPrint(sender: TObject; var Value: String);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  protected
    Select_SQL: WideString;
    function Montar_Consulta: Boolean; virtual;
    procedure AguardandoSQL;

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Visualizar_Relatorio; virtual;
    procedure Imprimir_Relatorio; virtual;
  end;

var
  rl_LayoutRelatorio: Trl_LayoutRelatorio;

implementation

uses unConnection;

{$R *.dfm}
procedure Trl_LayoutRelatorio.AguardandoSQL;
begin
  Screen.Cursor := crSQLWait;
end;


procedure Trl_LayoutRelatorio.QRSysData3Print(sender: TObject;
  var Value: String);
begin
	Value := 'Data / Hora :' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Buscar_DateTime) + ' - Página: ' +Value;
end;

procedure Trl_LayoutRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action	:= caFree;
end;

procedure Trl_LayoutRelatorio.lbUnitPrint(sender: TObject;
  var Value: String);
begin
   Value	:= Buscar_Unit(ClassName);
end;

procedure Trl_LayoutRelatorio.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
	TQRImage(FindComponent('qkrImage1')).Picture.LoadFromFile(Buscar_Logo);
  
  if FindComponent('qkrImage2') <> nil then
     TQRImage(FindComponent('qkrImage2')).Picture.LoadFromFile(Buscar_Logo);
end;

procedure Trl_LayoutRelatorio.Imprimir_Relatorio;
begin
  Screen.Cursor := crDefault;
end;

function Trl_LayoutRelatorio.Montar_Consulta: Boolean;
begin
	Result := False;
end;

procedure Trl_LayoutRelatorio.Visualizar_Relatorio;
begin
  Screen.Cursor := crDefault;
end;

end.
