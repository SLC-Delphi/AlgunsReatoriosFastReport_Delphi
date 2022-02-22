object _F_RelatoriosDevolucoesMenu: T_F_RelatoriosDevolucoesMenu
  Left = 920
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 1
  ClientHeight = 309
  ClientWidth = 533
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clCream
  Font.Height = -14
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 17
  object Pa_Relatorio: TPanel
    Left = 0
    Top = 0
    Width = 533
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 533
      Height = 39
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 533
        Height = 39
        Align = alClient
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DE DEVOLU'#199#213'ES'
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
      Top = 268
      Width = 533
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = 159
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        533
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
        Left = 418
        Top = 6
        Width = 114
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
      Width = 533
      Height = 229
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        533
        229)
      object Label2: TLabel
        Left = 4
        Top = 14
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
        Top = 128
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
        Top = 148
        Width = 678
        Height = 77
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 1
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
          Left = 267
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
          Left = 267
          Top = 30
          Width = 176
          Height = 25
          Date = 43783.600524988430000000
          Time = 43783.600524988430000000
          TabOrder = 1
        end
      end
      object Panel6: TPanel
        Left = 2
        Top = 36
        Width = 528
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          528
          57)
        object spButton_SinteticoMercadoria: TSpeedButton
          Left = 281
          Top = 11
          Width = 238
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
          Left = 24
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
        object rb_SinteticoMercadoria: TRadioButton
          Left = 260
          Top = 18
          Width = 21
          Height = 16
          TabOrder = 1
          OnClick = rb_SinteticoMercadoriaClick
        end
        object rb_DetalhadoMercadoria: TRadioButton
          Left = 3
          Top = 19
          Width = 20
          Height = 16
          TabOrder = 0
          OnClick = rb_DetalhadoMercadoriaClick
        end
      end
    end
  end
end
