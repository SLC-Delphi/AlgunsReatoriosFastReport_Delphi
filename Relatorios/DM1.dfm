object DM: TDM
  OldCreateOrder = False
  Left = 2
  Top = 133
  Height = 150
  Width = 215
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 16
    Top = 48
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\Duplaface_019\Dados\DUPLAFACE.FDB'
    Params.Strings = (
      'lc_ctype=ISO8859_1'
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
end
