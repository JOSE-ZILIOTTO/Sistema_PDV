unit SistemaPDV.Model.Enum;

interface
uses
Sysutils,
Typinfo;
type
TTipoPagamento = (Dinheiro,Cartao_debito,Cartao_credito,Pix);

TTipoPagamentoHelper = record helper for TTipoPagamento

function Tostring : String ;
function ToEnum (Value : String) :  TTipoPagamento;

end;

implementation

{ TTipoPagamentoHelper }

function TTipoPagamentoHelper.ToEnum(Value: String): TTipoPagamento;
begin
  result := TTipoPagamento(GetEnumValue(TypeInfo(TTipoPagamento),
  StringReplace(Value,'_',' ',[rfReplaceAll,rfIgnoreCase])));
end;

function TTipoPagamentoHelper.Tostring: String;
begin
   result := StringReplace(GetEnumName(TypeInfo(TTIpoPagamento),integer(self)),'_',' ',
   [rfReplaceAll,rfIgnoreCase]);
end;

end.
