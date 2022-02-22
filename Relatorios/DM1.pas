unit DM1;

interface

uses
  SysUtils, Classes, DB, IBDatabase;

type
  TDM = class(TDataModule)
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
