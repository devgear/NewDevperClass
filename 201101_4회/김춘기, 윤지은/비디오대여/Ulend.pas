unit Ulend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls, FMTBcd,
  DB, SqlExpr;

type
  TlendForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    SQLQuery1: TSQLQuery;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    Label11: TLabel;
    Edit4: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    procedure Button3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lendForm: TlendForm;

implementation

uses Uddm;
var
transdesc:ttransactiondesc;

{$R *.dfm}

procedure TlendForm.Button1Click(Sender: TObject);
var gfdate: double;


begin
  udm.shopConnection.StartTransaction(transdesc);

//  try
{l_id(자료번호)
l_num(고객번호)
l_ldate(대여일자)
l_bbdate(반납예정일자)
l_bcprice(대여기간)
l_bdate(반납일자)
l_lprice(대여가격)
l_bprice(연체금)
l_ques(반납여부)
d_milepri(마일리지금액)
}

    try
      sqlquery1.Close;
      sqlquery1.sql.Clear;
      sqlquery1.sql.add('Insert into lend');
      sqlquery1.sql.add('(l_id, l_num, l_ldate, l_bbdate, l_bcdate, l_bdate, l_lprice, l_bprice, l_ques)');
      sqlquery1.sql.add('values                   ');
      sqlquery1.sql.add('(:id, :num, :ldate, :bbdate, :bcDATE, :bddate, :lprice, :bprice, :ques)');
      sqlquery1.parambyname('id').asstring := dbedit1.Text;
      sqlquery1.parambyname('num').asstring := dbedit13.Text;
      sqlquery1.parambyname('ldate').asstring := datetostr(now);    //date 함수로 날짜 값 받아오기
      sqlquery1.parambyname('bbdate').asdate := strtoint(edit4.text); //date로 형변환 함
      sqlquery1.parambyname('bcDATE').AsDate := date;
      sqlquery1.parambyname('bddate').AsDate := DATE+StrToInt(edit4.Text);
      //ShowMessage(DateToStr(DATE+StrToInt(edit4.Text)));
      sqlquery1.parambyname('lprice').asinteger := strtoint(dbedit10.text);//combobox3.items.strings[combobox3.itemindex];
      sqlquery1.parambyname('bprice').asstring := '0000';
      sqlquery1.parambyname('ques').asstring := combobox2.items.strings[combobox2.itemindex]; //combobox에 있는 값 받아오기
      sqlquery1.EXECSQL;
      //sqlquery1.execsql;

     except
      showmessage('query error');
//      raise;
      abort;     //raise eabort.create('xxx');
     end;

    try
     udm.lend.insert;
     udm.lend.ApplyUpdates(-1);
    except
     showmessage('입력  오류');
     raise;
    end;

    udm.shopConnection.commit(transdesc);

    showmessage('접수 처리 완료');

    //udm.shopConnection.Rollback(transdesc);
  Sqlquery1.Close;
  sqlquery1.Free;



end;

procedure TlendForm.Button3Click(Sender: TObject);
begin
  close;
end;



procedure TlendForm.Edit1Change(Sender: TObject);
begin
  udm.customer.indexfieldnames := 'p_phone';
  udm.customer.findnearest([edit1.Text]);
end;

procedure TlendForm.Edit2Change(Sender: TObject);
begin
  udm.movies.indexfieldnames := 'm_num';
  udm.movies.findnearest([edit2.Text]);

end;
procedure TlendForm.Edit3Click(Sender: TObject);
begin
    edit3.Text := DATEtostr(NOW);
end;

procedure TlendForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

initialization
begin
  transdesc.TransactionID := 1;
  transdesc.IsolationLevel := xilreadcommitted;
end;

end.
