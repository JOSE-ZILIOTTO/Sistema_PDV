object frmlistafecharCaixa: TfrmlistafecharCaixa
  Left = 0
  Top = 0
  Width = 500
  Height = 41
  Color = clSilver
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object Shape1: TShape
    AlignWithMargins = True
    Left = 0
    Top = 36
    Width = 500
    Height = 2
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Align = alBottom
    Brush.Color = clGoldenrod
    Pen.Style = psClear
    ExplicitTop = -24
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 36
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object pnlMenosDireita: TPanel
      Left = 472
      Top = 0
      Width = 28
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Color = clSilver
      Padding.Left = 3
      Padding.Top = 7
      Padding.Right = 3
      Padding.Bottom = 7
      ParentBackground = False
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 3
        Top = 7
        Width = 22
        Height = 22
        Align = alClient
        Caption = '-'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = 6
        ExplicitTop = 11
      end
    end
    object pnlesquerda: TPanel
      Left = 0
      Top = 0
      Width = 236
      Height = 36
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Dinheiro'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object pnldireita: TPanel
      Left = 236
      Top = 0
      Width = 236
      Height = 36
      Align = alClient
      BevelOuter = bvNone
      Caption = 'R$15.000,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
  end
end
