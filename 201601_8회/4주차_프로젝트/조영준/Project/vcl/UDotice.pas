unit UDotice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope,data.db;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnclose: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEdit1: TDBEdit;
    ListBox1: TListBox;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    Memo1: TMemo;
    LinkControlToField1: TLinkControlToField;
    procedure btncloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  a: Boolean;

implementation

{$R *.dfm}

uses UDM;

procedure TForm8.btncloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin

  if  dm.noticeDataSet.UpdateStatus = TUpdateStatus.usInserted then
    dm.noticeDataSet.FieldByName('not_seq').AsInteger := 0;

  dm.noticeDataSet.Post;
  dm.noticeDataSet.ApplyUpdates(-1);
  a := false;
  dm.noticeDataSet.Refresh;

end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  a := True;
  dm.noticeDataSet.insert;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
  if MessageDlg('공지를 삭제하시겠습니까?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.noticeDataSet.Delete;
    dm.noticeDataSet.ApplyUpdates(-1);
  end;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
  dm.noticeDataSet.Cancel;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form8 := nil;
  Action := cafree;
end;

end.
