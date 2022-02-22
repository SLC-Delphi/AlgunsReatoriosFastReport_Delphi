object Form1: TForm1
  Left = 68
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '_F_ImportarClarionXml'
  ClientHeight = 621
  ClientWidth = 1304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1304
    Height = 621
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    DesignSize = (
      1304
      621)
    object SpBtn_Abrir: TSpeedButton
      Left = 77
      Top = 8
      Width = 1097
      Height = 29
      Caption = 'IMPORTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpBtn_AbrirClick
    end
    object Stgr_Produtos: TStringGrid
      Left = 456
      Top = 56
      Width = 835
      Height = 555
      Anchors = [akLeft, akTop, akRight]
      ColCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object REdit_Xml: TRichEdit
      Left = 8
      Top = 48
      Width = 433
      Height = 563
      Lines.Strings = (
        'REdit_Xml')
      TabOrder = 1
    end
  end
end
