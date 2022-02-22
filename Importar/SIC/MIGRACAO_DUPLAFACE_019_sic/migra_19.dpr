program migra_19;

uses
  Forms,
  migra_f_Unit1 in 'migra_f_Unit1.pas' {migra},
  DM in 'DM.pas' {DM1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tmigra, migra);
  Application.CreateForm(TDM1, DM1);
  Application.Run;
end.
