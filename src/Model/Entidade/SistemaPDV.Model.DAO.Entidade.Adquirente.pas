unit SistemaPDV.Model.DAO.Entidade.Adquirente;

interface

type
  TAdquirente = class

  private
    FId: integer;
    FIdPos: integer;
    Fdescricao: string;
    FCNPJ: string;
    FMerchantId: string;
    FChaveRequisicao: string;
  public
    class function new: TAdquirente;
    function SetId(Value: integer): TAdquirente;
    function GetId: integer;
    function SetIdPos(Value: integer): TAdquirente;
    function GetIdPos: integer;
    function Setdescricao(Value: string): TAdquirente;
    function Getdescricao: string;
    function SetCNPJ(Value: string): TAdquirente;
    function GetCNPJ: string;
    function SetMerchantId(Value: string): TAdquirente;
    function GetMerchantId: string;
    function SetChaveRequisicao(Value: string): TAdquirente;
    function GetChaveRequisicao: string;
  end;

implementation

{ TAdquirente }

function TAdquirente.GetChaveRequisicao: string;
begin
  result := FChaveRequisicao;
end;

function TAdquirente.GetCNPJ: string;
begin
  result := FCNPJ;
end;

function TAdquirente.Getdescricao: string;
begin
  result := Fdescricao;
end;

function TAdquirente.GetId: integer;
begin
  result := FId;
end;

function TAdquirente.GetIdPos: integer;
begin
  result := FIdPos;
end;

function TAdquirente.GetMerchantId: string;
begin
  result := FMerchantId;
end;

class function TAdquirente.new: TAdquirente;
begin
  result := self.Create;
end;

function TAdquirente.SetChaveRequisicao(Value: string): TAdquirente;
begin
  result := self;
  FChaveRequisicao := Value;

end;

function TAdquirente.SetCNPJ(Value: string): TAdquirente;
begin
  result := self;
  FCNPJ := Value;
end;

function TAdquirente.Setdescricao(Value: string): TAdquirente;
begin
  result := self;
  Fdescricao := Value;
end;

function TAdquirente.SetId(Value: integer): TAdquirente;
begin
  result := self;
  FId := Value;
end;

function TAdquirente.SetIdPos(Value: integer): TAdquirente;
begin
  result := self;
  FIdPos := Value;
end;

function TAdquirente.SetMerchantId(Value: string): TAdquirente;
begin
  result := self;
  FMerchantId := Value;
end;

end.
