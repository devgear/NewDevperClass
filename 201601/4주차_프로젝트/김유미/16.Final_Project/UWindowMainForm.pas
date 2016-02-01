unit UWindowMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox, FMX.MultiView,
  FMX.TabControl, System.Rtti, FMX.Grid, FMX.Calendar, UWindowDMForm,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Controls, Fmx.Bind.Navigator,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, System.ImageList,
  FMX.ImgList, FMX.Objects, FMX.Effects, FMX.ScrollBox, FMX.Memo;

type
  TWindowMainForm = class(TForm)
    MultiView1: TMultiView;
    ToolBar1: TToolBar;
    Labeltool: TLabel;
    ListBox1: TListBox;
    Panel1: TPanel;
    ToolBar2: TToolBar;
    TabControl1: TTabControl;
    LbReserVation: TLabel;
    MasterButton: TSpeedButton;
    Calendar1: TCalendar;
    Grid1: TGrid;
    TbiReservation: TTabItem;
    TbiHome: TTabItem;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    cbReservation: TCornerButton;
    Image1: TImage;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    LbiClassReservation: TListBoxItem;
    Image2: TImage;
    LbiHome: TListBoxItem;
    LbiReservCheck: TListBoxItem;
    TbiReservCheck: TTabItem;
    PanelReservCheck: TPanel;
    ToolBar3: TToolBar;
    Label1: TLabel;
    CbRservDelete: TCornerButton;
    CbChange: TCornerButton;
    CbSave: TCornerButton;
    CbCancel: TCornerButton;
    Grid2: TGrid;
    Panel2: TPanel;
    ToolBar4: TToolBar;
    LbHome: TLabel;
    Image3: TImage;
    Image4: TImage;
    BevelEffect1: TBevelEffect;
    BevelEffect2: TBevelEffect;
    Panel3: TPanel;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Image6: TImage;
    Label2: TLabel;
    BevelEffect3: TBevelEffect;
    Image7: TImage;
    BevelEffect4: TBevelEffect;
    Image8: TImage;
    Image9: TImage;
    CbRefresh: TCornerButton;
    Image5: TImage;
    Panel4: TPanel;
    CbClassReservation: TCornerButton;
    Label3: TLabel;
    Memo1: TMemo;
    Image10: TImage;
    Layout1: TLayout;
    InnerGlowEffect1: TInnerGlowEffect;
    StyleBook1: TStyleBook;
    Layout2: TLayout;
    Layout3: TLayout;
    procedure Calendar1Change(Sender: TObject);
    procedure MasterButtonClick(Sender: TObject);
    procedure cbReservationClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LbiClassReservationClick(Sender: TObject);
    procedure LbiHomeClick(Sender: TObject);
    procedure LbiReservCheckClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure CbRefreshClick(Sender: TObject);
    procedure CbRservDeleteClick(Sender: TObject);
    procedure CbCancelClick(Sender: TObject);
    procedure CbSaveClick(Sender: TObject);
    procedure CbChangeClick(Sender: TObject);
    procedure CbClassReservationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WindowMainForm: TWindowMainForm;

implementation

{$R *.fmx}

uses UWindowReservationForm;

procedure TWindowMainForm.Calendar1Change(Sender: TObject);
begin
//  ShowMessage(DateToStr(Calendar1.Date));
  DataModule1.CdsQueryClassInfo.ParamByName('Date').AsDate := Calendar1.Date;
  DataModule1.CdsQueryClassInfo.Open;
  DataModule1.CdsQueryClassInfo.Refresh;
end;

procedure TWindowMainForm.CbCancelClick(Sender: TObject);
begin
    DataModule1.CdsQueryResevClassInfo.CancelUpdates;
end;

procedure TWindowMainForm.CbChangeClick(Sender: TObject);
begin
  DataModule1.CdsQueryResevClassInfo.Edit;
end;

procedure TWindowMainForm.CbRefreshClick(Sender: TObject);
begin
  DataModule1.CdsQueryResevClassInfo.Refresh;
//  DataModule1.CdsQueryResevClassInfo.Close;
//  DataModule1.CdsQueryResevClassInfo.Open;
end;

procedure TWindowMainForm.cbReservationClick(Sender: TObject);
var
  ClassNum: Integer;
  Time: string;
begin
  WindowReservationForm := TWindowReservationForm.Create(Application);//Form의종류와상관없이 프로그램이 끝나면 내려간다.
  ClassNum := DataModule1.CdsQueryClassInfo.FieldByName('C_Num').AsInteger;
  Time := DataModule1.CdsQueryClassInfo.FieldByName('C_Time').AsString;
  WindowReservationForm.SetInitData(ClassNum, Calendar1.Date, Time);
//  WindowReservationForm.eR_Date.Text := DateToStr(Calendar1.Date);
//  WindowReservationForm.eR_Time.Text := DataModule1.CdsQueryClassInfo.FieldByName('C_Time').AsString;
  WindowReservationForm.ShowModal;
  WindowReservationForm.Free;
end;

procedure TWindowMainForm.CbRservDeleteClick(Sender: TObject);
begin
  DataModule1.CdsQueryResevClassInfo.Delete;
  DataModule1.CdsQueryResevClassInfo.ApplyUpdates(-1);
  DataModule1.CdsQueryResevClassInfo.Refresh;
end;

procedure TWindowMainForm.CbSaveClick(Sender: TObject);
begin
  DataModule1.CdsQueryResevClassInfo.Post;
  DataModule1.CdsQueryResevClassInfo.ApplyUpdates(-1);
end;

procedure TWindowMainForm.CbClassReservationClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TbiReservation;
end;

procedure TWindowMainForm.FormCreate(Sender: TObject);
begin
  Calendar1.Date := Now;
end;

procedure TWindowMainForm.Image3Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TbiHome;
end;

procedure TWindowMainForm.LbiClassReservationClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TbiReservation;
end;

procedure TWindowMainForm.LbiHomeClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TbiHome;
end;

procedure TWindowMainForm.LbiReservCheckClick(Sender: TObject);
begin
  TabControl1.ActiveTab := TbiReservCheck;
end;

procedure TWindowMainForm.MasterButtonClick(Sender: TObject);
begin
//  Labeltool.Visible := Not Labeltool.Visible;
end;

end.
