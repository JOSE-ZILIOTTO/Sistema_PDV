unit SistemaPDV.Model.Conexao.configuracao;

interface

uses
  sysutils,
  system.IniFiles,
  system.Classes,
  system.ZLib;

type
  TConfiguracao = class
  private
    FPath: string;
    FArquivo: TIniFile;

    procedure comprimir;
    procedure descomprimir;

  Const
    ARQUIVOINI = 'CONFIGURACAO.CONF';
    TEMPINI = 'TEMP';
    SECAOCONF = 'CONFIGURACAO';
  public
    constructor Create(Path: string);
    destructor Destroy; override;
    class function new(Path: string): TConfiguracao;
    function SetDataBase(value: string): TConfiguracao;
    function GetDataBase: string;
    function SetUserName(value: string): TConfiguracao;
    function GetUserName: string;
    function SetPassword(value: string): TConfiguracao;
    function GetPassword: string;
    function SetDriveId(value: string): TConfiguracao;
    function GetDriveId: string;
    procedure Build;
    procedure ReBuild;

  end;

implementation

procedure TConfiguracao.Build;
begin
//  comprimir  ;
end;

procedure TConfiguracao.comprimir;
var
  Linput, Lout: TStringStream;
begin
  Linput := TStringStream.Create;
  Lout := TStringStream.Create;
  try
    Linput.LoadFromFile(FPath + ARQUIVOINI);
    ZCompressStream(Linput, Lout);
    Lout.SaveToFile(FPath + ARQUIVOINI);
  finally
    Linput.Free;
    Lout.Free;
  end;

end;

{ TConfiguração }

constructor TConfiguracao.Create(Path: string);
begin
  FPath := Path;
  FArquivo := TIniFile.Create(Path + ARQUIVOINI);
end;

procedure TConfiguracao.descomprimir;
var
  Linput, Lout: TStringStream;
begin
  Linput := TStringStream.Create;
  Lout := TStringStream.Create;
  try
    Linput.LoadFromFile(FPath + ARQUIVOINI);
    ZDecompressStream(Linput, Lout);

    Lout.SaveToFile(FPath + TEMPINI);

    if Assigned(FArquivo) then
    FArquivo.Free;
    FArquivo := TIniFile.Create(FPath + TEMPINI);
  finally
    Linput.Free;
    Lout.Free;
  end;

end;

destructor TConfiguracao.Destroy;
begin
   FArquivo.Free;
   if FileExists(FPath + TEMPINI) then
   DeleteFile(FPath + TEMPINI);

  inherited;
end;

function TConfiguracao.GetDataBase: string;
begin
  result := FArquivo.ReadString(SECAOCONF, 'DATABASE', '');
end;

function TConfiguracao.GetDriveId: string;
begin
  result := FArquivo.ReadString(SECAOCONF, 'DRIVEID', '');
end;

function TConfiguracao.GetPassword: string;
begin
  result := FArquivo.ReadString(SECAOCONF, 'PASSWORD', '');
end;

function TConfiguracao.GetUserName: string;
begin
  result := FArquivo.ReadString(SECAOCONF, 'USERNAME', '');
end;

class function TConfiguracao.new(Path: string): TConfiguracao;
begin
  result := self.Create(Path);
end;

procedure TConfiguracao.ReBuild;
begin
//  descomprimir;
end;

function TConfiguracao.SetDataBase(value: string): TConfiguracao;
begin
  result := self;
  FArquivo.WriteString(SECAOCONF, 'DATABASE', value);
end;

function TConfiguracao.SetDriveId(value: string): TConfiguracao;
begin
  result := self;
  FArquivo.WriteString(SECAOCONF, 'DRIVEID', value);
end;

function TConfiguracao.SetPassword(value: string): TConfiguracao;
begin
  result := self;
  FArquivo.WriteString(SECAOCONF, 'PASSWORD', value);
end;

function TConfiguracao.SetUserName(value: string): TConfiguracao;
begin
  result := self;
  FArquivo.WriteString(SECAOCONF, 'USERNAME', value);
end;

end.
