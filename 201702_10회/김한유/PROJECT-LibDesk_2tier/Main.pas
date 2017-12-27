unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.ExtCtrls, AdvTimePickerDropDown, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TMainForm = class(TForm)
    MainPanel: TPanel;
    SidePanel: TPanel;
    TopToolbar: TPanel;
    MyID: TLabel;
    Label4: TLabel;
    PanelLibrary: TPanel;
    Label5: TLabel;
    Image2: TImage;
    PanelMember: TPanel;
    Label6: TLabel;
    Image5: TImage;
    PanelLogin: TPanel;
    PanelClose: TPanel;
    Label8: TLabel;
    Image3: TImage;
    Label9: TLabel;
    PanelID: TPanel;
    Label1: TLabel;
    Panel18: TPanel;
    Label11: TLabel;
    PanelMyPage: TPanel;
    Label3: TLabel;
    Image4: TImage;
    Image6: TImage;
    Image7: TImage;
    Image1: TImage;
    Label2: TLabel;
    BinPnl: TPanel;
    Shape1: TShape;
    Label7: TLabel;
    TopLoginPnl: TPanel;
    Label10: TLabel;
    PanelMessage: TPanel;
    Image8: TImage;
    Label12: TLabel;
    procedure btnInsertClick(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnMemberClick(Sender: TObject);
    procedure CloseClick(Sender: TObject);
    procedure MyPageClick(Sender: TObject);
    procedure LogoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyMSGClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DataAccessModule, InsertMember, FindLib, Login, MemManage, Mypage, MyMessenger;

procedure TMainForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.btnFindClick(Sender: TObject);
begin
  if not Assigned(FindForm) then
    FindForm := TFindForm.Create(Self);
  FindForm.Parent := MainPanel;
  FindForm.BorderStyle := bsNone;
  FindForm.Align := alClient;
  FindForm.Show;
end;

procedure TMainForm.btnInsertClick(Sender: TObject);
begin
  if not Assigned(LoginForm) then
    LoginForm := TLoginForm.Create(Self);
  LoginForm.Parent := MainPanel;
  LoginForm.BorderStyle := bsNone;
  LoginForm.Align := alClient;
  LoginForm.Show;
end;

procedure TMainForm.btnMemberClick(Sender: TObject);
begin
  if not Assigned(MemForm) then
    MemForm := TMemForm.Create(Self);
  MemForm.Parent := MainPanel;
  MemForm.BorderStyle := bsNone;
  MemForm.Align := alClient;
  MemForm.Show;
end;

procedure TMainForm.MyPageClick(Sender: TObject);
var
  RMyId: string;
begin
  RMyId := MainForm.MyID.Caption;

  if RMyId = '' then
  begin
    ShowMessage('먼저 로그인 해주세요');
    if not Assigned(LoginForm) then
      LoginForm := TLoginForm.Create(Self);
    LoginForm.Parent := MainPanel;
    LoginForm.BorderStyle := bsNone;
    LoginForm.Align := alClient;
    LoginForm.Show;
  end
  else
  begin
    if not Assigned(MyForm) then
      MyForm := TMyForm.Create(Self);
    MyForm.Parent := MainPanel;
    MyForm.BorderStyle := bsNone;
    MyForm.Align := alClient;
    MyForm.Show;

  end;

end;

procedure TMainForm.CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  PanelID.Visible := false;
end;

procedure TMainForm.MyMSGClick(Sender: TObject);
begin
  if not Assigned(MsgForm) then
    MsgForm := TMsgForm.Create(Self);
  MsgForm.Parent := MainPanel;
  MsgForm.BorderStyle := bsNone;
  MsgForm.Align := alClient;
  MsgForm.Show;
end;

procedure TMainForm.LogoutClick(Sender: TObject);
begin
  //
end;

end.
