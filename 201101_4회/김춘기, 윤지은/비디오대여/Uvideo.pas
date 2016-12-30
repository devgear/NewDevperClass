unit Uvideo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls, ActnMenus, ActnList,
  PlatformDefaultStyleActnCtrls, ImgList, ComCtrls, RibbonLunaStyleActnCtrls,
  ExtCtrls, StdActns, StdCtrls;

type
  TVideoForm = class(TForm)
    ActionMainMenuBar2: TActionMainMenuBar;
    ActionManager1: TActionManager;
    land_admini: TAction;
    custom_action: TAction;
    supple_find: TAction;
    date_accounts: TAction;
    common: TAction;
    bring_admini: TAction;
    over_money: TAction;
    change_job: TAction;
    movies_action: TAction;
    lend_find: TAction;
    overdate_find: TAction;
    nocustom_find: TAction;
    custom_find: TAction;
    month_accounts: TAction;
    popular: TAction;
    custom_lend: TAction;
    month_popular: TAction;
    menu: TAction;
    Imgbtn1: TImageList;
    Imgbtn2: TImageList;
    user: TAction;
    Action1: TAction;
    CoolBar1: TCoolBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionMainMenuBar3: TActionMainMenuBar;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    RichEdit1: TRichEdit;
    ActionMainMenuBar4: TActionMainMenuBar;
    FileSaveAs1: TFileSaveAs;
    FileOpen1: TFileOpen;
    procedure custom_actionExecute(Sender: TObject);
    procedure movies_actionExecute(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure bring_adminiExecute(Sender: TObject);
    procedure change_jobExecute(Sender: TObject);
    procedure land_adminiExecute(Sender: TObject);
    procedure userExecute(Sender: TObject);
    procedure custom_newExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure supple_findExecute(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VideoForm: TVideoForm;

implementation

uses UCustom, UMovies,UBring, UUser, UChangeForm, Ulend, UCustomnew,
  FrameCapture_, loadvideo1;

{$R *.dfm}

procedure TVideoForm.Action1Execute(Sender: TObject);
begin
 form1 := tform1.create(application);
 form1.show;
end;

procedure TVideoForm.bring_adminiExecute(Sender: TObject);
begin
  bring := tbring.create(application);
  bring.show;
end;

procedure TVideoForm.change_jobExecute(Sender: TObject);
begin
  chageForm := tchageForm.Create(application);
  chageForm.Show;
end;

procedure TVideoForm.custom_actionExecute(Sender: TObject);
begin
  custom := tcustom.create(application);
  custom.show;
end;

procedure TVideoForm.custom_newExecute(Sender: TObject);
begin
  customnew := tcustomnew.Create(application);
  customnew.Show;
end;

procedure TVideoForm.FileSaveAs1Accept(Sender: TObject);
begin
  RICHEDIT1.Lines.SaveToFile(FILESAVEAS1.Dialog.FILENAME);
end;

procedure TVideoForm.land_adminiExecute(Sender: TObject);
begin
  lendForm := tlendForm.Create(application);
  lendForm.Show
end;

procedure TVideoForm.movies_actionExecute(Sender: TObject);
begin
  movies := tmovies.create(application);
  movies.show;
end;

procedure TVideoForm.supple_findExecute(Sender: TObject);
begin
  loadvideo := tloadvideo.create(application);
  loadvideo.show;
end;

procedure TVideoForm.Timer1Timer(Sender: TObject);
begin
  statusbar1.Panels[2].Text :=
  formatDatetime('yyyy-mmmm-dd dddd hh:nn:ss am/pm', now);
end;

procedure TVideoForm.ToolButton21Click(Sender: TObject);
begin
  close;
end;

procedure TVideoForm.userExecute(Sender: TObject);
begin
  userform := tuserform.Create(application);
  userform.Show;
end;

end.
