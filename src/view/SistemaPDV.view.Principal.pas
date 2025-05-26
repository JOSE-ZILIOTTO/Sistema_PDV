unit SistemaPDV.view.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Generics.Collections,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Skia, Data.DB, Vcl.Grids,
  Vcl.DBGrids,
  SistemaPDV.view.pages.pagamento,
  SistemaPDV.view.pages.login,
  Vcl.WinXCtrls,
  SistemaPDV.view.Page.identificar.cliente,
  SistemaPDV.view.Page.importar.cliente,
  SistemaPDV.view.Page.AbrirCAixa,
  SistemaPDV.Model.Caixa,
  SistemaPDV.Utils,
  SistemaPDV.view.Page.FecharCAixa,
  SistemaPDV.view.pages.Supervisor.Gerente,
  SistemaPDV.view.Componente.listaItem,
  SistemaPDV.Model.conexao,
  SistemaPDV.view.Componente.Mensagem,
  SistemaPDV.Model.conexao.configuracao,
  SistemaPDV.controller.operador;

type
  TfmPrincipal = class(TForm)
    Ppnlprincipal: TPanel;
    pnltitulo: TPanel;
    pnlbottom: TPanel;
    pnlAlclient: TPanel;
    pnlesquerda: TPanel;
    pnlmaisfuncoes: TPanel;
    Shape1: TShape;
    btnmaisfuncoes: TSpeedButton;
    pnlcancelaritems: TPanel;
    Shape2: TShape;
    btncancelaritem: TSpeedButton;
    pnlcancelarvenda: TPanel;
    Shape3: TShape;
    btncancelarvenda: TSpeedButton;
    pnlAbiricaixa: TPanel;
    Shape4: TShape;
    btnAbrirCaixa: TSpeedButton;
    pnlconsultarpreco: TPanel;
    Shape5: TShape;
    btnconsultarpreco: TSpeedButton;
    pnlcancelaroperacao: TPanel;
    Shape6: TShape;
    btncancelarope: TSpeedButton;
    pnlimage: TPanel;
    Image1: TImage;
    pnltotalcompra: TPanel;
    Shape7: TShape;
    Label1: TLabel;
    lbltotalcompra: TLabel;
    pnlsubtotal: TPanel;
    Shape8: TShape;
    lblsubtotal: TLabel;
    Label3: TLabel;
    pnlpreco: TPanel;
    Shape9: TShape;
    lblpreco: TLabel;
    pnlquantidade: TPanel;
    Shape10: TShape;
    pnlproduto: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtproduto: TEdit;
    edtquantidade: TEdit;
    pnlMarge: TPanel;
    SplitViewopcoes: TSplitView;
    pnlsuprimento: TPanel;
    Shape11: TShape;
    pnldescontoitem: TPanel;
    Shape12: TShape;
    pnlmultiplicar: TPanel;
    Shape13: TShape;
    pnlnovavenda: TPanel;
    Shape14: TShape;
    pnlfecharvenda: TPanel;
    Shape15: TShape;
    pnlimportarcliente: TPanel;
    Shape16: TShape;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Shape17: TShape;
    pnlinformarcpf: TPanel;
    Shape18: TShape;
    SpeedButton7: TSpeedButton;
    pnlidentificacliente: TPanel;
    lblteste: TLabel;
    Label2: TLabel;
    pnlgrid: TPanel;
    pnlgridtop: TPanel;
    pnlcodigo: TPanel;
    pnlitem: TPanel;
    pnltotal: TPanel;
    pnlquantidadegrid: TPanel;
    pnlvalor: TPanel;
    pnldescricao: TPanel;
    pnllistbox: TPanel;
    Shape19: TShape;
    ScrollBox1: TScrollBox;
    SplitViewConfig: TSplitView;
    pnlprincipalSplit: TPanel;
    pnlpassword: TPanel;
    pnledtpassword: TPanel;
    Shape20: TShape;
    edtpassword: TEdit;
    lblpassword: TLabel;
    pnldriveid: TPanel;
    lbldriveid: TLabel;
    pnledtdriveid: TPanel;
    Shape21: TShape;
    edtdriveid: TEdit;
    pnlUserNAme: TPanel;
    lblusername: TLabel;
    pnledtusername: TPanel;
    Shape22: TShape;
    edtusername: TEdit;
    pnlcaminhodb: TPanel;
    lblcaminhodb: TLabel;
    pnledtcaminhodb: TPanel;
    Shape23: TShape;
    edtCaminhoDB: TEdit;
    pnlCadastrar: TPanel;
    Shape24: TShape;
    btncadastrarconfig: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnmaisfuncoesClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure edtprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtquantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure btncadastrarconfigClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    Flogin: Tfrmlogin;
    FCaixa: TDictionary<String, String>;
    Findex: Integer;
    FTotal: currency;
    FController : TController;
    Procedure Confirmar(Sender: TObject);
    procedure Montarbotoes;
    procedure SplitviewAction(Value: TSplitView);
    procedure configSplit(Value: TSplitView);
    procedure ajustarCampos;
    procedure VerificaCaixaFechadoAberto;
    procedure iformacoesdoOperador;
    procedure Responsive;

  public

  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

procedure TfmPrincipal.ajustarCampos;
begin
  edtproduto.Text := '';
  lblpreco.Caption := FormatCurr('"R$ ", 0.00', 0);
  edtquantidade.Text := FormatFloat('0.000', 0);
  lblsubtotal.Caption := FormatCurr('"R$ ", 0.00', 0);
  lbltotalcompra.Caption := FormatCurr('"R$ ", 0.00', 0);
  pnltitulo.SetFocus;
end;

procedure TfmPrincipal.btncadastrarconfigClick(Sender: TObject);
var
  LConf: TConfiguracao;
begin
  LConf := TConfiguracao.new(ExtractFilePath(ParamStr(0)));
  try
    LConf.SetDataBase(edtCaminhoDB.Text)
    .SetUserName(edtusername.Text)
    .SetDriveId(edtdriveid.Text)
    .SetPassword(edtpassword.Text)
    .Build;

    TfrmMensagem.new(self).Mensagem('Banco Cadastrado com sucesso!', informacao).Embed(pnlMarge);
    configSplit(SplitViewConfig);
    TConexao.Create(Application);
  finally
    LConf.Free;
  end;
end;

procedure TfmPrincipal.btnmaisfuncoesClick(Sender: TObject);
begin
  SplitviewAction(SplitViewopcoes)
end;

procedure TfmPrincipal.configSplit(Value: TSplitView);
begin
  SplitViewConfig.Opened := not SplitViewConfig.Opened;
end;

procedure TfmPrincipal.Confirmar(Sender: TObject);
var
  LTurno: TTurno;
  Ldata: TDateTime;
begin

//  Ldata := now;
//  FCaixa.id := 1;
//  FCaixa.Caixa := 1;
//  FCaixa.Turno := LTurno.RetornaTurno(Ldata);
//  FCaixa.Aberto := true;
//  FCaixa.DataAbertura := Ldata;
//  lblteste.Caption := ' | Valor Caixa: ' + FormatCurr('"R$ "#,##0.00', FCaixa.SaldoInicial) + ' | Caixa: ' +
//    inttostr(FCaixa.Caixa) + ' | Turno: ' + FCaixa.Turno.ToString + ' ' + Datetimetostr(FCaixa.DataAbertura);
  VerificaCaixaFechadoAberto;

end;

procedure TfmPrincipal.edtprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  begin
//    if not FCaixa.Aberto then
//    begin
//      Key := #0;
//      edtproduto.Clear;
//      edtproduto.SetFocus;
//      TfrmMensagem.new(self).Mensagem('O caixa deve estar aberto!', Informacao).Embed(pnlMarge)
//        .ClickConfirmar(Confirmar);
//      Exit;
//    end;


    case Key of
      '.', ',':
        begin
          Key := ',';
          if pos(',', edtproduto.Text) > 0 then
            Key := #0;
        end;

      '*':
        begin
          if pos('*', edtproduto.Text) > 0 then
            Key := #0;
        end;

      '/':
        begin
          TfrmMensagem.new(self).Mensagem('Nenhuma balança Configurada', Informacao).Embed(pnlMarge);
        end;

    end;
  end;
end;

procedure TfmPrincipal.edtquantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtproduto.SetFocus;
end;

procedure TfmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Flogin.Free;
  FCaixa.Free;
end;

procedure TfmPrincipal.FormCreate(Sender: TObject);
begin
FController := TController.new;
end;

procedure TfmPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LKeyEvent: TKeyevent;
  I: Integer;

begin
  for I := Pred(pnlMarge.ControlCount) downto 0 do
  begin
    if ((pnlMarge.Controls[I] is TForm) and (TForm(pnlMarge.Controls[I]).ModalResult = MRok)) then
    begin
      if ((TForm(pnlMarge.Controls[I]).KeyPreview) and (Assigned(LKeyEvent))) then
      begin
        LKeyEvent := TForm(pnlMarge.Controls[I]).OnKeyDown;
        LKeyEvent(Sender, Key, Shift);
        Exit;
      end;
    end;
  end;

  if ((Shift = [ssCTRL]) and (Key = VK_MULTIPLY)) THEN
  BEGIN
    edtquantidade.Clear;
    edtquantidade.SetFocus;
  END;

  if ((Shift = [ssCTRL]) and (Key = VK_F1)) THEN
  begin
    configSplit(SplitViewConfig);
    Exit;
  end;

  case Key of
    VK_Escape:
      self.RemoveObject;
    VK_F2:
      begin

        Tfrmabrircaixa.new(self).Embed(pnlMarge).informacoes(
          procedure(Value: TCaixa)
          begin

//            if not Assigned(FCaixa) then
//              FCaixa := TCaixa.new;
//
//            FCaixa.id := Value.id;
//            FCaixa.Caixa := Value.Caixa;
//            FCaixa.Turno := Value.Turno;
//            FCaixa.Aberto := Value.Aberto;
//            FCaixa.DataAbertura := Value.DataAbertura;
//            FCaixa.SaldoInicial := Value.SaldoInicial;
//            lblteste.Caption := ' | Valor Caixa: ' + FormatCurr('"R$ "#,##0.00', FCaixa.SaldoInicial) + ' | Caixa: ' +
//              inttostr(FCaixa.Caixa) + ' | Turno: ' + FCaixa.Turno.ToString + ' ' + Datetimetostr(FCaixa.DataAbertura);
//            VerificaCaixaFechadoAberto;
//            edtproduto.SetFocus;
          end);

      end;
    VK_F6:
      TfrmMensagem.new(self).Mensagem('Cancelar venda', alerta).Embed(pnlMarge);
    VK_F5:
      TfrmMensagem.new(self).Mensagem('Cancelar item', alerta).Embed(pnlMarge);
    VK_F12:
      btnmaisfuncoes.OnClick(Sender);
    VK_F4:
      Begin
        TfrmfecharCAixa.new(self).Embed(pnlMarge).informacoes(
          procedure(Value: TCaixa)
          begin
//
//            if not Assigned(FCaixa) then
//              FCaixa := TCaixa.new;
//
//            FCaixa.Aberto := Value.Aberto;
//            FCaixa.DataHoraFechamento := Value.DataHoraFechamento;
//            VerificaCaixaFechadoAberto;
//            lblteste.Caption := '';
          end);
      end;
    VK_F7:
      begin
        TfrmpagePagamento.new(self).Embed(pnlMarge);
      end;
    VK_F1:
      begin
        Tfrmimportarcliente.new(self).Embed(pnlMarge);
      end;

    VK_F9:
      begin
        Tfrmidentificarcliente.new(self).identificarcpf.Embed(pnlMarge).identificarcliente(
          procedure(aCPF, aCliente: string)
          begin
            if not aCliente.IsEmpty then
              aCliente := 'Cliente' + aCliente;

            if not aCPF.IsEmpty then
              aCPF := 'CPF - ' + aCPF;

            if ((not aCPF.IsEmpty) or (not aCliente.IsEmpty)) then
              Label2.Visible := true;
            Label2.Caption := aCPF + ' ' + aCliente;

          end)

      end;

    Vk_F11:
      begin
        TfrmSupervisorGerente.new(self).Embed(pnlMarge);
      end;
  end;

end;

procedure TfmPrincipal.FormResize(Sender: TObject);
begin
  Responsive;
end;

procedure TfmPrincipal.FormShow(Sender: TObject);
begin

  Tfrmlogin.new(self).Informacao(
    procedure(Value: string)

    begin

    FCaixa := FController.operador.NumeroCaixaTurno('Caixa 1');
//      if not Assigned(FCaixa) then
//        FCaixa := TCaixa.new;
//      FCaixa.Operador := Value;
      VerificaCaixaFechadoAberto;
    end).Show;
end;

procedure TfmPrincipal.iformacoesdoOperador;
var
  LCaption, Loperador: string;
begin
   FCaixa.Items['idoperador'];
//  Loperador := 'Caixa ' + FCaixa.Caixa.ToString + ' | Operador: ' + FCaixa.Operador + ' | Turno: ' +
//    FCaixa.Turno.ToString + ' ' + datetostr(FCaixa.DataAbertura);
//
//  LCaption := StringOfChar(' ', (255 - (Length(self.Caption) + Length(Loperador))));
//
//  self.Caption := self.Caption + LCaption + Loperador;

end;

procedure TfmPrincipal.Montarbotoes;
begin
  btncancelarope.Caption := 'Cancelar Operação' + ''#13'' + '(ESC)';
  btnAbrirCaixa.Caption := 'Abrir Caixa' + ''#13'' + '(F2)';
  btncancelarvenda.Caption := 'Cancelar Venda' + ''#13'' + '(F6)';
  btncancelaritem.Caption := 'Cancelar Item' + ''#13'' + '(F5)';
  btnmaisfuncoes.Caption := 'Mais Funções' + ''#13'' + '(F12)';
  btnconsultarpreco.Caption := 'Fechar Caixa' + ''#13'' + '(F4)';
end;

procedure TfmPrincipal.Responsive;
var
  Largura: Integer;
begin
  Largura := Round(pnlgridtop.Width * 0.15);

  pnlitem.Align := alleft;
  pnlitem.Height := 40;
  pnlitem.Margins.Top := 8;
  pnlitem.Margins.Bottom := 8;
  pnlitem.Width := Largura;
  pnlitem.Margins.Left := (pnlgridtop.Width - Largura) div 2;
  pnlitem.Margins.Right := pnlitem.Margins.Left;

  pnlcodigo.Align := alleft;
  pnlcodigo.Height := 40;
  pnlcodigo.Margins.Top := 8;
  pnlcodigo.Margins.Bottom := 8;
  pnlcodigo.Width := Largura;
  pnlcodigo.Margins.Left := (pnlgridtop.Width - Largura) div 2;
  pnlcodigo.Margins.Right := pnlcodigo.Margins.Left;

  pnldescricao.Align := alleft;
  pnldescricao.Height := 40;
  pnldescricao.Margins.Top := 8;
  pnldescricao.Margins.Bottom := 8;
  pnldescricao.Width := Largura;
  pnldescricao.Margins.Left := (pnlgridtop.Width - Largura) div 2;
  pnldescricao.Margins.Right := pnldescricao.Margins.Left;

  pnlvalor.Align := alleft;
  pnlvalor.Height := 40;
  pnlvalor.Margins.Top := 8;
  pnlvalor.Margins.Bottom := 8;
  pnlvalor.Width := Largura;
  pnlvalor.Margins.Left := (pnlgridtop.Width - Largura) div 2;
  pnlvalor.Margins.Right := pnlvalor.Margins.Left;

  pnlquantidadegrid.Align := alleft;
  pnlquantidadegrid.Height := 40;
  pnlquantidadegrid.Margins.Top := 8;
  pnlquantidadegrid.Margins.Bottom := 8;
  pnlquantidadegrid.Width := Largura;
  pnlquantidadegrid.Margins.Left := (pnlgridtop.Width - Largura) div 2;
  pnlquantidadegrid.Margins.Right := pnlquantidadegrid.Margins.Left;

  pnltotal.Align := alleft;
  pnltotal.Height := 40;
  pnltotal.Margins.Top := 8;
  pnltotal.Margins.Bottom := 8;
  pnltotal.Width := Largura;
  pnltotal.Margins.Left := (pnlgridtop.Width - Largura) div 2;
  pnltotal.Margins.Right := pnltotal.Margins.Left;
end;

procedure TfmPrincipal.SplitviewAction(Value: TSplitView);
begin
  SplitViewopcoes.Opened := not SplitViewopcoes.Opened;

end;

procedure TfmPrincipal.VerificaCaixaFechadoAberto;
begin
//  if not FCaixa.Aberto then
//  begin
//    pnltitulo.Caption := ' Caixa Fechado';
//    ajustarCampos;
//    Exit;
//  end;
//  pnltitulo.Caption := 'Caixa Aberto';
//  ajustarCampos;
  iformacoesdoOperador;
end;

end.
