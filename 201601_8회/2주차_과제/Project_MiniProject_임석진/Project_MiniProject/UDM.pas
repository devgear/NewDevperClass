unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    DEPTTable: TFDTable;
    MEMBERTable: TFDTable;
    PROJECTTable: TFDTable;
    PRO_MEMBERTable: TFDTable;
    DEPTTableD_ID: TIntegerField;
    DEPTTableD_DEPT: TWideStringField;
    DEPTTableD_TEAM: TWideStringField;
    MEMBERTableM_ID: TIntegerField;
    MEMBERTableM_NAME: TWideStringField;
    MEMBERTableM_TEAM: TIntegerField;
    PROJECTTableP_ID: TIntegerField;
    PROJECTTableP_NAME: TWideStringField;
    PROJECTTableP_STARTDATE: TSQLTimeStampField;
    PROJECTTableP_ENDDATE: TSQLTimeStampField;
    PROJECTTableP_MANAGER_ID: TIntegerField;
    PROJECTTableP_MEMBERCOUNT: TIntegerField;
    PROJECTTableP_STATUS: TIntegerField;
    PRO_MEMBERTableR_ID: TIntegerField;
    PRO_MEMBERTableP_ID: TIntegerField;
    PRO_MEMBERTableM_ID: TIntegerField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    DSDEPT: TDataSource;
    DSMEMBER: TDataSource;
    DSPRO_MEMBER: TDataSource;
    DSPROJECT: TDataSource;
    MEMBERTableM_M_Name: TStringField;
    PROJECTTableP_MANAGER_NAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDept;

{$R *.dfm}

end.
