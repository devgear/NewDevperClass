unit uCalcForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Themes, Vcl.StdCtrls, Vcl.StdActns,
  System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.ExtCtrls, Vcl.Styles, Vcl.ComCtrls;

type
  TfrmCalc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    ActionManager1: TActionManager;
    Memo1: TMemo;
    File1: TMenuItem;
    New1: TMenuItem;
    Exit1: TMenuItem;
    Style1: TMenuItem;
    Auric1: TMenuItem;
    Windows1: TMenuItem;
    Silver1: TMenuItem;
    New_Action: TAction;
    FileExit1: TFileExit;
    Auric_action: TAction;
    Windows_Action: TAction;
    Silver_Action: TAction;
    Btn1: TButton;
    Btn2: TButton;
    Btn3: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn9: TButton;
    Btn0: TButton;
    BtnDot: TButton;
    BtnEquals: TButton;
    BtnPlus: TButton;
    BtnSub: TButton;
    BtnMulty: TButton;
    BtnDiv: TButton;
    BtnClear: TButton;
    BtnBack: TButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Auric_actionExecute(Sender: TObject);
    procedure Windows_ActionExecute(Sender: TObject);
    procedure Silver_ActionExecute(Sender: TObject);
    procedure New_ActionExecute(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Btn0Click(Sender: TObject);
    procedure BtnDotClick(Sender: TObject);
    procedure BtnPlusClick(Sender: TObject);
    procedure BtnSubClick(Sender: TObject);
    procedure BtnMultyClick(Sender: TObject);
    procedure BtnDivClick(Sender: TObject);
    procedure BtnEqualsClick(Sender: TObject);
    procedure BtnBackClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalc: TfrmCalc;

implementation

uses uSplash;
var
  A : Double;
  OP : String;
  P : integer;
  Boo : boolean;
{$R *.dfm}


procedure TfrmCalc.Auric_actionExecute(Sender: TObject);
begin
  Tstylemanager.Trysetstyle('Auric');
end;

procedure TfrmCalc.Windows_ActionExecute(Sender: TObject);
begin
  Tstylemanager.Trysetstyle('Windows');
end;

procedure TfrmCalc.Silver_ActionExecute(Sender: TObject);
begin
  Tstylemanager.Trysetstyle('Silver');
end;

procedure TfrmCalc.Timer1Timer(Sender: TObject);
begin
  Statusbar1.Panels[2].Text :=
  FormatDateTime('yy-mm-dd hh:mm:ss ampm', now);
end;

procedure TfrmCalc.Btn0Click(Sender: TObject);
begin
  if Sender is Tbutton then
    if Tbutton(Sender).Name[4] In ['0'..'9'] then
       Memo1.Text := Memo1.Text + Tbutton(Sender).Name[4]
    else
end;

procedure TfrmCalc.BtnBackClick(Sender: TObject);
begin
  memo1.Text := Copy(Memo1.Text, 1, Length(Memo1.Text) -1);
end;

procedure TfrmCalc.BtnClearClick(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TfrmCalc.BtnDivClick(Sender: TObject);
begin
  A := StrToFloat(Memo1.Text);
  Memo1.Clear;
  OP := '/';
  P := 0;
  Boo := false;
end;

procedure TfrmCalc.BtnDotClick(Sender: TObject);
begin
  if boo = true then
    exit
  else
    Memo1.Text := Memo1.Text + '.';
  boo := true;
end;

procedure TfrmCalc.BtnEqualsClick(Sender: TObject);
begin
  if op = '+' then
    Memo1.Text := FloatToStr(a + StrToFloat(Memo1.Text))
  else
  if op = '-' then
    Memo1.Text := FloatToStr(a - StrToFloat(Memo1.Text))
  else
  if op = '*' then
    Memo1.Text := FloatToStr(a * StrToFloat(Memo1.Text))
  else
  if op = '/' then
    Memo1.Text := FloatToStr(a / StrToFloat(Memo1.Text))
  else
  boo := false;
end;

procedure TfrmCalc.BtnMultyClick(Sender: TObject);
begin
  A := StrToFloat(Memo1.Text);
  Memo1.Clear;
  OP := '*';
  P := 0;
  Boo := false;
end;

procedure TfrmCalc.BtnPlusClick(Sender: TObject);
begin
  A := StrToFloat(Memo1.Text);
  Memo1.Clear;
  OP := '+';
  P := 0;
  Boo := false;
end;

procedure TfrmCalc.BtnSubClick(Sender: TObject);
begin
  A := StrToFloat(Memo1.Text);
  Memo1.Clear;
  op := '-';
  p := 0;
  boo := false;
end;

procedure TfrmCalc.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCalc.New_ActionExecute(Sender: TObject);
begin
  Memo1.Clear;
end;

end.
