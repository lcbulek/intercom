unit unConnection;

interface

uses
  ShareMem, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Db, DBTables, Menus, ImgList, IBDatabase, IBCustomDataSet, IBQuery,
  IniFiles, ExtCtrls, IBSQL, ScktComp, ActnList, ActnMan,  DBActns, AppEvnts,
  Variants, DateUtils, IBServices, UnType, XPStyleActnCtrls, unAbout, UnAlteraSenha,
  IBStoredProc, Math, JvComponentBase, JvBalloonHint, AniThread;

const
  ctInsert=0;
  ctEdit=1;                                               
  ctDelete=2;                                                            
  ctSelect=3;                                                           
  ctQuebra_Linha=#13;                                                       
  ctMsgValor_Invalido: String = 'Valor inv�lido.';
  ctFireBird_Server1 = 'FireBird Server 1';                                
  ctFireBird_Server2 = 'FireBird Server 2';
                                                                          
type
  TAcoesMenu = (acmNew, acmEdit, acmSearch);

  { tipo usado nas fun��es de formata��o de c�digo dos produtos de fornecedor/cliente }
  TfmtProduto = record
                  fmtProduto : String;
                  fmtLength  : Integer;
                end;                                          
  TProduto = record
               Existe : boolean;                                     
               Cliente : String;                               
               Fornecedor : Integer;                                  
               DenProduto : String;                   
               DenProdutoIng : String;
               Comis_f    : Double;                               
               Comis_c    : Double;
             end;

  TProdutoDet = record
                  Existe : boolean;
                  Ingles : string;
                  Portugues : String;
                  DescriRedPort : String;
                  Ncm : String;
                  NcmDoc : String;
                  Lic : String;
                  Imetro : String;
                  CorNcm : smallint;
                  Un: String;
                  Grupo: String;
                  obsMedidas : String;
                  obsQtdMaster : String;
                  obsPesoMaster: String;
                  obsPesoProduto: String;
                end;

  TdmConnection = class(TDataModule)
    dbSig: TIBDatabase;
    TransSig: TIBTransaction;                                         
    empresa: TIBQuery;
    usuario: TIBQuery;                                  
    usuariologin: TIBStringField;
    usuarionome: TIBStringField;
    usuariosenha: TIBStringField;
    usuarioies_situacao: TIBStringField;
    usuariodat_cadastro: TDateField;
    dsempresa: TDataSource;                                                
    dsusuario: TDataSource;                  
    qryConnect: TIBQuery;
    usuarioies_root: TIBStringField;
    ImageList: TImageList;
    ActionManager: TActionManager;
    acHelp: TAction;
    acSobre: TAction;
    acClose: TAction;
    qryPesquisa: TIBQuery;
    qryBuscaLogo: TIBQuery;
    empresacod_empresa: TSmallintField;
    empresanom_empresa: TIBStringField;
    empresanom_empresa_reduz: TIBStringField;
    empresaies_situacao: TIBStringField;
    empresacnpj: TIBStringField;
    empresainsc_estadual: TIBStringField;                            
    empresarua: TIBStringField;
    empresacompl: TIBStringField;
    empresanumero: TSmallintField;
    empresabairro: TIBStringField;
    empresacep: TIBStringField;
    empresacx_postal: TIBStringField;
    empresanum_fone: TIBStringField;
    empresanum_fax: TIBStringField;
    empresae_mail: TIBStringField;
    empresanum_reg_junta: TIBStringField;
    empresadat_cadastro_junta: TDateField;
    empresadat_fundacao: TDateField;
    empresadat_cadastro: TDateField;                 
    empresacod_cidade: TSmallintField;
    empresaobservacao: TIBStringField;
    empresalocal_logotipo: TIBStringField;
    qryBuscaLogolocal_logotipo: TIBStringField;
    cidade: TIBQuery;                                                  
    cidadecod_cidade: TSmallintField;
    cidadenom_cidade: TIBStringField;
    cidadecod_unidade_federativa: TSmallintField;
    cidadenom_unidade_federativa: TIBStringField;
    qryDateTime: TIBQuery;
    qryDateTimeCURRENT_TIMESTAMP: TDateTimeField;
    acAlterarSenha: TAction;
    cliente: TIBQuery;
    fornecedor: TIBQuery;
    procura_produto: TIBQuery;                                       
    Produto_Det: TIBQuery;
    qryAux: TIBQuery;
    JvBalloonHint: TJvBalloonHint;
    Produto_Detcod_produto: TIBStringField;
    Produto_Detden_produto_det: TMemoField;
    Produto_Detden_produto_detpor: TMemoField;
    Produto_Detncm_cod: TIntegerField;
    Produto_Detpes_unitario: TFloatField;
    Produto_Detdat_cad_peso: TDateField;
    Produto_Detobs_peso_unitario: TIBStringField;
    Produto_Detaltura: TIBBCDField;
    Produto_Detlargura: TIBBCDField;
    Produto_Detprofundidade: TIBBCDField;
    Produto_Detvolume: TIBBCDField;
    Produto_Detarea: TIBBCDField;
    Produto_Detobservacao: TIBStringField;
    Produto_Detdat_cadastro: TDateTimeField;
    Produto_Detdat_cad_dimensoes: TDateField;
    Produto_Detdat_cad_peso1: TDateField;
    Produto_Detdat_cad_master: TDateField;
    Produto_Detobs_caixas: TIBStringField;
    Produto_Detpes_unit_cx: TFloatField;
    Produto_Detsigla_i: TIBStringField;
    Produto_Detncm_lic: TIBStringField;
    Produto_Detcod_cliente: TIBStringField;
    Produto_Detncm_letra: TIBStringField;
    cby_recalc_faturas: TIBStoredProc;
    Produto_Detncm_imetro: TIBStringField;
    Produto_Detqtd_master: TIBBCDField;
    cby_recalc_prodlist: TIBStoredProc;
    cby_recalc_pedidos: TIBStoredProc;
    Produto_Detden_tip_produto: TIBStringField;
    Produto_Detden_tip_produto_ing: TIBStringField;
    spr_atualizar_comissoes: TIBStoredProc;
    usuarioies_tipo: TIBStringField;
    fornecedorcod_fornecedor: TSmallintField;
    fornecedormas_cod_produto: TIBStringField;
    clientecod_cliente: TIBStringField;
    clientemas_cod_produto: TIBStringField;
    clientencm_formato: TIBStringField;
    clientencm_formato_ped: TIBStringField;
    clientencm_formato_fat: TIBStringField;
    clientencm_formato_pkl: TIBStringField;
    clientencm_formato_bol: TIBStringField;
    Produto_Detpes_bruto_cx: TIBBCDField;
    spr_atualizar_li_pedido: TIBStoredProc;
    procedure DataModuleDestroy(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSobreExecute(Sender: TObject);
    procedure acHelpExecute(Sender: TObject);
    procedure qryPesquisaFilterRecord(DataSet: TDataSet;              
      var Accept: Boolean);
    procedure dbSigAfterConnect(Sender: TObject);
    procedure dbSigBeforeDisconnect(Sender: TObject);
    procedure empresaAfterScroll(DataSet: TDataSet);
    procedure empresacnpjGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure acAlterarSenhaExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
     { Private declarations }
  public
    { Public declarations }
  end;

procedure Buscar_Host;                                     
procedure Buscar_Help;                                          
procedure Buscar_Programa;
procedure Exception_Cadastro(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
procedure Exception_Update(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);

function FieldRequired(DataSet: TIBDataSet; Inserir: Boolean = True): Boolean;
function InsertCode: Integer; overload;
function InsertCodes: Integer; overload;
function InsertCode(Nom_Tabela, Nom_Campo: String; Empresa: Boolean = False): Largeint; overload;
function Buscar_Dir: String;

function Buscar_Ini: String;
function Buscar_DateTime: TDateTime;
function DataHoraServidor: TDateTime;
function RetirarLixo(Texto: String): String;
function Busca_Caption(Tela: ShortString): String;
function Buscar_Unit(Tela: ShortString): ShortString;
function Buscar_Logo: String;
function Crypitc(Password : String) : String; stdcall;
function Conectar_FireBird(Server: String = ctFireBird_Server1; Mensagem: Boolean = False): Boolean;
function Desconectar_FireBird: Boolean;
function Permitir_Acesso(Permissao: tpPermissao; Nome_Tela: tpNom_Tela): Boolean;
function Gravar_Log(Value: Integer) : Boolean;
function Check_Conexao(Value: Boolean; Mensagem: Boolean = True): Boolean;
function Pesquisar(Tabela: String; Compl: String = ''): Boolean;
function FormatSecsToHMS(Secs: LongInt): string;
function FullFill(pStr: String; pFLen: Byte; pSymb: Char; Lado: String): String;
function ReplaceText(pTexto: String): String;
function PegaVersaoExe(FileName: string) : String;
function FormataCNPJ(Const pCNPJ: String): String;
function FormataCPF(Const pCPF: String): String;
function DvModulo11(pStr: String ): Char;                            
function DvModulo10(pStr: String ): Char;                             
function DvCGC(pStr: String ): String;
function DvCPF(pStr: String ): String;
function ValidaCGC(pStr: String ): Boolean;                                      
function ValidaCPF(pStr: String ): Boolean;
function ValidaCNPJCPF(pStr: String; ShowExcept: Boolean = True): Boolean;
function FormataCNPJCPF(pStr: String): String;
function VlrExtenso(pvalor: Currency): String;
function ExecutarAcao(Lista: TActionList; Acao: TBasicAction): Boolean;

function FormatarCodigo(f: String; s: String): String;
function TamanhoMascara(f: String):Integer;
function FmtProdutoCliente(Cliente, Produto : String): TfmtProduto;
function FmtProdutoFornecedor(Fornecedor: Integer; Produto : String): TfmtProduto;
function SemFmtProduto(Cliente, Produto: String): String;
function FormatarNcm(NcmCod: Integer; Cliente: String; Doc: char): String;
function LetraNcm(Ncm: String): String;

function InserirCod(Nom_Tabela, Nom_Campo: String; Empresa: Boolean): Largeint;
procedure SearchArquive(BasePath: String; List: TStringList; ExtFile: String = '.*');
function RunPrograma(Programa: String): Boolean;
function UsuarioLoginDate(): String;
procedure RecalcularPedidos(CodProduto: String);
procedure RecalcularFaturas(CodProduto: String);
procedure RecalcularProdList(CodProduto: String);
procedure AtualizarComissoes(CodProduto: String);
procedure AtualizarLI(CodProduto: String);
function Arredonda(Valor: Real; Casas : Integer; Mode: TFPURoundingMode = rmDown): Double;
function ProcurarProduto(CodProduto: String; CodCliente: String; CodFornecedor: Integer): Tproduto;
function ProdutoExiste(CodProduto: String): TProduto;
function ProdutoDet(CodProduto: String; CodCliente: String; CodFornecedor: Integer; Doc: char = 'D'): TProdutoDet;
function ProcuraCliente(CodCliente: String): boolean;
function ProcuraFornecedor(NomReduz : String): Integer;
function GetResultInspecao(r: String): String;
function SetResultInspecao(r: String): String;

{ Fun��es para manipula��o de Bits }
function IntToBin(Value: Int64;Size: Integer): String;
function GetBit(Value: Int64; Bit: byte): SmallInt;
function SetBit(Value: Int64; Bit: byte): LongInt;
function ClrBit(Value: Int64; Bit: byte): LongInt;
function TogBit(Value: Int64; Bit: byte): LongInt;

function TempoDecorrido(Start: TDateTime): String;

var
  dmConnection: TdmConnection;
  nr_ord:Integer;

  vgCod_Empresa: tpCod_Empresa;
  vgLogin: tpLogin='';
  vgTipo: tpTipo='';
  vgSenha: TpSenha='--';
  vgCod_Programa: TpPrograma='--';
  vgHost: TpHost='00';
  vgServer:string='';
  vFilPesquisa: array [0..3] of String;
  vg_base_atual: Smallint;// 0 = Base atual e 1 = Base historico
  vgSerie : String ; { N�mero de S�rie Default para Notas Fiscais de Sa�da }
  { variaveis para o progress bar }
  Ani : TAnimationThread;
  Rect : TRect;

implementation

{$R *.dfm}

function TempoDecorrido(Start: TDateTime): String;
begin
  Result :=  IntToStr(MilliSecondsBetween(Start, Now));
end;


function IntToBin(Value: Int64;Size: Integer): String;
var
  i: Integer;
begin
Result:='';
for i:=Size downto 0 do
  begin
  if Value and (1 shl i)<>0 then          
  begin
  Result:=Result+'1';
  end
  else
  begin
  Result:=Result+'0';
  end;                                                         
  end;
end;

function GetBit(Value: Int64; Bit: byte): SmallInt;
begin
  if Value and (1 shl Bit) <> 0 then Result := 1
                                else Result := 0;
end;

function SetBit(Value: Int64; Bit: byte): LongInt;
begin
  Result := Value or (1 shl Bit);
end;

function ClrBit(Value: Int64; Bit: byte): LongInt;
begin
  Result := Value or (1 shl Bit);
  Result := Result xor (1 shl Bit);
end;

function TogBit(Value: Int64; Bit: byte): LongInt;
begin
  Result := Result xor (1 shl Bit);
end;

function Arredonda(Valor: Real; Casas : Integer; Mode: TFPURoundingMode = rmDown): Double;
var
  Modo: TFPURoundingMode;
begin
  Modo := GetRoundMode;
  try
   SetRoundMode(Mode);
   Result := SimpleRoundTo(Valor, Casas );
  finally
   SetRoundMode(Modo);
  end;
end;


function FormatSecsToHMS(Secs: LongInt): string;
var
	Hrs, Min: Word;
begin
	Hrs := Secs div 3600;
	Secs := Secs mod 3600;
	Min := Secs div 60;
	Secs := Secs mod 60;
	Result := FormatDateTime('hh:nn:ss', EncodeTime(Hrs, Min, Secs, 0));
end;


procedure Buscar_Help;
begin
	Application.HelpFile := ChangeFileExt(ExtractFileName(Application.ExeName),'.hlp');
end;

procedure Buscar_Programa;
begin
   vgCod_Programa   := Application.Name;                       
end;

procedure Exception_Cadastro(DataSet: TDataSet;          
  E: EDatabaseError; var Action: TDataAction);
begin                                                              
	try
   	if DataSet.State = dsInsert then
	   	raise Exception.Create('Aten��o. Problemas na inser��o do registro. Verifique novamente os valores.')
	   else
   	if DataSet.State = dsEdit then
	   	raise Exception.Create('Aten��o. Problemas na altera��o do registro. Verifique novamente os valores...')
   finally
   	Action := daAbort;                    
   end;
end;

procedure Exception_Update(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
	try
   	if UpdateKind = ukDelete then
   		raise Exception.Create('Aten��o. Problemas na exclus�o do registro. Opera��o cancelada.')
      else
      if UpdateKind = ukInsert then
   		raise Exception.Create('Aten��o. Problemas na inser��o do registro. Opera��o cancelada.')
      else
	   if UpdateKind = ukModify then
         raise Exception.Create('Aten��o. Problemas na altera��o do registro. Opera��o cancelada.');
	finally
      UpdateAction := uaSkip;
	end;
end;                                                        

function Buscar_DateTime: TDateTime;
begin                                               
  Result	:= Now;
  with dmConnection do
	  if dbSig.Connected then
			with qryDateTime do
      begin
      	Close;
        Open;
        Result := qryDateTimeCURRENT_TIMESTAMP.AsDateTime;
		  end;
end;

function DataHoraServidor: TDateTime;
begin
  Result	:= Now;
  with dmConnection do
	  if dbSig.Connected then
			with qryDateTime do
      begin
      	Close;
        Open;
        Result := qryDateTimeCURRENT_TIMESTAMP.AsDateTime;
		  end;
end;



function RetirarLixo(Texto: String): String;
begin
	Result := StringReplace(Texto,  '(','', [rfReplaceAll]);
  Result := StringReplace(Result, ')','', [rfReplaceAll]);
  Result := StringReplace(Result, '\','', [rfReplaceAll]);
	Result := StringReplace(Result, '.','', [rfReplaceAll]);
  Result := StringReplace(Result, '-','', [rfReplaceAll]);
  Result := StringReplace(Result, '/','', [rfReplaceAll]);
  Result := StringReplace(Result, ' ','', [rfReplaceAll]);
end;

function Busca_Caption(Tela: ShortString): String;
begin
	with dmConnection, qryConnect, SQL do
  try
   	Close;
    Clear;                                                  
		Add(' select "den_tela" ');
		Add(' from "tela" ');
		Add(' where ');                                           
		Add('     "nom_tela" = :nom_tela ');
    ParamByName('nom_tela').AsString	:= Tela;                
    Open;                                                    
    Result := FieldByName('den_tela').AsString;
  finally
  	Close;
  end;
end;
                                                         
function Buscar_Unit(Tela: ShortString): ShortString;
var
	LIndex: Integer;
begin
	for LIndex := 0 to Application.ComponentCount -1 do
   	if Application.Components[LIndex] is TForm then
			if Application.Components[LIndex].ClassName = Tela then
      begin
      	Result := UpperCase(Application.Name + '_'+ TForm(Application.Components[LIndex]).HelpKeyword);
        Break;
      end;
end;

function Crypitc(Password : String) : String; stdcall;
var
  vlIndice : Integer;
begin
  Result := Password;
  for vlIndice := 1 to Length(Password) do
     Result[vlIndice] := Chr(not Ord(Password[vlIndice]));
end;

function Buscar_Dir: String;
	procedure Check_Dir(Dir : String);
  begin
    if (Result = '') and (Dir <> '') and SysUtils.DirectoryExists(Dir) then Result := Dir +'\';
  end;
var
	LTemp: String;
begin
  LTemp	:= GetEnvironmentVariable('USERPROFILE');
  if Length(LTemp) = 0 then
  	LTemp	:= GetEnvironmentVariable('TEMP');

  if Length(LTemp) = 0 then
  try
  	Abort;
  finally
  	MessageDlg('Configure uma vari�vel de sistema para um diret�rio tempor�rio', mtError, [mbCancel], 0);
  end;

  Check_Dir(LTemp);
end;

function Buscar_Ini: String;
const
	ctIni: ShortString = '\SIG.ini';
                                                        
	procedure Check_Dir(Dir : String);
  begin
    if (Result = '') and (Dir <> '') and SysUtils.DirectoryExists(Dir) then Result := Dir +ctIni;
  end;
var
	LTemp: String;
begin
  LTemp	:= GetEnvironmentVariable('USERPROFILE');
  if Length(LTemp) = 0 then
  	LTemp	:= GetEnvironmentVariable('TEMP');

  if Length(LTemp) = 0 then
  try
  	Abort;
  finally
  	MessageDlg('Configure uma vari�vel de sistema para um diret�rio tempor�rio', mtError, [mbCancel], 0);
  end;

  Check_Dir(LTemp);
end;

function Conectar_FireBird(Server: String; Mensagem: Boolean): Boolean;
var
	DBParams: TIniFile;
  DBIni: String;
  DBFileName: String;
begin
  { 15.03.13 - Retirada a criptografia do arquivo sig.ini }

	Buscar_Host;
  Buscar_Help;
  Buscar_Programa;

  if Length(vgLogin) = 0 then
  begin
		vgLogin  := LowerCase(ParamStr(1));
   	vgSenha  := ParamStr(2);
  end;
  if Length(ParamStr(3)) > 0 then vgCod_Empresa	:= StrToInt(ParamStr(3));

   Result	:= False;
   if Length(vgLogin) = 0 then Exit;

   with dmConnection do
   begin
      with dbSig do
      try
      	Connected:= False;

         DBIni 		:= Buscar_Ini;
         DBParams	:= TIniFile.Create(DBIni);
         with DBParams do
         try
         	if (not FileExists(DBIni)) or (not SectionExists(Server)) then
            begin
               WriteString(Server, 'server', 'localhost:');
               WriteString(Server, 'path', 'C:\SIG\Base de dados\dbSIG.fdb');
               WriteString(Server, 'user_name', 'sony');
               WriteString(Server, 'password',  'sonycdrw');
               WriteString(Server, 'lc_ctype', 'ISO8859_1');
            end;

            if not ValueExists(Server, 'user_name') then
            begin
            	WriteString(Server, 'user_name', 'sony');
              WriteString(Server, 'password',  'sonycdrw');
            end;

            DBFileName	:= ReadString(Server, 'path', DatabaseName);

            WriteString(Server, 'path', DBFileName);

            if SectionExists(Server) then
            begin
            	 DatabaseName := ReadString(Server, 'server', 'localhost:');
               DatabaseName := DatabaseName + ReadString(Server, 'path', DatabaseName);
               vgServer     := ReadString(Server, 'server', 'system:');
               with Params do
               begin
                  Clear;
                  Add('lc_ctype='+ReadString(Server, 'lc_ctype', 'ISO8859_1'));
                  Add('user_name='+ReadString(Server, 'user_name', 'sony'));
                  Add('password='+ReadString(Server, 'password', 'sonycdrw'));
               end;
            end;
         finally
            Free;
         end;
	      Connected := True;
      finally
         Result := Connected;
      end;

      if Result then
	      with usuario do
         begin
            Close;
            SQL.Clear;
            SQL.Add(' select * ');
            SQL.Add(' from "usuario" ');
            SQL.Add(' where ');
            SQL.Add('     "login" = :login ');
            SQL.Add(' and "senha" = :senha ');
            ParamByName('login').AsString := vgLogin;
            ParamByName('senha').AsString := Crypitc(vgSenha);
            Open;
            vgTipo := FieldByName('ies_tipo').Value;
            Result := not IsEmpty;
         end;      

   	if Result then
         with empresa do
         begin
            Close;
            SQL.Clear;
            SQL.Add(' select a.* ');
            SQL.Add(' from "empresa" a, "usuario_emp" b ');
            SQL.Add(' where ');
            SQL.Add('     b."cod_empresa" = a."cod_empresa" ');
            SQL.Add(' and b."login"       = :login          ');
            if not (vgCod_Empresa = 0) then
            begin
               SQL.Add('and  a."cod_empresa" = :cod_empresa    ');
               ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
            end;
            SQL.Add(' order by a."cod_empresa" ' );
            ParamByName('login').AsString := vgLogin;
            Open;
            Result := not IsEmpty;
         end;

	   if Result then
   	   if not (vgCod_Empresa = 0) then
      		Result := Check_Conexao(True, Mensagem);
   end;
end;

procedure Buscar_Host;
var
  Host: DWord;
  CodHost: String;
begin
  Host := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(CodHost, Host);
  Windows.GetComputerName(PChar(CodHost), Host);
  vgHost := String(PChar(CodHost));
end;

function Buscar_Logo: String;
begin
   with dmConnection, qryBuscaLogo do
   	try
         Close;
         ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
         Open;
         if not IsEmpty then
         begin
	         Result := qryBuscaLogolocal_logotipo.AsString;
            if not FileExists(Result) then
            	MessageDlg('Logotipo n�o encontrado...', mtWarning, [mbOk], 0);
         end;
      finally
      	Close;
      end;
end;

function Desconectar_FireBird: Boolean;
begin
	Result := False;
   with dmConnection, dbSig do
   	Connected	:= Result = not Check_Conexao(False);
end;

function Permitir_Acesso(Permissao: tpPermissao; Nome_Tela: tpNom_Tela): Boolean;
	function BuscaOp: String;
   begin
      case Permissao of
      ctInsert:	Result := 'Inserir';
      ctEdit:		Result := 'Alterar';
      ctDelete:	Result := 'Excluir';
      ctSelect:	Result := 'Consultar';                      
      end;
   end;
begin
	Result := False;
  if Length(Nome_Tela) = 0 then
  	Exit;

	with dmConnection, qryConnect, SQL do
  try
   	Close;
    Clear;
		Add(' select a.* ');
		Add(' from "usuario" a ');
		Add(' where ');
		Add('     "login"         = :login ');
		Add(' and "ies_situacao" != '+QuotedStr('I'));
    ParamByName('login').AsString	:= vgLogin;
    Open;
    Result := not IsEmpty;
    if not Result then
    	Exit
    else
    if FieldByName('ies_root').AsString = 'S' then
    	Exit;

    Close;
    Clear;
		Add(' select f."ies_insert", f."ies_edit", f."ies_delete", f."ies_select" ');
		Add(' from "vwsub_modulo" c');
		Add('      join "vwusuario_sub_modulo" d on d."cod_sub_modulo" = c."cod_sub_modulo" ');
		Add('      join "vwusuario" e on e."login" = d."login" ');
    Add('                        and e."login" = :login ');
    ParamByName('login').AsString	   := vgLogin;
		Add('      join ("usuario_tela" f ');
		Add('      join "vwtela" g on g."cod_sub_modulo" = f."cod_sub_modulo" ');
		Add('                     and g."nom_tela"       = f."nom_tela" ');
    Add('                     and g."nom_tela"       = :nom_tela ) ');
		Add('        on f."cod_sub_modulo" = d."cod_sub_modulo" ');
		Add('       and f."login"          = d."login" ');
    ParamByName('nom_tela').AsString	:= UpperCase(Nome_Tela);
    Open;
    Result := not IsEmpty;
    if Result then
    	case Permissao of
      ctInsert: Result := (FieldByName('ies_insert').asString	= 'S');
      ctEdit:	 	Result := (FieldByName('ies_edit').asString	= 'S');
      ctDelete: Result := (FieldByName('ies_delete').asString	= 'S');
      ctSelect:	Result := (FieldByName('ies_select').asString	= 'S');
    	end;

     //if not Result then Result := True; // Comentar esta linha, para ativar a resti��o de usu�rio as telas

	finally
      if not Result then
      	MessageDlg('Login : ' + vgLogin + ' sem permiss�o para (' + BuscaOp + ') na tela - ' + UpperCase(Nome_Tela), mtError, [mbCancel], 0);
   end;
end;

function Gravar_Log(Value: Integer) : Boolean;
var
	LSQL: String;
begin
	case Value of
  ctInsert:	LSQL	:=	' insert into "usuario_log" '+
                      ' ("cod_empresa", "login", "nom_programa", "nom_estacao", "dat_conexao" ) '+
                      ' values '+
                      ' (:cod_empresa, :login, :nom_programa, :nom_estacao, current_timestamp ) ';
  ctDelete:	LSQL	:=	' delete from "usuario_log" '+
                      ' where '+
                      '     "cod_empresa"  = :cod_empresa '+
                      ' and "login"   		 = :login '+
                      ' and "nom_programa" = :nom_programa '+
                      ' and "nom_estacao"  = :nom_estacao ';
  ctEdit:		LSQL	:=	' update "usuario_log" set "dat_conexao" = current_timestamp '+
                      ' where '+
                      '     "cod_empresa"  = :cod_empresa '+
                      ' and "login"   		 = :login '+
                      ' and "nom_programa" = :nom_programa '+
                      ' and "nom_estacao"  = :nom_estacao ';
  end;

	with dmConnection, qryConnect do
  try
    Close;
    SQL.Clear;
    SQL.Add(LSQL);
    ParamByName('cod_empresa').AsInteger	:= vgCod_Empresa;
    ParamByName('login').AsString					:= vgLogin;
    ParamByName('nom_programa').AsString	:= vgCod_Programa;
    ParamByName('nom_estacao').AsString		:= vgHost;
    ExecSQL;
  finally
  	Transaction.CommitRetaining;
    Result := True;
  end;
end;

function Check_Conexao(Value: Boolean; Mensagem: Boolean) : Boolean;
begin
	Result := False;
  if Value then
		with dmConnection, qryConnect, SQL do
    begin
    	Close;
      Clear;
      Add(' select ');
      Add(' 	"cod_empresa" ');
      Add(' 	,"login" ');
      Add(' 	,"nom_programa" ');
      Add(' 	,upper("nom_estacao") "nom_estacao" ');
      Add(' 	,"dat_conexao" ');
      Add(' from "usuario_log" ');
      Add(' where ');
      Add('     "cod_empresa"         = :cod_empresa ');
      Add(' and upper("login")        = upper(:login) ');
      Add(' and upper("nom_programa") = upper(:nom_programa) ');
      ParamByName('cod_empresa').AsInteger	:= vgCod_Empresa;
      ParamByName('login').AsString					:= vgLogin;
      ParamByName('nom_programa').AsString	:= vgCod_Programa;
      Open;
      if not IsEmpty then
      begin
        if Mensagem then
        begin
	        if MessageDlg('Conex�o j� existente para este login na esta��o '+ FieldByName('nom_estacao').AsString +' . Deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    	    	Result := Gravar_Log(CtEdit)
	        else Gravar_Log(CtDelete);
        end else
        	Result := Gravar_Log(CtEdit);

      end else Result := Gravar_Log(CtInsert);
  	end
	else Result := Gravar_Log(CtDelete);
end;

function Pesquisar(Tabela: String; Compl: String): Boolean;
var
   SQLTabela: WideString;
begin
	Compl := UpperCase(Compl);

   if Tabela = 'sistema' then
      SQLTabela :=   ' select "cod_sistema" campo1 , "nom_sistema" campo2 '+
                     ' from "sistema" '+
                     ' order by 2 '
   else
   if Tabela = 'modulo' then
      SQLTabela :=   ' select "cod_modulo" campo1 , "nom_modulo" campo2 '+
                     ' from "modulo" '+
                     ' order by 2 '
   else
   if Tabela = 'sub_modulo' then
      SQLTabela :=   ' select "cod_sub_modulo" campo1 , "nom_sub_modulo" campo2 '+
                     ' from "sub_modulo" '+
                     ' where '+
                     '     "ies_situacao" = '+QuotedStr('A')+
                     ' order by 2 '
   else
   if Tabela = 'tela' then
      SQLTabela :=   ' select "nom_tela" campo1 , "den_tela" campo2 '+
                     ' from "tela" '+
                     ' where '+
                     '     "ies_situacao" = '+QuotedStr('A')+
                     ' order by 2 '
   else
   if Tabela = 'usuario' then
      SQLTabela :=   ' select "login" campo1 , "nome" campo2 '+
                     ' from "usuario" '+
                     ' where '+
                     '     "ies_situacao" = '+QuotedStr('A')+
                     ' order by 1 '
   else
   if Tabela = 'usuario_sub_modulo' then
      SQLTabela :=   ' select a."login" campo1 , b."nom_sub_modulo" campo2 '+
                     ' from "usuario_sub_modulo" a '+
                     '      join "sub_modulo" b on b."cod_sub_modulo" = a."cod_sub_modulo" '+
                     ' where '+
                     '     a."ies_situacao" = '+QuotedStr('A')+
                     ' order by 2 '
   else
   if Tabela = 'usuario_tela' then
      SQLTabela :=   ' select a."login" campo1 , b."den_tela" campo2 '+
                     ' from "usuario_tela" a '+
                     '      join "tela" b on b."nom_tela" = a."nom_tela" '+
                     ' order by 2 '
   else
   if Tabela = 'banco' then
      SQLTabela :=   ' select "cod_banco" campo1 , "nom_banco" campo2 '+
                     ' from "banco" '+
                     ' where    "cod_fornecedor" = '+QuotedStr(Compl) +
                     ' order by "ies_default" desc '
   else
   if Tabela = 'portos' then
      SQLTabela :=   ' select "cod_porto" campo1 , "den_porto" campo2 '+
                     ' from "portos" '+
                     ' order by 2 '
   else
   if Tabela = 'cidade' then
      SQLTabela :=   ' select a."cod_cidade" campo1, a."nom_cidade" || '' - '' || b."sigla" campo2 '+
                     ' from "cidade" a '+
                     '      join "unidade_federativa" b on b."cod_unidade_federativa" = a."cod_unidade_federativa" '+
                     ' order by 2 '
       else
   if Tabela = 'cliente' then
      SQLTabela :=   ' select "cod_cliente" campo1 , "nom_cliente" campo2 '+
                     ' from "cliente" '+
                     ' where "cod_cliente"  in (select "cod_cliente"      '+
                     '                            from "usuario_cliente"  '+
                     '                           where "login" = ' + QuotedStr(vgLogin) + ')'+
                     ' and '+
                     '     "ies_situacao" = '+QuotedStr('A')+
                     ' order by 2 '
   else
   if Tabela = 'cliente_contato' then
   begin
      SQLTabela :=   ' select "cod_contato" campo1 , "nom_contato" campo2 '+
                     ' from "cliente_contato" '+
                     ' where '+
                     '     "ies_situacao" = '+QuotedStr('A');
                     
      if Length(Compl) > 0 then
      	SQLTabela :=   SQLTabela + ' and "cod_cliente" = '+QuotedStr(Compl);

      SQLTabela := SQLTabela + ' order by 2 ';
   end else
   if Tabela = 'fornecedor_contato' then
   begin
      SQLTabela :=   ' select "cod_contato" campo1 , "nom_contato" campo2 '+
                     ' from "fornecedor_contato" '+
                     ' where '+
                     '     "cod_fornecedor" = '+QuotedStr(Compl);

      SQLTabela := SQLTabela + ' order by 2 ';
   end else
   if Tabela = 'conta_corrente' then
      SQLTabela :=   ' select "den_contacc" campo1 , "num_contacc" campo2 '+
                     ' from "conta_corrente" '+
                     ' where '+
                     '     "ies_situacao" = '+QuotedStr('A')+
                     ' order by 2 '
   else
   if Tabela = 'empresa' then
      SQLTabela :=   ' select "cod_empresa" campo1 , "nom_empresa" campo2 '+
                     ' from "empresa" '+
                     ' where '+
                     '     "ies_situacao" = '+QuotedStr('A')+
                     ' order by 2 '
   else
   if Tabela = 'filial' then
      SQLTabela :=   ' select "cod_empresa" campo1 , "nom_empresa" campo2 '+
                     ' from "empresa" a '+
                     '      join "filial" b on b."cod_filial" = a."cod_empresa" '+
                     ' where '+
                     '     a."ies_situacao" = '+QuotedStr('A')+
                     ' order by 2 '
   else
   if Tabela = 'fornecedor' then
                    { Fornecedores dos Clientes que o Usu�rio tem acesso }
      SQLTabela :=  'select a."cod_fornecedor" campo1 , a."raz_social" campo2 ' +
                    '  from "fornecedor" a '+
                    ' where a."cod_fornecedor"  in (select "cod_fornecedor" '+
                    '                                 from "usuario_fornecedor" '+
                    '                                where "login" = '+ QuotedStr(vgLogin) + ')'+
                    '   and a."ies_situacao" = ' + QuotedStr('A')+
                    ' order by 2 '

   else
   if Tabela = 'transportadora' then
      SQLTabela :=   ' select "cod_transportadora" campo1 , "nom_transportadora" campo2 '+
                     ' from "transportadora" '+
                     ' where '+
                     '     "ies_situacao" != ''C'' '+
                     ' order by 2 '

   else
   if Tabela = 'unidade_federativa' then
      SQLTabela :=   ' select "cod_unidade_federativa" campo1 , "nom_unidade_federativa" campo2, "sigla" campo3 '+
                     ' from "unidade_federativa" '+
                     ' order by 2 '
   else
   if Tabela = 'medida' then
      SQLTabela :=   ' select "cod_uni_medida" campo1 , "den_uni_medida" || '' - '' || "sigla" campo2 '+
                     ' from "medida" '+
                     ' order by 2 '
   else
   if Tabela = 'moeda' then
      SQLTabela :=   ' select "codigo" campo1 , "den_moeda" campo2, "cod_moeda" campo3 '+
                     ' from "moeda" '+
                     ' order by 1 '
   else
   if Tabela = 'pagamento' then
      SQLTabela :=   ' select "cod_pagamento" campo1 , "den_pagamento" campo2 '+
                     ' from "pagamento" '+
                     ' order by 2 '
   else
   if Tabela = 'pais' then
      SQLTabela :=   ' select "cod_pais" campo1 , "nom_pais" campo2 '+
                     ' from "pais" '+
                     ' order by 2 '
   else
   if Tabela = 'lista' then
      SQLTabela :=   ' select "num_lista" campo1 , "den_lista" campo2 '+
                     ' from "lista" '+
                     ' where '+
                     '     "cod_empresa"  = ' +IntToStr(vgCod_Empresa) +
                     ' and "ies_situacao" = '+QuotedStr('A')+
                     ' and current_timestamp between "dat_vigencia_inicio" '+
                     '                           and "dat_vigencia_termino" '+
                     ' order by 2 '
   else
   if Tabela = 'produto' then
         SQLTabela :=   ' select "cod_produto" campo1 , "den_produto" campo2 '+
                     ' from "produto" ' +
                     ' where ' +
                     '     "cod_empresa"  = ' +IntToStr(vgCod_Empresa) +
										 ' and "ies_situacao" = '+QuotedStr('A')+

                    ' order by 2 '
   else
   if Tabela = 'tipo_cliente' then
      SQLTabela :=   ' select "cod_tip_cliente" campo1 , "den_tip_cliente" campo2 '+
                     ' from "tipo_cliente" '+
                     ' order by 2 '                                           
   else
   if Tabela = 'tipo_fornecedor' then                                                          
      SQLTabela :=   ' select "cod_tip_fornecedor" campo1 , "den_tip_fornecedor" campo2 '+
                     ' from "tipo_fornecedor" '+
                     ' order by 2 '
   else
   if Tabela = 'tipo_produto' then
      SQLTabela :=   ' select "cod_tip_produto" campo1 , "den_tip_produto" campo2 '+
                     ' from "tipo_produto" '+
                     ' order by 2 '
   else
   if Tabela = 'grupo_produto' then
      SQLTabela :=   ' select "cod_gru_produto" campo1 , "den_gru_produto" campo2 '+
                     ' from "grupo_produto" '+
                     ' order by 2 '
   else
   if Tabela = 'tipo_embarque' then
      SQLTabela :=   ' select "cod_tip_embarque" campo1 , "den_tip_embarque" campo2 '+
                     ' from "tipo_embarque" '+
                     ' order by 2 '
   else
   if Tabela = 'armadores' then
      SQLTabela :=   ' select "cod_armador" campo1 , "den_armador" campo2 '+
                     ' from "armadores" '+
                     ' order by 2 '
   else
   if Tabela = 'despachante' then
      SQLTabela :=   ' select "cod_despachante" campo1 , "den_despachante" campo2 '+
                     ' from "despachante" '+
                     ' order by 2 '
   else

   if Tabela = 'vendedor' then
      SQLTabela :=   ' select "cod_vendedor" campo1 , "nom_vendedor" campo2 '+
                     ' from "vendedor" '+
                     ' where '+
                     '     "ies_situacao" = '+QuotedStr('A')+                   
                     ' order by 2 '
   else
   if Tabela = 'idiomas' then
      SQLTabela :=   ' select a."cod_idioma" "campo1", a."den_idioma" "campo2"   '+
                     ' from "idiomas" a                                          '
   else
   if Tabela = 'tipo_embalagem' then
      SQLTabela :=   'select a."cod_tip_produto" "campo1", b."den_tip_produto" "campo2" '+
                     '  from "tipo_embalagem" a, "tipo_produto" b                       '+
                     ' where b."cod_tip_produto" = a."cod_tip_produto"'
   else
   if Tabela = 'embalagem' then
      SQLTabela := 'select e."cod_produto_emb" "campo1", p."den_produto" "campo2"  '+
                   '  from "embalagem" e, "produto" p                              '+
                   ' where e."cod_empresa" = ' +IntToStr(vgCod_Empresa)+
                   '   and p."cod_produto" = e."cod_produto_emb"                   '+
                   ' order by 2'

   else
   if Tabela = 'condicao_venda' then
      SQLTabela :=' select "cod_tip_condicao" campo1, "den_tip_condicao" campo2'+
                  ' from "condicao_venda"' +
                  ' order by "cod_tip_condicao"'
   else
   if Tabela = 'embalagem_componente' then
      SQLTabela := ' select "cod_componente" campo1, "den_componente" campo2'+
                   ' from "embalagem_componente"' +
                   ' order by "den_componente"'
   else
   if Tabela = 'embalagem_situacao' then
   begin
      SQLTabela := 'select c."den_gru_embalagem" "campo1", b."den_componente" "campo2"               '+
                   '  from "embalagem_situacao" a, "embalagem_componente" b, "embalagem_grupo" c     '+
                   ' where a."cod_empresa" = ' + IntToStr(vgCod_Empresa)+
                   '   and b."cod_componente" = a."cod_componente"'+
                   '   and c."cod_gru_embalagem" = b."cod_gru_embalagem"';
		if Length(Compl) > 0 then
        SQLTabela := SQLTabela + '   and a."cod_produto" = ' + QuotedStr(Trim(Compl));

        SQLTabela := SQLTabela + ' order by c."den_gru_embalagem", b."den_componente"';
   end
   else
   if Tabela = 'embalagem_grupo' then
   begin
      SQLTabela := 'select "cod_gru_embalagem" "campo1", "den_gru_embalagem" "campo2" ' +
                   '  from "embalagem_grupo"                                          ' +
                   ' order by 2                                                       ';

   end
   else
   if Tabela = 'adicional_desconto' then
   begin
      SQLTabela := 'select "num_sequencia" "campo1", "cod_cliente" "campo2"  '+
                   '  from "adicional_desconto"                              '+
                   ' where "cod_empresa" = ' + IntToStr(vgCod_Empresa)
   end
   else
   if Tabela = 'ncm' then
        SQLTabela :=   ' select "ncm_cod" campo1 '+
                       ' from "ncm" '+
                       ' where "cod_empresa" = ' + IntToStr(vgCod_Empresa)+
                       ' order by 1 '
   else
   if Tabela = 'agentes' then
        SQLTabela :=   ' select "nome" campo1, "descricao" campo2 '+
                       ' from "agentes" '+
                       ' order by 1 '
   else
   if Tabela = 'fabricantes' then
        SQLTabela :=   ' select "nome" campo1, "descricao" campo2 '+
                       ' from "fabricantes" '+
                       ' order by 1 '
   else
   if Tabela = 'containers' then
      SQLTabela :=   ' select "cod_container" campo1, "den_container" campo2 '+
                     ' from "containers" '+
                     ' order by 1 '
   else if Tabela = 'cliente_filial' then
   begin
      SQLTabela :=   ' select "seq_filial" campo1 , "nom_filial" campo2 '+
                     ' from "cliente_filial" '+
                     ' where '+
                     '     "cod_cliente" = '+QuotedStr(Compl);

      SQLTabela := SQLTabela + ' order by 2 ';
   end;

   with dmConnection, qryPesquisa do
   begin
      Close;                                                  
      SQL.Clear;
      SQL.Text := SQLTabela;
      Open;
      Result := not IsEmpty;
   end;
end;

function FullFill(pStr: String; pFLen: Byte; pSymb: Char; Lado: String): String;
var
	lStr: String;
 	lIdx: Byte;
begin
	lStr := pStr;
	if Length(lStr) >= pFLen then
  	begin
  		Result := lStr;
	  	Exit;
   end;

	for lIdx := Length(lStr) to pFLen do
      if Lado = 'E' then                            
     		lStr := pSymb +lStr
      else lStr := lStr + pSymb;

	Result := lStr;
end;

function ReplaceText(pTexto: String): String;
var
   lIdx,lPos : Smallint;
begin
   if Length(pTexto) = 0 then Exit;
   lPos	:= -1;
   if pTexto[1] = ',' then pTexto := Copy(pTexto, 2, Length(pTexto));
   if pTexto[Length(pTexto)] = ',' then
   	pTexto := Copy(pTexto, 1, Length(pTexto)-1);
   for lIdx := 0 to Length(pTexto) do
      if (pTexto[lIdx] = ',') or (pTexto[lIdx] = ' ') or (pTexto[lIdx] = '#') then
      begin
         Result	:= Result + QuotedStr(Copy(pTexto, lPos, lIdx - ABS(lPos))) +',';
         lPos		:= lIdx +1;
      end else
      if lIdx = Length(pTexto) then
         Result	:= Result + QuotedStr(Copy(pTexto, lPos, lIdx));

   if Length(Result) = 0 then Result	:= pTexto;
end;

function PegaVersaoExe(FileName: string) : String;
var
  Info: Pointer;
  InfoSize: DWORD;
  FileInfo: PVSFixedFileInfo;
  FileInfoSize: DWORD;
  Tmp: DWORD;
begin
  Result 	:= '';
  InfoSize	:= GetFileVersionInfoSize(PChar(FileName), Tmp);
  if InfoSize = 0 then Exit;

  GetMem(Info, InfoSize);
  try
    GetFileVersionInfo(PChar(FileName), 0, InfoSize, Info);
    VerQueryValue(Info, '\', Pointer(FileInfo), FileInfoSize);

    Result := IntToStr(FileInfo.dwFileVersionMS shr 16) + '.' +
              IntToStr(FileInfo.dwFileVersionMS and $FFFF) + '.' +
              IntToStr(FileInfo.dwFileVersionLS shr 16) + '.' +
              IntToStr(FileInfo.dwFileVersionLS and $FFFF);
  finally
    FreeMem(Info, FileInfoSize);
  end;
end;

function FormataCNPJ(Const pCNPJ: String): String;
var
  lIdx : Integer;
begin
	Result := '';
  	for lIdx := 1 to Length(pCNPJ) do
   	if pCNPJ[lIdx] in ['0'..'9'] then
	      if not (pCNPJ[lIdx] = '.') and
         	not (pCNPJ[lIdx] = '/') and
           not (pCNPJ[lIdx] = '-') then
      	Result := Result + pCNPJ[lIdx];

  	if not (Length(Result) = 14) then
   	raise Exception.Create('CNPJ inv�lido.')
  	else
   	Result	:=	Copy(Result, 01, 02) + '.' +
      		 	   Copy(Result, 03, 03) + '.' +
      				Copy(Result, 06, 03) + '/' +
                 Copy(Result, 09, 04) + '-' +
                 Copy(Result, 13, 02);
end;

function FormataCPF(Const pCPF: String): String;
var
  lIdx : Integer;
begin
	Result := '';
  	for lIdx := 1 to Length(pCPF) do
   	if pCPF[lIdx] in ['0'..'9'] then
	      if not (pCPF[lIdx] = '.') and
         	not (pCPF[lIdx] = '/') and
           not (pCPF[lIdx] = '-') then
      	Result := Result + pCPF[lIdx];

  	if not (Length(Result) = 11) then
   	raise Exception.Create('CPF inv�lido.')
  	else
   	Result	:=	Copy(Result, 01, 03) + '.' +
      			 	Copy(Result, 04, 03) + '.' +
      				Copy(Result, 07, 03) + '-' +
                 Copy(Result, 10, 02);
end;

{ chInt - Converte um caracter num�rico para o valor inteiro correspondente. }
function chInt ( ch: Char ): ShortInt;
begin
	Result := Ord ( ch ) - Ord ( '0' );
end;

{ intCh = Converte um valor inteiro (de 0 a 9) para o caracter num�rico
  correspondente. }
function intCh ( int: ShortInt ): Char;
begin
	Result := Chr ( int + Ord ( '0' ) );
end;

{ DvModulo11 - Retorna 1 dv calculado pelo m�todo do modulo 11 padr�o. }
function DvModulo11 (pStr: String ): Char;
var soma, fator, i: Integer;
begin
	soma := 0;
   fator := 2;
   for i := Length (pStr) downto 1 do
   begin
   	soma := soma + chInt (pStr[i] ) * fator;
      Inc ( fator );
      if fator = 10 then fator := 2;
   end;
   soma := 11 - ( soma mod 11 );
   if soma >= 10 then Result := '0'
   else Result := intCh ( soma );
end;

{ dvModulo11ParaCPF - Retorna 1 dv calculado pelo m�todo do modulo 11
  ligeiramente alterado para o CPF. }
function dvModulo11ParaCPF ( str: String ): Char;
var
	soma, fator, i: Integer;
begin
	soma := 0;
	fator := 2;
	for i := Length ( str ) downto 1 do
	begin
  		soma := soma + chInt ( str[i] ) * fator;
  		Inc ( fator );
	end;
	soma := 11 - ( soma mod 11 );
	if soma >= 10 then Result := '0'
	else Result := intCh ( soma );
end;

{ DvModulo10 - Retorna 1 dv calculado pelo m�todo do modulo 10 padr�o. }
function DvModulo10 (pStr: String ): Char;
var soma, fator, i: Integer;
begin
	soma := 0;
   fator := 2;
   for i := Length (pStr) downto 1 do
   begin
   	soma := soma + chInt (pStr[i] ) * fator;
      Dec ( fator );
      if fator = 0 then fator := 2;
   end;
   soma := 10 - ( soma div 11 );
   if soma >= 10 then Result := '0'
   else Result := intCh ( soma );
end;

{ DvCGC - Retorna os dois dvs de um CGC, dado o CGC sem os dvs em forma de
  string (12 caracteres num�ricos). }
function DvCGC (pStr: String ): String;
var
	dv1: Char;
begin
	dv1		:= DvModulo11 (pStr);
  Result	:= dv1 + DvModulo11 (pStr + dv1);
end;

{ DvCPF - Retorna os dois dvs de um CPF, dado o CPF sem os dvs em forma de
  string (9 caracteres num�ricos). }
function DvCPF (pStr: String ): String;
var
	dv1: Char;
begin
	dv1		:= dvModulo11ParaCPF (pStr);
  Result	:= dv1 + dvModulo11ParaCPF (pStr + dv1);
end;

{ ValidaCGC - Retorna true se o CGC dado � valido. O CGC deve ser um string }
{             de 14 caracteres num�ricos.                                   }
function ValidaCGC(pStr: String ): Boolean;
begin
    {Bulek em 27/07/2006 - Retirei a valida��o do CPF desta rotina, pois n�o faz sentido faze-lo aqui          }
    {                      Tamb�m retirei a mensagem de erro de dentro da fun��o, o que tamb�m n�o faz sentido }
   if Length(pStr) = 14 then
      Result	:= Copy (pStr, 13, 2) = DvCGC (Copy(pStr, 1, 12 ))
   else
      Result := False;
end;

{ ValidaCPF - Retorna true se o CPF dado � valido. O CPF deve ser um string }
{             de 11 caracteres num�ricos.                                   }
function ValidaCPF(pStr: String ): Boolean;
begin
  if Length(pStr) = 11 then
	   Result := Copy(pStr, 10, 2) = DvCPF (Copy(pStr, 1, 9 ))
  else
     Result := False;
end;

function ValidaCNPJCPF(pStr: String; ShowExcept: Boolean): Boolean;
begin
  Result := False;
	if Length(pStr) = 14 then
  begin
  	if not ValidaCGC(pStr) then
    begin
    	if ShowExcept then
      	raise Exception.Create('CNPJ inv�lido...')
    end else Result := True;
  end else
   	if Length(pStr) = 11 then 
	  begin
  		if not ValidaCPF(pStr) then
    	begin
    		if ShowExcept then
        	 raise Exception.Create('CPF inv�lido...')
	    end else Result := True;
  	end else
  		if ShowExcept then
	  		raise Exception.Create('CNPJ - CPF inv�lido...')
end;

function FormataCNPJCPF(pStr: String): String;
begin
   if Length(pStr) = 14 then
      Result := FormataCNPJ(pStr)
   else
   if Length(pStr) = 11 then
      Result := FormataCPF(pStr)
   else Result := pStr;
end;

function VlrExtenso(pvalor: Currency): String;
var
	Centavos, Centena, Milhar, {Milhao,} Texto, msg: string;
const
	Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
	Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
	Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
	Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');

	function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
	begin
		if Expressao then
      	Result	:=	CasoVerdadeiro
			else Result	:=	CasoFalso;
	end;

	function MiniExtenso (trio: string): string;
	var
		Unidade, Dezena, Centena: string;
   begin
		Unidade	:= '';
		Dezena	:= '';
		Centena	:= '';
      if (trio[2]='1') and (trio[3]<>'0') then
	   begin
  			Unidade:=Dez[strtoint(trio[3])];
  			Dezena:='';
		end else
 		begin
  			if trio[2] <> '0' then
         	Dezena	:= Dezenas[strtoint(trio[2])];
  			if trio[3] <> '0' then
         	Unidade	:= Unidades[strtoint(trio[3])];
 		end;
		if (trio[1] = '1') and (Unidade='') and (Dezena='') then
      	Centena := 'cem'
		else
 		if trio[1] <> '0' then
      	Centena := Centenas[strtoint(trio[1])]
  		else Centena := '';
 		Result := Centena + ifs((Centena <> '') and ((Dezena <> '') or (Unidade <> '')), ' e ', '')
  			+ Dezena + ifs((Dezena<>'') and (Unidade<>''), ' e ', '') + Unidade;
	end;
begin
	if (pValor>999999.99) or (pValor<0) then
 	begin
  		msg	:= 'O valor est� fora do intervalo permitido.';
  		msg	:=	msg +'O n�mero deve ser maior ou igual a zero e menor que 999.999,99.';
  		msg	:= msg +' Se n�o for corrigido o n�mero n�o ser� escrito por extenso.';
  		raise Exception.Create(msg);
 	end;

	if pValor = 0 then
 	begin
  		Result := '';
  		Exit;
 	end;
	Texto 	:= FormatFloat('000000.00', pValor);
	Milhar	:= MiniExtenso(Copy(Texto, 1,3));
	Centena	:= MiniExtenso(Copy(Texto, 4,3));
	Centavos	:= MiniExtenso('0'+Copy(Texto, 8,2));
	Result   := Milhar;
	if Milhar<>'' then
  		if copy(texto,4,3)='000' then
  			Result	:= Result +' Mil Reais'
  		else Result	:= Result +' Mil, ';

{   if (((copy(texto,4,2)= '00') and (Milhar<>'')   and
   	(copy(texto,6,1) <> '0'))  or (centavos='')) and (Centena <>'') then
   	Result := Result+' e ';    }

   if (Milhar+Centena <>'') then
   	Result := Result + Centena;

	if (Milhar='') and
   	(copy(texto,4,3)='001') then
   	Result:=Result+' Real'
 	else
   if (copy(texto,4,3)<>'000') then
   	Result := Result+' Reais';

	if Centavos='' then
 	begin
  		Result:=Result+'.';
  		Exit;
 	end else
 	begin
  		if Milhar+Centena='' then
  			Result:=Centavos
  		else Result:=Result+', e '+Centavos;
   	if (copy(texto,8,2)='01') and (Centavos<>'') then
  			Result:=Result+' Centavo.'
      else Result:=Result+' Centavos.';
	end;
end;

function ExecutarAcao(Lista: TActionList; Acao: TBasicAction): Boolean;
begin
	try
		Result	:= True;
  	Lista.OnExecute(Acao, Result);
  finally
	  Result	:= not Result;
    if Result then
    	Acao.Execute;
  end;
end;

procedure SearchArquive(BasePath: String; List: TStringList; ExtFile: String);
var
	DirInfo: TSearchRec;
begin
	if BasePath[Length(BasePath)] <> '\' then
		BasePath := BasePath + '\';

	FindFirst(BasePath+'*', faDirectory, DirInfo);
	repeat
		if (DirInfo.Name = '.') or (DirInfo.Name = '..') then
	 		Continue;

		if (ExtractFileExt(DirInfo.Name) <> '.' +ExtFile) and
    	not ((DirInfo.attr and faDirectory) = faDirectory) then
			Continue;

    if (DirInfo.attr and faDirectory) = faDirectory then
		Begin
    	SearchArquive(BasePath + DirInfo.Name + '\', List, ExtFile);

    	Continue;
  	end;

  	List.Add(DirInfo.Name);
	until FindNext(DirInfo) <> 0;
end;

procedure TdmConnection.DataModuleDestroy(Sender: TObject);
begin
   if dbSig.Connected then Desconectar_FireBird;
end;

procedure TdmConnection.acCloseExecute(Sender: TObject);
begin
	with Application.MainForm do
   	if Assigned(Screen.ActiveForm) then
      	Screen.ActiveForm.Close
      else
   	if MDIChildCount > 0 then ActiveMDIChild.Close
      else Close;
end;

procedure TdmConnection.acSobreExecute(Sender: TObject);
begin
	try
   	Application.CreateForm(Tfr_Sobre, fr_Sobre);
   finally                                                     
   	fr_Sobre.ShowModal;
   end;
end;

procedure TdmConnection.acHelpExecute(Sender: TObject);
begin
	with Application.MainForm do
   	if Assigned(Screen.ActiveForm) then
         Application.HelpCommand(HELP_CONTEXT, StrToInt(Screen.ActiveForm.HelpKeyword))
      else
   	if MDIChildCount > 0 then Application.HelpCommand(HELP_CONTEXT, StrToInt(ActiveMDIChild.HelpKeyword))
      else Application.HelpCommand(HELP_CONTEXT, StrToInt(HelpKeyword));
end;

procedure TdmConnection.qryPesquisaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
function RetiraCarEsp(pText: String): String;
   var
   	lIdx: Integer;
 	begin
   	for lIdx := 1 to Length(pText) do
      	if pText[lIdx] in ['0'..'9', 'A'..'Z'] then
         	Result := Result + pText[lIdx];
 	end;
var
	lIdx: Byte;
begin
	if vFilPesquisa[2] = 'S' then
   begin
   	if not DataSet.FieldByName('CAMPO2').IsNull then
      begin
	   	Accept	:= Pos(UpperCase(Copy(UpperCase(vFilPesquisa[3]), Length(vFilPesquisa[3])-1, Length(vFilPesquisa[3]))), UpperCase(DataSet['CAMPO2'])) > 0;
   		if Accept then
      		for lIdx := 1 to Length(vFilPesquisa[3]) do
         	begin
            	Accept	:= Pos(UpperCase(Copy(UpperCase(vFilPesquisa[3]), Length(vFilPesquisa[3])-lIdx, Length(vFilPesquisa[3]))), UpperCase(DataSet['CAMPO2'])) > 0;
	            if not Accept then
   	         	Break;
      	   end;
      end;
   end else
	if vFilPesquisa[0] = 'S' then
   	if not DataSet.FieldByName('CAMPO1').IsNull then
      begin
	      Accept	:= Pos(UpperCase(Copy(UpperCase(vFilPesquisa[1]),Length(vFilPesquisa[1])-1, Length(vFilPesquisa[1]))), UpperCase(DataSet['CAMPO1'])) > 0;
   		if Accept then
      		for lIdx := 1 to Length(vFilPesquisa[1]) do
         	begin
            	Accept	:= Pos(UpperCase(Copy(UpperCase(vFilPesquisa[1]), Length(vFilPesquisa[1])-lIdx, Length(vFilPesquisa[1]))), UpperCase(DataSet['CAMPO1'])) > 0;
	            if not Accept then
   	         	Break;
      	   end;
	   end;
end;

function FieldRequired(DataSet: TIBDataSet; Inserir: Boolean=True): Boolean;
var
	lCampo: Byte;
begin
	Result	:= True;
	with DataSet do
  begin
  	if State in [dsInsert, dsEdit] then
    	for lCampo := 0 to Fields.Count -1 do                  
      	if Fields.Fields[lCampo].Required then
        begin
        	Result := Fields.Fields[lCampo].IsNull;                  
          if Fields.Fields[lCampo].IsNull and not (Fields.Fields[lCampo].ProviderFlags = [pfInUpdate..pfInKey]) then
          try
          	raise Exception.Create('O campo '+Fields.Fields[lCampo].DisplayLabel+' � obrigat�rio o preenchimento...');
          finally
          	Fields.Fields[lCampo].FocusControl;
          end;
        end;
		   if not Result then
   		   if State in [dsInsert, dsEdit] then Post;
     end;
end;

function InserirCod(Nom_Tabela, Nom_Campo: String; Empresa: Boolean): Largeint;
var
  qryCodigo: TIBQuery;
  qryCodigoAtualiza: TIBSQL;
begin
  qryCodigo := TIBQuery.Create(nil);
  qryCodigoAtualiza := TIBSQL.Create(nil);
  with qryCodigo do
  try
  	Database 		:= dmConnection.dbSig;
    Transaction	:= dmConnection.TransSig;

    Close;
    SQL.Clear;
    SQL.Add(' select ("'+Nom_Campo+'"+1) "codigo" ');
    SQL.Add(' from "'+Nom_Tabela+'" ');
    if Empresa then
    begin
    	SQL.Add(' where "cod_empresa" = :cod_empresa ');
      ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
    end;
    Open;

    if not FieldByName('codigo').IsNull then
    	Result := qryCodigo['codigo']
    else Result := 1;

    with qryCodigoAtualiza do
    begin
      Database     := dmConnection.dbSig;
      Transaction  := dmConnection.TransSig;

      Close;
      SQL.Clear;
      SQL.Add(' update "'+Nom_Tabela+'" set "'+Nom_Campo+'" = :cod_atualiza ');
      SQL.Add(' where "cod_empresa" = :cod_empresa ');
      ParamByName('cod_empresa').Value   :=  vgCod_Empresa;
      ParamByName('cod_atualiza').Value  := qryCodigo['codigo'];
      ExecQuery;
      Close;
    end;
    qryCodigoAtualiza.Transaction.CommitRetaining;
   Close;
	finally
  	Free;
  end;
end;


function InsertCode(Nom_Tabela, Nom_Campo: String; Empresa: Boolean): Largeint;
var
	qryCodigo: TIBQuery;
begin
	qryCodigo := TIBQuery.Create(nil);
	with qryCodigo do
   try
  	 Database 		:= dmConnection.dbSig;
     Transaction	:= dmConnection.TransSig;

    Close;
    SQL.Clear;
    SQL.Add(' select (max("'+Nom_Campo+'") +1) codigo ');
    SQL.Add(' from "'+Nom_Tabela+'" ');
    if Empresa then
    begin
    	SQL.Add(' where "cod_empresa" = :cod_empresa ');
     ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
    end;
    Open;

    if not FieldByName('codigo').IsNull then
    	Result := qryCodigo['codigo']
    else Result := 1;
    Close;
	finally
  	Free;
  end;
end;


function InsertCode: Integer;
const
	ctSQL_Select =
   ' select                                                      '+
   '    (case when a."ult_num_nf" is null                        '+
   '          then a."num_nota_fiscal_inicio"                    '+
   '          else (a."ult_num_nf" +1) end ) "num_nota_fiscal"   '+
   ' from "parametro_comercial" a                                '+
   ' where                                                       '+
   '      a."cod_empresa" = :cod_empresa                         '+
   ' and (a."ult_num_nf" + 1) between a."num_nota_fiscal_inicio" '+
   '                              and a."num_nota_fiscal_termino"';

var
	qryCodigo: TIBQuery;
  qryCodigoAtualiza: TIBSQL;
begin
	qryCodigo := TIBQuery.Create(nil);
	with qryCodigo do
  try
  	Database 		:= dmConnection.dbSig;
    Transaction	:= dmConnection.TransSig;

	  Close;
    SQL.Clear;                                                        
    SQL.Text	:= ctSQL_Select;
    ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
    Open;
    if FieldByName('num_nota_fiscal').IsNull then
    	Result	:= 183
    else Result	:= FieldByName('num_nota_fiscal').AsInteger;

    qryCodigoAtualiza := TIBSQL.Create(nil);

    with qryCodigoAtualiza do
    begin
      Database     := dmConnection.dbSig;
      Transaction  := dmConnection.TransSig;

      Close;
      SQL.Clear;
      SQL.Add(' update "parametro_comercial" set "ult_num_nf" = :cod_atualiza ');
      SQL.Add(' where "cod_empresa" = :cod_empresa ');
      ParamByName('cod_empresa').Value   :=  vgCod_Empresa;
      ParamByName('cod_atualiza').Value  := 183;
      ExecQuery;
      Close;
    end;
    qryCodigoAtualiza.Transaction.CommitRetaining;

    Close;
	finally
  	Free;
  end;
end;

procedure TdmConnection.dbSigAfterConnect(Sender: TObject);
begin
   TransSig.Active	:= True;
end;

procedure TdmConnection.dbSigBeforeDisconnect(Sender: TObject);
begin
   TransSig.Active	:= False;
end;

procedure TdmConnection.empresaAfterScroll(DataSet: TDataSet);
begin
	with cidade do
  begin
  	Close;
    ParamByName('cod_cidade').AsSmallInt := DataSet['cod_cidade'];
    Open;
  end;
end;

procedure TdmConnection.empresacnpjGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
	if not Sender.IsNull then Text := FormataCNPJCPF(Sender.AsString);
end;


procedure TdmConnection.acAlterarSenhaExecute(Sender: TObject);
begin
	try
   	Application.CreateForm(Tfr_AlterarSenha, fr_AlterarSenha);
   finally                                                              
   	fr_AlterarSenha.ShowModal;
   end;

end;

{******************************************************************}
{ Function: FormatarCodigo(f: string; s: string): String;          }
{ Permite retornar a string "s", formatada conforme par�metro "f"  }
{ Os par�metros permitidos s�o:                                    }
{                                                                  }
{  "#"                                     - Num�rico              }
{  "A"                                     - Alfanum�rico          }
{  "@"                                     - N�o mostrar caracter  }
{  ".","-",",","/","\","|","[',"]","(",")" - Caracteres especiais  }
{******************************************************************}
function FormatarCodigo(f: String; s: String): String;
Var
  c, i : integer;
  t : String;
begin
  t := '';
  for i := 1 to length(f) do
    if f[i] in ['#', 'A', '@'] then t := t + f[i];

  for i := 1 to length(t)-length(s) do
  begin
    if f[i] = '#' then s := '0' + s;
    If f[i] = 'A' then s := ' ' + s;
    if f[i] = '@' then s := ' ' + s;
  end;

  for c := 1 to Length(f) do
  begin
    if f[c] in ['.','-',',','/','\','|','[',']','(',')'] then Insert(f[c], s, c);
  end;

  for c := 1 to Length(f) do
  begin
    if f[c] in ['@'] then s[c] := ' ';
  end;

  Result := trim(s);
end;


function TamanhoMascara(f: String):Integer;
Var
  i, c: Integer;
begin
  { Determinar o tamanho da m�scara, sem a formata��o }
  { para usar no campo de edi��o de entrada da m�scara}
  c := 0;
  for i := 1 to length(f) do
    if f[i] in ['#','A'] then inc(c);

  Result := c;
end;

function SemFmtProduto(Cliente, Produto: String): String;
{ N�o retirar a formata��o do C�digo do Produto, quando n�o houver m�scara definida para o Cliente }
Var
  Mask : String;
begin
  Mask := '';
  { procurar a m�scara em par�metros do cliente }
  with dmConnection.cliente do
  begin
    Close;
    ParamByName('cod_cliente').AsString := Cliente;
    Open;
    Mask := FieldByName('mas_cod_produto').AsString;
  end;
  if Mask <> '' then
  begin
    Result := RetirarLixo(trim(Produto));
  end else
  begin
    Result := trim(Produto);                              
  end;
end;

function FmtProdutoCliente(Cliente, Produto : String): TfmtProduto;
{ Retornar o c�digo do produto formatado de acordo com a m�scara definida }
{ nos par�metros do cliente                                               }
Var
  Mask : String;
begin
  Mask := '';
  Result.fmtProduto := '';
  Result.fmtLength  := 0;                                             
  if (Cliente='') or (Produto='') then Exit;         
  { procurar a m�scara em par�metros do cliente }
  with dmConnection.cliente do
  begin
    Close;                                                 
    ParamByName('cod_cliente').AsString := Cliente;                         
    Open;                                               
    Mask := FieldByName('mas_cod_produto').AsString;
  end;
  { retornar c�digo do produto formatado e tamanho do campo, se estiver }
  { definida uma m�scara para os produtos do cliente nos par�metros     }
  Result.fmtProduto := FormatarCodigo(Mask, Produto);
  Result.fmtLength  := TamanhoMascara(Mask);
end;

function FmtProdutoFornecedor(Fornecedor: integer; Produto : String): TfmtProduto;
{ Retornar o c�digo do produto formatado de acordo com a m�scara definida }
Var
  Mask : String;
begin
  Result.fmtProduto := '';
  Result.fmtLength  := 0;                                           
  if (Fornecedor=0) or (Produto='') then Exit;
  { procurar a m�scara em par�metros do fornecedor}
  with dmConnection.fornecedor do
  begin
    Close;
    ParamByName('cod_fornecedor').AsInteger := Fornecedor;
    Open;
    Mask := FieldByName('mas_cod_produto').AsString;
  end;                                                               
  { retornar c�digo do produto formatado e tamanho do campo }
  Result.fmtProduto := FormatarCodigo(Mask, Produto);
  Result.fmtLength  := TamanhoMascara(Mask);
end;

procedure TdmConnection.DataModuleCreate(Sender: TObject);
begin
  { Colocada inicializa��o neste ponto em fun��o dos�programas que rodam autom�ticamente (interfaces) }

	CurrencyString		:= 'R$';	{ S�mbolo da moeda }
  CurrencyFormat		:= 0;    { Posi��o do s�mbolo da moeda = �1,1 }
  NegCurrFormat		:= 0;    { Formato de n�mero negativo = �-1,1 }
  ThousandSeparator	:= '.';  { S�mbolo de agrupamento de d�gitos }
  DecimalSeparator	:= ',';  { S�mbolo decimal }
  CurrencyDecimals	:= 3;    { No. de d�gitos decimais }
  DateSeparator		:= '/';  { Separador de data }
  ShortDateFormat	:= 'dd/mm/yyyy';	{ Estilo de data abreviada }
  LongDateFormat		:= 'dddd, d'#39' de '#39'mmmm'#39' de '#39'yyyy'; { Estilo de data por extenso }
  TimeSeparator		:= ':';  { Separador de hora }
  TimeAMString		:= 'AM';   { S�mbolo AM }
  TimePMString		:= 'PM';   { S�mbolo PM }
  ShortTimeFormat	:= 'hh:mm';
  LongTimeFormat		:= 'hh:mm:ss';	{ Estilo de hora }
  ListSeparator		:= ';';        { Separador de listas }
end;

function RunPrograma(Programa: String): Boolean;
begin
  { Verificar se determinado programa est� logado h� menos de um dia }
  with dmConnection, qryPesquisa do
  begin
    Close;
    SQL.Text := 'select * from "usuario_log"               '+
                ' where "cod_empresa" = :cod_empresa       '+
                '   and "nom_programa" = :nom_programa     '+
                '   and "dat_conexao" >= current_date - 1  ';
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('nom_programa').AsString := Programa;
    Open;
    Result := Not(IsEmpty);
    Close;
  end;
end;

function UsuarioLoginDate() : String;
begin
  { Verificar se determinado programa est� logado h� menos de um dia }
  with dmConnection, qryPesquisa do
  begin
    Close;
    SQL.Text := 'select "dat_conexao" from "usuario_log"   ' +
                ' where "cod_empresa" = :cod_empresa       ' +
                '   and "nom_programa" = :nom_programa     ' +
                '   and "login" = :login                   ';

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('login').AsString        := vgLogin;
    ParamByName('nom_programa').AsString := vgCod_Programa;

    Open;
    Result := FormatDateTime('dd.mm.yy - hh:mm', FieldByName('dat_conexao').AsDateTime);
    Close;
  end;
end;



function InsertCodes: Integer;
const
	ctSQL_Select =
  ' select (a."ult_num_os" + 1) "num_ordem"   '+
  ' from "parametro_comercial" a  '+
  ' where                         '+
  ' a."cod_empresa" = :cod_empresa ';


var
	qryCodigo: TIBQuery;
  qryCodigoAtualiza: TIBSQL;
begin
	qryCodigo := TIBQuery.Create(nil);
	with qryCodigo do
  try
  	Database 		:= dmConnection.dbSig;
    Transaction	:= dmConnection.TransSig;

	  Close;
    SQL.Clear;
    SQL.Text	:= ctSQL_Select;
    ParamByName('cod_empresa').AsSmallInt := vgCod_Empresa;
    Open;

    if FieldByName('num_ordem').IsNull then
    	Result	:= 1
    else Result	:= FieldByName('num_ordem').AsInteger;

    qryCodigoAtualiza := TIBSQL.Create(nil);

    with qryCodigoAtualiza do                          
    begin
      Database     := dmConnection.dbSig;
      Transaction  := dmConnection.TransSig;                      
                                                             
      Close;
      SQL.Clear;
      SQL.Add(' update "parametro_comercial" set "ult_num_os" = :cod_atualiza ');
      SQL.Add(' where "cod_empresa" = :cod_empresa ');
      ParamByName('cod_empresa').Value   :=  vgCod_Empresa;
      ParamByName('cod_atualiza').Value  := qryCodigo['num_ordem'];
      ExecQuery;
      Close;
    end;
      qryCodigoAtualiza.Transaction.CommitRetaining;
    Close;
    finally
   end;                                                       
end;                                                                            

procedure AtualizarComissoes(CodProduto: String);
begin
  { Atualizar os percentuais e valores de comiss�es em Pedidos e Faturas }
  Screen.Cursor := crHourGlass;
  with dmConnection.spr_atualizar_comissoes do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString  := CodProduto;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;
  Screen.Cursor := crDefault;  
end;

procedure AtualizarLI(CodProduto: String);
begin
  { Atualizar LI em Pedidos }
  Screen.Cursor := crHourGlass;
  with dmConnection.spr_atualizar_li_pedido do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString  := CodProduto;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure RecalcularPedidos(CodProduto: String);
begin
  { Recalcular Pedidos quando houver altera��o cadastral em Produtos (peso unit�rio) }
  { ou Embalagems                                                                    }
  Screen.Cursor := crHourGlass;
  with dmConnection.cby_recalc_pedidos do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString  := CodProduto;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure RecalcularFaturas(CodProduto: String);
begin
  { Recalcular Faturas n�o Embarcadas quando houver altera��o cadastral em Produtos (peso unit�rio) }
  { ou Embalagems                                                                                   }
  Screen.Cursor := crHourGlass;
  with dmConnection.cby_recalc_faturas do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString  := CodProduto;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure RecalcularProdList(CodProduto: String);
begin
  { Recalcular Itens da Production List, para o Produto informado, quando houver altera��es de Dados Cadastrais }
  { Somente Itens com Embalagens Standard }
  with dmConnection.cby_recalc_prodlist do
  begin
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString  := CodProduto;
    ExecProc;
    try
     Transaction.CommitRetaining;
    except
     Transaction.RollbackRetaining;
    end;
  end;
end;

function ProcurarProduto(CodProduto: String; CodCliente: String; CodFornecedor: Integer): Tproduto;
begin
  { Procurar se o produto est� cadastrado no sistema }
  with dmConnection.procura_produto do
  begin
    SQL.Clear;
    SQL.Text := 'select a."cod_produto", a."cod_cliente", a."cod_fornecedor",                       '+
                '       a."den_produto", a."pct_comissao_f", a."pct_comissao_c", a."den_produto_ing"'+
                '  from "produto" a                                                                 '+
                ' where a."cod_empresa" = :cod_empresa                                              '+
                '   and a."cod_produto" = :cod_produto                                              '+
                '   and a."cod_cliente" = :cod_cliente                                              '+
                '   and a."cod_fornecedor" = :cod_fornecedor                                        ';

    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := CodProduto;
    ParamByName('cod_cliente').AsString := CodCliente;
    ParamByName('cod_fornecedor').AsInteger := CodFornecedor;
    Open;
    Result.Existe        := Not(IsEmpty);
    Result.Cliente       := FieldByName('cod_cliente').AsString;
    Result.Fornecedor    := FieldByName('cod_fornecedor').AsInteger;
    if Not(IsEmpty) then
    begin
      Result.DenProduto    := FieldByName('den_produto').AsString;
      Result.DenProdutoIng := FieldByName('den_produto_ing').AsString;
    end else
    begin
      Result.DenProduto := '*** PRODUTO N�O ENCONTRADO ***';
      Result.DenProdutoIng := '*** PRODUCT NOT FOUND ***';
    end;
    Result.Comis_c       := FieldByName('pct_comissao_c').AsFloat;
    Result.Comis_f       := FieldByName('pct_comissao_f').AsFloat;
    Close;
  end;
end;

function ProdutoExiste(CodProduto: String): TProduto;
begin
  { Procurar se o produto est� cadastrado no sistema }                   
  with dmConnection.procura_produto do
  begin
    SQL.Clear;
    SQL.Text := 'select a."cod_produto", a."cod_cliente", a."cod_fornecedor" '+
                '  from "produto" a                                          '+
                ' where a."cod_empresa" = :cod_empresa                       '+
                '   and a."cod_produto" = :cod_produto                       ';
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := trim(CodProduto);
    Open;
    Result.Existe := Not(IsEmpty);
    Result.Cliente := FieldByName('cod_cliente').AsString;
    Result.Fornecedor := FieldByName('cod_fornecedor').AsInteger;
    Close;
  end;
end;


function ProdutoDet(CodProduto: String; CodCliente: String; CodFornecedor: Integer; Doc: char = 'D'): TProdutoDet;
begin
  { Retornar as descri��es detalhadas (blob) do Produto em Ingl�s e Portugu�s, Grupo e NCM e se tem Licen�a de Importa��o }
  { e observa��es para Embalagens                                                                                         }
  with dmConnection.Produto_Det do
  begin
    Close;
    ParamByName('cod_empresa').AsInteger := vgCod_Empresa;
    ParamByName('cod_produto').AsString := CodProduto;
    ParamByName('cod_cliente').AsString := CodCliente;
    ParamByName('cod_fornecedor').AsInteger := CodFornecedor;
    Open;
    Result.Existe := Not(IsEmpty);
    Result.Ingles := trim(StringReplace(dmConnection.Produto_Detden_produto_det.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));
    Result.Portugues := trim(StringReplace(dmConnection.Produto_Detden_produto_detpor.AsString, #$D#$A, ' ', [rfReplaceAll, rfIgnoreCase]));

    if (IsEmpty) then
    begin
      Result.Ingles := '*** PRODUCT NO FOUND *** ';
      Result.Portugues := '*** PRODUTO N�O ENCONTRADO ***';
    end;

    Result.Grupo := trim(FieldByName('den_tip_produto').AsString)+' / '+trim(FieldByName('den_tip_produto_ing').AsString);
    Result.un := FieldByName('sigla_i').AsString;
    Result.Ncm := FormatarNcm(dmConnection.Produto_Detncm_cod.AsInteger, dmConnection.Produto_Detcod_cliente.AsString, Doc) + trim(FieldByName('ncm_letra').AsString);
    Result.NcmDoc := FormatarNcm(dmConnection.Produto_Detncm_cod.AsInteger, dmConnection.Produto_Detcod_cliente.AsString, Doc) + trim(FieldByName('ncm_letra').AsString);
    Result.Lic := FieldByName('ncm_lic').AsString;
    Result.Imetro := FieldByName('ncm_imetro').AsString;
    Result.CorNcm := 0;
    if (FieldByName('ncm_lic').AsString = 'S') then Result.CorNcm := 3;
    if (FieldByName('ncm_imetro').AsString = 'S') then Result.CorNcm := 5;
    { Coment�rios sobre as medidas das caixas }
    Result.obsMedidas := FormatFloat('L ##0.0', FieldByName('profundidade').AsFloat) + ' x ' +
                         FormatFloat('W ##0.0', FieldByName('largura').AsFloat) + ' x ' +
                         FormatFloat('H ##0.0', FieldByName('altura').AsFloat) + ' cm, updated on '+
                         FormatDateTime('DD.MM.YY', FieldByName('dat_cad_dimensoes').AsDateTime);

    Result.obsQtdMaster := 'Quantity master box: ' + FieldByName('qtd_master').AsString + ' pieces updated on '
                           + FormatDateTime('DD.MM.YY',FieldByName('dat_cad_master').AsDateTime);

    Result.obsPesoMaster := 'Gross weigth of the Master Box: ' + FormatFloat('##0.00', FieldByName('pes_bruto_cx').AsFloat);

    Result.obsPesoProduto := 'Net weight of the piece: ' +
                             FormatFloat('##0.0000', FieldByName('pes_unitario').AsFloat) + ' Kg updated on ' +
                             FormatDateTime('DD.MM.YY', FieldByName('dat_cad_peso').AsDateTime);

    Close;                                
  end;
end;

{ NCM + Letra Final conforme par�metro empresa }
function FormatarNcm(NcmCod: Integer; Cliente: String; Doc: char): String;
Var
  s : String;
begin
  try
    s := IntToStr(NcmCod);
  except
    s := '';
  end;

  with dmConnection.cliente do
  begin
    Close;
    ParamByName('cod_cliente').AsString := Cliente;
    Open;
  end;
  { indicar se o formato � para Documentos ou geral }

  if (Doc = 'D') then Result := FormatarCodigo(dmConnection.clientencm_formato.AsString, s)
  else if (Doc = 'P') then Result := FormatarCodigo(dmConnection.clientencm_formato_ped.AsString, s)
  else if (Doc = 'F') then Result := FormatarCodigo(dmConnection.clientencm_formato_fat.AsString, s)
  else if (Doc = 'L') then Result := FormatarCodigo(dmConnection.clientencm_formato_pkl.AsString, s)
  else if (Doc = 'B') then Result := FormatarCodigo(dmConnection.clientencm_formato_bol.AsString, s);
end;


function LetraNcm(Ncm: String): String;
var
  i : integer;
begin
  for i := 1 to length(Ncm) do
  begin
    if Ncm[i] in ['A'..'Z', 'a'..'z'] then
    begin
      Result := UpperCase(Ncm[i]);
      Exit;
    end;
  end;
end;

function ProcuraCliente(CodCliente: String): boolean;
begin
  with dmConnection.qryAux do
  begin
    Close;
    SQL.Text := 'select "cod_cliente"               '+
                '  from "cliente"                   '+
                ' where "cod_cliente" = :cod_cliente'+
                '   and "ies_situacao" = ''A''      ';
    ParamByName('cod_cliente').AsString := trim(CodCliente);
    Open;
    Result := Not(IsEmpty);
    Close;
  end;
end;

function ProcuraFornecedor(NomReduz : String): Integer;
begin
  with dmConnection.qryAux do
  begin
    Close;
    SQL.Text := 'select "cod_fornecedor"                       '+
                'from "fornecedor"                             '+
                'where "raz_social_reduz" = :raz_social_reduz  '+
                '  and "ies_situacao" = ''A''                  ';
    ParamByName('raz_social_reduz').AsString := NomReduz;
    Open;
    Result := FieldByName('cod_fornecedor').AsInteger;
    Close;
  end;
end;

function GetResultInspecao(r: String): String;
begin
  r := UpperCase(r);
  if (trim(r) = 'F') then Result := '0'
  else if (trim(r) = 'F/P') then Result := '1'
  else if (trim(r) = 'P') then Result := '2'
  else Result := '';
end;

function SetResultInspecao(r: String): String;
begin
  if (trim(r) = '0') then Result := 'F'
  else if (trim(r) = '1') then Result := 'F/P'
  else if (trim(r) = '2') then Result := 'P'
  else Result := '';
end;

end.

