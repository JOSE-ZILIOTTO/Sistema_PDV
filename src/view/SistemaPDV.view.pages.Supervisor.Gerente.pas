unit SistemaPDV.view.pages.Supervisor.Gerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, SistemaPDV.Utils;

type
  TfrmSupervisorGerente = class(TForm)
    pnlMain: TPanel;
    Shape5: TShape;
    pnlPrincipal: TPanel;
    pnlalclient: TPanel;
    pnlCancelar: TPanel;
    Shape3: TShape;
    btncancelar: TSpeedButton;
    pnlPermitir: TPanel;
    Shape4: TShape;
    btnpermitir: TSpeedButton;
    pnlaoTop: TPanel;
    pnlusuario: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    Shape1: TShape;
    edtusuario: TEdit;
    pnlsenha: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    Shape2: TShape;
    edtsenha: TEdit;
    pnlcaption: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnpermitirClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function New(Aowner: TComponent): TfrmSupervisorGerente;
    function embed(Value: TPanel): TfrmSupervisorGerente;
  end;

var
  frmSupervisorGerente: TfrmSupervisorGerente;

implementation

{$R *.dfm}
{ TfrmSupervisorGerente }

procedure TfrmSupervisorGerente.btncancelarClick(Sender: TObject);
begin
self.RemoveObject;
end;

procedure TfrmSupervisorGerente.btnpermitirClick(Sender: TObject);
begin
self.RemoveObject;
end;

function TfrmSupervisorGerente.embed(Value: TPanel): TfrmSupervisorGerente;
begin
  result := self;
  self.Addobject(Value);
end;

procedure TfrmSupervisorGerente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      self.RemoveObject;
    VK_F5:
      self.RemoveObject;
    VK_F2:
      self.RemoveObject;
  end;
end;

class function TfrmSupervisorGerente.New(Aowner: TComponent): TfrmSupervisorGerente;
begin
  result := self.Create(Aowner);
end;

end.
