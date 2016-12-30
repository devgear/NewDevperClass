unit Uds_dm;

interface

uses
	SysUtils, Classes, DBXInterBase, FMTBcd, DB, SqlExpr, DBClient, SimpleDS;

type
	Tdm = class(TDataModule)
		DSDConnection: TSQLConnection;
		MyQuery: TSQLQuery;
		SettleQuery: TSimpleDataSet;
		SettleSource: TDataSource;
		SqSETTLE_NM: TStringField;
		SqSETTLE_CONT: TStringField;
		SqSETTLE_DT: TDateField;
		SqSETTLE_WRITE_DT: TDateField;
		SqSETTLE_YN: TStringField;
		SqSETTLE_KIND: TStringField;
		SqSETTLE_SENDER: TStringField;
		SqSETTLE_RECVER: TStringField;
		UserTable: TSQLDataSet;
		SqSENDER_NM: TStringField;
		SqRECV_NM: TStringField;
		MySource: TDataSource;
		SqSETTLE_READ_YN: TStringField;
		SettleTable: TSimpleDataSet;
		SettleTableSETTLE_NM: TStringField;
		SettleTableSETTLE_CONT: TStringField;
		SettleTableSETTLE_DT: TDateField;
		SettleTableSETTLE_WRITE_DT: TDateField;
		SettleTableSETTLE_YN: TStringField;
		SettleTableSETTLE_READ_YN: TStringField;
		SettleTableSETTLE_KIND: TStringField;
		SettleTableSETTLE_SENDER: TStringField;
		SettleTableSETTLE_RECVER: TStringField;
		SettleTableSENDER_NM: TStringField;
		SettleTableRECVER_NM: TStringField;
		SettleTableREAD_YN_NM: TStringField;
		SettleTableSETTLE_YN_NM: TStringField;
		countQuery: TSQLQuery;
		LogTable: TSimpleDataSet;
		LogSource: TDataSource;
		LogTableLOG_NO: TLargeintField;
		LogTableLOG_ACC_DT: TDateField;
		LogTableLOG_ACC_STEP: TStringField;
		LogTableLOG_ACC_CONT: TStringField;
		LogTableLOG_SETTLE_NO: TLargeintField;
		LogTableLOG_ACC_EMP: TStringField;
		LogTableLOG_EMP_NM: TStringField;
		LogMaxQuery: TSQLQuery;
    SettleTableSETTLE_NO: TIntegerField;
    SettleQuerySETTLE_NO: TIntegerField;
    DeptTable: TSimpleDataSet;
		procedure SettleTableCalcFields(DataSet: TDataSet);
		procedure SetSettleLog(SettleNo, UserID, ACCkind: string);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	dm: Tdm;
	UserID, UserName, UserDept, UserClass: string;
  UserStep:Integer;

implementation

uses Udsmain;

{$R *.dfm}
{ Tdm }

procedure Tdm.SetSettleLog(SettleNo, UserID, ACCkind: string);
var
	max_no: Integer;
begin
	LogMaxQuery.Close;
	LogMaxQuery.Open;
	max_no := LogMaxQuery.FieldByName('max_no').AsInteger;
	LogMaxQuery.Close;
	max_no := max_no + 1;

	LogTable.Insert;
	LogTable.FieldByName('log_no').AsString := inttostr(max_no);
	LogTable.FieldByName('log_acc_dt').AsDateTime := now;
	LogTable.FieldByName('log_acc_cont').AsString := ACCkind;
	LogTable.FieldByName('log_settle_no').AsString := SettleNo;
	LogTable.FieldByName('log_acc_emp').AsString := UserID;

	LogTable.Post;
	LogTable.ApplyUpdates(-1);
	LogTable.Refresh;
end;

procedure Tdm.SettleTableCalcFields(DataSet: TDataSet);
begin
	if SettleTableSETTLE_READ_YN.AsString = 'Y' then
		SettleTableREAD_YN_NM.AsString := '읽음'
	else
		SettleTableREAD_YN_NM.AsString := '읽지않음';

	if SettleTableSETTLE_YN.AsString = 'Y' then
		SettleTableSETTLE_YN_NM.AsString := '결제완료'
	else if SettleTableSETTLE_YN.AsString = 'N' then
		SettleTableSETTLE_YN_NM.AsString := '결제대기중'
	else if SettleTableSETTLE_YN.AsString = 'R' then
		SettleTableSETTLE_YN_NM.AsString := '반려 됨'
	else if SettleTableSETTLE_YN.AsString = 'T' then
		SettleTableSETTLE_YN_NM.AsString := '임시저장';
end;

end.
