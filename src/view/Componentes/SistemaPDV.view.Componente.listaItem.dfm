object frmlistbox: Tfrmlistbox
  Left = 0
  Top = 0
  Width = 896
  Height = 40
  TabOrder = 0
  OnResize = FrameResize
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 896
    Height = 40
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Shape1: TShape
      Left = 0
      Top = 37
      Width = 896
      Height = 3
      Align = alBottom
      Brush.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
      ExplicitTop = 35
      ExplicitWidth = 640
    end
    object pnlitems: TPanel
      Left = 0
      Top = 0
      Width = 79
      Height = 37
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pnldescricoes: TPanel
      Left = 639
      Top = 0
      Width = 250
      Height = 37
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      TabOrder = 1
      object lbldescricao: TLabel
        AlignWithMargins = True
        Left = 8
        Top = 8
        Width = 82
        Height = 21
        Align = alLeft
        Caption = 'lbldescricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object pnlbtnexcluir: TPanel
        Left = 216
        Top = 5
        Width = 34
        Height = 32
        Align = alRight
        BevelOuter = bvNone
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = pnlbtnexcluirClick
      end
    end
    object pnltotais: TPanel
      Left = 511
      Top = 0
      Width = 128
      Height = 37
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '12344543'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object pnlquantidades: TPanel
      Left = 367
      Top = 0
      Width = 144
      Height = 37
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '12344543'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object pnlvalores: TPanel
      Left = 199
      Top = 0
      Width = 168
      Height = 37
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '12344543'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object pnlcodigos: TPanel
      Left = 79
      Top = 0
      Width = 120
      Height = 37
      Align = alLeft
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '12344543'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
end
