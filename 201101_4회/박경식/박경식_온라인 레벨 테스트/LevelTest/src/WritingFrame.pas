unit WritingFrame;

interface

uses
  Global,
  LTConsts,
  LTClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfmWriting = class(TFrame)
    lbQuestionInput: TLabel;
    lbText: TLabel;
    lbQuestion: TLabel;
    lbNumber: TLabel;
    memoWriting: TMemo;
  private
    { Private declarations }
    FQuiz: TWriting;
  public
    { Public declarations }
    procedure Binding(Quiz: TWriting);
    function GetTestResultDetail : TTestResultDetail;
  end;

implementation

{$R *.dfm}

{ TfmWriting }

procedure TfmWriting.Binding(Quiz: TWriting);
begin
  FQuiz := Quiz;

  lbText.Caption := FQuiz.ExampleText;
  lbNumber.Caption := IntToStr(FQuiz.QuizNumber);
  lbQuestion.Caption := FQuiz.Quiz;
end;

function TfmWriting.GetTestResultDetail: TTestResultDetail;
begin
  Result := TTestResultDetail.Create;
  Result.QuizNumber := FQuiz.QuizNumber;
  Result.Answer := memoWriting.Text;
  Result.Correct := UNMARKING;
  Result.Point := -1;
  Result.Section := FQuiz.Kind;
end;

end.
