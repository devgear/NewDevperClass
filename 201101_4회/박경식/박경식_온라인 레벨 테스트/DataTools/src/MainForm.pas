unit MainForm;

interface

uses
  DAOTest,
  ListeningForm,
  SpeakingForm,
  SpeakingSQLUnit,
  WritingForm,
  ReadingForm,
  MainSQLUnit,
  TestClasses,
  JoanModule,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Generics.Collections;
//
type
  TfrMain = class(TForm)
    PanelTop: TPanel;
    PanelBottonParent: TPanel;
    PanelLeft: TPanel;
    PanelClient: TPanel;
    btAdd: TButton;
    btModify: TButton;
    btDelete: TButton;
    PageControl: TPageControl;
    tsListening: TTabSheet;
    tsReading: TTabSheet;
    ListViewTest: TListView;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ListViewTestSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure btModifyClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btAddClick(Sender: TObject);
  private
    TestInfo: TObjectList<TTest>;
    DAO: TDAOTest;
  public
    ListeningFormWindow : TfrListening;
    ReadingFormWindow : TfrReading;
    procedure PrintListView;
  end;

var
  frMain: TfrMain;

implementation

{$R *.dfm}

procedure TfrMain.btAddClick(Sender: TObject);
var
  Title: string;
begin
  if InputQuery('추가', '새로운 이름을 입력하세요', Title) then
  begin
    DAO.Add(Title);
    PrintListView;
  end;
end;

procedure TfrMain.btDeleteClick(Sender: TObject);
begin
  if messagedlg('정말 삭제하시겠습니까?', mtWarning, mbYesNo,0)= mryes then
  begin
    DAO.Delete(TTest(ListViewTest.Selected.Data).Idx);
    PrintListView;
  end;
end;

procedure TfrMain.btModifyClick(Sender: TObject);
var
  Title : string;
  Index : integer;
begin
 if InputQuery('수정', '새로운 이름을 입력하세요', Title) then
  begin
    DAO.Edit(TTest(ListViewTest.Selected.Data).Idx,Title);
    PrintListView;
  end;
end;

procedure TfrMain.FormCreate(Sender: TObject);
begin
  DAO := TDAOTest.Create;

//  Application.CreateForm(TfrListening, frListening);

  ListeningFormWindow := TfrListening.Create(nil);
  ListeningFormWindow.Parent := tsListening;
  ListeningFormWindow.Show;

  ReadingFormWindow := TfrReading.Create(nil);
  ReadingFormWindow.Parent := tsReading;
  ReadingFormWindow.Show;

  PrintListView;
end;

procedure TfrMain.FormDestroy(Sender: TObject);
begin
  DAO.Free;
  TestInfo.Free;
end;

procedure TfrMain.ListViewTestSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if Selected then
  begin
    ListeningFormWindow.DefListening(TTest(Item.Data));
    ReadingFormWindow.SetReadingIndex(TTest(Item.Data));
  end
  else
  begin
    exit;
  end;
end;

procedure TfrMain.PrintListView;
var
  I: Integer;
  ListItem: TListItem;
begin
  FreeAndNil(TestInfo);
  TestInfo := DAO.GetList;

  ListViewTest.Clear;
  for I := 0 to TestInfo.Count - 1 do
  begin
    ListItem := ListViewTest.Items.Add;
    ListItem.Caption := TestInfo.Items[I].Title;
    ListItem.Data := TestInfo.Items[I];
  end;
end;

end.
