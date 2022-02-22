object _F_RelatorioDevolucoes_MODEL: T_F_RelatorioDevolucoes_MODEL
  Left = 384
  Top = 468
  BorderStyle = bsSingle
  Caption = '_F_RelatorioDevolucoes_MODEL'
  ClientHeight = 65
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 106
  TextHeight = 13
  object Ibq_RelatorioDevolucoes: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * '
      'From DEVOLUCAO_PROD '
      'Where SITUACAO='#39'ENTRADA'#39' '
      'Order by situacao, Produto')
    Left = 16
    Top = 16
  end
end
