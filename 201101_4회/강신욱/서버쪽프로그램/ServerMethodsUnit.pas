unit ServerMethodsUnit;

interface

uses
  SysUtils, Classes, DSServer, DBXInterBase, FMTBcd, SqlExpr, DB, Provider,
  Dialogs;
type
  TServerMethods1 = class(TDSServerModule)
    SQLConnection_Server: TSQLConnection;
    Table_Report: TSQLTable;
    Query_Emp_treeInfo: TSQLQuery;
    Table_Emp: TSQLTable;
    DataSetProvider_report: TDataSetProvider;
    DataSetProvider_Emp: TDataSetProvider;
    DataSetProvider_Emp_TreeInfo: TDataSetProvider;
    Query_Login_Info: TSQLQuery;
    DataSetProvider_Login: TDataSetProvider;
    Query_Login: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function Get_Reportt : TDataSet;
    function Get_Emp_Info : TDataSet;
    function Get_Emp_TreeInfo : TDataSet;
    Function Get_Logined_info(Value: Integer) : TDataSet;
    Procedure EhocMessage;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation

{$R *.dfm}

uses StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

// 직원 정보를 테이불 쨰로 넘긴다..
procedure TServerMethods1.EhocMessage;
begin
  showmessage('');
end;

function TServerMethods1.Get_Emp_Info: TDataSet;
begin
  if Table_Emp.State = dsInactive then
    Table_Emp.Open;
  Result := table_Emp;
end;

// 트리뷰에 나올 직원 정보를 가져온다
function TServerMethods1.Get_Emp_TreeInfo: TDataSet;
begin
  with Query_Emp_treeInfo do
  begin
    Close;
    open;
  end;
  Result := Query_Emp_treeInfo;
end;

// 사번, 민번을 가져온다..
function TServerMethods1.Get_Logined_info(Value: Integer) : TDataSet;
var
  Data : TDataSource;
begin
  Query_Login.Close;
  Query_Login.Params[0].AsInteger := Value;
  Query_Login.open;
  Result := Query_Login;
end;

function TServerMethods1.Get_Reportt: TDataSet;
begin
  if Table_Report.State = dsInactive then
    Table_Report.Open;
  Result := Table_Report;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := StrUtils.ReverseString(Value);
end;

end.

