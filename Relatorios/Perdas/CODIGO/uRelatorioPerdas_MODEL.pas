unit uRelatorioPerdas_MODEL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, StdCtrls;

type
  T_F_RelatorioPerdas_MODEL = class(TForm)
  Ibq_RelatorioPerdas: TIBQuery;
  IBQ_EMPRESA: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure RPerdasProdutosDetalhadoData (vsInicial, vsFinal : String) ;
    Procedure RPerdasMatPrimaDetalhadoData (vsInicial, vsFinal : String)  ;
    Procedure RPerdasProdutosDetalhadoMercadoria (vsInicial, vsFinal : String)  ;
    Procedure RPerdasMatPrimaDetalhadoMercadoria (vsInicial, vsFinal : String)  ;
    Procedure RPerdasProdutosSintetico (vsInicial, vsFinal : String)  ;
    Procedure RPerdasMatPrimaSintetico (vsInicial, vsFinal : String)  ;
  end;

var
  _F_RelatorioPerdas_MODEL: T_F_RelatorioPerdas_MODEL;

implementation

Uses DM1;

{$R *.dfm}


Procedure T_F_RelatorioPerdas_MODEL.RPerdasProdutosDetalhadoData (vsInicial, vsFinal :String)   ;
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelatorioPerdas.SQL.Clear;
  vsData := chr(39)+' and (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[]) + chr(39);
  vsQuery := 'Select * From Perdas Produto Where Tipo=' +chr(39)+ 'PRODUTO FINAL' +  vsData  +') Order by Tipo, Data, Produto ' ;
  Ibq_RelatorioPerdas.SQL.Add(vsQuery);
  Ibq_RelatorioPerdas.Prepare;
  Ibq_RelatorioPerdas.Open;
  Ibq_RelatorioPerdas.First
end;


Procedure T_F_RelatorioPerdas_MODEL.RPerdasMatPrimaDetalhadoData (vsInicial, vsFinal : String)  ;
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelatorioPerdas.SQL.Clear;
  vsData := chr(39)+' and (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[]) + chr(39);
  vsQuery := 'Select * From Perdas Produto Where Tipo=' +chr(39)+ 'MATERIA PRIMA' +  vsData  +') Order by Tipo, Data, Produto ' ;
  Ibq_RelatorioPerdas.SQL.Add(vsQuery);
  Ibq_RelatorioPerdas.Prepare;
  Ibq_RelatorioPerdas.Open;
  Ibq_RelatorioPerdas.First
end;



Procedure T_F_RelatorioPerdas_MODEL.RPerdasProdutosDetalhadoMercadoria (vsInicial, vsFinal : String)   ;
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelatorioPerdas.SQL.Clear;
  vsData := chr(39)+' and (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[]) + chr(39);
  vsQuery := 'Select * From Perdas Produto Where Tipo=' +chr(39)+ 'PRODUTO FINAL' +  vsData  +') Order by Tipo, Produto, Data ' ;
  Ibq_RelatorioPerdas.SQL.Add(vsQuery);
  Ibq_RelatorioPerdas.Prepare;
  Ibq_RelatorioPerdas.Open;
  Ibq_RelatorioPerdas.First
end;


Procedure T_F_RelatorioPerdas_MODEL.RPerdasMatPrimaDetalhadoMercadoria (vsInicial, vsFinal : String)  ;
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelatorioPerdas.SQL.Clear;
  vsData := chr(39)+' and (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[]) + chr(39);
  vsQuery := 'Select * From Perdas Produto Where Tipo=' +chr(39)+ 'MATERIA PRIMA' +  vsData  +') Order by Tipo, Produto, Data ' ;
  Ibq_RelatorioPerdas.SQL.Add(vsQuery);
  Ibq_RelatorioPerdas.Prepare;
  Ibq_RelatorioPerdas.Open;
  Ibq_RelatorioPerdas.First
end;



Procedure T_F_RelatorioPerdas_MODEL.RPerdasProdutosSintetico (vsInicial, vsFinal : String)  ;
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelatorioPerdas.SQL.Clear;
  vsData := chr(39)+' and (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[]) + chr(39);
  vsQuery := 'Select * From Perdas Produto Where Tipo=' +chr(39)+ 'PRODUTO FINAL' +  vsData  +') Order by Tipo, Produto ' ;
  Ibq_RelatorioPerdas.SQL.Add(vsQuery);
  Ibq_RelatorioPerdas.Prepare;
  Ibq_RelatorioPerdas.Open;
  Ibq_RelatorioPerdas.First
end;


Procedure T_F_RelatorioPerdas_MODEL.RPerdasMatPrimaSintetico (vsInicial, vsFinal : String)  ;
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelatorioPerdas.SQL.Clear;
  vsData := chr(39)+' and (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[]) + chr(39);
  vsQuery := 'Select * From Perdas Produto Where Tipo=' +chr(39)+ 'MATERIA PRIMA' +  vsData  +') Order by Tipo, Produto ' ;
  Ibq_RelatorioPerdas.SQL.Add(vsQuery);
  Ibq_RelatorioPerdas.Prepare;
  Ibq_RelatorioPerdas.Open;
  Ibq_RelatorioPerdas.First
end;



end.


