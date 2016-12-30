unit QuestionABCDInputFrame;

interface

uses
  TestClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmQuestionABCDInput = class(TFrame)
    PanelInputABCDQuestion: TPanel;
    lbQuestion: TLabel;
    edExampleA: TLabeledEdit;
    edExampleB: TLabeledEdit;
    edExampleC: TLabeledEdit;
    edExampleD: TLabeledEdit;
    edQuestion: TLabeledEdit;
    edNumber: TLabeledEdit;
    cbAnswer: TComboBox;
    lbAnswer: TLabel;
  private
    function GetNumber: Integer;
    function GetQuestion: String;
    function GetExampleA: String;
    function GetExampleB: String;
    function GetExampleC: String;
    function GetExampleD: String;
    procedure SetNumber(const Value: Integer);
    procedure SetQuestion(const Value: String);
    procedure SetExampleA(const Value: String);
    procedure SetExampleB(const Value: String);
    procedure SetExampleC(const Value: String);
    procedure SetExampleD(const Value: String);
    function NullCheck: boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure Binding(Quiz: TLRQuiz); overload;
//    procedure Binding(Quiz: TQuiz); overload;
    procedure ClearInput;
//    procedure ExamListing(List: TObjectList<TQuiz>);
    function GetData: TListening;
    function GetReadingData: TLRQuiz;

    property Question : String read GetQuestion write SetQuestion;
    property Number: Integer read GetNumber write SetNumber;
    property ExampleA: String read GetExampleA write SetExampleA;
    property ExampleB: String read GetExampleB write SetExampleB;
    property ExampleC: String read GetExampleC write SetExampleC;
    property ExampleD: String read GetExampleD write SetExampleD;
    property IsNull: boolean read NullCheck;

    procedure QuestionSet(NextNumber: Integer);
  end;

implementation

{$R *.dfm}


//procedure TfrmQuestionABCDInput.ExamListing(List: TObjectList<TQuiz>);
//var
//  I: Integer;
//begin
//  cbAnswer.Clear;
//
//  for I := 0 to List.Count - 1 do
//    cbAnswer.Items.AddObject(IntToStr(List.Items[I].QuizNumber), List.Items[I]);
//  cbAnswer.ItemIndex := 0;
//
//  cbNumberSelectSelect(List);
//end;


function TfrmQuestionABCDInput.NullCheck: boolean;
begin
  Result := (edNumber.Text = '') or (edQuestion.Text = '');
end;

procedure TfrmQuestionABCDInput.QuestionSet(NextNumber: Integer);
begin
  edNumber.Text := IntToStr(NextNumber);
  edQuestion.Clear;
  edExampleA.Clear;
  edExampleB.Clear;
  edExampleC.Clear;
  edExampleD.Clear;
end;

function TfrmQuestionABCDInput.GetNumber: Integer;
begin
  Result := StrToIntDef(edNumber.Text, 0);
end;

function TfrmQuestionABCDInput.GetQuestion: String;
begin
  Result := edQuestion.Text;
end;

procedure TfrmQuestionABCDInput.Binding(Quiz: TLRQuiz);
begin
  edNumber.Text := IntToStr(Quiz.QuizNumber);
  edQuestion.Text := Quiz.Quiz;
  edExampleA.Text := Quiz.A;
  edExampleB.Text := Quiz.B;
  edExampleC.Text := Quiz.C;
  edExampleD.Text := Quiz.D;
  if not (Quiz.Answer = '') then
    cbAnswer.ItemIndex := StrToInt(Quiz.Answer) ;
end;

procedure TfrmQuestionABCDInput.ClearInput;
begin
  edNumber.Clear;
  edQuestion.Clear;
  edExampleA.Clear;
  edExampleB.Clear;
  edExampleC.Clear;
  edExampleD.Clear;
end;

function TfrmQuestionABCDInput.GetData: TListening;
begin
  Result := TListening.Create;
  Result.QuizNumber := StrToInt(ednumber.Text);
  Result.Quiz := edquestion.Text;
  Result.A := edExampleA.Text;
  Result.B := edExampleB.Text;
  Result.C := edExampleC.Text;
  Result.D := edExampleD.Text;
  Result.Answer := IntToStr(cbAnswer.ItemIndex );
end;

function TfrmQuestionABCDInput.GetReadingData: TLRQuiz;
begin
  Result := TLRQuiz.Create;
  Result.QuizNumber := StrToInt(ednumber.Text);
  Result.Quiz := edquestion.Text;
  Result.A := edExampleA.Text;
  Result.B := edExampleB.Text;
  Result.C := edExampleC.Text;
  Result.D := edExampleD.Text;
  Result.Answer := IntToStr(cbAnswer.ItemIndex );
end;

function TfrmQuestionABCDInput.GetExampleA: String;
begin
  Result := edexampleA.Text;
end;

function TfrmQuestionABCDInput.GetExampleB: String;
begin
  Result := edexampleB.Text;
end;

function TfrmQuestionABCDInput.GetExampleC: String;
begin
  Result := edexampleC.Text;
end;

function TfrmQuestionABCDInput.GetExampleD: String;
begin
  Result := edexampleD.Text;
end;


procedure TfrmQuestionABCDInput.SetExampleA(const Value: String);
begin
  edExampleA.Text := Value;
end;

procedure TfrmQuestionABCDInput.SetExampleB(const Value: String);
begin
  edExampleB.Text := Value;
end;

procedure TfrmQuestionABCDInput.SetExampleC(const Value: String);
begin
  edExampleC.Text := Value;
end;

procedure TfrmQuestionABCDInput.SetExampleD(const Value: String);
begin
  edExampleD.Text := Value;
end;

procedure TfrmQuestionABCDInput.SetNumber(const Value: Integer);
begin
  edNumber.Text := IntToStr(Value);
end;

procedure TfrmQuestionABCDInput.SetQuestion(const Value: String);
begin
  edQuestion.Text := Value;
end;

 //
end.
