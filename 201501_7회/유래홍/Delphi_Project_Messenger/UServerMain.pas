unit UServerMain;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ServerContainerUnit, ServerMethodsUnit, Data.DB,
  Datasnap.DBClient, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, System.JSON, System.Actions, Vcl.ActnList,
  Vcl.StdActns, Vcl.ExtActns, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TMainForm = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    ListView1: TListView;
    Edit3: TEdit;
    Edit4: TEdit;
    DBImage1: TDBImage;
    Button5: TButton;
    ActionList1: TActionList;
    DialogOpenPicture1: TOpenPicture;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Button6: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
var
  Value :TJSONString;
begin
  Value := TJSONString.Create(Edit1.Text);
  ServerContainer1.DSServer1.BroadcastMessage(Edit2.Text, Value);
  Edit1.Clear;
end;

procedure TMainForm.Button2Click(Sender: TObject);
var
  Value :TJSONString;
  aResponse:TjSONValue;
begin
  Value := TJSONString.Create(Edit1.Text);
  ServerContainer1.DSServer1.NotifyCallback(Edit4.Text, Edit3.Text,Value, aResponse);   // (clientID, callbackID, MSG[JSON], aResponse
  Edit1.Clear;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  ServerContainer1.GetConnectedClient;
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
      ServerMethods1.Insert_Chat.Close;
    ServerMethods1.Insert_Chat.Params[0].Value := 'R000001';
    ServerMethods1.Insert_Chat.Params[1].Value := 'daeya';
    ServerMethods1.Insert_Chat.Params[2].Value := 1;   // 1: ¹®ÀÚ¿­
    ServerMethods1.Insert_Chat.Params[3].Value := 'test';
    ServerMethods1.Insert_Chat.Params[4].Value := 2;
    ServerMethods1.Insert_Chat.ExecSQL;
end;

procedure TMainForm.Button5Click(Sender: TObject);
var
  OD:TOpenDialog;
begin
  OD := TOpenDialog.Create(self);
  OD.Filter := 'Bitmap Files(*.bmp) | *.bmp';
  if OD.Execute then
     DBImage1.Picture.Bitmap.LoadFromFile(OD.FileName);
end;

procedure TMainForm.Button6Click(Sender: TObject);
begin
  ServerMethods1.ClientDataSet_m0010.Edit;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := Tabsheet1;
end;

procedure TMainForm.ListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
   Edit3.Text := Item.caption;
   Edit4.Text := Item.SubItems[0];
end;

end.

