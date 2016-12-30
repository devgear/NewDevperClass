unit uServerMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdContext, IdBaseComponent, IdComponent, IdCustomTCPServer,
  IdTCPServer, IdScheduler, IdSchedulerOfThread, IdSchedulerOfThreadDefault,
  IdGlobal, StdCtrls, ExtCtrls, PlatformDefaultStyleActnCtrls, ActnList, ActnMan, DB,
  ComCtrls;

type
  Tfm_Main = class(TForm)
    IdTCPServer1: TIdTCPServer;
    ActionManager1: TActionManager;
    Panel1: TPanel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Edit_Name: TEdit;
    Edit_Code: TEdit;
    Edit_Dept: TEdit;
    Edit_Class: TEdit;
    Edit_Entering_Date: TEdit;
    Edit_Region: TEdit;
    Label7: TLabel;
    CategoryPanelGroup2: TCategoryPanelGroup;
    Memo_Log: TMemo;
    ListView_Emp_List: TTreeView;
    procedure IdTCPServer1Execute(AContext: TIdContext);
    procedure IdTCPServer1Connect(AContext: TIdContext);
    procedure IdTCPServer1Disconnect(AContext: TIdContext);
    procedure FormCreate(Sender: TObject);
    procedure ListView_Emp_ListClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Init_List_View;
    procedure DisPlay_Log(Msg : String);
    procedure doLogin(ACOntext : TIdContext);
    procedure doMessage(AContext : TIdContext);
    procedure doTalk(AContext : TIdContext);
    procedure doAllMessage(AContext : TIdCOntext);
  public
    { Public declarations }
  end;
type
  Emp_Info = record
    Code : Integer;
    Name : String;
    dept : String;
    ClassName : String;
    Work_Region : String;
    Entering_Date : TDate;
    ID_PIC : TImage;
  end;
  Emp_Info_prt = ^Emp_Info;



var
  fm_Main: Tfm_Main;
  //SendMsg : TSendMsg;
  Emp_prt  : Emp_Info_prt;
implementation

uses ServerMethodsUnit, ServerContainerUnit, MessagePaser;
type
  TClientInfo = Class(TStringParser)
  public
    UserID : Integer;
  End;
{$R *.dfm}


procedure Tfm_Main.DisPlay_Log(Msg : String); //로그 표시하는 함수
var
  Temp : String;
begin


  Temp := '[' + DateTimeToStr(Now) + '] ' + StringReplace(Msg, ';', '_', [rfReplaceAll]);
  if Memo_Log.Lines.Count > 100 then
    Memo_Log.Lines.Clear;
  Memo_Log.Lines.Append(Temp);
end;

procedure Tfm_Main.doAllMessage(AContext: TIdCOntext);   //해당 프로토콜로 구별해서 doMEssage함수에서 처리해도 됨..
var
  List : TList;
  Client : TClientInfo;
  i      : Integer;
  ClientTemp : TClientInfo; //메세질 받은 클라이언트..( 아큐먼트로 넘어온 Acontext의 클래스를 담을임시 클래스..)
begin
  List := IdTCPServer1.Contexts.LockList;
  ClientTemp := TClientinfo(AContext.Data);
  try
    for i := 0 to List.Count-1 do
    begin
      Client := Pointer(TidContext(List.Items[i]).Data);
      if Client = nil then Continue;
      TidCOntext(List.Items[i]).Connection.IOHandler.WriteLn(ClientTemp.Text, enUTF8);
    end;
  finally
    IdTCPServer1.Contexts.UnlockList;
  end;

end;

procedure Tfm_Main.doLogin(ACOntext: TIdContext); //로그인시..로그인표시는 전송문자 앞1자리 프로토콜 코드로 구분
begin
  TClientInfo(Acontext.Data).UserID := StrToInt(TClientInfo(Acontext.Data).SendCode);
  DisPlay_Log(TClientInfo(Acontext.Data).Text);
end;

procedure Tfm_Main.doMessage(AContext: TIdContext);
var
  List : TList;
  Client : TClientInfo;
  i      : Integer;
  ClientTemp : TClientInfo; //메세질 받은 클라이언트..( 아큐먼트로 넘어온 Acontext의 클래스를 담을임시 클래스..)
begin
  List := IdTCPServer1.Contexts.LockList;
  ClientTemp := TClientinfo(AContext.Data);
  try
    for i := 0 to List.Count-1 do
    begin
      Client := Pointer(TidContext(List.Items[i]).Data);
      if Client = nil then Continue;
      if Client.UserID <> StrToInt(ClientTemp.ReceiveCode) then Continue
      else begin
        TidCOntext(List.Items[i]).Connection.IOHandler.WriteLn(ClientTemp.Text, enUTF8);
        DisPlay_Log(ClientTemp.Text);
      end;
    end;

  finally
    IdTCPServer1.Contexts.UnlockList;
  end;

end;

procedure Tfm_Main.doTalk(AContext: TIdContext);
begin
//
end;

procedure Tfm_Main.FormClose(Sender: TObject; var Action: TCloseAction);  // 리스트뷰 구조체 해제 작업..필수!
var
  i : Integer;
begin
  for I := 0 to ListView_Emp_List.Items.Count-1 do
    if ListView_Emp_List.Items[i].Data <> nil then
      Dispose(Emp_Info_prt(ListView_Emp_List.Items[i].Data));
  Hide;
  Action := caFree;
end;

procedure Tfm_Main.FormCreate(Sender: TObject);
begin
  Init_List_View;
end;

procedure Tfm_Main.IdTCPServer1Connect(AContext: TIdContext);  //로그인시 개별 쓰레드 생성..
var
  Client : TClientInfo;
begin
  Client := TClientInfo.Create;
  AContext.Data := Client;
end;

procedure Tfm_Main.IdTCPServer1Disconnect(AContext: TIdContext);
var
  Client :TClientInfo;
begin
  AContext.Connection.Disconnect;
  Client.Free;
end;

procedure Tfm_Main.IdTCPServer1Execute(AContext: TIdContext);
var
  stTemp : String;
  List : TList;
  Loop : Integer;
  Buf : TIdBytes;
  iFlag : integer;
begin

  stTemp := ACOntext.Connection.IOHandler.ReadLn(enUTF8);  //문자변환 옵션 안주면 한글 꺠짐..ㅡㅡ;;
  TClientInfo(Acontext.Data).Text := stTemp; //
  iFlag := StrToInt(stTemp[1]);

  case iFlag of   //iFlag는 메세지 프로토콜;;
  0 : doLogin(AContext);
  7 : doAllMessage(AContext);
  8 : doMessage(AContext);
  9 : doTalk(AContext);
  end;


  //stTemp := stTemp + '서버다!';
  //Memo_Log.Lines.Add(stTemp);

(*
    List := IdTCPServer1.Contexts.LockList;
    Try
      for Loop := 0 to List.Count-1 do

        TIdContext(List.Items[Loop]).Connection.IOHandler.WriteLn(stTemp, enUTF8);
    Finally
      IdTCPServer1.Contexts.UnlockList;
    End;


*)
  {with AContext.Connection.IOHandler do
  begin
    CheckForDataOnSource(10);
    if not InputBufferIsEmpty then
    begin
      InputBuffer.ExtractToBytes(buf);
      BytesToRaw(buf, SendMsg, sizeof(TSendMsg));
      Memo1.Lines.Add(IntToStr(sendMsg.Recivecode));
      Memo1.Lines.Add(SendMsg.Msg);
    end;
  end;  }

  {
  AContext.Connection.IOHandler.ReadBytes(buf, SizeOf(SendMsg));
  BytesToRaw(Buf, SendMsg, sizeof(SendMsg));
  stTemp := AContext.Connection.Socket.ReadLn(nil);
  MEmo1.Lines.Add('TExt');
  MEmo1.Lines.Add(SendMsg.Msg);
  Memo1.Lines.Add(SendMsg.SendName);
  }
end;

//리스트뷰에 직원 목록을 부서별로 뿌려줌
procedure Tfm_Main.Init_List_View;
var
  Emp_Info_DataSet : TDataSet;
  wk_dept, wk_Name : String;
  serverMethod : TServerMethods1;
  stream : TStream;
begin
  try
    serverMethod := TServerMethods1.create(nil);
    Emp_Info_DataSet := serverMethod.Get_Emp_Info;

    with  Emp_Info_DataSet do
    begin
      while not eof  do
      begin
        new(Emp_prt);
        if wk_dept <> FieldByName('DEPT').AsString then
          ListView_Emp_List.Selected := ListView_Emp_List.Items.Add(ListView_Emp_List.Selected, fieldByName('DEPT').AsString);

        // emp 구조체에 개인 정보 넣음
        Emp_Prt^.ID_PIC := TImage.Create(nil);
        Emp_Prt^.ID_PIC.Width  := 90;
        Emp_Prt^.ID_PIC.Height := 110;

        Emp_prt^.Code           := FieldByName('code').AsInteger;
        Emp_prt^.Name           := FieldByName('NAME').AsString;
        Emp_prt^.dept           := FieldByName('DEPT').AsString;
        Emp_prt^.ClassName      := FieldByName('Class').AsString;
        Emp_Prt^.Work_Region    := FieldByName('WORK_REGION').AsString;
        Emp_prt^.Entering_Date  := FieldByName('ENTERING_DATE').AsDateTime;
        stream := CreateBlobStream(FieldByName('ID_PIC'), bmRead);
        Emp_Prt^.ID_PIC.Picture.Bitmap.LoadFromStream(stream);
        wk_Name := FieldByName('NAME').AsString + ' [' + Emp_prt^.ClassName + ']';
        ListView_Emp_List.Items.AddChildObject(ListView_Emp_List.selected, wk_Name, Emp_prt);
        wk_dept := FieldByName('DEPT').AsString;
        Next;
      end;
    end;
  finally
    serverMethod.Free;
    stream.Free;
  end;
end;

//클릭될떄 마다 정보를 오른쪽 창에 표시
procedure Tfm_Main.ListView_Emp_ListClick(Sender: TObject);
begin

  if not ListView_Emp_List.Selected.HasChildren then
  begin
    Image1.Picture.Bitmap :=  Emp_Info_prt( ListView_Emp_List.Selected.Data )^.ID_PIC.Picture.Bitmap;
    Edit_Name.Text := Emp_Info_prt(ListView_Emp_List.Selected.data)^.Name;
    Edit_Code.Text := IntToStr(Emp_Info_prt(ListView_Emp_List.Selected.Data)^.Code);
    Edit_Dept.Text := Emp_Info_Prt(ListView_Emp_List.Selected.data)^.dept;
    Edit_Class.Text := Emp_Info_prt(ListView_Emp_List.Selected.Data)^.ClassName;
    Edit_Region.Text := Emp_Info_Prt(ListView_Emp_List.Selected.Data)^.Work_Region;
    Edit_Entering_Date.text := DateToStr(Emp_Info_prt(ListView_emp_List.Selected.Data)^.Entering_Date);
  end;

end;


end.
