unit SistemaPDV.Model.Caixa;

interface

uses
System.SysUtils,
System.TypInfo,
DateUtils,
System.Classes;

type

TTurno = ( Manha, Tarde, Noite);

TTurnoHelper = record helper for  TTurno

function Tostring : String;
function Enum(Value : String) : TTurno;
function RetornaTurno(Value : TDateTime) : TTurno;

end;



 TCaixa = class
   private
   Fid : Integer;
   FCaixa : integer;
    FTurno: TTurno;
    Foperador : string;
    Fsupervisor: string;
    FAberto: Boolean;
    FDataAbertura: TDateTime;
    FSaldoInicial: Currency;
    FDataHoraFechamento: TDateTime;
   public
   property id : Integer read Fid write Fid;
   property Caixa: integer  read FCaixa write FCaixa;
   property Turno: TTurno read FTurno write FTurno;
   property operador : string read Foperador write Foperador;
   property supervisor: string read Fsupervisor write Fsupervisor;
   property Aberto: Boolean read FAberto write FAberto;
   property DataHoraFechamento: TDateTime read FDataHoraFechamento write FDataHoraFechamento;
   property DataAbertura: TDateTime read FDataAbertura write FDataAbertura;
   property SaldoInicial: Currency read FSaldoInicial write FSaldoInicial;
   Class Function new : TCaixa;
 end;

implementation

{ TCaixa }

class function TCaixa.new : TCaixa;
begin
result := self.Create;
end;

{ TTurnoHelper }

function TTurnoHelper.Enum(Value: String): TTurno;
begin
  result := TTurno(GetEnumValue(TypeInfo(TTurno), value))
end;

function TTurnoHelper.RetornaTurno(Value: TDateTime): TTurno;
begin
  if (Hourof(Value) >= 6) and
  (HourOf(Value) <= 11)  then
  result := Manha;

 if (Hourof(Value) >= 12) and
  (HourOf(Value) <= 17)  then
  result := Tarde;

 if (Hourof(Value) >= 18) and
  (HourOf(Value) <= 23)  then
  result := Noite;
end;

function TTurnoHelper.Tostring: String;
begin
  result := GetEnumName(TypeInfo(TTurno), Integer(self));
end;

end.
