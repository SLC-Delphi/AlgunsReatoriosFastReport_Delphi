object _F_CurvaABC_FR: T_F_CurvaABC_FR
  Left = 853
  Top = 194
  AutoScroll = False
  ClientHeight = 273
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 112
    Width = 94
    Height = 19
    Caption = 'VendasProd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = -9
    Top = 102
    Width = 529
    Height = 16
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = -9
    Top = 201
    Width = 529
    Height = 16
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 14
    Top = 206
    Width = 109
    Height = 19
    Caption = 'OrdemServi'#231'o'
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
    DataSet = _F_RelatorioCurvaABC_MODEL.IBQ_EMPRESA
    BCDToCurrency = False
    Left = 16
    Top = 16
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 165
    Top = 12
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'H:\ABC2_MaiorArrecadacao_Lucratividade2.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43953.414910474540000000
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
  object frxDBDS_RelABCVendasProdQtd: TfrxDBDataset
    UserName = 'frxDBDS_RelABCVendasProdQtd'
    CloseDataSource = False
    DataSet = _F_RelatorioCurvaABC_MODEL.Ibq_RelABCVendasProdQtd
    BCDToCurrency = False
    Left = 129
    Top = 96
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
  object frx_RelABCVendasProdQtd: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 'C:\Duplaface_019\Relat'#243'rios\ABC1.0\RelABCVendasProdQtd1.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.589307951400000000
    ReportOptions.LastChange = 43956.890082835650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 96
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RelABCVendasProdQtd
        DataSetName = 'frxDBDS_RelABCVendasProdQtd'
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
      LeftMargin = 9.500000000000000000
      RightMargin = 9.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 198.425235910000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
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
        object Line1: TfrxLineView
          Top = 137.401574800000000000
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
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO CURVA ABC DE PRODUTOS MAIS VENDIDOS')
          ParentFont = False
        end
        object frxDBDS_RelABCVendasProdQtdDTPERIODO: TfrxMemoView
          Left = 234.551330000000000000
          Top = 117.165430000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            'Per'#195#173'odo de: [frxDBDS_RelABCVendasProdQtd."DTPERIODO"]')
        end
        object Memo15: TfrxMemoView
          Left = 4.338590000000000000
          Top = 176.535560000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            
              'que Abaixo se encontram distribu'#195#173'dos, por ordem de Quantidade T' +
              'otal Vendida por Produto dentro do Per'#195#173'odo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 139.842610000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES IMPORTANTES:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 4.220470000000000000
          Top = 158.456627000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos aqui apresentados s'#195#163'o os que obtiveram MAIORES VEND' +
              'AS neste per'#195#173'odo')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 506.457020000000000000
        Width = 721.890230000000000000
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
        object Memo4: TfrxMemoView
          Left = 90.708720000000000000
          Top = 49.133890000000000000
          Width = 506.456824720000000000
          Height = 26.456710000000000000
          Visible = False
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8 = (
            'RelABCVendasProdQtd1.fr3')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456692910000000000
        Top = 347.716760000000000000
        Width = 721.890230000000000000
        DataSet = frxDBDS_RelABCVendasProdQtd
        DataSetName = 'frxDBDS_RelABCVendasProdQtd'
        RowCount = 0
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVENDAS: TfrxMemoView
          Left = 7.559055120000000000
          Top = 2.535433070000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTALVENDAS'
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtd."TOTALVENDAS"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoPROD_SERV: TfrxMemoView
          Left = 113.385826770000000000
          Top = 2.535433070000000000
          Width = 302.362204720000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtd."PRODUTO"]')
          WordWrap = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoUNIDADE: TfrxMemoView
          Left = 419.929133860000000000
          Top = 2.535433070000000000
          Width = 68.031466770000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtd."UNIDADE"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoVENDA: TfrxMemoView
          Left = 494.693260000000000000
          Top = 2.535433070000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDA'
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtd."VENDA"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVALOR_REAL: TfrxMemoView
          Left = 601.504330000000000000
          Top = 2.535433070000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTALVALOR'
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtd."TOTALVALOR"]')
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 279.685220000000000000
        Width = 721.890230000000000000
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1.779530000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Quantidade'
            'Total Vendida')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 113.385826770000000000
          Top = 14.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 419.929133860000000000
          Top = 14.779530000000000000
          Width = 71.810996770000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Unidade')
        end
        object Line2: TfrxLineView
          Left = -0.220470000000000000
          Top = 42.456710000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 503.134200000000000000
          Top = 3.440940000000000000
          Width = 71.810996770000000000
          Height = 30.236240000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Venda')
        end
        object Memo9: TfrxMemoView
          Left = 608.504330000000000000
          Top = 3.779530000000000000
          Width = 98.267706770000000000
          Height = 30.236240000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Total'
            'das Vendas')
        end
      end
      object Footer1: TfrxFooter
        Height = 49.133858270000000000
        Top = 396.850650000000000000
        Width = 721.890230000000000000
        object Memo20: TfrxMemoView
          Left = 3.559060000000000000
          Top = 8.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 2.779530000000000000
          Top = 5.779530000000000000
          Width = 94.488250000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 5.669291340000000000
          Top = 27.236240000000000000
          Width = 92.598425200000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[sUM(<frxDBDS_RelABCVendasProdQtd."TOTALVENDAS">,masterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frx_RelABCArrecadacaoVendas: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\Duplaface_019\Relat'#243'rios\ABC1.0\RelABCVendasProdValorVenda.fr' +
      '3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.589307951400000000
    ReportOptions.LastChange = 43956.890261342600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 270
    Top = 98
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBS__RelABCArrecadaoVendas
        DataSetName = 'frxDBS__RelABCArrecadaoVendas'
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
      LeftMargin = 9.500000000000000000
      RightMargin = 9.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 243.779542200000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
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
        object Line1: TfrxLineView
          Top = 242.102362200000000000
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
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO CURVA ABC DE PRODUTOS POR TOTAL DE VENDAS')
          ParentFont = False
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOBRUTA: TfrxMemoView
          Left = 271.346630000000000000
          Top = 173.842610000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ARRECADACAOBRUTA'
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS__RelABCArrecadaoVendas."ARRECADACAOBRUTA"]')
          ParentFont = False
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOPERIODO: TfrxMemoView
          Left = 634.961040000000000000
          Top = 193.858380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS__RelABCArrecadaoVendas."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Top = 173.842610000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'A arrecada'#195#167#195#163'o bruta do per'#195#173'odo foi de:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 7.559060000000000000
          Top = 195.299320000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos que constam neste relat'#195#179'rio geraram uma arrecada'#195#167#195 +
              #163'o, dentro do per'#195#173'do de:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 216.535560000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Que Abaixo se encontram distribu'#195#173'dos, por ordem do Total Arreca' +
              'dado por Produto')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 129.102362200000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo16: TfrxMemoView
          Left = 6.000000000000000000
          Top = 133.724490000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES IMPORTANTES:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 6.440940000000000000
          Top = 152.338507000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos aqui apresentados s'#195#163'o os que obtiveram MAIOR ARRECA' +
              'DA'#195#8225#195#402'O neste per'#195#173'odo')
          ParentFont = False
        end
        object frxDBDS_RelABCVendasProdQtdDTPERIODO: TfrxMemoView
          Left = 234.330860000000000000
          Top = 111.385900000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            'Per'#195#173'odo de: [frxDBS__RelABCArrecadaoVendas."DTPERIODO"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 63.803185000000000000
        Top = 544.252320000000000000
        Width = 721.890230000000000000
        object PIC_LOGO: TfrxPictureView
          Top = 9.000000000000000000
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
          Top = 8.448825000000000000
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
        object Line3: TfrxLineView
          Left = 3.559060000000000000
          Top = 2.779530000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 98.267780000000000000
          Top = 60.472480000000000000
          Width = 506.456824720000000000
          Height = 26.456710000000000000
          Visible = False
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8 = (
            'RelABCVendasProdValorVenda.fr3')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 41.574830000000000000
        Top = 325.039580000000000000
        Width = 721.890230000000000000
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          Left = 612.283860000000000000
          Top = 2.401574800000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Quantidade'
            'Total Vendida')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 138.385826770000000000
          Top = 13.779530000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 444.929133860000000000
          Top = 13.779530000000000000
          Width = 71.810996770000000000
          Height = 22.677180000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Unidade')
        end
        object Line2: TfrxLineView
          Left = 1.102350000000000000
          Top = 40.677180000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 528.134200000000000000
          Top = 2.440940000000000000
          Width = 71.810996770000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Venda')
        end
        object Memo9: TfrxMemoView
          Left = 11.559060000000000000
          Top = 2.628346460000000000
          Width = 113.385826770000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Arrecadado'
            'por Produto')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 20.787401574803100000
        Top = 389.291590000000000000
        Width = 721.890230000000000000
        DataSet = frxDBS__RelABCArrecadaoVendas
        DataSetName = 'frxDBS__RelABCArrecadaoVendas'
        RowCount = 0
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVENDAS: TfrxMemoView
          Left = 611.945265120000000000
          Top = 1.779530000000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTALQTDVENDAS'
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS__RelABCArrecadaoVendas."TOTALQTDVENDAS"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoPROD_SERV: TfrxMemoView
          Left = 138.047236770000000000
          Top = 1.892915830000000000
          Width = 302.362204720000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          Memo.UTF8 = (
            '[frxDBS__RelABCArrecadaoVendas."PRODUTO"]')
          WordWrap = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoUNIDADE: TfrxMemoView
          Left = 444.590543860000000000
          Top = 1.779530000000000000
          Width = 68.031466770000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          Memo.UTF8 = (
            '[frxDBS__RelABCArrecadaoVendas."UNIDADE"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoVENDA: TfrxMemoView
          Left = 519.354670000000000000
          Top = 1.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDA'
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS__RelABCArrecadaoVendas."VENDA"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVALOR_REAL: TfrxMemoView
          Left = 3.000000000000000000
          Top = 1.892915830000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS__RelABCArrecadaoVendas."TOTALARRECADADOPORPRODUTO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 49.133858270000000000
        Top = 434.645950000000000000
        Width = 721.890230000000000000
        object Memo13: TfrxMemoView
          Left = 3.559060000000000000
          Top = 29.000000000000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS__RelABCArrecadaoVendas."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.559060000000000000
          Top = 8.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 2.779530000000000000
          Top = 5.779530000000000000
          Width = 124.724490000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBS__RelABCArrecadaoVendas: TfrxDBDataset
    UserName = 'frxDBS__RelABCArrecadaoVendas'
    CloseDataSource = False
    DataSet = _F_RelatorioCurvaABC_MODEL.ibq_RelABCArrecadacao
    BCDToCurrency = False
    Left = 241
    Top = 98
  end
  object frx_RelABCVendasProdQtdPercent: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 'C:\Duplaface_019\Relat'#243'rios\ABC1.0\RelABCVendasProdQtd2.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.589307951400000000
    ReportOptions.LastChange = 43956.895242847230000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 132
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBS__RelABCVendasProdQtdPercent
        DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent'
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
      LeftMargin = 9.500000000000000000
      RightMargin = 9.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 204.212740000000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
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
        object Line1: TfrxLineView
          Top = 137.401574800000000000
          Width = 729.448826220000000000
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
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO CURVA ABC DE + MAIS VENDIDOS c/ MarkUp')
          ParentFont = False
        end
        object frxDBDS_RelABCVendasProdQtdDTPERIODO: TfrxMemoView
          Left = 234.653680000000000000
          Top = 114.606370000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent."DTPERIODO"]')
        end
        object Memo15: TfrxMemoView
          Left = 4.338590000000000000
          Top = 176.535560000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            
              'que Abaixo se encontram distribu'#195#173'dos, por ordem de Quantidade T' +
              'otal Vendida por Produto dentro do Per'#195#173'odo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 139.842610000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES IMPORTANTES:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 4.220470000000000000
          Top = 158.456627000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos aqui apresentados s'#195#163'o os que obtiveram MAIORES VEND' +
              'AS neste per'#195#173'odo')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 517.795610000000000000
        Width = 721.890230000000000000
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
        object Line3: TfrxLineView
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 94.488250000000000000
          Top = 49.133890000000000000
          Width = 506.456824720000000000
          Height = 26.456710000000000000
          Visible = False
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8 = (
            'RelABCVendasProdQtd2.fr3')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 27.212598430000000000
        Top = 359.055350000000000000
        Width = 721.890230000000000000
        DataSet = frxDBS__RelABCVendasProdQtdPercent
        DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent'
        RowCount = 0
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVENDAS: TfrxMemoView
          Left = 7.559055120000000000
          Top = 4.535433070000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTALVENDAS'
          DataSet = frxDBS__RelABCVendasProdQtdPercent
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent."TOTALVENDAS"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoPROD_SERV: TfrxMemoView
          Left = 113.385826770000000000
          Top = 4.535433070000000000
          Width = 294.803149610000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBS__RelABCVendasProdQtdPercent
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent'
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent."PRODUTO"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoUNIDADE: TfrxMemoView
          Left = 409.929133860000000000
          Top = 4.535433070000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBS__RelABCVendasProdQtdPercent
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent'
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent."UNIDADE"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoVENDA: TfrxMemoView
          Left = 475.693260000000000000
          Top = 4.535433070000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CUSTO'
          DataSet = frxDBS__RelABCVendasProdQtdPercent
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent."CUSTO"]')
        end
        object Memo9: TfrxMemoView
          Left = 636.488560000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDA'
          DataSet = frxDBS__RelABCVendasProdQtdPercent
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent."VENDA"]')
        end
        object Memo10: TfrxMemoView
          Left = 560.858690000000000000
          Top = 4.779530000000000000
          Width = 71.811026060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCVendasProdQtdPercent
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent'
          DisplayFormat.FormatStr = '%2.2n'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent."PERCENTUAL"]')
        end
      end
      object Header1: TfrxHeader
        Height = 52.913420000000000000
        Top = 283.464750000000000000
        Width = 721.890230000000000000
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1.779530000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Qtd Total '
            'Vendida')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 113.385826770000000000
          Top = 14.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 409.929133860000000000
          Top = 14.779530000000000000
          Width = 56.692876770000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Unidade')
        end
        object Line2: TfrxLineView
          Left = -0.220470000000000000
          Top = 44.456710000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 475.842519690000000000
          Top = 1.889763780000000000
          Width = 79.370078740000000000
          Height = 30.236240000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Custo')
        end
        object Memo12: TfrxMemoView
          Left = 560.811023620000000000
          Top = 2.889763780000000000
          Width = 71.811023620000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '% de'
            'Margem')
        end
        object Memo8: TfrxMemoView
          Left = 634.149970000000000000
          Top = 3.000000000000000000
          Width = 79.370078740000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Venda')
        end
      end
      object Footer1: TfrxFooter
        Height = 49.133858270000000000
        Top = 408.189240000000000000
        Width = 721.890230000000000000
        object Memo20: TfrxMemoView
          Left = 3.559060000000000000
          Top = 8.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 2.779530000000000000
          Top = 5.779530000000000000
          Width = 94.488250000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 5.669291340000000000
          Top = 27.236240000000000000
          Width = 92.598425200000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[sUM(<frxDBDS_RelABCVendasProdQtdPercent."TOTALVENDAS">,masterDa' +
              'ta1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBS__RelABCVendasProdQtdPercent: TfrxDBDataset
    UserName = 'frxDBDS_RelABCVendasProdQtdPercent'
    CloseDataSource = False
    DataSet = _F_RelatorioCurvaABC_MODEL.Ibq_RelABCVendasProdQtdPercent1
    BCDToCurrency = False
    Left = 129
    Top = 132
  end
  object frx_RelABCVendasProdQtdPercent2: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 'C:\Duplaface_019\Relat'#243'rios\ABC1.0\RelABCVendasProdQtd3.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.589307951400000000
    ReportOptions.LastChange = 43956.895414884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 159
    Top = 165
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBDS_RelABCVendasProdQtdPercent2
        DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent2'
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
      LeftMargin = 9.500000000000000000
      RightMargin = 9.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 230.551166460000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
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
        object Line1: TfrxLineView
          Top = 138.401574800000000000
          Width = 729.448826220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Date: TfrxMemoView
          Left = 623.275975000000000000
          Width = 56.692910940000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm'
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
          Left = 683.417750000000000000
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
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO CURVA ABC DE PRODUTOS + VENDIDOS 2 - MarkUp')
          ParentFont = False
        end
        object frxDBDS_RelABCVendasProdQtdDTPERIODO: TfrxMemoView
          Left = 234.669450000000000000
          Top = 114.385900000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent2."DTPERIODO"]')
        end
        object Memo15: TfrxMemoView
          Left = 4.338590000000000000
          Top = 185.315090000000000000
          Width = 710.551640000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            
              'Que Abaixo se encontram distribu'#195#173'dos, por ordem do MarkUp - %de' +
              ' margem adicional sobre o Pre'#195#167'o de Custo para gerar o Pre'#195#167'o de' +
              ' Venda')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 143.622140000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES IMPORTANTES:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 4.220470000000000000
          Top = 162.236157000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos aqui apresentados s'#195#163'o os que obtiveram MAIORES VEND' +
              'AS neste per'#195#173'odo')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 540.472790000000000000
        Width = 721.890230000000000000
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
        object Line3: TfrxLineView
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 103.047310000000000000
          Top = 49.133890000000000000
          Width = 506.456824720000000000
          Height = 26.456710000000000000
          Visible = False
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8 = (
            'RelABCVendasProdQtd3.fr3')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 27.212598430000000000
        Top = 385.512060000000000000
        Width = 721.890230000000000000
        DataSet = frxDBDS_RelABCVendasProdQtdPercent2
        DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent2'
        RowCount = 0
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVENDAS: TfrxMemoView
          Left = 628.740565120000000000
          Top = 3.535433070000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTALVENDAS'
          DataSet = frxDBDS_RelABCVendasProdQtdPercent2
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent2."TOTALVENDAS"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoPROD_SERV: TfrxMemoView
          Left = 99.385826770000000000
          Top = 4.535433070000000000
          Width = 294.803149610000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBDS_RelABCVendasProdQtdPercent2
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent2'
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent2."PRODUTO"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoUNIDADE: TfrxMemoView
          Left = 395.929133860000000000
          Top = 4.535433070000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBDS_RelABCVendasProdQtdPercent2
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent2'
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent2."UNIDADE"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoVENDA: TfrxMemoView
          Left = 461.693260000000000000
          Top = 4.535433070000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CUSTO'
          DataSet = frxDBDS_RelABCVendasProdQtdPercent2
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent2."CUSTO"]')
        end
        object Memo9: TfrxMemoView
          Left = 545.488560000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDA'
          DataSet = frxDBDS_RelABCVendasProdQtdPercent2
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent2."VENDA"]')
        end
        object Memo10: TfrxMemoView
          Left = 4.897650000000000000
          Top = 4.779530000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PERCENTUAL'
          DataSet = frxDBDS_RelABCVendasProdQtdPercent2
          DataSetName = 'frxDBDS_RelABCVendasProdQtdPercent2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDS_RelABCVendasProdQtdPercent2."PERCENTUAL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 52.913420000000000000
        Top = 309.921460000000000000
        Width = 721.890230000000000000
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          Left = 628.740570000000000000
          Top = 0.779530000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qtd Total '
            'Vendida')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 99.385826770000000000
          Top = 14.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 395.929133860000000000
          Top = 14.779530000000000000
          Width = 56.692876770000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Unidade')
        end
        object Line2: TfrxLineView
          Left = -0.220470000000000000
          Top = 44.456710000000000000
          Width = 733.228356220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 461.842519690000000000
          Top = 1.889763780000000000
          Width = 79.370078740000000000
          Height = 30.236240000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Custo')
        end
        object Memo12: TfrxMemoView
          Left = 4.849983620000000000
          Top = 2.889763780000000000
          Width = 83.149606300000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '% de'
            'Margem')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 549.149970000000000000
          Top = 3.000000000000000000
          Width = 79.370078740000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Venda')
        end
      end
      object Footer1: TfrxFooter
        Height = 45.354328270000000000
        Top = 434.645950000000000000
        Width = 721.890230000000000000
        object Memo20: TfrxMemoView
          Left = 625.559060000000000000
          Top = 4.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 624.779530000000000000
          Top = 1.779530000000000000
          Width = 94.488250000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 627.669291340000000000
          Top = 23.236240000000000000
          Width = 92.598425200000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[sUM(<frxDBDS_RelABCVendasProdQtdPercent2."TOTALVENDAS">,masterD' +
              'ata1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDS_RelABCVendasProdQtdPercent2: TfrxDBDataset
    UserName = 'frxDBDS_RelABCVendasProdQtdPercent2'
    CloseDataSource = False
    DataSet = _F_RelatorioCurvaABC_MODEL.Ibq_RelABCVendasProdQtdPercent2
    BCDToCurrency = False
    Left = 128
    Top = 165
  end
  object frx_RelABCArrecadacaoMarkUp1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 'C:\Duplaface_019\Relat'#243'rios\ABC1.0\RelABCVendasProMarkUp1.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.589307951400000000
    ReportOptions.LastChange = 43969.674484618060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 270
    Top = 132
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBS_RelABCArrecadacapMarkUp1
        DataSetName = 'frxDBS_RelABCVendasProdMarkUp1'
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
      LeftMargin = 9.500000000000000000
      RightMargin = 9.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 253.228510000000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
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
        object Line1: TfrxLineView
          Top = 134.401574800000000000
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
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO CURVA ABC DE Arrecada'#195#167#195#163'o e MarkUp Produto 1')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 249.842610000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOBRUTA: TfrxMemoView
          Left = 271.346630000000000000
          Top = 185.582857800000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."ARRECADACAOBRUTA"]')
          ParentFont = False
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOPERIODO: TfrxMemoView
          Left = 634.961040000000000000
          Top = 205.598627800000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Top = 185.582857800000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'A arrecada'#195#167#195#163'o bruta do per'#195#173'odo foi de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 207.039567800000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos que constam neste relat'#195#179'rio geraram uma arrecada'#195#167#195 +
              #163'o, dentro do per'#195#173'do de:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 228.275807800000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Que Abaixo se encontram distribu'#195#173'dos, por ordem do Total Arreca' +
              'dado por Produto')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 5.000000000000000000
          Top = 138.622140000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES IMPORTANTES:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 5.440940000000000000
          Top = 157.236157000000000000
          Width = 691.653990000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos aqui apresentados s'#195#163'o os que obtiveram MAIOR ARRECA' +
              'DA'#195#8225#195#402'O neste per'#195#173'odo')
          ParentFont = False
        end
        object frxDBDS_RelABCVendasProdQtdDTPERIODO: TfrxMemoView
          Left = 234.330860000000000000
          Top = 113.385900000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."DTPERIODO"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 555.590910000000000000
        Width = 721.890230000000000000
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
        object Memo4: TfrxMemoView
          Left = 91.708720000000000000
          Top = 26.456710000000000000
          Width = 506.456824720000000000
          Height = 26.456710000000000000
          Visible = False
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8 = (
            'RelABCVendasProdMarkUp1')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 332.598640000000000000
        Width = 721.890230000000000000
        ReprintOnNewPage = True
        object Line2: TfrxLineView
          Left = 1.102350000000000000
          Top = 40.677180000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 11.559060000000000000
          Top = 3.628346460000000000
          Width = 113.385826770000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Arrecadado'
            'dos Produtos')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 140.724490000000000000
          Top = 15.110236220000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 409.267797090000000000
          Top = 15.110236220000000000
          Width = 56.692876770000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Unidade')
        end
        object Memo11: TfrxMemoView
          Left = 475.181182920000000000
          Top = 2.220470000000000000
          Width = 79.370078740000000000
          Height = 30.236240000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Custo')
        end
        object Memo12: TfrxMemoView
          Left = 647.149686850000000000
          Top = 2.220470000000000000
          Width = 71.811023620000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '% de'
            'MarkUp')
        end
        object Memo8: TfrxMemoView
          Left = 562.488633230000000000
          Top = 3.330706220000000000
          Width = 79.370078740000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Venda')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 721.890230000000000000
        DataSet = frxDBS_RelABCArrecadacapMarkUp1
        DataSetName = 'frxDBS_RelABCVendasProdMarkUp1'
        RowCount = 0
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVALOR_REAL: TfrxMemoView
          Left = 3.000000000000000000
          Top = 1.892915830000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTALVALOR'
          DataSet = frxDBS_RelABCArrecadacapMarkUp1
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."TOTALVALOR"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoPROD_SERV: TfrxMemoView
          Left = 136.606370000000000000
          Top = 1.889763780000000000
          Width = 268.346439610000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBS_RelABCArrecadacapMarkUp1
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp1'
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."PRODUTO"]')
          WordWrap = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoUNIDADE: TfrxMemoView
          Left = 408.149677090000000000
          Top = 1.889763780000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBS_RelABCArrecadacapMarkUp1
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp1'
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."UNIDADE"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoVENDA: TfrxMemoView
          Left = 473.913803230000000000
          Top = 1.889763780000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CUSTO'
          DataSet = frxDBS_RelABCArrecadacapMarkUp1
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."CUSTO"]')
        end
        object Memo1: TfrxMemoView
          Left = 557.709103230000000000
          Top = 1.889763779527560000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDA'
          DataSet = frxDBS_RelABCArrecadacapMarkUp1
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."VENDA"]')
        end
        object Memo10: TfrxMemoView
          Left = 646.079233230000000000
          Top = 1.889763779527560000
          Width = 71.811026060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PERCENTUAL'
          DataSet = frxDBS_RelABCArrecadacapMarkUp1
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp1'
          DisplayFormat.FormatStr = '%2.2n'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."PERCENTUAL"]')
        end
      end
      object Footer1: TfrxFooter
        Height = 49.133858270000000000
        Top = 445.984540000000000000
        Width = 721.890230000000000000
        object Memo18: TfrxMemoView
          Left = 3.559060000000000000
          Top = 29.000000000000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp1."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 3.559060000000000000
          Top = 8.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 2.779530000000000000
          Top = 5.779530000000000000
          Width = 124.724490000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBS_RelABCArrecadacapMarkUp1: TfrxDBDataset
    UserName = 'frxDBS_RelABCVendasProdMarkUp1'
    CloseDataSource = False
    DataSet = _F_RelatorioCurvaABC_MODEL.ibq_RelABCArrecadacaoMarkUp
    BCDToCurrency = False
    Left = 241
    Top = 133
  end
  object frx_RelABCArrecadacaoMarkUp2: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 'C:\Duplaface_019\Relat'#243'rios\ABC1.0\RelABCVendasProMarkUp2.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.589307951400000000
    ReportOptions.LastChange = 43969.674062638890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 270
    Top = 163
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBS_RelABCArrecadacapMarkUp2
        DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
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
      LeftMargin = 9.500000000000000000
      RightMargin = 9.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 249.448980000000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
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
          Left = 678.866575000000000000
          Top = 98.944881890000000000
          Width = 39.685065000000000000
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
          Left = 631.622450000000000000
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
        object Memo7: TfrxMemoView
          Left = 233.330860000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO CURVA ABC DE Arrecada'#195#167#195#163'o e MarkUp de Produto 2')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 2.000000000000000000
          Top = 136.063080000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line5: TfrxLineView
          Left = 2.000000000000000000
          Top = 246.504115200000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOBRUTA: TfrxMemoView
          Left = 273.346630000000000000
          Top = 181.244363000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."ARRECADACAOBRUTA"]')
          ParentFont = False
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOPERIODO: TfrxMemoView
          Left = 635.961040000000000000
          Top = 201.260133000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 9.559060000000000000
          Top = 182.244363000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'A arrecada'#195#167#195#163'o bruta do per'#195#173'odo foi de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 9.559060000000000000
          Top = 202.701073000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos que constam neste relat'#195#179'rio geraram uma arrecada'#195#167#195 +
              #163'o, dentro do per'#195#173'do de:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 8.559060000000000000
          Top = 223.937313000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Que Abaixo se encontram distribu'#195#173'dos, por ordem do % de MarkUp')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 8.897650000000000000
          Top = 142.905773000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES IMPORTANTES:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 9.338590000000000000
          Top = 162.519790000000000000
          Width = 691.653990000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos aqui apresentados s'#195#163'o os que obtiveram MAIOR ARRECA' +
              'DA'#195#8225#195#402'O neste per'#195#173'odo')
          ParentFont = False
        end
        object frxDBDS_RelABCVendasProdQtdDTPERIODO: TfrxMemoView
          Left = 235.110390000000000000
          Top = 113.385900000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."DTPERIODO"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 551.811380000000000000
        Width = 721.890230000000000000
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
        object Line3: TfrxLineView
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 328.819110000000000000
        Width = 721.890230000000000000
        ReprintOnNewPage = True
        object Line2: TfrxLineView
          Left = 2.102350000000000000
          Top = 40.677180000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 623.165740000000000000
          Top = 3.628346460000000000
          Width = 98.267706770000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total Arrecadado'
            'por Produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 4.724490000000000000
          Top = 15.110236220000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 235.267797090000000000
          Top = 15.110236220000000000
          Width = 45.354286770000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Unidade')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 281.181182920000000000
          Top = 2.220470000000000000
          Width = 71.811018740000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Custo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 357.488633230000000000
          Top = 3.330706220000000000
          Width = 71.811018740000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Venda')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 542.622450000000000000
          Top = 3.779530000000000000
          Width = 71.811023620000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '% de'
            'MarkUp')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 437.016080000000000000
          Top = 3.779530000000000000
          Width = 98.267706770000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Depesa'
            'por Produto')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 23.055118110236200000
        Top = 396.850650000000000000
        Width = 721.890230000000000000
        DataSet = frxDBS_RelABCArrecadacapMarkUp2
        DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
        RowCount = 0
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVALOR_REAL: TfrxMemoView
          Left = 613.606680000000000000
          Top = 1.892915830000000000
          Width = 109.606289450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTALVALOR'
          DataSet = frxDBS_RelABCArrecadacapMarkUp2
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."TOTALVALOR"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoPROD_SERV: TfrxMemoView
          Left = 0.606370000000000000
          Top = 1.889763780000000000
          Width = 234.330669610000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBS_RelABCArrecadacapMarkUp2
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."PRODUTO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoUNIDADE: TfrxMemoView
          Left = 239.188976380000000000
          Top = 1.889763780000000000
          Width = 41.574798270000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBS_RelABCArrecadacapMarkUp2
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."UNIDADE"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoVENDA: TfrxMemoView
          Left = 279.913803230000000000
          Top = 1.889763780000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CUSTO'
          DataSet = frxDBS_RelABCArrecadacapMarkUp2
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."CUSTO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 352.709103230000000000
          Top = 1.889763780000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDA'
          DataSet = frxDBS_RelABCArrecadacapMarkUp2
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."VENDA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.197353230000000000
          Top = 1.133858270000000000
          Width = 71.811026060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PERCENTUAL'
          DataSet = frxDBS_RelABCArrecadacapMarkUp2
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."PERCENTUAL"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 427.457020000000000000
          Top = 2.044099370000000000
          Width = 109.606289450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS_RelABCArrecadacapMarkUp2
          DataSetName = 'frxDBS_RelABCVendasProdMarkUp2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBS_RelABCVendasProdMarkUp2."TOTALVALOR">'
            '/'
            '<frxDBS_RelABCVendasProdMarkUp2."VENDA">'
            '*'
            '<frxDBS_RelABCVendasProdMarkUp2."CUSTO">'
            ']')
          ParentFont = False
        end
      end
      object Memo4: TfrxMemoView
        Left = 90.708720000000000000
        Top = 616.063390000000000000
        Width = 506.456824720000000000
        Height = 26.456710000000000000
        Visible = False
        ShowHint = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Memo.UTF8 = (
          'RelABCVendasProMarkUp2.fr3')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 49.133858270000000000
        Top = 442.205010000000000000
        Width = 721.890230000000000000
        object Memo18: TfrxMemoView
          Left = 608.606680000000000000
          Top = 28.220470000000000000
          Width = 113.385819450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCVendasProdMarkUp2."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 608.606680000000000000
          Top = 7.220470000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 625.827150000000000000
          Top = 5.000000000000000000
          Width = 94.488250000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBS_RelABCArrecadacapMarkUp2: TfrxDBDataset
    UserName = 'frxDBS_RelABCVendasProdMarkUp2'
    CloseDataSource = False
    DataSet = _F_RelatorioCurvaABC_MODEL.ibq_RelABCArrecadacaoMarkUp2
    BCDToCurrency = False
    Left = 241
    Top = 163
  end
  object frxDBS_RelABCArrecadacaoLucratividade1: TfrxDBDataset
    UserName = 'frxDBS_RelABCArrecadacaoLucratividade1'
    CloseDataSource = False
    DataSet = _F_RelatorioCurvaABC_MODEL.ibq_RelABCArrecadacaoLucratividade1
    BCDToCurrency = False
    Left = 310
    Top = 110
  end
  object frx_RelABCArrecadacaoLucratividade1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\Duplaface_019\Relat'#243'rios\ABC1.0\RelABCVendasProLucratividade1' +
      '.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.589307951400000000
    ReportOptions.LastChange = 43969.673304456020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 342
    Top = 110
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBS_RelABCArrecadacaoLucratividade1
        DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade1'
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
      LeftMargin = 9.500000000000000000
      RightMargin = 9.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 272.126160000000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
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
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO CURVA ABC DE Arrecada'#195#167#195#163'o e Lucratividade 1')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 2.000000000000000000
          Top = 136.063080000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line5: TfrxLineView
          Left = 2.000000000000000000
          Top = 268.504115200000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOBRUTA: TfrxMemoView
          Left = 273.346630000000000000
          Top = 181.244363000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade1."ARRECADACAOBRUTA"]')
          ParentFont = False
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOPERIODO: TfrxMemoView
          Left = 635.961040000000000000
          Top = 202.260133000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade1."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 9.559060000000000000
          Top = 182.244363000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'A arrecada'#195#167#195#163'o bruta do per'#195#173'odo foi de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 9.559060000000000000
          Top = 202.701073000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos que constam neste relat'#195#179'rio geraram uma arrecada'#195#167#195 +
              #163'o, dentro do per'#195#173'do de:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 8.559060000000000000
          Top = 244.937313000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Que Abaixo se encontram distribu'#195#173'dos, por ordem de Total Arreca' +
              'dado por Produto')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 8.897650000000000000
          Top = 143.905773000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES IMPORTANTES:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 9.338590000000000000
          Top = 162.519790000000000000
          Width = 691.653990000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos aqui apresentados s'#195#163'o os que obtiveram MAIOR ARRECA' +
              'DA'#195#8225#195#402'O neste per'#195#173'odo')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 222.992270000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'O %de lucratividade aqui apresentado refere-se a arrecada'#195#167#195#163'o g' +
              'erada pelos produtos deste relat'#195#179'rio')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 608.504330000000000000
          Top = 222.992270000000000000
          Width = 109.606370000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 673.874460000000000000
          Top = 226.771800000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          BrushStyle = bsClear
          Shape = skTriangle
        end
        object Line6: TfrxLineView
          Left = 514.590910000000000000
          Top = 240.110390000000000000
          Width = 151.181200000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object frxDBDS_RelABCVendasProdQtdDTPERIODO: TfrxMemoView
          Left = 234.771800000000000000
          Top = 114.165430000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade1."DTPERIODO"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 574.488560000000000000
        Width = 721.890230000000000000
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
        object Line3: TfrxLineView
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 351.496290000000000000
        Width = 721.890230000000000000
        ReprintOnNewPage = True
        object Line2: TfrxLineView
          Left = 2.102350000000000000
          Top = 40.677180000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 8.874460000000000000
          Top = 3.628346460000000000
          Width = 113.385826770000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Arrecadado'
            'por Produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 232.724490000000000000
          Top = 15.110236220000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 487.267797090000000000
          Top = 15.110236220000000000
          Width = 56.692876770000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Unidade')
        end
        object Memo11: TfrxMemoView
          Left = 553.181182920000000000
          Top = 2.220470000000000000
          Width = 79.370078740000000000
          Height = 30.236240000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Custo')
        end
        object Memo12: TfrxMemoView
          Left = 130.613816850000000000
          Top = 3.220470000000000000
          Width = 90.708673620000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '% de'
            'Lucratividade')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 640.488633230000000000
          Top = 3.330706220000000000
          Width = 79.370078740000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Venda')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 721.890230000000000000
        DataSet = frxDBS_RelABCArrecadacaoLucratividade1
        DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade1'
        RowCount = 0
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVALOR_REAL: TfrxMemoView
          Left = 0.315400000000000000
          Top = 1.892915830000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS_RelABCArrecadacaoLucratividade1
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[frxDBS_RelABCArrecadacaoLucratividade1."TOTALARRECADADOPORPRODU' +
              'TO"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoPROD_SERV: TfrxMemoView
          Left = 228.606370000000000000
          Top = 1.889763780000000000
          Width = 249.448789610000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade1
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade1'
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade1."PRODUTO"]')
          WordWrap = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoUNIDADE: TfrxMemoView
          Left = 486.149677090000000000
          Top = 1.889763780000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade1
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade1'
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade1."UNIDADE"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoVENDA: TfrxMemoView
          Left = 551.913803230000000000
          Top = 1.889763780000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CUSTO'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade1
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade1."CUSTO"]')
        end
        object Memo1: TfrxMemoView
          Left = 635.709103230000000000
          Top = 1.889763780000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDA'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade1
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade1."VENDA"]')
        end
        object Memo10: TfrxMemoView
          Left = 129.543363230000000000
          Top = 2.889763780000000000
          Width = 90.708676060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS_RelABCArrecadacaoLucratividade1
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade1'
          DisplayFormat.FormatStr = '%2.4n%%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[frxDBS_RelABCArrecadacaoLucratividade1."LUCRATIVIDADEDENTREOSTO' +
              'P"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 49.133858270000000000
        Top = 464.882190000000000000
        Width = 721.890230000000000000
        object Memo20: TfrxMemoView
          Left = 6.881880000000000000
          Top = 28.220470000000000000
          Width = 113.385819450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade1."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 7.881880000000000000
          Top = 7.220470000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 6.984230000000000000
          Top = 4.220470000000000000
          Width = 219.212740000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Left = 144.826840000000000000
          Top = 28.346456690000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '100,0000%')
          ParentFont = False
        end
      end
      object Memo4: TfrxMemoView
        Left = 109.606370000000000000
        Top = 627.401980000000000000
        Width = 506.456824720000000000
        Height = 26.456710000000000000
        Visible = False
        ShowHint = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Memo.UTF8 = (
          'RelABCVendasProLucratividade1.fr3')
        ParentFont = False
      end
    end
  end
  object frxDBS_RelABCArrecadacaoLucratividade2: TfrxDBDataset
    UserName = 'frxDBS_RelABCArrecadacaoLucratividade2'
    CloseDataSource = False
    DataSet = _F_RelatorioCurvaABC_MODEL.ibq_RelABCArrecadacaoLucratividade2
    BCDToCurrency = False
    Left = 311
    Top = 145
  end
  object frx_RelABCArrecadacaoLucratividade2: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = 
      'C:\Duplaface_019\Relat'#243'rios\ABC1.0\RelABCVendasProLucratividade2' +
      '.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43949.589307951400000000
    ReportOptions.LastChange = 43969.672711712960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 343
    Top = 145
    Datasets = <
      item
        DataSet = frxDBDS_empresa
        DataSetName = 'frxDBDS_Empresa'
      end
      item
        DataSet = frxDBS_RelABCArrecadacaoLucratividade2
        DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade2'
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
      LeftMargin = 9.500000000000000000
      RightMargin = 9.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 272.126160000000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
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
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO CURVA ABC DE Arrecada'#195#167#195#163'o e Lucratividade 2')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 2.000000000000000000
          Top = 136.063080000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line5: TfrxLineView
          Left = 2.000000000000000000
          Top = 268.504115200000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOBRUTA: TfrxMemoView
          Left = 273.346630000000000000
          Top = 202.244363000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."ARRECADACAOBRUTA"]')
          ParentFont = False
        end
        object frxDBS__RelABCArrecadaoVendasARRECADACAOPERIODO: TfrxMemoView
          Left = 635.961040000000000000
          Top = 179.260133000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 9.559060000000000000
          Top = 203.244363000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'A arrecada'#195#167#195#163'o bruta do per'#195#173'odo foi de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 9.559060000000000000
          Top = 180.701073000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos que constam neste relat'#195#179'rio geraram uma arrecada'#195#167#195 +
              #163'o, dentro do per'#195#173'do de:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 8.559060000000000000
          Top = 244.937313000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Que Abaixo se encontram distribu'#195#173'dos, por ordem de Total Arreca' +
              'dado por Produto')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 8.897650000000000000
          Top = 142.905773000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES IMPORTANTES:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 9.338590000000000000
          Top = 162.519790000000000000
          Width = 691.653990000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Os produtos aqui apresentados s'#195#163'o os que obtiveram MAIOR ARRECA' +
              'DA'#195#8225#195#402'O neste per'#195#173'odo')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 222.992270000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'O %de lucratividade aqui apresentado '#195#169' calculada com base na Ar' +
              'recada'#195#167#195#163'o Bruta, definida na linha acima')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 265.504330000000000000
          Top = 220.992270000000000000
          Width = 94.488250000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 425.590910000000000000
          Top = 240.110390000000000000
          Width = 132.283550000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object frxDBDS_RelABCVendasProdQtdDTPERIODO: TfrxMemoView
          Left = 241.889920000000000000
          Top = 113.385900000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDS_RelABCVendasProdQtd
          DataSetName = 'frxDBDS_RelABCVendasProdQtd'
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."DTPERIODO"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 49.133858270000000000
        Top = 574.488560000000000000
        Width = 721.890230000000000000
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
        object Line3: TfrxLineView
          Left = 3.559060000000000000
          Top = 3.779530000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDashDotDot
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo4: TfrxMemoView
          Left = 98.267780000000000000
          Top = 49.133890000000000000
          Width = 506.456824720000000000
          Height = 26.456710000000000000
          Visible = False
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          Memo.UTF8 = (
            'RelABCVendasProLucratividade2.fr3')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 351.496290000000000000
        Width = 721.890230000000000000
        ReprintOnNewPage = True
        object Line2: TfrxLineView
          Left = 2.102350000000000000
          Top = 40.677180000000000000
          Width = 721.889766220000000000
          ShowHint = False
          Frame.Style = fsDashDotDot
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 8.874460000000000000
          Top = 3.628346460000000000
          Width = 113.385826770000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Arrecadado'
            'por Produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 229.724490000000000000
          Top = 15.110236220000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto')
        end
        object Memo6: TfrxMemoView
          Left = 500.267797090000000000
          Top = 15.110236220000000000
          Width = 49.133816770000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Unidade')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 553.181182920000000000
          Top = 2.220470000000000000
          Width = 79.370078740000000000
          Height = 30.236240000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Custo')
        end
        object Memo12: TfrxMemoView
          Left = 131.613816850000000000
          Top = 3.220470000000000000
          Width = 90.708673620000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '% de'
            'Lucratividade')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 640.488633230000000000
          Top = 3.330706220000000000
          Width = 79.370078740000000000
          Height = 34.015770000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            'Pre'#195#167'o de'
            'Venda')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 721.890230000000000000
        DataSet = frxDBS_RelABCArrecadacaoLucratividade2
        DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade2'
        RowCount = 0
        object frxDBDS_RPerdasProdutosDetalhadoTOTALVALOR_REAL: TfrxMemoView
          Left = 0.315400000000000000
          Top = 1.892915830000000000
          Width = 122.834645670000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TOTALARRECADADOPORPRODUTO'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade2
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[frxDBS_RelABCArrecadacaoLucratividade2."TOTALARRECADADOPORPRODU' +
              'TO"]')
          ParentFont = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoPROD_SERV: TfrxMemoView
          Left = 225.606370000000000000
          Top = 1.889763780000000000
          Width = 272.125969610000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade2
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade2'
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."PRODUTO"]')
          WordWrap = False
        end
        object frxDBDS_RPerdasProdutosDetalhadoUNIDADE: TfrxMemoView
          Left = 502.149677090000000000
          Top = 1.889763780000000000
          Width = 45.354323390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade2
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade2'
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."UNIDADE"]')
        end
        object frxDBDS_RPerdasProdutosDetalhadoVENDA: TfrxMemoView
          Left = 551.913803230000000000
          Top = 1.889763780000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CUSTO'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade2
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."CUSTO"]')
        end
        object Memo1: TfrxMemoView
          Left = 635.709103230000000000
          Top = 1.889763780000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDA'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade2
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."VENDA"]')
        end
        object Memo10: TfrxMemoView
          Left = 130.543363230000000000
          Top = 2.889763780000000000
          Width = 90.708676060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LUCRATIVIDADEBRUTA'
          DataSet = frxDBS_RelABCArrecadacaoLucratividade2
          DataSetName = 'frxDBS_RelABCArrecadacaoLucratividade2'
          DisplayFormat.FormatStr = '%2.5n%%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."LUCRATIVIDADEBRUTA"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 49.133858270000000000
        Top = 464.882190000000000000
        Width = 721.890230000000000000
        object Memo20: TfrxMemoView
          Left = 465.110390000000000000
          Top = 28.346456690000000000
          Width = 124.724409450000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."ARRECADACAOBRUTA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 3.881880000000000000
          Top = 5.220470000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Totaliza'#195#167#195#181'es deste relat'#195#179'rio:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 6.984230000000000000
          Top = 25.220470000000000000
          Width = 653.858690000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Left = 594.055350000000000000
          Top = 28.346456690000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '100,0000%')
          ParentFont = False
          WordWrap = False
        end
        object Memo23: TfrxMemoView
          Left = 4.157480314960630000
          Top = 28.346456690000000000
          Width = 119.055118110000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBS__RelABCArrecadaoVendas
          DataSetName = 'frxDBS__RelABCArrecadaoVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBS_RelABCArrecadacaoLucratividade2."ARRECADACAOPERIODO"]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 132.283464570000000000
          Top = 28.346456690000000000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.5n%%'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<frxDBS_RelABCArrecadacaoLucratividade2."LUCRATIVIDADEBRUTA' +
              '">,MasterData1)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 225.551330000000000000
          Top = 30.346456690000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'de uma arrecada'#195#167#195#163'o total do per'#195#173'odo de:')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
end
