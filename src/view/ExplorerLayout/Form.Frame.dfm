object frmItem: TfrmItem
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 481
  Height = 182
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  TabOrder = 0
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 182
    Align = alClient
    BevelOuter = bvNone
    Color = 5589317
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 10
      Top = 10
      Width = 461
      Height = 162
      Align = alClient
      BevelOuter = bvNone
      Color = clGoldenrod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = Panel1Click
      OnMouseEnter = Panel1MouseEnter
      OnMouseLeave = Panel1MouseLeave
      object Label1: TLabel
        Left = 64
        Top = 16
        Width = 67
        Height = 21
        Caption = 'Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5589317
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 64
        Top = 43
        Width = 84
        Height = 28
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 64
        Top = 77
        Width = 49
        Height = 17
        Caption = 'Explorer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5589317
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        Left = 16
        Top = 32
        Width = 25
        Height = 25
        Brush.Color = 5589317
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 288
        Top = 43
        Width = 129
        Height = 9
        Brush.Color = 5589317
        Pen.Color = clGoldenrod
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Shape3: TShape
        Left = 288
        Top = 43
        Width = 60
        Height = 9
        Pen.Color = clGoldenrod
        Pen.Style = psClear
        Shape = stRoundRect
      end
    end
  end
end
