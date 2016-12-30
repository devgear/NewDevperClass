Unit ServerMethodsUnit;

Interface

Uses
  SysUtils, Classes, DSServer, DBXInterBase, FMTBcd, DB, SqlExpr, Provider,
  DBXDataSnap, DBXCommon, DBXMSSQL;

Type
  TServerMethods = Class(TDSServerModule)
    SQLConnection1: TSQLConnection;
    CustomTable: TSQLTable;
    CustomProvider: TDataSetProvider;
    branchTable: TSQLTable;
    branchProvider: TDataSetProvider;
    CarTable: TSQLTable;
    revTable: TSQLTable;
    rentalTable: TSQLTable;
    CarProvider: TDataSetProvider;
    revProvider: TDataSetProvider;
    rentalProvider: TDataSetProvider;
    InsertRent: TSQLStoredProc;
    InsertCustom: TSQLStoredProc;
    joinrent: TSQLQuery;
    jointableprovider: TDataSetProvider;
    subrent: TSQLQuery;
    subProvider: TDataSetProvider;
    Insertrev: TSQLStoredProc;
    updata: TSQLQuery;
    CustomTablec_id: TStringField;
    CustomTablename: TStringField;
    CustomTabletel: TStringField;
    CustomTableaddress: TStringField;
    CustomTablelicense_num: TStringField;
    CustomTablejumin: TStringField;
    CustomTablebigo: TStringField;
    subrentname: TStringField;
    subrentback_date: TDateField;
    subrentcar_status: TStringField;
  Private
    { Private declarations }
  Public
    { Public declarations }
    Function EchoString(Value: String): String;
    Function ReverseString(Value: String): String;

    Function Insert_RENTAL(PRENTALID, PCAR, PCUSTOM, PBRANCH, PPRICE, PUDATE,
      PRENTALDATE, PBACKDATE, PREVNUM, PCARSTATUS, PPENALTY: String): integer;

    Function Insert_Custom(pid, pname, ptel, paddress, plicense, pjumin,
      pbigo: String): integer;

    Function Insert_RESERVATION(PREV_NUM, PCARID, pid, PREVDATE, PUSEDATE,
      PBACKDATE, PPRICE, PBRANCH: String): integer;




    // function car_updatequery(value:string):integer;

  End;

Implementation

{$R *.dfm}

Uses StrUtils, Dialogs;

Function TServerMethods.EchoString(Value: String): String;
Begin
  Result := Value;
End;

// 회원등록 stored procedure 선언
Function TServerMethods.Insert_Custom(pid, pname, ptel, paddress, plicense,
  pjumin, pbigo: String): integer;
Begin
  Try
    Begin
      InsertCustom.Params[0].AsString := pid;
      InsertCustom.Params[1].AsString := pname;
      InsertCustom.Params[2].AsString := ptel;
      InsertCustom.Params[3].AsString := paddress;
      InsertCustom.Params[4].AsString := plicense;
      InsertCustom.Params[5].AsString := pjumin;
      InsertCustom.ExecProc;
      Result := 1;

    End;

  Except
    Result := 0;

  End;
End;

// 렌탈 stored procedure 선언
Function TServerMethods.Insert_RENTAL(PRENTALID, PCAR, PCUSTOM, PBRANCH, PPRICE,
  PUDATE, PRENTALDATE, PBACKDATE, PREVNUM, PCARSTATUS,
  PPENALTY: String): integer;
Begin
  Try
    Begin
      InsertRent.Params[0].AsString := PRENTALID;
      InsertRent.Params[1].AsString := PCAR;
      InsertRent.Params[2].AsString := PCUSTOM;
      InsertRent.Params[3].AsString := PBRANCH;
      InsertRent.Params[4].AsInteger := strtoint(PPRICE);
      InsertRent.Params[5].AsInteger := strtoint(PUDATE);
      InsertRent.Params[6].AsDate := strtodate(PRENTALDATE);
      InsertRent.Params[7].AsDate := strtodate(PBACKDATE);
      InsertRent.Params[8].AsString := PREVNUM;
      InsertRent.Params[9].AsString := PCARSTATUS;
      InsertRent.Params[10].AsString := PPENALTY;
      InsertRent.ExecProc;
      Result := 1;
    End;

  Except
    Result := 0;

  End;

End;

// 예약 프로시저
Function TServerMethods.Insert_RESERVATION(PREV_NUM, PCARID, pid, PREVDATE,
  PUSEDATE, PBACKDATE, PPRICE, PBRANCH: String): integer;
Begin
  Try
    Begin
      InsertRent.Params[0].AsString := PREV_NUM;
      InsertRent.Params[1].AsString := PCARID;
      InsertRent.Params[2].AsString := pid;
      InsertRent.Params[3].AsDate := strtodate(PREVDATE);
      InsertRent.Params[4].AsInteger := strtoint(PUSEDATE);
      InsertRent.Params[5].AsDate := strtodate(PBACKDATE);
      InsertRent.Params[6].AsInteger := strtoint(PPRICE);
      InsertRent.Params[7].AsString := PBRANCH;
      InsertRent.ExecProc;
      Result := 1;
    End;


  Except
    Result := 0;

  End;

End;

Function TServerMethods.ReverseString(Value: String): String;
Begin
  Result := StrUtils.ReverseString(Value);
End;

End.
