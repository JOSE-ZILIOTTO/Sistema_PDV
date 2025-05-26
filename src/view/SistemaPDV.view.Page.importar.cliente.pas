unit SistemaPDV.view.Page.importar.cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons,SistemaPDV.Utils,
  Vcl.Imaging.pngimage;

type
  Tfrmimportarcliente = class(TForm)
    pnlprincipal: TPanel;
    pnltop: TPanel;
    pnlsair: TPanel;
    Image1: TImage;
    btnsair: TSpeedButton;
    pnllistatitulo: TPanel;
    Imagecliente: TImage;
    pnlpesquisa: TPanel;
    pnldb: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Shape2: TShape;
    edtpesquisar: TSearchBox;
    procedure btnsairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FProc: Tproc<TObject>;
  public
    { Public declarations }
    class function new(Aowner: TComponent): Tfrmimportarcliente;
    function Titulo(Value: string): Tfrmimportarcliente;
    function Image(Value: string): Tfrmimportarcliente;
    function Click(Value: Tproc<TObject>): Tfrmimportarcliente;
    function Embed(Value: TPanel): Tfrmimportarcliente;
  end;

var
  frmimportarcliente: Tfrmimportarcliente;

implementation

{$R *.dfm}
{ Tfrmimportarcliente }

procedure Tfrmimportarcliente.btnsairClick(Sender: TObject);
begin
  self.RemoveObject;
  self.DisposeOf;
end;

function Tfrmimportarcliente.Click(Value: Tproc<TObject>): Tfrmimportarcliente;
begin
  result := self;
  FProc := Value;

end;

function Tfrmimportarcliente.Embed(Value: Tpanel): Tfrmimportarcliente;
begin
  result := self;
  self.Addobject(Value);
end;

procedure Tfrmimportarcliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_escape then
  begin
    self.RemoveObject;
    self.DisposeOf;
  end;

end;

function Tfrmimportarcliente.Image(Value: string): Tfrmimportarcliente;
begin
  result := self;
  Imagecliente.Picture.LoadFromFile(Value)
end;

class function Tfrmimportarcliente.new(Aowner: TComponent): Tfrmimportarcliente;
begin
  result := self.Create(Aowner);
end;

function Tfrmimportarcliente.Titulo(Value: string): Tfrmimportarcliente;
begin
  result := self;
  pnllistatitulo.Caption := Value;
end;

end.
