unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit,
  FMX.Objects, UDm, FMX.Layouts, UClientClass;

type
  TMainForm = class(TForm)
    LayoutMAIN: TLayout;
    MainPanel: TPanel;
    Rectangle3: TRectangle;
    Circle3: TCircle;
    Image1: TImage;
    toptext: TText;
    LayoutLogin: TLayout;
    RoundRect2: TRoundRect;
    Text1: TText;
    LayoutINSERT: TLayout;
    RoundRect3: TRoundRect;
    Text2: TText;
    LayoutID: TLayout;
    Layout2: TLayout;
    RoundRect1: TRoundRect;
    Text3: TText;
    Layout4: TLayout;
    RoundRect4: TRoundRect;
    EditID: TEdit;
    LayoutPW: TLayout;
    Layout9: TLayout;
    RoundRect12: TRoundRect;
    text10: TText;
    Layout10: TLayout;
    RoundRect13: TRoundRect;
    EditPW: TEdit;
    procedure LoginClick(Sender: TObject);
    procedure Text2Click(Sender: TObject);
  private
    { Private declarations }
    function CheckID: Boolean;

  public
    { Public declarations }
    // property MYID :string read Mainform2 write MainForm;
    // MyID: string;

  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}
{$R *.iPhone55in.fmx IOS}

uses UInsert, UFindLib, UMain2;

procedure TMainForm.LoginClick(Sender: TObject);
begin
  CheckID;
end;

procedure TMainForm.Text2Click(Sender: TObject);
begin
  InsertForm := tInsertform.create(application);
  InsertForm.SHOW;
end;

function TMainForm.CheckID: Boolean;
var
  id, pw: string;
begin

  id := EditID.Text;
  pw := EditPW.Text;

  if (Name = '') or (pw = '') then
  begin
    ShowMessage('빈칸이 있습니다. 다시 입력바랍니다.');
    exit;
  end;

  if dm.CheckCheck(id, pw) then
  begin
    ShowMessage('로그인이 되었습니다.');
    MainForm2 := TMainForm2.create(application);
    MainForm2.SHOW;
  end

  else
  begin
    ShowMessage('다시 입력바랍니다.');
    EditID.SetFocus;
  end;
end;

end.
