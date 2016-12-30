unit MainForm;

interface

uses
//  DetailViewForm,
  BackGroundForm,
  SelectForm,
  ResultListForm,
  AdminMainForm,
  LTClasses,
  Global,
  Generics.Collections,
  DAOTest,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, WritingFrame, ReadingFrame,
  SpeakingFrame, ListeningFrame;

type
  TfrMain = class(TForm)
    PanelMain: TPanel;
    btTestResult: TButton;
    Label1: TLabel;
    PanelTop: TPanel;
    btExit: TButton;
    btMain: TButton;
    ListViewTest: TListView;
    btAdmin: TButton;
    btConnect: TButton;
    procedure btExitClick(Sender: TObject);
    procedure btLevelTestClick(Sender: TObject);
    procedure btTestResultClick(Sender: TObject);
    procedure btAdminClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btMainClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btConnectClick(Sender: TObject);
    procedure ListViewTestDblClick(Sender: TObject);
  private
    { Private declarations }
    FTestInfo: TObjectList<TTest>;
    FTestContainer: TTest;
    FDAOTest: TDAOTest;
    FTestIndex: Integer;
    FTestCheck: Boolean;
    procedure on_Notify(Sender: TObject);
    procedure PrintListView;
    procedure CreateAdminMain;
    procedure CreateBackGround;
    procedure CreateSelect;
  public
    { Public declarations }
  end;

var
  frMain: TfrMain;

implementation

{$R *.dfm}

procedure TfrMain.btAdminClick(Sender: TObject);
begin
  CreateAdminMain;
end;

procedure TfrMain.btConnectClick(Sender: TObject);
begin
  if ListViewTest.ItemIndex < 0 then
  begin
    ShowMessage('레벨테스트를 선택하지 않았습니다');
    exit;
  end;

  FreeAndNil(FTestContainer);
  FTestContainer := FDAOTest.LoadTest(TTest(ListViewTest.Selected.Data).Idx);

  CreateBackGround;
  frBackGround.SetTest(FTestContainer);
end;

procedure TfrMain.btExitClick(Sender: TObject);
begin
  FormList.GoMain;
  Close;
end;

procedure TfrMain.btLevelTestClick(Sender: TObject);
begin
  CreateSelect;
end;

procedure TfrMain.btMainClick(Sender: TObject);
begin
  FormList.GoMain;
end;

procedure TfrMain.btTestResultClick(Sender: TObject);
begin
//  frResultList := TfrResultList.Create(self);
//  frResultList.Parent := PanelMain;
//  frResultList.Show;

//  frDetail := TfrDetail.Create(self);
//  frDetail.Parent := PanelMain;
//  frDetail.Show;
end;

procedure TfrMain.CreateAdminMain;
begin
  frAdminMain := TfrAdminMain.Create(self);
  frAdminMain.Parent := PanelMain;
  frAdminMain.Show;
end;

procedure TfrMain.CreateBackGround;
begin
  frBackGround := TfrBackGround.Create(self);
  frBackGround.Parent := PanelMain;
  frBackGround.Show;
end;

procedure TfrMain.CreateSelect;
begin
//  frSelect := TfrSelect.Create(self);
//  frSelect.Parent := PanelMain;
//  frSelect.Show;
end;

procedure TfrMain.FormCreate(Sender: TObject);
begin
  FDAOTest := TDAOTest.Create;
  FormList.OnNotify := on_Notify;

  PrintListView;
end;

procedure TfrMain.FormDestroy(Sender: TObject);
begin
  FDAOTest.Free;
  FTestInfo.Free;
  FTestContainer.Free;
end;

procedure TfrMain.ListViewTestDblClick(Sender: TObject);
begin
  if ListViewTest.ItemIndex > 0 then
    btTestResult.Click
  else
    btConnect.Click;
end;

procedure TfrMain.PrintListView;
var
  I: Integer;
  ListItem: TListItem;
begin
  FreeAndNil(FTestInfo);
  FTestInfo := FDAOTest.SelectTestList;

  ListViewTest.Clear;
  for I := 0 to FTestInfo.Count - 1 do
  begin
    ListItem := ListViewTest.Items.Add;
    ListItem.Caption := FTestInfo.Items[I].Title;
    ListItem.Data := FTestInfo.Items[I];
  end;
end;

procedure TfrMain.on_Notify(Sender: TObject);
begin
  btMain.Visible := FormList.Count > 0;
  btAdmin.Visible := FormList.Count < 1;
end;

end.
