object frmfecharCAixa: TfrmfecharCAixa
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmfecharCAixa'
  ClientHeight = 713
  ClientWidth = 1240
  Color = clGoldenrod
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    1240
    713)
  TextHeight = 15
  object pnlprincipal: TPanel
    Left = 276
    Top = 117
    Width = 673
    Height = 465
    Anchors = []
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object pnltop: TPanel
      Left = 0
      Top = 0
      Width = 673
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Confer'#234'ncia do Caixa'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGoldenrod
      Font.Height = -53
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 609
    end
    object pnlsubtitulo: TPanel
      Left = 0
      Top = 73
      Width = 673
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Informe os valores recebidos no Caixa'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5589317
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 609
    end
    object pnlclient: TPanel
      Left = 0
      Top = 121
      Width = 673
      Height = 344
      Align = alClient
      BevelOuter = bvNone
      Color = clSilver
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 2
      ExplicitWidth = 609
      ExplicitHeight = 304
      object Panel2: TPanel
        Left = 5
        Top = 5
        Width = 663
        Height = 52
        Align = alTop
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 599
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 608
          Top = 3
          Width = 52
          Height = 46
          Align = alRight
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 544
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 52
            Height = 46
            Align = alClient
            Brush.Color = clGoldenrod
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = 1
            ExplicitHeight = 52
          end
          object SpeedButton1: TSpeedButton
            Left = 0
            Top = 0
            Width = 52
            Height = 46
            Align = alClient
            Caption = '+'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton1Click
            ExplicitLeft = 3
            ExplicitTop = -2
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 605
          Height = 52
          Align = alClient
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 1
          ExplicitWidth = 541
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 270
            Height = 52
            Align = alLeft
            BevelOuter = bvNone
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object cbtipoPagamento: TComboBox
              Left = 17
              Top = 9
              Width = 247
              Height = 29
              BevelInner = bvNone
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 270
            Top = 0
            Width = 335
            Height = 52
            Align = alClient
            BevelOuter = bvNone
            Color = clSilver
            Padding.Left = 10
            Padding.Top = 10
            Padding.Right = 10
            Padding.Bottom = 13
            ParentBackground = False
            TabOrder = 1
            ExplicitWidth = 271
            object Shape2: TShape
              Left = 10
              Top = 10
              Width = 315
              Height = 29
              Align = alClient
              Brush.Color = clGoldenrod
              Pen.Style = psClear
              Shape = stRoundRect
              ExplicitLeft = -54
              ExplicitTop = -14
              ExplicitWidth = 257
            end
            object edtvalorconferencia: TEdit
              AlignWithMargins = True
              Left = 13
              Top = 13
              Width = 309
              Height = 23
              Align = alClient
              Alignment = taRightJustify
              BorderStyle = bsNone
              Color = clGoldenrod
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TextHint = 'R$ 0,00'
              ExplicitWidth = 245
            end
          end
        end
      end
      object pnlbuttonBTn: TPanel
        AlignWithMargins = True
        Left = 8
        Top = 293
        Width = 657
        Height = 41
        Margins.Bottom = 5
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 253
        ExplicitWidth = 593
        object Panel7: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 297
          Height = 41
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          object Shape3: TShape
            Left = 0
            Top = 0
            Width = 297
            Height = 41
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = 3
          end
          object SpeedButton2: TSpeedButton
            Left = 0
            Top = 0
            Width = 297
            Height = 41
            Align = alClient
            Caption = 'Cancelar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton2Click
            ExplicitLeft = -3
          end
        end
        object Panel8: TPanel
          Left = 300
          Top = 0
          Width = 357
          Height = 41
          Align = alClient
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 1
          ExplicitWidth = 293
          object Shape4: TShape
            Left = 0
            Top = 0
            Width = 357
            Height = 41
            Align = alClient
            Brush.Color = clGoldenrod
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 293
          end
          object SpeedButton3: TSpeedButton
            Left = 0
            Top = 0
            Width = 357
            Height = 41
            Align = alClient
            Caption = 'Confirmar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton3Click
            ExplicitLeft = 3
            ExplicitTop = 3
            ExplicitWidth = 293
          end
        end
      end
      object ListBox1: TListBox
        Left = 5
        Top = 57
        Width = 663
        Height = 233
        Align = alClient
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clSilver
        ItemHeight = 15
        TabOrder = 2
        ExplicitWidth = 599
        ExplicitHeight = 193
      end
    end
  end
end
