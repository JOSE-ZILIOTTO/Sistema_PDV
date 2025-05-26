object frmimportarcliente: Tfrmimportarcliente
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmimportarcliente'
  ClientHeight = 713
  ClientWidth = 1226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object pnlprincipal: TPanel
    Left = 0
    Top = 0
    Width = 1226
    Height = 713
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object pnltop: TPanel
      Left = 5
      Top = 5
      Width = 1216
      Height = 68
      Align = alTop
      BevelOuter = bvNone
      Color = clGoldenrod
      ParentBackground = False
      TabOrder = 0
      object pnlsair: TPanel
        Left = 1146
        Top = 0
        Width = 70
        Height = 68
        Align = alRight
        BevelOuter = bvNone
        Color = clGoldenrod
        ParentBackground = False
        TabOrder = 0
        object Image1: TImage
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 50
          Height = 48
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
            00400806000000AA6971DE000000097048597300000EC300000EC301C76FA864
            0000001974455874536F667477617265007777772E696E6B73636170652E6F72
            679BEE3C1A000002724944415478DAEDDBBF2F04411407F099BD9A8492A895A2
            1594B4C41FE01FF0072810E2140AD1F807F4E48A3BC91D95DFAD462191A8E824
            8712F77CE76E8BBD3D773BB3E676D6CCBC646F8764EC7B9F9DBDCDAE19CE1C0F
            6E3A01D3E1014C27603A720B408D460DBB09465463415041BBC6397F77098062
            BFFAC476C138171815603CE6168088C6F0B18FE61CB601892E573C08661200E2
            F1806394313A4E9AFD39FFCA054058FC1D9AC34A8904415B2E1200D1A8E398D5
            F052A902E3D51C40A37184DD926ABF3F0244E31BDB0D2E153132C4A5729F3580
            F8A29219F6D1B804C0AC2680783C617454303A8E81719E05405BE2F1339BF6EF
            E8498E8ABC5058771780B10FE433E83240473E1EC00378000FA01BE012BBE9F0
            C78EFBBBF500BAC20378000F6007001E8F97F11072E82E80288468170F21ABEE
            02341B6A08F6012822D809A080602F802482DD002D842D206C2AF43B669CAF84
            7D0F588AF78E520038F0357653FD864942E800E07C14B7D39756371AC1C773BF
            00FA32F47A20FC7A39243D55A6CD337F00CD2CF83ACE6ED165803500ECB80940
            B4894B602B298F2C01A22F348C14FF6B81597D096AAFB1FB6DB06BF15DFA9562
            B7C1C5FF0B90507C4FB83F86790089E2ED05902CDE4E0085E2ED03502CDE2E00
            D75F89A50D0FE0013CC0FF0488BD50E998FFE70280F3FF1EF7001EC0037880BC
            02383E5192681B0F651BFD064833593ACD7A01D9C87CB27409BB05D57E9AA7CB
            DF465696643C5D9E681C1FB7680E6508500FD7169599E9051321825835B287E6
            3CB641892E69D60B3C84435B9CE9FC2C99D1153D164D899520E55C2F9AD20420
            0A9DC4593E0BCFF2298A7ED37D9CDC0264151EC07402A6C379801F44C73A5FF3
            413CF30000000049454E44AE426082}
          Proportional = True
          Stretch = True
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitHeight = 58
        end
        object btnsair: TSpeedButton
          Left = 0
          Top = 0
          Width = 70
          Height = 68
          Align = alClient
          Flat = True
          OnClick = btnsairClick
          ExplicitTop = -1
        end
      end
      object pnllistatitulo: TPanel
        Left = 0
        Top = 0
        Width = 233
        Height = 68
        Align = alLeft
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = 'Lista  de Clientes'
        Color = clGoldenrod
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object Imagecliente: TImage
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 47
          Height = 48
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Anchors = [akLeft, akTop, akRight, akBottom]
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
            00400806000000AA6971DE000000097048597300000EC300000EC301C76FA864
            0000001974455874536F667477617265007777772E696E6B73636170652E6F72
            679BEE3C1A000006824944415478DAED9B798C144514C66B403C50108D318807
            1895E00A2A1AFC07D04441566E14E458584358FE80C448F04C24BA6A34016214
            1334F10441B2CB2122978B4734AC47482441714D3C5905351E41C003515C7F5F
            BA67E86D6698AE99EA6946F6252F2F99D9FADEAB6FBAAADE7BD59B32C7B8A492
            0E2069692320E90092969212D0D2D2722266103A1ABD18EDE67FF51DDA84AE41
            5F4FA5527FFDAF0860E2ED31B7A00FA0E7E4F9F39DE87DE86288F8B7EC0960F2
            9D304BD19196435F432742C2AF654B0093EF8CD98C5E5A20C447E84048D85B76
            0430F9769857D1614542AD4347C5B51CE224A01AB3D811DC640878A96C0860F2
            1D309FA3DD1D41EE407B42C2DFE542C060CC26C7B08320E0CD9211C0243A62A6
            196FF7BED0FF58BFAAD6F5F304F3C711C63E81B9D571AC0BF039CB75BCA91C60
            0330F5E650A212965DE87840DFCD31FE0DCC758E09D884BF21AEE34D6501EB8F
            D1A376429E80F6A3D702FA7E168CED984B1C13B01D5F7D5CC79B0A812955FD0C
            3D376250CD682F40F78770747EF789881155B6E1E772D7F18609988E79DA32B0
            E9003E1BC269C05CEF98808DF819EA3ADE3001DA30465802AE01707408673EE6
            0EC704CCC3CFDDAEE30D1350C8DA3D6C6DFA9BD266C704F4C7CF7BAEE30D13B0
            CDD8E7EDD9D6A6AABF8F8D57F2BA1095CA7DC2E9B08B78C304ACC4DC6409B802
            C09BC31F82350AF38A230246E0635D161F45C71B266032668925601580CBB27D
            019E369B69454E7E09F8D539F08B8E374CC071C67B747B4504D3A3791980FFE4
            085067B34E846B0A9CFCDB6865AE0E918B78B32542BD318DE8A979C0F6186F63
            FAE4487FE493F0143AD572F2FA956AC0FF330F7E51F1E64A852B3075267732A3
            4447DD9AA6A8B30153BDC07968DF3C7F2ACC5AB0575860171CEF918A21EDE463
            8C575C5CE07FFCA5F11A97AB0B695080297F57F898FAE5BAFA5FFD60BC47792D
            BA15EC9602B00B8AB7AD2D9E7400494B1B01490790B4643B068FC78C33DE66A2
            DDF54CB483FFF53EF467740BBA115DCFE672309F1330B529A999A1DA5D67B67A
            855D506D5CBFA30750B5BE77A3DFA03AAA5681FD61046CE502EA3CDF805E859E
            819EE27FAD1EE28F3E9E0AA795601EC84900600259889E1F91401D2B5301DD92
            2338555DB3D101A6B0A74DB57E2D5A97ED64005F135E6CA227425FA133C16A38
            8C00C0D4C37B1C6D6711A082AA06706928B08B302F18EF1777211FA0D3C2E738
            7EAA8C970ADB90AB27F636B0166608F00B97972D272F7918A039A1A05468A806
            E8E468F269D1129984BFF5217F0F61E658622927D065CBBA94DF4D55F7B49B25
            88AAB391C14713ACDB31F34D7C9BAB7E3DA5C78B023EE54BEB7BB825962E617B
            8A8099C65BF736A29E5A05817C1D08A406F34C4C130F8A363615486F057CF730
            DE7E749225D60C11A00B8CC196031F21807B03015C8951CB395F67D695E8B4E8
            4B0CCD81186A31F75BE2348800F5CC6D1E7F556767E17C8FEF58FB8636A97E25
            9A7C5A9613C3F80001BA89FE1EED6881B14B04A8366E6F31A81EC713028E5D76
            7E6C447BCFD5C4D2188845A7519505C64111605B790D0FEEC40CDF60BC242409
            D1EB3499F63BB1541A2F418B2CB604E8F8E882D37DBE432D9D6F8DFDF1E94A14
            4F77E2D9E9C7A30C506F94447EA26D0968C259A60DCD50A5CCCB139A7C5A5A5D
            741093FA0ABDE3226019CE326B8CA1EAF0DC993001CF11534D2026658693E322
            602ECEEE0938D35E30D4627C1CD2484C030331CDC5DC151701B371F658C0D956
            93BFC717B78497A58AAF47E32240854FA60FCF506D3E67274CC00E62CA54AFC4
            A4F71117C545C0389CAD0C385381E2BAE82996804998C82F54D91230066799A4
            87A16A66D8645EA520602C26724BDD96805677740C555154AAFC3F2A016AC2AC
            8E8B0095BF6B8F72026EC4AC8A8B80F012F80D73F2514640AC4B602CCE32EC32
            546967BE3BB95213A00AB1CE86805FB0A747FCFB0938AB0F38FBC9785DD824A5
            99987A04629A68BC8BD528B25704E8EE2CEAABECADEED619ABFABB6BC4B1A522
            40A9FAD28863EB4480DEAA545BFBB40803C289902AC17CFF00516A02A6605E8C
            304E8DA07EE9AEB0CADA5A54EFCEA44B5B95949D0303D4909C85B30D01675F98
            4337B149C9A7C454118849BD8905A67549ACEE55FA76580D20BD2CF920E37617
            D5BDC599FEAB634831180EA4818954163AB858027407505F0C8603D13BC005F7
            248AEEDF43C2939819094D5E39FF94425EA87046804F82D24FBDC9759EF132C3
            42EA03F5F4757199EDB2559FABEED0FAD5BFD8E98E4F29F93BC54CDE1901E52C
            6D04241D40D272CC13F01F660BD7CD3C84A87C0000000049454E44AE426082}
          Proportional = True
          Stretch = True
          ExplicitLeft = 8
          ExplicitTop = 12
        end
      end
    end
    object pnlpesquisa: TPanel
      Left = 5
      Top = 73
      Width = 1216
      Height = 58
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object Panel4: TPanel
        Left = 1082
        Top = 5
        Width = 129
        Height = 48
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 129
          Height = 48
          Align = alClient
          Brush.Color = clGoldenrod
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 48
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object SpeedButton1: TSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 123
          Height = 42
          Align = alClient
          Caption = 'Pesquisar (F2)'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 5
        end
      end
      object Panel2: TPanel
        Left = 5
        Top = 5
        Width = 1077
        Height = 48
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 1077
          Height = 48
          Align = alClient
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 536
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object edtpesquisar: TSearchBox
          AlignWithMargins = True
          Left = 3
          Top = 12
          Width = 1071
          Height = 33
          Cursor = crHandPoint
          Margins.Top = 12
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clHighlightText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'Pesquisar Cliente'
        end
      end
    end
    object pnldb: TPanel
      Left = 5
      Top = 131
      Width = 1216
      Height = 577
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 5
        Top = 5
        Width = 1206
        Height = 567
        Align = alClient
        BorderStyle = bsNone
        Color = clBackground
        FixedColor = clBlack
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
end
