unit SistemaPDV.view.Componente.listaItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfrmlistbox = class(TFrame)
    Panel2: TPanel;
    Shape1: TShape;
    pnlitems: TPanel;
    pnldescricoes: TPanel;
    pnltotais: TPanel;
    pnlquantidades: TPanel;
    pnlvalores: TPanel;
    pnlcodigos: TPanel;
    Label1: TLabel;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
    Fproc : Tproc<Tobject>;
    FValorUnitario : double;
    FQuantidade : double;
  public
    { Public declarations }
    class function new (Aowner : Tcomponent) :  Tfrmlistbox;
    function embed (Value : Twincontrol) : Tfrmlistbox;
    function item (value : string) : Tfrmlistbox;
    function codigo (value : string ) : Tfrmlistbox;
    function ValorUN (value : double) : Tfrmlistbox;
    function Quantidade( value: double) : Tfrmlistbox;
    function subtotal (value : double) : Tfrmlistbox;
    function descricao (value : string) :Tfrmlistbox;
    function alinhamento (value : TAlign) : Tfrmlistbox;
    function Nome (Value : string) : Tfrmlistbox;
    function Click (VAlue : Tproc<Tobject>) : Tfrmlistbox;
    function build : Tfrmlistbox;
    procedure responsive;
  end;

implementation

{$R *.dfm}

{ Tfrmlistbox }

function Tfrmlistbox.alinhamento(value: TAlign): Tfrmlistbox;
begin
result := self;
self.Align := albottom;
self.align := value;
end;

function Tfrmlistbox.build: Tfrmlistbox;
begin
  result := self;
  pnltotais.Caption := formatcurr('"R$",0.000' , (FQuantidade*FValorUnitario));
end;

function Tfrmlistbox.Click(VAlue: Tproc<Tobject>): Tfrmlistbox;
begin
result := self;
Fproc := value;
end;

function Tfrmlistbox.codigo(value: string): Tfrmlistbox;
begin
 result := self;
 pnlcodigos.Caption := value;
end;

function Tfrmlistbox.descricao(value: string): Tfrmlistbox;
begin
 result := self;
 if length(value)> 10 then
 pnldescricoes.Padding.Top := 0 ;
 label1.Caption := value;
end;

function Tfrmlistbox.embed(Value: Twincontrol): Tfrmlistbox;
begin
  result := self;
  self.Parent := value;
end;

procedure Tfrmlistbox.FrameResize(Sender: TObject);
begin
responsive;
end;

function Tfrmlistbox.item(value: string): Tfrmlistbox;
begin
  result := self ;
  pnlitems.Caption := value;
end;

class function Tfrmlistbox.new(Aowner: Tcomponent): Tfrmlistbox;
begin
   result := self.Create(aowner);
end;

function Tfrmlistbox.Nome(Value: string): Tfrmlistbox;
begin
     result := self;
     self.name := value;
end;

function Tfrmlistbox.Quantidade(value: double): Tfrmlistbox;
begin
 result := self;
 FQuantidade := value;
 pnlquantidades.Caption := formatfloat(',0.000' ,FQuantidade);
end;

procedure Tfrmlistbox.responsive;
var
  Largura: Integer;
begin
  Largura := Round(panel2.Width * 0.15
  );

  pnlitems.Align := alleft;
  pnlitems.Height := 40;
  pnlitems.Margins.Top := 8;
  pnlitems.Margins.Bottom := 8;
  pnlitems.Width := Largura;
  pnlitems.Margins.Left := (panel2.Width - Largura) div 2;
  pnlitems.Margins.Right := pnlitems.Margins.Left;


  pnlcodigos.Align := alleft;
  pnlcodigos.Height := 40;
  pnlcodigos.Margins.Top := 8;
  pnlcodigos.Margins.Bottom := 8;
  pnlcodigos.Width := Largura;
  pnlcodigos.Margins.Left := (panel2.Width - Largura) div 2;
  pnlcodigos.Margins.Right := pnlcodigos.Margins.Left;


  pnlvalores.Align := alleft;
  pnlvalores.Height := 40;
  pnlvalores.Margins.Top := 8;
  pnlvalores.Margins.Bottom := 8;
  pnlvalores.Width := Largura;
  pnlvalores.Margins.Left := (panel2.Width - Largura) div 2;
  pnlvalores.Margins.Right := pnlvalores.Margins.Left;


  pnlquantidades.Align := alleft;
  pnlquantidades.Height := 40;
  pnlquantidades.Margins.Top := 8;
  pnlquantidades.Margins.Bottom := 8;
  pnlquantidades.Width := Largura;
  pnlquantidades.Margins.Left := (panel2.Width - Largura) div 2;
  pnlquantidades.Margins.Right := pnlquantidades.Margins.Left;


  pnltotais.Align := alleft;
  pnltotais.Height := 40;
  pnltotais.Margins.Top := 8;
  pnltotais.Margins.Bottom := 8;
  pnltotais.Width := Largura;
  pnltotais.Margins.Left := (panel2.Width - Largura) div 2;
  pnltotais.Margins.Right := pnltotais.Margins.Left;


  pnldescricoes.Align := alleft;
  pnldescricoes.Height := 40;
  pnldescricoes.Margins.Top := 8;
  pnldescricoes.Margins.Bottom := 8;
  pnldescricoes.Width := Largura;
  pnldescricoes.Margins.Left := (panel2.Width - Largura) div 2;
  pnldescricoes.Margins.Right := pnldescricoes.Margins.Left;


end;

function Tfrmlistbox.subtotal(value: double): Tfrmlistbox;
begin


end;

function Tfrmlistbox.ValorUN(value: double): Tfrmlistbox;
begin
    result := self;
    FValorUnitario := value;
  pnlvalores.Caption := formatcurr('"R$",0.00' ,FValorUnitario);
end;

end.
