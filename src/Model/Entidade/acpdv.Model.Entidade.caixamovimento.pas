unit acpdv.Model.Entidade.caixamovimento;

interface

type
  TCaixaMovimento = class
  private
    FId :Integer;
    FIdOperador :Integer;
    FIdCaixa :Integer;
    FIdTurno :Integer;
    FDataAbertura :TDateTime;
    FDataFechamento :TDateTime;
    FSituacao :String;
  public
    function GetId :Integer;
    function SetId(const Value :Integer): TCaixaMovimento;
    function GetIdOperador :Integer;
    function SetIdOperador(const Value :Integer): TCaixaMovimento;
    function GetIdCaixa :Integer;
    function SetIdCaixa(const Value :Integer): TCaixaMovimento;
    function GetIdTurno :Integer;
    function SetIdTurno(const Value :Integer): TCaixaMovimento;
    function GetDataAbertura :TDateTime;
    function SetDataAbertura(const Value :TDateTime): TCaixaMovimento;
    function GetDataFechamento :TDateTime;
    function SetDataFechamento(const Value :TDateTime): TCaixaMovimento;
    function GetSituacao :String;
    function SetSituacao(const Value :String): TCaixaMovimento;

    class function New: TCaixaMovimento;
end;

implementation

class function TCaixaMovimento.New: TCaixaMovimento;
begin
  Result := Self.Create;
end;

function TCaixaMovimento.SetId(const Value :Integer): TCaixaMovimento;
begin
  FId := Value;
end;

function TCaixaMovimento.GetId :Integer;
begin
  Result := FId;
end;

function TCaixaMovimento.SetIdOperador(const Value :Integer): TCaixaMovimento;
begin
  FIdOperador := Value;
end;

function TCaixaMovimento.GetIdOperador :Integer;
begin
  Result := FIdOperador;
end;

function TCaixaMovimento.SetIdCaixa(const Value :Integer): TCaixaMovimento;
begin
  FIdCaixa := Value;
end;

function TCaixaMovimento.GetIdCaixa :Integer;
begin
  Result := FIdCaixa;
end;

function TCaixaMovimento.SetIdTurno(const Value :Integer): TCaixaMovimento;
begin
  FIdTurno := Value;
end;

function TCaixaMovimento.GetIdTurno :Integer;
begin
  Result := FIdTurno;
end;

function TCaixaMovimento.SetDataAbertura(const Value :TDateTime): TCaixaMovimento;
begin
  FDataAbertura := Value;
end;

function TCaixaMovimento.GetDataAbertura :TDateTime;
begin
  Result := FDataAbertura;
end;

function TCaixaMovimento.SetDataFechamento(const Value :TDateTime): TCaixaMovimento;
begin
  FDataFechamento := Value;
end;

function TCaixaMovimento.GetDataFechamento :TDateTime;
begin
  Result := FDataFechamento;
end;

function TCaixaMovimento.SetSituacao(const Value :String): TCaixaMovimento;
begin
  FSituacao := Value;
end;

function TCaixaMovimento.GetSituacao :String;
begin
  Result := FSituacao;
end;

end.

