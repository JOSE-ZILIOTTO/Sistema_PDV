unit Form.produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmProduto = class(TForm)
    pnlprincipal: TPanel;
    pnltop: TPanel;
    pnlclient: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    shape1: TShape;
    Edit1: TEdit;
    Panel1: TPanel;
    Shape2: TShape;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Shape3: TShape;
    Shape4: TShape;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

end.
