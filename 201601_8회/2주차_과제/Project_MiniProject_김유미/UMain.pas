unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.CategoryButtons, Vcl.Ribbon,
  Vcl.StdActns, Vcl.ExtActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.RibbonLunaStyleActnCtrls,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.RibbonActnMenus;

type
  TMainForm = class(TForm)
    pMain: TPanel;
    ToolBar1: TToolBar;
    ProjectButton: TButton;
    MemberButton: TButton;
    DeptButton: TButton;
    bClose: TButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure ProjectButtonClick(Sender: TObject);
    procedure MemberButtonClick(Sender: TObject);
    procedure DeptButtonClick(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

Uses UDataModule, UDept, UMember, UProject;

procedure TMainForm.bCloseClick(Sender: TObject);
begin
  if  MessageDlg('정말 종료하시겠습니까?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  try
    Close;
  except
    on e: Exception do
       ShowMessage(e.Message);
  end;
end;

procedure TMainForm.DeptButtonClick(Sender: TObject);
begin
 if not Assigned(Dept) then
    Dept := TDept.Create(Self);
 Dept.Parent := pMain;
 Dept.BorderStyle := bsNone;
 Dept.Align := alClient;
 Dept.Show;
end;

procedure TMainForm.MemberButtonClick(Sender: TObject);
begin
 if not Assigned(Member) then
    Member := TMember.Create(Self);
 Member.Parent := pMain;
 Member.BorderStyle := bsNone;
 Member.Align := alClient;
 Member.Show;
end;

procedure TMainForm.ProjectButtonClick(Sender: TObject);
begin
  if not Assigned(frmProject) then
    frmProject := TfrmProject.Create(Self);
  frmProject.Parent := pMain;
  frmProject.BorderStyle := bsNone;
  frmProject.Align := alClient;
  frmProject.Show;
end;


procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := FormatDateTime('yyyy-mmmm-dd dddd hh:mm:ss ampm',now)
end;

end.
