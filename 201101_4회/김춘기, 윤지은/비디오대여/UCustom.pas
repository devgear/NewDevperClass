unit UCustom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls,
  dblookup, FMTBcd, DB, SqlExpr;

type
  Tcustom = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button8: TButton;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Button6: TButton;
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
    Button7: TButton;
    Label28: TLabel;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    customQuery: TSQLQuery;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit2: TEdit;
    Edit7: TEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Button9: TButton;
    Button3: TButton;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  custom: Tcustom;

implementation

uses Uddm;
var
transdesc:ttransactiondesc;

{$R *.dfm}

procedure Tcustom.Button1Click(Sender: TObject);
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
      customquery.Close;
      customquery.sql.Clear;
      customquery.sql.add('Insert into customers');
      customquery.sql.add('(p_id, p_name, p_address, p_phone, p_email, p_date, p_num)');
      customquery.sql.add('values                   ');
      customquery.sql.add('(:id, :name, :address, :phone, :email, :date, :num)');
      customquery.parambyname('id').asstring :=edit7.Text;
      customquery.parambyname('name').asstring := edit1.Text;
      customquery.parambyname('address').asstring := edit4.text;    //date 함수로 날짜 값 받아오기
      customquery.parambyname('phone').asstring := edit3.text;
      customquery.parambyname('email').asstring := edit5.text;       //dATEtostr(NOW)
      customquery.parambyname('date').asstring := dATEtostr(NOW);
      customquery.parambyname('num').asstring := edit2.text;
      customquery.EXECSQL;
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
  customquery.Close;
  customquery.Free;



end;

procedure Tcustom.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tcustom.Button3Click(Sender: TObject);
begin
    if dbedit4.Text = '' then
    begin
      dbedit4.SetFocus;
      raise exception.Create('id를 입력하세요.');
    end;
    if dbedit5.Text = '' then
    begin
      dbedit5.SetFocus;
      raise exception.Create('이름를 입력하세요.');
    end;
    if dbedit6.Text = '' then
    begin
      dbedit6.SetFocus;
      raise exception.Create('주민번호를를 입력하세요.');
    end;
    if dbedit7.Text = '' then
    begin
      dbedit7.SetFocus;
      raise exception.Create('핸드폰번호를 입력하세요.');
    end;
    if dbedit9.Text = '' then
    begin
      dbedit9.SetFocus;
      raise exception.Create('주소를 입력하세요.');
    end;
    udm.customer.Post;
    udm.customer.ApplyUpdates(-1);
end;

procedure Tcustom.Button4Click(Sender: TObject);
begin

    dbedit4.Text := udm.customer.FieldByName('p_id').AsString;
    dbedit5.Text := udm.customer.FieldByName('p_name').AsString;
    dbedit6.Text :=  udm.customer.FieldByName('p_num').AsString;
    dbedit7.Text :=  udm.customer.FieldByName('p_phone').AsString;
    dbedit10.Text := udm.customer.FieldByName('p_email').AsString;
    dbedit9.Text :=  udm.customer.FieldByName('p_address').AsString;

end;

procedure Tcustom.Button6Click(Sender: TObject);
begin
    udm.customer.delete;
    udm.customer.applyupdates(-1);
    showmessage('삭제 완료');
end;

procedure Tcustom.Button7Click(Sender: TObject);
begin
  close;
end;

procedure Tcustom.Button8Click(Sender: TObject);
begin
  close;
end;

procedure Tcustom.Button9Click(Sender: TObject);
begin
    edit1.Text := '';
    edit2.Text := '';
    edit3.Text := '';
    edit4.Text := '';
    edit5.Text := '';
    edit6.Text := '';
    edit7.Text := '';
end;

procedure Tcustom.Edit10Change(Sender: TObject);
begin
    udm.customer.indexfieldnames := 'p_phone';
    udm.customer.findnearest([edit10.Text]);
end;

procedure Tcustom.Edit11Change(Sender: TObject);
begin
    udm.customer.indexfieldnames := 'p_name';
    udm.customer.findnearest([edit11.Text]);
end;

procedure Tcustom.Edit12Change(Sender: TObject);
begin
    udm.customer.indexfieldnames := 'p_phone';
    udm.customer.findnearest([edit12.Text]);
end;

procedure Tcustom.Edit13Change(Sender: TObject);
begin
    udm.customer.indexfieldnames := 'p_id';
    udm.customer.findnearest([edit13.Text]);
end;

procedure Tcustom.Edit6Click(Sender: TObject);
begin
    edit6.Text := DATEtostr(NOW);
end;

procedure Tcustom.Edit8Change(Sender: TObject);
begin
    udm.customer.indexfieldnames := 'p_name';
    udm.customer.findnearest([edit8.Text]);
end;

procedure Tcustom.Edit9Change(Sender: TObject);
begin
  udm.customer.indexfieldnames := 'p_phone';
  udm.customer.findnearest([edit9.Text]);
end;

procedure Tcustom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

initialization
begin
  transdesc.TransactionID := 1;
  transdesc.IsolationLevel := xilreadcommitted;
end;

end.
