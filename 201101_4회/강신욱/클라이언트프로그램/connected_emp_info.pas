unit Connected_Emp_Info;

interface
uses
  ExtCtrls, Classes, SysUtils;
type
(*
      Code : Integer;
        Name : String;
        Dept : String;
        Rank : String;
        ID_Pic : TImage;
*)
TEmployee_Logined = Class(TObject)
  Private
    FCode: Integer;
    FName: String;
    FRank: STring;
    FID_PIC: TImage;
    FDept: String;
    FResult: Boolean;
    FRegion: String;
    FRecievecode : integer;
    FMsgprotocol: integer;
    FSendCode: Integer;
    procedure SetCode(const Value: Integer);
    procedure SetName(const Value: String);
    procedure SetDept(const Value: String);
    procedure SetID_PIC(const Value: TImage);
    procedure SetRank(const Value: STring);
    Function  Get_LoginedTableInfo : Boolean;
    procedure SetRegion(const Value: String);
    procedure SetMsgProtocol(const Value: integer);
    procedure SetRecievecode(const Value: integer);
    procedure SetSendCode(const Value: Integer);
    function GetSendCode: Integer;
  Public
    Constructor  create; virtual;
    desTructor   Destroy; virtual;
    property Code : Integer read FCode write SetCode;
    property Name : String read FName write SetName;
    Property Dept : String read FDept write SetDept;
    Property Rank : STring read FRank write SetRank;
    proPerty Region : String read FRegion write SetRegion;
    property ID_PIC : TImage read FID_PIC write SetID_PIC;
    property Get_Result : Boolean read FResult Write FResult;
    property RecieveCode : integer read FRecievecode Write SetRecievecode;  // 메세지 받는 사람의 사번..
    property MsgProtocol : integer read FMsgprotocol Write SetMsgProtocol;
    Function SendMsg( Msg : String): String;
    Function TalkMsg( Talk : String): string;
    Function LoginMsg: String;
    Function StatMsg_Out : String;
    Function StatMsg_Lunch : String;
  End;

var
  MyInfo  : TEmployee_Logined;
  LoginedCode : Integer;
implementation

uses
  uDMclient, MessageProtocol;
{ TEmployee_Logined }


{ TEmployee_Logined }

constructor TEmployee_Logined.create;
begin
  //Get_Result := Get_LoginedTableInfo;
  RecieveCode := 99999999; // 리시비코드를 기본 값으로 셋팅;;안하면 로그인 메세지 보낼때 리시브 코드가 없어서 에로사항;;
  FID_PIC := TImage.Create(Nil);
  fid_pIC.Width   := 41;
  fID_pic.Height  := 53;
end;

destructor TEmployee_Logined.Destroy;
begin
  FID_PIc.Free;
end;

function TEmployee_Logined.GetSendCode: Integer;
begin
  Result := FCode;
end;

function TEmployee_Logined.Get_LoginedTableInfo: Boolean;
var
  stream : Tstream;
begin
(*  try

      DMClient.ClientDataSet_Login.Close;
      DMClient.ClientDataSet_Login.Params[0].AsInteger := LoginedCode;
      DMClient.ClientDataSet_Login.Open;
      with DMClient.ClientDataSet_Login do
      begin
        fCode    := FieldByName('code').AsInteger;
        FName    := FieldByName('NAME').AsString;
        FRank    := FieldByName('class').AsString;
        //FID_PIC  := FieldByName('ID_PIC').as;
        FDept    := FieldByName('dept').AsString;
        RecieveCode := 99999999; // 리시비코드를 기본 값으로 셋팅;;안하면 로그인 메세지 보낼때 리시브 코드가 없어서 에로사항;;
      end;
    except
      Result := False;
    end;
      Result := True;
*)
end;


function TEmployee_Logined.LoginMsg: String;
begin
  Result := InttoStr(MsgProtocol) + ';' +  IntToStr(Code) + ';' + inttostr(RecieveCode) + ';' + '로그인완료!';
end;

function TEmployee_Logined.SendMsg( Msg: String): String;
var
  Temp : String;
begin
  Temp := Inttostr(mpMsg) + ';' + IntToStr(Code) + ';' + inttostr(RecieveCode) + ';' + Msg;
  Result := StringReplace(temp, #13#10, '|', [rfReplaceAll]);
end;

procedure TEmployee_Logined.SetCode(const Value: Integer);
begin
  FCode := Value;
end;

procedure TEmployee_Logined.SetDept(const Value: String);
begin
  FDept := Value;
end;

procedure TEmployee_Logined.SetID_PIC(const Value: TImage);
begin
  FID_PIC := Value;
end;

procedure TEmployee_Logined.SetMsgProtocol(const Value: integer);
begin
  FMsgprotocol := Value;
end;

procedure TEmployee_Logined.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TEmployee_Logined.SetRank(const Value: STring);
begin
  FRank := Value;
end;

procedure TEmployee_Logined.SetRecievecode(const Value: integer);
begin
  FRecievecode := Value;
end;

procedure TEmployee_Logined.SetRegion(const Value: String);
begin
  FRegion := Value;
end;

procedure TEmployee_Logined.SetSendCode(const Value: Integer);
begin
  FSendCode := Value;
end;


function TEmployee_Logined.StatMsg_Lunch: String;
begin
  Result := InttoStr(mpLunch) + ';' +  IntToStr(Code) + ';' + inttostr(99999999) + ';' + '식사중!';
end;

function TEmployee_Logined.StatMsg_Out: String;
begin
    Result := InttoStr(mpOut) + ';' +  IntToStr(Code) + ';' + inttostr(99999999) + ';' + '외출중!';
end;

function TEmployee_Logined.TalkMsg( Talk: String): string;
begin
  Result := Inttostr(mpTalk) + ';' + IntToStr(Code) + ';' + inttostr(RecieveCode) + ';' + Talk;
end;

end.
