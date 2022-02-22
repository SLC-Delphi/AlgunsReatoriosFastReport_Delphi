program MenuCurvaABC1;

uses
  Forms,
  DM1 in '..\..\DM1.pas' {DM: TDataModule},
  uMenuCurvaABC_versao1 in 'uMenuCurvaABC_versao1.pas' {Form1},
  uRelatorioCurvaABC_VendasProd_porQuantidade_MODEL in 'uRelatorioCurvaABC_VendasProd_porQuantidade_MODEL.pas' {_F_RelatorioCurvaABC_MODEL},
  uRelatoriosCurvasABC_FR in 'uRelatoriosCurvasABC_FR.pas' {_F_CurvaABC_FR};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(T_F_RelatorioCurvaABC_MODEL, _F_RelatorioCurvaABC_MODEL);
  Application.CreateForm(T_F_CurvaABC_FR, _F_CurvaABC_FR);
  Application.Run;
end.
