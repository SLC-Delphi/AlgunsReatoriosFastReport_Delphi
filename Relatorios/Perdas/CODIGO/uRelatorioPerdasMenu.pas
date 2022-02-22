unit uRelatorioPerdasMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  ERelatorio = (tpRelatorioProduto,tpRelatorioMateriaPrima);
  ETipo = (tpDetalhadoData,tpDetalhadoMercadoria, tpSinteticoMercadoria);

  T_F_RelaotiosPerdaMenu = class(TForm)
    Pa_Relatorio: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    dateTime_Inicial: TDateTimePicker;
    dateTime_Final: TDateTimePicker;
    Panel5: TPanel;
    spButton_Produtos: TSpeedButton;
    spButton_MateriaPrima: TSpeedButton;
    rb_Produtos: TRadioButton;
    Rb_MateriaPrima: TRadioButton;
    Panel6: TPanel;
    spButton_DetalhadoData: TSpeedButton;
    spButton_SinteticoMercadoria: TSpeedButton;
    rb_DetalhadoData: TRadioButton;
    rb_SinteticoMercadoria: TRadioButton;
    spButton_Cancelar: TSpeedButton;
    spButton_Gerar: TSpeedButton;
    spButton_DetalhadoMercadoria: TSpeedButton;
    rb_DetalhadoMercadoria: TRadioButton;
    procedure spButton_ProdutosClick(Sender: TObject);
    procedure spButton_MateriaPrimaClick(Sender: TObject);
    procedure spButton_DetalhadoDataClick(Sender: TObject);
    procedure spButton_SinteticoMercadoriaClick(Sender: TObject);
    procedure spButton_GerarClick(Sender: TObject);
    procedure spButton_DetalhadoMercadoriaClick(Sender: TObject);
    procedure rb_ProdutosClick(Sender: TObject);
    procedure Rb_MateriaPrimaClick(Sender: TObject);
    procedure rb_DetalhadoDataClick(Sender: TObject);
    procedure rb_DetalhadoMercadoriaClick(Sender: TObject);
    procedure rb_SinteticoMercadoriaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spButton_CancelarClick(Sender: TObject);
  private
    { Private declarations }
    venERelatorio: ERelatorio;
    venETipo: ETipo;
  public
    { Public declarations }
  end;

var
  _F_RelaotiosPerdaMenu: T_F_RelaotiosPerdaMenu;

implementation

uses uRelatorioPerdas_MODEL , uRelatoriosPerdasImpressaoFR;

{$R *.dfm}


procedure T_F_RelaotiosPerdaMenu.FormCreate(Sender: TObject);
begin
  spButton_Produtos.Click;
  spButton_DetalhadoData.Click;
end;


procedure T_F_RelaotiosPerdaMenu.spButton_CancelarClick(Sender: TObject);
begin
  Self.Close;
end;






procedure T_F_RelaotiosPerdaMenu.rb_ProdutosClick(Sender: TObject);
begin
  spButton_Produtos.Click;
end;


procedure T_F_RelaotiosPerdaMenu.Rb_MateriaPrimaClick(Sender: TObject);
begin
  spButton_MateriaPrima.Click;
end;




procedure T_F_RelaotiosPerdaMenu.rb_DetalhadoDataClick(Sender: TObject);
begin
  spButton_DetalhadoData.Click;
end;


procedure T_F_RelaotiosPerdaMenu.rb_DetalhadoMercadoriaClick(
  Sender: TObject);
begin
  spButton_DetalhadoMercadoria.Click;
end;


procedure T_F_RelaotiosPerdaMenu.rb_SinteticoMercadoriaClick(
  Sender: TObject);
begin
  spButton_SinteticoMercadoria.Click;
end;




procedure T_F_RelaotiosPerdaMenu.spButton_ProdutosClick(Sender: TObject);
begin
  rb_Produtos.Checked := True;
  venERelatorio :=  tpRelatorioProduto;
end;

procedure T_F_RelaotiosPerdaMenu.spButton_MateriaPrimaClick(Sender: TObject);
begin
  rb_MateriaPrima.Checked := True ;
  venERelatorio :=  tpRelatorioMateriaPrima ;
end;



procedure T_F_RelaotiosPerdaMenu.spButton_DetalhadoDataClick(Sender: TObject);
begin
  rb_DetalhadoData.Checked := True ;
  venETipo := tpDetalhadoData ;
end;

procedure T_F_RelaotiosPerdaMenu.spButton_DetalhadoMercadoriaClick(
  Sender: TObject);
begin
  rb_DetalhadoMercadoria.Checked := True ;
  venETipo := tpDetalhadoMercadoria ;
end;

procedure T_F_RelaotiosPerdaMenu.spButton_SinteticoMercadoriaClick(Sender: TObject);
begin
  rb_SinteticoMercadoria.Checked := True ;
  venETipo := tpSinteticoMercadoria ;
end;





procedure T_F_RelaotiosPerdaMenu.spButton_GerarClick(Sender: TObject);
begin
    case venERelatorio of
      tpRelatorioProduto:
      begin
          case venETipo of
            tpDetalhadoData:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasProdutosDetalhadoData (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasProdutosDetalhadoData.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasProdutosDetalhadoData.ShowReport;
            end;
            tpDetalhadoMercadoria:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasProdutosDetalhadoMercadoria (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasProdutosDetalhadoMercadoria.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasProdutosDetalhadoMercadoria.ShowReport;
            end;
            tpSinteticoMercadoria:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasProdutosSintetico(DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasProdutosSintetico.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasProdutosSintetico.ShowReport;
            end;
          end; // Case
      end;
      tpRelatorioMateriaPrima:
      begin
          case venETipo of
            tpDetalhadoData:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasMatPrimaDetalhadoData (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoData.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoData.ShowReport;              
            end;
            tpDetalhadoMercadoria:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasMatPrimaDetalhadoMercadoria (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoMercadoria.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoMercadoria.ShowReport;
            end;
            tpSinteticoMercadoria:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasMatPrimaSintetico (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaSintetico.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaSintetico.ShowReport;
            end;
          end; //Case
      end;
    end; // case
end;






end.
