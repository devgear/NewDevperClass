unit UDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr,
  UClientClass, FMX.ListBox, FMX.Objects, FMX.Types, FMX.ExtCtrls,
  System.UITypes, System.UIConsts;

type
  TDm = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    CafeDataSet: TClientDataSet;
    CafeDataSetC_NAME: TWideStringField;
    CafeDataSetC_LOCA: TWideStringField;
    CafeDataSetC_LAT: TSingleField;
    CafeDataSetC_LONG: TSingleField;
    MenuDataSet: TClientDataSet;
    MenuDataSetM_NAME: TWideStringField;
    MenuDataSetM_PRICE: TIntegerField;
    MenuDataSetM_EPRICE: TIntegerField;
    MenuDataSetM_INFO: TWideStringField;
    MenuDataSetM_PHOTO: TBlobField;
    MenuDataSetM_CAFENAME: TWideStringField;
    AlphaDataSet: TClientDataSet;
    ReserveDetailDataSet: TClientDataSet;
    ReserveDataSet: TClientDataSet;
    ReserveDetailDataSetR_NUM: TIntegerField;
    ReserveDetailDataSetM_NAME: TWideStringField;
    ReserveDetailDataSetRL_QUANTITY: TIntegerField;
    ReserveDetailDataSetRL_PRICE: TIntegerField;
    ReserveDetailDataSetM_PRICE: TIntegerField;
    ReserveDetailDataSetM_INFO: TWideStringField;
    ReserveDetailDataSetM_PHOTO: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MenuI: array of TMetropolisUIListBoxItem;
    DetailI: array of TMetropolisUIListBoxItem;
    CheckQuantity: array of TComboBox;
    procedure Calc_Distance;
    procedure Get_Menu(OrderOrModi: boolean);
    procedure Get_Reserve(LoginID: string);
    procedure Get_Reserve_Detail(Num: string);
  end;

var
  Dm: TDm;
  demo: TServerMethods1Client;

implementation

{ %CLASSGROUP 'FMX.Controls.TControl' }

uses Umain_mobile, System.Math;

{$R *.dfm}

procedure TDm.Calc_Distance; // 거리계산
var
  theta, dist: double;
  subI: TListboxItem;
  count: integer;
  BlobStream: TStream;
begin
  count := 0;
  CafeDataSet.First;
  AlphaDataSet.First;
  MobileForm.ListBox1.Clear;
  while not CafeDataSet.EOF do
  begin
    theta := CafeDataSetC_LONG.Value - StrToFloat(MobileForm.Long);
    dist := sin(degTorad(CafeDataSetC_LAT.Value)) *
      sin(degTorad(StrToFloat(MobileForm.Lat))) +
      cos(degTorad(CafeDataSetC_LAT.Value)) *
      cos(degTorad(StrToFloat(MobileForm.Lat))) * cos(degTorad(theta));
    dist := arccos(dist);
    dist := radTodeg(dist);
    dist := dist * 60 * 1.1515;
    dist := dist * 1.609344;

    if MobileForm.Distance >= dist then // dist가 설정된 값보다 작으면 지도에 위치 출력
    begin
      MobileForm.WebBrowser1.EvaluateJavaScript
        ('SetMarkers(' + FloatToStr(CafeDataSetC_LAT.Value) + ',' +
        FloatToStr(CafeDataSetC_LONG.Value) + ',' + IntToStr(count) + ');');
      Inc(count); // 지도에 위치 출력

      subI := TListboxItem.Create(MobileForm.ListBox1); // 리스트박스에 해당위치 출력
      subI.Text := CafeDataSet.FieldByName('C_NAME').AsString;
      subI.ItemData.Accessory := TListBoxItemData.TAccessory.aMore;
      subI.ItemData.Detail := CafeDataSet.FieldByName('C_LOCA').AsString;
      subI.StyleLookup := 'listboxitembottomdetail';
      subI.TextSettings.FontColor := claWhite;

      BlobStream := TStream.Create; // 리스트박스 아이콘에 같은 이미지(알파벳) 뿌려주는 작업
      BlobStream := AlphaDataSet.CreateBlobStream
        (AlphaDataSet.FieldByName('I_ALPHABET'), TBlobStreamMode.bmRead);
      subI.ItemData.Bitmap.LoadFromStream(BlobStream);
      AlphaDataSet.Next;

      MobileForm.ListBox1.AddObject(subI);
      CafeDataSet.Next;

      if AlphaDataSet.EOF then // 저장된 알파벳보다 많은 까페 검색시 중지하기
        break;
    end
    else
      CafeDataSet.Next;
  end;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  SQLConnection1.Connected := true;
  CafeDataSet.Active := true;
  demo := TServerMethods1Client.Create(SQLConnection1.DBXConnection);
end;

procedure TDm.Get_Menu(OrderOrModi: boolean); // 메뉴 가져오기
var
  Image: TImageViewer;
  BlobStream: TStream;
  i, j: integer;
  Text: TText;
begin
  i := 0;
  MenuI := nil;
  CheckQuantity := nil;
  SetLength(MenuI, MenuDataSet.RecordCount);
  SetLength(CheckQuantity, MenuDataSet.RecordCount);
  BlobStream := TStream.Create;
  MobileForm.ListBox2.Clear;
  MenuDataSet.First;

  while not MenuDataSet.EOF do // 리스트박스에 메뉴 동적으로 뿌려주기
  begin
    MenuI[i] := TMetropolisUIListBoxItem.Create(MobileForm.ListBox2);
    // 리스트 아이템 동적 생성
    MenuI[i].Title := MenuDataSet.FieldByName('M_NAME').AsString;
    MenuI[i].SubTitle := MenuDataSet.FieldByName('M_PRICE').AsString + '원';
    MenuI[i].Description := MenuDataSet.FieldByName('M_INFO').AsString;
    MobileForm.ListBox2.AddObject(MenuI[i]);

    Image := TImageViewer.Create(MenuI[i]);
    Image.Parent := MenuI[i];
    Image.Align := TAlignLayout.Left;
    Image.Width := 130;
    BlobStream := MenuDataSet.CreateBlobStream
      (MenuDataSet.FieldByName('M_PHOTO'), TBlobStreamMode.bmRead);
    Image.Bitmap.LoadFromStream(BlobStream);

    Text := TText.Create(MenuI[i]); // 텍스트 동적생성
    Text.Parent := MenuI[i];
    Text.Height := 20;
    Text.Width := 20;
    Text.Text := '잔';
    Text.Position.X := MenuI[i].Width - Text.Width;
    Text.Position.Y := Text.Position.Y + 7;
    Text.Visible := true;
    Text.TextSettings.FontColor := claWhite;

    CheckQuantity[i] := TComboBox.Create(MenuI[i]); // 콤보박스 동적생성
    CheckQuantity[i].Parent := MenuI[i];
    CheckQuantity[i].Height := 25;
    CheckQuantity[i].Width := 50;
    CheckQuantity[i].Position.X := MenuI[i].Width - CheckQuantity[i].Width -
      Text.Width;
    CheckQuantity[i].Position.Y := CheckQuantity[i].Position.Y + 5;
    for j := 0 to 10 do
      CheckQuantity[i].Items.Add(IntToStr(j));

    if OrderOrModi then // 예약모드일 경우
      CheckQuantity[i].ItemIndex := 0 // 콤보박스 초기인덱스는 0
    else // 주문 변경 모드 일 경우
    begin
      ReserveDetailDataSet.First;
      while not ReserveDetailDataSet.EOF do
      begin
        if MenuDataSet.FieldByName('M_NAME').AsString = ReserveDetailDataSet.
          FieldByName('M_NAME').AsString then
        begin
          CheckQuantity[i].ItemIndex := ReserveDetailDataSet.FieldByName
            ('RL_QUANTITY').AsInteger; // 콤보박스 초기인덱스를 저장되있던 주문정보 갯수로 설정
          break;
        end;
        CheckQuantity[i].ItemIndex := 0; // 주문 안한 커피는 초기인덱스 0
        ReserveDetailDataSet.Next;
      end;
    end;
    CheckQuantity[i].Visible := true;

    Inc(i);
    MenuDataSet.Next;
  end;

  if not OrderOrModi then // 주문 변경 모드 일 때 상세 예약정보 가져와 출력하기
  begin
    MobileForm.Edit_Arrival.Text := '0'; // 도착예정시간 0 으로 초기화

    if ReserveDataSet.FieldByName('R_PAYMENT_PLAN').AsString = '현금' then
    // 예약한 정보가 현금계산일 경우
    begin
      MobileForm.Payment_Box.ItemIndex := 0;
      MobileForm.Image4.Visible := true;
      MobileForm.Image5.Visible := false;
    end
    else // 예약한 정보가 카드계산일 경우
    begin
      MobileForm.Payment_Box.ItemIndex := 1;
      MobileForm.Image4.Visible := false;
      MobileForm.Image5.Visible := true;
    end;

    MobileForm.Memo1.Lines.Clear;
    MobileForm.Memo1.Lines.Text := ReserveDataSet.FieldByName
      ('R_COMMENT').AsString;
    // 예약한 정보 추가요구사항 가져와 메모에 출력
  end;

end;

procedure TDm.Get_Reserve(LoginID: string); // 예약정보 가져오기
var
  ReserveI: TListboxItem;
  Arrival: TText;
begin
  demo.Get_Reserve(LoginID); // 해당 아이디의 예약정보 가져오기
  ReserveDataSet.Close; // 새로고침
  ReserveDataSet.Open;
  ReserveDataSet.First;

  MobileForm.ListBox3.Clear;
  while not ReserveDataSet.EOF do // 예약정보 리스트박스에 출력
  begin
    ReserveI := TListboxItem.Create(MobileForm.ListBox3); // 리스트 박스 아이템 동적 생성
    ReserveI.Text := ReserveDataSet.FieldByName('C_NAME').AsString;
    ReserveI.ItemData.Accessory := TListBoxItemData.TAccessory.aMore;
    ReserveI.ItemData.Detail := ReserveDataSet.FieldByName('C_LOCA').AsString;
    ReserveI.StyleLookup := 'listboxitembottomdetail';
    ReserveI.TextSettings.FontColor := claWhite;
    MobileForm.ListBox3.AddObject(ReserveI); // 카페 이름, 위치 출력

    Arrival := TText.Create(ReserveI); // 텍스트 동적 생성
    Arrival.Parent := ReserveI; // 예약시간 출력
    Arrival.Text := '예약시간 :' + ReserveDataSet.FieldByName('R_ARRIVAL').AsString;
    Arrival.Align := TAlignLayout.Center;
    Arrival.Width := 120;
    Arrival.HitTest := false;
    Arrival.TextSettings.FontColor := claWhite;
    ReserveDataSet.Next;
  end;
end;

procedure TDm.Get_Reserve_Detail(Num: string); // 상세 예약정보 가져오기
var
  Image: TImageViewer;
  BlobStream: TStream;
  i, j: integer;
  Text: TText;
begin
  i := 0;
  DetailI := nil;
  demo.Get_Reserve_Detail(Num); // 상세 정보 가져오기
  ReserveDetailDataSet.Close; // 새로고침
  ReserveDetailDataSet.Open;
  SetLength(DetailI, ReserveDetailDataSet.RecordCount);

  ReserveDetailDataSet.First;
  MobileForm.ListBox4.Clear;

  MobileForm.TName_Loca.Text := ReserveDataSet.FieldByName('C_NAME').AsString +
    '  ' + ReserveDataSet.FieldByName('C_LOCA').AsString; // 카페 이름 및 위치 출력
  MobileForm.TPayment.Text := ReserveDataSet.FieldByName('R_PAYMENT_PLAN')
    .AsString; // 결제방식 출력
  MobileForm.TArrival.Text := ReserveDataSet.FieldByName('R_ARRIVAL').AsString;
  // 도착예정시간 출력
  MobileForm.TTotal.Text := ReserveDataSet.FieldByName('R_TOTAL_AMOUNT')
    .AsString + ' 원'; // 총 결제 금액 출력
  MobileForm.MComment.Lines.Clear;
  MobileForm.MComment.Lines.Text := ReserveDataSet.FieldByName('R_COMMENT')
    .AsString; // 추가 요구 사항 출력

  while not ReserveDetailDataSet.EOF do // 구매한 커피 목록 출력
  begin
    DetailI[i] := TMetropolisUIListBoxItem.Create(MobileForm.ListBox2);
    // 리스트 박스 아이템 동적 생성
    DetailI[i].Title := ReserveDetailDataSet.FieldByName('M_NAME').AsString;
    // 커피 이름 출력
    DetailI[i].SubTitle := ReserveDetailDataSet.FieldByName('M_PRICE').AsString
      + '원'; // 커피 1잔 가격 출력
    DetailI[i].Description := '총 ' + ReserveDetailDataSet.FieldByName
      ('RL_PRICE').AsString + '원'; // 주문한 커피 잔 수 x 가격 출력
    MobileForm.ListBox4.AddObject(DetailI[i]);

    Image := TImageViewer.Create(DetailI[i]); // 커피 이미지 가져오기
    Image.Parent := DetailI[i];
    Image.Align := TAlignLayout.Left;
    Image.Width := 130;
    BlobStream := ReserveDetailDataSet.CreateBlobStream
      (ReserveDetailDataSet.FieldByName('M_PHOTO'), TBlobStreamMode.bmRead);
    Image.Bitmap.LoadFromStream(BlobStream);

    Text := TText.Create(DetailI[i]); // 텍스트 동적 생성
    Text.Parent := DetailI[i];
    Text.Height := 20;
    Text.Width := 40;
    Text.Text := ReserveDetailDataSet.FieldByName('RL_QUANTITY').AsString +
      ' 잔'; // 주문한 잔 수 출력
    Text.Position.X := DetailI[i].Width - Text.Width;
    Text.Position.Y := Text.Position.Y + 7;
    Text.TextSettings.FontColor := claWhite;

    Inc(i);
    ReserveDetailDataSet.Next;
  end;
end;

end.
