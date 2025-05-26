object Framedinheiro: TFramedinheiro
  Left = 0
  Top = 0
  Width = 434
  Height = 257
  TabOrder = 0
  object pnlprincipal: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 257
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5589317
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object pnlvalorrecebido: TPanel
      Left = 16
      Top = 90
      Width = 361
      Height = 55
      BevelOuter = bvNone
      Padding.Right = 40
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 227
        Height = 55
        Align = alLeft
        Caption = 'Total Recebido :'
        Color = 5589317
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5589317
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitHeight = 45
      end
      object edtvalorrecebido: TEdit
        Left = 227
        Top = 0
        Width = 94
        Height = 55
        Align = alClient
        Alignment = taRightJustify
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5589317
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0,00'
      end
    end
  end
end
