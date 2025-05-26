object frmSupervisorGerente: TfrmSupervisorGerente
  Left = 0
  Top = 0
  Align = alClient
  AlphaBlendValue = 240
  BorderStyle = bsNone
  Caption = 'frmSupervisorGerente'
  ClientHeight = 713
  ClientWidth = 1240
  Color = clGoldenrod
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnKeyDown = FormKeyDown
  DesignSize = (
    1240
    713)
  TextHeight = 15
  object pnlMain: TPanel
    Left = 394
    Top = 157
    Width = 466
    Height = 396
    Anchors = []
    BevelOuter = bvNone
    Color = clGoldenrod
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      466
      396)
    object Shape5: TShape
      Left = 0
      Top = 0
      Width = 466
      Height = 396
      Align = alClient
      Brush.Color = clSilver
      Pen.Style = psClear
      Shape = stRoundRect
      ExplicitLeft = 152
      ExplicitTop = 160
      ExplicitWidth = 65
      ExplicitHeight = 65
    end
    object pnlPrincipal: TPanel
      Left = 31
      Top = 31
      Width = 399
      Height = 331
      Anchors = []
      BevelOuter = bvNone
      Color = clSilver
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 23
      ExplicitTop = 33
      object pnlalclient: TPanel
        AlignWithMargins = True
        Left = 13
        Top = 238
        Width = 373
        Height = 80
        Align = alClient
        Anchors = [akLeft, akRight, akBottom]
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        object pnlCancelar: TPanel
          Left = 0
          Top = 0
          Width = 145
          Height = 80
          Align = alLeft
          Anchors = [akLeft, akBottom]
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          object Shape3: TShape
            Left = 0
            Top = 0
            Width = 145
            Height = 80
            Align = alClient
            Anchors = [akLeft, akRight, akBottom]
            Brush.Color = clGoldenrod
            Pen.Color = clWhite
            Shape = stRoundRect
            ExplicitTop = 16
            ExplicitWidth = 233
            ExplicitHeight = 41
          end
          object btncancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 145
            Height = 80
            Align = alClient
            Anchors = [akLeft, akRight, akBottom]
            Caption = 'Cancelar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btncancelarClick
            ExplicitWidth = 161
            ExplicitHeight = 74
          end
        end
        object pnlPermitir: TPanel
          Left = 236
          Top = 0
          Width = 137
          Height = 80
          Align = alRight
          Anchors = [akRight, akBottom]
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 1
          object Shape4: TShape
            Left = 0
            Top = 0
            Width = 137
            Height = 80
            Align = alClient
            Anchors = [akLeft, akRight, akBottom]
            Brush.Color = clGoldenrod
            Pen.Color = clWhite
            Shape = stRoundRect
            ExplicitTop = 16
            ExplicitWidth = 233
            ExplicitHeight = 41
          end
          object btnpermitir: TSpeedButton
            Left = 0
            Top = 0
            Width = 137
            Height = 80
            Align = alClient
            Anchors = [akLeft, akRight, akBottom]
            Caption = 'Permitir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnpermitirClick
            ExplicitTop = 3
            ExplicitHeight = 90
          end
        end
      end
      object pnlaoTop: TPanel
        Left = 10
        Top = 10
        Width = 379
        Height = 225
        Align = alTop
        BevelOuter = bvNone
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        object pnlusuario: TPanel
          Left = 0
          Top = 65
          Width = 379
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 0
            Top = 0
            Width = 379
            Height = 21
            Align = alTop
            Caption = 'Usuario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5589317
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 54
          end
          object Panel8: TPanel
            Left = 0
            Top = 21
            Width = 379
            Height = 39
            Align = alClient
            BevelOuter = bvNone
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object Shape1: TShape
              Left = 0
              Top = 0
              Width = 379
              Height = 39
              Align = alClient
              Brush.Color = clGoldenrod
              Pen.Color = clWhite
              Shape = stRoundRect
              ExplicitTop = -6
              ExplicitWidth = 239
            end
            object edtusuario: TEdit
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 369
              Height = 29
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = clGoldenrod
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object pnlsenha: TPanel
          Left = 0
          Top = 125
          Width = 379
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          TabOrder = 1
          object Label2: TLabel
            Left = 0
            Top = 0
            Width = 379
            Height = 21
            Align = alTop
            Caption = 'Senha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5589317
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 43
          end
          object Panel7: TPanel
            Left = 0
            Top = 21
            Width = 379
            Height = 39
            Align = alClient
            BevelOuter = bvNone
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object Shape2: TShape
              Left = 0
              Top = 0
              Width = 379
              Height = 39
              Align = alClient
              Brush.Color = clGoldenrod
              Pen.Color = clWhite
              Shape = stRoundRect
              ExplicitLeft = 64
              ExplicitTop = 6
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object edtsenha: TEdit
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 369
              Height = 29
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = clGoldenrod
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              PasswordChar = '*'
              TabOrder = 0
            end
          end
        end
        object pnlcaption: TPanel
          Left = 0
          Top = 0
          Width = 379
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Permitir Supervisor/Gerente'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5589317
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
end
