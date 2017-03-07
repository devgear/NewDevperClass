unit UDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr,
  UClientClass, FMX.ListBox, FMX.Objects, FMX.StdCtrls, FMX.Types,FMX.Dialogs;

type
  TDm = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    OrderDataSet: TClientDataSet;
    MyDataSet: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    Ud_Num: Integer;
  public
    { Public declarations }
    function Calc_Distance: Integer;
    procedure Insert_UD(Slat, Slong, Phone: string);
    procedure Update_UD(Alat, Along, Dis, Price: string);
    procedure Insert_UD_Detail(Lat, Long: string);
  end;

var
  Dm: TDm;
  demo: TServerMethods1Client; // 서버 메소드 사용하기 위한 변수

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

{$R *.dfm}

uses Umain_Mobile, System.Math;

function TDm.Calc_Distance: Integer;
var
  theta, dist: double;
  subI: TListboxItem; // FMX.ListBox
  Num, Content: TText; // FMX.Objects
  Btn_Select_Customer, Btn_Locate: TButton; // FMX.StdCtrls
  count, i: Integer;
begin
  count := 0;
  i := 0;
  OrderDataSet.Close;
  OrderDataSet.Open;
  OrderDataSet.First;

  TaxiMF.WebBrowser1.EvaluateJavaScript('hideSAMarkers();');
  TaxiMF.ListBox_User.Clear;
  while not OrderDataSet.EOF do
  begin

    theta := OrderDataSet.FieldByName('O_LONG').AsFloat - StrToFloat(TaxiMF.Long);
    dist := sin(degTorad(OrderDataSet.FieldByName('O_LAT').AsFloat)) *
    // degTorad 사용 - System.Math 라이브러리
      sin(degTorad(StrToFloat(TaxiMF.Lat))) +
      cos(degTorad(OrderDataSet.FieldByName('O_LAT').AsFloat)) *
      cos(degTorad(StrToFloat(TaxiMF.Lat))) * cos(degTorad(theta));
    dist := arccos(dist);
    dist := radTodeg(dist);
    dist := dist * 60 * 1.1515;
    dist := dist * 1.609344;


    if 2 >= dist then // 2KM 이내의 손님 지도에 표시
    begin
      TaxiMF.WebBrowser1.EvaluateJavaScript
        ('AddSAMarkers(' + OrderDataSet.FieldByName('O_LAT').AsString + ',' +
        OrderDataSet.FieldByName('O_LONG').AsString + ',''' + FormatFloat('(약0.0Km)',
        dist) + ''', 0);');
      showmessage('손님이 검색되었습니다.');
      subI := TListboxItem.Create(TaxiMF.ListBox_User);
      TaxiMF.ListBox_User.AddObject(subI);

      Num := TText.Create(subI); // Text 동적 생성
      Num.Parent := subI; // 부모 정해주기
      Num.Text := IntToStr(count + 1); // 텍스트에 값 넣기
      Num.Align := TAlignLayout.Left; // FMX.Types
      Num.Width := 40;

      Content := TText.Create(subI);
      Content.Parent := subI;
      Content.Text := FormatFloat('(약0.0Km)', dist);
      Content.Align := TAlignLayout.Client;
      Content.TextSettings.HorzAlign := TTextAlign.Center;

      Btn_Select_Customer := TButton.Create(subI); // 버튼 동적 생성
      Btn_Select_Customer.Parent := subI;
      Btn_Select_Customer.Text := '선택';
      Btn_Select_Customer.Align := TAlignLayout.MostRight; // Align 설정
      Btn_Select_Customer.Width := 60;
      Btn_Select_Customer.Tag := i; // 태그 값 지정
      Btn_Select_Customer.OnClick := TaxiMF.Btn_Select_Customer;
      // 버튼의 이벤트 코드로 물려주는 법

      Btn_Locate := TButton.Create(subI); // 버튼 동적 생성
      Btn_Locate.Parent := subI;
      Btn_Locate.Text := '위치';
      Btn_Locate.Align := TAlignLayout.Right; // Align 설정
      Btn_Locate.Width := 60;
      Btn_Locate.Tag := i; // 태그 값 지정
      Btn_Locate.OnClick := TaxiMF.Btn_Locate;
      // 버튼의 이벤트 코드로 물려주는 법

      Inc(count);
      OrderDataSet.Next;
    end
    else
      OrderDataSet.Next;

    Inc(i);
  end;

  Result := count;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  SQLConnection1.Connected := True;
  OrderDataSet.Active := True;
  demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;

procedure TDm.Insert_UD(Slat, Slong, Phone: string);
var
  Num : string;
  //Arrive : string;
begin
  //Arrive := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
  Num := MyDataSet.FieldByName('T_NUM').AsString;
  Ud_Num := demo.Insert_UD(Slat, Slong, Num, Phone);
//  demo.Insert_UD(Arrive, Slat, Slong, Alat, Along, Dis, Price, Num, Phone);
end;

procedure TDm.Insert_UD_Detail(Lat, Long: string);
var
  time : string;
begin
  time := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
  demo.Insert_UD_Detail(IntToStr(Ud_Num),Lat,Long, time);
end;

procedure TDm.Update_UD(Alat, Along, Dis, Price: string);
var
  Num : string;
  Arrive : string;
begin
  Arrive := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
  demo.Update_UD(Arrive,Alat, Along, Dis, Price, IntToStr(Ud_Num));
end;

end.
