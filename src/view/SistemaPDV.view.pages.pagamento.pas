unit SistemaPDV.view.pages.pagamento;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  SistemaPDV.Utils,
  SistemaPDV.view.Page.pix,
  SistemaPDV.view.Page.dinheiro,
  SistemaPDV.view.Page.Cartao;

type
  TfrmpagePagamento = class(TForm)
    pnlconteiner: TPanel;
    Shape3: TShape;
    pnlPrincipal: TPanel;
    pnlesquerda: TPanel;
    Panel2: TPanel;
    pnlretornar: TPanel;
    Label15: TLabel;
    Panel3: TPanel;
    Shape1: TShape;
    Panel4: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    Image2: TImage;
    pnltotalreceber: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    pnlacrecimo: TPanel;
    Label4: TLabel;
    Edit2: TEdit;
    pnldesconto: TPanel;
    Label6: TLabel;
    Edit1: TEdit;
    pnltotalvenda: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    pnltotalrecebido: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    pnlsaldorestante: TPanel;
    lblsaldorest: TLabel;
    Label11: TLabel;
    pnltroco: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    plndireita: TPanel;
    pnltopo: TPanel;
    pnlshape: TPanel;
    Shape2: TShape;
    pnltitulo: TPanel;
    Label10: TLabel;
    pnlclient: TPanel;
    pnlescolher: TPanel;
    Label14: TLabel;
    pnllistapagamentos: TPanel;
    pnlcartao: TPanel;
    shapecartao: TShape;
    Panel9: TPanel;
    Image1: TImage;
    pnlbtncartao: TPanel;
    pnlpix: TPanel;
    shapepix: TShape;
    Panel12: TPanel;
    Image3: TImage;
    pnlbtnpix: TPanel;
    pnldinheiro: TPanel;
    shapedinheiro: TShape;
    Panel15: TPanel;
    Image4: TImage;
    pnlbtndinheiro: TPanel;
    pnlshape2: TPanel;
    Shape6: TShape;
    pnlexibir: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlbtncartaoClick(Sender: TObject);
    procedure pnlbtnpixClick(Sender: TObject);
    procedure pnlbtndinheiroClick(Sender: TObject);

  private
    FFrame: TFrame;
    Procedure Setclick(Shape: TShape; Panel: TPanel);
  public
    { Public declarations }
    class function new(Aowner: TComponent): TfrmpagePagamento;
    function embed(Value: TPanel): TfrmpagePagamento;
  end;

var
  frmpagePagamento: TfrmpagePagamento;

implementation

{$R *.dfm}
{ TfrmpagePagamento }

function TfrmpagePagamento.embed(Value: TPanel): TfrmpagePagamento;
begin
  result := self;
  self.addobject(Value)
end;

procedure TfrmpagePagamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      self.RemoveObject;
    VK_F5:
      begin
        if Assigned(FFrame) then
        begin
          FFrame.DisposeOf;
          FFrame := nil;
        end;

        FFrame := TFramecartao.new(self).Alinhamento(alclient).embed(pnlexibir);
        Setclick(shapecartao, pnllistapagamentos);
      end;
    VK_F6:
      begin
        if Assigned(FFrame) then
        begin
          FFrame.DisposeOf;
          FFrame := nil;
        end;

        FFrame := Tfrmqrcode.new(self).Alinhamento(alclient).embed(pnlexibir);
        Setclick(shapepix, pnllistapagamentos);
      end;

    VK_F7:
      begin

        if Assigned(FFrame) then
        begin
          FFrame.DisposeOf;
          FFrame := nil;
        end;

        FFrame := TFramedinheiro.new(self).Alinhamento(alclient).embed(pnlexibir);
        Setclick(shapedinheiro, pnllistapagamentos);
      end;
  end;

end;

class function TfrmpagePagamento.new(Aowner: TComponent): TfrmpagePagamento;
begin
  result := self.Create(Aowner);
end;

procedure TfrmpagePagamento.pnlbtncartaoClick(Sender: TObject);
begin
  if Assigned(FFrame) then
  begin
    FFrame.DisposeOf;
    FFrame := nil;
  end;

  FFrame := TFramecartao.new(self).Alinhamento(alclient).embed(pnlexibir);
  Setclick(shapecartao, pnllistapagamentos);
end;

procedure TfrmpagePagamento.pnlbtndinheiroClick(Sender: TObject);
begin

  if Assigned(FFrame) then
  begin
    FFrame.DisposeOf;
    FFrame := nil;
  end;

  FFrame := TFramedinheiro.new(self).Alinhamento(alclient).embed(pnlexibir);
  Setclick(shapedinheiro, pnllistapagamentos);
end;

procedure TfrmpagePagamento.pnlbtnpixClick(Sender: TObject);
begin
  if Assigned(FFrame) then
  begin
    FFrame.DisposeOf;
    FFrame := nil;
  end;

  FFrame := Tfrmqrcode.new(self).Alinhamento(alclient).embed(pnlexibir);
  Setclick(shapepix, pnllistapagamentos);
end;

procedure TfrmpagePagamento.Setclick(Shape: TShape; Panel: TPanel);
begin
  shapecartao.Pen.Style := psClear;
  shapepix.Pen.Style := psClear;
  shapedinheiro.Pen.Style := psClear;
  Shape.Pen.Style := psSolid;

  Panel.Visible := False;
  Panel.Visible := true;
end;

end.
