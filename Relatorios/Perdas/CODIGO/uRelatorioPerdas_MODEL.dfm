object _F_RelatorioPerdas_MODEL: T_F_RelatorioPerdas_MODEL
  Left = 204
  Top = 490
  BorderStyle = bsSingle
  Caption = '_F_RelatorioPerdas_MODEL'
  ClientHeight = 77
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 106
  TextHeight = 13
  object Ibq_RelatorioPerdas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * '
      'From PERDAS'
      'Where TIPO='#39'MATERIA PRIMA'#39
      ''
      'order by Tipo, Data, Produto')
    Left = 56
    Top = 16
  end
  object IBQ_EMPRESA: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * '
      'From EMPRESA')
    Left = 16
    Top = 16
  end
end
