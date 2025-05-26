unit SistemaPDV.view.Page.dinheiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFramedinheiro = class(TFrame)
    pnlprincipal: TPanel;
    pnlvalorrecebido: TPanel;
    Label1: TLabel;
    edtvalorrecebido: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    class function New(Aowner: TComponent): TFramedinheiro;
    function Alinhamento(value: Talign): TFramedinheiro;
    function Embed(value: TPanel): TFramedinheiro;
  end;

implementation

{$R *.dfm}

{ TFramedinheiro }

function TFramedinheiro.Alinhamento(value: Talign): TFramedinheiro;
begin
 result := self;
 self.Align := value
end;

function TFramedinheiro.Embed(value: TPanel): TFramedinheiro;
begin
   result := self;
   self.Parent := Value;
end;

class function TFramedinheiro.New(Aowner: TComponent): TFramedinheiro;
begin
 result := self.Create(aowner);
end;

end.
