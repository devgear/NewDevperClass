unit ReadingFrame;

interface

uses
  Global,
  LTClasses,
  Generics.Collections,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ReadingQuestionFrame;

type
  TfmReading = class(TFrame)
    lbQuestionInput: TLabel;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    lbText: TLabel;
    lbTextNumber: TLabel;
  private
    { Private declarations }
    FCurrentQuiz: TReading;
    FQuestionFrames: TObjectList<TfmReadingQuestion>;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure Binding(Quiz: TQuiz);
    function GetTestResultDetails: TList<TTestResultDetail>;
  end;

implementation

{$R *.dfm}

{ TfmReading }

procedure TfmReading.Binding(Quiz: TQuiz);
var
  I: Integer;
  Frame: TfmReadingQuestion;
begin
  FQuestionFrames.Clear;

  FCurrentQuiz := Quiz as TReading;

  lbTextNumber.Caption := IntToStr(FCurrentQuiz.ExampleNumber);
  lbText.Caption := FCurrentQuiz.ExampleText;

  for I := 0 to FCurrentQuiz.QuizList.Count - 1 do
  begin
    Frame := TfmReadingQuestion.Create(nil);
    Frame.Binding(FCurrentQuiz.QuizList.Items[I]);
    Frame.Parent := ScrollBox1;
    Frame.Top := MaxInt;
    Frame.Align := alTop;

    FQuestionFrames.Add(Frame);
  end;
end;

constructor TfmReading.Create(AOwner: TComponent);
begin
  inherited;
  FQuestionFrames := TObjectList<TfmReadingQuestion>.Create;
end;

destructor TfmReading.Destroy;
begin
  FQuestionFrames.Free;
  inherited;
end;

function TfmReading.GetTestResultDetails: TList<TTestResultDetail>;
var
  I: Integer;
  TestResultDetail: TTestResultDetail;
begin
//  Assert(FCurrentQuiz.QuizList.Count = FQuestionFrames.Count, 'Frame 개수가 틀리다');

  Result := TList<TTestResultDetail>.Create;

  for I := 0 to FQuestionFrames.Count - 1 do
    Result.Add(FQuestionFrames.Items[I].GetTestResultDetail);
end;

end.
