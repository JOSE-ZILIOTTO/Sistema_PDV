unit SistemaPDV.Model.FechamentoCaixa;

interface
uses
SistemaPDV.Model.Caixa;

type

TFechamentoCaixa = class

private
    Fid: integer;
    FCaixa: TCaixa;
    FDinheiro: Double;
    FCataodebito: double;
    FCartaoCredito: double;
    Fpix: double;
    FTotal: double;
public

property id: integer read Fid write Fid;
property Caixa: TCaixa read FCaixa write FCaixa;
property Dinheiro: Double read FDinheiro write FDinheiro;
property Cataodebito: double read FCataodebito write FCataodebito;
property CartaoCredito: double read FCartaoCredito write FCartaoCredito;
property pix: double read Fpix write Fpix;
property Total: double read FTotal write FTotal;
class function new : TFechamentoCaixa;

end;

implementation

{ TFechamentoCaixa }

class function TFechamentoCaixa.new: TFechamentoCaixa;
begin
result := self.Create;
end;

end.
