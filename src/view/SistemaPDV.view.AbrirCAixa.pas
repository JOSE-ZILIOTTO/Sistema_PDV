unit SistemaPDV.view.AbrirCAixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  SistemaPDV.Model.Caixa,SistemaPDV.Utils;

type
  Tfrmabrircaixa = class(TForm)
    pnlprincipal: TPanel;
    pnltop: TPanel;
    pnlsubtitulo: TPanel;
    pnlclient: TPanel;
    pnlmeio: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Shape1: TShape;
    edtvalorsuprimento: TEdit;
    Shape2: TShape;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FProc : Tproc<Tcaixa>;
    procedure responsive;
  public
    { Public declarations }
    class function new (Aowner : TComponent) : Tfrmabrircaixa;
    function Embed (Value : Tpanel) : Tfrmabrircaixa;
    function informacoes (Value : Tproc<TCaixa>) : Tfrmabrircaixa;
  end;

var
  frmabrircaixa: Tfrmabrircaixa;

implementation

{$R *.dfm}

function Tfrmabrircaixa.Embed(Value: Tpanel): Tfrmabrircaixa;
begin
 result := self;
 self.addobject(Value);
end;

procedure Tfrmabrircaixa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key = Vk_Escape then
self.RemoveObject
else if key = VK_RETURN then
 begin
 if edtvalorsuprimento <> nil then
 SpeedButton1.Click;
 end;



end;

procedure Tfrmabrircaixa.FormResize(Sender: TObject);
begin
//responsive;
end;

procedure Tfrmabrircaixa.FormShow(Sender: TObject);
begin
//responsive;
edtvalorsuprimento.SetFocus;
end;

function Tfrmabrircaixa.informacoes(Value: Tproc<TCaixa>): Tfrmabrircaixa;
begin
result := self;
FProc := Value;
end;

class function Tfrmabrircaixa.new(Aowner: TComponent): Tfrmabrircaixa;
begin
 result := self.Create(Aowner);
end;

procedure Tfrmabrircaixa.responsive;
begin
//pnlprincipal.Margins.Left := round((self.Width - pnlprincipal.Width)/2);
//pnlprincipal.Margins.Right := round((self.Width - pnlprincipal.Width)/2);
//pnlprincipal.Margins.top:= round((self.Height - pnlprincipal.Height)/2);
//pnlprincipal.Margins.Bottom := round((self.Height - pnlprincipal.Height)/2);
//pnlprincipal.Align := Alclient;

end;

procedure Tfrmabrircaixa.SpeedButton1Click(Sender: TObject);
var
LCaixa : TCaixa;
LTurno : TTurno;
LData : TDateTime;
begin
 Ldata := now;
 lCaixa := TCaixa.new;
 try
   LCaixa.id := 1;
   LCaixa.caixa := 1;
   LCaixa.Turno := Lturno.RetornaTurno(Ldata);
   lcaixa.Aberto := true;
   LCaixa.DataAbertura := Ldata;
   LCaixa.SaldoInicial := StrToCurr(StringReplace(edtvalorsuprimento.Text, 'R$ ', '', [rfReplaceAll,rfIgnoreCase]));
   FProc(LCaixa);
 finally
    Lcaixa.DisposeOf;
    self.Removeobject;
 end;
end;

end.
