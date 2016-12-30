unit LTClasses;

interface

uses
  LTConst,
  Generics.Collections,
  Forms, Classes, SysUtils;

type
  { Exception }

  ELevelTest = class(Exception)
  end;

  { Form }

  TLTForm = class(TForm)
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TFormList = class(TList)
  private
    FOnNotify: TNotifyEvent;
  protected
    procedure Notify(Ptr: Pointer; Action: TListNotification); override;
  public
    procedure GoMain;

    property OnNotify: TNotifyEvent read FOnNotify write FOnNotify;
  end;

  ICheckable = interface
    ['{230F9C4C-ABD8-400B-847A-D6112611B75A}']
    procedure CheckAnswer;
  end;

  { enum }

  TMemberKind = (mkGuest, mkStudent, mkTeacher, mkAcademy, mkBranch);
  TQuizKind = (qkSpeaking, qkReading, qkListening, qkWriting);

  { Containers }

  TQuiz = class
  protected
    function GetKind: TQuizKind; virtual; abstract;
  public
    QuizNumber: integer;
    Quiz: string;
    CheckAnswer: string;
    TestIdx: integer;
    property Kind: TQuizKind read GetKind;
  end;

  TLRQuiz = class(TQuiz)
  public
    QuizIdx: integer;
    A, B, C, D: string;
    Answer: string;
  end;

  TReadingQuiz = class(TLRQuiz)
  protected
    function GetKind: TQuizKind; override;
  end;

  TReading = class(TLRQuiz)
  protected
    function GetKind: TQuizKind; override;
  public
    ExampleIdx: integer;
    ExampleNumber: integer;
    ExampleText: string;
    QuizList: TObjectList<TLRQuiz>;

    constructor Create;
    destructor Destroy; override;
  end;

  TListening = class(TLRQuiz)
  protected
    function GetKind: TQuizKind; override;
  public
    SoundAdress: string;
  end;

  TSpeaking = class(TQuiz)
  protected
    function GetKind: TQuizKind; override;
  public
    QuizIdx: integer;
    SoundAdress: string;
    ResponseTime: integer;
  end;

  TWriting = class(TQuiz)
  protected
    function GetKind: TQuizKind; override;
  public
    ExampleText: string;
    SoundAdress: string;
  end;

  TTest = class
  public
    Idx: integer;
    Title: string;
    TestIndex: integer;
    ReadingList: TObjectList<TReading>;
    ListeningList: TObjectList<TListening>;
    SpeakingList: TObjectList<TSpeaking>;
    WritingList: TObjectList<TWriting>;
    CurrentIndex: integer;
    // 모든 퀴즈를 가지고 있는 리스트
    QuizList: TList<TQuiz>;

    constructor Create;
    destructor Destroy; override;

    procedure Initialize;

    function HasNextQuiz: Boolean;
    procedure Next;
    function GetCurrentQuiz: TQuiz;
    function Count: integer;
  end;

  TAcademy = class
  public
    Code: integer;
    Name: string;
    procedure Assign(Source: TAcademy);
  end;

  TUser = class
  private
    function GetMemberKind: TMemberKind;
  public
    Academy: TAcademy;
    TeacherId: string;
    UserId: string;
    UserPassword: string;
    Level: integer;
    Name: string;
    relation : integer;
    auth : string;
    constructor Create;
    destructor Destroy; override;
    procedure Assign(User: TUser); virtual;
  published
    property MemberKind: TMemberKind read GetMemberKind;
  end;

  TGuest = class(TUser)
  public
    Phone: string;
    School: string;
    Grade: string;
    procedure Assign(Guest: TGuest);
  end;

  TTestResult = class
    ResultIndex: integer;
    UserID: string;
    TestIndex: integer;
    StartTime: TDateTime;
    EndTime: TDateTime;
    Right: integer;
    Wrong: integer;
    Score: integer;
    Mark: integer;
  end;

  TTestResultDetail = class
    Index: integer;
    Section: TQuizKind;
    QuizNumber: integer;
    Answer: string;
    Point: integer;
    Correct: integer;
    GetPoint: integer;
  end;

  TLevelTestCheck = class
    Index: integer;
    Title: string;
    Permission: integer;
    ResultIndex: integer;
  end;

var
  FormList: TFormList = nil;

implementation

{ TLTForm }

constructor TLTForm.Create(AOwner: TComponent);
begin
  inherited;
  FormList.Add(Self);
end;

destructor TLTForm.Destroy;
begin
  Assert(FormList.Remove(Self) > -1, 'FormList.Remove');
  inherited;
end;

{ TFormList }

procedure TFormList.GoMain;
var
  I: integer;
begin
  for I := Count - 1 downto 0 do
    TForm(Items[I]).Free;
end;

procedure TFormList.Notify(Ptr: Pointer; Action: TListNotification);
begin
  if Assigned(FOnNotify) then
    FOnNotify(Self);
end;

procedure TUser.Assign(User: TUser);
begin
  TeacherId := User.TeacherId;
  UserId := User.UserId;
  UserPassword := User.UserPassword;
  Level := User.Level;
  Name := User.Name;
  Academy.Code := User.Academy.Code;
  Academy.Name := User.Academy.Name;
end;

constructor TUser.Create;
begin
  Academy := TAcademy.Create;
end;

destructor TUser.Destroy;
begin
  Academy.Free;
  inherited;
end;

function TUser.GetMemberKind: TMemberKind;
begin
  case Level of
    AUTH_STUDENT_BEGIN .. AUTH_STUDENT_END:
      Result := mkStudent;
    AUTH_TEACHER:
      Result := mkTeacher;
    AUTH_ACADEMY:
      Result := mkAcademy;
    AUTH_BRANCH:
      Result := mkBranch;
  else
    Result := mkGuest;
  end;
end;

{ TAcademy }

procedure TAcademy.Assign(Source: TAcademy);
begin
  Name := Source.Name;
  Code := Source.Code;
end;

{ TGuest }

procedure TGuest.Assign(Guest: TGuest);
begin
  inherited Assign(Guest);
  Self.Phone := Guest.Phone;
  Self.School := Guest.School;
  Self.Grade := Guest.Grade;
end;

{ TReading }

constructor TReading.Create;
begin
  QuizList := TObjectList<TLRQuiz>.Create;
end;

destructor TReading.Destroy;
begin
  QuizList.Free;
  inherited;
end;

function TReading.GetKind: TQuizKind;
begin
  Result := qkReading;
end;

{ TTest }

function TTest.Count: integer;
begin
  Result := QuizList.Count;
end;

constructor TTest.Create;
begin
  QuizList := TList<TQuiz>.Create;
  CurrentIndex := 0;
end;

destructor TTest.Destroy;
begin
  QuizList.Free;
  ListeningList.Free;
  SpeakingList.Free;
  ReadingList.Free;
  WritingList.Free;
  inherited;
end;

function TTest.HasNextQuiz: Boolean;
begin
  Result := CurrentIndex + 1 < Count;
end;

procedure TTest.Initialize;
var
  I: integer;
begin
  for I := 0 to ListeningList.Count - 1 do
    QuizList.Add(ListeningList.Items[I]);

  for I := 0 to SpeakingList.Count - 1 do
    QuizList.Add(SpeakingList.Items[I]);

  for I := 0 to ReadingList.Count - 1 do
    QuizList.Add(ReadingList.Items[I]);

  for I := 0 to WritingList.Count - 1 do
    QuizList.Add(WritingList.Items[I]);
end;

procedure TTest.Next;
begin
  CurrentIndex := CurrentIndex + 1;
end;

function TTest.GetCurrentQuiz: TQuiz;
begin
  Result := QuizList.Items[CurrentIndex];
end;

{ TListening }

function TListening.GetKind: TQuizKind;
begin
  Result := qkListening;
end;

{ TSpeaking }

function TSpeaking.GetKind: TQuizKind;
begin
  Result := qkSpeaking;
end;

{ TWriting }

function TWriting.GetKind: TQuizKind;
begin
  Result := qkWriting;
end;

{ TReadingQuiz }

function TReadingQuiz.GetKind: TQuizKind;
begin
  Result := qkReading;
end;

initialization

FormList := TFormList.Create;

finalization

FormList.Free;

end.
