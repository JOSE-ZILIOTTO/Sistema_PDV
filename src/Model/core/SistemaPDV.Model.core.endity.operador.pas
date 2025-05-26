unit SistemaPDV.Model.core.endity.operador;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  System.Classes,
  System.TypInfo,
  System.DateUtils,
  Data.DB,
  Vcl.Dialogs ,
  SistemaPDV.Model.dao.Operador,
  SistemaPDV.Model.dao.CAIXA,
  SistemaPDV.Model.dao.turno;

type
  TTipoTurno = (MANHA, TARDE, NOITE);

  TTipoTurnoHelper = record helper for TTipoTurno
    function ToString: String;
    function ToEnum(Value: String): TTipoTurno;
    function ToTurno(Value: TDateTime): TTipoTurno;
  end;

  TdmOperador = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FLista: TDictionary<String, String>;
  public
    class function New: TDMOperador;
    function ValidarOperador(aUsuario, aSenha: String): Boolean;
    function NumeroCaixaTurno(Value: String): TDictionary<String, String>;
  end;

  var
  dmOperador : TdmOperador;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

{ TDMOperador }

procedure TDMOperador.DataModuleCreate(Sender: TObject);
begin
  FLista:= TDictionary<String, String>.Create;
end;

procedure TDMOperador.DataModuleDestroy(Sender: TObject);
begin
  FLista.Free;
end;

class function TDMOperador.New: TDMOperador;
begin
  Result := Self.Create(nil);
end;

function TDMOperador.NumeroCaixaTurno(
  Value: String): TDictionary<String, String>;
var
  lDataSetCaixa,
  lDataSetTurno: TDataset;
  lDAOCaixa: TDAOCaixa;
  lDAOTurno: TDAOTurno;
  lTipo: TTipoTurno;
begin
  lDAOCaixa:= TDAOCaixa.Create;
  lDAOTurno:= TDAOTurno.Create;

  lDataSetCaixa := lDAOCaixa.FindWhere('nome',UpperCase(Value)).DataSet;
  lDataSetTurno := lDAOTurno.FindWhere('nome', lTipo.ToTurno(Now).ToString).DataSet;

  FLista.Add('idcaixa', lDataSetCaixa.FieldByName('id').AsString);
  FLista.Add('nomecaixa', lDataSetCaixa.FieldByName('nome').AsString);
  FLista.Add('idturno', lDataSetTurno.FieldByName('id').AsString);
  FLista.Add('nometurno', lDataSetCaixa.FieldByName('nome').AsString);

  Result := FLista;
end;

function TDMOperador.ValidarOperador(aUsuario, aSenha: String): Boolean;
var
  lDataSet: TDataSet;
  lOperador: TDAOOperador;
  lFieldNome, lFieldsenha: TField;
begin
  Result := false;

  lOperador:= TDAOOperador.new;
  lDataset := lOperador.Listar.Dataset;

   //  Adiciona aqui os testes:
  if not Assigned(lFieldNome) or not Assigned(lFieldSenha) then
  begin
    ShowMessage('Campos NOME ou SENHA não encontrados no DataSet!');
    Exit;
  end;

  ShowMessage('Nome no banco: ' + lFieldNome.AsString);
  ShowMessage('Senha no banco: ' + lFieldSenha.AsString);
  ShowMessage('Nome digitado: ' + aUsuario);
  ShowMessage('Senha digitada: ' + aSenha);

  if SameText(lFieldNome.AsString, aUsuario) and
     SameText(lFieldSenha.AsString, aSenha) then
  begin
    FLista.Add('idoperador', lDataSet.FieldByName('id').AsString);
    FLista.Add('nomeoperador', lFieldNome.AsString);
    FLista.Add('senhaoperador', lFieldSenha.AsString);
    Result := True;
  end ;

  lFieldNome := lDataSet.FindField('NOME');
  lFieldsenha := lDataSet.FindField('SENHA');

  if lFieldNome.AsString.Equals(UpperCase(aUsuario)) and
      lFieldsenha.AsString.Equals(aSenha) then
  begin
    FLista.Add('idoperador', lDataSet.FieldByName('id').AsString);
    FLista.Add('nomeoperador', lFieldNome.AsString);
    FLista.Add('senhaoperador', lFieldSenha.AsString);
    Result := False;
  end;
end;

{ TTipoTurnoHelper }

function TTipoTurnoHelper.ToEnum(Value: String): TTipoTurno;
begin
  Result := TTipoTurno(GetEnumValue(TypeInfo(TTipoTurno), UpperCase(Value)));
end;

function TTipoTurnoHelper.ToString: String;
begin
  Result := GetEnumName(TypeInfo(TTipoTurno), Integer(Self));
end;

function TTipoTurnoHelper.ToTurno(Value: TDateTime): TTipoTurno;
begin
  if ((HourOf(Value) >= 6) and (HourOf(Value) <= 11)) then
    Result := MANHA;

  if ((HourOf(Value) >= 12) and (HourOf(Value) <= 17)) then
    Result := TARDE;

  if ((HourOf(Value) >= 18) and (HourOf(Value) <= 23)) then
    Result := NOITE;
end;

end.
