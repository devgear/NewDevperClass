unit QuestionInputFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, TestClasses;

type
  TfrmQuestionInput = class(TFrame)
    PanelInputQuestion: TPanel;
    lbQuestion: TLabel;
    edQuestion: TLabeledEdit;
    edNumber: TLabeledEdit;
  private
    function GetNumber: Integer;
    function GetQuestion: String;
    procedure SetNumber(const Value: Integer);
    procedure SetQuestion(const Value: String);
    function NullCheck: boolean;
    function NumberNullCheck: boolean;
    { Private declarations }
  public
    { Public declarations }
    property Question : String read GetQuestion write SetQuestion;
    property Number: Integer read GetNumber write SetNumber;
    property IsNull: boolean read NullCheck;
    property NumberIsNull: boolean read NumberNullCheck;
    procedure ClearInput;
    procedure Binding(Quiz: TQuiz);
    procedure QuestionSet(NextNumber: Integer);
  end;

implementation

{$R *.dfm}

{ TfrmQuestionInput }

procedure TfrmQuestionInput.Binding(Quiz: TQuiz);
begin
  edNumber.Text := IntToStr(Quiz.QuizNumber);
  edQuestion.Text := Quiz.Quiz;
end;

procedure TfrmQuestionInput.ClearInput;
begin
  edNumber.Clear;
  edQuestion.Clear;
end;

function TfrmQuestionInput.GetNumber: Integer;
begin
  Result := StrToIntDef(edNumber.Text, 0);
end;

function TfrmQuestionInput.GetQuestion: String;
begin
  Result := edQuestion.Text;
end;

function TfrmQuestionInput.NullCheck: boolean;
begin
  Result := (edNumber.Text = '') or (edQuestion.Text = '');
end;

function TfrmQuestionInput.NumberNullCheck: boolean;
begin
  Result := edNumber.Text = '';
end;

procedure TfrmQuestionInput.QuestionSet(NextNumber: Integer);
begin
  edNumber.Text := IntToStr(NextNumber);
  edQuestion.Clear;
end;

procedure TfrmQuestionInput.SetNumber(const Value: Integer);
begin
  edNumber.Text := IntToStr(Value);
end;

procedure TfrmQuestionInput.SetQuestion(const Value: String);
begin
  edQuestion.Text := Value;
end;

end.
