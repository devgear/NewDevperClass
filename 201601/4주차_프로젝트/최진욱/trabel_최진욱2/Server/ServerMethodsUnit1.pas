unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter,
  Data.DBXInterBase, Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr,
  Data.DBXDataSnap, IPPeerClient, Data.DBXCommon, Datasnap.DBClient, SimpleDS,
  Data.SqlTimSt, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    Login_Query: TFDQuery;
    signup_Query: TFDQuery;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    SearchS_Query: TFDQuery;
    SearchSQueryProvider: TDataSetProvider;
    Sum_Query: TFDQuery;
    SearchR_Query: TFDQuery;
    SearchR_QueryProvider: TDataSetProvider;
    SearchSB_Query: TFDQuery;
    SearchRB_Query: TFDQuery;
    SearchSB_QueryProvider: TDataSetProvider;
    SearchRB_QueryProvider: TDataSetProvider;
    Count_Query: TFDQuery;
    SB_Add_Query: TFDQuery;
    Search_ID_Query: TFDQuery;
    RB_Add_Query: TFDQuery;
    Sights_Table: TFDTable;
    Sights_Provider: TDataSetProvider;
    Rest_Table: TFDTable;
    Rest_Provider: TDataSetProvider;
    SBoard_Table: TFDTable;
    SBoard_Provider: TDataSetProvider;
    RBoard_Table: TFDTable;
    RBoard_Provider: TDataSetProvider;
    Sights_TableS_NO: TIntegerField;
    Sights_TableS_NAME: TWideStringField;
    Sights_TableS_ADDRESS: TWideStringField;
    Insert_Query: TFDQuery;
    Delete_Query: TFDQuery;
    sno_Query: TFDQuery;
    Update_Query: TFDQuery;
    SearchS_QueryS_NO: TIntegerField;
    SearchS_QueryS_NAME: TWideStringField;
    SearchS_QueryS_ADDRESS: TWideStringField;
    SearchSB_QuerySB_NO: TIntegerField;
    SearchSB_QuerySB_TITLE: TWideStringField;
    SearchSB_QuerySB_GRADE: TWideStringField;
    SearchSB_QueryM_ID: TWideStringField;
    SearchSB_QuerySB_SNO: TIntegerField;
    SearchSB_QuerySB_MEMO: TWideStringField;
    SearchR_QueryR_NO: TIntegerField;
    SearchR_QueryR_NAME: TWideStringField;
    SearchR_QueryR_PHONE: TWideStringField;
    SearchR_QueryR_ADDRESS: TWideStringField;
    SearchRB_QueryRB_NO: TIntegerField;
    SearchRB_QueryRB_TITLE: TWideStringField;
    SearchRB_QueryRB_GRADE: TWideStringField;
    SearchRB_QueryM_ID: TWideStringField;
    SearchRB_QueryRB_RNO: TIntegerField;
    SearchRB_QueryRB_MEMO: TWideStringField;
  private

    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure sign(M_ID, M_PW, M_Name, M_phone: string);
    function Log_in(M_ID, M_PW: string): boolean;
    function Avg_S(NO: integer): string;
    function Avg_R(NO: integer): string;
    function SB_Add(Title, Grade, Memo: string; Mno, Sno: integer): integer;
    function RB_Add(Title, Grade, Memo: string; Mno, Rno: integer): integer;
    function Search_ID(ID: string): integer;
  published

  end;

implementation

{$R *.dfm}

uses System.StrUtils;

function TServerMethods1.Avg_R(NO: integer): string;
begin
  try
    Sum_Query.Close;
    Sum_Query.SQL.Text :=
      'select sum(RB_GRADE) from R_BOARD where RB_RNO like :RNO';
    Sum_Query.Params[0].AsInteger := NO;
    Sum_Query.Open;

    Count_Query.Close;
    Count_Query.SQL.Text :=
      'select Count(RB_GRADE) from R_BOARD where RB_RNO like :RNO';
    Count_Query.Params[0].AsInteger := NO;
    Count_Query.Open;

    result := floattostr(Sum_Query.FieldByName('sum').AsInteger /
      Count_Query.FieldByName('count').AsInteger);
  except
    result := inttostr(0);
  end;
end;

function TServerMethods1.Avg_S(NO: integer): string;
begin
  try
    Sum_Query.Close;
    Sum_Query.SQL.Text :=
      'select sum(SB_GRADE) from S_BOARD where SB_SNO like :SNO';
    Sum_Query.Params[0].AsInteger := NO;
    Sum_Query.Open;

    Count_Query.Close;
    Count_Query.SQL.Text :=
      'select Count(SB_GRADE) from S_BOARD where SB_SNO like :SNO';
    Count_Query.Params[0].AsInteger := NO;
    Count_Query.Open;

    result := floattostr(Sum_Query.FieldByName('sum').AsInteger /
      Count_Query.FieldByName('count').AsInteger);
  except
    result := inttostr(0);
  end;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  result := Value;
end;

function TServerMethods1.Log_in(M_ID, M_PW: string): boolean; // ·Î±×ÀÎ
begin
  Login_Query.Close;
  Login_Query.SQL.Clear;
  Login_Query.SQL.Text :=
    'select M_ID,M_PW from MEMBER where M_ID like :M_ID And M_PW like :M_PW';

  Login_Query.ParamByName('M_ID').AsString := M_ID;
  Login_Query.ParamByName('M_PW').AsString := M_PW;
  try
    Login_Query.Open;
  except
    raise;
  end;
  Login_Query.first;

  if (Login_Query.FieldByName('M_ID').AsString = M_ID) AND
    (Login_Query.FieldByName('M_PW').AsString = M_PW) then
  begin
    result := true;
  end
  else
  begin
    result := false;
  end;
end;

function TServerMethods1.RB_Add(Title, Grade, Memo: string;
  Mno, Rno: integer): integer;
begin
  try
    RB_Add_Query.Close;
    RB_Add_Query.SQL.Clear;
    RB_Add_Query.SQL.Text :=
      'insert into R_BOARD (RB_NO,RB_TITLE,RB_GRADE,RB_MNO,RB_RNO,RB_MEMO) Values(:RB_NO,:RB_TITLE,:RB_GRADE,:RB_MNO,:RB_RNO,:RB_MEMO)';
    RB_Add_Query.ParamByName('RB_NO').AsInteger := 0;
    RB_Add_Query.ParamByName('RB_TITLE').AsWideString := Trim(Title);
    RB_Add_Query.ParamByName('RB_GRADE').AsString := Grade;
    RB_Add_Query.ParamByName('RB_MNO').AsInteger := Mno;
    RB_Add_Query.ParamByName('RB_RNO').AsInteger := Rno;
    RB_Add_Query.ParamByName('RB_MEMO').AsWideString := Memo;
    RB_Add_Query.ExecSQL;
    result := 0;
  except
    result := 1;
  end;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.SB_Add(Title, Grade, Memo: string;
  Mno, Sno: integer): integer;
begin
  try
    SB_Add_Query.Close;
    SB_Add_Query.SQL.Clear;
    SB_Add_Query.SQL.Text :=
      'insert into S_BOARD (SB_NO,SB_TITLE,SB_GRADE,SB_MNO,SB_SNO,SB_MEMO) Values(:SB_NO,:SB_TITLE,:SB_GRADE,:SB_MNO,:SB_SNO,:SB_MEMO)';
    SB_Add_Query.ParamByName('SB_NO').AsInteger := 0;
    SB_Add_Query.ParamByName('SB_TITLE').AsWideString := Title;
    SB_Add_Query.ParamByName('SB_GRADE').AsString := Grade;
    SB_Add_Query.ParamByName('SB_MNO').AsInteger := Mno;
    SB_Add_Query.ParamByName('SB_SNO').AsInteger := Sno;
    SB_Add_Query.ParamByName('SB_MEMO').AsWideString := Memo;
    SB_Add_Query.ExecSQL;
    result := 0;
  except
    result := 1;
  end;
end;

function TServerMethods1.Search_ID(ID: string): integer;
begin
  Search_ID_Query.Close;
  Search_ID_Query.SQL.Clear;
  Search_ID_Query.SQL.Text := 'select M_NO from MEMBER where M_ID like :ID';
  Search_ID_Query.ParamByName('ID').AsString := ID;
  Search_ID_Query.Open;
  result := Search_ID_Query.FieldByName('M_NO').AsInteger;
end;

procedure TServerMethods1.sign(M_ID, M_PW, M_Name, M_phone: string);
var
  M_NO: integer;
begin
  M_NO := 1;

  signup_Query.Close;
  signup_Query.SQL.Clear;
  signup_Query.SQL.Text :=
    'insert into MEMBER (M_NO,M_ID,M_PW,M_Name,M_Phone) Values(:M_NO, :M_ID, :M_PW, :M_name, :M_phone)';
  signup_Query.ParamByName('M_NO').AsInteger := M_NO;
  signup_Query.ParamByName('M_ID').AsString := M_ID;
  signup_Query.ParamByName('M_PW').AsString := M_PW;
  signup_Query.ParamByName('M_NAME').AsString := M_Name;
  signup_Query.ParamByName('M_Phone').AsString := M_phone;

  signup_Query.ExecSQL;
end;

end.
