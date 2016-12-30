unit ListeningFrame;

interface

uses
  Global,
  LTConsts,
  LTClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MPlayer;

type
  TfmListening = class(TFrame)
    Panel1: TPanel;
    lbQuestion: TLabel;
    lbExample1: TLabel;
    lbExample2: TLabel;
    lbExample3: TLabel;
    lbExample4: TLabel;
    lbNumber: TLabel;
    Label1: TLabel;
    lbSelect: TLabel;
    Panel2: TPanel;
    MediaPlayer1: TMediaPlayer;
    lbQuestionInput: TLabel;
    Label2: TLabel;
    procedure lbExample1Click(Sender: TObject);
    procedure lbExample2Click(Sender: TObject);
    procedure lbExample3Click(Sender: TObject);
    procedure lbExample4Click(Sender: TObject);
  private
    { Private declarations }
    FQuiz: TLRQuiz;
    FCorrect: string;
    FAnswer: string;
  public
    { Public declarations }
    procedure Binding(Quiz: TLRQuiz);
    function GetTestResultDetail: TTestResultDetail;
  end;

implementation

{$R *.dfm}

{ TfmListening }

procedure TfmListening.Binding(Quiz: TLRQuiz);
begin
  FQuiz := Quiz;

  lbNumber.Caption := IntToStr(FQuiz.QuizNumber);
  lbQuestion.Caption := FQuiz.Quiz;
  lbExample1.Caption := FQuiz.A;
  lbExample2.Caption := FQuiz.B;
  lbExample3.Caption := FQuiz.C;
  lbExample4.Caption := FQuiz.D;
  lbSelect.Caption := ' ';

  FAnswer := FQuiz.Answer;
end;

procedure TfmListening.lbExample1Click(Sender: TObject);
begin
  FCorrect := 'A';
  lbSelect.Caption := FCorrect;
end;

procedure TfmListening.lbExample2Click(Sender: TObject);
begin
  FCorrect := 'B';
  lbSelect.Caption := FCorrect;
end;

procedure TfmListening.lbExample3Click(Sender: TObject);
begin
  FCorrect := 'C';
  lbSelect.Caption := FCorrect;
end;

procedure TfmListening.lbExample4Click(Sender: TObject);
begin
  FCorrect := 'D';
  lbSelect.Caption := FCorrect;
end;

function TfmListening.GetTestResultDetail: TTestResultDetail;
begin
  Result := TTestResultDetail.Create;
  Result.QuizNumber := FQuiz.QuizNumber;
  Result.Answer := FCorrect;
  Result.Section := FQuiz.Kind;

  if FAnswer = FCorrect then
  begin
    Result.Correct := RIGHT;
    Result.Point := 3;
  end
  else
  begin
    Result.Correct := WRONG;
    Result.Point := 0;
  end;
end;

end.

