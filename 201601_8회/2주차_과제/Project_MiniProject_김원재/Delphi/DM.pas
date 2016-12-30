unit DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, vcl.Dialogs;

type
  TwDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Project: TFDTable;
    Member: TFDTable;
    Dept: TFDTable;
    Project_Source: TDataSource;
    Member_Source: TDataSource;
    Dept_Source: TDataSource;
    ProjectP_ID: TIntegerField;
    ProjectP_NAME: TWideStringField;
    ProjectP_STARTDATE: TSQLTimeStampField;
    ProjectP_ENDDATE: TSQLTimeStampField;
    ProjectP_MANAGER_ID: TIntegerField;
    ProjectP_MANAGER_NAME: TWideStringField;
    ProjectP_MEMBERCOUNT: TIntegerField;
    ProjectP_STATUS: TIntegerField;
    MemberM_ID: TIntegerField;
    MemberM_NAME: TWideStringField;
    MemberM_TEAM: TStringField;
    DeptD_ID: TIntegerField;
    DeptD_DEPT: TWideStringField;
    DeptD_TEAM: TWideStringField;
    MemberM_PHONE: TDateField;
    MemberM_ADDRESS: TStringField;
    MemberM_SALARY: TIntegerField;
    MemberM_JOINDATE: TDateField;
    MemberM_ABILITY: TIntegerField;
    PMCount: TFDTable;
    PMCountR_ID: TIntegerField;
    PMCountP_ID: TIntegerField;
    PMCountM_ID: TIntegerField;
    PMCount_Source: TDataSource;
    PMCountMEMBER: TStringField;
    procedure ProjectAfterInsert(DataSet: TDataSet);
    procedure ProjectAfterPost(DataSet: TDataSet);
    procedure MemberAfterInsert(DataSet: TDataSet);
    procedure MemberAfterPost(DataSet: TDataSet);
    procedure DeptAfterInsert(DataSet: TDataSet);
    procedure DeptAfterPost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wDM: TwDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Dept, Main, MCount, Member, Project;

{$R *.dfm}

procedure TwDM.DeptAfterInsert(DataSet: TDataSet);
begin
  DeptForm.DBedit1.setfocus;
end;

procedure TwDM.DeptAfterPost(DataSet: TDataSet);
begin
  Showmessage('등록수정완료');
end;

procedure TwDM.MemberAfterInsert(DataSet: TDataSet);
begin
  MemberForm.DBedit1.setfocus;
end;

procedure TwDM.MemberAfterPost(DataSet: TDataSet);
begin
  Showmessage('등록수정완료');
end;


procedure TwDM.ProjectAfterInsert(DataSet: TDataSet);
begin
  ProjectForm.DBedit1.setfocus;
end;

procedure TwDM.ProjectAfterPost(DataSet: TDataSet);
begin
    Showmessage('등록수정완료');
end;

end.
