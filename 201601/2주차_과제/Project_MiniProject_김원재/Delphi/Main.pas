unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TMainForm = class(TForm)
    ToolBar1: TToolBar;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses Dept, Member, Project;


procedure TMainForm.Button1Click(Sender: TObject);
begin
  if not Assigned(ProjectForm) then

  ProjectForm := TProjectForm.Create(self);
  ProjectForm.Parent := panel1;
  ProjectForm.BorderStyle := bsNone;
  ProjectForm.Align := alClient;
  ProjectForm.Show;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  if not Assigned(DeptForm) then

  DeptForm := TDeptForm.Create(self);
  DeptForm.Parent := panel1;
  DeptForm.BorderStyle := bsNone;
  DeptForm.Align := alClient;
  DeptForm.Show;
end;
procedure TMainForm.Button3Click(Sender: TObject);
begin
  if not Assigned(MemberForm) then

  MemberForm := TMemberForm.Create(self);
  MemberForm.Parent := panel1;
  MemberForm.BorderStyle := bsNone;
  MemberForm.Align := alClient;
  MemberForm.Show;
end;

end.
