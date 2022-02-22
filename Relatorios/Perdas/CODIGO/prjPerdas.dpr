program prjPerdas;

uses
  Forms,
  DM1 in '..\..\DM1.pas' {DM: TDataModule},
  uRelatorioPerdasMenu in 'uRelatorioPerdasMenu.pas' {_F_RelaotiosPerdaMenu},
  uRelatorioPerdas_MODEL in 'uRelatorioPerdas_MODEL.pas' {_F_RelatorioPerdas_MODEL},
  uRelatoriosPerdasImpressaoFR in 'uRelatoriosPerdasImpressaoFR.pas' {_F_RelatorioPerdasFR},
  uRelatorioDevolucoes_MODEL in 'uRelatorioDevolucoes_MODEL.pas' {_F_RelatorioDevolucoes_MODEL},
  uRelatoriosDevolucoesMenu in 'uRelatoriosDevolucoesMenu.pas' {_F_RelatoriosDevolucoesMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(T_F_RelaotiosPerdaMenu, _F_RelaotiosPerdaMenu);
  Application.CreateForm(T_F_RelatorioPerdas_MODEL, _F_RelatorioPerdas_MODEL);
  Application.CreateForm(T_F_RelatorioPerdasFR, _F_RelatorioPerdasFR);
  Application.CreateForm(T_F_RelatorioDevolucoes_MODEL, _F_RelatorioDevolucoes_MODEL);
  Application.CreateForm(T_F_RelatoriosDevolucoesMenu, _F_RelatoriosDevolucoesMenu);
  Application.Run;
end.
