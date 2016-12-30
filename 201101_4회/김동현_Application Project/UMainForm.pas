unit UMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Menus, ImgList, PlatformDefaultStyleActnCtrls, ActnMan,
  ActnCtrls, ComCtrls, ToolWin, ActnMenus, StdActns, ExtActns, ExtCtrls, RpCon,
  RpConDS, RpRave, RpDefine, RpBase, RpSystem;

type
  TMainForm = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    StatusBar1: TStatusBar;
    CoolBar1: TCoolBar;
    ActionToolBar1: TActionToolBar;
    ActionToolBar2: TActionToolBar;
    ImageList: TImageList;
    Timer1: TTimer;
    RvSystem1: TRvSystem;
    RvProject1: TRvProject;
    ItemRvDataSetConnection: TRvDataSetConnection;
    ActionManager: TActionManager;
    SearchAction: TAction;
    RegAction: TAction;
    FileExit1: TFileExit;
    CascadeAction: TAction;
    TileAction: TAction;
    ArrangeIconsAction: TAction;
    MinimizeAllAction: TAction;
    DefaultAction: TAction;
    AboutAction: TAction;
    CloseAction: TAction;
    AllCloseAction: TAction;
    ReportAction: TAction;
    procedure SearchActionExecute(Sender: TObject);
    procedure RegActionExecute(Sender: TObject);
    procedure CascadeActionExecute(Sender: TObject);
    procedure TileActionExecute(Sender: TObject);
    procedure ArrangeIconsActionExecute(Sender: TObject);
    procedure MinimizeAllActionExecute(Sender: TObject);
    procedure DefaultActionExecute(Sender: TObject);
    procedure AboutActionExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CloseActionExecute(Sender: TObject);
    procedure AllCloseActionExecute(Sender: TObject);
    procedure ReportActionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses USearchForm, URegForm, ABOUT, UAppStoreDM;

{$R *.dfm}

procedure TMainForm.AboutActionExecute(Sender: TObject);
begin
  AboutBox := TAboutBox.Create(application);
  AboutBox.Show;
end;

procedure TMainForm.AllCloseActionExecute(Sender: TObject);
var
  I: Integer;
begin
  for I := MDIChildCount - 1 downto 0 do
      MDIChildren[I].Close;
end;

procedure TMainForm.ArrangeIconsActionExecute(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TMainForm.CascadeActionExecute(Sender: TObject);
begin
  Cascade;
end;

procedure TMainForm.CloseActionExecute(Sender: TObject);
begin
  if ActiveMDIChild <> nil then
     ActiveMDIChild.Close;
end;

procedure TMainForm.DefaultActionExecute(Sender: TObject);
var
  I: Integer;
begin
  for I := MDIChildCount - 1 downto 0 do begin
    MDIChildren[I].WindowState := wsNormal;
    MDIChildren[I].Height := 600;
    MDIChildren[I].Width  := 760;
    MDIChildren[I].left   := 0;
    MDIChildren[I].top    := 0;
    end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
   Height := 768;
   Width  := 1024;
   Timer1.Enabled := true;

   StatusBar1.panels[0].text := '앱 스토어 관리 프로그램 Ver 1.0.0';
   application.ProcessMessages;
end;

procedure TMainForm.MinimizeAllActionExecute(Sender: TObject);
var
  I: Integer;
begin
  for I := MDIChildCount - 1 downto 0 do
    MDIChildren[I].WindowState := wsMinimized;
end;

procedure TMainForm.RegActionExecute(Sender: TObject);
begin
  RegForm := TRegForm.Create(Application);
  RegForm.Show;
end;

procedure TMainForm.ReportActionExecute(Sender: TObject);
begin
  RvProject1.ExecuteReport('ItemReport');
end;

procedure TMainForm.SearchActionExecute(Sender: TObject);
begin
  SearchForm := TSearchForm.Create(Application);
  SearchForm.Show;
end;

procedure TMainForm.TileActionExecute(Sender: TObject);
begin
  Tile;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  StatusBar1.panels[2].text := formatdatetime('yyyy-mm-dd hh:nn:ss', now) + '     ';
end;

end.
