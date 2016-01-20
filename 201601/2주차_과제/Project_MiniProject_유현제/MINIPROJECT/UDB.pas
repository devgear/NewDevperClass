unit UDB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.IBDef, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.IB, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase;

type
  TDataModule1 = class(TDataModule)
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDConnection1: TFDConnection;
    DS_Project: TDataSource;
    DS_Member: TDataSource;
    Fddept: TFDTable;
    DS_Dept: TDataSource;
    MbQuery: TFDQuery;
    FdtmQSource: TDataSource;
    PjQuery: TFDQuery;
    DeQuery: TFDQuery;
    FdpjSource: TDataSource;
    FddeSource: TDataSource;
    FddeptD_ID: TIntegerField;
    FddeptD_DEPT: TWideStringField;
    FddeptD_TEAM: TWideStringField;
    FdPromem: TFDTable;
    DS_Promem: TDataSource;
    FdPromemR_ID: TIntegerField;
    FdPromemP_ID: TIntegerField;
    FdPromemM_ID: TIntegerField;
    FdPromemMember: TStringField;
    FdProject: TFDTable;
    FdProjectP_ID: TIntegerField;
    FdProjectP_NAME: TWideStringField;
    FdProjectP_STARTDATE: TSQLTimeStampField;
    FdProjectP_ENDDATE: TSQLTimeStampField;
    FdProjectP_MANAGER_ID: TIntegerField;
    FdProjectP_MEMBERCOUNT: TIntegerField;
    FdProjectP_STATUS: TIntegerField;
    Fdmember: TFDTable;
    FdmemberM_ID: TIntegerField;
    FdmemberM_NAME: TWideStringField;
    FdmemberM_TEAM: TIntegerField;
    FdmemberM_TEAMNAME: TStringField;
    FdProjectMANAGER: TStringField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDept, UMain, UMember, UProject;

{$R *.dfm}

end.
