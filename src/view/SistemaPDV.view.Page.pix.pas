unit SistemaPDV.view.Page.pix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfrmqrcode = class(TFrame)
    Panel2: TPanel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    class function New(Aowner: TComponent): Tfrmqrcode;
    function Alinhamento(value: Talign): Tfrmqrcode;
    function Embed(value: TPanel): Tfrmqrcode;
  end;

implementation

{$R *.dfm}

{ Tfrmqrcode }

function Tfrmqrcode.Alinhamento(value: Talign): Tfrmqrcode;
begin
 result := self;
 self.Align := value
end;

function Tfrmqrcode.Embed(value: TPanel): Tfrmqrcode;
begin
   result := self;
   self.Parent := Value;
end;

class function Tfrmqrcode.New(Aowner: TComponent): Tfrmqrcode;
begin
 result := self.Create(aowner);
end;

end.
