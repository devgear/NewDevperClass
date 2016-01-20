unit P_ProjectInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.WinXCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TProjectInfo = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    First: TSpeedButton;
    Prior: TSpeedButton;
    Next: TSpeedButton;
    Last: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    ProjectInfoDBGrid: TDBGrid;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Insert: TButton;
    Modify: TButton;
    Delete: TButton;
    Inquiry: TButton;
    Save: TButton;
    Refresh: TButton;
    ProjectInfoSearchBox: TSearchBox;
    ProjcetMemberDBGrid: TDBGrid;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel3: TPanel;
    ProjectInfoDBRadioGroup: TDBRadioGroup;
    Cancel: TButton;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    Add: TButton;
    Remove: TButton;
    ProjectMemberCountFDQuery: TFDQuery;
    ProjectInfoDBLookupComboBox: TDBLookupComboBox;
    FDQuery1P_ID: TIntegerField;
    FDQuery1P_NAME: TWideStringField;
    FDQuery1P_STARTDATE: TSQLTimeStampField;
    FDQuery1P_ENDDATE: TSQLTimeStampField;
    FDQuery1P_MANAGER_ID: TStringField;
    FDQuery1P_MEMBERCOUNT: TStringField;
    FDQuery1P_STATUS: TIntegerField;
    procedure RefreshClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure InsertClick(Sender: TObject);
    procedure FirstClick(Sender: TObject);
    procedure PriorClick(Sender: TObject);
    procedure NextClick(Sender: TObject);
    procedure LastClick(Sender: TObject);
    procedure ProjectInfoSearchBoxChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InquiryClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure AddClick(Sender: TObject);
    procedure RemoveClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateMemberCount(const AddProjectId: Integer);
    procedure AddMember(const AddProjectId, AddMemberId: Integer);
  public
    { Public declarations }
  end;

var
  ProjectInfo: TProjectInfo;

implementation

{$R *.dfm}

uses
  P_DataModule, P_Department, P_Insa, P_Main, P_ProjectMember;

var
  SaveProjectInfo : Boolean;

procedure TProjectInfo.InsertClick(Sender: TObject);
begin
  TDataModule.ProjectTable.Insert;
  ProjectInfo.DBEdit1.SetFocus;
end;

procedure TProjectInfo.ModifyClick(Sender: TObject);
begin
  TDataModule.ProjectTable.Edit;
    if MessageDlg('정말 수정하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
      try
        TDataModule.ProjectTable.Edit;
      except
        on e:Exception do
           ShowMessage(e.Message);
      end;
end;

procedure TProjectInfo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     SelectNext(ActiveControl, true, true);
end;

procedure TProjectInfo.DeleteClick(Sender: TObject);
begin
  if MessageDlg('정말 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    try
      TDataModule.ProjectTable.Delete;
    except
      on e:Exception do
         ShowMessage(e.Message);
    end;
end;

procedure TProjectInfo.InquiryClick(Sender: TObject);
begin
  ProjectInfoDBGrid.DataSource := DataSource1;
  Fdquery1.Refresh;
end;

procedure TProjectInfo.RefreshClick(Sender: TObject);
begin
  TDataModule.ProjectTable.Refresh;
end;

procedure TProjectInfo.RemoveClick(Sender: TObject);
begin
  TDataModule.FDConnection1.StartTransaction;
    try
      TDataModule.ProjectMemberTable.Delete;
      UpdateMemberCount(TDataModule.ProjectMemberTable.FieldByName('P_ID').AsInteger);
      TDataModule.FDConnection1.Commit;
    except
      TDataModule.FDConnection1.Rollback;
    end;
end;

procedure TProjectInfo.SaveClick(Sender: TObject);
begin
  if SaveProjectInfo then
     TDataModule.ProjectTable.Post;
end;

procedure TProjectInfo.UpdateMemberCount(const AddProjectId: Integer);
var
  MemberCount: Integer;
    begin
      ProjectMemberCountFDQuery.Close;
      ProjectMemberCountFDQuery.ParamByName('P_ID').AsInteger := AddProjectId;
      ProjectMemberCountFDQuery.Open;
      MemberCount := ProjectMemberCountFDQuery.Fields[0].AsInteger;

      TDataModule.ProjectTable.Edit;
      TDataModule.ProjectTable.FieldByName('P_MEMBERCOUNT').AsInteger := MemberCount;
      TDataModule.ProjectTable.Post;
    end;

procedure TProjectInfo.AddClick(Sender: TObject);
var
  ProjectId, MemberId: Integer;
    begin
      TDataModule.ProjectMemberTable.Create(nil);
        try
          ProjectMember.ShowModal;
          ProjectId := TDataModule.ProjectTable.FieldByName('P_ID').AsInteger;
          MemberId := ProjectMember.SelectMemberId;
            if MemberId <> -1 then
               AddMember(ProjectId, MemberId);
        finally
          ProjectMember.Free;
        end;
end;

procedure TProjectInfo.AddMember(const AddProjectId, AddMemberId: Integer);
var
  MbCnt: Integer;
    begin
      TDataModule.FDConnection1.StartTransaction;
        try
          TDataModule.ProjectMemberTable.Insert;
          TDataModule.ProjectMemberTable.FieldByName('P_ID').AsInteger := AddProjectId;
          TDataModule.ProjectMemberTable.FieldByName('M_ID').AsInteger := AddMemberId;
          TDataModule.ProjectMemberTable.Post;
          UpdateMemberCount(AddProjectId);
          TDataModule.FDConnection1.Commit
        except
          TDataModule.FDConnection1.Rollback;
        end;
end;

procedure TProjectInfo.CancelClick(Sender: TObject);
begin
  TDataModule.DeptTable.Cancel;
end;

procedure TProjectInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ProjectInfo := nil;
end;

procedure TProjectInfo.FormShow(Sender: TObject);
begin
  DBEdit1.Text := '';
  DBEdit2.Text := '';
  DBEdit3.Text := '';
  DBEdit4.Text := '';
  SaveProjectInfo := False;
end;

procedure TProjectInfo.ProjectInfoSearchBoxChange(Sender: TObject);
begin
  TDataModule.ProjectTable.IndexFieldNames := 'P_ID';
  TDataModule.ProjectTable.IndexFieldNames := 'P_NAME';
  TDataModule.ProjectTable.IndexFieldNames := 'P_STARTDATE';
  TDataModule.ProjectTable.IndexFieldNames := 'P_ENDDATE';
  TDataModule.ProjectTable.IndexFieldNames := 'P_MANAGER_ID';
  TDataModule.ProjectTable.IndexFieldNames := 'P_MEMBERCOUNT';
  TDataModule.ProjectTable.IndexFieldNames := 'P_STATUS';
  TDataModule.ProjectTable.FindNearest([ProjectInfoSearchBox.Text]);
end;

procedure TProjectInfo.FirstClick(Sender: TObject);
begin
  FDQuery1.First;
  TDataModule.ProjectTable.First;
end;

procedure TProjectInfo.PriorClick(Sender: TObject);
begin
  if Not FDQuery1.Bof then
     FDQuery1.Prior;
  if Not TDataModule.ProjectTable.Bof then
     TDataModule.ProjectTable.Prior;
end;

procedure TProjectInfo.NextClick(Sender: TObject);
begin
  if Not FDQuery1.Bof then
     FDQuery1.Prior;
  if Not TDataModule.ProjectTable.Eof then
     TDataModule.ProjectTable.Next;
end;

procedure TProjectInfo.LastClick(Sender: TObject);
begin
  FDQuery1.Last;
  TDataModule.ProjectTable.Last;
end;

end.
