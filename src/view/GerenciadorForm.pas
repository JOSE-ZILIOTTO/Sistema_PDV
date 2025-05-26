unit GerenciadorForm;

interface

uses
  System.Classes, Vcl.ExtCtrls, Vcl.Forms, System.Generics.Collections,
  System.SysUtils;

type

  IGerenciadorForm = interface
    ['{D8D918B5-7696-403E-880F-DE137DA89E20}']
    function AddForm(key: string; Value: TComponentClass; const Parent: Tpanel; index: boolean = false)
      : IGerenciadorForm;
    function getform(Value: string): TForm;
    function getformIndex: TForm;
    function RemoveForm(Value: string): IGerenciadorForm;
  end;

  TGerenciadorForm = class(TInterfacedobject, IGerenciadorForm)
  private

    FFormindex: TForm;
    FListaForm: Tobjectdictionary<string, TForm>;

  public

    constructor create;
    destructor destroy; Override;
    Class function new: IGerenciadorForm;
    function AddForm(key: string; Value: TComponentClass; const Parent: Tpanel; index: boolean = false)
      : IGerenciadorForm;
    function getform(Value: string): TForm;
    function getformIndex: TForm;
    function RemoveForm(Value: string): IGerenciadorForm;

  end;

  var
  _Gerenciador : IGerenciadorForm;

implementation

{ TGerenciadorForm }

function TGerenciadorForm.AddForm(key: string; Value: TComponentClass; const Parent: Tpanel; index: boolean)
  : IGerenciadorForm;
  var
  aForm : TForm;
begin

  result := self;
  if not FListaForm.TryGetValue(key, aForm) then
  begin
    Application.CreateForm(Value, AForm);
    aForm.Caption := key;
    FListaForm.Add(key,aForm);
  end;

  aForm.Parent := Parent;
  aForm.Show;

  if index then
  FFormindex := aForm;

end;

constructor TGerenciadorForm.create;
begin
    FListaForm:= Tobjectdictionary<string, TForm>.Create;
end;

destructor TGerenciadorForm.destroy;
begin
  freeandnil(FListaForm);
  inherited;
end;

function TGerenciadorForm.getform(Value: string): TForm;
begin
 FListaForm.TryGetValue(VAlue, Result);
end;

function TGerenciadorForm.getformIndex: TForm;
begin
  result := FFormindex;
end;

class function TGerenciadorForm.new: IGerenciadorForm;
begin
  result := self.create;
end;

function TGerenciadorForm.RemoveForm(Value: string): IGerenciadorForm;
var

aForm : TForm;

begin
if FListaForm.TryGetValue(Value,Aform)  then
begin
  aform.Destroy;
  FListaForm.Remove(value);
end;




end;
 initialization
 _Gerenciador := TGerenciadorForm.new;
end.
