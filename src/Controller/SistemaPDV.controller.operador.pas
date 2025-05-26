unit SistemaPDV.controller.operador;

interface
uses
SistemaPDV.Model.core.endity.operador;
type

TController = class

private

FOperador : TDmOperador;
public
 constructor Create;
 destructor Destroy; override;
 class function new : TController;
 function operador : TDmOperador;
end;

implementation

{ TController }

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin
   FOperador.Free;
  inherited;
end;

class function TController.new: TController;
begin
result := self.Create ;
end;

function TController.operador: TDmOperador;
begin
   if not (Assigned(FOperador)) then
   FOperador :=  TDmOperador.new;

   result := FOperador;

end;

end.
