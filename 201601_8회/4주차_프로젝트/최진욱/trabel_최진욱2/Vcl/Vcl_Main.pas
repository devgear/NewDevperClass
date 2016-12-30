unit Vcl_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl_RBoard, Vcl_Rest,
  Vcl_SBoard, Vcl_Sights, DM_Vcl, Vcl.ExtCtrls, Vcl.CategoryButtons,
  Vcl.ButtonGroup, Vcl_Sights_Add, Vcl_Rest_Add;

type
  TMainForm = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    Sights_Category: TCategoryPanel;
    Rest_Category: TCategoryPanel;
    SB_Category: TCategoryPanel;
    RB_Category: TCategoryPanel;
    ButtonGroup1: TButtonGroup;
    ButtonGroup2: TButtonGroup;
    ButtonGroup4: TButtonGroup;
    ButtonGroup3: TButtonGroup;
    Panel1: TPanel;
    Panel_Main: TPanel;
    Label1: TLabel;
    procedure ButtonGroup1Items0Click(Sender: TObject);
    procedure ButtonGroup2Items0Click(Sender: TObject);
    procedure ButtonGroup3Items0Click(Sender: TObject);
    procedure ButtonGroup4Items0Click(Sender: TObject);
    procedure ButtonGroup2Items1Click(Sender: TObject);
    procedure ButtonGroup2Items2Click(Sender: TObject);
    procedure ButtonGroup2Items3Click(Sender: TObject);
    procedure ButtonGroup3Items2Click(Sender: TObject);
    procedure ButtonGroup3Items1Click(Sender: TObject);
    procedure ButtonGroup3Items3Click(Sender: TObject);
    procedure ButtonGroup1Items1Click(Sender: TObject);
    procedure ButtonGroup4Items1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  check: integer;

implementation

{$R *.dfm}

procedure TMainForm.ButtonGroup1Items0Click(Sender: TObject);
begin
  if not Assigned(SB_Form) then
  begin
    SB_Form := TSB_Form.Create(Self);
    SB_Form.Align := alClient;
    SB_Form.BorderStyle := bsNone;
    SB_Form.Parent := Panel_Main;
  end;
  SB_Form.Show;
end;

procedure TMainForm.ButtonGroup1Items1Click(Sender: TObject);
begin
  if Messagedlg('삭제 하시겠습니까?', mtconfirmation, [mbok, mbcancel], 0) = mrok then
  begin
    try
      dm.SBoard_Set.Delete;
      DM.SBoard_Set.ApplyUpdates(-1);
      showmessage('삭제되었습니다.');
    except
      Showmessage('삭제 오류')
    end;
  end;
end;

procedure TMainForm.ButtonGroup2Items0Click(Sender: TObject);
begin
  if not Assigned(S_Form) then
  begin
    S_Form := TS_Form.Create(Self);
    S_Form.Align := alClient;
    S_Form.BorderStyle := bsNone;
    S_Form.Parent := Panel_Main;
  end;
  S_Form.Show;
end;

procedure TMainForm.ButtonGroup2Items1Click(Sender: TObject);
begin
  check := 1;
  dm.Sights_Set.Append;
  SA_Form := TSA_Form.Create(Application);
  SA_Form.Show;
  SA_Form.Caption := SA_Form.caption + '추가';
end;

procedure TMainForm.ButtonGroup2Items2Click(Sender: TObject);
begin
  check := 0;
  SA_Form := TSA_Form.Create(Application);
  SA_Form.Show;
  SA_Form.caption := SA_Form.caption + '수정';
end;

procedure TMainForm.ButtonGroup2Items3Click(Sender: TObject);
begin
  if Messagedlg('삭제 하시겠습니까?', mtconfirmation, [mbok, mbcancel], 0) = mrok then
  begin
    try
      dm.Sights_Set.Delete;
      DM.Sights_Set.ApplyUpdates(-1);
      showmessage('삭제되었습니다.');
    except
      Showmessage('삭제 오류')
    end;
  end;
end;

procedure TMainForm.ButtonGroup3Items0Click(Sender: TObject);
begin
  if not Assigned(R_Form) then
  begin
    R_Form := TR_Form.Create(Self);
    R_Form.Align := alClient;
    R_Form.BorderStyle := bsNone;
    R_Form.Parent := Panel_Main;
  end;
  R_Form.Show;
end;

procedure TMainForm.ButtonGroup3Items1Click(Sender: TObject);
begin
  check := 1;
  DM.Rest_Set.Append;
  RA_Form := TRA_Form.Create(Application);
  RA_Form.Show;
  RA_Form.caption := RA_Form.caption + '추가';
end;

procedure TMainForm.ButtonGroup3Items2Click(Sender: TObject);
begin
  check := 0;
  RA_Form := TRA_Form.Create(Application);
  RA_Form.Show;
  RA_Form.caption := RA_Form.caption + '수정';
end;

procedure TMainForm.ButtonGroup3Items3Click(Sender: TObject);
begin
  if Messagedlg('삭제 하시겠습니까?', mtconfirmation, [mbok, mbcancel], 0) = mrok then
  begin
    try
      dm.Rest_Set.Delete;
      DM.Rest_Set.ApplyUpdates(-1);
      showmessage('삭제되었습니다.');
    except
      Showmessage('삭제 오류')
    end;
  end;
end;

procedure TMainForm.ButtonGroup4Items0Click(Sender: TObject);
begin
  if not Assigned(RB_Form) then
  begin
    RB_Form := TRB_Form.Create(Self);
    RB_Form.Align := alClient;
    RB_Form.BorderStyle := bsNone;
    RB_Form.Parent := Panel_Main;
  end;
  RB_Form.Show;
end;

procedure TMainForm.ButtonGroup4Items1Click(Sender: TObject);
begin
  if Messagedlg('삭제 하시겠습니까?', mtconfirmation, [mbok, mbcancel], 0) = mrok then
  begin
    try
      dm.RBoard_Set.Delete;
      DM.RBoard_Set.ApplyUpdates(-1);
      showmessage('삭제되었습니다.');
    except
      Showmessage('삭제 오류')
    end;
  end;
end;

end.
