unit UMini;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.CategoryButtons, Vcl.StdCtrls, Vcl.ActnMenus,
  Vcl.ButtonGroup, Vcl.StdActns;

type
  TmainForm = class(TForm)
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    StatusBar1: TStatusBar;
    MonthCalendar1: TMonthCalendar;
    CategoryPanel2: TCategoryPanel;
    Panel1: TPanel;
    ActionMainMenuBar1: TActionMainMenuBar;
    ButtonGroup1: TButtonGroup;
    FileExit1: TFileExit;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Action1Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainForm: TmainForm;

implementation

{$R *.dfm}

uses UProject, UDept, UMEMBER, UDM;

procedure TmainForm.Action1Execute(Sender: TObject);
begin
  if not Assigned(ProjectForm) then
    ProjectForm :=TProjectForm.Create(Self);
  ProjectForm.Parent := Panel1;
  ProjectForm.Align :=alClient;
  ProjectForm.Show;
end;

procedure TmainForm.Action2Execute(Sender: TObject);
begin
  if not Assigned(DeptForm) then
    DeptForm := TDeptForm.Create(Application);
  DeptForm.Parent := Panel1;
  DeptForm.Align := alClient;
  DeptForm.Show;
end;

procedure TmainForm.Action3Execute(Sender: TObject);
begin
  if not Assigned(MEMBERForm) then
    MEMBERForm := TMEMBERForm.Create(Application);
  MEMBERForm.Parent := Panel1;
  MEMBERForm.Align :=alClient;
  MEMBERForm.Show;
end;

procedure TmainForm.FormResize(Sender: TObject);
begin
    ButtonGroup1.ButtonHeight := (ButtonGroup1.Height div 3)-1;
    CategoryPanelGroup1.Width := mainForm.Width div 5;
end;

procedure TmainForm.FormShow(Sender: TObject);
var
 i,j : integer;
begin
  label5.caption :=label5.caption+ inttostr(dm.MEMBERTable.RecordCount-1)+'Έν';
  label2.Caption :=label2.Caption+ inttostr(dm.DEPTTable.RecordCount-1)+'°³';
  for I := 0 to dm.PROJECTTable.RecordCount do
  begin
    if dm.PROJECTTable.FieldByName('P_STATUS').AsInteger =30 then
      j := j+1;
  end;
  label4.Caption :=label4.Caption+ inttostr(i-2)+ '°³';
end;

procedure TmainForm.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text :=
  FormatDateTime('YYY-MMMM-DD DDDD HH:MM:SS ampm',now);
end;

end.
