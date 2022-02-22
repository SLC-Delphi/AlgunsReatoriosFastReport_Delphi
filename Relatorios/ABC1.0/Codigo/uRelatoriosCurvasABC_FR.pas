unit uRelatoriosCurvasABC_FR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  frxClass, frxExportPDF, frxGradient, frxDBSet, frxExportXLS,
  ExtCtrls, StdCtrls, frxExportRTF, frxExportXML ;

type
  T_F_CurvaABC_FR = class(TForm)
    frxDBDS_empresa: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxPDFExport1: TfrxPDFExport;
    frxDBDS_RelABCVendasProdQtd: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frx_RelABCVendasProdQtd: TfrxReport;
    frx_RelABCArrecadacaoVendas: TfrxReport;
    frxDBS__RelABCArrecadaoVendas: TfrxDBDataset;
    frx_RelABCVendasProdQtdPercent: TfrxReport;
    frxDBS__RelABCVendasProdQtdPercent: TfrxDBDataset;
    frx_RelABCVendasProdQtdPercent2: TfrxReport;
    frxDBDS_RelABCVendasProdQtdPercent2: TfrxDBDataset;
    frx_RelABCArrecadacaoMarkUp1: TfrxReport;
    frxDBS_RelABCArrecadacapMarkUp1: TfrxDBDataset;
    frx_RelABCArrecadacaoMarkUp2: TfrxReport;
    frxDBS_RelABCArrecadacapMarkUp2: TfrxDBDataset;
    frxDBS_RelABCArrecadacaoLucratividade1: TfrxDBDataset;
    frx_RelABCArrecadacaoLucratividade1: TfrxReport;
    frxDBS_RelABCArrecadacaoLucratividade2: TfrxDBDataset;
    frx_RelABCArrecadacaoLucratividade2: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _F_CurvaABC_FR: T_F_CurvaABC_FR;

implementation

uses uRelatorioCurvaABC_VendasProd_porQuantidade_MODEL;


{$R *.dfm}

end.
