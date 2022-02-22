unit uRelatorioDevolucoes_MODEL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery;

type
  T_F_RelatorioDevolucoes_MODEL = class(TForm)
    Ibq_RelatorioDevolucoes: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure RDevolucoesDetalhadoData (vsInicial, vsFinal : String) ;
    Procedure RDevolucoesSintetico (vsInicial, vsFinal : String)  ;
  end;

var
  _F_RelatorioDevolucoes_MODEL: T_F_RelatorioDevolucoes_MODEL;

implementation

uses DM1;

{$R *.dfm}

{ T_F_RelatorioDevolucoes_MODEL }

procedure T_F_RelatorioDevolucoes_MODEL.RDevolucoesDetalhadoData(vsInicial,
  vsFinal: String);
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelatorioDevolucoes.SQL.Clear;
  vsData := chr(39)+' and (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[]) + chr(39);
  vsQuery := 'Select * From DEVOLUCAO_PROD Where SITUACAO=' +chr(39)+ 'ENTRADA' +  vsData  +') Order by Produto, Data ' ;
  Ibq_RelatorioDevolucoes.SQL.Add(vsQuery);
  Ibq_RelatorioDevolucoes.Prepare;
  Ibq_RelatorioDevolucoes.Open;
  Ibq_RelatorioDevolucoes.First
end;

procedure T_F_RelatorioDevolucoes_MODEL.RDevolucoesSintetico(vsInicial,
  vsFinal: String);
var
  vsQuery : String;
  vsData :String;
begin
  Ibq_RelatorioDevolucoes.SQL.Clear;
  vsData := chr(39)+' and (DATA>= '+ chr(39)+ StringReplace(vsInicial,'/','.',[])+ chr(39)+ ' and DATA<= ' +chr(39)+StringReplace(vsFinal,'/','.',[]) + chr(39);
  vsQuery := 'Select * From DEVOLUCAO_PROD Where SITUACAO=' +chr(39)+ 'ENTRADA' +  vsData  +') Order by situacao, Produto ' ;
  Ibq_RelatorioDevolucoes.SQL.Add(vsQuery);
  Ibq_RelatorioDevolucoes.Prepare;
  Ibq_RelatorioDevolucoes.Open;
  Ibq_RelatorioDevolucoes.First
end;

end.
