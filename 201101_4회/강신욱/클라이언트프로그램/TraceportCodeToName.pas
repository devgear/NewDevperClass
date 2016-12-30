unit TraceportCodeToName;

interface
uses
  ExtCtrls, Classes, SysUtils;

type
  TTrancportCode = class
  private
    StringList : TStringList;
  public
    Constructor Create;
    Function ConversionCodeToName(Value : String) : String;
    Class Function GetObject: TTrancportCode;
  end;

implementation
uses
  uDMclient;

var
  TrancprotCode : TTrancportCode = nil;


{ TTrancportCode }

function TTrancportCode.ConversionCodeToName(Value: String): String;
var
  i : Integer;
begin
  try
    for i := 0 to StringList.Count-1 do
    begin
      if StringList.Find(Value, i) = True then
      begin
        Result := StringList.Strings[i+1];
      end;
    end;
  except
    Result := '';
  end;
end;

constructor TTrancportCode.Create;
begin
  StringList := TStringList.Create;
  with DMClient.ClientDataSet_EmpInfo do
  begin
    Close;
    Open;
    First;
    while not eof do
    begin
      StringList.Add(FieldByName('CODE').AsString);
      StringList.Add(FieldByName('NAME').AsString);
      Next;
    end;
  end;
end;

class function TTrancportCode.GetObject: TTrancportCode;
begin
  if not Assigned(TrancprotCode) then TrancprotCode := TTrancportCode.Create;
  Result := TrancprotCode;
end;




end.
