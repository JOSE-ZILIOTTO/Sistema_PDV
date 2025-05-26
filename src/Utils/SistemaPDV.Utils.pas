unit SistemaPDV.Utils;

interface
 uses
System.Classes,
Vcl.Forms,
vcl.Controls,
vcl.ExtCtrls;

type
   TFormHelper = class Helper For Tform
public
  Procedure Addobject(Value : Tpanel);
  procedure RemoveObject;

end;


implementation

{ TFormHelper }

procedure TFormHelper.Addobject(Value: Tpanel);
begin
self.ModalResult := mrok;
self.Parent := VAlue;
self.show;
end;

procedure TFormHelper.RemoveObject;
begin
 self.ModalResult := mrnone;
 self.Parent := nil;
 self.Close;
end;

end.
