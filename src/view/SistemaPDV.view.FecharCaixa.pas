unit SistemaPDV.view.FecharCAixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  SistemaPDV.Model.Caixa, SistemaPDV.Model.Enum,SistemaPDV.Utils,
  SistemaPDV.view.Componente.listaFecharCaixa;

type
  TfrmfecharCAixa = class(TForm)
    pnlprincipal: TPanel;
    pnltop: TPanel;
    pnlsubtitulo: TPanel;
    pnlclient: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cbtipoPagamento: TComboBox;
    Shape2: TShape;
    edtvalorconferencia: TEdit;
    pnlbuttonBTn: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Shape3: TShape;
    Shape4: TShape;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ListBox1: TListBox;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FProc: Tproc<Tcaixa>;
    FIndex: integer;
    Flista: TfrmlistafecharCaixa;
    procedure responsive;
    procedure RemoveitemLista(Sender: TObject);
  public
    { Public declarations }
    class function new(Aowner: TComponent): TfrmfecharCAixa;
    function Embed(Value: TPanel): TfrmfecharCAixa;
    function informacoes(Value: Tproc<Tcaixa>): TfrmfecharCAixa;

  end;

var
  frmfecharCAixa: TfrmfecharCAixa;

implementation

{$R *.dfm}

procedure TfrmfecharCAixa.Button1Click(Sender: TObject);
begin
  if Assigned(edtvalorconferencia) then
    showmessage('adasd');

end;

function TfrmfecharCAixa.Embed(Value: Tpanel): TfrmfecharCAixa;
begin
  result := self;
  self.addobject(Value);
end;

procedure TfrmfecharCAixa.FormCreate(Sender: TObject);
var
  i: TTipopagamento;
begin
  // responsive;
  cbtipoPagamento.Items.Clear;

  for i := Low(TTipopagamento) to High(TTipopagamento) do
    cbtipoPagamento.Items.Add(i.Tostring);

end;

procedure TfrmfecharCAixa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Escape then
  begin
    self.RemoveObject;
    self.DisposeOf;
  end;
end;

procedure TfrmfecharCAixa.FormResize(Sender: TObject);
begin
  // responsive;
end;

procedure TfrmfecharCAixa.FormShow(Sender: TObject);
begin
  // responsive;
end;

function TfrmfecharCAixa.informacoes(Value: Tproc<Tcaixa>): TfrmfecharCAixa;
begin
  result := self;
  FProc := Value;

end;

class function TfrmfecharCAixa.new(Aowner: TComponent): TfrmfecharCAixa;
begin
  result := self.Create(Aowner);
end;

procedure TfrmfecharCAixa.RemoveitemLista(Sender: TObject);
begin
  ListBox1.deleteselected;
  if Assigned(Flista) then
  begin

    Flista.DisposeOf;
    Flista := nil;
    Dec(FIndex);
  end;

end;

procedure TfrmfecharCAixa.responsive;
begin
  // pnlprincipal.Margins.Left := round((self.Width - pnlprincipal.Width)/2);
  // pnlprincipal.Margins.Right := round((self.Width - pnlprincipal.Width)/2);
  // pnlprincipal.Margins.top:= round((self.Height - pnlprincipal.Height)/2);
  // pnlprincipal.Margins.Bottom := round((self.Height - pnlprincipal.Height)/2);
  // pnlprincipal.Align := Alclient;

end;

procedure TfrmfecharCAixa.SpeedButton1Click(Sender: TObject);
begin

  Inc(FIndex);
  Flista := TfrmlistafecharCaixa.new(self).TipoPagamento(cbtipoPagamento.text).Valor(edtvalorconferencia.text)
    .Embed(ListBox1).Nome('Frame' + FIndex.Tostring).Click(RemoveitemLista).Alinhamento(altop);
end;

procedure TfrmfecharCAixa.SpeedButton2Click(Sender: TObject);
begin
  self.RemoveObject;
end;

procedure TfrmfecharCAixa.SpeedButton3Click(Sender: TObject);
Var
  LCaixa: Tcaixa;
  LTurno: TTurno;
  LData: TDateTime;
begin
  LData := now;
  LCaixa := Tcaixa.Create;
  try
    LCaixa.Aberto := false;
    LCaixa.DataHoraFechamento := LData;
    FProc(LCaixa);

  finally
    LCaixa.DisposeOf;
    self.RemoveObject;
  end;

end;

end.
