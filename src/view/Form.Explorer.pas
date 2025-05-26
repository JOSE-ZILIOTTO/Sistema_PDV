unit Form.Explorer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Generics.Collections, Form.Frame, Form.produto, Vcl.Buttons;

type
  Tfrmexplorer = class(TForm)
    pnlPrincipal: TPanel;
    pnlmeio: TPanel;
    pnllabel: TPanel;
    pnlinfo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ScrollBox1: TScrollBox;
    pnlDireita: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    ItemLista : TobjectList<TfrmItem>;
  public
    { Public declarations }
  end;

var
  frmexplorer: Tfrmexplorer;

implementation

{$R *.dfm}

procedure Tfrmexplorer.FormCreate(Sender: TObject);
begin
ItemLista := TObjectList<TfrmItem>.Create;
end;

procedure Tfrmexplorer.FormDestroy(Sender: TObject);
begin
FreeAndNil(ItemLista);
end;

procedure Tfrmexplorer.FormShow(Sender: TObject);
var

item1,item2,item3 : Tfrmitem;
  I: Integer;
begin
// item1 := Tfrmitem.Create(nil);
// item1.Align := altop;
// Item1.PanelFrameInjection('Usuarios', Tfrmproduto,pnldireita);
// item1.label1.Caption := 'Usuarios';
// ItemLista.Add(Item1);

 item2 := Tfrmitem.Create(nil);
 item2.Align := altop;
 Item2.PanelFrameInjection('Produtos', Tfrmproduto,pnldireita);
 item2.label1.Caption := 'Produtos';
 ItemLista.Add(item2);

// item3 := Tfrmitem.Create(nil);
// item3.Align := altop;
// Item3.PanelFrameInjection('Clientes', Tfrmproduto,pnldireita);
// item3.label1.Caption := 'Clientes';
// ItemLista.Add(item3);


 for I := 0  to Pred(Itemlista.Count) do
 Itemlista[I].Parent := ScrollBox1;
end;



end.
