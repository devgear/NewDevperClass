unit uCalcForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdActns, Vcl.StdCtrls, System.StrUtils,
  Vcl.ComCtrls;

type
  TfrmCalc = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    ActionManager1: TActionManager;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Edit1: TEdit;
    N7: TMenuItem;
    About_Ation: TAction;
    procedure Button1Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure About_AtionExecute(Sender: TObject);
    procedure Button17Click(Sender: TObject);









  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalc: TfrmCalc;

implementation

{$R *.dfm}

uses ABOUT;

var
value1,value2,result, copy : single;
mode : byte; //case 문의 사용을 위해 mode라는 변수 선언






procedure TfrmCalc.About_AtionExecute(Sender: TObject);
begin
   aboutbox := taboutbox.create(application); // about box 생성
   Aboutbox.showmodal;
   AboutBox.free       //About 메모리 할당 해제

end;



procedure TfrmCalc.Button12Click(Sender: TObject);
begin
value1 :=StrTOcurr(edit1.Text);
 //에디트와 변수 value1의 데이터 타입이 다르기 떄문에 실수형태 값으로 변경
edit1.Text := '0';
mode := 1;
end;

procedure TfrmCalc.Button13Click(Sender: TObject);
begin
value1 :=StrTOcurr(edit1.Text);
edit1.Text := '0';
mode := 2;
end;

procedure TfrmCalc.Button14Click(Sender: TObject);
begin
value1 :=StrTOcurr(edit1.Text);
edit1.Text := '0';
mode := 3;
end;

procedure TfrmCalc.Button15Click(Sender: TObject);
begin
value1 :=StrTOcurr(edit1.Text);
edit1.Text := '0';
mode := 4;
end;

procedure TfrmCalc.Button16Click(Sender: TObject);
begin
value2 :=strToCurr(edit1.Text);
case mode of
1: result := value1 + value2;
2: result := value1 - value2;
3: result := value1 * value2;
4: result := value1 / value2;
end;
edit1.Text :=CurrTostr(result);
//사칙연산된 값을 최종적으로 edit1.text에 반환한다.
end;



procedure TfrmCalc.Button17Click(Sender: TObject);
begin
edit1.Text:=LeftStr(edit1.Text, Length(edit1.Text)-1);
// edit1.text 의 값을 -1시켜 edit1.text에 값을 반환한다.
end;

procedure TfrmCalc.Button18Click(Sender: TObject); // Clear 버튼
begin
edit1.Text := '0'; // 에디트 값을 0으로 변경
end;

procedure TfrmCalc.Button1Click(Sender: TObject);
begin
if edit1.text='0' then edit1.text :=Tbutton(sender).caption  //이벤트 핸들러
// 에디트 의 값이 0 일경우 에디트 값에 버튼의 캡션 개체를 받는다
else
edit1.Text := edit1.text + Tbutton(sender).caption;
end;


procedure TfrmCalc.N5Click(Sender: TObject);
begin
copy :=StrToCurr(edit1.Text); //copy라는 변수에 edit1.text 값을 넣는다. *복사
end;

procedure TfrmCalc.N6Click(Sender: TObject);
begin
edit1.Text :=CurrToStr(copy); //edit1.text에 copy의 값을 넣는다. *붙여넣기
end;

procedure TfrmCalc.N7Click(Sender: TObject);
begin
close;  // 계산기 종료 버튼
end;

end.
