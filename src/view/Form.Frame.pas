unit Form.Frame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Cards, URoundedButton, Vcl.StdCtrls,
  GerenciadorForm;

type
  TfrmItem = class(TFrame)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    procedure Panel1Click(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
    procedure Panel1MouseLeave(Sender: TObject);
  private
    { Private declarations }
    FInjectkey : string;
    FInjectComponent : TComponentClass;
    FinjectPanel : Tpanel;
  public
    procedure PanelFrameInjection (key : string; Value : TComponentClass; const Parent : TPanel);
  end;

implementation

{$R *.dfm}

{ TfrmItem }




procedure TfrmItem.Panel1Click(Sender: TObject);
begin
 _Gerenciador.AddForm(FInjectkey,FInjectComponent,FinjectPanel);
end;

procedure TfrmItem.Panel1MouseEnter(Sender: TObject);
begin
Panel1.Color := clsilver;
end;

procedure TfrmItem.Panel1MouseLeave(Sender: TObject);
begin
panel1.Color := $0020a5da;
end;

procedure TfrmItem.PanelFrameInjection(key: string; Value: TComponentClass; const Parent: TPanel);
begin
  FInjectkey := key;
  FInjectComponent := Value;
  FinjectPanel := Parent;
end;

end.
