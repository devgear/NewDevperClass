unit P_data;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dept, member, project, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Data.FMTBcd, Data.SqlExpr;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    tblProject: TFDTable;
    dept: TFDTable;
    projectSource: TDataSource;
    memberSource: TDataSource;
    DeptSource: TDataSource;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    manager: TFDTable;
    managerSource: TDataSource;
    tblProjectP_ID: TIntegerField;
    tblProjectP_NAME: TWideStringField;
    tblProjectP_STARTDATE: TSQLTimeStampField;
    tblProjectP_ENDDATE: TSQLTimeStampField;
    tblProjectP_MANAGER_ID: TIntegerField;
    tblProjectP_MEMBERCOUNT: TIntegerField;
    tblProjectP_STATUS: TIntegerField;
    deptD_ID: TIntegerField;
    deptD_DEPT: TWideStringField;
    deptD_TEAM: TWideStringField;
    memberM_NAME: TWideStringField;
    member: TFDTable;
    memberM_ID: TIntegerField;
    memberM_NAME2: TWideStringField;
    memberM_TEAM: TIntegerField;
    SQLDataSet1: TSQLDataSet;
    managerR_ID: TIntegerField;
    managerP_ID: TIntegerField;
    managerM_ID: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
