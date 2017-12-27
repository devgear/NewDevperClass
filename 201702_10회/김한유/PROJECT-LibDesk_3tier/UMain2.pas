unit UMain2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, UMain, UDm;

type
  TMainForm2 = class(TForm)
    LayoutMAIN: TLayout;
    MainPanel: TPanel;
    Rectangle3: TRectangle;
    toptext: TText;
    Layout2: TLayout;
    RoundRect1: TRoundRect;
    Text3: TText;
    LayoutLogin: TLayout;
    RoundRect2: TRoundRect;
    Text1: TText;
    LY_Menu1: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Edit_MYID: TEdit;
    Layout1: TLayout;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Label2: TLabel;
    Layout3: TLayout;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Label3: TLabel;
    Layout4: TLayout;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Label4: TLabel;
    procedure MSGClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Mypageclick(Sender: TObject);
    procedure FindLibClick(Sender: TObject);
    procedure close(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm2: TMainForm2;

implementation

{$R *.fmx}

uses UTalking, UMypage, UFindLib;

procedure TMainForm2.close(Sender: TObject);
begin
  MainForm2.close(Application);
end;

procedure TMainForm2.FindLibClick(Sender: TObject);
begin
  if not Assigned(FindForm) then
    FindForm := TFindForm.Create(Self);

  FindForm.SHOW;
end;

procedure TMainForm2.FormCreate(Sender: TObject);
begin
  Edit_MYID.Text := dm.myuser;
end;

procedure TMainForm2.MSGClick(Sender: TObject);
begin
  if not Assigned(TalkForm) then
    TalkForm := TTalkForm.Create(Self);

  TalkForm.SHOW;
end;

procedure TMainForm2.Mypageclick(Sender: TObject);
begin
  if not Assigned(MypageForm) then
    MypageForm := TMypageForm.Create(Self);

  MypageForm.SHOW;
end;

end.
