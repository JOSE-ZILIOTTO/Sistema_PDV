unit SistemaPDV.view.Page.identificar.cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,SistemaPDV.Utils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList;

type
  Tfrmidentificarcliente = class(TForm)
    pnlidentificacaocliente: TPanel;
    Panel1: TPanel;
    pnlnome: TPanel;
    lblnome: TLabel;
    Shape1: TShape;
    Edtnome: TEdit;
    Panel4: TPanel;
    edtcpfcnpj: TEdit;
    lblcpf: TLabel;
    ImageList1: TImageList;
    Shape3: TShape;
    Panel2: TPanel;
    btnconfirmar: TButton;
    btnpesquisar: TButton;
    Shape2: TShape;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnconfirmarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FProc: TProc<String, String>;
  public
    { Public declarations }
    class function new(AOWner: TComponent): Tfrmidentificarcliente;
    function Embed(Value: TPanel): Tfrmidentificarcliente;
    function identificarcpf: Tfrmidentificarcliente;
    function exibircomnome: Tfrmidentificarcliente;
    function identificarcliente(Value: TProc<String, String>): Tfrmidentificarcliente;
  end;

var
  frmidentificarcliente: Tfrmidentificarcliente;

implementation

{$R *.dfm}

procedure Tfrmidentificarcliente.btnconfirmarClick(Sender: TObject);
begin
  if Assigned(FProc) then
    FProc(edtcpfcnpj.Text, Edtnome.Text);
     self.RemoveObject;
end;

function Tfrmidentificarcliente.Embed(Value: TPanel): Tfrmidentificarcliente;
begin
 result := self;
 self.addobject(Value);
end;

function Tfrmidentificarcliente.exibircomnome: Tfrmidentificarcliente;
begin
  result := self;
end;

procedure Tfrmidentificarcliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F2: showmessage('Pesquisar Cliente')
      ;
    Vk_F5: btnconfirmarClick(SENDER);
    VK_ESCAPE:
      self.RemoveObject;

  end;
end;

procedure Tfrmidentificarcliente.FormResize(Sender: TObject);
var
  LHeight, Lwidgth: integer;
begin
//
//  LHeight := round((self.Height - pnlidentificacaocliente.Height) / 2);
//  Lwidgth := round((self.Width - pnlidentificacaocliente.Width) / 2);
//
//  pnlidentificacaocliente.Margins.Left := Lwidgth;
//  pnlidentificacaocliente.Margins.Right := Lwidgth;
//  pnlidentificacaocliente.Margins.Top := LHeight;
//  pnlidentificacaocliente.Margins.Bottom := LHeight;
//  pnlidentificacaocliente.Align := alClient;
end;

procedure Tfrmidentificarcliente.FormShow(Sender: TObject);
begin
  edtcpfcnpj.SetFocus;
end;

function Tfrmidentificarcliente.identificarcliente(Value: TProc<String, String>): Tfrmidentificarcliente;
begin
  result := self;
  FProc := Value;
end;

function Tfrmidentificarcliente.identificarcpf: Tfrmidentificarcliente;
begin
  result := self;
  pnlnome.Visible := false;
  Shape3.Visible := false;
  Shape2.Visible := false;
  pnlidentificacaocliente.Height := (pnlidentificacaocliente.Height - pnlnome.Height);

end;

class function Tfrmidentificarcliente.new(AOWner: TComponent): Tfrmidentificarcliente;
begin
  result := self.Create(AOWner);
end;

end.
