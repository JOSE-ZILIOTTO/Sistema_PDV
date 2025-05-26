unit SistemaPDV.view.Page.FecharCaixa;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.StdCtrls,
  SistemaPDV.Model.Caixa,
  SistemaPDV.Model.Enum,
  SistemaPDV.Utils,
  SistemaPDV.view.Componente.listaFecharCaixa;

type
  TfrmfecharCAixa = class(TForm)
    pnlprincipal: TPanel;
    pnltop: TPanel;
    pnlsubtitulo: TPanel;
    pnlclient: TPanel;
    pnlcxedtbtn: TPanel;
    pnlmais: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    pnlcomboEdt: TPanel;
    pnlcombox: TPanel;
    pnledt: TPanel;
    cbtipoPagamento: TComboBox;
    Shape2: TShape;
    edtvalorconferencia: TEdit;
    pnlbottonBTn: TPanel;
    pnlcancelar: TPanel;
    pnlconfirmar: TPanel;
    Shape3: TShape;
    Shape4: TShape;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ListBox1: TListBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FProc: Tproc<Tcaixa>;
    FIndex: integer;
    Flista: TfrmlistafecharCaixa;
    procedure RemoveitemLista(Sender: TObject);
  public
    class function new(Aowner: TComponent): TfrmfecharCAixa;
    function Embed(Value: TPanel): TfrmfecharCAixa;
    function informacoes(Value: Tproc<Tcaixa>): TfrmfecharCAixa;

  end;

var
  frmfecharCAixa: TfrmfecharCAixa;

implementation

{$R *.dfm}

function TfrmfecharCAixa.Embed(Value: Tpanel): TfrmfecharCAixa;
begin
  result := self;
  self.addobject(Value);
end;

procedure TfrmfecharCAixa.FormCreate(Sender: TObject);
var
  i: TTipopagamento;
begin
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

procedure TfrmfecharCAixa.FormShow(Sender: TObject);
begin
edtvalorconferencia.SetFocus;
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


procedure TfrmfecharCAixa.SpeedButton1Click(Sender: TObject);
begin

  Inc(FIndex);
  Flista := TfrmlistafecharCaixa.new(self).TipoPagamento(cbtipoPagamento.text).Valor(FormatFloat('#,##0.00', StrToFloat(edtvalorconferencia.Text)))
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
