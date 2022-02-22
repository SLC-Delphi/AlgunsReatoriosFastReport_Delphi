unit DM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, IBDatabase;

type
  TDM1 = class(TDataModule)
    IBT_DUPLAFACE: TIBTransaction;
    IBT_TINTAS: TIBTransaction;
    IB_DB_DUPLAFACE: TIBDatabase;
    IB_DB_TINTAS: TIBDatabase;
    IBQ_DF_CLIENTES: TIBQuery;
    IBQ_DF_FORNECEDORES: TIBQuery;
    IBQ_DF_PRODUTOS: TIBQuery;
    DS_DF_CLIENTES: TDataSource;
    DS_DF_FORNECEDORES: TDataSource;
    DS_DF_PRODUTOS: TDataSource;
    DS__TC: TDataSource;
    DS__TF: TDataSource;
    DS_TP: TDataSource;
    IBQ_TC: TIBQuery;
    IBQ_TF: TIBQuery;
    IBQ_TP: TIBQuery;
    IB_DF_CONTASRECEBER: TIBQuery;
    DS_DF_CONTASRECEBER: TDataSource;
    IB_DF_LINHA: TIBQuery;
    DS_DF_LINHA: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

end.
