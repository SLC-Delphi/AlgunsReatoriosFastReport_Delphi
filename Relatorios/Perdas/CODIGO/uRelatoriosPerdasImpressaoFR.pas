unit uRelatoriosPerdasImpressaoFR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  frxClass, frxExportPDF, frxGradient, frxDBSet, frxExportXLS,
  ExtCtrls, StdCtrls, frxExportRTF, frxExportXML ;

type
  T_F_RelatorioPerdasFR = class(TForm)
    frxDBDS_empresa: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    FRX_PerdasProdutosDetalhadoData: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDS_RPerdasProdutosDetalhado: TfrxDBDataset;
    FRX_PerdasProdutosSintetico: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    FRX_PerdasMatPrimaDetalhadoMercadoria: TfrxReport;
    FRX_PerdasProdutosDetalhadoMercadoria: TfrxReport;
    FRX_PerdasMatPrimaSintetico: TfrxReport;
    FRX_PerdasMatPrimaDetalhadoData: TfrxReport;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FRX_DevolucoesDetalhadoMercadoria: TfrxReport;
    Label2: TLabel;
    FRX_DevolucoesSintetico: TfrxReport;
    frxDBDS_RDevolucores: TfrxDBDataset;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _F_RelatorioPerdasFR: T_F_RelatorioPerdasFR;

implementation

uses uRelatorioPerdas_MODEL, uRelatorioDevolucoes_MODEL;


{$R *.dfm}

end.
