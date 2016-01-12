unit uCalcForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ExtCtrls, Vcl.StdActns, System.ImageList, Vcl.ImgList, Vcl.ActnMenus,
  Vcl.ComCtrls, Vcl.StdCtrls, System.StrUtils, System.Win.ScktComp;

type

  TfrmCalc = class(TForm)
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    Action1: TAction;
    FileExit1: TFileExit;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MHPanel1: TPanel;
    MHEdit2: TEdit;
    MHEdit1: TEdit;
    MHPanel2: TPanel;
    MHBt0: TButton;
    MHBt1: TButton;
    MHBt2: TButton;
    MHBt3: TButton;
    MHBt4: TButton;
    MHBt5: TButton;
    MHBt6: TButton;
    MHBt7: TButton;
    MHBt8: TButton;
    MHBt9: TButton;
    MHBtdot: TButton;
    MHBtde: TButton;
    MHBtre: TButton;
    MHBtpl: TButton;
    MHBtmi: TButton;
    MHBtmu: TButton;
    MHBtdi: TButton;
    MHBtback: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure MHBtdeClick(Sender: TObject);
    procedure MHBt0Click(Sender: TObject);
    procedure MHBtbackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MHBtdotClick(Sender: TObject);
    procedure MHBtplClick(Sender: TObject);
    procedure MHBtreClick(Sender: TObject);
    procedure MHBtdiClick(Sender: TObject);
    procedure MHBtmiClick(Sender: TObject);
    procedure MHBtmuClick(Sender: TObject);
    procedure MHEdit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  frmCalc: TfrmCalc;

implementation

{$R *.dfm}

uses UCalcAbout; // Use Unit : UCalcAbout Unit, USplash Unit 참조

var
  Dot, Bol, Btre : Boolean;              // 부울변수 선언
  Result : Real;                         // Equal Button 변수 선언
  FourArithmetical : integer;            //  사칙연산 변수 선언


procedure TfrmCalc.Action1Execute(Sender: TObject);
begin
  AboutCalc.ShowModal;           // UCalAboutForm을 ShowModal 창으로 띄웁니다.
end;


procedure TfrmCalc.FormShow(Sender: TObject);
begin
  Dot := True;                   // FormShow시에 Dot변수 부울값 Ture   (소수점 중복 방지)
  Result := 0;                   // FormShow시에 Result변수 값 0 할당
  FourArithmetical := 1;         // FormShow시에 사칙연산 값 1 할당
  Bol := False;                 //  FormShow시에 Bol변수 부울값 False   (+,-,*,/,= 연속 입력 방지)
  Btre := True;                 //  FormShow시에 Btre변수 부울값 True   (= 클릭 후 숫자 입력 방지)
end;

procedure TfrmCalc.MHBt0Click(Sender: TObject);
begin
  if (Sender is Tbutton) then           // 숫자 버튼 클릭시 Sender As 문법 사용
begin // [김현수]if 문의 begin end 들여쓰기가 맞지 않음
  if Btre then
begin
  MHEdit2.Text := MHEdit2.Text+(Sender as TButton).caption;
  MHEdit1.Text := MHEdit1.Text+(Sender as TButton).caption;
  Bol := True;                          // 숫자 버튼 클릭시 +,-,*,/,= 기호 입력 가능)
end;
end;
end;

procedure TfrmCalc.MHBtbackClick(Sender: TObject);  //  BackSpace 클릭
begin
  MHEdit1.Text := LeftStr(MHEdit1.Text, Length(MHEdit1.Text)-1);
  // LeftStr : 문자열이 시작된 지점에서 특정 지정된 부분만 나타내어 호출해주는 함수
end;


procedure TfrmCalc.MHBtdeClick(Sender: TObject);
begin
  MHEdit1.Clear;                       // 에디트1 박스 초기화
  MHEdit1.Text := '';                  // 에디트1 박스 null값 할당
  MHEdit2.Text := '';                  // 에디트2 박스 null값 할당
  Result := 0;
  FourArithmetical := 1;
  Btre := True;                        //  Clear시 숫자입력 가능
end;


procedure TfrmCalc.MHBtdiClick(Sender: TObject);  //  나누기(/) 연산
begin
  if Bol then
  begin
  case FourArithmetical of
  1 : Result := Result + StrToFloat(MHEdit1.Text);
  2 : Result := Result - StrToFloat(MHEdit1.Text);
  3 : Result := Result * StrToFloat(MHEdit1.Text);
  4 : Result := Result / StrToFloat(MHEdit1.Text);
  end;
  MHEdit2.Text := MHEdit2.Text + '/';
  MHEdit1.Text := '';
  FourArithmetical := 4;
  Bol := False;
  Btre := True;
  end;
end;

procedure TfrmCalc.MHBtdotClick(Sender: TObject); //  소수점 클릭
begin
  if Dot then                                     //  소수점을 클릭하면
  begin
  Dot := False;                                   //  소수점이 입력 안되게 하고
  MHEdit2.Text := MHEdit2.Text+'.';               //  에디트2 박스에 '에디트2' 값과 '소수점' 값을 할당
  end;
end;


procedure TfrmCalc.MHBtmiClick(Sender: TObject);  //  빼기(-) 연산
begin
  if Bol then
  begin
  case FourArithmetical of
  1 : Result := Result + StrToFloat(MHEdit1.Text);
  2 : Result := Result - StrToFloat(MHEdit1.Text);
  3 : Result := Result * StrToFloat(MHEdit1.Text);
  4 : Result := Result / StrToFloat(MHEdit1.Text);
  end;
  MHEdit2.Text := MHEdit2.Text + '-';
  MHEdit1.Text := '';
  FourArithmetical := 2;
  Bol := False;
  Btre := True;
  end;
end;

procedure TfrmCalc.MHBtmuClick(Sender: TObject);  //  곱하기(X) 연산
begin
  if Bol then
  begin
  case FourArithmetical of
  1 : Result := Result + StrToFloat(MHEdit1.Text);
  2 : Result := Result - StrToFloat(MHEdit1.Text);
  3 : Result := Result * StrToFloat(MHEdit1.Text);
  4 : Result := Result / StrToFloat(MHEdit1.Text);
  end;
  MHEdit2.Text := MHEdit2.Text + '*';
  MHEdit1.Text := '';
  FourArithmetical := 3;
  Bol := False;
  Btre := True;
  end;
end;


procedure TfrmCalc.MHBtplClick(Sender: TObject);  //  더하기(+) 연산
begin
  if Bol then
  begin
  case FourArithmetical of
  1 : Result := Result + StrToFloat(MHEdit1.Text);
  2 : Result := Result - StrToFloat(MHEdit1.Text);
  3 : Result := Result * StrToFloat(MHEdit1.Text);
  4 : Result := Result / StrToFloat(MHEdit1.Text);
  end;
  MHEdit2.Text := MHEdit2.Text + '+';
  MHEdit1.Text := '';
  FourArithmetical := 1;
  Bol := False;
  Btre := True;
  end;
end;


procedure TfrmCalc.MHBtreClick(Sender: TObject);  //  결과(Result) 값 연산
begin
  try                                             // 예외 처리
  if Bol then
  begin
  case FourArithmetical of
  1 : Result := Result + StrToFloat(MHEdit1.Text);
  2 : Result := Result - StrToFloat(MHEdit1.Text);
  3 : Result := Result * StrToFloat(MHEdit1.Text);
  4 : Result := Result / StrToFloat(MHEdit1.Text);
  end;
  MHEdit1.Text := FloatToStr(Result);
  MHEdit2.Text := '';
  Result := 0;
  Bol := True;
  Btre := False;
  FourArithmetical := 1;
  end;
  except
  on EzeroDivide do showmessage('0으로 나눌 수 없습니다.');
  on EOverFlow do showmessage('입력 범위를 벗어났습니다.');
  end;
end;


procedure TfrmCalc.MHEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then                      // 에디트1 박스에 커서를 두고 엔터키를 누르면 연산결과값 출력
     MHBtre.Click;
end;


procedure TfrmCalc.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels[1].Text := FormatDateTime('yyyy-mm-dd dddd ampm hh:mm:ss', now);
 // 상태바 두번째 패널에 현재 날짜와 시간을 나오게 합니다.
end;

end.

