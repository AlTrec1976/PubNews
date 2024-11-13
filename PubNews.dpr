program PubNews;

uses
  Forms,
  untMain in 'untMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'PubNews';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
