unit UBring;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls, Buttons,
  FMTBcd, DB, SqlExpr;

type
  Tbring = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button2: TButton;
    Edit10: TEdit;
    DateTimePicker1: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SQLQuery1: TSQLQuery;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    DateTimePicker2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1UserInput(Sender: TObject;
      const UserString: string; var DateAndTime: TDateTime;
      var AllowChange: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bring: Tbring;

implementation

uses Uddm;

var
  transdesc: ttransactiondesc;

{$R *.dfm}

procedure Tbring.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tbring.Button2Click(Sender: TObject);
begin
  //udm.shopConnection.StartTransaction(transdesc);
  try
   SQLQuery1.Active := False;
    SQLQuery1.sql.Clear;
    SQLQuery1.sql.Add('update lend set  ');
    SQLQuery1.sql.Add('l_ques = :ques,  ');
    SQLQuery1.sql.Add('L_BPRICE = :BPRICE,  ');
    SQLQuery1.sql.Add('L_BDATE = :BDATE  ');
    SQLQuery1.sql.Add('where l_id=:id and l_num=:num and l_ldate=:ldate');
    SQLQuery1.ParamByName('id').AsString := udm.lend.FieldByName('l_id').AsString;
    SQLQuery1.ParamByName('num').AsString := udm.lend.FieldByName('l_num').AsString;
    SQLQuery1.ParamByName('ldate').AsString := udm.lend.FieldByName('l_ldate').AsString;
    SQLQuery1.ParamByName('BPRICE').AsString := Edit10.Text;
    SQLQuery1.ParamByName('BDATE').AsDate := DateTimePicker2.Date;
    SQLQuery1.ParamByName('ques').AsInteger := 1;
    SQLQuery1.execsql;
(*    udm.lend.Edit;
    udm.lend.FieldByName('L_BPRICE').AsInteger := strtoint(  );
    udm.lend.FieldByName('L_BDATE').AsDateTime := DateTimePicker2.Date;
    udm.lend.FieldByName('L_QUES').AsInteger := 1;

    udm.lend.Post;  *)

  // udm.shopConnection.commit(transdesc);
    showmessage('반납처리 완료');
    udm.lend.Active := false;
    udm.lend.Active := true;
  except
  //  udm.shopConnection.Rollback(transdesc);
    showmessage('Error');
    // raise;
    abort; // raise eabort.create('xxx');
  end;
end;

procedure Tbring.DateTimePicker1UserInput(Sender: TObject;
  const UserString: string; var DateAndTime: TDateTime;
  var AllowChange: Boolean);
begin
  DateAndTime := strtodatetime(UserString);
  AllowChange := true;
end;

procedure Tbring.Edit1Change(Sender: TObject);
var
  delaydd : integer;
  money: integer;
begin
  udm.lend.IndexFieldNames := 'l_id';
  udm.lend.FindNearest([Edit1.Text]);

  // 반납일자  check, 연체
   if udm.lend.FieldByName('l_bbdate').AsDateTime > date then
   begin
      delaydd := trunc(date - udm.lend.FieldByName('l_bbdate').value);
      money := delaydd * udm.movies.FieldByName('m_bprice').AsInteger;
      edit10.Text := inttostr(money);
   end
   ELSE
    edit10.Text  := '0';
end;

procedure Tbring.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if not udm.lend.FindKey([Edit1.Text]) then
      showmessage('그런 비디오 없음');
end;

procedure Tbring.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

procedure Tbring.FormShow(Sender: TObject);
begin
  DateTimePicker2.Date := now;
end;

procedure Tbring.SpeedButton1Click(Sender: TObject);
begin
  udm.lend.Last;
end;

procedure Tbring.SpeedButton2Click(Sender: TObject);
begin
  if not udm.lend.bof then
    udm.lend.Prior;
end;

procedure Tbring.SpeedButton3Click(Sender: TObject);
begin
  if not udm.lend.eof then
    udm.lend.next;
end;

procedure Tbring.SpeedButton4Click(Sender: TObject);
begin
  udm.lend.First;
end;

initialization

begin
  transdesc.TransactionID := 1;
  transdesc.IsolationLevel := xilreadcommitted;
end;

end.
