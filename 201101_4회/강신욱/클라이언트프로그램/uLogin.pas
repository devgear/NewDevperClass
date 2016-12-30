unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, Menus, ImgList, Buttons, StdCtrls, DB;

type
  TfmLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    LinkLabel1: TLinkLabel;
    LinkLabel3: TLinkLabel;
    Edit_ID: TLabeledEdit;
    Edit_PassWord: TLabeledEdit;
    Button1: TButton;
    Image3: TImage;
    LinkLabel2: TLinkLabel;
    procedure CoolBar1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2Click(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

uses uMain, ServerMethodsUnit, uDmclient, ErrorMessage, Connected_Emp_Info,
  FormShape;

{$R *.dfm}

procedure TfmLogin.Button1Click(Sender: TObject);
var
  LoginDataSet : TDataSet;
begin

    serverMethod := TServerMethods1Client.create(DMClient.SQLConnection_Client.DBXConnection);
      try
        LoginDataSet := TDataSet(serverMethod.Get_Logined_info(StrToInt(Edit_ID.Text)));
        //ShowMessage(LoginDataSet.FieldByName('code').AsString);
        if LoginDataSet.FieldByName('code').AsString = '' then
        begin
          Application.MessageBox(ID_ERROR, pChar(ID_ERROR_C), MB_OK+MB_ICONWARNING);
          Edit_Id.Text := '';
          Edit_PassWord.Text := '';
          Edit_Id.SetFocus;
          Exit;
        end;

        if LoginDataSet.FieldByName('SOCIAL_CODE').AsString = Edit_PassWord.Text then
        begin
          DMClient.IdTCPClient1.Connect;
          LoginedCode := strToint(Edit_ID.Text);
          fmLogin.ModalResult := mrOk;
        end else
        begin
          Application.MessageBox(PASS_ERROR, pChar(Pass_ERROR_C), MB_OK+MB_ICONWARNING);
          Edit_passWord.Text := '';
          Edit_PassWord.SetFocus;
          Exit;
        end;
      finally
        serverMethod.Free;
      end;

end;

procedure TfmLogin.CoolBar1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TfmLogin.FormActivate(Sender: TObject);
begin
  DrawRounded(fmLogin);
  DrawRounded(Panel1);
  DrawRounded(Panel2);
end;

procedure TfmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  //DMClient.IdTCPClient1.Disconnect;
end;

procedure TfmLogin.FormCreate(Sender: TObject);
var
  i : Integer;
begin
(*  for I := 0 to Application.ComponentCount-1 do
    if Application.Components[i].Tag > 1000 then  //화면 레이아웃용 컴포넌트는 tag가 1000이상
      DrawRounded(TWinControl(Application.Components[i]));
*)

end;

procedure TfmLogin.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//
end;

procedure TfmLogin.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if y < Panel3.Top then
    Cursor := crSizeAll
  else
    Cursor  := crDefault;
end;

procedure TfmLogin.Panel2Click(Sender: TObject);
begin
//
end;

procedure TfmLogin.Panel2DblClick(Sender: TObject);
begin
  //Application.Terminate;
end;

procedure TfmLogin.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if y < Panel3.Top then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND, $F012, 0);
  end;
end;

procedure TfmLogin.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if y < Panel3.Top then
  begin
    Self.Cursor := crArrow;
  end else
    Self.Cursor  := crDefault;
end;

procedure TfmLogin.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
