unit bike_repair_vcl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, MSHTML, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.OleCtrls,
  SHDocVw, // Window.webbrowser,
  Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tbike_vcl = class(TForm)
    btn_user_management: TButton;
    btn_repairman_management: TButton;
    btn_repairlist_management: TButton;
    WebBrowser1: TWebBrowser;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure btn_user_managementClick(Sender: TObject);
    procedure btn_repairman_managementClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_repairlist_managementClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    HTMLWindow2: IHTMLWindow2;
  public
    { Public declarations }
  end;

var
  bike_vcl: Tbike_vcl;
  position: integer = 0;
  hat: string;
  lng: string;

implementation

uses ActiveX, bike_dm, repair_list, repairman_management, user_managerment;

{$R *.dfm}

var
  i: string;

const
  HTMLStr: ANSIString =
  // 헤더
    '<!DOCTYPE html>' + '<html>' + '<head>' + '	<meta charset="utf8"/>' +
    '	<title>지도 시작</title>' + '</head>' + '<body>'
  // 지도를 표시할 div
    + '	<div id="map" style="width:680px;height:280px;"></div>' +
    '	<script type="text/javascript" src="http://apis.daum.net/maps/maps3.js?apikey=c5690c5d8073feabb613f51fad71f598">'
    + '</script>' + '	<script>' +
    '		var mapcontainer = document.getElementById(''map'');' +
    '		var mapoptions = {' +
    '			center: new daum.maps.LatLng(37.5214314, 127.01937599999996),' +
    '			level: 6' + '		};' +
    'var map = new daum.maps.Map(mapcontainer, mapoptions);'

  // 마커 표시
  // +'
    + 'var markerPosition  = new daum.maps.LatLng(37.5214314, 127.01937599999996);'

    + 'var marker = new daum.maps.Marker({' + 'position: markerPosition});' +
    'marker.setMap(map);'

  // 마커에 표시
    + 'var iwContent = ''<div style="padding:5px;">압구정 사이클점</div>'',' +
    ' iwPosition = new daum.maps.LatLng(33.450701, 126.570667), ' +
    ' iwRemoveable = true;'

    + 'var infowindow = new daum.maps.InfoWindow({'
  // +' map: map,' // 인포윈도우가 표시될 지도
    + '    position : iwPosition, ' + '    content : iwContent,' +
    '    removable : iwRemoveable' + '});' + 'infowindow.open(map, marker);'

  // 풋터
    + '</script>' + '</body>' + '</html>';

procedure Tbike_vcl.btn_repairlist_managementClick(Sender: TObject);
begin
  RepairList := TRepairList.Create(application);
  RepairList.Show;
end;

procedure Tbike_vcl.btn_repairman_managementClick(Sender: TObject);
begin
  RepairMan := TRepairMan.Create(application);
  RepairMan.Show;
end;

procedure Tbike_vcl.btn_user_managementClick(Sender: TObject);
begin
  user := tuser.Create(application);
  user.Show;
end;

procedure Tbike_vcl.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dm1.centersearch.ParamByName('pcname').AsString := DBLookupComboBox1.Text;
  dm1.centersearch.open;
  dm1.centersearch.Refresh;
  hat := dm1.centersearch.FieldByName('clatitude').AsString;
  lng := dm1.centersearch.FieldByName('chardness').AsString;

  try
    HTMLWindow2.execScript('SetMap(' + hat + ',' + lng + ')', 'JavaScipt');
  except

  end;
  // demo.serch_center(DBLookupComboBox1.Text);

end;

procedure Tbike_vcl.FormCreate(Sender: TObject);
var
  aStream: TMemoryStream;
begin

  begin
    WebBrowser1.Navigate('about:blank');
    if Assigned(WebBrowser1.Document) then // 다음 지도 API사용을 위한 초기 작업
    begin
      aStream := TMemoryStream.Create;
      try
        aStream.Write(HTMLStr[1], Length(HTMLStr));
        aStream.Seek(0, soFromBeginning);
        (WebBrowser1.Document as IPersistStreamInit)
          .Load(TStreamAdapter.Create(aStream));
      finally
        aStream.Free;

      end;
      HTMLWindow2 := (WebBrowser1.Document as IHTMLDocument2).parentWindow;

    end;
  end;
end;

procedure Tbike_vcl.Timer1Timer(Sender: TObject);
begin

  Edit1.Text := (demo.get_count('예약중').ToString + ' 건');

end;

end.
