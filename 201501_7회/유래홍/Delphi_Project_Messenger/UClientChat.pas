unit UClientChat;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls,
  FMX.ListView, DBXJSON, System.JSON, Data.DB, Datasnap.DBClient, FMX.Layouts,  FMX.Objects,
  FMX.ListBox;

type
  TChatForm = class(TForm)
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    StyleBook1: TStyleBook;
    VSB: TVertScrollBox;

    procedure FormActivate(Sender: TObject);
    procedure FormFocusChanged(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SetRid(roomid:string);
    procedure Button1Click(Sender: TObject);
    procedure AddMessageOnChatFormLeft(id,msg,time: string; image: Timage);
    procedure AddMessageOnChatFormRight(id,msg,time: string; image: Timage);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    Rid: String;
  end;

  TChatCallback = class(TDBXCallback)
    public
      constructor Create;
      function Execute(Const arg:TJSONValue): TJSONValue; override;
    end;

var
  ChatForm: TChatForm;

implementation

{$R *.fmx}



uses ClientDataUnit, UClientMain, UClientProxy;

type
  TMyListItem = class(TListViewItem)
  public
    myText: String;
  end;



procedure TChatForm.AddMessageOnChatFormLeft(id,msg,time: string; image: Timage);
var
  CR: TCalloutRectangle;
  Main, Side, Top, Body : TPanel;
  L, IDText, TimeText: TText;
  TmpImg: TImage;
begin
  Main := TPanel.Create(self);
 // Main.Parent := VSB;
  Main.Align := TAlignLayout.Top;
  Main.Height := 75;

  Body := TPanel.Create(self);
  Body.Parent := Main;
  Body.Align := TAlignLayout.Client;

  Top := TPanel.Create(self);
  Top.Parent := Body;
  Top.Align := TAlignLayout.Top;
  Top.Height := 20;

  Side := TPanel.Create(self);
  Side.Parent := Body;
  Side.Align := TAlignLayout.client;
  Side.width := 70;

  CR := TCalloutRectangle.Create(Self);
  CR.Parent := Side;
  CR.Align := TAlignLayout.client;
  CR.CalloutPosition := TCalloutPosition.cpleft;
  CR.Margins.Top := 5;
  CR.Margins.Bottom := 5;
  CR.Margins.Right := 5;
  CR.Width := 60;
  CR.Height := 50;

  IDText := TText.Create(Self);
  IDText.Parent := top;
  IDText.Align := TAlignLayout.left;
  IDText.Text := id;
  IDText.Margins.Left := 5;
  IDText.Margins.Right := 5;

  TimeText := TText.Create(Self);
  TimeText.Parent := Body;
  TimeText.Align := TAlignLayout.right;
  TimeText.Text := time;
  TimeText.Margins.Left := 5;
  TimeText.Margins.Right := 5;

  L := TText.Create(Self);
  L.Parent := CR;
  L.Align := TAlignLayout.Client;
  L.Text := msg;
  L.Margins.Left := 15;
  L.Margins.Right := 5;
  L.Width := CR.Width-20;

  L.WordWrap := True;
  L.AutoSize := True;
  //L.OnPaint := 'aa';

  TmpImg := TImage.Create(Self);
  TmpImg.Bitmap := image.Bitmap;
  TmpImg.Parent := Main;
  TmpImg.Margins.Top := 5;
  TmpImg.Margins.Bottom := 5;
  TmpImg.Margins.Left := 5;
  TmpImg.Margins.Right := 5;
  TmpImg.Align := TAlignLayout.Left;
  TmpImg.Width := 75;

    Main.Parent := VSB;

end;

procedure TChatForm.AddMessageOnChatFormRight(id, msg, time: string;
  image: Timage);
var
  CR: TCalloutRectangle;
  Main, Side, Top, Body : TPanel;
  L, IDText, TimeText: TText;
  TmpImg: TImage;
begin
  Main := TPanel.Create(self);

  Main.Align := TAlignLayout.Top;
  Main.Height := 75;

  Body := TPanel.Create(self);
  Body.Parent := Main;
  Body.Align := TAlignLayout.Client;

  Top := TPanel.Create(self);
  Top.Parent := Body;
  Top.Align := TAlignLayout.Top;
  Top.Height := 20;

  Side := TPanel.Create(self);
  Side.Parent := Body;
  Side.Align := TAlignLayout.client;
  Side.width := 70;

  CR := TCalloutRectangle.Create(Self);
  CR.Parent := Side;
  CR.Align := TAlignLayout.client;
  CR.CalloutPosition := TCalloutPosition.cpright;
  CR.Margins.Top := 5;
  CR.Margins.Bottom := 5;
  CR.Margins.Right := 5;
  CR.Width := 60;
  CR.Height := 50;

  IDText := TText.Create(Self);
  IDText.Parent := top;
  IDText.Align := TAlignLayout.right;
  IDText.Text := id;
  IDText.Margins.Left := 5;
  IDText.Margins.Right := 5;

  TimeText := TText.Create(Self);
  TimeText.Parent := Body;
  TimeText.Align := TAlignLayout.left;
  TimeText.Text := time;
  TimeText.Margins.Left := 5;
  TimeText.Margins.Right := 5;

  L := TText.Create(Self);
  L.Parent := CR;
  L.Align := TAlignLayout.Client;
  L.Text := msg;
  L.Margins.Left := 15;
  L.Margins.Right := 5;
  L.Width := CR.Width-20;

  L.WordWrap := True;
  L.AutoSize := True;
  //L.OnPaint := 'aa';

  TmpImg := TImage.Create(Self);
  TmpImg.Bitmap := image.Bitmap;
  TmpImg.Parent := Main;
  TmpImg.Margins.Top := 5;
  TmpImg.Margins.Bottom := 5;
  TmpImg.Margins.Left := 5;
  TmpImg.Margins.Right := 5;
  TmpImg.Align := TAlignLayout.right;
  TmpImg.Width := 75;


    Main.Parent := VSB;


end;

procedure TChatForm.Button1Click(Sender: TObject);
begin
  ChatForm.Visible := false;
end;

procedure TChatForm.Button2Click(Sender: TObject);
var
  sendSuccess: boolean;
begin
    DM.SqlServerMethod1.close;
    DM.SqlServerMethod1.Params[0].AsString := rid;
    DM.SqlServerMethod1.Params[1].AsString := MainForm.ComboEdit1.Text;
    DM.SqlServerMethod1.Params[2].AsString := edit1.Text;
    DM.SqlServerMethod1.Params[3].AsBoolean := sendSuccess;
    DM.SqlServerMethod1.ExecuteMethod;
    if not sendSuccess then
      showMessage('메세지 전송 실패. 네트워크 확인 바람');
    ChatForm.VSB.Content.DeleteChildren;
    ChatForm.VSB.Repaint;
    DM.Select_ChatRoom(chatForm.rid);
end;

procedure TChatForm.Button3Click(Sender: TObject);
begin
  VSB.Repaint;
end;

procedure TChatForm.FormActivate(Sender: TObject);
begin
      ChatForm.VSB.Content.DeleteChildren;
    ChatForm.VSB.Repaint;
  DM.Select_ChatRoom(rid);
end;

procedure TChatForm.FormFocusChanged(Sender: TObject);
begin
  //Dm.Select_ChatRoom('R000001');
end;

procedure TChatForm.SetRid(roomid: string);
begin
  Rid := roomid;
end;

{ TChatCallback }

constructor TChatCallback.Create;
begin

end;

function TChatCallback.Execute(const arg: TJSONValue): TJSONValue;
var
  MessageStr :String;
  subI: TListViewItem;
begin
  Result := TJSONTrue.Create;
  if arg is TJSONString then
    MessageStr := TJSONString(arg).Value;
    TThread.Synchronize(Nil,
            procedure
        begin
          if chatForm.visible then
          begin
            ChatForm.VSB.Content.DeleteChildren;
            DM.Select_ChatRoom(chatForm.rid);
            end
          else
            showMessage(MessageStr);


          ChatForm.edit1.Text := '';

        end);

end;

end.
