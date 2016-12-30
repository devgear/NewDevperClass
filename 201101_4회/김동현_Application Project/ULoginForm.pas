unit ULoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TLoginForm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TLoginthread = class(tthread)
    procedure execute; override;
  end;

var
  LoginForm: TLoginForm;
  start: boolean=false;
  loginthread: tloginthread;

procedure logincheck;

implementation

procedure logincheck;
begin
  loginthread := tloginthread.create(true);
  loginthread.Priority := tplower;
  loginthread.Resume;
end;

procedure tloginthread.execute;
begin
 LoginForm := tLoginForm.Create(nil);
 LoginForm.showmodal;
 LoginForm.Free;
end;

{$R *.dfm}

procedure TLoginForm.Button1Click(Sender: TObject);
begin
  if edit2.text = '1234' then
     start := true
  else
  begin
    showmessage('패스워드가 일치하지 않습니다.');
    start := false;
  end;
  Close;
end;

procedure TLoginForm.Button2Click(Sender: TObject);
begin
  start:= false;
  close;
end;

procedure TLoginForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Button1Click(Sender);
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
