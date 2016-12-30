Unit UReservation;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Mask;

Type
  TRevForm = Class(TForm)
    panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Edit2: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    MaskEdit1: TMaskEdit;
    Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    Procedure Button1Click(Sender: TObject);
    Procedure Edit4Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  RevForm: TRevForm;

Implementation

Uses Udm, Uclientclass;

{$R *.dfm}

Procedure TRevForm.Button1Click(Sender: TObject);
Begin
  RevForm.Close;
End;



Var
  cc: TserverMethodsClient;
  //예약 stored producer
procedure TRevForm.Button2Click(Sender: TObject);
Begin
  //Insert_RENTAL 스토어드 시작
  cc := TserverMethodsClient.create(dm.SQLConnection1.DBXConnection);

  If cc.Insert_reservation(DBEDIT2.Text,   //예약ID
                      '',                       //차ID
                      dbedit2.Text,                       //고객ID
                      maskedit1.Text,                       //예약날짜
                      edit2.Text, //사용일
                      datetostr(date+strtoint(Edit2.Text)),     //반납일
                      dbedit5.Text,                    //가격
                      '') = 0 Then    //지점ID


  showmessage('예약완료 되었습니다.');
  dbedit1.Text := '';
  dbEdit2.Text := '';
  maskedit1.Text := '';
  edit2.Text := '';
  edit4.text := '';
  DBEdit5.Text := '';
end;

Procedure TRevForm.Edit4Change(Sender: TObject);
Begin
  dm.Custom.IndexFieldNames := 'name';
  dm.Custom.FindNearest([Edit4.Text]);

End;

Procedure TRevForm.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
  Action := cafree;
  cc.Free;
End;

End.
