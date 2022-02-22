object _F_RelatorioPerdasFR: T_F_RelatorioPerdasFR
  Left = 950
  Top = 99
  AutoScroll = False
  ClientHeight = 273
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 106
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 112
    Width = 74
    Height = 19
    Caption = 'PERDAS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 0
    Top = 91
    Width = 529
    Height = 16
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = -6
    Top = 187
    Width = 529
    Height = 16
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 14
    Top = 206
    Width = 120
    Height = 19
    Caption = 'DEVOLU'#199#213'ES:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
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
    DataSet = _F_RelatorioPerdas_MODEL.IBQ_EMPRESA
    BCDToCurrency = False
    Left = 16
    Top = 16
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 165
    Top = 12
  end
  object FRX_PerdasProdutosDetalhadoData: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\Duplaface_019\Relat'#243'rios\Perdas\RPerdasProdutosDetalhadoData.' +
      'fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43785.367199502320000000
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
    Left = 153
    Top = 99
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE PERDAS DE PRODUTO DETALHADO - DATA')
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
        Top = 411.968770000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDS_RPerdasProdutosDetalhado."DATA">'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 20.787401570000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBDS_RPerdasProdutosDetalhado."DATA">]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 32.370098270000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 27.590568270000000000
          ShowHint = False
          DataField = 'QTD'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."QTD"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 2.913388270000000000
          Width = 555.590910000000000000
          Height = 25.322851730000000000
          ShowHint = False
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."PRODUTO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 332.598640000000000000
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
            '[SUM(<frxDBDS_RPerdasProdutosDetalhado."QTD">,MasterData2,1)]')
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
          Frame.Width = 1.500000000000000000
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
          'RPerdasProdutosDetalhadoData.fr3')
        ParentFont = False
      end
    end
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
    Left = 167
    Top = 44
  end
  object frxDBDS_RPerdasProdutosDetalhado: TfrxDBDataset
    UserName = 'frxDBDS_RPerdasProdutosDetalhado'
    CloseDataSource = False
    DataSet = _F_RelatorioPerdas_MODEL.Ibq_RelatorioPerdas
    BCDToCurrency = False
    Left = 97
    Top = 104
  end
  object FRX_PerdasMatPrimaDetalhadoData: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\Duplaface_019\Relat'#243'rios\Perdas\RPerdasMatPrimaDetalhadoData.' +
      'fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43785.370012546290000000
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
    Left = 151
    Top = 134
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE PERDAS DE MAT.PRIMA  DETALHADO - DATA')
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
        Top = 411.968770000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDS_RPerdasProdutosDetalhado."DATA">'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 20.787401570000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBDS_RPerdasProdutosDetalhado."DATA">]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 32.370098270000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 27.590568270000000000
          ShowHint = False
          DataField = 'QTD'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."QTD"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 2.913388270000000000
          Width = 555.590910000000000000
          Height = 25.322851730000000000
          ShowHint = False
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."PRODUTO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 332.598640000000000000
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
            '[SUM(<frxDBDS_RPerdasProdutosDetalhado."QTD">,MasterData2,1)]')
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
          Frame.Width = 1.500000000000000000
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
          'RPerdasProdutosDetalhadoData.fr3')
        ParentFont = False
      end
    end
  end
  object FRX_PerdasProdutosSintetico: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 'C:\Duplaface_019\Relat'#243'rios\Perdas\RPerdasProdutosSintetico.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43785.441553356500000000
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
    Left = 242
    Top = 99
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
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
            'RELAT'#195#8220'RIO DE PERDAS DE PRODUTOS - SINTETICO')
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
        Top = 419.527830000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDS_RPerdasProdutosDetalhado."PRODUTO">'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 20.787401570000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBDS_RPerdasProdutosDetalhado."PRODUTO">]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 33.370098270000000000
        Top = 275.905690000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 27.590568270000000000
          ShowHint = False
          DataField = 'QTD'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."QTD"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 6.913388270000000000
          Width = 555.590910000000000000
          Height = 25.322851730000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."PRODUTO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 638.740570000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_RPerdasProdutosDetalhado."QTD">,MasterData2,1)]')
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
          'RPerdasProdutosSintetico.fr3')
        ParentFont = False
      end
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 203
    Top = 44
  end
  object FRX_PerdasMatPrimaDetalhadoMercadoria: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\Duplaface_019\Relat'#243'rios\Perdas\RPerdasProdutosDetalhadoMerca' +
      'doria.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43785.444301226900000000
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
    Left = 193
    Top = 133
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
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
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT. DE PERDAS DE MAT.PRIMA  DETALHADO - Mercadoria')
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
        Top = 411.968770000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDS_RPerdasProdutosDetalhado."PRODUTO">'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 20.787401570000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBDS_RPerdasProdutosDetalhado."PRODUTO">]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 32.370098270000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 27.590568270000000000
          ShowHint = False
          DataField = 'QTD'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."QTD"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 2.913388270000000000
          Width = 555.590910000000000000
          Height = 25.322851730000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."DATA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 332.598640000000000000
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
            '[SUM(<frxDBDS_RPerdasProdutosDetalhado."QTD">,MasterData2,1)]')
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
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
      end
      object Memo4: TfrxMemoView
        Left = 68.031540000000000000
        Top = 574.488560000000000000
        Width = 370.393744720000000000
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
          'RPerdasMatPrimaDetalhadoMercadoria.fr3')
        ParentFont = False
      end
    end
  end
  object FRX_PerdasProdutosDetalhadoMercadoria: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\Duplaface_019\Relat'#243'rios\Perdas\RPerdasMatPrimaDetalhadoMerca' +
      'doria.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43785.432125763890000000
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
    Left = 192
    Top = 100
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
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
          Width = 383.622014290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT. DE PERDAS DE PRODUTO DETALHADO - MERCADORIA')
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
          Left = 621.275975000000000000
          Width = 56.692910940000000000
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
          Left = 679.417750000000000000
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
        Top = 404.409710000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDS_RPerdasProdutosDetalhado."PRODUTO">'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 20.787401570000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBDS_RPerdasProdutosDetalhado."PRODUTO">]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 26.456692913385800000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 27.590568270000000000
          ShowHint = False
          DataField = 'QTD'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."QTD"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 2.913388270000000000
          Width = 555.590910000000000000
          Height = 25.322851730000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."DATA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 325.039580000000000000
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
            '[SUM(<frxDBDS_RPerdasProdutosDetalhado."QTD">,MasterData2,1)]')
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
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo4: TfrxMemoView
        Left = 68.031540000000000000
        Top = 574.488560000000000000
        Width = 374.173274720000000000
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
          'RPerdasProdutosDetalhadoMercadoria.fr3')
        ParentFont = False
      end
    end
  end
  object FRX_PerdasMatPrimaSintetico: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 'C:\Duplaface_019\Relat'#243'rios\Perdas\RPerdasProdutosSintetico.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43785.449351076390000000
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
    Left = 241
    Top = 133
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
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
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE PERDAS DE Mat.Prima - Sint'#195#169'tico')
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
        Top = 404.409710000000000000
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
          Top = 9.448825000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 32.125996460000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDS_RPerdasProdutosDetalhado."PRODUTO">'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 11.787401570000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBDS_RPerdasProdutosDetalhado."PRODUTO">]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 29.590568270000000000
        Top = 268.346630000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDBDS_RPerdasProdutosDetalhado
        DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 27.590568270000000000
          ShowHint = False
          DataField = 'QTD'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."QTD"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.913388270000000000
          Width = 555.590910000000000000
          Height = 25.322851730000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frxDBDS_RPerdasProdutosDetalhado
          DataSetName = 'frxDBDS_RPerdasProdutosDetalhado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_RPerdasProdutosDetalhado."DATA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 638.740570000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_RPerdasProdutosDetalhado."QTD">,MasterData2,1)]')
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
          Frame.Style = fsDashDot
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
          'RPerdasMatPrimaSintetico.fr3')
        ParentFont = False
      end
    end
  end
  object FRX_DevolucoesDetalhadoMercadoria: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\Duplaface_019\Relat'#243'rios\Perdas\RDevolucoesDetalhadosMercador' +
      'ia.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43787.432381203700000000
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
    Left = 208
    Top = 198
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RDevolucores
        DataSetName = 'frxDBDS_RDevolucores'
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
          Left = 233.559215000000000000
          Width = 387.401544290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE DEVOLU'#195#8225#195#8226'ES DETALHADO - Produto')
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
          Left = 624.275975000000000000
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
          Left = 685.417750000000000000
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
        Top = 411.968770000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDS_RDevolucores."PRODUTO">'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 20.787401570000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBDS_RDevolucores."PRODUTO">]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 32.370098270000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDS_RDevolucores
        DataSetName = 'frxDBDS_RDevolucores'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 27.590568270000000000
          ShowHint = False
          DataField = 'QTD'
          DataSet = frxDBDS_RDevolucores
          DataSetName = 'frxDBDS_RDevolucores'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RDevolucores."QTD"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 2.913388270000000000
          Width = 555.590910000000000000
          Height = 25.322851730000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frxDBDS_RDevolucores
          DataSetName = 'frxDBDS_RDevolucores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_RDevolucores."DATA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 638.740570000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_RDevolucores."QTD">,MasterData2,1)]')
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
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo4: TfrxMemoView
        Left = 68.031540000000000000
        Top = 574.488560000000000000
        Width = 385.511864720000000000
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
          'RDevolucoesDetalhadosMercadoria.fr3')
        ParentFont = False
      end
    end
  end
  object FRX_DevolucoesSintetico: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 'C:\Duplaface_019\Relat'#243'rios\Perdas\RDevolucoesSintetico.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.PagesInCache = 20
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41334.430731331000000000
    ReportOptions.LastChange = 43787.433969050900000000
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
    Left = 240
    Top = 198
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RDevolucores
        DataSetName = 'frxDBDS_RDevolucores'
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
          Left = 233.559215000000000000
          Width = 387.401544290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE DEVOLU'#195#8225#195#8226'ES SINT'#195#8240'TICO')
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
          Left = 624.275975000000000000
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
          Left = 685.417750000000000000
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
        Top = 411.968770000000000000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDS_RDevolucores."PRODUTO">'
        object frxDBDS_AgrupaPRODUTO: TfrxMemoView
          Left = 5.456710000000000000
          Top = 20.787401570000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'frxDBDS_Agrupa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<frxDBDS_RDevolucores."PRODUTO">]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 32.370098270000000000
        Top = 275.905690000000000000
        Visible = False
        Width = 718.110700000000000000
        DataSet = frxDBDS_RDevolucores
        DataSetName = 'frxDBDS_RDevolucores'
        RowCount = 0
        object frxDBDS_AgrupaQUANTIDADE: TfrxMemoView
          Left = 636.945270000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 27.590568270000000000
          ShowHint = False
          DataField = 'QTD'
          DataSet = frxDBDS_RDevolucores
          DataSetName = 'frxDBDS_RDevolucores'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RDevolucores."QTD"]')
          ParentFont = False
        end
        object frxDBDS_AgrupaCOR: TfrxMemoView
          Left = 49.133890000000000000
          Top = 2.913388270000000000
          Width = 555.590910000000000000
          Height = 25.322851730000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frxDBDS_RDevolucores
          DataSetName = 'frxDBDS_RDevolucores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDS_RDevolucores."DATA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 638.740570000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDS_RDevolucores."QTD">,MasterData2,1)]')
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
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo4: TfrxMemoView
        Left = 68.031540000000000000
        Top = 574.488560000000000000
        Width = 385.511864720000000000
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
          'RDevolucoesSintetico.fr3')
        ParentFont = False
      end
    end
  end
  object frxDBDS_RDevolucores: TfrxDBDataset
    UserName = 'frxDBDS_RDevolucores'
    CloseDataSource = False
    DataSet = _F_RelatorioDevolucoes_MODEL.Ibq_RelatorioDevolucoes
    BCDToCurrency = False
    Left = 155
    Top = 200
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 237
    Top = 43
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 272
    Top = 43
  end
end
