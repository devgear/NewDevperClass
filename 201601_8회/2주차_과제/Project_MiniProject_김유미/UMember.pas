unit UMember;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TMember = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    LID: TLabel;
    LName: TLabel;
    Label3: TLabel;
    sbFirst: TSpeedButton;
    sbPrior: TSpeedButton;
    sbNext: TSpeedButton;
    sbLast: TSpeedButton;
    eID: TEdit;
    eName: TEdit;
    Panel2: TPanel;
    Name: TLabel;
    Team: TLabel;
    bInsert: TButton;
    bPost: TButton;
    bEdit: TButton;
    bDelete: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    dbeName: TDBEdit;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bInsertClick(Sender: TObject);
    procedure bPostClick(Sender: TObject);
    procedure bEditClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure eIDChange(Sender: TObject);
    procedure eNameChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure eIDKeyPress(Sender: TObject; var Key: Char);
    procedure eNameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Member: TMember;

implementation

{$R *.dfm}

uses UDataModule, UDept;

procedure TMember.bDeleteClick(Sender: TObject);
begin //삭제
  if    MessageDlg('정말 삭제 하시겠습니까?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  try
    DataModule1.TblMember.Delete;
  except
    on e: Exception do
       ShowMessage(e.Message);
  end;
end;

procedure TMember.bInsertClick(Sender: TObject);
begin//입력
  DataModule1.TblMember.Insert;
end;

procedure TMember.bEditClick(Sender: TObject);
begin // 수정
  DataModule1.TblMember.Edit;
end;

procedure TMember.bPostClick(Sender: TObject);
begin //저장
 if DataModule1.TblMember.State= dsBrowse then
     raise Exception.Create('조회중');
  try
    DataModule1.TblMember.Post;
  except
    on e:exception  do
       ShowMessage(e.Message);
  end;
end;

procedure TMember.ComboBox1Change(Sender: TObject);
begin
 case ComboBox1.ItemIndex of
    0: begin
     DataModule1.TblMember.IndexFieldNames := 'M_ID';
     DataModule1.TblMemberM_ID.Index := 0;
     DataModule1.TblMemberM_ID.Index := 1;
    end;   //인덱스 명을 바꾸기

    1:begin
     DataModule1.TblMember.IndexFieldNames := 'M_NAME';
     DataModule1.TblMemberM_NAME.Index := 1;
     DataModule1.TblMemberM_NAME.Index := 0;
    end;

    2: DataModule1.TblMember.IndexFieldNames := 'M_TEAM';
 end;
end;

procedure TMember.eIDChange(Sender: TObject);
begin
  DataModule1.TblMember.IndexFieldNames :='M_ID';
  DataModule1.TblMember.FindNearest([eID.Text]);
end;

procedure TMember.eIDKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9',#08]) then
    key := #0;
end;

procedure TMember.eNameChange(Sender: TObject);
begin
  DataModule1.TblMember.IndexFieldNames :='M_Name';
  DataModule1.TblMember.FindNearest([eName.Text]);
end;

procedure TMember.eNameKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['0'..'9'] then
   key := #0;
end;

procedure TMember.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Member := Nil;
   Action := CaFree;
end;

procedure TMember.sbFirstClick(Sender: TObject);
begin
  DataModule1.TblMember.First;  //처음
end;

procedure TMember.sbLastClick(Sender: TObject);
begin
    DataModule1.TblMember.Last;
end;

procedure TMember.sbNextClick(Sender: TObject);
begin
  if not DataModule1.TblMember.Eof then
         DataModule1.TblMember.Next; //다음
end;

procedure TMember.sbPriorClick(Sender: TObject);
begin
  if not DataModule1.TblMember.Bof then
         DataModule1.TblMember.Prior;  //위로
end;
end.
