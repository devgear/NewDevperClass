unit UClientMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Header, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation, FMX.ComboEdit,
  FMX.ListView.Types, Data.DB, Data.SqlExpr, FMX.ListView, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, //datasnap.DSSession,
  FMX.ListBox;

type
  TMainForm = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ComboEdit1: TComboEdit;
    Edit1: TEdit;
    Button1: TButton;
    TabControl2: TTabControl;
    TabItem3: TTabItem;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    StyleBook1: TStyleBook;
    ListView1: TListView;
    Button2: TButton;
    ToolBar1: TToolBar;
    ListView3: TListView;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Button3: TButton;
    ToolBar2: TToolBar;
    Button4: TButton;
    Button5: TButton;
    ToolBar3: TToolBar;
    Label1: TLabel;
    TabItem4: TTabItem;
    ListView2: TListView;
    Label2: TLabel;
    ll: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListView2ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  ClientDataUnit, UClientChat;

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TMainForm.Button1Click(Sender: TObject);
begin
  if True then
  begin
    DM.Select_Roaster(comboEdit1.Text);
    DM.Select_RoomList(comboEdit1.Text);
    DM.ChannelManager.ManagerId := comboEdit1.Text + '@messenger.com';
    DM.ChannelManager.RegisterCallback(comboEdit1.Text, TChatCallback.Create());
    TabControl1.ActiveTab := TabItem2;
  end;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  ListView2.Items.Add;
  ListView2.Items[0].Text := '홍길동';
  ListView2.Items[0].Detail := '안녕하세요';
  //ListView2.Items[0].
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  showMessage('기능 추가 예정입니다');
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem1;
  TabControl2.ActiveTab := TabItem3;
end;

procedure TMainForm.ListView2ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
    //ClientForm := TClientForm.Create(self);
    //showmessage(AItem.Text);
    ChatForm.rid := AItem.Text;
    ChatForm.Show;
    //DM.
end;

end.
