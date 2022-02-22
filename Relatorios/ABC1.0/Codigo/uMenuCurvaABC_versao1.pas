unit uMenuCurvaABC_versao1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StrUtils,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls;


type
  ERelatorio = (tpRelatorioMaiorVenda,tpRelatorioMaiorArrecadacao);
  ETipoMaiorVenda = (tpPorTotaldeVendas,tpPorPercent1, tpPorPercent2);
  ETipoMaiorArrecadacao = (tpPorQuantidadeVendida, tpArrecadacaoMakeUp1, tpArrecadacaoMakeUp2, tpArrecadacaoLucratividadeTop, tpArrecadacaoLucratividadeBruta);
  TForm1 = class(TForm)
    Pa_Relatorio: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    spButton_Cancelar: TSpeedButton;
    spButton_Gerar: TSpeedButton;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    dateTime_Inicial: TDateTimePicker;
    dateTime_Final: TDateTimePicker;
    Panel6: TPanel;
    spBt_Arrecadacao: TSpeedButton;
    spBt_QuantidadeVendida: TSpeedButton;
    rb_SinteticoMercadoria: TRadioButton;
    rb_DetalhadoMercadoria: TRadioButton;
    Label6: TLabel;
    pa_QtdVendas: TPanel;
    spbt_VendasEMarkUp1: TSpeedButton;
    spbt_VendasEArrecadacaoTotal: TSpeedButton;
    rb_VendasEMarkUp1: TRadioButton;
    rb_VendasEArrecadacaoTotal: TRadioButton;
    pa_Arrecadacao: TPanel;
    spbt_ArrecadacaoEMarkUp1: TSpeedButton;
    spbt_ArrecadacaoEVendas: TSpeedButton;
    rb_ArrecadacaoEMarkUp1: TRadioButton;
    rb_ArrecadacaoEVendas: TRadioButton;
    rb_VendasEMarkUp2: TRadioButton;
    spbt_VendasEMarkUp2: TSpeedButton;
    rb_ArrecadacaoEMarkUp2: TRadioButton;
    spbt_ArrecadacaoEMarkUp2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    rb_ArrecadacaoELucratividade1: TRadioButton;
    spbt_ArrecadacaoELucratividade1: TSpeedButton;
    rb_ArrecadacaoELucratividade2: TRadioButton;
    spbt_ArrecadacaoELucratividade2: TSpeedButton;
    Label7: TLabel;
    cb_QtdItens: TComboBox;
    pa_Aguarde: TPanel;
    procedure rb_DetalhadoMercadoriaClick(Sender: TObject);
    procedure spBt_QuantidadeVendidaClick(Sender: TObject);
    procedure rb_SinteticoMercadoriaClick(Sender: TObject);
    procedure spBt_ArrecadacaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spButton_CancelarClick(Sender: TObject);
    procedure rb_VendasEArrecadacaoTotalClick(Sender: TObject);
    procedure rb_VendasEMarkUp1Click(Sender: TObject);
    procedure rb_ArrecadacaoEVendasClick(Sender: TObject);
    procedure rb_ArrecadacaoEMarkUp1Click(Sender: TObject);
    procedure spbt_VendasEArrecadacaoTotalClick(Sender: TObject);
    procedure spbt_VendasEMarkUp1Click(
      Sender: TObject);
    procedure spbt_ArrecadacaoEVendasClick(Sender: TObject);
    procedure spbt_ArrecadacaoEMarkUp1Click(Sender: TObject);
    procedure spbt_VendasEMarkUp2Click(
      Sender: TObject);
    procedure spbt_ArrecadacaoEMarkUp2Click(Sender: TObject);
    procedure spbt_ArrecadacaoELucratividade1Click(Sender: TObject);
    procedure spbt_ArrecadacaoELucratividade2Click(Sender: TObject);
    procedure spButton_GerarClick(Sender: TObject);
    procedure rb_VendasEMarkUp2Click(Sender: TObject);
    procedure rb_ArrecadacaoEMarkUp2Click(Sender: TObject);
    procedure rb_ArrecadacaoELucratividade1Click(Sender: TObject);
    procedure rb_ArrecadacaoELucratividade2Click(Sender: TObject);
  private
    { Private declarations }
    venERelatorio: ERelatorio;
    venETipoMaiorVenda: ETipoMaiorVenda;
    venETipoMaiorArrecadacao : ETipoMaiorArrecadacao;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uRelatoriosCurvasABC_FR,
  uRelatorioCurvaABC_VendasProd_porQuantidade_MODEL;

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
  spBt_QuantidadeVendida.Click;
  cb_QtdItens.ItemIndex := 3;
  pa_Aguarde.Visible := False;
end;


procedure TForm1.spButton_CancelarClick(Sender: TObject);
begin
   Self.Close();
end;


procedure TForm1.rb_DetalhadoMercadoriaClick(Sender: TObject);
begin
   spbt_QuantidadeVendida.Click;
end;


procedure TForm1.spBt_QuantidadeVendidaClick(Sender: TObject);
begin
   rb_DetalhadoMercadoria.Checked := True;
   venERelatorio := tpRelatorioMaiorVenda;

   pa_Arrecadacao.Enabled := False;
   pa_Arrecadacao.BevelInner := bvNone;
   spbt_ArrecadacaoEVendas.Enabled := False;
   spbt_ArrecadacaoEMarkUp1.Enabled := False;
   spbt_ArrecadacaoEMarkUp2.Enabled := False;
   spbt_ArrecadacaoELucratividade1.Enabled := False;
   spbt_ArrecadacaoELucratividade2.Enabled := False;
   rb_ArrecadacaoEVendas.Checked := True;
   rb_ArrecadacaoEVendas.Checked := False;

   pa_QtdVendas.Enabled := True;
   pa_QtdVendas.BevelInner :=bvLowered;
   spbt_VendasEArrecadacaoTotal.Enabled := True;
   spbt_VendasEMarkUp1.Enabled := True;
   spbt_VendasEMarkUp2.Enabled := True;
   spbt_VendasEArrecadacaoTotal.Click;
end;


procedure TForm1.rb_SinteticoMercadoriaClick(Sender: TObject);
begin
   spbt_Arrecadacao.Click;
end;


procedure TForm1.spBt_ArrecadacaoClick(Sender: TObject);
begin
   rb_SinteticoMercadoria.Checked := True;
   venERelatorio := tpRelatorioMaiorArrecadacao;

   pa_QtdVendas.Enabled := False;
   pa_QtdVendas.BevelInner := bvNone;
   spbt_VendasEArrecadacaoTotal.Enabled := False;
   spbt_VendasEMarkUp1.Enabled := False;
   spbt_VendasEMarkUp2.Enabled := False;
   rb_VendasEArrecadacaoTotal.Checked := True;
   rb_VendasEArrecadacaoTotal.Checked := False;

   pa_Arrecadacao.Enabled := True;
   pa_Arrecadacao.BevelInner := bvLowered;
   spbt_ArrecadacaoEVendas.Enabled := True;
   spbt_ArrecadacaoEMarkUp1.Enabled := True;
   spbt_ArrecadacaoEMarkUp2.Enabled := True;
   spbt_ArrecadacaoELucratividade1.Enabled := True;
   spbt_ArrecadacaoELucratividade2.Enabled := True;
   spbt_ArrecadacaoEVendas.Click;
end;


procedure TForm1.rb_VendasEArrecadacaoTotalClick(Sender: TObject);
begin
   spbt_VendasEArrecadacaoTotal.Click;
end;


procedure TForm1.rb_VendasEMarkUp1Click(Sender: TObject);
begin
   spbt_VendasEMarkUp1.Click;
end;

procedure TForm1.rb_VendasEMarkUp2Click(Sender: TObject);
begin
   spbt_VendasEMarkUp2.click;
end;


procedure TForm1.rb_ArrecadacaoEVendasClick(Sender: TObject);
begin
   spbt_ArrecadacaoEVendas.Click;
end;


procedure TForm1.rb_ArrecadacaoEMarkUp1Click(Sender: TObject);
begin
   spbt_ArrecadacaoEMarkUp1.Click;
end;

procedure TForm1.rb_ArrecadacaoEMarkUp2Click(Sender: TObject);
begin
   spbt_ArrecadacaoEMarkUp2.Click;
end;

procedure TForm1.rb_ArrecadacaoELucratividade1Click(Sender: TObject);
begin
   spbt_ArrecadacaoELucratividade1.Click;
end;

procedure TForm1.rb_ArrecadacaoELucratividade2Click(Sender: TObject);
begin
   spbt_ArrecadacaoELucratividade2.Click
end;


procedure TForm1.spbt_VendasEArrecadacaoTotalClick(Sender: TObject);
begin
  rb_VendasEArrecadacaoTotal.Checked := True;
  venERelatorio :=  tpRelatorioMaiorVenda;
  venETipoMaiorVenda := tpPorTotaldeVendas;
end;


procedure TForm1.spbt_VendasEMarkUp1Click(
  Sender: TObject);
begin
  rb_VendasEMarkUp1.Checked := True;
  rb_VendasEMarkUp1.Repaint;
  venERelatorio :=  tpRelatorioMaiorVenda;
  venETipoMaiorVenda := tpPorPercent1;
end;


procedure TForm1.spbt_VendasEMarkUp2Click(
  Sender: TObject);
begin
  rb_VendasEMarkUp2.Checked := True;
  rb_VendasEMarkUp2.Repaint;
  venERelatorio :=  tpRelatorioMaiorVenda;
  venETipoMaiorVenda := tpPorPercent2;
end;


procedure TForm1.spbt_ArrecadacaoEVendasClick(Sender: TObject);
begin
  rb_ArrecadacaoEVendas.Checked := True;
  rb_ArrecadacaoEVendas.Repaint;
  venERelatorio :=  tpRelatorioMaiorArrecadacao;
  venETipoMaiorArrecadacao := tpPorQuantidadeVendida;
end;


procedure TForm1.spbt_ArrecadacaoEMarkUp1Click(Sender: TObject);
begin
  rb_ArrecadacaoEMarkUp1.Checked := True;
  venERelatorio :=  tpRelatorioMaiorArrecadacao;
  venETipoMaiorArrecadacao := tpArrecadacaoMakeUp1;
end;


procedure TForm1.spbt_ArrecadacaoEMarkUp2Click(Sender: TObject);
begin
  rb_ArrecadacaoEMarkUp2.Checked := True;
  venERelatorio :=  tpRelatorioMaiorArrecadacao;
  venETipoMaiorArrecadacao := tpArrecadacaoMakeUp2;
end;


procedure TForm1.spbt_ArrecadacaoELucratividade1Click(Sender: TObject);
begin
  rb_ArrecadacaoELucratividade1.Checked := True;
  venERelatorio :=  tpRelatorioMaiorArrecadacao;
  venETipoMaiorArrecadacao := tpArrecadacaoLucratividadeTop;
end;


procedure TForm1.spbt_ArrecadacaoELucratividade2Click(Sender: TObject);
begin
{
, , , ,
    }
  rb_ArrecadacaoELucratividade2.Checked := True;
  rb_ArrecadacaoELucratividade2.Repaint;
  venERelatorio :=  tpRelatorioMaiorArrecadacao;
  venETipoMaiorArrecadacao := tpArrecadacaoLucratividadeBruta;
end;


procedure TForm1.spButton_GerarClick(Sender: TObject);
begin
    case venERelatorio of
      tpRelatorioMaiorVenda:
      begin
          case venETipoMaiorVenda of
            tpPorTotaldeVendas:
            begin
              _F_RelatorioCurvaABC_MODEL.RelABCVendasProdQtd (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date), strTOint(cb_QtdItens.Text));
              _F_CurvaABC_FR.frx_RelABCVendasProdQtd.PrepareReport(True);
              _F_CurvaABC_FR.frx_RelABCVendasProdQtd.ShowReport;
            end;
            tpPorPercent1:
            begin
              _F_RelatorioCurvaABC_MODEL.RelABCVendasProdQtdPercent1(DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date) , strTOint(cb_QtdItens.Text));
              _F_CurvaABC_FR.frx_RelABCVendasProdQtdPercent.PrepareReport(True);
              _F_CurvaABC_FR.frx_RelABCVendasProdQtdPercent.ShowReport;
            end;
            tpPorPercent2:
            begin
              _F_RelatorioCurvaABC_MODEL.RelABCVendasProdQtdPercent2(DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date) , strTOint(cb_QtdItens.Text));
              _F_CurvaABC_FR.frx_RelABCVendasProdQtdPercent2.PrepareReport(True);
              _F_CurvaABC_FR.frx_RelABCVendasProdQtdPercent2.ShowReport;
            end;
          end; // case
      end;
      tpRelatorioMaiorArrecadacao:
      begin
          case venETipoMaiorArrecadacao of
              tpPorQuantidadeVendida:
              begin
                 pa_Aguarde.Visible := True;
                 pa_Aguarde.Repaint;
                 _F_RelatorioCurvaABC_MODEL.RelABCArrecadacaoVendas (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date),strTOint(cb_QtdItens.Text));
                 pa_Aguarde.Visible := False;
                 pa_Aguarde.Repaint;
                 sleep(250);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoVendas.PrepareReport(True);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoVendas.ShowReport;
             end;
              tpArrecadacaoMakeUp1:
              begin
                 pa_Aguarde.Visible := True;
                 pa_Aguarde.Repaint;
                 _F_RelatorioCurvaABC_MODEL.ArrecadacaoMarkUp1 (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date),strTOint(cb_QtdItens.Text));
                 pa_Aguarde.Visible := False;
                 pa_Aguarde.Repaint;
                 sleep(250);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoMarkUp1.PrepareReport(True);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoMarkUp1.ShowReport;
             end;
              tpArrecadacaoMakeUp2:
              begin
                 pa_Aguarde.Visible := True;
                 pa_Aguarde.Repaint;
                 _F_RelatorioCurvaABC_MODEL.ArrecadacaoMarkUp2 (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date),strTOint(cb_QtdItens.Text));
                 pa_Aguarde.Visible := False;
                 pa_Aguarde.Repaint;
                 sleep(250);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoMarkUp2.PrepareReport(True);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoMarkUp2.ShowReport;
             end;
              tpArrecadacaoLucratividadeTop:
              begin
                 pa_Aguarde.Visible := True;
                 pa_Aguarde.Repaint;
                 _F_RelatorioCurvaABC_MODEL.RelABCArrecadacaoLucratividade1 (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date),strTOint(cb_QtdItens.Text));
                 pa_Aguarde.Visible := False;
                 pa_Aguarde.Repaint;
                 sleep(250);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoLucratividade1.PrepareReport(True);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoLucratividade1.ShowReport;
             end;
              tpArrecadacaoLucratividadeBruta:
              begin
                 pa_Aguarde.Visible := True;
                 pa_Aguarde.Repaint;
                 _F_RelatorioCurvaABC_MODEL.RelABCArrecadacaoLucratividade2 (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date),strTOint(cb_QtdItens.Text));
                 pa_Aguarde.Visible := False;
                 pa_Aguarde.Repaint;
                 sleep(250);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoLucratividade2.PrepareReport(True);
                 _F_CurvaABC_FR.frx_RelABCArrecadacaoLucratividade2.ShowReport;
             end;
          end; // case
      end;
    end; // case
    spBt_QuantidadeVendida.Click;
    cb_QtdItens.ItemIndex := 3;
end;




end.

{

            tpPorPercent2:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasProdutosSintetico(DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasProdutosSintetico.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasProdutosSintetico.ShowReport;
            end;
          end; // Case
      end;
      tpRelatorioMaiorArrecadacao:
      begin
          case venETipoMaiorArrecadacao of
            tpPorQuantidadeVendida:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasMatPrimaDetalhadoData (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoData.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoData.ShowReport;              
            end;
            tpArrecadacaoMakeUp1:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasMatPrimaDetalhadoMercadoria (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoMercadoria.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoMercadoria.ShowReport;
            end;
            tpArrecadacaoMakeUp2:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasMatPrimaSintetico (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaSintetico.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaSintetico.ShowReport;
            end;
            tpArrecadacaoLucratividadeTop:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasMatPrimaDetalhadoMercadoria (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoMercadoria.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaDetalhadoMercadoria.ShowReport;
            end;
            tpArrecadacaoLucratividadeBruta:
            begin
              _F_RelatorioPerdas_MODEL.RPerdasMatPrimaSintetico (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaSintetico.PrepareReport(True);
              _F_RelatorioPerdasFR.FRX_PerdasMatPrimaSintetico.ShowReport;
            end;     }
