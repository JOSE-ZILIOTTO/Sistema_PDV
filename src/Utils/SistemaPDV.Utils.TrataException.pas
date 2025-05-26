unit SistemaPDV.Utils.TrataException;

interface

uses
  Sysutils,
  Vcl.Forms,
  Classes,
  Controls,
  Vcl.Imaging.jpeg, Vcl.Graphics,
  SistemaPDV.view.Componente.Mensagem,
  ExtCtrls;

type
  TException = class
  private
    FLogFile: string;
    FApplicationPath: string;
    FLogPath: string;
    FLogimage: string;
//    procedure GravarImagemFormulario(const aNomeArquivo: string; aformulario: TForm);
    Procedure GravarLog(ainfo, aMensagem: string);
    procedure TrataException(Sender: TObject; E: Exception);
    procedure Tratamensagem(oWner: TComponent; E: Exception);
  public
    constructor Create;

  end;

implementation

{ TException }

constructor TException.Create;
begin
  FApplicationPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  FLogPath := IncludeTrailingPathDelimiter(FApplicationPath + 'Logs');
  FLogimage := IncludeTrailingPathDelimiter(FApplicationPath + 'Image');
  FLogFile := FLogFile + ExtractFileName(ChangeFileExt(ParamStr(0), '')) + '.log';

  ForceDirectories(FLogPath);
  ForceDirectories(FLogimage);

  Application.OnException := TrataException;
end;

//procedure TException.GravarImagemFormulario(const aNomeArquivo: string; aformulario: TForm);
//var
//  LBitmap: TBitmap;
//  LJpg: TJpegImage;
//
//begin
//  LBitmap := TBitmap.Create;
//  LJpg := TJpegImage.Create;
//  try
//    LBitmap.Assign(aformulario.GetFormImage);
//    LJpg.Assign(LBitmap);
//    LJpg.SaveToFile(format('%s\%s.jpg', [FLogimage, aNomeArquivo]));
//  finally
//    LBitmap.free;
//    LJpg.free;
//  end;
//
//end;

procedure TException.GravarLog(ainfo, aMensagem: string);
var
  LArq: Textfile;
begin
  AssignFile(LArq, FLogFile);
  if not FileExists(FLogFile) then
    REwrite(LArq)
  else
    Append(LArq);

  Writeln(LArq, ainfo, aMensagem);
  Closefile(LArq);

end;

procedure TException.TrataException(Sender: TObject; E: Exception);
var
  LDataHora: String;
begin
  LDataHora := FormatDateTime('ddmmyyyyhhmmss', now);

  GravarLog('[Data/Hora........]', FormatDateTime('dd/mm/yyy hh:mm:ss', now));
  GravarLog('[Mensagem........]', E.Message);
  GravarLog('[Classe Exceção...]', E.ClassName);

  if (TComponent(Sender) is TForm) then
    GravarLog('[Formulario......]', TForm(Sender).Name)
  else
    GravarLog('[Formulario......]', TForm(TComponent(Sender).oWner).Name);

  GravarLog('Unit........]', Sender.UnitName);
  GravarLog('[Componente Visual........]', screen.ActiveControl.Name);
  GravarLog('', StringofChar('-', 70));
  GravarLog('', '');

//  GravarImagemFormulario(LDataHora, screen.ActiveForm);
  Tratamensagem(TComponent(Sender).oWner, E);
end;

procedure TException.Tratamensagem(oWner: TComponent; E: Exception);
var
  Lmensagem: TfrmMensagem;
  LPanel: TPanel;
  I: integer;
begin
  Lmensagem := TfrmMensagem.new(oWner);

  if TForm(oWner).Parent <> nil then
    Lmensagem.Embed(TPanel(TForm(oWner).Parent))
  else
  begin
    LPanel := TPanel(TForm(oWner).Controls[0]);

    for I := Pred(LPanel.ControlCount) downto 0 do

      if (LPanel.Controls[I] is TPanel) and (LPanel.Controls[I].Tag = 255) then
        Lmensagem.Embed(TPanel(LPanel.Controls[I]));

  end;

  if E is EAccessViolation then
    Lmensagem.Mensagem('Erro ao acessar um recurso interno do sistema.', Erro).ClickOK(
      procedure(Sender: TObject)
      begin
        //
      end)
      else


  if E is EConvertError then
    Lmensagem.Mensagem('Erro de Conversão de Dados', Erro).ClickOK(
      procedure(Sender: TObject)
      begin
        //
      end)
      else

       if E is EComponentError then
    Lmensagem.Mensagem('O Componente Já Existe', Erro).ClickOK(
      procedure(Sender: TObject)
      begin
        //
      end)
      else
        Lmensagem.Mensagem(e.classname + 'Erro! entre em contato com o suporte.', Erro).ClickOK(
      procedure(Sender: TObject)
      begin
        //
      end);

end;

var
  MInhasExcessoes: TException;

initialization

MInhasExcessoes := TException.Create;

finalization

freeandnil(MInhasExcessoes);

end.
