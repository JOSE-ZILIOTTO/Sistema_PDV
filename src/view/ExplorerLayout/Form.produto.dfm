object FrmProduto: TFrmProduto
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Right = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FrmProduto'
  ClientHeight = 633
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlprincipal: TPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 633
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    object pnltop: TPanel
      Left = 0
      Top = 0
      Width = 607
      Height = 161
      Align = alTop
      BevelOuter = bvNone
      Color = 5589317
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = -6
      DesignSize = (
        607
        161)
      object Label1: TLabel
        Left = 48
        Top = 16
        Width = 87
        Height = 21
        Caption = 'Cadastro de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 48
        Top = 43
        Width = 95
        Height = 32
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 48
        Top = 81
        Width = 345
        Height = 32
        BevelOuter = bvNone
        Color = 5589317
        ParentBackground = False
        TabOrder = 0
        object shape1: TShape
          Left = 0
          Top = 0
          Width = 345
          Height = 32
          Align = alClient
          Brush.Color = 5589317
          Pen.Color = clWhite
          Shape = stRoundRect
          ExplicitLeft = 128
          ExplicitTop = 8
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object Edit1: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 339
          Height = 26
          Align = alClient
          BorderStyle = bsNone
          Color = 5589317
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'Pesquisar'
        end
      end
      object Panel1: TPanel
        Left = 48
        Top = 119
        Width = 95
        Height = 26
        BevelOuter = bvNone
        Color = 5589317
        ParentBackground = False
        TabOrder = 1
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 95
          Height = 26
          Align = alClient
          Brush.Color = 5589317
          Pen.Color = clWhite
          Shape = stRoundRect
          ExplicitTop = -3
        end
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 95
          Height = 26
          Align = alClient
          Caption = 'Lista Completa'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 3
        end
      end
      object Panel3: TPanel
        Left = 174
        Top = 119
        Width = 95
        Height = 26
        BevelOuter = bvNone
        Color = 5589317
        ParentBackground = False
        TabOrder = 2
        object Shape3: TShape
          Left = 0
          Top = 0
          Width = 95
          Height = 26
          Align = alClient
          Brush.Color = 5589317
          Pen.Color = clWhite
          Shape = stRoundRect
          ExplicitLeft = -25
        end
        object SpeedButton2: TSpeedButton
          Left = 0
          Top = 0
          Width = 95
          Height = 26
          Align = alClient
          Caption = 'Grupos'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 3
        end
      end
      object Panel4: TPanel
        Left = 275
        Top = 119
        Width = 95
        Height = 26
        BevelOuter = bvNone
        Color = 5589317
        ParentBackground = False
        TabOrder = 3
        object Shape4: TShape
          Left = 0
          Top = 0
          Width = 95
          Height = 26
          Align = alClient
          Brush.Color = 5589317
          Pen.Color = clWhite
          Shape = stRoundRect
          ExplicitLeft = 16
        end
        object SpeedButton3: TSpeedButton
          Left = 0
          Top = 0
          Width = 95
          Height = 26
          Align = alClient
          Caption = 'Exclu'#237'dos'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 3
        end
      end
      object Panel5: TPanel
        Left = 414
        Top = 16
        Width = 185
        Height = 41
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = 8307310
        ParentBackground = False
        TabOrder = 4
        object Label3: TLabel
          Left = 16
          Top = 8
          Width = 98
          Height = 21
          Caption = 'Novo Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Panel6: TPanel
          Left = 128
          Top = 0
          Width = 57
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          Color = 8307310
          ParentBackground = False
          TabOrder = 0
          object Label4: TLabel
            Left = 16
            Top = 0
            Width = 18
            Height = 37
            Alignment = taCenter
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object pnlclient: TPanel
      Left = 0
      Top = 161
      Width = 607
      Height = 472
      Align = alClient
      BevelOuter = bvNone
      Color = 5589317
      Padding.Left = 15
      Padding.Top = 15
      Padding.Right = 15
      Padding.Bottom = 15
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 151
      ExplicitHeight = 488
      object DBGrid1: TDBGrid
        Left = 15
        Top = 15
        Width = 577
        Height = 442
        Align = alClient
        BorderStyle = bsNone
        Color = 5589317
        DataSource = DataSource1
        FixedColor = 5589317
        GradientEndColor = 5589317
        GradientStartColor = 5589317
        Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        StyleElements = []
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ClientDataSet1
    Left = 496
    Top = 96
  end
end
