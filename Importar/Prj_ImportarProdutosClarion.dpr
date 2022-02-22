program Prj_ImportarProdutosClarion;

uses
  Forms,
  uImportarXmlProdClarion in 'uImportarXmlProdClarion.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
