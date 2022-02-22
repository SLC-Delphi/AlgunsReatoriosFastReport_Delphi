unit uRelatorioCurvaABC_VendasProd_porQuantidade_MODEL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery;

type
  T_F_RelatorioCurvaABC_MODEL = class(TForm)
    Ibq_RelABCVendasProdQtd: TIBQuery;
    IBQ_EMPRESA: TIBQuery;
    ibq_RelABCArrecadacao: TIBQuery;
    Ibq_RelABCVendasProdQtdPercent1: TIBQuery;
    Ibq_RelABCVendasProdQtdPercent2: TIBQuery;
    ibq_RelABCArrecadacaoMarkUp: TIBQuery;
    ibq_RelABCArrecadacaoMarkUp2: TIBQuery;
    ibq_RelABCArrecadacaoLucratividade1: TIBQuery;
    ibq_RelABCArrecadacaoLucratividade2: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure RelABCVendasProdQtd (vsInicial, vsFinal :String; viQtdItens : smallint)   ;
    Procedure RelABCArrecadacaoVendas (vsInicial, vsFinal : String; viQtdItens : smallint)   ;
    Procedure RelABCVendasProdQtdPercent1 (vsInicial, vsFinal : String; viQtdItens : smallint)   ;
    Procedure RelABCVendasProdQtdPercent2 (vsInicial, vsFinal : String; viQtdItens : smallint)   ;
    procedure ArrecadacaoMarkUp1 (vsInicial, vsFinal : String; viQtdItens : smallint);
    procedure ArrecadacaoMarkUp2 (vsInicial, vsFinal : String; viQtdItens : smallint);
    procedure RelABCArrecadacaoLucratividade1 (vsInicial, vsFinal : String; viQtdItens : smallint);
    procedure RelABCArrecadacaoLucratividade2 (vsInicial, vsFinal : String; viQtdItens : smallint);
  end;

var
  _F_RelatorioCurvaABC_MODEL: T_F_RelatorioCurvaABC_MODEL;

implementation

uses DM1;

{$R *.dfm}

{ T_F_RelatorioDevolucoes_MODEL }

Procedure T_F_RelatorioCurvaABC_MODEL.RelABCVendasProdQtd (vsInicial, vsFinal :String; viQtdItens : smallint)   ;
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelABCVendasProdQtd.SQL.Clear;
  vsData := ' (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[rfReplaceAll])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[rfReplaceAll]) + chr(39)+ ')';
  vsQuery := ' Select sum(vqtd.quantidade) as TotalVendas, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, vqtd.cod_prod_serv,' +
  'vvr.TotalVALOR , ' +#39+vsInicial+' a '+vsFinal+' / Ítens:' + intTOstr(viQtdItens)+#39+ ' as DtPeriodo From VENDAS_PROD as vqtd, PRODUTOS as prod, (Select sum(vvt.TOTAL) as TotalVALOR, vvt.cod_prod_serv as codigoprodutovvr, ' +
  ' vvt.prod_serv From VENDAS_PROD as vvt  where ' +  vsData  +' group by cod_prod_serv, vvt.prod_serv order by TotalVALOR desc)' +
  ' as vvr where vqtd.cod_prod_serv = prod.codigo and vqtd.cod_prod_serv = vvr.codigoprodutovvr  and ' +  vsData  +' '+
   ' group by produto, unidade, cor, tamanho, cod_prod_serv, prod.venda, vvr.TotalVALOR order by TotalVendas desc rows ' + intTOstr(viQtdItens);
  Ibq_RelABCVendasProdQtd.SQL.Add(vsQuery);
  Ibq_RelABCVendasProdQtd.Prepare;
  Ibq_RelABCVendasProdQtd.Open;
  Ibq_RelABCVendasProdQtd.First
end;


procedure T_F_RelatorioCurvaABC_MODEL.RelABCVendasProdQtdPercent1(
  vsInicial, vsFinal: String; viQtdItens: smallint);
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelABCVendasProdQtdPercent1.SQL.Clear;
  vsData := ' (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[rfReplaceAll])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[rfReplaceAll]) + chr(39)+ ')';
  vsQuery := ' Select sum(vqtd.quantidade) as TotalVendas, prod.produto, prod.unidade, prod.cor, prod.tamanho, vqtd.cod_prod_serv, prod.venda, ' +
   ' prod.custo,  (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||''%'') as percentual, ' +#39+vsInicial+' a '+vsFinal+' / Ítens:'+ intTOstr(viQtdItens)+#39+ ' as DtPeriodo ' +
   ' From VENDAS_PROD as vqtd, PRODUTOS as prod   where vqtd.cod_prod_serv = prod.codigo  and ' +
   ' ('+ vsData + ')  group by produto, unidade, cor, tamanho, cod_prod_serv, prod.venda, prod.custo, percentual, produto ' +
   ' order by TotalVendas desc rows ' + intTOstr(viQtdItens)+ ';';
  Ibq_RelABCVendasProdQtdPercent1.SQL.Add(vsQuery);
  Ibq_RelABCVendasProdQtdPercent1.Prepare;
  Ibq_RelABCVendasProdQtdPercent1.Open;
  Ibq_RelABCVendasProdQtdPercent1.First
end;


procedure T_F_RelatorioCurvaABC_MODEL.RelABCVendasProdQtdPercent2(
  vsInicial, vsFinal: String; viQtdItens: smallint);
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelABCVendasProdQtdPercent2.SQL.Clear;
  vsData := ' (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[rfReplaceAll])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[rfReplaceAll]) + chr(39)+ ')';
  vsQuery := 'Select * from  (Select sum(vqtd.quantidade) as TotalVendas, prod.produto, prod.unidade, prod.cor, prod.tamanho, vqtd.cod_prod_serv, prod.venda, ' +
   ' prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||''%'') as percentual, round(((prod.venda/prod.custo-1)*100),3) as lucratividade, ' +#39+vsInicial+' a '+vsFinal+' / Ítens:'+ intTOstr(viQtdItens)+#39+ ' as DtPeriodo ' +
   ' From VENDAS_PROD as vqtd, PRODUTOS as prod   where vqtd.cod_prod_serv = prod.codigo  and ' +
   ' ('+ vsData + ')  group by produto, unidade, cor, tamanho, cod_prod_serv, prod.venda, prod.custo, percentual, produto ' +
   ' order by TotalVendas desc, produto rows ' + intTOstr(viQtdItens)+ ' ) order by lucratividade desc, produto;';
  Ibq_RelABCVendasProdQtdPercent2.SQL.Add(vsQuery);
  Ibq_RelABCVendasProdQtdPercent2.Prepare;
  Ibq_RelABCVendasProdQtdPercent2.Open;
  Ibq_RelABCVendasProdQtdPercent2.First
end;


procedure T_F_RelatorioCurvaABC_MODEL.RelABCArrecadacaoVendas (vsInicial, vsFinal :String; viQtdItens : smallint)   ;
var
  vsQuery : String;
  vsData :String;
begin
  ibq_RelABCArrecadacao.SQL.Clear;
  vsData := ' (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[rfReplaceAll])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[rfReplaceAll]) + chr(39)+ ')';
  vsQuery := ' select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorProduto, TotalQtdVendas, codigo, produto, unidade, ' +
  'cor, tamanho, venda, custo, percentual, markup, ' +#39+vsInicial+' a '+vsFinal+' / Ítens:' + intTOstr(viQtdItens)+#39+ ' as DtPeriodo from  ( Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, ' +
  ' TotalQtdVendas, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||''%'') as percentual, ' +
  ' round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta From VENDAS_PROD as vvt, PRODUTOS as prod, ' +
  ' (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +  vsData  +') as Arrecad, (Select sum(vqt.quantidade) as TotalQtdVendas, ' +
  ' vqt.cod_prod_serv, vqt.prod_serv  From VENDAS_PROD as vqt where(' +  vsData  +')  group by cod_prod_serv, vqt.prod_serv order by ' +
  ' TotalQtdVendas desc) as TotalVendido  where vvt.cod_prod_serv = prod.codigo and vvt.cod_prod_serv= totalvendido.cod_prod_serv ' +
  ' and (' + vsData + ')  group by TotalQtdVendas, prod.codigo, prod.produto, prod.unidade, prod.cor, ' +
  ' prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta order by TotalArrecadadoPorProduto desc, produto '+
  ' rows ' + intTOstr(viQtdItens)+ '), (select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from  (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, ' +
  ' prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,  prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) || ''%'') as percentual, ' +
  ' round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp,  round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD as vvt, ' +
  ' PRODUTOS as prod,  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where '+ vsData + ') as Arrecad where vvt.cod_prod_serv = prod.codigo ' +
  ' and (' + vsData +') group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta ' +
  ' order by TotalArrecadadoPorProduto desc, produto rows ' + intTOstr(viQtdItens)+ ') ) order by TotalArrecadadoPorProduto desc, produto ';
  ibq_RelABCArrecadacao.SQL.Add(vsQuery);
  ibq_RelABCArrecadacao.Prepare;
  ibq_RelABCArrecadacao.Open;
  ibq_RelABCArrecadacao.First
end;


procedure T_F_RelatorioCurvaABC_MODEL.ArrecadacaoMarkUp1 (vsInicial, vsFinal : String; viQtdItens : smallint);
var
  vsQuery : String;
  vsData :String;
begin
  ibq_RelABCArrecadacaoMarkUp.SQL.Clear;
  vsData := ' (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[rfReplaceAll])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[rfReplaceAll]) + chr(39)+ ')';
  vsQuery := 'Select sum(vvt.TOTAL) as TotalVALOR, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, '
   + ' prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||''%'') as percentual, ArrecadacaoBruta, ArrecadacaoPeriodo '
   + ' , ' +#39+vsInicial+' a '+vsFinal+' / Ítens:' + intTOstr(viQtdItens)+#39+ ' as DtPeriodo from VENDAS_PROD as vvt, PRODUTOS as prod, ( '
   + '  select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +  vsData  +'), '
   + ' (select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from  (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codigo, '
   + ' prod.produto, prod.unidade, prod.cor, prod.tamanho,  prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||''%'') as percentual, '
   + ' round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD as vvt, PRODUTOS as prod, '
   + '  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +  vsData  +') as Arrecad  '
   + ' where vvt.cod_prod_serv = prod.codigo and (' +  vsData  +') '
   + ' group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta '
   + ' order by TotalArrecadadoPorProduto desc, produto rows ' + intTOstr(viQtdItens)+ ') ) '
   + ' where vvt.cod_prod_serv = prod.codigo and ('+  vsData  +') '
   + ' group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta,ArrecadacaoPeriodo '
   + ' order by TotalVALOR desc, produto rows ' + intTOstr(viQtdItens)+ ' ';
  ibq_RelABCArrecadacaoMarkUp.SQL.Add(vsQuery);
  ibq_RelABCArrecadacaoMarkUp.Prepare;
  ibq_RelABCArrecadacaoMarkUp.Open;
  ibq_RelABCArrecadacaoMarkUp.First
end;

procedure T_F_RelatorioCurvaABC_MODEL.ArrecadacaoMarkUp2 (vsInicial, vsFinal : String; viQtdItens : smallint);
var
  vsQuery : String;
  vsData :String;
begin
  ibq_RelABCArrecadacaoMarkUp2.SQL.Clear;
  vsData := ' (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[rfReplaceAll])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[rfReplaceAll]) + chr(39)+ ')';
  vsQuery := 'Select * from (Select sum(vvt.TOTAL) as TotalVALOR, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, '
   + '  prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||''%'') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, '
   + '  ArrecadacaoBruta, ArrecadacaoPeriodo, ' +#39+vsInicial+' a '+vsFinal+' / Ítens:' + intTOstr(viQtdItens)+#39+ ' as DtPeriodo from  VENDAS_PROD as vvt, PRODUTOS as prod, ( '
   + ' select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +  vsData  +'), '
   + ' (select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from '
   + ' (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, '
   + '  prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||''%'') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, '
   + '  round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD as vvt, PRODUTOS as prod, '
   + '  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +  vsData  +') as Arrecad where '
   + '  vvt.cod_prod_serv = prod.codigo and (' +  vsData  +')  '
   + '  group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta '
   + '   order by TotalArrecadadoPorProduto desc, produto '
   + ' rows ' + intTOstr(viQtdItens)+ ') )  where vvt.cod_prod_serv = prod.codigo and (' +  vsData  +') '
   + '  group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta, '
   + ' ArrecadacaoPeriodo  order by TotalVALOR desc, produto rows ' + intTOstr(viQtdItens)+ ' ) '
   + ' order by MarkUp desc, produto ';
  ibq_RelABCArrecadacaoMarkUp2.SQL.Add(vsQuery);
  ibq_RelABCArrecadacaoMarkUp2.Prepare;
  ibq_RelABCArrecadacaoMarkUp2.Open;
  ibq_RelABCArrecadacaoMarkUp2.First
end;


procedure T_F_RelatorioCurvaABC_MODEL.RelABCArrecadacaoLucratividade1 (vsInicial, vsFinal : String; viQtdItens : smallint);
var
  vsQuery : String;
  vsData :String;
begin
  ibq_RelABCArrecadacaoLucratividade1.SQL.Clear;
  vsData := ' (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[rfReplaceAll])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[rfReplaceAll]) + chr(39)+ ')';
  vsQuery := 'select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorProduto, round((TotalArrecadadoPorProduto/ ArrecadacaoPeriodo)*100,4) '
   + ' as LucratividadeDentreOsTop, (round((TotalArrecadadoPorProduto/ ArrecadacaoPeriodo)*100,4) || ''%'') as PercentualLucratividadeTop, '
   + ' TotalQtdVendasProduto, codigo, produto, unidade, cor, tamanho, venda, custo, percentual, markup, ' +#39+vsInicial+' a '+vsFinal+' / Ítens:' + intTOstr(viQtdItens)+#39+ ' as DtPeriodo from ( '
   + ' Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, TotalQtdVendasProduto, prod.codigo, prod.produto, prod.unidade,  prod.cor, '
   + ' prod.tamanho, prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||''%'') as percentual, '
   + ' round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD as vvt, '
   + ' PRODUTOS as prod,  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where' +  vsData  +' '
   + ' ) as Arrecad,  (Select sum(vqt.quantidade) as TotalQtdVendasProduto, vqt.cod_prod_serv, '
   + '  vqt.prod_serv  From VENDAS_PROD as vqt where(' +  vsData  +')     group by cod_prod_serv, '
   + '  vqt.prod_serv order by TotalQtdVendasProduto desc) as TotalVendido '
   + ' where vvt.cod_prod_serv = prod.codigo and vvt.cod_prod_serv= totalvendido.cod_prod_serv  and (' +  vsData  +')  group by '
   + ' TotalQtdVendasProduto, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, '
   + ' ArrecadacaoBruta order by TotalArrecadadoPorProduto desc,produto rows ' + intTOstr(viQtdItens)+ '), (select sum(TotalArrecadadoPorProduto) '
   + ' as ArrecadacaoPeriodo from  (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codigo, prod.produto, prod.unidade, '
   + ' prod.cor, prod.tamanho,  prod.venda,  prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||''%'') as percentual, '
   + ' round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp,  round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD '
   + ' as vvt, PRODUTOS as prod,  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where ' +  vsData  +' '
   + '  ) as Arrecad where vvt.cod_prod_serv = prod.codigo and (' +  vsData  +')  group by prod.codigo, '
   + '  prod.produto, prod.unidade, prod.cor,  prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta order by '
   + '  TotalArrecadadoPorProduto desc, produto rows ' + intTOstr(viQtdItens)+ ') '
   + '   )order by TotalArrecadadoPorProduto desc, produto ';
  ibq_RelABCArrecadacaoLucratividade1.SQL.Add(vsQuery);
  ibq_RelABCArrecadacaoLucratividade1.Prepare;
  ibq_RelABCArrecadacaoLucratividade1.Open;
  ibq_RelABCArrecadacaoLucratividade1.First
end;


procedure T_F_RelatorioCurvaABC_MODEL.RelABCArrecadacaoLucratividade2 (vsInicial, vsFinal : String; viQtdItens : smallint);
var
  vsQuery : String;
  vsData :String;
begin
  ibq_RelABCArrecadacaoLucratividade2.SQL.Clear;
  vsData := ' (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[rfReplaceAll])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[rfReplaceAll]) + chr(39)+ ')';
  vsQuery := 'select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorProduto, round((TotalArrecadadoPorProduto/ ArrecadacaoBruta)*100,5)  as LucratividadeBruta, '
   + ' (round((TotalArrecadadoPorProduto/ ArrecadacaoBruta)*100,5) || ''%'') as PercentualLucratividadeBruta,  TotalQtdVendasProduto, codigo, '
   + ' produto, unidade, cor, tamanho, venda, custo, percentual, markup, ' +#39+vsInicial+' a '+vsFinal+' / Ítens:' + intTOstr(viQtdItens)+#39+ ' as DtPeriodo from (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, '
   + ' TotalQtdVendasProduto, prod.codigo, prod.produto, prod.unidade,  prod.cor, prod.tamanho, prod.venda, prod.custo, '
   + '  (round (((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||''%'') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, '
   + '  round(Arrecad.ArrecadacaoBruta,4) as ArrecadacaoBruta  From VENDAS_PROD  as vvt, PRODUTOS as prod,  (select sum(total) as ArrecadacaoBruta '
   + ' from VENDAS_PROD where ' +  vsData  +') as Arrecad,  (Select sum(vqt.quantidade) as TotalQtdVendasProduto, '
   + '  vqt.cod_prod_serv, vqt.prod_serv  From VENDAS_PROD as vqt where (' +  vsData  +')  group by cod_prod_serv, '
   + '   vqt.prod_serv order by TotalQtdVendasProduto desc) as TotalVendido  where vvt.cod_prod_serv = prod.codigo and vvt.cod_prod_serv= totalvendido.cod_prod_serv '
   + '   and (' +  vsData  +') group by TotalQtdVendasProduto, prod.codigo, prod.produto, prod.unidade, '
   + '  prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta order by TotalArrecadadoPorProduto desc, '
   + '  produto rows ' + intTOstr(viQtdItens)+ '),  (select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from  (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, '
   + '  prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||''%'') as percentual, '
   + '   round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, round(Arrecad.ArrecadacaoBruta,4) as ArrecadacaoBruta '
   + '  From VENDAS_PROD as vvt, PRODUTOS as prod, (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where '
   +  vsData  +') as Arrecad where vvt.cod_prod_serv = prod.codigo and '
   + '   (' +  vsData  +')  group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, '
   + '  prod.venda, prod.custo,percentual, ArrecadacaoBruta order by TotalArrecadadoPorProduto desc, produto '
   + '  rows ' + intTOstr(viQtdItens)+ ') ) order by TotalArrecadadoPorProduto desc, produto ';
  ibq_RelABCArrecadacaoLucratividade2.SQL.Add(vsQuery);
  ibq_RelABCArrecadacaoLucratividade2.Prepare;
  ibq_RelABCArrecadacaoLucratividade2.Open;
  ibq_RelABCArrecadacaoLucratividade2.First
end;


end.

______________________________________

Ibq_RelABCVendasProdQtd:
------------------------
Select sum(vqtd.quantidade) as TotalVendas, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, vqtd.cod_prod_serv, vvr.TotalVALOR, '02/01/2020 a 06/01/2020' as DtPeriodo
From VENDAS_PROD as vqtd, PRODUTOS as prod,
(Select sum(vvt.TOTAL) as TotalVALOR, vvt.cod_prod_serv as codigoprodutovvr, vvt.prod_serv From VENDAS_PROD as vvt  where (data >='02.01.2020' and data <='06.01.2020')
 group by cod_prod_serv, vvt.prod_serv order by TotalVALOR desc) as vvr
where vqtd.cod_prod_serv = prod.codigo and vqtd.cod_prod_serv = vvr.codigoprodutovvr  and (data >='02.01.2020' and data <='06.01.2020')
group by produto, unidade, cor, tamanho, cod_prod_serv, prod.venda, vvr.TotalVALOR
order by TotalVendas desc
rows 25



ibq_RelABCArrecadacao
-------------------------------
Select sum(vvt.TOTAL) as TotalVALOR, vvt.cod_prod_serv, vvt.prod_serv, vvt.unidade, vvt.cor, vvt.tamanho, prod.venda, vqtd.Totalvendas,'02/01/2020 a 06/01/2020' as DtPeriodo
 From VENDAS_PROD as vvt, PRODUTOS as prod,
 (Select sum(vqt.quantidade) as TotalVendas, vqt.cod_prod_serv, vqt.prod_serv  From VENDAS_PROD as vqt where  (data >='02.01.2020' and data <='06.01.2020')
    group by cod_prod_serv, vqt.prod_serv order by TotalVendas desc
 ) as vqtd
where vvt.cod_prod_serv = prod.codigo and vvt.cod_prod_serv = vqtd.cod_prod_serv  and (data >='02.01.2020' and data <='06.01.2020')
 group by vvt.cod_prod_serv, vvt.prod_serv, vvt.unidade, vvt.cor, vvt.tamanho, prod.venda, vqtd.Totalvendas
 order by TotalVALOR desc
rows 25
SUBTITUIR POR ESTE ------
select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorProduto, TotalQtdVendas, codigo, produto, unidade, cor, tamanho, venda, custo, percentual, markup ,'02/01/2020 a 06/01/2020' as DtPeriodo
from  (
 Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, TotalQtdVendas, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,
 prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||'%') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp,
 round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta
 From VENDAS_PROD as vvt, PRODUTOS as prod,
  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where data >='02.01.2020' and data <='06.01.2020') as Arrecad,
 (Select sum(vqt.quantidade) as TotalQtdVendas, vqt.cod_prod_serv, vqt.prod_serv  From VENDAS_PROD as vqt where(data >='02.01.2020' and data <='06.01.2020')
   group by cod_prod_serv, vqt.prod_serv order by TotalQtdVendas desc) as TotalVendido
 where vvt.cod_prod_serv = prod.codigo and vvt.cod_prod_serv= totalvendido.cod_prod_serv  and (data >='02.01.2020' and data <='06.01.2020')
 group by TotalQtdVendas, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta
order by TotalArrecadadoPorProduto desc, produto
rows 25), (select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from
 (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,
 prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||'%') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp,
 round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD as vvt, PRODUTOS as prod,
  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where data >='02.01.2020' and data <='06.01.2020') as Arrecad
where vvt.cod_prod_serv = prod.codigo and (data >='02.01.2020' and data <='06.01.2020')
 group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta
order by TotalArrecadadoPorProduto desc, produto rows 25) ) order by TotalArrecadadoPorProduto desc, produto



===========================
Ibq_RelABCVendasProdQtdPercent1:
--------------------------------
Select sum(vqtd.quantidade) as TotalVendas, prod.produto, prod.unidade, prod.cor, prod.tamanho, vqtd.cod_prod_serv, prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||'%') as percentual,'02/01/2020 a 06/01/2020' as DtPeriodo
From VENDAS_PROD as vqtd, PRODUTOS as prod
where vqtd.cod_prod_serv = prod.codigo  and (data >='02.01.2020' and data <='06.01.2020')
group by produto, unidade, cor, tamanho, cod_prod_serv, prod.venda, prod.custo, percentual, produto
order by TotalVendas desc
rows 25


Ibq_RelABCVendasProdQtdPercent2:
--------------------------------
Select * from (Select sum(vqtd.quantidade) as TotalVendas, prod.produto, prod.unidade, prod.cor, prod.tamanho, vqtd.cod_prod_serv, prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||'%') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) as lucratividade, '02/01/2020 a 06/01/2020' as DtPeriodo
From VENDAS_PROD as vqtd, PRODUTOS as prod
where vqtd.cod_prod_serv = prod.codigo  and (data >='02.01.2020' and data <='06.01.2020')
group by produto, unidade, cor, tamanho, cod_prod_serv, prod.venda, prod.custo, percentual
order by TotalVendas desc, produto
rows 25) order by lucratividade desc, produto






ibq_RelABCArrecadacaoMarkUp1
--------------------------------
Select sum(vvt.TOTAL) as TotalVALOR, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,
 prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||'%') as percentual
 From VENDAS_PROD as vvt, PRODUTOS as prod
where vvt.cod_prod_serv = prod.codigo and (data >='02.01.2020' and data <='06.01.2020')
 group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual
 order by TotalVALOR desc, produto
rows 25
SUBTITUIR POR ESTE------:
Select sum(vvt.TOTAL) as TotalVALOR, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,
 prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||'%') as percentual, ArrecadacaoBruta, ArrecadacaoPeriodo
 From VENDAS_PROD as vvt, PRODUTOS as prod, (
  select sum(total) as ArrecadacaoBruta from VENDAS_PROD where data >='02.01.2020' and data <='06.01.2020'),
(select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from  (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codigo,
 prod.produto, prod.unidade, prod.cor, prod.tamanho,  prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||'%') as percentual,
 round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD as vvt, PRODUTOS as prod,
  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where data >='02.01.2020' and data <='06.01.2020') as Arrecad
where vvt.cod_prod_serv = prod.codigo and (data >='02.01.2020' and data <='06.01.2020')
 group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta
order by TotalArrecadadoPorProduto desc, produto rows 25) )
where vvt.cod_prod_serv = prod.codigo and (data >='02.01.2020' and data <='06.01.2020')
 group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta,ArrecadacaoPeriodo
 order by TotalVALOR desc, produto
rows 25



ibq_RelABCArrecadacaoMarkUp2
----------------------------------
Select * from  (Select sum(vvt.TOTAL) as TotalVALOR, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,
 prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||'%') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) as lucratividade
 From VENDAS_PROD as vvt, PRODUTOS as prod
where vvt.cod_prod_serv = prod.codigo and (data >='02.01.2020' and data <='06.01.2020')
 group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual
order by TotalVALOR desc, produto
rows 25) order by lucratividade desc, produto
Substituir por este-------:
Select * from (Select sum(vvt.TOTAL) as TotalVALOR, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,
 prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),3) ||'%') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, ArrecadacaoBruta,ArrecadacaoPeriodo
 From VENDAS_PROD as vvt, PRODUTOS as prod, (
select sum(total) as ArrecadacaoBruta from VENDAS_PROD where data >='02.01.2020' and data <='06.01.2020'),
(select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from
 (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,
 prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||'%') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp,
 round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta
 From VENDAS_PROD as vvt, PRODUTOS as prod,
 (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where data >='02.01.2020' and data <='06.01.2020') as Arrecad where
 vvt.cod_prod_serv = prod.codigo and (data >='02.01.2020' and data <='06.01.2020')
 group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta
order by TotalArrecadadoPorProduto desc, produto
rows 25) )  where vvt.cod_prod_serv = prod.codigo and (data >='02.01.2020' and data <='06.01.2020')
 group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta,ArrecadacaoPeriodo
 order by TotalVALOR desc, produto
rows 25 )
order by MarkUp desc, produto




ibq_RelABCArrecadacaoLucratividade1
======================================================
select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorProduto, round((TotalArrecadadoPorProduto/ ArrecadacaoPeriodo)*100,4)
 as LucratividadeDentreOsTop, (round((TotalArrecadadoPorProduto/ ArrecadacaoPeriodo)*100,4) || '%') as PercentualLucratividadeTop,
 TotalQtdVendasProduto, codigo, produto, unidade, cor, tamanho, venda, custo, percentual, markup from (
 Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, TotalQtdVendasProduto, prod.codigo, prod.produto, prod.unidade,  prod.cor,
 prod.tamanho, prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||'%') as percentual,
 round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD as vvt,
 PRODUTOS as prod,  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where data >='02.01.2020'
 and data <='06.01.2020') as Arrecad,  (Select sum(vqt.quantidade) as TotalQtdVendasProduto, vqt.cod_prod_serv,
  vqt.prod_serv  From VENDAS_PROD as vqt where(data >='02.01.2020' and data <='06.01.2020')     group by cod_prod_serv,
  vqt.prod_serv order by TotalQtdVendasProduto desc) as TotalVendido
 where vvt.cod_prod_serv = prod.codigo and vvt.cod_prod_serv= totalvendido.cod_prod_serv  and (data >='02.01.2020' and data <='06.01.2020')  group by
 TotalQtdVendasProduto, prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo,percentual,
 ArrecadacaoBruta order by TotalArrecadadoPorProduto desc,produto rows 25), (select sum(TotalArrecadadoPorProduto)
 as ArrecadacaoPeriodo from  (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto, prod.codigo, prod.produto, prod.unidade,
 prod.cor, prod.tamanho,  prod.venda,  prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||'%') as percentual,
 round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp,  round(Arrecad.ArrecadacaoBruta,3) as ArrecadacaoBruta  From VENDAS_PROD
 as vvt, PRODUTOS as prod,  (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where data >='02.01.2020' and
  data <='06.01.2020') as Arrecad where vvt.cod_prod_serv = prod.codigo and (data >='02.01.2020' and data <='06.01.2020')  group by prod.codigo,
  prod.produto, prod.unidade, prod.cor,  prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta order by
  TotalArrecadadoPorProduto desc, produto rows 25)
   )order by TotalArrecadadoPorProduto desc, produto




ibq_RelABCArrecadacaoLucratividade2
=======================================
select ArrecadacaoBruta, ArrecadacaoPeriodo, TotalArrecadadoPorProduto, round((TotalArrecadadoPorProduto/ ArrecadacaoBruta)*100,5)  as LucratividadeBruta,
(round((TotalArrecadadoPorProduto/ ArrecadacaoBruta)*100,5) || '%') as PercentualLucratividadeBruta,  TotalQtdVendasProduto, codigo,
 produto, unidade, cor, tamanho, venda, custo, percentual, markup from (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto,
 TotalQtdVendasProduto, prod.codigo, prod.produto, prod.unidade,  prod.cor, prod.tamanho, prod.venda, prod.custo,
  (round (((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||'%') as percentual, round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp,
  round(Arrecad.ArrecadacaoBruta,4) as ArrecadacaoBruta  From VENDAS_PROD  as vvt, PRODUTOS as prod,  (select sum(total) as ArrecadacaoBruta
  from VENDAS_PROD where data >='02.01.2020' and data <='06.01.2020') as Arrecad,  (Select sum(vqt.quantidade) as TotalQtdVendasProduto,
  vqt.cod_prod_serv, vqt.prod_serv  From VENDAS_PROD as vqt where (data >='02.01.2020' and data <='06.01.2020')  group by cod_prod_serv,
   vqt.prod_serv order by TotalQtdVendasProduto desc) as TotalVendido  where vvt.cod_prod_serv = prod.codigo and vvt.cod_prod_serv= totalvendido.cod_prod_serv
    and (data >='02.01.2020' and data <='06.01.2020') group by TotalQtdVendasProduto, prod.codigo, prod.produto, prod.unidade,
     prod.cor, prod.tamanho, prod.venda, prod.custo,percentual, ArrecadacaoBruta order by TotalArrecadadoPorProduto desc,
     produto rows 25),    (select sum(TotalArrecadadoPorProduto)as ArrecadacaoPeriodo from  (Select sum(vvt.TOTAL) as TotalArrecadadoPorProduto,
    prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho, prod.venda, prod.custo, (round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) ||'%') as percentual,
     round(((prod.venda/(prod.custo+0.0000001)-1)*100),2) as MarkUp, round(Arrecad.ArrecadacaoBruta,4) as ArrecadacaoBruta
      From VENDAS_PROD as vvt, PRODUTOS as prod, (select sum(total) as ArrecadacaoBruta from VENDAS_PROD where
       data >='02.01.2020' and data <='06.01.2020') as Arrecad where vvt.cod_prod_serv = prod.codigo and
       (data >='02.01.2020' and data <='06.01.2020')  group by prod.codigo, prod.produto, prod.unidade, prod.cor, prod.tamanho,
  prod.venda, prod.custo,percentual, ArrecadacaoBruta order by TotalArrecadadoPorProduto desc, produto
  rows 25) ) order by TotalArrecadadoPorProduto desc, produto

