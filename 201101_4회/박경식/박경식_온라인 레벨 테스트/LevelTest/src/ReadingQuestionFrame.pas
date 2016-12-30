unit ReadingQuestionFrame;

interface

uses
  LTConsts,
  LTClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfmReadingQuestion = class(TFrame)
    lbExample1: TLabel;
    lbExample2: TLabel;
    lbExample3: TLabel;
    lbExample4: TLabel;
    lbSelect: TLabel;
    Label1: TLabel;
    lbNumber: TLabel;
    lbQuestion: TLabel;
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

{ TfmReadingQuestion }

procedure TfmReadingQuestion.Binding(Quiz: TLRQuiz);
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

function TfmReadingQuestion.GetTestResultDetail: TTestResultDetail;
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

procedure TfmReadingQuestion.lbExample1Click(Sender: TObject);
begin
  FCorrect := 'A';
  lbSelect.Caption := FCorrect;
end;

procedure TfmReadingQuestion.lbExample2Click(Sender: TObject);
begin
  FCorrect := 'B';
  lbSelect.Caption := FCorrect;
end;

procedure TfmReadingQuestion.lbExample3Click(Sender: TObject);
begin
  FCorrect := 'C';
  lbSelect.Caption := FCorrect;
end;

procedure TfmReadingQuestion.lbExample4Click(Sender: TObject);
begin
  FCorrect := 'D';
  lbSelect.Caption := FCorrect;
end;

end.
