unit USubject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    btnclose: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Memo1: TMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    procedure btncloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses UDM;

procedure TForm7.btncloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  dm.SUBJECTDataSet.post;
  dm.SUBJECTDataSet.ApplyUpdates(-1);
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  dm.SUBJECTDataSet.append;
  // Edit2.SetFocus;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  if MessageDlg('과목을 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.SUBJECTDataSet.Delete;
    dm.SUBJECTDataSet.ApplyUpdates(-1);
  end;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  dm.SUBJECTDataSet.Cancel;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form7 := nil;
  Action := cafree;
end;

end.
