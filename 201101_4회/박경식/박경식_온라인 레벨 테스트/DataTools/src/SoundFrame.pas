unit SoundFrame;

interface

uses
  TestClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DSPack, Buttons, FolderDialog;

type
  TfrmSound = class(TFrame)
    Panelplayer: TPanel;
    sbtStop: TSpeedButton;
    lblTime: TLabel;
    sbtPlay: TSpeedButton;
    sbtPause: TSpeedButton;
    TrackBar: TDSTrackBar;
    MemoSoundUrl: TMemo;
    PanelSountInOut: TPanel;
    btSoundUpload: TButton;
    btSoundDown: TButton;
    Panel1: TPanel;
    lbSound: TLabel;
    pnDirSelect: TPanel;
    Label1: TLabel;
    edDir: TEdit;
    btDir: TButton;
    FolderDialog1: TFolderDialog;
    OpenDialog1: TOpenDialog;
    procedure btDirClick(Sender: TObject);
    procedure btSoundDownClick(Sender: TObject);
    procedure btSoundUploadClick(Sender: TObject);
  private
    FQuestion: TQuiz;
    FTest: TTest;
    FPart: TQuizPart;
    { Private declarations }
    function CheckQuestion: Boolean;
    function GetSourcFileName: String;
    function GetDstDir: String;
    function DstFileName: string;
    function FileName: string;
  public
    { Public declarations }
    procedure afterConstruction; override;
    property SelectedQuestion : TQuiz read FQuestion write FQuestion;
    property Test: TTest read FTest write FTest;
    property Part: TQuizPart read FPart write FPart;
  end;

implementation

uses
  uDownLoad;
{$R *.dfm}

procedure TfrmSound.btDirClick(Sender: TObject);
begin
  SHowmessage(GetSourcFileName);
//  if FolderDialog1.Execute then
//    edDir.Text := FolderDialog1.Directory;
end;

procedure TfrmSound.btSoundDownClick(Sender: TObject);
begin
  if CheckQuestion then exit;
  GetFTP.DownloadFile(DEFAULT_DIR + GetSourcFileName, Trim(edDir.Text), FileName, FTP_OVERWRITE );
end;

procedure TfrmSound.btSoundUploadClick(Sender: TObject);
begin
  if CheckQuestion then exit;
  if OpenDialog1.Execute then
  begin
    GetFTP.UploadFile(OpenDialog1.FileName, DEFAULT_DIR + GetDstDir, DstFileName, FTP_OVERWRITE  );
  end;
end;

function TfrmSound.CheckQuestion: Boolean;
begin
  Result := (FQuestion.QuizNumber < 1) or (FPart = qpnone) or (FTest = nil);
end;

function TfrmSound.DstFileName: string;
begin
  Result := format('%d.mp3', [FQuestion.QuizNumber]);
end;

function TfrmSound.FileName: string;
begin
  Result := format('%d', [FQuestion.QuizNumber]);
end;

function TfrmSound.GetDstDir: String;
begin
  Result := format('%s/%s/', [FTest.Title, PartName[ Integer(FPart) ]]);
end;

function TfrmSound.GetSourcFileName: String;
begin
  Result := format('%s/%s/%d.mp3', [FTest.Title, PartName[ Integer(FPart) ], FQuestion.QuizNumber]);
end;

procedure TfrmSound.afterConstruction;
begin
  inherited;
  edDir.Text := ExtractFileDir(Application.ExeName);
  FPart := qpnone;
end;

end.
