unit SistemaPDV.view.Componente.listaFecharCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmlistafecharCaixa = class(TFrame)
    Shape1: TShape;
    pnlPrincipal: TPanel;
    pnlMenosDireita: TPanel;
    SpeedButton1: TSpeedButton;
    pnlesquerda: TPanel;
    pnldireita: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FProc : Tproc<Tobject> ;
  public
    { Public declarations }
    class function New(Aowner : TComponent) : TfrmlistafecharCaixa;
    function embed ( Value : TWincontrol) : TfrmlistafecharCaixa;
    function Nome ( VAlue : String) : TfrmlistafecharCaixa;
    function TipoPagamento (Value : string) : TfrmlistafecharCaixa;
    function Valor (VAlue : string) : TfrmlistafecharCaixa;
    function Click (Value : Tproc<Tobject>) : TfrmlistafecharCaixa;
   function Alinhamento (VAlue : TAlign) :TfrmlistafecharCaixa;
  end;

implementation

{$R *.dfm}

{ TfrmlistafecharCaixa }

function TfrmlistafecharCaixa.Alinhamento(VAlue: TAlign): TfrmlistafecharCaixa;
begin
result := self;
self.Align := albottom;
self.Align := Value;
end;

function TfrmlistafecharCaixa.Click(Value: Tproc<Tobject>): TfrmlistafecharCaixa;
begin
  result := self ;
  FProc := VAlue;
end;

function TfrmlistafecharCaixa.embed(Value: TWincontrol): TfrmlistafecharCaixa;
begin
  result := self;
  self.Parent := Value;
end;

class function TfrmlistafecharCaixa.New(Aowner: TComponent): TfrmlistafecharCaixa;
begin
 result:= self.create(Aowner);
end;

function TfrmlistafecharCaixa.Nome(VAlue: String): TfrmlistafecharCaixa;
begin
  result := self;
  self.Name := Value;
end;

procedure TfrmlistafecharCaixa.SpeedButton1Click(Sender: TObject);
begin
if Assigned(Fproc) then
 FProc(Sender);
end;

function TfrmlistafecharCaixa.TipoPagamento(Value: string): TfrmlistafecharCaixa;
begin
  result := self;
  pnlesquerda.Caption := VAlue;
end;

function TfrmlistafecharCaixa.Valor(VAlue: string): TfrmlistafecharCaixa;
// pnldireita.Caption := Format('R$ %S',[Value]);
var
  texto: string;
begin
  Result := Self;

  if Trim(Value) = '' then
    texto := 'R$ 0,00'
  else
    texto := Format('R$ %s', [Value]);

  pnldireita.Caption := texto;
end;

end.
