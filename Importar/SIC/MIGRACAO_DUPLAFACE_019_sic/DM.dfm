object DM1: TDM1
  OldCreateOrder = False
  Left = 320
  Top = 241
  Height = 347
  Width = 737
  object IBT_DUPLAFACE: TIBTransaction
    Active = False
    DefaultDatabase = IB_DB_DUPLAFACE
    AutoStopAction = saCommit
    Left = 116
    Top = 12
  end
  object IBT_TINTAS: TIBTransaction
    Active = False
    DefaultDatabase = IB_DB_TINTAS
    AutoStopAction = saCommit
    Left = 104
    Top = 160
  end
  object IB_DB_DUPLAFACE: TIBDatabase
    Connected = True
    DatabaseName = 'C:\DUPLAFACE_019\DADOS\DUPLAFACE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'PASSWORD=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBT_DUPLAFACE
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 20
    Top = 12
  end
  object IB_DB_TINTAS: TIBDatabase
    DatabaseName = 'C:\DUPLAFACE_019\DADOS\DADOS_TINTAS\DADOS.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'PASSWORD=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBT_TINTAS
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 32
    Top = 144
  end
  object IBQ_DF_CLIENTES: TIBQuery
    Database = IB_DB_DUPLAFACE
    Transaction = IBT_DUPLAFACE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 196
    Top = 16
  end
  object IBQ_DF_FORNECEDORES: TIBQuery
    Database = IB_DB_DUPLAFACE
    Transaction = IBT_DUPLAFACE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM FORNECEDORES')
    Left = 260
    Top = 20
  end
  object IBQ_DF_PRODUTOS: TIBQuery
    Database = IB_DB_DUPLAFACE
    Transaction = IBT_DUPLAFACE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PRODUTOS;')
    Left = 332
    Top = 20
  end
  object DS_DF_CLIENTES: TDataSource
    DataSet = IBQ_DF_CLIENTES
    Left = 192
    Top = 60
  end
  object DS_DF_FORNECEDORES: TDataSource
    DataSet = IBQ_DF_FORNECEDORES
    Left = 256
    Top = 64
  end
  object DS_DF_PRODUTOS: TDataSource
    DataSet = IBQ_DF_PRODUTOS
    Left = 332
    Top = 68
  end
  object DS__TC: TDataSource
    DataSet = IBQ_TC
    Left = 168
    Top = 212
  end
  object DS__TF: TDataSource
    DataSet = IBQ_TF
    Left = 244
    Top = 216
  end
  object DS_TP: TDataSource
    DataSet = IBQ_TP
    Left = 340
    Top = 216
  end
  object IBQ_TC: TIBQuery
    Database = IB_DB_TINTAS
    Transaction = IBT_TINTAS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CLIENTES;')
    Left = 176
    Top = 160
  end
  object IBQ_TF: TIBQuery
    Database = IB_DB_TINTAS
    Transaction = IBT_TINTAS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM FORNECEDORES')
    Left = 252
    Top = 160
  end
  object IBQ_TP: TIBQuery
    Database = IB_DB_TINTAS
    Transaction = IBT_TINTAS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM ESTOQUE')
    Left = 348
    Top = 176
  end
  object IB_DF_CONTASRECEBER: TIBQuery
    Database = IB_DB_DUPLAFACE
    Transaction = IBT_DUPLAFACE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CONTAS_RECEBER')
    Left = 416
    Top = 16
  end
  object DS_DF_CONTASRECEBER: TDataSource
    DataSet = IB_DF_CONTASRECEBER
    Left = 416
    Top = 64
  end
  object IB_DF_LINHA: TIBQuery
    Database = IB_DB_DUPLAFACE
    Transaction = IBT_DUPLAFACE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM LINHA_PRODUTOS')
    Left = 496
    Top = 16
  end
  object DS_DF_LINHA: TDataSource
    DataSet = IB_DF_LINHA
    Left = 496
    Top = 64
  end
end
