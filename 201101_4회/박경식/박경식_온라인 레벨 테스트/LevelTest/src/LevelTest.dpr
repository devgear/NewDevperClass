program LevelTest;

uses
  Forms,
  LoginForm in 'LoginForm.pas' {frLogin},
  GuestForm in 'GuestForm.pas' {frGuest},
  MainForm in 'MainForm.pas' {frMain},
  SelectForm in 'SelectForm.pas' {frSelect},
  ReadingForm in 'ReadingForm.pas' {frReading},
  ResultGuideForm in 'ResultGuideForm.pas' {frResultGuide},
  ResultListForm in 'ResultListForm.pas' {frResultList},
  ResultViewForm in 'ResultViewForm.pas' {frResultView},
  ListeningForm in 'ListeningForm.pas' {frListening},
  AdminMainForm in 'AdminMainForm.pas' {frAdminMain},
  EstimateForm in 'EstimateForm.pas' {frEstimate},
  ProgressForm in 'ProgressForm.pas' {frProgress},
  ResultForm in 'ResultForm.pas' {frResult},
  BackgroundForm in 'BackgroundForm.pas' {frBackground},
  LTClasses in 'LTClasses.pas',
  Global in 'Global.pas',
  DAOTest in 'DAOTest.pas',
  LTUtils in 'LTUtils.pas',
  DAOGuest in 'DAOGuest.pas',
  DAOMember in 'DAOMember.pas',
  LTConsts in 'LTConsts.pas',
  GuestSQLUnit in 'GuestSQLUnit.pas',
  DataAccessObjects in 'DataAccessObjects.pas',
  Database_DM in 'Database_DM.pas' {dmDatabase: TDataModule},
  ListeningFrame in 'ListeningFrame.pas' {fmListening: TFrame},
  ReadingFrame in 'ReadingFrame.pas' {fmReading: TFrame},
  NewMemberForm in 'NewMemberForm.pas' {frNewMember};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TdmDatabase, dmDatabase);
  if Login then
  begin
    Application.CreateForm(TfrMain, frMain);
    Application.Run;
  end
  else
    Application.Terminate;
end.
