object _F_RelatorioCurvaABC_MODEL: T_F_RelatorioCurvaABC_MODEL
  Left = 917
  Top = 206
  BorderStyle = bsSingle
  Caption = '_F_RelatorioCurvaABC_MODEL'
  ClientHeight = 114
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Ibq_RelABCVendasProdQtd: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select sum(vqtd.quantidade) as TotalVendas, prod.produto, prod.u' +
        'nidade, prod.cor, prod.tamanho, prod.venda, vqtd.cod_prod_serv, ' +
        'vvr.TotalVALOR , '#39'02/01/2020 a 06/01/2020'#39' as DtPeriodo'
      'From VENDAS_PROD as vqtd, PRODUTOS as prod,'
      
        '(Select sum(vvt.TOTAL) as TotalVALOR, vvt.cod_prod_serv as codig' +
        'oprodutovvr, vvt.prod_serv From VENDAS_PROD as vvt  where (data ' +
        '>='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39')'
      
        ' group by cod_prod_serv, vvt.prod_serv order by TotalVALOR desc)' +
        ' as vvr'
      
        'where vqtd.cod_prod_serv = prod.codigo and vqtd.cod_prod_serv = ' +
        'vvr.codigoprodutovvr  and (data >='#39'02.01.2020'#39' and data <='#39'06.01' +
        '.2020'#39')'
      
        'group by produto, unidade, cor, tamanho, cod_prod_serv, prod.ven' +
        'da, vvr.TotalVALOR'
      'order by TotalVendas desc'
      'rows 25')
    Left = 16
    Top = 13
  end
  object IBQ_EMPRESA: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * '
      'From EMPRESA')
    Left = 280
    Top = 24
  end
  object ibq_RelABCArrecadacao: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorP' +
        'roduto, TotalQtdVendas, codigo, produto, unidade, cor, tamanho, ' +
        'venda, custo, percentual, markup,'#39'02/01/2020 a 06/01/2020'#39' as Dt' +
        'Periodo'
      
        'from  ( Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, Tota' +
        'lQtdVendas, prod.codigo, prod.produto, prod.unidade, prod.cor, p' +
        'rod.tamanho,  prod.venda, prod.custo, (round(((prod.venda/prod.c' +
        'usto-1)*100),2) ||'#39'%'#39') as percentual, round(((prod.venda/prod.cu' +
        'sto-1)*100),2) as MarkUp,  round(Arrecad.ArrecadacaoBruta,3) as ' +
        'ArrecadacaoBruta'
      ' From VENDAS_PROD as vvt, PRODUTOS as prod,'
      
        '  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +
        'data >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39') as Arrecad,'
      
        ' (Select sum(vqt.quantidade) as TotalQtdVendas, vqt.cod_prod_ser' +
        'v, vqt.prod_serv  From VENDAS_PROD as vqt where(data >='#39'02.01.20' +
        '20'#39' and data <='#39'06.01.2020'#39')      group by cod_prod_serv, vqt.pr' +
        'od_serv order by TotalQtdVendas desc) as TotalVendido where vvt.' +
        'cod_prod_serv = prod.codigo and vvt.cod_prod_serv= totalvendido.' +
        'cod_prod_serv  and (data >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39')'
      
        ' group by TotalQtdVendas, prod.codigo, prod.produto, prod.unidad' +
        'e, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, Ar' +
        'recadacaoBruta'
      'order by TotalArrecadadoPorProduto desc, produto'
      
        'rows 31), (select sum(TotalArrecadadoPorProduto)as ArrecadacaoPe' +
        'riodo from'
      
        ' (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codig' +
        'o, prod.produto, prod.unidade, prod.cor, prod.tamanho,'
      
        ' prod.venda, prod.custo, (round(((prod.venda/prod.custo-1)*100),' +
        '2) ||'#39'%'#39') as percentual, round(((prod.venda/prod.custo-1)*100),2' +
        ') as MarkUp,'
      
        ' round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VEN' +
        'DAS_PROD as vvt, PRODUTOS as prod,'
      
        '  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +
        'data >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39') as Arrecad'
      
        'where vvt.cod_prod_serv = prod.codigo and (data >='#39'02.01.2020'#39' a' +
        'nd data <='#39'06.01.2020'#39')'
      
        ' group by prod.codigo, prod.produto, prod.unidade, prod.cor, pro' +
        'd.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta'
      
        'order by TotalArrecadadoPorProduto desc, produto rows 31) ) orde' +
        'r by TotalArrecadadoPorProduto desc, produto')
    Left = 129
    Top = 13
  end
  object Ibq_RelABCVendasProdQtdPercent1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select sum(vqtd.quantidade) as TotalVendas, prod.produto, prod.u' +
        'nidade, prod.cor, prod.tamanho, vqtd.cod_prod_serv, prod.venda, ' +
        'prod.custo, (round(((prod.venda/prod.custo-1)*100),3) ||'#39'%'#39') as ' +
        'percentual, '#39'02/01/2020 a 06/01/2020'#39' as DtPeriodo'
      'From VENDAS_PROD as vqtd, PRODUTOS as prod'
      
        'where vqtd.cod_prod_serv = prod.codigo  and (data >='#39'02.01.2020'#39 +
        ' and data <='#39'06.01.2020'#39')'
      
        'group by produto, unidade, cor, tamanho, cod_prod_serv, prod.ven' +
        'da, prod.custo, percentual, produto'
      'order by TotalVendas desc'
      'rows 25')
    Left = 18
    Top = 57
  end
  object Ibq_RelABCVendasProdQtdPercent2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * from (Select sum(vqtd.quantidade) as TotalVendas, prod.' +
        'produto, prod.unidade, prod.cor, prod.tamanho, vqtd.cod_prod_ser' +
        'v, prod.venda, prod.custo, (round(((prod.venda/prod.custo-1)*100' +
        '),3) ||'#39'%'#39') as percentual, round(((prod.venda/prod.custo-1)*100)' +
        ',3) as lucratividade, '#39'02/01/2020 a 06/01/2020'#39' as DtPeriodo'
      'From VENDAS_PROD as vqtd, PRODUTOS as prod'
      
        'where vqtd.cod_prod_serv = prod.codigo  and (data >='#39'02.01.2020'#39 +
        ' and data <='#39'06.01.2020'#39')'
      
        'group by produto, unidade, cor, tamanho, cod_prod_serv, prod.ven' +
        'da, prod.custo, percentual'
      'order by TotalVendas desc, produto'
      'rows 25) order by lucratividade desc, produto')
    Left = 50
    Top = 57
  end
  object ibq_RelABCArrecadacaoMarkUp: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select sum(vvt.TOTAL) as TotalVALOR, prod.codigo, prod.produto, ' +
        'prod.unidade, prod.cor, prod.tamanho,'
      
        ' prod.venda, prod.custo, (round(((prod.venda/prod.custo-1)*100),' +
        '3) ||'#39'%'#39') as percentual, ArrecadacaoBruta, ArrecadacaoPeriodo'
      
        ' From VENDAS_PROD as vvt, PRODUTOS as prod, ( select sum(total) ' +
        'as ArrecadacaoBruta from VENDAS_PROD where data >='#39'02.01.2020'#39' a' +
        'nd data <='#39'06.01.2020'#39'), '
      
        '(select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from' +
        '  (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codi' +
        'go, prod.produto, prod.unidade, prod.cor, prod.tamanho,  prod.ve' +
        'nda, prod.custo, (round(((prod.venda/prod.custo-1)*100),2) ||'#39'%'#39 +
        ') as percentual, round(((prod.venda/prod.custo-1)*100),2) as Mar' +
        'kUp,'
      
        ' round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VEN' +
        'DAS_PROD as vvt, PRODUTOS as prod,'
      
        '  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +
        'data >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39') as Arrecad '
      
        'where vvt.cod_prod_serv = prod.codigo and (data >='#39'02.01.2020'#39' a' +
        'nd data <='#39'06.01.2020'#39')'
      
        ' group by prod.codigo, prod.produto, prod.unidade, prod.cor, pro' +
        'd.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta'
      'order by TotalArrecadadoPorProduto desc, produto rows 25) )'
      
        'where vvt.cod_prod_serv = prod.codigo and (data >='#39'02.01.2020'#39' a' +
        'nd data <='#39'06.01.2020'#39')'
      
        ' group by prod.codigo, prod.produto, prod.unidade, prod.cor, pro' +
        'd.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta,A' +
        'rrecadacaoPeriodo'
      ' order by TotalVALOR desc, produto'
      'rows 25')
    Left = 129
    Top = 45
  end
  object ibq_RelABCArrecadacaoMarkUp2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * from (Select sum(vvt.TOTAL) as TotalVALOR, prod.codigo,' +
        ' prod.produto, prod.unidade, prod.cor, prod.tamanho,'
      
        ' prod.venda, prod.custo, (round(((prod.venda/prod.custo-1)*100),' +
        '3) ||'#39'%'#39') as percentual, round(((prod.venda/prod.custo-1)*100),2' +
        ') as MarkUp, ArrecadacaoBruta,ArrecadacaoPeriodo'
      ' From VENDAS_PROD as vvt, PRODUTOS as prod, ('
      
        'select sum(total) as ArrecadacaoBruta from VENDAS_PROD where dat' +
        'a >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39'),'
      '(select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from'
      
        ' (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codig' +
        'o, prod.produto, prod.unidade, prod.cor, prod.tamanho,'
      
        ' prod.venda, prod.custo, (round(((prod.venda/prod.custo-1)*100),' +
        '2) ||'#39'%'#39') as percentual, round(((prod.venda/prod.custo-1)*100),2' +
        ') as MarkUp,'
      ' round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta'
      
        ' From VENDAS_PROD as vvt, PRODUTOS as prod,  (select sum(total) ' +
        'as ArrecadacaoBruta from VENDAS_PROD where data >='#39'02.01.2020'#39' a' +
        'nd data <='#39'06.01.2020'#39') as Arrecad where vvt.cod_prod_serv = pro' +
        'd.codigo and (data >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39')'
      
        ' group by prod.codigo, prod.produto, prod.unidade, prod.cor, pro' +
        'd.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta'
      'order by TotalArrecadadoPorProduto desc, produto'
      
        'rows 25))  where vvt.cod_prod_serv = prod.codigo and (data >='#39'02' +
        '.01.2020'#39' and data <='#39'06.01.2020'#39')'
      
        ' group by prod.codigo, prod.produto, prod.unidade, prod.cor, pro' +
        'd.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta,A' +
        'rrecadacaoPeriodo'
      ' order by TotalVALOR desc, produto'
      'rows 25 )order by MarkUp desc, produto')
    Left = 130
    Top = 81
  end
  object ibq_RelABCArrecadacaoLucratividade1: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorP' +
        'roduto, round((TotalArrecadadoPorProduto/ ArrecadacaoPeriodo)*10' +
        '0,4)  as LucratividadeDentreOsTop, (round((TotalArrecadadoPorPro' +
        'duto/ ArrecadacaoPeriodo)*100,4) || '#39'%'#39') as PercentualLucrativid' +
        'adeTop,'
      
        ' TotalQtdVendasProduto, codigo, produto, unidade, cor, tamanho, ' +
        'venda, custo, percentual, markup from (Select sum(vvt.TOTAL) as ' +
        'TotalArrecadadoPorProduto, TotalQtdVendasProduto, prod.codigo, p' +
        'rod.produto, prod.unidade,  prod.cor, prod.tamanho, prod.venda, ' +
        'prod.custo, (round(((prod.venda/prod.custo-1)*100),2) ||'#39'%'#39') as ' +
        'percentual,'
      
        ' round(((prod.venda/prod.custo-1)*100),2) as MarkUp, round(Arrec' +
        'ad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD as ' +
        'vvt, PRODUTOS as prod,  (select sum(total) as ArrecadacaoBruta f' +
        'rom VENDAS_PROD where data >='#39'02.01.2020'#39
      
        ' and data <='#39'06.01.2020'#39') as Arrecad,  (Select sum(vqt.quantidad' +
        'e) as TotalQtdVendasProduto, vqt.cod_prod_serv,  vqt.prod_serv  ' +
        'From VENDAS_PROD as vqt where(data >='#39'02.01.2020'#39' and data <='#39'06' +
        '.01.2020'#39')      group by cod_prod_serv, vqt.prod_serv order by T' +
        'otalQtdVendasProduto desc) as TotalVendido'
      
        'where vvt.cod_prod_serv = prod.codigo and vvt.cod_prod_serv= tot' +
        'alvendido.cod_prod_serv  and (data >='#39'02.01.2020'#39' and data <='#39'06' +
        '.01.2020'#39')  group by TotalQtdVendasProduto, prod.codigo, prod.pr' +
        'oduto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.cu' +
        'sto,percentual, ArrecadacaoBruta order by TotalArrecadadoPorProd' +
        'uto desc, produto rows 25), (select sum(TotalArrecadadoPorProdut' +
        'o)as ArrecadacaoPeriodo from'
      
        ' (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codig' +
        'o, prod.produto, prod.unidade, prod.cor, prod.tamanho,  prod.ven' +
        'da, prod.custo, (round(((prod.venda/prod.custo-1)*100),2) ||'#39'%'#39')' +
        ' as percentual, round(((prod.venda/prod.custo-1)*100),2) as Mark' +
        'Up,  round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From' +
        ' VENDAS_PROD as vvt, PRODUTOS as prod,   (select sum(total) as A' +
        'rrecadacaoBruta from VENDAS_PROD where data >='#39'02.01.2020'#39' and d' +
        'ata <='#39'06.01.2020'#39') as Arrecad where vvt.cod_prod_serv = prod.co' +
        'digo and (data >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39')  group by' +
        ' prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho' +
        ', prod.venda, prod.custo,percentual, ArrecadacaoBruta order by T' +
        'otalArrecadadoPorProduto desc, produto rows 25) )'
      'order by TotalArrecadadoPorProduto desc, produto')
    Left = 171
    Top = 26
  end
  object ibq_RelABCArrecadacaoLucratividade2: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorP' +
        'roduto, round((TotalArrecadadoPorProduto/ ArrecadacaoBruta)*100,' +
        '5)  as LucratividadeBruta, '
      
        '(round((TotalArrecadadoPorProduto/ ArrecadacaoBruta)*100,5) || '#39 +
        '%'#39') as PercentualLucratividadeBruta,  TotalQtdVendasProduto, cod' +
        'igo, produto, unidade, cor, tamanho, venda, custo, '
      
        'percentual, markup from (Select sum(vvt.TOTAL) as TotalArrecadad' +
        'oPorProduto, TotalQtdVendasProduto, prod.codigo, prod.produto, p' +
        'rod.unidade,  prod.cor, prod.tamanho, prod.venda,'
      
        ' prod.custo, (round (((prod.venda/prod.custo-1)*100),2) ||'#39'%'#39') a' +
        's percentual,  round(((prod.venda/prod.custo-1)*100),2) as MarkU' +
        'p, round(Arrecad.ArrecadacaoBruta,4) as ArrecadacaoBruta  From V' +
        'ENDAS_PROD'
      
        ' as vvt, PRODUTOS as prod,  (select sum(total) as ArrecadacaoBru' +
        'ta from VENDAS_PROD where data >='#39'02.01.2020'#39' and data <='#39'06.01.' +
        '2020'#39') as Arrecad,  (Select sum(vqt.quantidade) as TotalQtdVenda' +
        'sProduto,'
      
        ' vqt.cod_prod_serv,  vqt.prod_serv  From VENDAS_PROD as vqt wher' +
        'e(data >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39')     group by cod_' +
        'prod_serv, vqt.prod_serv order by TotalQtdVendasProduto desc) '
      
        'as TotalVendido  where vvt.cod_prod_serv = prod.codigo and vvt.c' +
        'od_prod_serv= totalvendido.cod_prod_serv  and (data >='#39'02.01.202' +
        '0'#39' and data <='#39'06.01.2020'#39')  group by TotalQtdVendasProduto, pro' +
        'd.codigo, '
      
        'prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, ' +
        'prod.custo,percentual, ArrecadacaoBruta'
      
        'order by TotalArrecadadoPorProduto desc, produto rows 25),    (s' +
        'elect sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from'
      
        ' (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codig' +
        'o, prod.produto, prod.unidade, prod.cor, prod.tamanho,'
      
        ' prod.venda, prod.custo, (round(((prod.venda/prod.custo-1)*100),' +
        '2) ||'#39'%'#39') as percentual, round(((prod.venda/prod.custo-1)*100),2' +
        ') as MarkUp,'
      
        ' round(Arrecad.ArrecadacaoBruta,4) as ArrecadacaoBruta   From VE' +
        'NDAS_PROD as vvt, PRODUTOS as prod,'
      
        '  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +
        'data >='#39'02.01.2020'#39' and data <='#39'06.01.2020'#39') as Arrecad'
      
        'where vvt.cod_prod_serv = prod.codigo and (data >='#39'02.01.2020'#39' a' +
        'nd data <='#39'06.01.2020'#39')  group by prod.codigo, prod.produto, pro' +
        'd.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percen' +
        'tual,'
      
        ' ArrecadacaoBruta order by TotalArrecadadoPorProduto desc, produ' +
        'to rows 25) )'
      'order by TotalArrecadadoPorProduto desc, produto')
    Left = 174
    Top = 58
  end
end
