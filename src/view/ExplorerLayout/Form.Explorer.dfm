object frmexplorer: Tfrmexplorer
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmexplorer'
  ClientHeight = 713
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 713
    Align = alClient
    BevelOuter = bvNone
    Color = clGoldenrod
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1240
    object pnlmeio: TPanel
      Left = 0
      Top = 0
      Width = 488
      Height = 713
      Align = alLeft
      BevelOuter = bvNone
      Color = 2828067
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 145
      object pnllabel: TPanel
        Left = 0
        Top = 0
        Width = 488
        Height = 169
        Align = alTop
        BevelOuter = bvNone
        Color = clGoldenrod
        Padding.Top = 20
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 20
          Width = 488
          Height = 45
          Align = alTop
          Alignment = taCenter
          Caption = 'Quarta-Feira, 14 de Maio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5589317
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 362
        end
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 68
          Width = 482
          Height = 21
          Align = alTop
          Alignment = taCenter
          Caption = 'Veja Abaixo todas as categorias para navega'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5589317
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 329
        end
      end
      object pnlinfo: TPanel
        Left = 0
        Top = 169
        Width = 488
        Height = 544
        Align = alClient
        BevelOuter = bvNone
        Color = clGoldenrod
        ParentBackground = False
        TabOrder = 1
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 488
          Height = 544
          Align = alClient
          BorderStyle = bsNone
          ParentBackground = True
          TabOrder = 0
          ExplicitLeft = 6
          ExplicitTop = 6
        end
      end
    end
    object pnlDireita: TPanel
      Left = 488
      Top = 0
      Width = 253
      Height = 713
      Align = alClient
      BevelOuter = bvNone
      Color = clGoldenrod
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 633
      ExplicitWidth = 607
    end
  end
end
