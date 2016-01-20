unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    DsProject: TDataSource;
    DsMember: TDataSource;
    DsDept: TDataSource;
    TblMember: TFDTable;
    TblDept: TFDTable;
    TblDeptD_ID: TIntegerField;
    TblDeptD_DEPT: TWideStringField;
    TblDeptD_TEAM: TWideStringField;
    TblMemberM_ID: TIntegerField;
    TblMemberM_NAME: TWideStringField;
    TblMemberM_TEAM: TIntegerField;
    TblMemberM_TeamName: TStringField;
    TblProject: TFDTable;
    TblProjectP_ID: TIntegerField;
    TblProjectP_NAME: TWideStringField;
    TblProjectP_STARTDATE: TDateField;
    TblProjectP_ENDDATE: TDateField;
    TblProjectP_MANAGER_ID: TIntegerField;
    TblProjectP_MEMBERCOUNT: TIntegerField;
    TblProjectP_STATUS: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
