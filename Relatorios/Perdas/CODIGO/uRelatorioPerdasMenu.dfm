object _F_RelaotiosPerdaMenu: T_F_RelaotiosPerdaMenu
  Left = 49
  Top = 144
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 1
  ClientHeight = 397
  ClientWidth = 682
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clCream
  Font.Height = -14
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Pa_Relatorio: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 397
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 682
      Height = 39
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 682
        Height = 39
        Align = alClient
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DE PERDAS'
        Color = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12648447
        Font.Height = -25
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 356
      Width = 682
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = 159
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        682
        41)
      object spButton_Cancelar: TSpeedButton
        Left = 2
        Top = 6
        Width = 113
        Height = 31
        Cursor = crHandPoint
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        OnClick = spButton_CancelarClick
      end
      object spButton_Gerar: TSpeedButton
        Left = 568
        Top = 6
        Width = 113
        Height = 31
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'OK - Gerar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        OnClick = spButton_GerarClick
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 39
      Width = 678
      Height = 294
      Align = alCustom
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        678
        294)
      object Label2: TLabel
        Left = 4
        Top = 98
        Width = 49
        Height = 20
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12648447
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 4
        Top = 213
        Width = 80
        Height = 20
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12648447
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 232
        Width = 678
        Height = 77
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        object Label4: TLabel
          Left = 12
          Top = 8
          Width = 87
          Height = 16
          Caption = 'Data Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 231
          Top = 8
          Width = 78
          Height = 16
          Caption = 'Data Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dateTime_Inicial: TDateTimePicker
          Left = 12
          Top = 30
          Width = 176
          Height = 25
          Date = 43783.600524988430000000
          Time = 43783.600524988430000000
          TabOrder = 0
        end
        object dateTime_Final: TDateTimePicker
          Left = 231
          Top = 30
          Width = 176
          Height = 25
          Date = 43783.600524988430000000
          Time = 43783.600524988430000000
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 12
        Width = 676
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          676
          57)
        object spButton_Produtos: TSpeedButton
          Left = 28
          Top = 11
          Width = 378
          Height = 32
          Cursor = crHandPoint
          Caption = 'Produtos - Quebra, estrago ou defito produ'#231#227'o'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spButton_ProdutosClick
        end
        object spButton_MateriaPrima: TSpeedButton
          Left = 438
          Top = 11
          Width = 235
          Height = 32
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Produ'#231#227'o - Mat'#233'rias Primas'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spButton_MateriaPrimaClick
        end
        object rb_Produtos: TRadioButton
          Left = 8
          Top = 18
          Width = 20
          Height = 16
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rb_ProdutosClick
        end
        object Rb_MateriaPrima: TRadioButton
          Left = 417
          Top = 18
          Width = 21
          Height = 16
          TabOrder = 1
          OnClick = Rb_MateriaPrimaClick
        end
      end
      object Panel6: TPanel
        Left = 2
        Top = 120
        Width = 673
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        DesignSize = (
          673
          57)
        object spButton_DetalhadoData: TSpeedButton
          Left = 27
          Top = 11
          Width = 151
          Height = 32
          Cursor = crHandPoint
          Caption = 'Detalhado - Data'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spButton_DetalhadoDataClick
        end
        object spButton_SinteticoMercadoria: TSpeedButton
          Left = 477
          Top = 11
          Width = 195
          Height = 32
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Sint'#233'tico - Mercadoria'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spButton_SinteticoMercadoriaClick
        end
        object spButton_DetalhadoMercadoria: TSpeedButton
          Left = 226
          Top = 11
          Width = 205
          Height = 32
          Cursor = crHandPoint
          Caption = 'Detalhado - Mercadoria'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spButton_DetalhadoMercadoriaClick
        end
        object rb_DetalhadoData: TRadioButton
          Left = 8
          Top = 18
          Width = 19
          Height = 16
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rb_DetalhadoDataClick
        end
        object rb_SinteticoMercadoria: TRadioButton
          Left = 456
          Top = 18
          Width = 21
          Height = 16
          TabOrder = 2
          OnClick = rb_SinteticoMercadoriaClick
        end
        object rb_DetalhadoMercadoria: TRadioButton
          Left = 205
          Top = 19
          Width = 20
          Height = 16
          TabOrder = 1
          OnClick = rb_DetalhadoMercadoriaClick
        end
      end
    end
  end
end
