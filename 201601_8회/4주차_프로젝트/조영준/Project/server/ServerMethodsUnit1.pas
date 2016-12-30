unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Datasnap.Provider;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    LoginQuery: TFDQuery;
    refinementQuery: TFDQuery;
    refinementProvider: TDataSetProvider;
    UserQuery: TFDQuery;
    UserProvider: TDataSetProvider;
    specialityQuery: TFDQuery;
    specialityProvider: TDataSetProvider;
    markQuery: TFDQuery;
    GRADEQuery: TFDQuery;
    makrQuery: TFDQuery;
    makrProvider: TDataSetProvider;
    SignupQuery: TFDQuery;
    signQuery: TFDQuery;
    SignupProvider: TDataSetProvider;
    NoTQuery: TFDQuery;
    NotProvider: TDataSetProvider;
    sbjtQuery: TFDQuery;
    sbjtProvider: TDataSetProvider;
    totalQuery: TFDQuery;
    DeptTable: TFDTable;
    deptProvider: TDataSetProvider;
    DeptTableDEPT_NUM: TWideStringField;
    DeptTableDEPT_NAME: TWideStringField;
    studentTable: TFDTable;
    studentProvider: TDataSetProvider;
    PROFESSORTable: TFDTable;
    SUBJECTTable: TFDTable;
    PROFESSORProvider: TDataSetProvider;
    SUBJECTProvider: TDataSetProvider;
    vclsignQuery: TFDQuery;
    vclsignProvider: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Log_in(sdt_num: integer; sdt_pw: string): integer;
    procedure mark_up(MK_STDNAME, MK_SDTDEPTNUM, MK_SBJTNAME, MK_PROFNAME,
      MK_ROOM, MK_DIV: string; MK_SDTNUM, MK_SBJTNUM, MK_SBJTCLASS, MK_PROFNUM,
      MK_GRADE: integer);
    function Gradecheck(sdt_num: integer): integer;
    function signGradecheck(sdt_num: integer): integer;
    procedure Signup(sign_STDNAME, sign_SDTDEPTNUM, sign_SBJTNAME,
      sign_PROFNAME, sign_ROOM, sign_DIV: string;
      sign_SDTNUM, sign_SBJTNUM, sign_SBJTCLASS, sign_PROFNUM,
      sign_GRADE: integer);
    function total(sbjt_num, sbjt_class: integer): Boolean;

  end;

implementation

{$R *.dfm}

uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.Gradecheck(sdt_num: integer): integer;
begin
  GRADEQuery.Close;
  GRADEQuery.SQL.Clear;
  GRADEQuery.SQL.Text :=
    'select sum(mk_grade) from mark where mk_sdtnum = :sdt_num';
  GRADEQuery.ParamByName('sdt_num').AsInteger := sdt_num;

  GRADEQuery.open;

  Result := GRADEQuery.FieldByName('sum').AsInteger;

end;

function TServerMethods1.Log_in(sdt_num: integer; sdt_pw: string): integer;
begin
  LoginQuery.Close;
  LoginQuery.SQL.Clear;
  LoginQuery.SQL.Text :=
    'Select * from STUDENT where SDT_NUM like :SDT_NUM and SDT_PW like :SDT_PW';

  LoginQuery.ParamByName('Sdt_Num').AsInteger := sdt_num;
  LoginQuery.ParamByName('sdt_PW').asstring := sdt_pw;
  try
    LoginQuery.open;
  except
    raise;
  end;
  // loginQuery.First;
  if LoginQuery.FieldByName('SDT_STATE').asstring = '¿Á«–' then
  begin
    if (LoginQuery.FieldByName('Sdt_Num').AsInteger = sdt_num) AND
      (LoginQuery.FieldByName('sdt_PW').asstring = sdt_pw) then
    begin
      Result := 1;
    end
    else
    begin
      Result := 2;
    end;
  end
  else
  begin
    Result := 3;
  end;
end;

procedure TServerMethods1.mark_up(MK_STDNAME, MK_SDTDEPTNUM, MK_SBJTNAME,
  MK_PROFNAME, MK_ROOM, MK_DIV: string; MK_SDTNUM, MK_SBJTNUM, MK_SBJTCLASS,
  MK_PROFNUM, MK_GRADE: integer);
begin
  markQuery.Close;
  markQuery.SQL.Clear;
  markQuery.SQL.Text :=
    'INSERT INTO "MARK" ("MK_STDNAME", "MK_SDTNUM", "MK_SDTDEPTNUM", "MK_DIV", "MK_SBJTNUM","MK_SBJTNAME", "MK_SBJTCLASS", "MK_PROFNUM", "MK_PROFNAME", "MK_GRADE", "MK_ROOM")'
    + ' VALUES (:MK_STDNAME, :MK_SDTNUM, :MK_SDTDEPTNUM, :MK_DIV, :MK_SBJTNUM, :MK_SBJTNAME, :MK_SBJTCLASS, :MK_PROFNUM, :MK_PROFNAME, :MK_GRADE, :MK_ROOM)';
  markQuery.ParamByName('MK_STDNAME').asstring := MK_STDNAME;
  markQuery.ParamByName('MK_SDTDEPTNUM').asstring := MK_SDTDEPTNUM;
  markQuery.ParamByName('MK_PROFNAME').asstring := MK_PROFNAME;
  markQuery.ParamByName('MK_SBJTNAME').asstring := MK_SBJTNAME;
  markQuery.ParamByName('MK_ROOM').asstring := MK_ROOM;
  markQuery.ParamByName('MK_DIV').asstring := MK_DIV;

  markQuery.ParamByName('MK_SDTNUM').AsInteger := MK_SDTNUM;
  markQuery.ParamByName('MK_SBJTNUM').AsInteger := MK_SBJTNUM;
  markQuery.ParamByName('MK_SBJTCLASS').AsInteger := MK_SBJTCLASS;
  markQuery.ParamByName('MK_PROFNUM').AsInteger := MK_PROFNUM;
  markQuery.ParamByName('MK_GRADE').AsInteger := MK_GRADE;

  markQuery.ExecSQL;

end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.signGradecheck(sdt_num: integer): integer;
begin
  GRADEQuery.Close;
  GRADEQuery.SQL.Clear;
  GRADEQuery.SQL.Text :=
    'select sum(sign_grade) from signup where sign_sdtnum = :sdt_num';
  GRADEQuery.ParamByName('sdt_num').AsInteger := sdt_num;

  GRADEQuery.open;

  Result := GRADEQuery.FieldByName('sum').AsInteger;
end;

procedure TServerMethods1.Signup(sign_STDNAME, sign_SDTDEPTNUM, sign_SBJTNAME,
  sign_PROFNAME, sign_ROOM, sign_DIV: string; sign_SDTNUM, sign_SBJTNUM,
  sign_SBJTCLASS, sign_PROFNUM, sign_GRADE: integer);
begin
  signQuery.Close;
  signQuery.SQL.Clear;
  signQuery.SQL.Text :=
    'INSERT INTO "SIGNUP" ("SIGN_STDNAME", "SIGN_SDTNUM", "SIGN_SDTDEPTNUM", "SIGN_DIV", "SIGN_SBJTNUM", "SIGN_SBJTNAME", "SIGN_SBJTCLASS", "SIGN_PROFNUM", "SIGN_PROFNAME", "SIGN_GRADE", "SIGN_ROOM")'
    + ' VALUES (:SIGN_STDNAME, :SIGN_SDTNUM, :SIGN_SDTDEPTNUM, :SIGN_DIV, :SIGN_SBJTNUM, :SIGN_SBJTNAME, :SIGN_SBJTCLASS, :SIGN_PROFNUM, :SIGN_PROFNAME, :SIGN_GRADE, :SIGN_ROOM)';
  signQuery.ParamByName('SIGN_STDNAME').asstring := sign_STDNAME;
  signQuery.ParamByName('SIGN_SDTDEPTNUM').asstring := sign_SDTDEPTNUM;
  signQuery.ParamByName('SIGN_PROFNAME').asstring := sign_PROFNAME;
  signQuery.ParamByName('SIGN_SBJTNAME').asstring := sign_SBJTNAME;
  signQuery.ParamByName('SIGN_ROOM').asstring := sign_ROOM;
  signQuery.ParamByName('SIGN_DIV').asstring := sign_DIV;

  signQuery.ParamByName('SIGN_SDTNUM').AsInteger := sign_SDTNUM;
  signQuery.ParamByName('SIGN_SBJTNUM').AsInteger := sign_SBJTNUM;
  signQuery.ParamByName('SIGN_SBJTCLASS').AsInteger := sign_SBJTCLASS;
  signQuery.ParamByName('SIGN_PROFNUM').AsInteger := sign_PROFNUM;
  signQuery.ParamByName('SIGN_GRADE').AsInteger := sign_GRADE;

  signQuery.ExecSQL;

end;

function TServerMethods1.total(sbjt_num, sbjt_class: integer): Boolean;
var
  i, j: integer;
begin
  totalQuery.Close;
  totalQuery.SQL.Clear;
  totalQuery.SQL.Text :=
    'select SBJT_TOTAL from subject where sbjt_num = :a and sbjt_class = :b';
  totalQuery.ParamByName('a').AsInteger := sbjt_num;
  totalQuery.ParamByName('b').AsInteger := sbjt_class;

  totalQuery.open;
  i := totalQuery.FieldByName('SBJT_TOTAL').AsInteger;

  totalQuery.Close;
  totalQuery.SQL.Clear;
  totalQuery.SQL.text :=
    'select count(sign_sbjtnum) from signup where sign_sbjtnum = :a and sign_sbjtclass = :b';
  totalQuery.ParamByName('a').AsInteger := sbjt_num;
  totalQuery.ParamByName('b').AsInteger := sbjt_class;
  totalQuery.open;
  j := totalQuery.FieldByName('count').AsInteger;


  if i <= j then
    Result := false
  else
    Result := true;

end;

end.
