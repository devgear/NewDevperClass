unit TestClasses;

interface

uses
  Generics.Collections,
  Classes;

type
  TQuizPart = (qpnone, qpListening, qpWriting, qpSpeaking, qpReading);

  TTest = class
  private

  public
    Idx: integer;
    Title: string;
  end;

  TQuizNumber = class
  private

  public
    QuizNumber: integer;
  end;

  TQuiz = class(TQuizNumber)
  private

  public
    Quiz: string;
  end;

  TLRQuiz = class(TQuiz)
  private

  public
    QuizIdx: Integer;
    A, B, C, D: string;
    Answer: string;
  end;

  TReading = class
  private

  public
    ExampleIdx: Integer;
    TestIdx: Integer;
    ExampleNumber: Integer;
    ExampleText: string;
    QuizList: TObjectList<TQuiz>;

    constructor Create;
    destructor Destroy; override;
  end;

  TListening = class(TLRQuiz)
  private

  public
    Idx: integer;
    SoundAdress: string;
  end;

  TSpeaking = class(TQuiz)
  private

  public
    Idx: integer; // test_idx ?? quiz_idx
    QuizIdx: Integer; // quiz_idx;
    SoundAdress: string;
    ResponseTime : integer;
  end;

  TWriting = class(TQuiz)
  private

  public
    Idx: integer;
    ExampleText: string;
    SoundAdress: string;
  end;

const
//qpnone, qpListening, qpWriting, qpSpeaking, qpReading
  PartName : array [0..4] of string = ('Invalid','Listening', 'Writing', 'Speaking', 'Reading');

implementation

{ TReading }

constructor TReading.Create;
begin
  QuizList := TObjectList<TQuiz>.Create;
end;

destructor TReading.Destroy;
begin
  QuizList.Free;
  inherited;
end;

end.
