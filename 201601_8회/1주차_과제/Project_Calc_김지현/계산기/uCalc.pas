 { 교육과정 : 델파이
  1주차과제 : 계산기
     제작자 : 김지현
     기한 : 1월 11일 오전 9시까지
     폼(자동,수동) : 자동, Usplash : 수동
 }

unit uCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Number = array[0..1] of integer;
   //Number 정수형 배열 크기가 2인 선언.
  TForm4 = class(TForm)
    Edit1: TEdit;
    Number_1: TButton;
    Number_2: TButton;
    Number_3: TButton;
    Number_4: TButton;
    Number_5: TButton;
    Number_6: TButton;
    Number_7: TButton;
    Number_8: TButton;
    Number_9: TButton;
    Number_Zero: TButton;
    Dat: TButton;
    equals: TButton;
    Oprator_Add: TButton;
    Oprator_Sub: TButton;
    Oprator_Times: TButton;
    Oprator_Divide: TButton;
    Clear: TButton;
    Del: TButton;
    procedure Number_1Click(Sender: TObject);
    procedure Number_2Click(Sender: TObject);
    procedure Number_3Click(Sender: TObject);
    procedure Number_4Click(Sender: TObject);
    procedure Number_5Click(Sender: TObject);
    procedure Number_6Click(Sender: TObject);
    procedure Number_7Click(Sender: TObject);
    procedure Number_8Click(Sender: TObject);
    procedure Number_9Click(Sender: TObject);
    procedure Number_ZeroClick(Sender: TObject);
    procedure Oprator_DivideClick(Sender: TObject);
    procedure Oprator_TimesClick(Sender: TObject);
    procedure Oprator_SubClick(Sender: TObject);
    procedure Oprator_AddClick(Sender: TObject);
    procedure DatClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure equalsClick(Sender: TObject);
    procedure DelClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function FAdd(x,y :integer):integer;
    function FSub(x,y :integer):integer;
    function FTimes(x,y :integer):integer;
    function FDivide(x,y :real):extended overload;
    function FDivide(x,y :integer):integer overload;

  end;
var
  Form4: TForm4;
  numbers : number;
    //에디트창에 입력하는숫자 배열저장
  op : integer;
    //연산자변수 저장
implementation

{$R *.dfm}

uses Usplash;

procedure TForm4.Number_ZeroClick(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '0';
end;

procedure TForm4.DatClick(Sender: TObject);
begin // . 버튼
  //Edit1.Text := Edit1.Text + '.';
  //기능구현을 못하였습니다.
end;

procedure TForm4.DelClick(Sender: TObject);
begin  // 백스페이스버튼
 //기능구현을 못하였습니다.
end;

procedure TForm4.equalsClick(Sender: TObject);
begin
  numbers[1] := StrToInt(Edit1.Text);
 case Op of
   0: Edit1.Text := IntToStr(FAdd(numbers[0],numbers[1]));
   1: Edit1.Text := IntToStr(FSub(numbers[0],numbers[1]));
   2: Edit1.Text := IntToStr(FDivide(numbers[0],numbers[1]));
   3: Edit1.Text := IntToStr(FTimes(numbers[0],numbers[1]));
 end;

end;

procedure TForm4.Oprator_AddClick(Sender: TObject);
begin
  op := 0;
  numbers[0] := StrToInt(Edit1.Text);
  Edit1.clear;
end;

procedure TForm4.Oprator_SubClick(Sender: TObject);
begin
  op := 1;
  numbers[0] := StrToInt(Edit1.Text);
  Edit1.Clear;
end;

procedure TForm4.Oprator_TimesClick(Sender: TObject);
begin
  op:=3;
  numbers[0] := StrToInt(Edit1.Text);
 Edit1.Clear;
end;

procedure TForm4.Oprator_DivideClick(Sender: TObject);
begin
  op:=2;
  numbers[0] := StrToInt(Edit1.Text);
  Edit1.Clear;
end;

function TForm4.FAdd(x,y :integer):integer;
begin
  result := x+y;
end;

function TForm4.FDivide(x, y: real): extended;
begin
  result := x/y;
end;

function TForm4.FDivide(x, y: integer): integer;
begin
  result := x div y;
end;

function TForm4.FSub(x, y: integer): integer;
begin
  result := x-y;
end;

function TForm4.FTimes(x, y: integer): integer;
begin
  result := x*y;
end;

procedure TForm4.ClearClick(Sender: TObject);
//C버튼
begin
 Edit1.clear;
end;

procedure TForm4.Number_1Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '1';
end;

procedure TForm4.Number_2Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '2';
end;

procedure TForm4.Number_3Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '3';
end;

procedure TForm4.Number_4Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '4';
end;

procedure TForm4.Number_5Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '5';
end;

procedure TForm4.Number_6Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '6';
end;

procedure TForm4.Number_7Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '7';
end;

procedure TForm4.Number_8Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '8';
end;

procedure TForm4.Number_9Click(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + '9';
end;

initialization
end.
