unit SistemaPDV.view.Componente.Mensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, SistemaPDV.Utils;

type

  TTIpoImagem = (Alerta, Erro, Informacao);

  TfrmMensagem = class(TForm)
    pnlConteiner: TPanel;
    Shape1: TShape;
    pnlmargem: TPanel;
    pnlPrincipal: TPanel;
    pnltop: TPanel;
    Image1: TImage;
    pnlbottom: TPanel;
    pnlconfirmar: TPanel;
    Shape2: TShape;
    btnConfirmar: TSpeedButton;
    pnlcancelar: TPanel;
    Shape3: TShape;
    btncancelar: TSpeedButton;
    pnlok: TPanel;
    Shape4: TShape;
    btnOk: TSpeedButton;
    pnlmensagem: TPanel;
    lblMensagem: TLabel;
    procedure btncancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private

    FProc: TProc<TObject>;
    procedure modelarmensagem(const Mensagem: string; aTipo: TTIpoImagem);
    procedure TipoMensagem(aTipo: TTIpoImagem);
  public
    class function new(Aowner: Tcomponent): TfrmMensagem;
    Function Mensagem(const Mensagem: string; aTipo: TTIpoImagem): TfrmMensagem;
    function Embed(aParent: TPanel): TfrmMensagem;
    function ClickOK(aValue: TProc<TObject>): TfrmMensagem;
    function ClickCancelar(aValue: TProc<TObject>): TfrmMensagem;
    function ClickConfirmar(aValue: TProc<TObject>): TfrmMensagem;

  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}
{ TfrmMensagem }

function TfrmMensagem.ClickCancelar(aValue: TProc<TObject>): TfrmMensagem;
begin
  result := self;
  FProc := aValue;
end;

function TfrmMensagem.ClickConfirmar(aValue: TProc<TObject>): TfrmMensagem;
begin
  result := self;
  FProc := aValue;
end;

function TfrmMensagem.ClickOK(aValue: TProc<TObject>): TfrmMensagem;
begin
  result := self;
  FProc := aValue;
end;

function TfrmMensagem.Embed(aParent: TPanel): TfrmMensagem;
begin
  result := self;
  self.addobject(aParent);
end;

Function TfrmMensagem.Mensagem(const Mensagem: string; aTipo: TTIpoImagem): TfrmMensagem;
begin
  result := self;
  self.modelarmensagem(Mensagem, aTipo);

end;

procedure TfrmMensagem.modelarmensagem(const Mensagem: string; aTipo: TTIpoImagem);
begin
  self.lblMensagem.Caption := Mensagem;
  TipoMensagem(aTipo);
end;

class function TfrmMensagem.new(Aowner: Tcomponent): TfrmMensagem;
begin
  result := self.Create(Aowner);
end;

procedure TfrmMensagem.btnConfirmarClick(Sender: TObject);
begin
  if Assigned(FProc) then
    FProc(Sender);
  self.RemoveObject;
end;

procedure TfrmMensagem.btnOkClick(Sender: TObject);
begin
  if Assigned(FProc) then
    FProc(Sender);
  self.RemoveObject;
end;

procedure TfrmMensagem.btncancelarClick(Sender: TObject);
begin

  self.RemoveObject;
end;

procedure TfrmMensagem.TipoMensagem(aTipo: TTIpoImagem);
begin
  case aTipo of
    Alerta:
      begin
        self.pnltop.Caption := 'Alerta!';
        self.pnlok.Visible := true;
        self.btnOk.Caption := 'OK';
        Image1.Picture.LoadFromFile('C:\Users\SRP2\Documents\JoseProjects\JoseSistemaPDV\img\caution.png');
      end;

    Erro:
      begin
        self.pnltop.Caption := 'Erro';
        self.pnlok.Visible := true;
        self.btnOk.Caption := 'OK';
        Image1.Picture.LoadFromFile('C:\Users\SRP2\Documents\JoseProjects\JoseSistemaPDV\img\error.png');
      end;

    Informacao:
      begin
        self.pnltop.Caption := 'Informação';
        self.pnlcancelar.Visible := true;
        self.pnlconfirmar.Visible := true;
        self.btncancelar.Caption := 'Cancelar';
        self.btnConfirmar.Caption := ' Confirmar';
        Image1.Picture.LoadFromFile('C:\Users\SRP2\Documents\JoseProjects\JoseSistemaPDV\img\information.png');
      end;
  end;
end;

end.
