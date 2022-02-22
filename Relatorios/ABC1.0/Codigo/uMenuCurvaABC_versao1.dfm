object Form1: TForm1
  Left = 67
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 485
  ClientWidth = 988
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  DesignSize = (
    988
    485)
  PixelsPerInch = 96
  TextHeight = 14
  object SpeedButton1: TSpeedButton
    Left = 384
    Top = 11
    Width = 281
    Height = 32
    Cursor = crHandPoint
    Caption = 'Maior Arrecada'#231#227'o / % MarkUp1'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = spbt_ArrecadacaoEMarkUp1Click
  end
  object SpeedButton3: TSpeedButton
    Left = 690
    Top = 10
    Width = 285
    Height = 32
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Maior Arrecada'#231#227'o / % MarkUp2'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = spbt_ArrecadacaoEMarkUp1Click
  end
  object Pa_Relatorio: TPanel
    Left = 0
    Top = 0
    Width = 988
    Height = 485
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 988
      Height = 39
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 988
        Height = 39
        Align = alClient
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DE CURVA ABC - VENDAS'
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
      Top = 444
      Width = 988
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = 159
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        988
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
        Left = 871
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
      Width = 988
      Height = 405
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        988
        405)
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
        Top = 319
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
      object Label6: TLabel
        Left = 12
        Top = 113
        Width = 94
        Height = 20
        Caption = 'Relat'#243'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12648447
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 337
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
          Left = 234
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
        object Label7: TLabel
          Left = 475
          Top = 9
          Width = 151
          Height = 16
          Caption = 'Quantidade de '#237'tens:'
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
          Height = 22
          Date = 43832.600524988430000000
          Time = 43832.600524988430000000
          TabOrder = 0
        end
        object dateTime_Final: TDateTimePicker
          Left = 234
          Top = 30
          Width = 176
          Height = 22
          Date = 43841.600524988430000000
          Time = 43841.600524988430000000
          TabOrder = 1
        end
        object cb_QtdItens: TComboBox
          Left = 569
          Top = 31
          Width = 56
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          ItemIndex = 3
          TabOrder = 2
          Text = '25'
          Items.Strings = (
            '10'
            '15'
            '20'
            '25'
            '30'
            '50')
        end
      end
      object Panel6: TPanel
        Left = 2
        Top = 36
        Width = 983
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = clMaroon
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          983
          57)
        object spBt_Arrecadacao: TSpeedButton
          Left = 222
          Top = 11
          Width = 225
          Height = 32
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Arrecadacao e Lucratividade'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spBt_ArrecadacaoClick
        end
        object spBt_QuantidadeVendida: TSpeedButton
          Left = 24
          Top = 11
          Width = 160
          Height = 32
          Cursor = crHandPoint
          Caption = 'Quantidade vendida'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spBt_QuantidadeVendidaClick
        end
        object rb_SinteticoMercadoria: TRadioButton
          Left = 201
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
      object pa_QtdVendas: TPanel
        Left = 5
        Top = 144
        Width = 978
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BevelWidth = 2
        Color = clMaroon
        ParentBackground = False
        TabOrder = 2
        DesignSize = (
          978
          57)
        object spbt_VendasEMarkUp1: TSpeedButton
          Left = 386
          Top = 11
          Width = 275
          Height = 32
          Cursor = crHandPoint
          Caption = 'Produtos + Vendidos / % MarkUp 1'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spbt_VendasEMarkUp1Click
        end
        object spbt_VendasEArrecadacaoTotal: TSpeedButton
          Left = 24
          Top = 11
          Width = 325
          Height = 32
          Cursor = crHandPoint
          Caption = 'Produtos + Vendidos / R$ Total de Vendas'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spbt_VendasEArrecadacaoTotalClick
        end
        object spbt_VendasEMarkUp2: TSpeedButton
          Left = 693
          Top = 12
          Width = 273
          Height = 32
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Produtos + Vendidos / % MarkUp 1'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spbt_VendasEMarkUp2Click
        end
        object rb_VendasEMarkUp1: TRadioButton
          Left = 366
          Top = 24
          Width = 21
          Height = 10
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = rb_VendasEMarkUp1Click
        end
        object rb_VendasEArrecadacaoTotal: TRadioButton
          Left = 4
          Top = 19
          Width = 20
          Height = 16
          TabOrder = 0
          OnClick = rb_VendasEArrecadacaoTotalClick
        end
        object rb_VendasEMarkUp2: TRadioButton
          Left = 673
          Top = 19
          Width = 21
          Height = 16
          TabOrder = 2
          OnClick = rb_VendasEMarkUp2Click
        end
      end
      object pa_Arrecadacao: TPanel
        Left = 5
        Top = 207
        Width = 978
        Height = 95
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BevelWidth = 2
        Color = clMaroon
        ParentBackground = False
        TabOrder = 3
        DesignSize = (
          978
          95)
        object spbt_ArrecadacaoEMarkUp1: TSpeedButton
          Left = 382
          Top = 8
          Width = 278
          Height = 32
          Cursor = crHandPoint
          Caption = 'Maior Arrecada'#231#227'o / % MarkUp1'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spbt_ArrecadacaoEMarkUp1Click
        end
        object spbt_ArrecadacaoEVendas: TSpeedButton
          Left = 22
          Top = 9
          Width = 323
          Height = 32
          Cursor = crHandPoint
          Caption = 'Produtos com Maior Arrecada'#231#227'o em R$'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spbt_ArrecadacaoEVendasClick
        end
        object spbt_ArrecadacaoEMarkUp2: TSpeedButton
          Left = 690
          Top = 8
          Width = 274
          Height = 32
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Maior Arrecada'#231#227'o / % MarkUp2'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spbt_ArrecadacaoEMarkUp2Click
        end
        object spbt_ArrecadacaoELucratividade1: TSpeedButton
          Left = 22
          Top = 55
          Width = 542
          Height = 32
          Cursor = crHandPoint
          Caption = 
            'Maior Arrecada'#231#227'o / % Lucratividade dentre os Produtos apresenta' +
            'dos'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spbt_ArrecadacaoELucratividade1Click
        end
        object spbt_ArrecadacaoELucratividade2: TSpeedButton
          Left = 634
          Top = 55
          Width = 330
          Height = 32
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Maior Arrecada'#231#227'o / % Lucratividae Bruta'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = spbt_ArrecadacaoELucratividade2Click
        end
        object rb_ArrecadacaoEMarkUp1: TRadioButton
          Left = 364
          Top = 16
          Width = 21
          Height = 16
          TabOrder = 1
          OnClick = rb_ArrecadacaoEMarkUp1Click
        end
        object rb_ArrecadacaoEVendas: TRadioButton
          Left = 3
          Top = 17
          Width = 20
          Height = 16
          TabOrder = 0
          OnClick = rb_ArrecadacaoEVendasClick
        end
        object rb_ArrecadacaoEMarkUp2: TRadioButton
          Left = 670
          Top = 15
          Width = 21
          Height = 16
          TabOrder = 2
          OnClick = rb_ArrecadacaoEMarkUp2Click
        end
        object rb_ArrecadacaoELucratividade1: TRadioButton
          Left = 3
          Top = 65
          Width = 21
          Height = 16
          TabOrder = 3
          OnClick = rb_ArrecadacaoELucratividade1Click
        end
        object rb_ArrecadacaoELucratividade2: TRadioButton
          Left = 614
          Top = 64
          Width = 21
          Height = 16
          TabOrder = 4
          OnClick = rb_ArrecadacaoELucratividade2Click
        end
      end
      object pa_Aguarde: TPanel
        Left = 376
        Top = 176
        Width = 297
        Height = 97
        BevelInner = bvRaised
        Caption = 'Por favor, aguarde alguns instantes.'
        Color = 8421631
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
    end
  end
end
