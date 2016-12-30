unit UDataModule;

interface

uses
  SysUtils, Classes, DBXInterBase, DB, SqlExpr, DBClient, SimpleDS, FMTBcd,
  Provider, DBTables;

type
  TDM = class(TDataModule)
    ScheduleTableSource: TDataSource;
    FindDayDataQuery: TQuery;
    SelectDataQuery: TQuery;
    SelectDataQuerySource: TDataSource;
    FindDayDataQuerySource: TDataSource;
    DeleteDataQuery: TQuery;
    FineSameTitleQuery: TQuery;
    AlarmQuery: TQuery;
    ScheduleTable: TTable;
    ScheduleTableCreateTime: TStringField;
    ScheduleTableTitle: TStringField;
    ScheduleTableDay_data: TStringField;
    ScheduleTableTimeH_data: TStringField;
    ScheduleTableTimeM_data: TStringField;
    ScheduleTableAlarm_data: TStringField;
    ScheduleTableGrade: TIntegerField;
    ScheduleTableText: TStringField;
    ListQuery: TQuery;
    ListQuerySource: TDataSource;
    ListTable: TTable;
    ListTableTitle: TStringField;
    ListTableDay_data: TStringField;
    ListTableText: TStringField;
    ListTableSource: TDataSource;
    ListTableCreateTime: TStringField;
    ListTableTimeH_data: TStringField;
    ListTableTimeM_data: TStringField;
    ListTableAlarm_data: TStringField;
    ListTableGrade: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses UMain;

{$R *.dfm}



end.
