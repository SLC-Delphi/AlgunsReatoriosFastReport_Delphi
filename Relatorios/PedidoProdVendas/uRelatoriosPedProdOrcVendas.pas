unit uRelatoriosPedProdOrcVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxExportPDF, frxGradient, frxDBSet;

type
  T_F_RelatorioPedProOrcVenda = class(TForm)
    frxDBDS_empresa: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    FRX_PPOV_Agrupa: TfrxReport;
    frxDBDS_Agrupa: TfrxDBDataset;
    frxDBDS_Resumo2: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxDBDS_Orcamento: TfrxDBDataset;
    FRX_PPOV_ResumoAd: TfrxReport;
    frxDBDS_Resumo1: TfrxDBDataset;
    FRX_PPOV_ResumoInf: TfrxReport;
    FRX_PPOV_ResumoBab: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _F_RelatorioPedProOrcVenda: T_F_RelatorioPedProOrcVenda;

implementation

uses uMenuPedidoProdOrcVendas;


{$R *.dfm}

end.
