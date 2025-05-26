unit SistemaPDV.view.pages.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Skia,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, GerenciadorForm, Form.Explorer, SistemaPDV.Utils,
  SistemaPDV.controller.operador;

type
  Tfrmlogin = class(TForm)
    pnlPrincipal: TPanel;
    pnldireita: TPanel;
    pnlcompedding: TPanel;
    pnltituloLogin: TPanel;
    pnlsenha: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    Shape2: TShape;
    edtsenha: TEdit;
    pnlusuario: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    Shape1: TShape;
    edtusuario: TEdit;
    pnlbottomLogin: TPanel;
    pnllogar: TPanel;
    Shape3: TShape;
    btnlogar: TSpeedButton;
    pnlesquerda: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    pnlalclient: TPanel;
    imgBAckground: TImage;
    pnlsemclient: TPanel;
    PNLMEIO: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Image2: TImage;
    Label4: TLabel;
    Panel11: TPanel;
    Shape4: TShape;
    Label5: TLabel;
    Panel12: TPanel;
    pnlbotaosuporte: TPanel;
    Shape5: TShape;
    Panel13: TPanel;
    pnltop: TPanel;
    pnllogo: TPanel;
    Image1: TImage;
    pnltopclient: TPanel;
    Panel1: TPanel;
    Shape6: TShape;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel15: TPanel;
    Panel4: TPanel;
    procedure btnlogarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);

    procedure Panel13MouseEnter(Sender: TObject);
    procedure Panel13MouseLeave(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    FController: TController;
    Fproc: Tproc<string>;
    Procedure MoveShapeItem(Value: TPanel);
  public
    { Public declarations }
    class function New(Aowner: TComponent): Tfrmlogin;
    function embed(Value: TPanel): Tfrmlogin;
    function Informacao(Value: Tproc<string>): Tfrmlogin;
  end;

var
  frmlogin: Tfrmlogin;

implementation

{$R *.dfm}

procedure Tfrmlogin.Panel13MouseEnter(Sender: TObject);
begin
  Panel13.color := clsilver;
  Shape5.brush.color := clsilver;
end;

procedure Tfrmlogin.Panel13MouseLeave(Sender: TObject);
begin
  Panel13.color := $0020A5DA;
  Shape5.brush.color := $0020A5DA;
end;

procedure Tfrmlogin.Panel15Click(Sender: TObject);
begin
  MoveShapeItem(TPanel(Sender));
  // _Gerenciador.AddForm('Explorer',Tfrmexplorer,pnlmeio,true);
end;

procedure Tfrmlogin.Panel4Click(Sender: TObject);
begin
  MoveShapeItem(TPanel(Sender));
  // _Gerenciador.RemoveForm(_Gerenciador.getformIndex.Caption);
end;

procedure Tfrmlogin.btnlogarClick(Sender: TObject);
begin
//   if not((edtusuario.Text = '') and (edtsenha.Text = '')) then
  if not(FController.operador.ValidarOperador(edtusuario.Text, edtsenha.Text)) then
  begin
    showmessage('Login e senha inválidos!');
    exit;
  end;
  ShowMessage('Login OK!');
  close;
end;

function Tfrmlogin.embed(Value: TPanel): Tfrmlogin;
begin
  result := self;
  self.addobject(Value);
end;

procedure Tfrmlogin.FormActivate(Sender: TObject);
begin
  PostMessage(Handle, WM_NEXTDLGCTL, WPARAM(edtusuario.Handle), 1);
end;

procedure Tfrmlogin.FormCreate(Sender: TObject);
begin
  FController := TController.New;
end;

procedure Tfrmlogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) then
    Application.Terminate;
  if Key = #13 then
  begin
    if ActiveControl = edtusuario then
    begin
      Key := #0;
      edtsenha.SetFocus;
    end
    else if ActiveControl = edtsenha then
    begin
      Key := #0;
      btnlogar.Click;
    end;
  end;
end;

procedure Tfrmlogin.FormShow(Sender: TObject);
begin
  // edtusuario.SetFocus;
end;

function Tfrmlogin.Informacao(Value: Tproc<string>): Tfrmlogin;
begin
  result := self;
  Fproc := Value;
end;

procedure Tfrmlogin.MoveShapeItem(Value: TPanel);
begin
  TThread.CreateAnonymousThread(
    procedure
    begin
      while Shape6.Left <> Value.Left do
      begin
        if Shape6.Left > Value.Left then
          Shape6.Left := Shape6.Left - 1
        else
          Shape6.Left := Shape6.Left + 1;
        // Sleep(0)
      end;

    end).Start;
end;

class function Tfrmlogin.New(Aowner: TComponent): Tfrmlogin;
begin
  result := self.Create(Aowner);
end;

end.
