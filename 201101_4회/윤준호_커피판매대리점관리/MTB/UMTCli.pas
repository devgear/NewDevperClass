unit UMTCli;

interface

uses
  ItemSQLUnit,
  Generics.collections,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ImgList, ComCtrls,
  DBCtrls, Grids, StdCtrls, ExtCtrls, ToolWin, ActnCtrls, ActnMenus, SqlExpr,
  DBGrids, DBTables, DB, FMTBcd;

type
  TClientForm = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    AC_Exit: TAction;
    AC_Items: TAction;
    AC_Cost: TAction;
    AC_Message: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBImage2: TDBImage;
    Panel6: TPanel;
    DBImage3: TDBImage;
    Panel7: TPanel;
    DBImage4: TDBImage;
    Panel8: TPanel;
    DBImage5: TDBImage;
    Panel9: TPanel;
    DBImage6: TDBImage;
    Panel10: TPanel;
    DBImage7: TDBImage;
    Panel11: TPanel;
    DBImage8: TDBImage;
    StringGrid1: TStringGrid;
    Button1: TButton;
    DBImage1: TDBImage;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure AC_ItemsExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AC_ExitExecute(Sender: TObject);
    procedure DBImage2Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AC_MessageExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure Img;
  public
    { Public declarations }
  end;

var
  ClientForm: TClientForm;

implementation

uses UItemForm, ClientModuleUnit1, JPEG, ClientClassesUnit1, MailForm;

var
  Gae : integer = 1;      //StringGrid 개수 초기화
  count : integer = 1;    //StringGrid 컬럼 증가
  STag : integer;
{$R *.dfm}

//상태 -> 종료시 폼 종료
procedure TClientForm.AC_ExitExecute(Sender: TObject);
begin
  Application.Terminate;
end;

//상품관리 폼 열기
procedure TClientForm.AC_ItemsExecute(Sender: TObject);
begin
  ItemForm := TItemForm.Create(Application);
  ItemForm.Show;
end;

//메일 폼 열기
procedure TClientForm.AC_MessageExecute(Sender: TObject);
begin
  Mail_Form := TMail_Form.Create(Application);
  Mail_Form.Show;
end;

//StringGrid 입력 값 History입력, StringGrid 초기화
procedure TClientForm.Button1Click(Sender: TObject);
var
  a, b : integer;
  DTag : integer;
begin
  for a := 0 to 3 do
  begin
    for b := 1 to StringGrid1.RowCount -1 do
    begin
      with ClientModule1.SqlServerMethod1 do
      begin

      end;
      StringGrid1.Cells[a,b] := '';
//      Bun := 0;  Gae := 0;  Count := 0;
    end;
  end;
end;

//DB로 호출된 이미지 클릭시 StringGrid로 입력
procedure TClientForm.DBImage2Click(Sender: TObject);
var
  i : integer;
  NumStr, CoStr, IName, SeName : string;
  begin
//  Inc(Bun);         //값 자동 증가
  STag := (Sender as TDBImage).Tag;
  if ClientModule1.Item.Locate('I_ID', STag, []) then
  begin


    IName := ClientModule1.Item.FieldByName('I_NAME').AsString;

//그리드가 빈값이면 입력하고 빈값이 아니라면 그리드에 저장된 상품명을 비교하여
//없을때 입력, 있을때는 상품개수(CoStr)을 증가
    for i := 1 to StringGrid1.RowCount  do
    begin
      if StringGrid1.Cells[1,i] = ClientModule1.Item.FieldByName('I_NAME').AsString then
      begin  // 상품수 추가 작업
        StringGrid1.Cells[0,i] := inttostr(i);
        StringGrid1.Cells[1,i] := IName;
        StringGrid1.Cells[2,i] := ClientModule1.Item.FieldByName('I_COST').AsString + '원';
        StringGrid1.Cells[3,i] := inttostr(Strtoint(StringGrid1.Cells[3,i]) + 1);
        exit;
      end
      else
        begin
          if i <> StringGrid1.RowCount  then Continue;
          StringGrid1.RowCount :=StringGrid1.RowCount+1;
          Costr := '1';
          StringGrid1.Cells[0,StringGrid1.RowCount-1] := InttoStr(StringGrid1.RowCount-1);
          StringGrid1.Cells[1,StringGrid1.RowCount-1] := IName;
          StringGrid1.Cells[2,StringGrid1.RowCount-1] := ClientModule1.Item.FieldByName('I_COST').AsString + '원';
          StringGrid1.Cells[3,StringGrid1.RowCount-1] := CoStr;
          count := count + 1;
          exit;
      end;
    end;
  end;
end;

//폼 Active시 DBimage 호출
procedure TClientForm.FormActivate(Sender: TObject);
begin
   Img;
end;

//폼 종료
procedure TClientForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

//StringGrid 초기화
procedure TClientForm.FormCreate(Sender: TObject);
var
  i:Byte;
begin
  With StringGrid1 do
  begin
//    RowCount := ClientModule1.Item.RecordCount + 2;
    Cells[0,0] := '번    호'; // 타이틀 명
    Cells[1,0] := '상 품 명';
    Cells[2,0] := '상품가격';
    Cells[3,0] := '상품개수';
  end;
end;

//DBImage 로딩
procedure TClientForm.Img;
var
  S:TField;
  Co : integer;
begin
//DBImage 로딩 반복문
//  j:=0;
//  while not ClientModule1.Item.Eof do
//  begin
//    ClientModule1.Item.Close;
//    ClientModule1.Item.Open;
//
//    for I := 0 to ClientForm.ComponentCount -1 do
//    begin
//      if (Components[i] is TDBImage) and ((Components[i] as TDBImage).Picture.Graphic = nil)  then
//      begin
//        TDBImage(Self.Components[i]).Picture.Assign(S);
//        j := j+ 1;
//        if j > 8 then exit;
//        break;
//      end;
//    end;
//    ClientModule1.Item.Next;
//  end;
//  if ((Components[Co] as TDBImage).Picture.Graphic = nil) then
//  begin
//    raise Exception.Create('상품이 등록되어 있지 않습니다.');
//  end
//  else
//    begin

//DBImage 로딩
    ClientModule1.Item.Close;
    ClientModule1.Item.Open;
    S:= ClientModule1.Item.FieldByName('I_IMAGE');
    DBImage1.Picture.Assign(S);
    DBImage1.Tag := ClientModule1.Item.FieldByName('I_ID').AsInteger;
    ClientModule1.Item.Next;
    DBImage2.Picture.Assign(S);
    DBImage2.Tag := ClientModule1.Item.FieldByName('I_ID').AsInteger;
    ClientModule1.Item.Next;
    DBImage3.Picture.Assign(S);
    DBImage3.Tag := ClientModule1.Item.FieldByName('I_ID').AsInteger;
    ClientModule1.Item.Next;
    DBImage4.Picture.Assign(S);
    DBImage4.Tag := ClientModule1.Item.FieldByName('I_ID').AsInteger;
    ClientModule1.Item.Next;
    DBImage5.Picture.Assign(S);
    DBImage5.Tag := ClientModule1.Item.FieldByName('I_ID').AsInteger;
    ClientModule1.Item.Next;
    DBImage6.Picture.Assign(S);
    DBImage6.Tag := ClientModule1.Item.FieldByName('I_ID').AsInteger;
    ClientModule1.Item.Next;
    DBImage7.Picture.Assign(S);
    DBImage7.Tag := ClientModule1.Item.FieldByName('I_ID').AsInteger;
    ClientModule1.Item.Next;
    DBImage8.Picture.Assign(S);
    DBImage8.Tag := ClientModule1.Item.FieldByName('I_ID').AsInteger;
//  end;
end;

//StringGrid 폰트 및 색상 설정
procedure TClientForm.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  pos:integer;
  oldalign :word;
  s:string;
begin
  s := stringgrid1.Cells[acol,arow];
  with stringgrid1.canvas do
  begin
    fillrect(rect);

    if arow = 0 then
    begin
       font.Size := font.Size + 4;
       font.Color := clblue;
       brush.Color := clyellow;
    end;

    if (ACol = 3) and (arow <>0)then
    begin
      font.Color := clred;
      font.Size := font.Size + 4;
      oldalign := settextalign(handle, ta_right);
      textrect(rect, rect.right, rect.Top+3, s);
      settextalign(handle, oldalign);
    end
    else
    begin
      pos := ((rect.right - rect.Left) - textwidth(s)) div 2;
      textrect(rect, rect.Left+pos, rect.Top+3, s);
    end;
  end;
end;

//Statusbar 타이머
procedure TClientForm.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := FormatDateTime('yyyy-mm-dd dddd hh:mm:ss am/pm', now);
end;

end.
