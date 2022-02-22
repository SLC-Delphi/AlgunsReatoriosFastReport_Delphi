unit uRelatoriosDevolucoesMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  ETipo = (tpDetalhadoMercadoria, tpSinteticoMercadoria);

  T_F_RelatoriosDevolucoesMenu = class(TForm)
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
    Panel6: TPanel;
    spButton_SinteticoMercadoria: TSpeedButton;
    rb_SinteticoMercadoria: TRadioButton;
    spButton_Cancelar: TSpeedButton;
    spButton_Gerar: TSpeedButton;
    spButton_DetalhadoMercadoria: TSpeedButton;
    rb_DetalhadoMercadoria: TRadioButton;
    procedure spButton_SinteticoMercadoriaClick(Sender: TObject);
    procedure spButton_GerarClick(Sender: TObject);
    procedure spButton_DetalhadoMercadoriaClick(Sender: TObject);
    procedure rb_DetalhadoMercadoriaClick(Sender: TObject);
    procedure rb_SinteticoMercadoriaClick(Sender: TObject);
    procedure spButton_CancelarClick(Sender: TObject);
  private
    { Private declarations }
    venETipo: ETipo;
  public
    { Public declarations }
  end;

var
  _F_RelatoriosDevolucoesMenu: T_F_RelatoriosDevolucoesMenu;

implementation

uses uRelatorioDevolucoes_MODEL, uRelatoriosPerdasImpressaoFR;



{$R *.dfm}


procedure T_F_RelatoriosDevolucoesMenu.spButton_CancelarClick(Sender: TObject);
begin
  Self.Close;
end;






procedure T_F_RelatoriosDevolucoesMenu.rb_DetalhadoMercadoriaClick(
  Sender: TObject);
begin
  spButton_DetalhadoMercadoria.Click;
end;


procedure T_F_RelatoriosDevolucoesMenu.rb_SinteticoMercadoriaClick(
  Sender: TObject);
begin
  spButton_SinteticoMercadoria.Click;
end;




procedure T_F_RelatoriosDevolucoesMenu.spButton_DetalhadoMercadoriaClick(
  Sender: TObject);
begin
  rb_DetalhadoMercadoria.Checked := True ;
  venETipo := tpDetalhadoMercadoria ;
end;

procedure T_F_RelatoriosDevolucoesMenu.spButton_SinteticoMercadoriaClick(Sender: TObject);
begin
  rb_SinteticoMercadoria.Checked := True ;
  venETipo := tpSinteticoMercadoria ;
end;





procedure T_F_RelatoriosDevolucoesMenu.spButton_GerarClick(Sender: TObject);
begin
  case venETipo of
    tpDetalhadoMercadoria:
    begin
      _F_RelatorioDevolucoes_MODEL.RDevolucoesDetalhadoData (DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
      _F_RelatorioPerdasFR.FRX_DevolucoesDetalhadoMercadoria.PrepareReport(True);
      _F_RelatorioPerdasFR.FRX_DevolucoesDetalhadoMercadoria.ShowReport;
    end;
    tpSinteticoMercadoria:
    begin
      _F_RelatorioDevolucoes_MODEL.RDevolucoesSintetico(DateToStr(dateTime_Inicial.Date), DateToStr(dateTime_Final.Date));
      _F_RelatorioPerdasFR.FRX_DevolucoesSintetico.PrepareReport(True);
      _F_RelatorioPerdasFR.FRX_DevolucoesSintetico.ShowReport;
    end;
  end; // Case
end;






end.
