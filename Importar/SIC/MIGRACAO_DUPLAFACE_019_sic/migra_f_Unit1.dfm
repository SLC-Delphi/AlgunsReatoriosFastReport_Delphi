object migra: Tmigra
  Left = 307
  Top = 132
  Width = 957
  Height = 472
  Caption = 'duplaface'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 208
    Top = 48
    Width = 47
    Height = 19
    Caption = 'ALIAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 88
    Width = 20
    Height = 37
    Caption = 'L'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 144
    Width = 75
    Height = 25
    Caption = 'cliente'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 144
    Width = 75
    Height = 25
    Caption = 'linha'
    Enabled = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Caption = 'fornecedor'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 352
    Top = 144
    Width = 75
    Height = 25
    Caption = 'produto'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object ED_ORIGEM: TEdit
    Left = 268
    Top = 45
    Width = 445
    Height = 24
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    Text = 'C:\Duplaface_019\Importar\SIC\MIGRACAO_DUPLAFACE_019_sic\sic'
  end
  object DBGrid1: TDBGrid
    Left = 720
    Top = 16
    Width = 320
    Height = 89
    DataSource = DS_CLIENTES
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid2: TDBGrid
    Left = 716
    Top = 112
    Width = 320
    Height = 89
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid3: TDBGrid
    Left = 716
    Top = 208
    Width = 320
    Height = 89
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid4: TDBGrid
    Left = 716
    Top = 304
    Width = 320
    Height = 89
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object BitBtn5: TBitBtn
    Left = 632
    Top = 8
    Width = 75
    Height = 25
    Caption = 'a receber'
    TabOrder = 9
    OnClick = BitBtn5Click
  end
  object DBG_REC: TDBGrid
    Left = 180
    Top = 360
    Width = 729
    Height = 353
    DataSource = DS_REC
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object Button1: TButton
    Left = 600
    Top = -32
    Width = 273
    Height = 81
    Caption = 'MIGRAR'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 12
    OnClick = Button2Click
  end
  object TTb_PRO: TTable
    Active = True
    DatabaseName = 'C:\Duplaface_019\Importar\SIC\MIGRACAO_DUPLAFACE_019_sic\sic'
    ReadOnly = True
    TableName = 'TabEst1.db'
    Left = 360
    Top = 92
  end
  object DS_PRO: TDataSource
    DataSet = TTb_PRO
    Left = 396
    Top = 92
  end
  object TTB_LINHA: TTable
    DatabaseName = 'bigstock'
    ReadOnly = True
    TableName = 'CAD005.DB'
    Left = 164
    Top = 96
  end
  object DS_LINHA: TDataSource
    DataSet = TTB_LINHA
    Left = 204
    Top = 96
  end
  object TTB_FORNECEDORES: TTable
    Active = True
    DatabaseName = 'C:\Duplaface_019\Importar\SIC\MIGRACAO_DUPLAFACE_019_sic\sic'
    ReadOnly = True
    TableName = 'TabFor.db'
    Left = 260
    Top = 104
  end
  object DS_FORNECEDORES: TDataSource
    DataSet = TTB_FORNECEDORES
    Left = 300
    Top = 104
  end
  object TTb_CLIENTE: TTable
    ReadOnly = True
    TableName = 'TabCli.db'
    Left = 44
    Top = 96
  end
  object DS_CLIENTES: TDataSource
    DataSet = TTb_CLIENTE
    Left = 92
    Top = 88
  end
  object IBQ_CONTAS_RECEBER: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CONTAS_rECEBER')
    Left = 28
    Top = 300
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\DUPLAFACE_019\DADOS\DUPLAFACE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 28
    Top = 180
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 28
    Top = 240
  end
  object TABLE_REC: TTable
    DatabaseName = 'bigstock'
    TableName = 'MOV002E.DB'
    Left = 72
    Top = 224
  end
  object DS_REC: TDataSource
    DataSet = TABLE_REC
    Left = 32
    Top = 48
  end
end
