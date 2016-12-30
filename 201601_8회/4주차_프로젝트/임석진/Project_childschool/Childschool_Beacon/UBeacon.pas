unit UBeacon;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Beacon,
  System.Beacon.Components, FMX.StdCtrls, FMX.Edit, FMX.ListBox, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Media, System.IOUtils, IPPeerClient,
  IPPeerServer, System.Tether.Manager, System.Tether.AppProfile, FMX.Ani,
  FMX.Objects;
  //FMX.Helpers.Android, Androidapi.JNI.GraphicsContentViewText, Androidapi.JNI.Toast

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    Switch1: TSwitch;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    Edit1: TEdit;
    Edit2: TEdit;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    Beacon1: TBeacon;
    Timer1: TTimer;
    MediaPlayer1: TMediaPlayer;
    TetheringManager1: TTetheringManager;
    ListBoxGroupHeader3: TListBoxGroupHeader;
    ListBoxItem6: TListBoxItem;
    LogText: TLabel;
    Button1: TButton;
    TetheringAppProfile1: TTetheringAppProfile;
    Rectangle1: TRectangle;
    FloatAnimation1: TFloatAnimation;
    StyleBook1: TStyleBook;
    procedure Switch1Switch(Sender: TObject);
    procedure Beacon1BeaconEnter(const Sender: TObject; const ABeacon: IBeacon;
      const CurrentBeaconList: TBeaconList);
    procedure Beacon1BeaconExit(const Sender: TObject; const ABeacon: IBeacon;
      const CurrentBeaconList: TBeaconList);
    procedure Timer1Timer(Sender: TObject);
    procedure TetheringManager1EndManagersDiscovery(const Sender: TObject;
      const ARemoteManagers: TTetheringManagerInfoList);
    procedure TetheringManager1EndProfilesDiscovery(const Sender: TObject;
      const ARemoteProfiles: TTetheringProfileInfoList);
    procedure TetheringManager1RequestManagerPassword(const Sender: TObject;
      const ARemoteIdentifier: string; var Password: string);
    procedure TetheringManager1RemoteManagerShutdown(const Sender: TObject;
      const AManagerIdentifier: string);
    procedure TetheringAppProfile1Disconnect(const Sender: TObject;
      const AProfileInfo: TTetheringProfileInfo);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure StartSiren;
    procedure StopSiren;

  public
    { Public declarations }
        FBeacon: IBeacon;
        FIsWarning: Boolean;
        FDangerAreaStaySecs, FDangerAreaOutSecs : integer;
        PForm, PTo : TPointF;
        ResPath, DocPath, TmpPath : string;
        UserName : string;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Beacon1BeaconEnter(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
begin
  FBeacon := ABeacon;
end;

procedure TForm1.Beacon1BeaconExit(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
begin
  FBeacon := nil;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i : integer;
begin
  if TetheringManager1.PairedManagers.Count > 0 then // 연결 되었을때는  연결 종료
  begin
    for i := TetheringManager1.PairedManagers.Count - 1 downto 0 do
        TetheringManager1.UnPairManager (TetheringManager1.PairedManagers[i].ManagerIdentifier);
  end

  else  // 연결 안되었을때 연결 시도
  begin
    LogText.Text := '테더링 서버 매니저 검색..';
    TetheringManager1.DiscoverManagers; // 매니저 검색 시작
  end;
end;

procedure TForm1.StartSiren;
begin
//  MediaPlayer1.FileName := TPath.Combine(TPath.GetDocumentsPath, 'alert.mp3');
  MediaPlayer1.Play;
end;

procedure TForm1.StopSiren;
begin
  MediaPlayer1.Stop;
end;

procedure TForm1.Switch1Switch(Sender: TObject);
begin
  Beacon1.Enabled := Switch1.IsChecked;
  Timer1.Enabled := Switch1.IsChecked;
  if Beacon1.Enabled = True then
    ProgressBar1.Max := StrToInt(Edit1.Text)
  else if Timer1.Enabled = False then
    FIsWarning := False;
end;

procedure TForm1.TetheringAppProfile1Disconnect(const Sender: TObject;
  const AProfileInfo: TTetheringProfileInfo);
begin
  LogText.Text := '학원과 연결이 종료됨';
end;

procedure TForm1.TetheringManager1EndManagersDiscovery(const Sender: TObject;
  const ARemoteManagers: TTetheringManagerInfoList);
var
  rManagerInfo: TTetheringManagerInfo;
begin
  LogText.Text := '매니저 검색됨. 프로파일 연결시도..';
  for rManagerInfo in ARemoteManagers do
  begin
    LogText.Text := rManagerInfo.ConnectionString;
    LogText.TagString := LogText.Text;
    if rManagerInfo.ManagerText = 'TSManager' then
       TetheringManager1.PairManager( rManagerInfo );    // 프로파일 검색 시도
   end;
end;

procedure TForm1.TetheringManager1EndProfilesDiscovery(const Sender: TObject;
  const ARemoteProfiles: TTetheringProfileInfoList);
var
  rProfile: TTetheringProfileInfo;
begin
  for rProfile in ARemoteProfiles do
  begin
    if rProfile.ProfileText = 'TSProfile' then
    begin
    if TetheringAppProfile1.Connect( TetheringManager1.RemoteProfiles[0] ) then // 특정프로파일과 연결
//     if TetheringAppProfile1.Connect( rProfile ) then  // 모든 프로파일과 연결
      begin
        LogText.Text :=  '어린이집과 연결됨';
      end;
    end;
  end;
end;

procedure TForm1.TetheringManager1RemoteManagerShutdown(const Sender: TObject;
  const AManagerIdentifier: string);
begin
  LogText.Text := '학원과 연결이종료됨' ;
end;

procedure TForm1.TetheringManager1RequestManagerPassword(const Sender: TObject;
  const ARemoteIdentifier: string; var Password: string);
begin
  Password := '1234';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  InDangerArea : Boolean;
begin
  if Assigned(FBeacon) then
  begin
    InDangerArea := FBeacon.Distance >= StrToInt(Edit1.Text);

    if not FIsWarning then
    begin
      if InDangerArea then
        Inc(FDangerAreaStaySecs)
      else
        FDangerAreaStaySecs:=0;

      if FDangerAreaStaySecs>=StrToInt(Edit2.Text) then
      begin
 //     StartSiren;
      FloatAnimation1.Enabled := True;
      TetheringAppProfile1.SendString(TetheringManager1.RemoteProfiles.First, 'CLIENT_STRING', '아이가 범위를 이탈했습니다.' );
      FDangerAreaStaySecs:=0;
      FIsWarning := True;
      end;
    end
    else if FIsWarning then
    begin
      if not InDangerArea then
        Inc(FDangerAreaOutSecs)
      else
        FDangerAreaOutSecs:=0;
      if FDangerAreaOutSecs >=3 then
      begin
        FIsWarning := False;
        FloatAnimation1.Enabled := False;
//        StopSiren;
        FDangerAreaOutSecs:= 0;
      end;
    end;
    label2.Text := '아이와의 거리' + FBeacon.Distance.ToString+'M';
  end;

end;

end.
