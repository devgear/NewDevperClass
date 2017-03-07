unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, FMX.Objects, Data.Bind.DBScope,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.TabControl, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Layouts, FMX.Edit, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient,
  Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr;

type
  TForm4 = class(TForm)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    Layout1: TLayout;
    Panel1: TPanel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    LinkListControlToField1: TLinkListControlToField;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ListView1: TListView;
    TabItem3: TTabItem;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB2: TBindSourceDB;
    ListView2: TListView;
    LinkListControlToField3: TLinkListControlToField;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses Unit2;



procedure TForm4.Button1Click(Sender: TObject);

begin
  DataModule2.SQLConnection1.Params.Values['HostName'] := Edit1.Text;
  DataModule2.SQLConnection1.Params.Values['Port'] := Edit2.Text;
  DataModule2.SQLConnection1.Connected := False;
  DataModule2.qryKids.Active := True;
  DataModule2.qryParents.Active := True;
end;

end.
