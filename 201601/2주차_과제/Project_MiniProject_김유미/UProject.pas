unit UProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TfrmProject = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    P_ID: TLabel;
    eID: TEdit;
    MANAGER_ID: TLabel;
    Label3: TLabel;
    eManagerID: TEdit;
    sbFirst: TSpeedButton;
    sbPrior: TSpeedButton;
    sbNext: TSpeedButton;
    sbLast: TSpeedButton;
    Panel2: TPanel;
    NAME: TLabel;
    LManagerID: TLabel;
    MemberCount: TLabel;
    bInsert: TButton;
    bPost: TButton;
    bEdit: TButton;
    bDelete: TButton;
    StartDate: TLabel;
    EndDate: TLabel;
    dbeName: TDBEdit;
    dbeMemberCount: TDBEdit;
    dbrgStatus: TDBRadioGroup;
    ComboBox1: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInsertClick(Sender: TObject);
    procedure bPostClick(Sender: TObject);
    procedure bEditClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure eIDChange(Sender: TObject);
    procedure eManagerIDChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure eIDKeyPress(Sender: TObject; var Key: Char);
    procedure eManagerIDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProject: TfrmProject;

implementation

{$R *.dfm}

uses UDataModule, UDept;

procedure TfrmProject.bDeleteClick(Sender: TObject);
begin //삭제
  if MessageDlg('정말 삭제 하시겠습니까?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  try
    DataModule1.TblProject.Delete;
  except
    on e: Exception do
       ShowMessage(e.Message);
  end;
end;

procedure TfrmProject.bInsertClick(Sender: TObject);
begin   //입력
  DataModule1.TblProject.Insert;
end;

procedure TfrmProject.bEditClick(Sender: TObject);
begin // 수정
  DataModule1.TblProject.Edit;
end;

procedure TfrmProject.bPostClick(Sender: TObject);
begin //저장
 if DataModule1.TblProject.State= dsBrowse then
   raise Exception.Create('조회중');
  try
    DataModule1.TblProject.Post;
  except
    on e:exception  do
      ShowMessage(e.Message);
  end;
end;

procedure TfrmProject.ComboBox1Change(Sender: TObject);
begin
 case ComboBox1.ItemIndex of
    0: begin
     DataModule1.TblProject.IndexFieldNames := 'P_ID';
     DataModule1.TblProjectP_ID.Index := 0;
     DataModule1.TblProjectP_ID.Index := 1;
    end;   //인덱스 명을 바꾸기

    1:begin
     DataModule1.TblProject.IndexFieldNames := 'P_NAME';
     DataModule1.TblProjectP_NAME.Index := 1;
     DataModule1.TblProjectP_NAME.Index := 0;
    end;

    2: DataModule1.TblProject.IndexFieldNames := 'P_MANAGER_ID';
 end;
end;

procedure TfrmProject.eIDChange(Sender: TObject);
begin
  DataModule1.TblProject.IndexFieldNames :='P_ID';
  DataModule1.TblProject.FindNearest([eID.Text]);
end;

procedure TfrmProject.eIDKeyPress(Sender: TObject; var Key: Char);
begin //숫자만 입력 가능
 if not (key in ['0'..'9',#08]) then
    key := #0;
end;

procedure TfrmProject.eManagerIDChange(Sender: TObject);
begin
  DataModule1.TblProject.IndexFieldNames :='P_MANAGER_ID';
  DataModule1.TblProject.FindNearest([eManagerID.Text]);
end;

procedure TfrmProject.eManagerIDKeyPress(Sender: TObject; var Key: Char);
begin  //글자만 입력 가능
  if key in ['0'..'9'] then
     key := #0;
end;

procedure TfrmProject.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmProject := Nil;
  Action := caFree;
end;

procedure TfrmProject.sbFirstClick(Sender: TObject);
begin
  DataModule1.TblProject.First;  //처음
end;

procedure TfrmProject.sbPriorClick(Sender: TObject);
begin
  if not DataModule1.TblProject.Bof then
     DataModule1.TblProject.Prior;  //위로
end;

procedure TfrmProject.sbNextClick(Sender: TObject);
begin
  if not DataModule1.TblProject.Eof then
     DataModule1.TblProject.Next; //다음
end;

procedure TfrmProject.sbLastClick(Sender: TObject);
begin
  DataModule1.TblProject.Last;    //마지막
end;

end.
