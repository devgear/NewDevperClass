unit UHistroy_Student;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListBox, FMX.ListView, FMX.Edit, Data.Bind.GenData, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.ObjectScope, Data.Bind.DBScope,
  System.Actions, FMX.ActnList, UHistory_UserDM;

type
  TForm8 = class(TForm)
    Layout1: TLayout;
    TabControl1: TTabControl;
    Main: TTabItem;
    Times: TTabItem;
    TabItem3: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    ToolBar2: TToolBar;
    Label2: TLabel;
    Button2: TButton;
    ToolBar3: TToolBar;
    Label3: TLabel;
    Button4: TButton;
    Information: TTabItem;
    ToolBar4: TToolBar;
    Label4: TLabel;
    Button5: TButton;
    ListView1: TListView;
    Layout2: TLayout;
    Image1: TImage;
    Label7: TLabel;
    Ω√¥Î: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Persons: TTabItem;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    ToolBar5: TToolBar;
    Label5: TLabel;
    Button7: TButton;
    ListView2: TListView;
    BindSourceDB2: TBindSourceDB;
    ActionList1: TActionList;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    ChangeTabAction1: TChangeTabAction;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    Layout3: TLayout;
    Label6: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    Image2: TImage;
    Button1: TButton;
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListView2ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure TimesClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.fmx}

procedure TForm8.Button2Click(Sender: TObject);
begin
 ChangeTabAction1.Tab := Main;
  ChangeTabAction1.ExecuteTarget(nil)
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
ChangeTabAction1.Tab := Persons;
  ChangeTabAction1.ExecuteTarget(nil)
end;

procedure TForm8.Button7Click(Sender: TObject);
begin
ChangeTabAction1.Tab := Times;
  ChangeTabAction1.ExecuteTarget(nil)
end;

procedure TForm8.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  ChangeTabAction1.Tab := persons;
  ChangeTabAction1.ExecuteTarget(nil); // ≈« ¿Ãµø
end;

procedure TForm8.ListView2ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
ChangeTabAction1.Tab := Information;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm8.TimesClick(Sender: TObject);
begin
      ChangeTabAction1.Tab := Times;
  ChangeTabAction1.ExecuteTarget(nil);
end;

end.
