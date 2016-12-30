unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Menu_Employee: TMenuItem;
    Menu_Project: TMenuItem;
    Menu_dept: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Bt_tree: TButton;
    procedure Menu_EmployeeClick(Sender: TObject);
    procedure Menu_ProjectClick(Sender: TObject);
    procedure Bt_treeClick(Sender: TObject);
    procedure Menu_deptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UEmployee, UDept, UProject, UTree;

procedure TForm1.Bt_treeClick(Sender: TObject);
begin
TreeForm := TTreeForm.Create(Application);  //炼流档 汽 积己
TreeForm.show;
end;

procedure TForm1.Menu_EmployeeClick(Sender: TObject);
begin
  EmployeeForm := TEmployeeForm.Create(Application);    //荤盔包府 汽 积己
  EmployeeForm.Show;
end;

procedure TForm1.Menu_ProjectClick(Sender: TObject);
begin
  Projectform := TProjectForm.Create(Application);  // 橇肺璃飘 汽 包府
  ProjectForm.Show;
end;

procedure TForm1.Menu_deptClick(Sender: TObject);
begin
 DeptForm := TDeptForm.Create(Application);    //何辑 包府 汽 积己
 DeptForm.Show;
end;

end.
