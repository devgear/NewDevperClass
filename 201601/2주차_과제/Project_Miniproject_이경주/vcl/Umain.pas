unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    btn_pro: TButton;
    btn_emp: TButton;
    btn_dept: TButton;
    Image1: TImage;
    procedure btn_proClick(Sender: TObject);
    procedure btn_empClick(Sender: TObject);
    procedure btn_deptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses Udept, Uemp, Uproject, ClientModuleUnit1, Usplash;

procedure TMainForm.btn_deptClick(Sender: TObject);
begin
dept:=tdept.Create(application);
dept.Show;
end;

procedure TMainForm.btn_empClick(Sender: TObject);
begin
emp:=temp.Create(application);
emp.Show;
end;

procedure TMainForm.btn_proClick(Sender: TObject);
begin
  project := Tproject.create(application);
  project.Show;
end;

end.
