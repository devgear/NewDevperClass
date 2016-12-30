unit MessagePaser;

interface

uses
  ExtCtrls, Classes, SysUtils;

type
  TStringParser = Class(TObject)
  private
    FMsg: String;
    FReceiveCode: string;
    FText: String;
    FSendCode: String;
    Fprotocol: String;
    FSendMsg: String;
    procedure SetMsg(const Value: String);
    procedure SetReceiveCode(const Value: string);
    procedure SetSendCode(const Value: String);
    procedure SetText(const Value: String);
    procedure Setprotocol(const Value: String);
    procedure SetSendMsg(const Value: String);
  public
    property Text : String read FText write SetText;
    property protocol : String read Fprotocol write Setprotocol;
    Property SendCode : String read FSendCode write SetSendCode;
    property ReceiveCode : string read FReceiveCode write SetReceiveCode;
    property Msg : String read FMsg write SetMsg;
    Property SendMsg : String read FSendMsg write SetSendMsg;
  End;
var
  stringParser : TStringParser;
implementation

{ StringParser }

procedure TStringParser.SetMsg(const Value: String);
begin
  FMsg := Value;
end;

procedure TStringParser.Setprotocol(const Value: String);
begin
  Fprotocol := Value;
end;

procedure TStringParser.SetReceiveCode(const Value: string);
begin
  FReceiveCode := Value;
end;

procedure TStringParser.SetSendCode(const Value: String);
begin
  FSendCode := Value;
end;

procedure TStringParser.SetSendMsg(const Value: String);
begin
  FSendMsg := Protocol + ';' + ReceiveCode + ';' + Sendcode + ';' + Msg;
end;

procedure TStringParser.SetText(const Value: String);
begin
  FText := Value;
  protocol    := Copy(value, 1, 1);
  SendCode    := Copy(Value, 3, 8);
  ReceiveCode := Copy(Value, 12, 8);
  Msg         := Copy(Value, 21, Length(Value)-21);
end;

end.
