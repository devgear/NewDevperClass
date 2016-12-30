unit P_DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, IBX.IBCustomDataSet;

type
  TTDataModule = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ProjectTable: TFDTable;
    InsaTable: TFDTable;
    ProjectMemberTable: TFDTable;
    ProjectDataSource: TDataSource;
    InsaDataSource: TDataSource;
    DeptDataSource: TDataSource;
    ProjectMemberDataSource: TDataSource;
    ProjectTableP_ID: TIntegerField;
    ProjectTableP_NAME: TWideStringField;
    ProjectTableP_STARTDATE: TSQLTimeStampField;
    ProjectTableP_ENDDATE: TSQLTimeStampField;
    ProjectMemberTableR_ID: TIntegerField;
    ProjectMemberTableP_ID: TIntegerField;
    ProjectMemberTableM_ID: TIntegerField;
    DeptTable: TFDTable;
    DeptTableD_ID: TIntegerField;
    DeptTableD_DEPT: TWideStringField;
    DeptTableD_TEAM: TWideStringField;
    InsaTableM_ID: TIntegerField;
    InsaTableM_NAME: TWideStringField;
    InsaTableM_TEAM: TStringField;
    ProjectTableP_MEMBERCOUNT: TStringField;
    ProjectMemberTableM_NAME: TWideStringField;
    ProjectTableP_MANAGER_ID: TStringField;
    InsaTableM_PHONE: TWideStringField;
    ProjectTableP_STATUS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TDataModule: TTDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses P_Main, P_Department, P_Insa, P_ProjectInfo, P_ProjectMember;

{$R *.dfm}

end.
