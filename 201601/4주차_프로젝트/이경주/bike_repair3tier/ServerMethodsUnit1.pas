unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, Datasnap.Provider, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServerMethods1 = class(TDSServerModule)
    FDConnection1: TFDConnection;
    bike: TFDTable;
    repairman: TFDTable;
    repaircenter: TFDTable;
    repairlist: TFDTable;
    bikeDSP: TDataSetProvider;
    user2DSP: TDataSetProvider;
    repairmanDSP: TDataSetProvider;
    repaircenterDSP: TDataSetProvider;
    repairlistDSP: TDataSetProvider;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    loginQuery: TFDQuery;
    userQuery: TFDQuery;
    listQuery: TFDQuery;
    loginQueryDSP: TDataSetProvider;
    user2: TFDTable;
    repairlistUNAME: TWideStringField;
    repairlistUPHONE: TWideStringField;
    repairlistRESERVEDATE: TSQLTimeStampField;
    repairlistCOMPO: TWideStringField;
    repairlistCNAME: TWideStringField;
    repairlistSCORE: TIntegerField;
    repairlistRKEY: TWideStringField;
    listQueryDSP: TDataSetProvider;
    IPSAQuery: TFDQuery;
    IPSAQueryDSP: TDataSetProvider;
    repairmanQuery: TFDQuery;
    totQuery: TFDQuery;
    comlistQuery: TFDQuery;
    inglistQuery: TFDQuery;
    inglistQueryDSP: TDataSetProvider;
    comlistQueryDSp: TDataSetProvider;
    CenterQuery: TFDQuery;
    CenterQueryDSP: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    // 로그인  . 완
    function login(uname, uphone: string): boolean;
    // 고객이 예약.고객의 수리내역테이블 추가 .완
    procedure reserve_add(uname, uphone, compo, cname: string;
      reservedate: TDateTime; state: string);
    // 고객이 수리내역 조회  완
    procedure repairlist_view(uname, uphone: string);
    // 예약된 항목의 갯수 완
    function get_count(Value: string): integer;
    procedure serch_center(cname: string);

    // 수리공을 추가 할때 수리공번호 체크
    procedure insertcheck(rkey: string);
    // 리스트 테이블에 수리공 출장-rname에 수리공 배분, state의 상태를 '완료'로 변경
    // procedure list_repairman_add(

  end;

implementation

{$R *.dfm}

uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods1.get_count(Value: string): integer;
begin
  totQuery.Close;
  // totQuery.Params[0].AsString := //state;
  totQuery.Open;
  Result := totQuery.FieldByName('total').Asinteger;
end;

procedure TServerMethods1.insertcheck(rkey: string);
begin
  repairmanQuery.Close;
  repairmanQuery.SQL.Clear;
  repairmanQuery.SQL.Text :=
    'select count (*) from repairman where rkey = :prkey;';
  repairmanQuery.ParamByName('prkey').AsString := rkey;
  repairmanQuery.Open;
end;

function TServerMethods1.login(uname, uphone: string): boolean;
begin
  loginQuery.Close;
  loginQuery.SQL.Clear;
  loginQuery.SQL.Text :=
  // 'select uphone from user2 where uname = :puname AND uphone = :puphone';
    'select uphone from user2 where uname = :puname';
  loginQuery.ParamByName('puname').AswideString := uname;
  // loginQuery.ParamByName('puphone').AsWideString := uphone;
  // result := true;

  try
    loginQuery.Open;
  except
    raise;
  end;
   loginQuery.First;
  if loginQuery.FieldByName('uphone').AswideString = uphone then
  begin
    Result := true;
  end
  else
    Result := false;
end;

procedure TServerMethods1.repairlist_view(uname, uphone: string);
begin
  inglistQuery.Close;
  inglistQuery.SQL.Clear;
  inglistQuery.SQL.Text :=
    'select reservedate,compo,cname,state from repairlist where uname = :puname AND uphone = :puphone AND rname IS NULL';
  inglistQuery.ParamByName('puname').AsString := uname;
  inglistQuery.ParamByName('puphone').AsString := uphone;
  inglistQuery.Open;

end;

procedure TServerMethods1.reserve_add(uname, uphone, compo, cname: string;
  reservedate: TDateTime; state: string);
begin
  userQuery.Close;
  userQuery.SQL.Clear;
  userQuery.SQL.Text :=
    'insert into repairlist (uname,uphone,compo,cname,reservedate,state)' +
    ' values(:puname, :puphone, :pcompo,:pcname,:preservedate,:pstate);';
  userQuery.ParamByName('puname').AsString := uname;
  userQuery.ParamByName('puphone').AsString := uphone;
  userQuery.ParamByName('pcompo').AswideString := compo;
  userQuery.ParamByName('pcname').AswideString := cname;
  userQuery.ParamByName('preservedate').AsDateTime := reservedate;
  userQuery.ParamByName('pstate').AsString := state;

  userQuery.ExecSQL;
end;

procedure TServerMethods1.serch_center(cname: string);
begin
  CenterQuery.Close;
  CenterQuery.SQL.Clear;
  CenterQuery.SQL.Text :=
    'select clatitude,chardness from repaircenter where cname = :cname;';
  CenterQuery.ParamByName('pcname').AsString := cname;
  CenterQuery.Open;
end;

end.
