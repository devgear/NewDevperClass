unit uMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IdGlobal;

type
  TfmMessage = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    Image3: TImage;
    Panel3: TPanel;
    Memo_Message: TMemo;
    Edit_ReceiveName: TEdit;
    Panel4: TPanel;
    Label_Name: TLabel;
    Label_LoginCheck: TLabel;
    Shape1: TShape;
    button_Send: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure button_SendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FSendName: String;
    FReceiveName: String;
    procedure SetSendName(const Value: String);
    procedure SetReceiveName(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property  SendName : String read FSendName write SetSendName;
    property  ReceiveName : String read FReceiveName write SetReceiveName;
  end;

var
  fmMessage: TfmMessage;

implementation

uses Connected_Emp_Info, uDMclient, MessageProtocol, FormShape;

{$R *.dfm}

procedure TfmMessage.button_SendClick(Sender: TObject);
var
  Buf : TIdBytes;
  stTemp : String;
begin
  with DMClient.IdTCPClient1 do
  begin
    if MyInfo.Rank = '°¨µ¶' then
      MyInfo.MsgProtocol := mpAll;
    MyInfo.MsgProtocol := mpMsg;
    IOHandler.Writeln(Myinfo.SendMsg(Memo_Message.Text), enUTF8);
    Memo_Message.Text := '';
  end;
  fmMessage.Hide;
  fmMessage.Free;
  {try
    DMClient.IdTCPClient1.Connect;
    with SendMsg do
    begin
      Msg      := Memo_Message.Text;
      SendName := Edit_SendName.Text;
      Recivecode := 1231;
    end;
    //DMClient.IdTCPClient1.Socket.Write('asdasdasd');

    Buf := RawtoBytes(SendMsg, SizeOf(TSendMsg));
    DMClient.IdTCPClient1.IOHandler.Write(Buf);

  finally
    DMClient.IdTCPClient1.Disconnect;
  end;}
end;

procedure TfmMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMessage.FormCreate(Sender: TObject);
begin
  Edit_ReceiveName.Text := ReceiveName;
end;

procedure TfmMessage.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if y < Panel3.Top then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND, $F012, 0);
  end;
end;

procedure TfmMessage.SetReceiveName(const Value: String);
begin
  FReceiveName := Value;
  Edit_ReceiveName.Text := Value;
end;

procedure TfmMessage.SetSendName(const Value: String);
begin
  FSendName := Value;
end;

procedure TfmMessage.SpeedButton1Click(Sender: TObject);
begin
   close;
end;

procedure TfmMessage.Timer1Timer(Sender: TObject);
begin
  //
end;

end.
