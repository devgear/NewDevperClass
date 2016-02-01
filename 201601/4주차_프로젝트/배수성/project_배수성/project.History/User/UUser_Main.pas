unit UUser_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.TabControl, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.Layouts,  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  System.Actions, FMX.ActnList;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    Main: TTabItem;
    Times: TTabItem;
    persons: TTabItem;
    Information: TTabItem;
    Image1: TImage;
    Button1: TButton;
    ToolBar1: TToolBar;
    Label1: TLabel;
    ToolBar2: TToolBar;
    Label2: TLabel;
    Layout1: TLayout;
    ListView1: TListView;
    ToolBar3: TToolBar;
    Label3: TLabel;
    Layout2: TLayout;
    ListView2: TListView;
    ToolBar4: TToolBar;
    Label4: TLabel;
    Layout3: TLayout;
    이름: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image2: TImage;
    Label8: TLabel;
    Label9: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    Button2: TButton;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    test: TTabItem;
    ToolBar5: TToolBar;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button14: TButton;
    Button13: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    procedure Button2Click(Sender: TObject);
    procedure ListView1Change(Sender: TObject);
    procedure ListView2Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses UUser_Dm;

procedure TForm2.Button10Click(Sender: TObject);
begin
 showmessage('오답입니다.');
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
 showmessage('오답입니다.');
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
 ChangeTabAction1.Tab := test;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.Button13Click(Sender: TObject);
begin
 showmessage('오답입니다.');
end;

procedure TForm2.Button14Click(Sender: TObject);
begin
 showmessage('정답입니다.');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
ChangeTabAction1.Tab := times;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
ChangeTabAction1.Tab := persons;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
ChangeTabAction1.Tab := main;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
ChangeTabAction1.Tab := Times;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
           showmessage('오답입니다.');
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
   showmessage('정답입니다.');
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
 showmessage('오답입니다.');
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
 showmessage('오답입니다.');
end;

procedure TForm2.ListView1Change(Sender: TObject);
begin
ChangeTabAction1.Tab := persons;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm2.ListView2Change(Sender: TObject);
begin
ChangeTabAction1.Tab := information;
  ChangeTabAction1.ExecuteTarget(nil);
end;

end.
