unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ToolWin, StdCtrls, ExtCtrls, Buttons, XPMan,
  OleCtrls, SHDocVw, Grids, ActiveX, ValEdit, ButtonGroup;

type
  TfrmMain = class(TForm)
    pnlBottom: TPanel;
    pnlMenu: TPanel;
    btnSoft: TBitBtn;
    btnBook: TBitBtn;
    btnScript: TBitBtn;
    pnlBook: TPanel;
    lblBDesc: TLabel;
    lblBSize: TLabel;
    lblBQual: TLabel;
    lblBForm: TLabel;
    lblBPage: TLabel;
    lblBLang: TLabel;
    lblBIsbn: TLabel;
    lblBYear: TLabel;
    lblBSer: TLabel;
    lblBEdit: TLabel;
    lblBAutor: TLabel;
    lblBName: TLabel;
    memB: TMemo;
    txtBSize: TEdit;
    cmbBQual: TComboBox;
    cmbBForm: TComboBox;
    txtBForm: TEdit;
    txtBPage: TEdit;
    cmbBLang: TComboBox;
    txtBIsbn: TEdit;
    txtBYear: TEdit;
    txtBSer: TEdit;
    txtBAutor: TEdit;
    txtBName: TEdit;
    cmbBSize: TComboBox;
    pnlButtons: TPanel;
    pnlLink: TPanel;
    lblDep1: TLabel;
    cmbDep1: TComboBox;
    txtDep1: TEdit;
    txtDep2: TEdit;
    cmbDep2: TComboBox;
    lblDep2: TLabel;
    btnExit: TButton;
    pnlSoft: TPanel;
    lblSName: TLabel;
    txtSName: TEdit;
    txtSVer: TEdit;
    txtSYear: TEdit;
    txtSAutor: TEdit;
    cmbSLang: TComboBox;
    cmbSOs: TComboBox;
    txtSOs: TEdit;
    cmbSLic: TComboBox;
    txtSSize: TEdit;
    cmbSSize: TComboBox;
    memS: TMemo;
    lblSDesc: TLabel;
    lblSSize: TLabel;
    lblSLic: TLabel;
    lblSOs: TLabel;
    lblSCrack: TLabel;
    lblSLang: TLabel;
    lblSAutor: TLabel;
    lblSYear: TLabel;
    lblSVer: TLabel;
    cmbSCrack: TComboBox;
    btnImg: TBitBtn;
    pnlScript: TPanel;
    lblScName: TLabel;
    lblScDesc: TLabel;
    lblScSize: TLabel;
    lblScLic: TLabel;
    lblScCrack: TLabel;
    lblScLang: TLabel;
    lblScAutor: TLabel;
    lblScYear: TLabel;
    lblScVer: TLabel;
    txtScName: TEdit;
    txtScVer: TEdit;
    txtScYear: TEdit;
    txtScAutor: TEdit;
    cmbScLang: TComboBox;
    cmbScLic: TComboBox;
    txtScSize: TEdit;
    cmbScSize: TComboBox;
    memSc: TMemo;
    cmbScCrack: TComboBox;
    pnlImg: TPanel;
    lblImName: TLabel;
    lblImDesc: TLabel;
    lblImSize: TLabel;
    lblImForm: TLabel;
    lblImCount: TLabel;
    lblImSol: TLabel;
    txtImName: TEdit;
    txtImSol: TEdit;
    txtImCount: TEdit;
    cmbImForm: TComboBox;
    txtImForm: TEdit;
    txtImSize: TEdit;
    cmbImSize: TComboBox;
    memIm: TMemo;
    XPManifest1: TXPManifest;
    txtCapt: TEdit;
    Label1: TLabel;
    btnShort: TButton;
    btnFool: TButton;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    btnCopy: TBitBtn;
    pnlTop: TPanel;
    Label2: TLabel;
    txtPoster: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    WebBrowser1: TWebBrowser;
    WebBrowser2: TWebBrowser;
    btnFors: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    cmbAlign: TComboBox;
    btnClear: TButton;
    memDep1: TMemo;
    memDep2: TMemo;
    chkAdv: TCheckBox;
    lblBVal: TLabel;
    txtBVal: TEdit;
    lblBEd: TLabel;
    txtBEd: TEdit;
    cmbBEdit: TComboBox;
    btnAdd: TBitBtn;
    btnDel: TBitBtn;
    rdbHTML: TRadioButton;
    rdbBBC: TRadioButton;
    procedure txtBNameMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtBNameMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure txtBNameEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure txtBNameDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure txtBNameDragDrop(Sender, Source: TObject; X, Y: Integer);

    procedure btnImgClick(Sender: TObject);
    procedure btnScriptClick(Sender: TObject);
    procedure btnBookClick(Sender: TObject);
    procedure btnSoftClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure txtPosterExit(Sender: TObject);
    procedure WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
    procedure btnShortClick(Sender: TObject);
    procedure btnFoolClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure chkAdvClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbBEditKeyPress(Sender: TObject; var Key: Char);
    procedure btnDelClick(Sender: TObject);
    procedure TagHTML();
    procedure TagBBC();
    function ChangLet(Sender: TObject; Find: string; Replace: string): string;
  private
    { Private declarations }
  public
    n_start, n_end: integer;
    str1: string;
    b, i, df, lf, rg, cn, ln, ln0, img, img0, br: string;
    b1, i1, df1, lf1, rg1, cn1, ln1, img1: string;
    adv, path: string;
    { Public declarations }
  end;
const
  Capt: string= 'Публикатор новостей - ';

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnAddClick(Sender: TObject);
var
  I, n: integer;
begin
  n:= -1;

  for I := 0 to cmbBEdit.Items.Count - 1 do
    if cmbBEdit.Items.Strings[I] = cmbBEdit.Text then
      n:= I;

  if n = -1 then
    cmbBEdit.Items.Add(cmbBEdit.Text)
  else
    cmbBEdit.ItemIndex:= n;
end;

procedure TfrmMain.btnBookClick(Sender: TObject);
begin
  frmMain.Caption:= Capt + 'Книги';

  pnlSoft.Visible := False;
  pnlBook.Visible := True;
  pnlScript.Visible := False;
  pnlImg.Visible := False;
end;

procedure TfrmMain.btnCopyClick(Sender: TObject);
begin
  txtCapt.SelectAll;
  txtCapt.CopyToClipboard;
end;

procedure TfrmMain.btnDelClick(Sender: TObject);
var
  I, n: integer;
begin
  n:= -1;

  for I := 0 to cmbBEdit.Items.Count - 1 do
    if cmbBEdit.Items.Strings[I] = cmbBEdit.Text then
      n:= I;

  if n <> -1 then
    cmbBEdit.Items.Delete(cmbBEdit.ItemIndex)
  else
    cmbBEdit.Text:= '';
end;

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  frmMain.Close;
end;

procedure TfrmMain.btnFoolClick(Sender: TObject);
begin
  WebBrowser2.ExecWB(OLECMDID_SELECTALL, OLECMDEXECOPT_PROMPTUSER);
  WebBrowser2.ExecWB(OLECMDID_COPY, OLECMDEXECOPT_PROMPTUSER);
end;

procedure TfrmMain.btnImgClick(Sender: TObject);
begin
  frmMain.Caption:= Capt + 'Графика';

  pnlSoft.Visible := False;
  pnlBook.Visible := False;
  pnlScript.Visible := False;
  pnlImg.Visible := True;
end;

procedure TfrmMain.btnScriptClick(Sender: TObject);
begin
  frmMain.Caption:= Capt + 'Скрипты';

  pnlSoft.Visible := False;
  pnlBook.Visible := False;
  pnlScript.Visible := True;
  pnlImg.Visible := False;
end;

procedure TfrmMain.btnShortClick(Sender: TObject);
begin
  WebBrowser1.ExecWB(OLECMDID_SELECTALL, OLECMDEXECOPT_PROMPTUSER);
  WebBrowser1.ExecWB(OLECMDID_COPY, OLECMDEXECOPT_PROMPTUSER);
end;

procedure TfrmMain.btnSoftClick(Sender: TObject);
begin
  frmMain.Caption:= Capt + 'Программы';

  pnlSoft.Visible := True;
  pnlBook.Visible := False;
  pnlScript.Visible := False;
  pnlImg.Visible := False;
end;

function TfrmMain.ChangLet(Sender: TObject; Find: string; Replace: string): string;
var
  lt: string;
  I: integer;
begin
    lt:= '';
    for I := 0 to Length(TEdit(Sender).Text) do
    begin
      if Copy((TEdit(Sender).Text),I+1,1)=Find then
        lt:= lt + Replace
      else
        lt:= lt + Copy((TEdit(Sender).Text),I+1,1);
    end;
    Result:= lt;
end;

procedure TfrmMain.chkAdvClick(Sender: TObject);
begin
  if pnlSoft.Visible then
    if chkAdv.Checked then
      adv:= ' + Дополнения'
    else
      adv:= '';

  if pnlBook.Visible then
    if chkAdv.Checked then
      adv:= ' + Файлы к книге'
    else
      adv:= '';

  if pnlScript.Visible then
    if chkAdv.Checked then
      adv:= ' + Бонус'
    else
      adv:= '';

  if pnlImg.Visible then
    if chkAdv.Checked then
      adv:= ' + Сюрприз'
    else
      adv:= '';
end;

procedure TfrmMain.cmbBEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(vk_Delete) then
    frmMain.btnDel.Click;
  if (Key = Char(vk_Return)) then
    frmMain.btnAdd.Click;
end;

procedure TfrmMain.btnClearClick(Sender: TObject);
begin
  frmMain.memDep1.Lines.Clear;
  frmMain.memDep2.Lines.Clear;
  chkAdv.Checked:= false;

  frmMain.txtPoster.Text:= '';
  frmMain.txtCapt.Text:= '';

  frmMain.txtDep1.Text := '';
  frmMain.txtDep2.Text := '';

  frmMain.cmbDep1.ItemIndex := 0;
  frmMain.cmbDep2.ItemIndex := 1;

	frmMain.cmbBLang.ItemIndex := 0;
	frmMain.cmbBEdit.ItemIndex := -1;
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
	frmMain.txtBVal.Text := '';
	frmMain.txtBAutor.Text := '';
	frmMain.txtBEd.Text := '';
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

  frmMain.Memo1.Lines.Clear;
  frmMain.Memo2.Lines.Clear;

  frmMain.WB_LoadHTML(frmMain.WebBrowser1,Memo2.Text);
  frmMain.WB_LoadHTML(frmMain.WebBrowser2,Memo1.Text);
end;

procedure TfrmMain.txtBNameDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  TEdit(FindComponent(TControl(Sender).Name)).Text:=
    TEdit(FindComponent(TControl(Source).Name)).SelText;
end;

procedure TfrmMain.txtBNameDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept:= Source is TEdit;
end;

procedure TfrmMain.txtBNameEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  if Assigned(Target) then
    TEdit(Sender).Text:= str1;
end;

procedure TfrmMain.txtBNameMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and (ssAlt in Shift) then
  begin
    (Sender as TControl).BeginDrag(false);
    TEdit(FindComponent(TControl(Sender).Name)).SelStart:= n_start;
    TEdit(FindComponent(TControl(Sender).Name)).SelLength:= n_end;
    str1:= TEdit(FindComponent(TControl(Sender).Name)).Text;
    Delete(str1,(n_start+1),n_end);
  end;
end;

procedure TfrmMain.txtBNameMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and not (ssAlt in Shift) then
  begin
    n_start:= TEdit(FindComponent(TControl(Sender).Name)).SelStart;
    n_end:= TEdit(FindComponent(TControl(Sender).Name)).SelLength;
  end;
end;

procedure TfrmMain.txtPosterExit(Sender: TObject);
var
Ind : Integer;
str, str1, str2, str3, str4, str5 : string;
begin
  Memo1.Clear;
  Memo2.Clear;
  adv:= '';

  if rdbBBC.Checked then
    TagBBC;
  if rdbHTML.Checked then
    TagHTML;

  case cmbAlign.ItemIndex of
    0:
    begin
      str:= df;
      str1:= df1;
    end;
    1:
    begin
      str:= lf;
      str1:= lf1;
    end;
    2:
    begin
      str:= cn;
      str1:= cn1;
    end;
    3:
    begin
      str:= rg;
      str1:= rg1;
    end;
  end;

  Memo1.Lines.Add(str + img + txtPoster.Text + img1 + str1);
  Memo1.Lines.Add(br);
  Memo2.Lines.Add(str + img + txtPoster.Text + img1 + str1);

  {Программы}
  if pnlSoft.Visible then
  begin
    str:= '';

  if rdbBBC.Checked then
    Memo1.Lines.Add('<pre>' + br);

    if txtSName.Text <> '' then
      Memo1.Lines.Add(b + lblSName.Caption + ': ' + b1 +
        i + txtSName.Text + i1 + br);

    if txtSVer.Text <> '' then
    begin
      Memo1.Lines.Add(b + lblSVer.Caption + ': ' + b1 +
        i + txtSVer.Text + i1 + br);

      str:= 'V.' + txtSVer.Text;
    end;
    if txtSAutor.Text <> '' then
      Memo1.Lines.Add(b + lblSAutor.Caption + ': ' + b1 +
        i + txtSAutor.Text + i1 + br);

    if txtSYear.Text <> '' then
      Memo1.Lines.Add(b + lblSYear.Caption + ': ' + b1 +
        i + txtSYear.Text + i1 + br);

    if cmbSLang.Text <> '' then
      Memo1.Lines.Add(b + lblSLang.Caption + ': ' + b1 +
        i + cmbSLang.Text + i1 + br);


    if txtSOs.Text <> '' then
      Memo1.Lines.Add(b + lblSOs.Caption + ': ' + b1 +
        i + txtSOs.Text + i1)
    else
      Memo1.Lines.Add(b + lblSOs.Caption + ': ' + b1 +
        i + cmbSOs.Text + i1 + br);


    Memo1.Lines.Add(b + lblSLic.Caption + ': ' + b1 +
      i + cmbSLic.Text + i1 + br);

    Memo1.Lines.Add(b + lblSCrack.Caption + ': ' + b1 +
      i + cmbSCrack.Text + i1 + br);

    txtSSize.Text:= ChangLet(txtSSize, '.', ',');

    Memo1.Lines.Add(b + lblSSize.Caption + ': ' + b1 +
      i + txtSSize.Text + ' ' + cmbSSize.Text + i1 + br);

    if rdbBBC.Checked then
    begin
      Memo1.Lines.Add('</pre>');
      Memo2.Lines.Add(' ');
    end;
    if rdbHTML.Checked then
    begin
      Memo1.Lines.Add('<div>');
      Memo2.Lines.Add('<div>');
    end;

    for Ind := 0 to memS.Lines.Count -1 do
    begin
      Memo1.Lines.Add('&nbsp;&nbsp;&nbsp;' + memS.Lines.Strings[Ind] + br);
    end;
    Memo2.Lines.Add('&nbsp;&nbsp;&nbsp;' + memS.Lines.Strings[0] + '..' + br);
    if rdbHTML.Checked then
    begin
      Memo1.Lines.Add('</div>');
      Memo2.Lines.Add('</div>');
    end;

    if chkAdv.Checked then
      adv:= ' + Дополнения'
    else
      adv:= '';
    txtCapt.Text:= txtSAutor.Text + ' ' + txtSName.Text + ' ' + str + adv;
  end;

  {Книги}
  if pnlBook.Visible then
  begin
    str:= '';
    str1:= '';
    if rdbBBC.Checked then
      Memo1.Lines.Add('<pre>' + br);

    if txtBName.Text <> '' then
      Memo1.Lines.Add(b + lblBName.Caption + ': ' + b1 +
        i + txtBName.Text + i1 + br);

    if txtBVal.Text <> '' then
    begin
      Memo1.Lines.Add(b + lblBVal.Caption + ': ' + b1 +
        i + txtBVal.Text + i1 + br);

      str4:= ' ' + txtBVal.Text + '.';
    end;
    if txtBAutor.Text <> '' then
    begin
      Memo1.Lines.Add(b + lblBAutor.Caption + ': ' + b1 +
        i + txtBAutor.Text + i1 + br);

      str1:= txtBAutor.Text + '.';
    end;
    if cmbBEdit.Text <> '' then
      Memo1.Lines.Add(b + lblBEdit.Caption + ': ' + b1 +
        i + cmbBEdit.Text + i1 + br);

    if txtBEd.Text <> '' then
    begin
      Memo1.Lines.Add(b + lblBEd.Caption + ': ' + b1 +
        i + txtBEd.Text + i1 + br);
      str3:= ' ' + txtBEd.Text + '-е изд.';
    end;
    if txtBSer.Text <> '' then
    begin
      Memo1.Lines.Add(b + lblBSer.Caption + ': ' + b1 +
        i + txtBSer.Text + i1 + br);
      str2:= ': ' + txtBSer.Text + '.';
    end;
    if txtBYear.Text <> '' then
    begin
      Memo1.Lines.Add(b + lblBYear.Caption + ': ' + b1 +
        i + txtBYear.Text + i1 + br);
      str5:= ' (' + txtBYear.Text + ')';
    end;
    if txtBIsbn.Text <> '' then
      Memo1.Lines.Add(b + lblBIsbn.Caption + ': ' + b1 +
        i + txtBIsbn.Text + i1 + br);

    Memo1.Lines.Add(b + lblBLang.Caption + ': ' + b1 +
      i + cmbBLang.Text + i1 + br);

    if txtBPage.Text <> '' then
      Memo1.Lines.Add(b + lblBPage.Caption + ': ' + b1 +
        i + txtBPage.Text + i1 + br);

    if txtBForm.Text <> '' then
    begin
      Memo1.Lines.Add(b + lblBForm.Caption + ': ' + b1 +
        i + txtBForm.Text + i1 + br);
    end;
    if txtBForm.Text = '' then
    begin
      Memo1.Lines.Add(b + lblBForm.Caption + ': ' + b1 +
        i + cmbBForm.Text + i1 + br);
    end;
    Memo1.Lines.Add(b + lblBQual.Caption + ': ' + b1 +
      i + cmbBQual.Text + i1 + br);

    txtBSize.Text:= ChangLet(txtBSize, '.', ',');

    if txtBSize.Text <> '' then
      Memo1.Lines.Add(b + lblBSize.Caption + ': ' + b1 +
        i + txtBSize.Text + ' ' + cmbBSize.Text + i1 + br);


    if rdbBBC.Checked then
    begin
      Memo1.Lines.Add('</pre>');
      Memo2.Lines.Add(' ');
    end;
    if rdbHTML.Checked then
    begin
      Memo1.Lines.Add('<div>');
      Memo2.Lines.Add('<div>');
    end;

    for Ind := 0 to memB.Lines.Count -1 do
      Memo1.Lines.Add('&nbsp;&nbsp;&nbsp;' + memB.Lines.Strings[Ind] + br);
    Memo2.Lines.Add('&nbsp;&nbsp;&nbsp;' + memB.Lines.Strings[0] + '..' + br);

     if rdbHTML.Checked then
    begin
      Memo1.Lines.Add('</div>');
      Memo2.Lines.Add('</div>');
    end;

    if chkAdv.Checked then
      adv:= ' + Файлы к книге'
    else
      adv:= '';
    txtCapt.Text:= str1 + ' ' + txtBName.Text + str2 + str3 + str4 + str5 + adv;


  end;

  {Скрипты}
  if pnlScript.Visible then
  begin
    str:= '';
    if rdbBBC.Checked then
      Memo1.Lines.Add('<pre>' + br);

    if txtScName.Text <> '' then
      Memo1.Lines.Add(b + lblScName.Caption + ': ' + b1 +
        i + txtScName.Text + i1 + br);

    if txtScVer.Text <> '' then
    begin
      Memo1.Lines.Add(b + lblScVer.Caption + ': ' + b1 +
        i + txtScVer.Text + i1 + br);

      str:= 'V.' + txtScVer.Text;
    end;
    if txtScAutor.Text <> '' then
      Memo1.Lines.Add(b + lblScAutor.Caption + ': ' + b1 +
        i + txtScAutor.Text + i1 + br);

    if txtScYear.Text <> '' then
      Memo1.Lines.Add(b + lblScYear.Caption + ': ' + b1 +
        i + txtScYear.Text + i1 + br);

    Memo1.Lines.Add(b + lblScLang.Caption + ': ' + b1 +
      i + cmbScLang.Text + i1 + br);

    Memo1.Lines.Add(b + lblScLic.Caption + ': ' + b1 +
      i + cmbScLic.Text + i1 + br);

    Memo1.Lines.Add(b + lblScCrack.Caption + ': ' + b1 +
      i + cmbScCrack.Text + i1 + br);


    txtScSize.Text:= ChangLet(txtScSize, '.', ',');

    if txtScSize.Text <> '' then
      Memo1.Lines.Add(b + lblScSize.Caption + ': ' + b1 +
        i + txtScSize.Text + ' ' + cmbScSize.Text + i1 + br);

    if rdbBBC.Checked then
    begin
      Memo1.Lines.Add('</pre>');
      Memo2.Lines.Add(' ');
    end;
    if rdbHTML.Checked then
    begin
      Memo1.Lines.Add('<div>');
      Memo2.Lines.Add('<div>');
    end;

    for Ind := 0 to memSc.Lines.Count -1 do
      Memo1.Lines.Add('&nbsp;&nbsp;&nbsp;' + memSc.Lines.Strings[Ind] + br);

    Memo2.Lines.Add('&nbsp;&nbsp;&nbsp;' + memSc.Lines.Strings[0] + '..' + br);
    if rdbHTML.Checked then
    begin
      Memo1.Lines.Add('</div>');
      Memo2.Lines.Add('</div>');
    end;

    if chkAdv.Checked then
      adv:= ' + Бонус'
    else
      adv:= '';
    txtCapt.Text:= txtScAutor.Text + ' ' + txtScName.Text + ' ' + str + adv;
  end;

  {Графика}
  if pnlImg.Visible then
  begin
    str:= '';
    if rdbBBC.Checked then
      Memo1.Lines.Add('<pre>' + br);

    if txtImName.Text <> '' then
      Memo1.Lines.Add(b + lblImName.Caption + ': ' + b1 +
        i + txtImName.Text + i1 + br);

    if txtImSol.Text <> '' then
      Memo1.Lines.Add(b + lblImSol.Caption + ': ' + b1 +
        i + txtImSol.Text + i1 + br);

    if txtImCount.Text <> '' then
      Memo1.Lines.Add(b + lblImCount.Caption + ': ' + b1 +
        i + txtImCount.Text + i1 + br);


    if txtImForm.Text <> '' then
      Memo1.Lines.Add(b + lblImForm.Caption + ': ' + b1 +
        i + txtImForm.Text + i1)
    else
      Memo1.Lines.Add(b + lblImForm.Caption + ': ' + b1 +
        i + cmbImForm.Text + i1 + br);


    txtImSize.Text:= ChangLet(txtImSize, '.', ',');

    if txtImSize.Text <> '' then
      Memo1.Lines.Add(b + lblImSize.Caption + ': ' + b1 +
        i + txtImSize.Text + ' ' + cmbImSize.Text + i1 + br);

    if rdbBBC.Checked then
    begin
      Memo1.Lines.Add('</pre>');
      Memo2.Lines.Add(' ');
    end;
    if rdbHTML.Checked then
    begin
      Memo1.Lines.Add('<div>');
      Memo2.Lines.Add('<div>');
    end;

    for Ind := 0 to memIm.Lines.Count -1 do
      Memo1.Lines.Add('&nbsp;&nbsp;&nbsp;' + memIm.Lines.Strings[Ind] + br);
    Memo2.Lines.Add('&nbsp;&nbsp;&nbsp;' + memIm.Lines.Strings[0] + '..' + br);
    if rdbHTML.Checked then
    begin
      Memo1.Lines.Add('</div>');
      Memo2.Lines.Add('</div>');
    end;

    if chkAdv.Checked then
      adv:= ' + Сюрприз'
    else
      adv:= '';
    txtCapt.Text:= txtImName.Text + ' (' + txtImName.Text + ' - '
      + txtImCount.Text + ' шт.)' + adv;
  end;

  Memo1.Lines.Add(br);
  if rdbBBC.Checked then
    Memo1.Lines.Add('<pre>');

  if (memDep1.Text<>'') then
  begin
    if txtDep1.Text = '' then
      Memo1.Lines.Add('  Скачать с ' + cmbDep1.Text + '[hide]' + br);
    if txtDep1.Text <> '' then
      Memo1.Lines.Add('  Скачать с ' + txtDep1.Text + '[hide]' + br);
    for Ind := 0 to memDep1.Lines.Count - 1 do
      Memo1.Lines.Add(ln + memDep1.Lines.Strings[Ind] +
        ln0 + memDep1.Lines.Strings[Ind]+ ln1 + br);
    Memo1.Lines.Add('[/hide]');
  end;

  if (memDep2.Text<>'') then
  begin
    if txtDep2.Text = '' then
      Memo1.Lines.Add('<p> Скачать с ' + cmbDep2.Text + '[hide]' + br);
    if txtDep2.Text <> '' then
      Memo1.Lines.Add('<p> Скачать с ' + txtDep2.Text + '[hide]' + br);
    for Ind := 0 to memDep2.Lines.Count - 1 do
      Memo1.Lines.Add(ln + memDep2.Lines.Strings[Ind] +
        ln0 + memDep2.Lines.Strings[Ind]+ ln1 + br);
    Memo1.Lines.Add('[/hide]');
  end;

  if rdbBBC.Checked then
    Memo1.Lines.Add('</pre>');

  WB_LoadHTML(WebBrowser1,Memo2.Text);
  WB_LoadHTML(WebBrowser2,Memo1.Text);
end;

procedure TfrmMain.WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
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

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cmbBEdit.Items.SaveToFile(path + 'editors.cfg');
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  path:= ExtractFilePath(Application.ExeName);
  try
    cmbBEdit.Items.LoadFromFile(path + 'editors.cfg');
  finally
  btnSoft.Click;
  btnClear.Click;
  end;

end;

procedure TfrmMain.TagBBC;
begin
  b:= '[b]';
  b1:= '[/b]';

  i:= '[i]';
  i1:= '[/i]';

  df:= '';
  df1:= '';

  lf:= '[left]';
  lf1:= '[/left]';

  cn:= '[center]';
  cn1:= '[/center]';

  rg:= '[right]';
  rg1:= '[/right]';

  ln:= '[url=';
  ln0:= ']';
  ln1:= '[/url]';

  img:= '[img]';
  img1:= '[/img]';

  br:= ' ';
end;

procedure TfrmMain.TagHTML;
begin
  b:= '<b>';
  b1:= '</b>';

  i:= '<i>';
  i1:= '</i>';

  df:= '<div>';
  df1:= '</div>';

  lf:= '<div style="text-align: left;">';
  lf1:= '</div>';

  rg:= '<div style="text-align: right;">';
  rg1:= '</div>';

  cn:= '<div style="text-align: center;">';
  cn1:= '</div>';

  ln:= '<a  href="';
  ln0:= '" target="_blank">';
  ln1:= '</a>';

  img:= '<img src="';
  img1:= '" border="0" alt="alt" />';

  br:= '<br>';
end;

initialization
  OleInitialize(nil);

finalization
  OleUninitialize;
end.
