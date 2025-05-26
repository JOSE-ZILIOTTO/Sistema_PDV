unit SistemaPDV.Model.Conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Vcl.Dialogs,
  Datasnap.DBClient,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  SistemaPDV.model.conexao.configuracao;

type
  TConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    FSQL: String;

  public
    class function New: TConexao;
    function SQL(Value: String): TConexao;
    function Params(aParam: String; Value: Variant): TConexao; overload;
    function Params(aIndex: Integer; Value: Variant): TConexao; overload;
    function DataSource(DataSource: TDataSource): TConexao;
    function DataSet: TDataSet;
    function ExecSQL: TConexao;
    function Open: TConexao;
  end;
  var
  Conexao : TConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TConexao }

procedure TConexao.DataModuleCreate(Sender: TObject);
var
  lConf: TConfiguracao;
begin
  lConf := TConfiguracao.Create(ExtractFilePath(ParamStr(0)));
  lConf.ReBuild;
  try
    FDConnection1.Params.Clear;
    FDConnection1.Params.DriverID := lConf.GetDriveID;
    FDConnection1.Params.Database := lConf.GetDataBase;
    FDConnection1.Params.UserName := lConf.GetUserName;
    FDConnection1.Params.Password := lConf.GetPassword;

    if lConf.GetDriveID = 'SQLite' then
      FDConnection1.Params.Add('LockingMode=Normal');
  finally
    lConf.Free;
  end;
  FDConnection1.Connected := True;
end;

function TConexao.DataSet: TDataSet;
begin
  Result := FDQuery1;
end;

function TConexao.DataSource(DataSource: TDataSource): TConexao;
begin
  Result := Self;
  DataSource.DataSet := FDQuery1;
end;

function TConexao.ExecSQL: TConexao;
begin
  Result := Self;
  FDConnection1.StartTransaction;
  try
    FDQuery1.Close;
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add(FSQL);
    FDQuery1.ExecSQL;
    FDConnection1.Commit;
  except
    FDConnection1.Rollback;
    raise Exception.Create('Erro ao registrar os dados');
  end;
end;

class function TConexao.New: TConexao;
begin
  Result := TConexao.Create(nil);
end;

function TConexao.Open: TConexao;
begin
  Result := Self;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add(FSQL);
  FDQuery1.Open;
end;

function TConexao.Params(aParam: String; Value: Variant): TConexao;
begin
  Result := Self;
  FDQuery1.Params.Add;
  FDQuery1.ParamByName(aParam).Value := Value;
end;

function TConexao.Params(aIndex: Integer; Value: Variant): TConexao;
begin
  Result := Self;
  FDQuery1.Params.Add;
  FDQuery1.Params[aIndex].Value := Value;
end;

function TConexao.SQL(Value: String): TConexao;
begin
  Result := Self;
  FSQL := Value;
end;

end.
