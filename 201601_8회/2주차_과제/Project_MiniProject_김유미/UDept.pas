unit UDept;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TDept = class(TForm)
    Panel1: TPanel;
    lDEPT: TLabel;
    Label3: TLabel;
    sbFirst: TSpeedButton;
    sbPrior: TSpeedButton;
    sbNext: TSpeedButton;
    sbLast: TSpeedButton;
    eDept: TEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DEPT: TLabel;
    SECTION: TLabel;
    bInsert: TButton;
    bPost: TButton;
    bEdit: TButton;
    bDelete: TButton;
    dbeDept: TDBEdit;
    dbeSection: TDBEdit;
    lSection: TLabel;
    eSection: TEdit;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInsertClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure bPostClick(Sender: TObject);
    procedure bEditClick(Sender: TObject);
    procedure eDeptChange(Sender: TObject);
    procedure eSectionChange(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure eDeptKeyPress(Sender: TObject; var Key: Char);
    procedure eSectionKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dept: TDept;

implementation

{$R *.dfm}

uses UDataModule, UMain, UMember, UProject;

procedure TDept.bDeleteClick(Sender: TObject);
begin   //삭제
  if    MessageDlg('정말 삭제 하시겠습니까?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  try
    DataModule1.TblDept.Delete;
  except
    on e: Exception do
       ShowMessage(e.Message);
  end;
end;

procedure TDept.bInsertClick(Sender: TObject);
begin //입력
  DataModule1.TblDept.Insert;
end;

procedure TDept.bEditClick(Sender: TObject);
begin // 수정
  DataModule1.TblDept.Edit;
end;

procedure TDept.bPostClick(Sender: TObject);
begin //저장
 if DataModule1.TblDept.State= dsBrowse then
     raise Exception.Create('조회중');
  try
    DataModule1.TblDept.Post;
  except
    on e:exception  do
      ShowMessage(e.Message);
  end;
end;

procedure TDept.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: begin
     DataModule1.TblDept.IndexFieldNames := 'D_ID';
     DataModule1.TblDeptD_ID.Index := 0;
     DataModule1.TblDeptD_ID.Index := 1;
    end;   //인덱스 명을 바꾸기

    1:begin
     DataModule1.TblDept.IndexFieldNames := 'D_DEPT';
     DataModule1.TblDeptD_DEPT.Index := 1;
     DataModule1.TblDeptD_DEPT.Index := 0;
    end;

    2: DataModule1.TblDept.IndexFieldNames := 'D_TEAM';
  end;
end;

procedure TDept.eDeptChange(Sender: TObject);
begin
  DataModule1.TblDept.IndexFieldNames :='D_Dept';
  DataModule1.TblDept.FindNearest([eDept.Text]);
end;

procedure TDept.eDeptKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9'] then
     key := #0;
end;

procedure TDept.eSectionChange(Sender: TObject);
begin
  DataModule1.TblDept.IndexFieldNames :='D_TEAM';
  DataModule1.TblDept.FindNearest([eSection.Text]);
end;

procedure TDept.eSectionKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9'] then
     key := #0;
end;

procedure TDept.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dept := Nil;
  ACtion := CaFree;
end;

procedure TDept.sbFirstClick(Sender: TObject);
begin
  DataModule1.TblDept.First;  //처음
end;

procedure TDept.sbLastClick(Sender: TObject);
begin
  DataModule1.TblDept.Last;    //마지막
end;

procedure TDept.sbNextClick(Sender: TObject);
begin
  if not DataModule1.TblDept.Eof then
         DataModule1.TblDept.Next; //다음
end;

procedure TDept.sbPriorClick(Sender: TObject);
begin
  if not DataModule1.TblDept.Bof then
         DataModule1.TblDept.Prior;  //위로
end;

end.
