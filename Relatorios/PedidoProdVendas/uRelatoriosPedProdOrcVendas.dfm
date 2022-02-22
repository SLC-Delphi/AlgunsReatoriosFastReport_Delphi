object _F_RelatorioPedProOrcVenda: T_F_RelatorioPedProOrcVenda
  Left = 953
  Top = 146
  Width = 431
  Height = 129
  Caption = '_F_RelatorioPedProOrcVenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxDBDS_empresa: TfrxDBDataset
    UserName = 'frxDBDS_Empresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'BAIRRO=BAIRRO'
      'CELULAR=CELULAR'
      'CEP=CEP'
      'CIDADE=CIDADE'
      'CNPJ=CNPJ'
      'CODIGO=CODIGO'
      'COMPLEMENTO=COMPLEMENTO'
      'CPF_RESP=CPF_RESP'
      'EMPRESA=EMPRESA'
      'ENDERECO=ENDERECO'
      'ESTADO=ESTADO'
      'FANTASIA=FANTASIA'
      'FAX=FAX'
      'ICONE=ICONE'
      'INSC=INSC'
      'INSC_MUN=INSC_MUN'
      'MAIL=MAIL'
      'NUM_COMP=NUM_COMP'
      'NUM_COR=NUM_COR'
      'NUM_DESP=NUM_DESP'
      'NUM_DEV=NUM_DEV'
      'NUM_OR_COMP=NUM_OR_COMP'
      'NUM_ORC=NUM_ORC'
      'NUM_OS=NUM_OS'
      'NUM_PROD=NUM_PROD'
      'NUM_TAMANHO=NUM_TAMANHO'
      'NUM_VEND=NUM_VEND'
      'NUMERO=NUMERO'
      'RESPONSAVEL=RESPONSAVEL'
      'RG_RESP=RG_RESP'
      'TAXA_JRS=TAXA_JRS'
      'TELEFONE=TELEFONE'
      'TIPO_IMPRESSAO=TIPO_IMPRESSAO'
      'RELATORIO=RELATORIO')
    DataSet = _F_PedidosProOrcVen.IBQ_Empresa
    BCDToCurrency = False
    Left = 16
    Top = 16
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 194
    Top = 16
  end
  object FRX_PPOV_Agrupa: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\DUPLAFACE_019\RELATORIOS\PedidoProdVendas\PedidoProdVenda_Agr' +
      'upa'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43635.444614294000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Picture1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                               '
      'end;'
      ''
      'procedure PIC_LOGODAFIRMAOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  vc_imagem:String;                                        '
      'begin'
      ' // COMENTARIO'
      
        ' vc_imagem:=<frxDBDS_empresa."ICONE">;                          ' +
        '                 '
      
        ' PIC_LOGODAFIRMA.FILELINK:=vc_Imagem;                           ' +
        '                                                                ' +
        '             '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;                                                   ' +
        '               '
      'end;'
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;  '
      
        '   T_END.MEMO:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empres' +
        'a."NUMERO">;                                        '
      'end;'
      ''
      'procedure T_ENDOnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;  '
      '   //T_END.MEMO:=vc_endereco;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 226
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDS_Agrupa
        DataSetName = 'frxDBDS_Agrupa'
      end
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_Orcamento
        DataSetName = 'frxDBDS_Orcamento'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 15.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      DataSet = frxDBDS_empresa
      DataSetName = 'frxDBDS_Empresa'
      OnBeforePrint = 'PIC_LOGODAFIRMAOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object PIC_LOGODAFIRMA: TfrxPictureView
          Left = 9.448825000000000000
          Width = 221.102505000000000000
          Height = 113.385900000000000000
          OnBeforePrint = 'PIC_LOGODAFIRMAOnBeforePrint'
          ShowHint = False
          Center = True
          DataField = 'ICONE'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDS_empresaFANTASIA: TfrxMemoView
          Left = 234.669450000000000000
          Top = 18.897650000000000000
          Width = 478.110241100000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FANTASIA'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[frxDBDS_Empresa."FANTASIA"]')
        end
        object frxDBDS_empresaBAIRRO: TfrxMemoView
          Left = 234.669450000000000000
          Top = 56.692950000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            
              '[<frxDBDS_empresa."BAIRRO"> +'#39' - '#39' + <frxDBDS_empresa."CIDADE"> ' +
              '+'#39' - '#39'+<frxDBDS_empresa."ESTADO">]')
        end
        object frxDBDS_empresaCNPJ: TfrxMemoView
          Left = 234.669450000000000000
          Top = 94.488250000000000000
          Width = 187.086735000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[frxDBDS_Empresa."CNPJ"]')
        end
        object T_END: TfrxMemoView
          Left = 234.669450000000000000
          Top = 37.795300000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'T_ENDOnBeforePrint'
          ShowHint = False
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empresa."NUMERO">]')
        end
        object Memo2: TfrxMemoView
          Left = 234.669450000000000000
          Top = 75.590600000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            
              '[<frxDBDS_empresa."CEP"> +'#39' - '#39'+<frxDBDS_empresa."TELEFONE"> +'#39' ' +
              '- '#39'+<frxDBDS_empresa."FAX">]')
        end
        object Memo1: TfrxMemoView
          Left = 235.559215000000000000
          Width = 376.062954290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO PARA PRODU'#195#8225#195#402'O A PARTIR DAS VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 128.401574800000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Date: TfrxMemoView
          Left = 614.275975000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 678.417750000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Page: TfrxMemoView
          Left = 670.866575000000000000
          Top = 98.944881890000000000
          Width = 47.244125000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 623.622450000000000000
          Top = 98.944881890000000000
          Width = 47.244125000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        object PIC_LOGO: TfrxPictureView
          Width = 132.283550000000000000
          Height = 47.244125000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          ShowHint = False
          DataField = 'ICONE'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          FileLink = 'C:\DUPLAFACE_019\logo\imagemNOVA.bmp'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo19: TfrxMemoView
          Left = 141.732375000000000000
          Top = 9.448825000000060000
          Width = 529.134114570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DUPLA FACE SISTEMAS - www.duplafacesistemas.com.br')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677165354330700000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_Orcamento
        DataSetName = 'frxDBDS_Orcamento'
        RowCount = 0
        object frxDBDS_OrcamentoNUMERO: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1.889763780000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_Orcamento
          DataSetName = 'frxDBDS_Orcamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Orcamento."NUMERO"]')
          ParentFont = False
        end
        object frxDBDS_OrcamentoCLIENTE: TfrxMemoView
          Left = 94.488250000000000000
          Top = 1.889763780000000000
          Width = 616.063145910000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLIENTE'
          DataSet = frxDBDS_Orcamento
          DataSetName = 'frxDBDS_Orcamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Orcamento."CLIENTE"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDS_Agrupa."PRODUTO"'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 20.787401574803100000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBDS_Agrupa
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Agrupa."PRODUTO"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 6.913388270000000000
        Top = 355.275820000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDBDS_Agrupa
        DataSetName = 'frxDBDS_Agrupa'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 4.913388270000000000
          Visible = False
          ShowHint = False
          DataField = 'QTD_UN'
          DataSet = frxDBDS_Agrupa
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Agrupa."QTD_UN"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 2.000000000000000000
          Width = 555.590910000000000000
          Height = 4.913388267716540000
          Visible = False
          ShowHint = False
          DataField = 'COR'
          DataSet = frxDBDS_Agrupa
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_Agrupa."COR"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 11.338590000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 1.559060000000000000
          Top = 4.669291340000000000
          Width = 714.331170000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 638.740570000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Agrupa."QTD_UN">,MasterData2,1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 595.488560000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 11.338590000000000000
          Width = 593.386210000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object Memo4: TfrxMemoView
        Left = 68.031540000000000000
        Top = 574.488560000000000000
        Width = 302.362204720000000000
        Height = 71.811070000000000000
        Visible = False
        ShowHint = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Memo.UTF8 = (
          'nome deste relat'#195#179'rio:'
          'PedidoProdVenda_Agrupa.fr3')
        ParentFont = False
      end
    end
  end
  object frxDBDS_Agrupa: TfrxDBDataset
    UserName = 'frxDBDS_Agrupa'
    CloseDataSource = False
    DataSet = _F_PedidosProOrcVen.IBQ_PPOV_Agrupa
    BCDToCurrency = False
    Left = 83
    Top = 18
  end
  object frxDBDS_Resumo2: TfrxDBDataset
    UserName = 'frxDBDS_Resumo2'
    CloseDataSource = False
    DataSet = _F_PedidosProOrcVen.IBQ_PPOV_Resumo2
    BCDToCurrency = False
    Left = 145
    Top = 24
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 196
    Top = 48
  end
  object frxDBDS_Orcamento: TfrxDBDataset
    UserName = 'frxDBDS_Orcamento'
    CloseDataSource = False
    DataSet = _F_PedidosProOrcVen.IBQ_Orcamento
    BCDToCurrency = False
    Left = 49
    Top = 17
  end
  object FRX_PPOV_ResumoAd: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\DUPLAFACE_019\RELATORIOS\PedidoProdVendas\PedidoProdVenda_Res' +
      'umoAd1'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43651.383951562500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Picture1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                               '
      'end;'
      ''
      'procedure PIC_LOGODAFIRMAOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  vc_imagem:String;                                        '
      'begin'
      ' // COMENTARIO'
      
        ' vc_imagem:=<frxDBDS_empresa."ICONE">;                          ' +
        '                 '
      
        ' PIC_LOGODAFIRMA.FILELINK:=vc_Imagem;                           ' +
        '                                                                ' +
        '             '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;                                                   ' +
        '               '
      'end;'
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;  '
      
        '   T_END.MEMO:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empres' +
        'a."NUMERO">;                                        '
      'end;'
      ''
      'procedure T_ENDOnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;  '
      '   //T_END.MEMO:=vc_endereco;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 280
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_Orcamento
        DataSetName = 'frxDBDS_Orcamento'
      end
      item
        DataSet = frxDBDS_Resumo1
        DataSetName = 'frxDBDS_Resumo1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 15.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      DataSet = frxDBDS_empresa
      DataSetName = 'frxDBDS_Empresa'
      VGuides.Strings = (
        '400,63018'
        '332,59864')
      OnBeforePrint = 'PIC_LOGODAFIRMAOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object PIC_LOGODAFIRMA: TfrxPictureView
          Left = 9.448825000000000000
          Width = 221.102505000000000000
          Height = 113.385900000000000000
          OnBeforePrint = 'PIC_LOGODAFIRMAOnBeforePrint'
          ShowHint = False
          Center = True
          DataField = 'ICONE'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDS_empresaFANTASIA: TfrxMemoView
          Left = 234.669450000000000000
          Top = 18.897650000000000000
          Width = 478.110241100000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FANTASIA'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[frxDBDS_Empresa."FANTASIA"]')
        end
        object frxDBDS_empresaBAIRRO: TfrxMemoView
          Left = 234.669450000000000000
          Top = 56.692950000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            
              '[<frxDBDS_empresa."BAIRRO"> +'#39' - '#39' + <frxDBDS_empresa."CIDADE"> ' +
              '+'#39' - '#39'+<frxDBDS_empresa."ESTADO">]')
        end
        object frxDBDS_empresaCNPJ: TfrxMemoView
          Left = 234.669450000000000000
          Top = 94.488250000000000000
          Width = 187.086735000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[frxDBDS_Empresa."CNPJ"]')
        end
        object T_END: TfrxMemoView
          Left = 234.669450000000000000
          Top = 37.795300000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'T_ENDOnBeforePrint'
          ShowHint = False
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empresa."NUMERO">]')
        end
        object Memo2: TfrxMemoView
          Left = 234.669450000000000000
          Top = 75.590600000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            
              '[<frxDBDS_empresa."CEP"> +'#39' - '#39'+<frxDBDS_empresa."TELEFONE"> +'#39' ' +
              '- '#39'+<frxDBDS_empresa."FAX">]')
        end
        object Memo1: TfrxMemoView
          Left = 235.559215000000000000
          Width = 376.062954290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO RESUMO P/ PRODU'#195#8225#195#402'O A PARTIR DAS VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 128.401574800000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Date: TfrxMemoView
          Left = 614.275975000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 678.417750000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Page: TfrxMemoView
          Left = 670.866575000000000000
          Top = 98.944881890000000000
          Width = 47.244125000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 623.622450000000000000
          Top = 98.944881890000000000
          Width = 47.244125000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 52.913420000000000000
        Top = 631.181510000000000000
        Width = 718.110700000000000000
        object PIC_LOGO: TfrxPictureView
          Width = 132.283550000000000000
          Height = 47.244125000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          ShowHint = False
          DataField = 'ICONE'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          FileLink = 'C:\DUPLAFACE_019\logo\imagemNOVA.bmp'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo19: TfrxMemoView
          Left = 141.732375000000000000
          Top = 28.448825000000000000
          Width = 529.134114570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DUPLA FACE SISTEMAS - www.duplafacesistemas.com.br')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 64.251970940000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDS_Resumo1."PRODUTO"'
        object frxDBDS_Resumo1PRODUTO: TfrxMemoView
          Left = 2.000000000000000000
          Top = 8.000000000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."PRODUTO"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 90.937230000000000000
          Top = 47.244094490000000000
          Width = 26.456692910000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '33b')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 122.897960000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '34')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 147.968770000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '35')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 172.929500000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '36')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 197.693135510000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '37')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 222.393940000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '38')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 247.354670000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '39')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 274.897960000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '40')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 299.968770000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '41')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 324.929500000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '42')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 349.693135510000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '43')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 374.393940000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '44')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 399.354670000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '45')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 423.401980000000000000
          Top = 47.244094490000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '46')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 448.362710000000000000
          Top = 47.244094490000000000
          Width = 20.787401570000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '47')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 472.417750000000000000
          Top = 47.244094490000000000
          Width = 20.787401570000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '48')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 91.953000000000000000
          Top = 28.236240000000000000
          Width = 399.496114250000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Adulto')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 95.062992130000000000
          Top = 44.976377950000000000
          Width = 396.850430310000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 20.031496060000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_Orcamento
        DataSetName = 'frxDBDS_Orcamento'
        RowCount = 0
        object frxDBDS_OrcamentoCLIENTE: TfrxMemoView
          Left = 6.488250000000000000
          Top = 1.889763780000000000
          Width = 616.063145910000000000
          Height = 18.141732283464600000
          ShowHint = False
          DataSet = frxDBDS_Orcamento
          DataSetName = 'frxDBDS_Orcamento'
          Memo.UTF8 = (
            '[frxDBDS_Orcamento."NUMERO"]   -  [frxDBDS_Orcamento."CLIENTE"]')
        end
      end
      object Footer1: TfrxFooter
        Height = 7.559060000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Left = 1.559060000000000000
          Top = 5.669291338582700000
          Width = 714.331170000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object MasterData2: TfrxMasterData
        Height = 28.724411890000000000
        Top = 370.393940000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDBDS_Resumo1
        DataSetName = 'frxDBDS_Resumo1'
        RowCount = 0
        object Memo52: TfrxMemoView
          Left = 91.173470000000000000
          Width = 26.456692910000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_33'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_33"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 123.141973940000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_34'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_34"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 148.197092050000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_35'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_35"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 173.252210160000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_36'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_36"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 197.748273150000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_37'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_37"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 222.535674720000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_38'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_38"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 247.771895200000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_39'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_39"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 274.472790000000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_40'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_40"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 299.527908110000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_41'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_41"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 324.583026220000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_42'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_42"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 349.079089210000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_43'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_43"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 373.866490780000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_44'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_44"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 399.102711260000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_45'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_45"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 423.197280000000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_46'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_46"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 448.252398110000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_47'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_47"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 472.433520000000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_48'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_48"]')
          ParentFont = False
        end
        object frxDBDS_Resumo1TOTAL: TfrxMemoView
          Left = 677.094930000000000000
          Top = 3.779530000000000000
          Width = 35.905511810000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."TOTAL"]')
        end
        object frxDBDS_Resumo1NUMERO: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMERO'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."NUMERO"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 53.291353230000000000
        Top = 423.307360000000000000
        Width = 718.110700000000000000
        object SysMemo16: TfrxSysMemoView
          Left = 92.795534330000000000
          Top = 0.377952760000000000
          Width = 23.811023622047200000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_33">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo17: TfrxSysMemoView
          Left = 120.630180000000000000
          Top = 0.377952760000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_34">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo18: TfrxSysMemoView
          Left = 145.795534330000000000
          Top = 0.377952760000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_35">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo19: TfrxSysMemoView
          Left = 170.582935900000000000
          Top = 0.377952760000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_36">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo20: TfrxSysMemoView
          Left = 194.646006140000000000
          Top = 0.220470000000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_37">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo21: TfrxSysMemoView
          Left = 219.480651810000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_38">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo22: TfrxSysMemoView
          Left = 245.646006140000000000
          Top = 0.220470000000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_39">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo23: TfrxSysMemoView
          Left = 272.433407710000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_40">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo24: TfrxSysMemoView
          Left = 297.496458430000000000
          Top = 0.377952760000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_41">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo25: TfrxSysMemoView
          Left = 321.661812760000000000
          Top = 0.377952760000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_42">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo26: TfrxSysMemoView
          Left = 347.449214330000000000
          Top = 0.377952760000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_43">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo27: TfrxSysMemoView
          Left = 372.512284570000000000
          Top = 0.220470000000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_44">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo28: TfrxSysMemoView
          Left = 395.346930240000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_45">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo29: TfrxSysMemoView
          Left = 420.512284570000000000
          Top = 0.220470000000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_46">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo30: TfrxSysMemoView
          Left = 445.299686140000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_47">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo31: TfrxSysMemoView
          Left = 469.433520000000000000
          Width = 23.811023620000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_48">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 678.070866140000000000
          Top = 3.779530000000000000
          Width = 35.905511810000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."TOTAL">,MasterData2,1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object Footer2: TfrxFooter
        Height = 71.811070000000000000
        Top = 498.897960000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 4.779530000000000000
          Top = 2.000000000000000000
          Width = 710.551640000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Shape2: TfrxShapeView
          Left = 4.559060000000000000
          Top = 1.889763780000000000
          Width = 68.031540000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Color = clBtnFace
          Frame.Width = 0.100000000000000000
        end
        object SysMemo2: TfrxSysMemoView
          Left = 93.881889760000000000
          Top = 32.377952760000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_33">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 121.716535430000000000
          Top = 32.377952760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_34">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 146.881889760000000000
          Top = 32.377952760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_35">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 171.669291330000000000
          Top = 32.377952760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_36">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 196.732361570000000000
          Top = 32.220470000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_37">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 220.567007240000000000
          Top = 32.000000000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_38">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 247.732361570000000000
          Top = 32.220470000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_39">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 273.519763140000000000
          Top = 32.000000000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_40">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 298.582813860000000000
          Top = 32.377952760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_41">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          Left = 323.748168190000000000
          Top = 32.377952760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_42">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          Left = 348.535569760000000000
          Top = 32.377952760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_43">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          Left = 373.598640000000000000
          Top = 32.220470000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_44">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo14: TfrxSysMemoView
          Left = 396.433285670000000000
          Top = 32.000000000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_45">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo15: TfrxSysMemoView
          Left = 421.598640000000000000
          Top = 32.220470000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_46">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo32: TfrxSysMemoView
          Left = 446.386041570000000000
          Top = 32.000000000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_47">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo33: TfrxSysMemoView
          Left = 470.519875430000000000
          Top = 32.000000000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_48">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo34: TfrxSysMemoView
          Left = 677.157221570000000000
          Top = 35.779530000000000000
          Width = 35.905511810000000000
          Height = 21.165351890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."TOTAL">,MasterData2,1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 94.141930000000000000
          Top = 8.929190000000000000
          Width = 24.566929133858300000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '33b')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 122.102660000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '34')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 147.173470000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '35')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 172.134200000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '36')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 196.897835510000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '37')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 221.598640000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '38')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 246.559370000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '39')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 274.102660000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '40')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 299.173470000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '41')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 324.134200000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '42')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 348.897835510000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '43')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 373.598640000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '44')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 398.559370000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '45')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 422.606680000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '46')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 447.567410000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '47')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 471.622450000000000000
          Top = 8.929190000000000000
          Width = 24.566929130000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '48')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 88.708939690000000000
          Top = 27.826840000000000000
          Width = 410.078989130000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Left = 8.818903330000000000
          Top = 15.118120000000000000
          Width = 57.952793330000000000
          Height = 32.755926670000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL'
            'GERAL:')
          ParentFont = False
        end
      end
      object Memo4: TfrxMemoView
        Left = 86.929385280000000000
        Top = 805.039890000000000000
        Width = 340.157504720000000000
        Height = 71.811070000000000000
        Visible = False
        ShowHint = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Memo.UTF8 = (
          'nome deste relat'#195#179'rio:'
          'PedidoProdVenda_ResumoAd1.fr3')
        ParentFont = False
      end
    end
  end
  object frxDBDS_Resumo1: TfrxDBDataset
    UserName = 'frxDBDS_Resumo1'
    CloseDataSource = False
    DataSet = _F_PedidosProOrcVen.IBQ_PPOV_Resumo1
    BCDToCurrency = False
    Left = 115
    Top = 18
  end
  object FRX_PPOV_ResumoInf: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\DUPLAFACE_019\RELATORIOS\PedidoProdVendas\PedidoProdVenda_Res' +
      'umoInf1'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43651.399288206020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Picture1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                               '
      'end;'
      ''
      'procedure PIC_LOGODAFIRMAOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  vc_imagem:String;                                        '
      'begin'
      ' // COMENTARIO'
      
        ' vc_imagem:=<frxDBDS_empresa."ICONE">;                          ' +
        '                 '
      
        ' PIC_LOGODAFIRMA.FILELINK:=vc_Imagem;                           ' +
        '                                                                ' +
        '             '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;                                                   ' +
        '               '
      'end;'
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;  '
      
        '   T_END.MEMO:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empres' +
        'a."NUMERO">;                                        '
      'end;'
      ''
      'procedure T_ENDOnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;  '
      '   //T_END.MEMO:=vc_endereco;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 304
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_Orcamento
        DataSetName = 'frxDBDS_Orcamento'
      end
      item
        DataSet = frxDBDS_Resumo1
        DataSetName = 'frxDBDS_Resumo1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 15.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      DataSet = frxDBDS_empresa
      DataSetName = 'frxDBDS_Empresa'
      VGuides.Strings = (
        '400,63018'
        '332,59864')
      OnBeforePrint = 'PIC_LOGODAFIRMAOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object PIC_LOGODAFIRMA: TfrxPictureView
          Left = 9.448825000000000000
          Width = 221.102505000000000000
          Height = 113.385900000000000000
          OnBeforePrint = 'PIC_LOGODAFIRMAOnBeforePrint'
          ShowHint = False
          Center = True
          DataField = 'ICONE'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDS_empresaFANTASIA: TfrxMemoView
          Left = 234.669450000000000000
          Top = 18.897650000000000000
          Width = 478.110241100000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FANTASIA'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[frxDBDS_Empresa."FANTASIA"]')
        end
        object frxDBDS_empresaBAIRRO: TfrxMemoView
          Left = 234.669450000000000000
          Top = 56.692950000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            
              '[<frxDBDS_empresa."BAIRRO"> +'#39' - '#39' + <frxDBDS_empresa."CIDADE"> ' +
              '+'#39' - '#39'+<frxDBDS_empresa."ESTADO">]')
        end
        object frxDBDS_empresaCNPJ: TfrxMemoView
          Left = 234.669450000000000000
          Top = 94.488250000000000000
          Width = 187.086735000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[frxDBDS_Empresa."CNPJ"]')
        end
        object T_END: TfrxMemoView
          Left = 234.669450000000000000
          Top = 37.795300000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'T_ENDOnBeforePrint'
          ShowHint = False
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empresa."NUMERO">]')
        end
        object Memo2: TfrxMemoView
          Left = 234.669450000000000000
          Top = 75.590600000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            
              '[<frxDBDS_empresa."CEP"> +'#39' - '#39'+<frxDBDS_empresa."TELEFONE"> +'#39' ' +
              '- '#39'+<frxDBDS_empresa."FAX">]')
        end
        object Memo1: TfrxMemoView
          Left = 235.559215000000000000
          Width = 376.062954290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO RESUMO P/ PRODU'#195#8225#195#402'O A PARTIR DAS VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 128.401574800000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Date: TfrxMemoView
          Left = 614.275975000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 678.417750000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Page: TfrxMemoView
          Left = 670.866575000000000000
          Top = 98.944881890000000000
          Width = 47.244125000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 623.622450000000000000
          Top = 98.944881890000000000
          Width = 47.244125000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 661.417750000000000000
        Width = 718.110700000000000000
        object PIC_LOGO: TfrxPictureView
          Width = 132.283550000000000000
          Height = 47.244125000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          ShowHint = False
          DataField = 'ICONE'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          FileLink = 'C:\DUPLAFACE_019\logo\imagemNOVA.bmp'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo19: TfrxMemoView
          Left = 141.732375000000000000
          Top = 9.448825000000060000
          Width = 529.134114570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DUPLA FACE SISTEMAS - www.duplafacesistemas.com.br')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 98.267975280000000000
          Top = 49.133890000000000000
          Width = 302.362204720000000000
          Height = 71.811070000000000000
          Visible = False
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8 = (
            'nome deste relat'#195#179'rio:'
            'PedidoProdVenda_Resumo1.fr3')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 64.251970940000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDS_Resumo1."PRODUTO"'
        object frxDBDS_Resumo1PRODUTO: TfrxMemoView
          Left = 2.000000000000000000
          Top = 8.000000000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."PRODUTO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 196.008003380000000000
          Top = 48.692932920000000000
          Width = 26.456692910000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'n'#194#186'19')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 226.968733380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 20')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 253.039543380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 21')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 279.000273380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 22')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 304.763908890000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 23')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 330.464713380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 24')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 356.425443380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '25')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 384.968733380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 26')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 411.039543380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 27')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 437.000273380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 28')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 462.763908890000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 29')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 488.464713380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '30')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 514.425443380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '31')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 539.472753380000000000
          Top = 48.692932920000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '32')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 565.433483380000000000
          Top = 48.692932920000000000
          Width = 20.787401570000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '33a')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 193.787533380000000000
          Top = 27.236240000000000000
          Width = 395.716584250000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Infantil')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 194.008003380000000000
          Top = 46.488208510000000000
          Width = 396.094537010000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 20.031496060000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_Orcamento
        DataSetName = 'frxDBDS_Orcamento'
        RowCount = 0
        object frxDBDS_OrcamentoCLIENTE: TfrxMemoView
          Left = 6.488250000000000000
          Top = 1.889763780000000000
          Width = 616.063145910000000000
          Height = 18.141732283464600000
          ShowHint = False
          DataSet = frxDBDS_Orcamento
          DataSetName = 'frxDBDS_Orcamento'
          Memo.UTF8 = (
            '[frxDBDS_Orcamento."NUMERO"]   -  [frxDBDS_Orcamento."CLIENTE"]')
        end
      end
      object Footer1: TfrxFooter
        Height = 7.559060000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Left = 1.559060000000000000
          Top = 5.669291338582700000
          Width = 714.331170000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object MasterData2: TfrxMasterData
        Height = 28.724411890000000000
        Top = 370.393940000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDBDS_Resumo1
        DataSetName = 'frxDBDS_Resumo1'
        RowCount = 0
        object frxDBDS_Resumo1TOTAL: TfrxMemoView
          Left = 680.094930000000000000
          Top = 3.779530000000000000
          Width = 35.905511810000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."TOTAL"]')
        end
        object frxDBDS_Resumo1NUMERO: TfrxMemoView
          Left = 2.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMERO'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."NUMERO"]')
        end
        object frxDBDS_Resumo1N_33: TfrxMemoView
          Left = 196.008003380000000000
          Top = 1.448838430000000000
          Width = 26.456692910000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_19'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_19"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 226.976507320000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_20'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_20"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 253.031625430000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_21'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_21"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 279.086743540000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_22"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 304.582806530000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_23'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_23"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 330.370208100000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_24'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_24"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 356.606428580000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_25'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_25"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 384.307323380000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_26"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 410.362441490000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_27'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_27"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 436.417559600000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_28'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_28"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 461.913622590000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_29'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_29"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 487.701024160000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_30'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_30"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 513.937244640000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_31'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_31"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 539.031813380000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_32'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_32"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 565.086931490000000000
          Top = 1.448838430000000000
          Width = 20.409448820000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N_33A'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N_33A"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 49.511823230000000000
        Top = 423.307360000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 681.070866140000000000
          Top = 3.779530000000000000
          Width = 35.905511810000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."TOTAL">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 195.102491570000000000
          Top = 1.826791190000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_19">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 225.937137240000000000
          Top = 1.826791190000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_20">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 252.102491570000000000
          Top = 1.826791190000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_21">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 277.889893140000000000
          Top = 1.826791190000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_22">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 303.952963380000000000
          Top = 1.669308430000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_23">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 329.787609050000000000
          Top = 1.448838430000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_24">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 356.952963380000000000
          Top = 1.669308430000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_25">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 383.740364950000000000
          Top = 1.448838430000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_26">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 409.803415670000000000
          Top = 1.826791190000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_27">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          Left = 435.968770000000000000
          Top = 1.826791190000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_28">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          Left = 461.756171570000000000
          Top = 1.826791190000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_29">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          Left = 487.819241810000000000
          Top = 1.669308430000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_30">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo14: TfrxSysMemoView
          Left = 511.653887480000000000
          Top = 1.448838430000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_31">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo15: TfrxSysMemoView
          Left = 537.819241810000000000
          Top = 1.669308430000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_32">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo16: TfrxSysMemoView
          Left = 563.606643380000000000
          Top = 1.448838430000000000
          Width = 24.566929133858300000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_33A">,MasterData2,1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Frame.Style = fsDashDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
      object Footer2: TfrxFooter
        Height = 105.826840000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        object Memo36: TfrxMemoView
          Left = 198.141930000000000000
          Top = 6.779530000000000000
          Width = 26.456692910000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'n'#194#186'19')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 229.102660000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 20')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 255.173470000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 21')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 281.134200000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 22')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 306.897835510000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 23')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 332.598640000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 24')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 358.559370000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '25')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 387.102660000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 26')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 413.173470000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 27')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 439.134200000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 28')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 464.897835510000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 29')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 490.598640000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '30')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 516.559370000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '31')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 541.606680000000000000
          Top = 6.779530000000000000
          Width = 20.409448820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '32')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 567.567410000000000000
          Top = 6.779530000000000000
          Width = 20.787401570000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '33a')
          ParentFont = False
        end
        object SysMemo17: TfrxSysMemoView
          Left = 197.913522520000000000
          Top = 26.055132760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_19">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo18: TfrxSysMemoView
          Left = 228.748168190000000000
          Top = 26.055132760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_20">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo19: TfrxSysMemoView
          Left = 254.913522520000000000
          Top = 26.055132760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_21">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo20: TfrxSysMemoView
          Left = 280.700924090000000000
          Top = 26.055132760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_22">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo21: TfrxSysMemoView
          Left = 306.763994330000000000
          Top = 25.897650000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_23">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo22: TfrxSysMemoView
          Left = 332.598640000000000000
          Top = 25.677180000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_24">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo23: TfrxSysMemoView
          Left = 359.763994330000000000
          Top = 25.897650000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_25">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo24: TfrxSysMemoView
          Left = 386.551395900000000000
          Top = 25.677180000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_26">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo25: TfrxSysMemoView
          Left = 412.614446620000000000
          Top = 26.055132760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_27">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo26: TfrxSysMemoView
          Left = 438.779800950000000000
          Top = 26.055132760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_28">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo27: TfrxSysMemoView
          Left = 464.567202520000000000
          Top = 26.055132760000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_29">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo28: TfrxSysMemoView
          Left = 490.630272760000000000
          Top = 25.897650000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_30">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo29: TfrxSysMemoView
          Left = 514.464918430000000000
          Top = 25.677180000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_31">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo30: TfrxSysMemoView
          Left = 540.630272760000000000
          Top = 25.897650000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_32">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo31: TfrxSysMemoView
          Left = 566.417674330000000000
          Top = 25.677180000000000000
          Width = 24.566929130000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N_33A">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo32: TfrxSysMemoView
          Left = 676.535870000000000000
          Top = 25.677180000000000000
          Width = 39.685041810000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."TOTAL">,MasterData2,1)]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 28.338590000000000000
          Top = 2.149660000000000000
          Width = 687.874460000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line6: TfrxLineView
          Left = 27.338590000000000000
          Top = 51.472480000000000000
          Width = 687.874460000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo51: TfrxMemoView
          Left = 30.236240000000000000
          Top = 11.338590000000000000
          Width = 57.952793330000000000
          Height = 32.755926670000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL'
            'GERAL:')
          ParentFont = False
        end
      end
    end
  end
  object FRX_PPOV_ResumoBab: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\DUPLAFACE_019\RELATORIOS\PedidoProdVendas\PedidoProdVenda_Res' +
      'umoBab1.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43651.398215787030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Picture1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                               '
      'end;'
      ''
      'procedure PIC_LOGODAFIRMAOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  vc_imagem:String;                                        '
      'begin'
      ' // COMENTARIO'
      
        ' vc_imagem:=<frxDBDS_empresa."ICONE">;                          ' +
        '                 '
      
        ' PIC_LOGODAFIRMA.FILELINK:=vc_Imagem;                           ' +
        '                                                                ' +
        '             '
      'end;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;                                                   ' +
        '               '
      'end;'
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;  '
      
        '   T_END.MEMO:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empres' +
        'a."NUMERO">;                                        '
      'end;'
      ''
      'procedure T_ENDOnBeforePrint(Sender: TfrxComponent);'
      'VAR '
      '   vc_endereco:String;                '
      'begin'
      
        '   vc_endereco:=<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empre' +
        'sa."NUMERO">;  '
      '   //T_END.MEMO:=vc_endereco;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 334
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_Orcamento
        DataSetName = 'frxDBDS_Orcamento'
      end
      item
        DataSet = frxDBDS_Resumo1
        DataSetName = 'frxDBDS_Resumo1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 15.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      DataSet = frxDBDS_empresa
      DataSetName = 'frxDBDS_Empresa'
      VGuides.Strings = (
        '415,7483'
        '268,34663')
      OnBeforePrint = 'PIC_LOGODAFIRMAOnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object PIC_LOGODAFIRMA: TfrxPictureView
          Left = 9.448825000000000000
          Width = 221.102505000000000000
          Height = 113.385900000000000000
          OnBeforePrint = 'PIC_LOGODAFIRMAOnBeforePrint'
          ShowHint = False
          Center = True
          DataField = 'ICONE'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxDBDS_empresaFANTASIA: TfrxMemoView
          Left = 234.669450000000000000
          Top = 18.897650000000000000
          Width = 478.110241100000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FANTASIA'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[frxDBDS_Empresa."FANTASIA"]')
        end
        object frxDBDS_empresaBAIRRO: TfrxMemoView
          Left = 234.669450000000000000
          Top = 56.692950000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            
              '[<frxDBDS_empresa."BAIRRO"> +'#39' - '#39' + <frxDBDS_empresa."CIDADE"> ' +
              '+'#39' - '#39'+<frxDBDS_empresa."ESTADO">]')
        end
        object frxDBDS_empresaCNPJ: TfrxMemoView
          Left = 234.669450000000000000
          Top = 94.488250000000000000
          Width = 187.086735000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[frxDBDS_Empresa."CNPJ"]')
        end
        object T_END: TfrxMemoView
          Left = 234.669450000000000000
          Top = 37.795300000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'T_ENDOnBeforePrint'
          ShowHint = False
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          Memo.UTF8 = (
            '[<frxDBDS_empresa."ENDERECO">+'#39', '#39'+<frxDBDS_empresa."NUMERO">]')
        end
        object Memo2: TfrxMemoView
          Left = 234.669450000000000000
          Top = 75.590600000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            
              '[<frxDBDS_empresa."CEP"> +'#39' - '#39'+<frxDBDS_empresa."TELEFONE"> +'#39' ' +
              '- '#39'+<frxDBDS_empresa."FAX">]')
        end
        object Memo1: TfrxMemoView
          Left = 235.559215000000000000
          Width = 376.062954290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO RESUMO P/ PRODU'#195#8225#195#402'O A PARTIR DAS VENDAS')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 128.401574800000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Date: TfrxMemoView
          Left = 614.275975000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 678.417750000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
          WordWrap = False
        end
        object Page: TfrxMemoView
          Left = 670.866575000000000000
          Top = 98.944881890000000000
          Width = 47.244125000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 623.622450000000000000
          Top = 98.944881890000000000
          Width = 47.244125000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 593.386210000000000000
        Width = 718.110700000000000000
        object PIC_LOGO: TfrxPictureView
          Width = 132.283550000000000000
          Height = 47.244125000000000000
          OnBeforePrint = 'Picture1OnBeforePrint'
          ShowHint = False
          DataField = 'ICONE'
          DataSet = frxDBDS_empresa
          DataSetName = 'frxDBDS_Empresa'
          FileLink = 'C:\DUPLAFACE_019\logo\imagemNOVA.bmp'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo19: TfrxMemoView
          Left = 141.732375000000000000
          Top = 9.448825000000060000
          Width = 529.134114570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DUPLA FACE SISTEMAS - www.duplafacesistemas.com.br')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Left = 98.267975280000000000
          Top = 49.133890000000000000
          Width = 302.362204720000000000
          Height = 71.811070000000000000
          Visible = False
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8 = (
            'nome deste relat'#195#179'rio:'
            'PedidoProdVenda_Resumo1.fr3')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913380940000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDS_Resumo1."PRODUTO"'
        object frxDBDS_Resumo1PRODUTO: TfrxMemoView
          Left = 2.000000000000000000
          Top = 8.000000000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."PRODUTO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 212.008003380000000000
          Top = 35.692932920000000000
          Width = 52.913402910000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'n'#194#186'17 a 18')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 271.968733380000000000
          Top = 35.692932920000000000
          Width = 43.086628820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '19 a 20')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 322.039543380000000000
          Top = 35.692932920000000000
          Width = 46.866158820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 21 a 22')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 375.000273380000000000
          Top = 35.692932920000000000
          Width = 43.086628820000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' 23 a 24')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 1.134065750000000000
          Top = 32.354360000000000000
          Width = 85.795124250000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'B A B Y')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 20.031496060000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_Orcamento
        DataSetName = 'frxDBDS_Orcamento'
        RowCount = 0
        object frxDBDS_OrcamentoCLIENTE: TfrxMemoView
          Left = 6.488250000000000000
          Top = 1.889763780000000000
          Width = 616.063145910000000000
          Height = 18.141732283464600000
          ShowHint = False
          DataSet = frxDBDS_Orcamento
          DataSetName = 'frxDBDS_Orcamento'
          Memo.UTF8 = (
            '[frxDBDS_Orcamento."NUMERO"]   -  [frxDBDS_Orcamento."CLIENTE"]')
        end
      end
      object Footer1: TfrxFooter
        Height = 7.559060000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Left = 1.559060000000000000
          Top = 5.669291338582700000
          Width = 714.331170000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
      object MasterData2: TfrxMasterData
        Height = 28.724411890000000000
        Top = 359.055350000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDBDS_Resumo1
        DataSetName = 'frxDBDS_Resumo1'
        RowCount = 0
        object frxDBDS_Resumo1TOTAL: TfrxMemoView
          Left = 680.094930000000000000
          Top = 3.779530000000000000
          Width = 35.905511810000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."TOTAL"]')
        end
        object frxDBDS_Resumo1NUMERO: TfrxMemoView
          Left = 2.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NUMERO'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."NUMERO"]')
        end
        object frxDBDS_Resumo1N_33: TfrxMemoView
          Left = 221.008003380000000000
          Top = 1.448838430000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N17_18'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N17_18"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 271.976507320000000000
          Top = 1.448838430000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N21_22'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N21_22"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 328.031625430000000000
          Top = 1.448838430000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N21_22'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N21_22"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 375.086743540000000000
          Top = 1.448838430000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          DataField = 'N23_24'
          DataSet = frxDBDS_Resumo1
          DataSetName = 'frxDBDS_Resumo1'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_Resumo1."N23_24"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 53.291353230000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 681.070866141732000000
          Top = 3.779530000000000000
          Width = 35.905511810000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."TOTAL">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 220.881889760000000000
          Top = 1.826791190000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N17_18">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 272.125984251969000000
          Top = 1.826791190000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N19_20">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 328.062992125984000000
          Top = 1.826791190000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N21_22">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 374.929133858268000000
          Top = 1.826791190000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N23_24">,MasterData2,1)]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        Height = 45.795270700000000000
        Top = 487.559370000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 6.779530000000000000
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clBtnFace
          Frame.Width = 0.500000000000000000
        end
        object SysMemo6: TfrxSysMemoView
          Left = 678.803418110000000000
          Top = 10.511798810000000000
          Width = 35.905511810000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."TOTAL">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 220.614441730000000000
          Top = 8.559060000000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N17_18">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 271.858536220000000000
          Top = 8.559060000000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N19_20">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 327.795544100000000000
          Top = 8.559060000000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N21_22">,MasterData2,1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 374.661685830000000000
          Top = 8.559060000000000000
          Width = 43.086614170000000000
          Height = 24.944881890000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_Resumo1."N23_24">,MasterData2,1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 89.574654250000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Geral:')
          ParentFont = False
        end
      end
    end
  end
end
