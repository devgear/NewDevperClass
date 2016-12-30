program DataTools;

uses
  Forms,
  MainForm in 'MainForm.pas' {frMain},
  ListeningForm in 'ListeningForm.pas' {frListening},
  WritingForm in 'WritingForm.pas' {frWriting},
  SpeakingForm in 'SpeakingForm.pas' {frSpeaking},
  ReadingForm in 'ReadingForm.pas' {frReading},
  SoundFrame in 'SoundFrame.pas' {frmSound: TFrame},
  QuestionSelectFrame in 'QuestionSelectFrame.pas' {frmQuestionSelect: TFrame},
  ExampleFrame in 'ExampleFrame.pas' {frmExample: TFrame},
  QuestionABCDInputFrame in 'QuestionABCDInputFrame.pas' {frmQuestionABCDInput: TFrame},
  QuestionInputFrame in 'QuestionInputFrame.pas' {frmQuestionInput: TFrame},
  TestClasses in 'TestClasses.pas',
  MainSQLUnit in 'MainSQLUnit.pas',
  JoanModule in 'JoanModule.pas' {dmJoan: TDataModule},
  SpeakingSQLUnit in 'SpeakingSQLUnit.pas',
  DAOTest in 'DAOTest.pas',
  ListeningSQLUnit in 'ListeningSQLUnit.pas',
  WritingSQLUnit in 'WritingSQLUnit.pas',
  ButtonsFrame in 'ButtonsFrame.pas' {frmButtons: TFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmJoan, Joan);
  Application.CreateForm(TfrMain, frMain);
  //  Application.CreateForm(TfrWriting, frWriting);
  //  Application.CreateForm(TfrSpeaking, frSpeaking);
  //  Application.CreateForm(TfrReading, frReading);
  //  Application.CreateForm(TfrListening, frListening);
  Application.Run;
end.
