unit SpeakingFrame;

interface

uses
  Global,
  LTClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfmSpeaking = class(TFrame)
    lbQuestionInput: TLabel;
    lbQuestion: TLabel;
    lbNumber: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Binding(Quiz: TQuiz);
  end;

implementation

{$R *.dfm}

{ TfmSpeaking }

procedure TfmSpeaking.Binding(Quiz: TQuiz);
begin
  lbNumber.Caption := IntToStr(TSpeaking(Quiz).QuizNumber);
  lbQuestion.Caption := TSpeaking(Quiz).Quiz;
end;

end.
