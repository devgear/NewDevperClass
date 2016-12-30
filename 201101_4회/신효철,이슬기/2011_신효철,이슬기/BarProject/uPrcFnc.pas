unit uPrcFnc;

interface

type
  RoomArray = Array[0..19, 0..1] of Integer;
var
  RoomInfo: RoomArray;
  i, j: integer;{for문용 임시변수}

procedure OrderListOutput(Sender: TObject; iSlipNum:Integer; DM:TDM);

implementation



initialization

begin
  for i := 0 to 9 do
  begin
    RoomInfo[i][0] := 0; // RoomInfo[i][j] -> i는 방의 색깔을 구분하기위해. i:=0이면 파랑, i:=1이면 빨강
    RoomInfo[i][1] := 0; // RoomInfo[i][j] -> j는 해당방의 전표번호를 임시저장.
  end;
end;




end.
