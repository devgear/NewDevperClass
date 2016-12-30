unit uDownLoad;

interface

uses
  Windows;

const
  FTP_ERROR = 0;
  FTP_OVERWRITE = 1;
  FTP_APPEND = 2;
  FTP_IGNORE = 3;

  FTP_NONE = 0;
  FTP_COMPLETED = 1;
  FTP_STOPED = 2;
  FTP_CANCELED = 3;

//  DEFAULT_DIR = '/data/prime_new/IK_LevelTest/Files/';
  DEFAULT_DIR = '/prime_new/IK_LevelTest/Files/';

type
  TFtpStatus = (fsNone, fsComplete, fsStoped, fsError);

  TFtpCompleteEvent = procedure(Downloading : Boolean; ftpResult: integer) of object;


  IFTP = interface
  ['{57FACC3D-9F38-440B-B0A2-65EF2128B959}']

    procedure DownloadFile(SrcFilename: string; DstPath: string;
      DstFilename: string; Option: Integer);
    procedure DownloadFiles(SrcFilenames: string; DstPath: string;
      Option: Integer; CreateSubDir : boolean = false; ExtractExt: boolean = true); overload;
    procedure DownloadFiles(SrcFilePath: string; DstPath: string;
      SearchType: Integer; Option: Integer; SrcExe : String = '*'; CreateSubDir : boolean = false;
      ExtractExt: Boolean = true); overload;


    procedure UploadFile(SrcFilename: string; DstPath: string;
      DstFilename: string; Option: Integer);
    procedure UploadFiles(SrcFilenames: string; DstPath: string;
      Option: Integer);

    function Connect : boolean;
    procedure Disconnet;

    function GetHost: string;
    function GetPassword: string;
    function GetPort: Integer;
    function GetUserId: string;
    procedure SetHost(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetPort(const Value: Integer);
    procedure SetUserId(const Value: string);

    function GetOnComplete: TFtpCompleteEvent;
    procedure SetOnComplte(const Value: TFtpCompleteEvent);

    property Host: string read GetHost write SetHost;
    property Port: Integer read GetPort write SetPort;
    property UserId: string read GetUserId write SetUserId;
    property Password: string read GetPassword write SetPassword;

    property OnCompleted : TFtpCompleteEvent read GetOnComplete write SetOnComplte;
  end;

  TGetFTPFunction = function () : IFTP;

function GetFTP : IFTP;

function FTPDownLoadFiles(Source, Dest, FileExt : String; overwrite : boolean;
   CreateSubDir : boolean = false; ExtractExt: boolean = true) : Boolean;

implementation

uses
  Dialogs,
  Sysutils;

function GetFTP : IFTP;
var
  FModule : Cardinal;
  FFunc : TGetFTPFunction;
begin
  FModule := LoadLibrary('PrimeFtp.dll');
  if FModule >= 32 then
  begin
    @FFunc := GetProcAddress(FModule, 'FTP');
    if @FFunc <> nil then
    begin
      Result :=  FFunc;
      Result.Host := '222.231.24.13';
      Result.Port := 2122;
      Result.UserId := 'prime';
      Result.Password := 'vmfkdla_1234';

      Result.Connect;
    end;
  end;
end;

function FTPDownLoadFiles(Source, Dest, FileExt : String; overwrite : boolean;
   CreateSubDir : boolean = false; ExtractExt: boolean = true) : Boolean;
var
  FTP :IFTP;
begin
  Result := false;
  FTP := GetFTP;

  if not ftp.Connect then
    raise Exception.Create('Server에 접속할수 없습니다');

  FTP.DownloadFiles(Source, Dest, 0, 1, FileExt, CreateSubDir, ExtractExt);
  Result := True;
end;

end.
