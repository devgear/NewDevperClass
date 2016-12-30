unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Menus;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Dept: TFDTable;
    DeptSource: TDataSource;
    Member: TFDTable;
    MemSource: TDataSource;
    Project: TFDTable;
    ProSource: TDataSource;
    ProjectP_ID: TIntegerField;
    ProjectP_NAME: TWideStringField;
    ProjectP_STARTDATE: TSQLTimeStampField;
    ProjectP_ENDDATE: TSQLTimeStampField;
    ProjectP_MANAGER_ID: TIntegerField;
    ProjectP_MEMBERCOUNT: TIntegerField;
    ProjectP_STATUS: TIntegerField;
    MemberM_ID: TIntegerField;
    MemberM_NAME: TWideStringField;
    MemberM_TEAM: TIntegerField;
    DeptD_ID: TIntegerField;
    DeptD_DEPT: TWideStringField;
    DeptD_TEAM: TWideStringField;
    ProMa: TFDTable;
    PromaSource: TDataSource;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    MemberM_TEAMNAME: TStringField;
    ProMaR_ID: TIntegerField;
    ProMaP_ID: TIntegerField;
    ProMaM_ID: TIntegerField;
    SelectName: TFDQuery;
    SelectSource: TDataSource;
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
