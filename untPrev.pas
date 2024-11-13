unit untPrev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtrls, SHDocVw, ActiveX, Clipbrd;

type
  TfrmResult = class(TForm)
    Panel1: TPanel;
    btnCode: TButton;
    btnText: TButton;
    btnExit: TButton;
    Panel2: TPanel;
    Memo1: TMemo;
    WebBrowser: TWebBrowser;
    Button1: TButton;
    procedure btnHtmlClick(Sender: TObject);
    procedure btnBbcClick(Sender: TObject);
    procedure btnTextClick(Sender: TObject);
    procedure btnCodeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  procedure WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResult: TfrmResult;

implementation


uses untMain;
{$R *.dfm}

{ TForm2 }

procedure TfrmResult.btnBbcClick(Sender: TObject);
begin
  Memo1.Visible:= false;
  WB_LoadHTML(WebBrowser,Memo1.Text);
  WebBrowser.Visible:= true;
end;

procedure TfrmResult.btnCodeClick(Sender: TObject);
begin
    Memo1.CopyToClipboard;
end;

procedure TfrmResult.btnExitClick(Sender: TObject);
begin
  {frmMain.memDep1.Lines.Clear;
  frmMain.memDep2.Lines.Clear;
  frmMain.memDep3.Lines.Clear;  }

  frmMain.txtDep1.Text := '';
  frmMain.txtDep2.Text := '';

  frmMain.cmbDep1.ItemIndex := 0;
  frmMain.cmbDep2.ItemIndex := 1;

	frmMain.cmbBLang.ItemIndex := 0;
	frmMain.cmbBForm.ItemIndex := 0;
	frmMain.cmbBQual.ItemIndex := 1;
	frmMain.cmbBSize.ItemIndex := 0;

	frmMain.cmbSLang.ItemIndex := 0;
	frmMain.cmbSLic.ItemIndex := 0;
	frmMain.cmbSOs.ItemIndex := 0;
	frmMain.cmbSCrack.ItemIndex := 0;
	frmMain.cmbSSize.ItemIndex := 0;

	frmMain.cmbScLang.ItemIndex := 0;
	frmMain.cmbScLic.ItemIndex := 0;
	frmMain.cmbScCrack.ItemIndex := 0;
	frmMain.cmbScSize.ItemIndex := 0;

	frmMain.cmbImForm.ItemIndex := 0;
	frmMain.cmbImSize.ItemIndex := 0;

	frmMain.txtBName.Text := '';
	frmMain.txtBAutor.Text := '';
	frmMain.txtBEdit.Text := '';
	frmMain.txtBSer.Text := '';
	frmMain.txtBYear.Text := '';
	frmMain.txtBIsbn.Text := '';
	frmMain.txtBPage.Text := '';
	frmMain.txtBForm.Text := '';
	frmMain.txtBSize.Text := '';

	frmMain.txtSName.Text := '';
	frmMain.txtSAutor.Text := '';
	frmMain.txtSOs.Text := '';
	frmMain.txtSVer.Text := '';
	frmMain.txtSYear.Text := '';
	frmMain.txtSSize.Text := '';

	frmMain.txtScName.Text := '';
	frmMain.txtScAutor.Text := '';
	frmMain.txtScVer.Text := '';
	frmMain.txtScYear.Text := '';
	frmMain.txtScSize.Text := '';

	frmMain.txtImName.Text := '';
	frmMain.txtImCount.Text := '';
	frmMain.txtImSol.Text := '';
	frmMain.txtImForm.Text := '';
	frmMain.txtImSize.Text := '';

  frmMain.memB.Lines.Clear;
  frmMain.memS.Lines.Clear;
  frmMain.memSc.Lines.Clear;
  frmMain.memIm.Lines.Clear;

  Memo1.Lines.Clear;
  Close;
end;

procedure TfrmResult.btnHtmlClick(Sender: TObject);
begin
  Memo1.Visible:= true;
  WB_LoadHTML(WebBrowser,Memo1.Text);
  WebBrowser.Visible:= true;
end;

procedure TfrmResult.btnTextClick(Sender: TObject);
begin
  WebBrowser.ExecWB(OLECMDID_SELECTALL, OLECMDEXECOPT_PROMPTUSER);
  WebBrowser.ExecWB(OLECMDID_COPY, OLECMDEXECOPT_PROMPTUSER);
end;

procedure TfrmResult.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Close;
end;

procedure TfrmResult.FormShow(Sender: TObject);
begin
  WB_LoadHTML(WebBrowser,Memo1.Text);
end;

procedure TfrmResult.WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
  sl: TStringList;
  ms: TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

  if Assigned(WebBrowser.Document) then
  begin
    sl := TStringList.Create;
    try
      ms := TMemoryStream.Create;
      try
        sl.Text := HTMLCode;
        sl.SaveToStream(ms);
        ms.Seek(0, 0);
        (WebBrowser.Document as
          IPersistStreamInit).Load(TStreamAdapter.Create(ms));
      finally
        ms.Free;
      end;
    finally
      sl.Free;
    end;
  end;
end;
initialization 
  OleInitialize(nil); 

finalization 
  OleUninitialize;
end.
