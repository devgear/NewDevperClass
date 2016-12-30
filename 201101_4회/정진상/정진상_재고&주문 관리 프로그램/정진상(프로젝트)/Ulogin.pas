unit Ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  Tloginform = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TLoginthread = class(tthread)
  procedure execute; override;
  end;


var
  loginform: Tloginform;
  start:boolean=false;
  loginthread:tloginthread;

procedure logincheck;


implementation
procedure logincheck;
begin
  loginthread := tloginthread.create(true);
  loginthread.Priority := tplower;
  loginthread.Resume;
end;


{$R *.dfm}

{ TLoginthread }

procedure TLoginthread.execute;
begin
  inherited;
  loginform := tloginform.Create(nil);
  loginform.showmodal;
  loginform.Free;

end;

procedure Tloginform.Button1Click(Sender: TObject);
begin
  if (edit1.Text ='bookstore') and (edit2.Text = 'book') then
     start := true
  else
  begin
    showmessage('패스워드가 틀립니다');
    start := false;
    edit2.Text := '';
  end;
  close;

end;

procedure Tloginform.Button2Click(Sender: TObject);
begin
  start:= false;
  edit1.Text := '';
  edit2.Text := '';
end;

procedure Tloginform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
