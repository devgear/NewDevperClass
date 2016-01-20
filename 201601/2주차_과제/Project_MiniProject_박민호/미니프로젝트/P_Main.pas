unit P_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdActns, System.Actions,
  Vcl.ActnList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Ribbon,
  Vcl.RibbonLunaStyleActnCtrls, P_SiteMap;

type
  TProject = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    LoginButton: TButton;
    Registration: TButton;
    Panel2: TPanel;
    Refresh: TButton;
    Timer1: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet5: TTabSheet;
    GotoForm: TButton;
    TFrame11: TFrame1;
    procedure Timer1Timer(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure GotoFormClick(Sender: TObject);
    procedure LoginButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RegistrationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Project: TProject;

implementation

{$R *.dfm}

uses P_DataModule, P_Department, P_Insa, P_ProjectInfo, P_Login, P_ProjectMember;

procedure TProject.FormShow(Sender: TObject);
begin
  if not Assigned(ProjectInfo) then
     ProjectInfo := TProjectInfo.Create(Self);
     ProjectInfo.Parent := TabSheet1;
     ProjectInfo.BorderStyle := bsNone;
     ProjectInfo.Align := alClient;
     ProjectInfo.Show;
end;

procedure TProject.GotoFormClick(Sender: TObject);  // 현재 TabSheet에 해당하는 화면으로 새창 출력
begin
  case Tabsheet1.TabIndex of
    0:
      begin
        if Assigned(ProjectInfo) then
          begin
            ProjectInfo.Free;
            ProjectInfo := TProjectInfo.Create(Self);
            ProjectInfo.Show;
          end;
      end;
    1:
      begin
        if Assigned(Insa) then
          begin
            Insa.Free;
            Insa := TInsa.Create(Self);
            Insa.Show;
          end;
      end;
    2:
      begin
        if Assigned(Department) then
          begin
            Department.Free;
            Department := TDepartment.Create(Self);
            Department.Show;
          end;
      end;
  end;
end;

procedure TProject.LoginButtonClick(Sender: TObject); // 로그인 버튼 클릭
begin
  P_Login.Login := TLogin.Create(Self);
  P_Login.Login.ShowModal;
end;

procedure TProject.PageControl1Change(Sender: TObject); // TabSheet가 바뀔때 마다 해당 화면 출력
begin
  case PageControl1.TabIndex of
    0:
      begin
        if not Assigned(ProjectInfo) then
           ProjectInfo := TProjectInfo.Create(Self);
           ProjectInfo.Parent := TabSheet1;
           ProjectInfo.BorderStyle := bsNone;
           ProjectInfo.Align := alClient;
           ProjectInfo.Show;
      end;
    1:
      begin
        if not Assigned(Insa) then
           Insa := TInsa.Create(Self);
           Insa.Parent := TabSheet2;
           Insa.BorderStyle := bsNone;
           Insa.Align := alClient;
           Insa.Show;
      end;
    2:
      begin
        if not Assigned(Department) then
           Department := TDepartment.Create(Self);
           Department.Parent := TabSheet3;
           Department.BorderStyle := bsNone;
           Department.Align := alClient;
           Department.Show;
      end;
  end;
end;

procedure TProject.RegistrationClick(Sender: TObject);  // 회원가입 버튼 클릭
begin
  Showmessage('현재 회원가입 없이 이용 가능하십니다.');
end;

procedure TProject.Timer1Timer(Sender: TObject);  // StatusBar 현재 날짜, 시간 출력
begin
  Statusbar1.Panels[0].Text := FormatDateTime('yyyy-mm-dd dddd AM/PM hh:nn:ss', now);
end;

end.
