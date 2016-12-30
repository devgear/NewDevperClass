Unit Ucus;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls;

Type
  TCusForm = Class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit4: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    Procedure Button2Click(Sender: TObject);
    Procedure Button1Click(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  CusForm: TCusForm;

Implementation

Uses Udm, Uclientclass;

{$R *.dfm}
var
  cc :TserverMethodsClient;

Procedure TCusForm.Button1Click(Sender: TObject);
Begin
  CusForm.Close;
End;

Procedure TCusForm.Button2Click(Sender: TObject);
Begin

cc := TServerMethodsClient.create(dm.SQLConnection1.DBXConnection);

  If cc.Insert_Custom(Edit1.Text, Edit2.Text, Edit3.Text, Edit4.Text,
    Edit5.Text, Edit6.Text, '') = 0 Then
    Raise Exception.create('등록실패');
  showmessage('회원등록 완료');
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  dm.Custom.Refresh;
  
End;

Procedure TCusForm.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
  Action := cafree;
  cc.Free;

End;

End.
