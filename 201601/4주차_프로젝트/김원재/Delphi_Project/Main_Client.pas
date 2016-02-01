unit Main_Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Data.SqlExpr, Data.DbxDatasnap, IPPeerClient,
  Data.DBXCommon, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.CategoryButtons, Vcl.Mask, Vcl.Buttons;

type
  TForm3 = class(TForm)
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Panel2: TPanel;
    Edit7: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label9: TLabel;
    Edit11: TEdit;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit16: TEdit;
    Label14: TLabel;
    Button1: TButton;
    Label20: TLabel;
    Edit18: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label11: TLabel;
    Panel3: TPanel;
    Label15: TLabel;
    Edit13: TEdit;
    Label16: TLabel;
    Edit15: TEdit;
    Label17: TLabel;
    Edit20: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Edit22: TEdit;
    Label18: TLabel;
    Edit17: TEdit;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Button8: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Edit21: TEdit;
    Edit23: TEdit;
    Label21: TLabel;
    Panel6: TPanel;
    Button3: TButton;
    DateTimePicker1: TDateTimePicker;
    Label22: TLabel;
    DBGrid1: TDBGrid;
    DateTimePicker2: TDateTimePicker;
    Panel8: TPanel;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure ClearText;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation


{$R *.dfm}

uses Main_Calender, SERCH, MoDule1, Main_Class;
var
  appone : TServerMethods1Client;
  apptwo : TServerMethods1Client;

procedure TForm3.Button10Click(Sender: TObject);
begin
  dm.RESERVE_Q_CDS.Edit;
  dm.RESERVE_Q_CDS.Post;
  dm.RESERVE_Q_CDS.ApplyUpdates(-1);
  SHOWMESSAGE('수정이 완료 되었습니다');
end;

procedure TForm3.Button11Click(Sender: TObject);
begin
  dm.RESERVE_Q_CDS.Delete;
  dm.RESERVE_Q_CDS.ApplyUpdates(-1);
  SHOWMESSAGE('삭제 되었습니다');
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
   DM.RESERVE_Q_CDS.Insert;
   DM.RESERVE_Q_CDS.FieldByName('RECORD_NUM').AsInteger := DM.RESERVE_Q_CDS.FieldByName('RECORD_NUM').AsInteger + 1;
   DM.RESERVE_Q_CDS.FieldByName('JISA_CODE').AsString := ComboBox1.Items[ComboBox1.ItemIndex];
   DM.RESERVE_Q_CDS.FieldByName('SIN_NAME').AsString := Edit1.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_CODE').AsString := Edit2.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_SONAME').AsString := Edit3.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_SOKIND').AsString := Edit4.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_TEL').AsString := Edit5.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_FAX').AsString := Edit22.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_MOBILE').AsString := Edit6.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_ADD').AsString := Edit18.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_MAIL').AsString := Edit7.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_GITA').AsString := Edit17.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_ROOMNAME').AsString := Edit8.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_FL').AsString := Edit9.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_HOSIL').AsString := Edit10.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_CHAIR').AsString := Edit11.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_DATE').AsDateTime := DateTimePicker2.Date;
   DM.RESERVE_Q_CDS.FieldByName('SIN_KIND').AsString := Edit21.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_COUNT').AsString := Edit16.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_USEJAJE').AsString := Edit23.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_ROOMCOST').AsString := Edit13.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_JAJECOST').AsString := Edit15.Text;
   DM.RESERVE_Q_CDS.FieldByName('SIN_TOTALCOST').AsString := Edit20.Text;


   DM.RESERVE_Q_CDS.Post;
   DM.RESERVE_Q_CDS.ApplyUpdates(0);

   DM.RES_CDS.Append;
//   DM.RES_CDS.FieldByName('RES_CODE').AsInteger := -1;
   DM.RES_CDS.FieldByName('RES_CODE').AsInteger := DM.RES_CDS.FieldByName('RES_CODE').AsInteger + 1;
   DM.RES_CDS.FieldByName('RES_DATE').AsDateTime := DateTimePicker2.Date;
   DM.RES_CDS.FieldByName('RES_RMCODE').AsString := Edit10.Text;
   DM.RES_CDS.FieldByName('RES_RMNAME').AsString := Edit8.Text;
   DM.RES_CDS.Post;
   DM.RES_CDS.ApplyUpdates(0);

   ClearText;
   DM.RESERVE_Q_CDS.Refresh;
   SHOWMESSAGE('예약이 완료 되었습니다');
  end;

procedure TForm3.Button13Click(Sender: TObject);
begin
  ClearText;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1 := TForm1.Create(self);
  Form1.Show;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  DM.RESERVE_Q_CDS.Close;
  apptwo := TServerMethods1Client.Create(DM.SQLConnection1.DBXConnection);
  apptwo.appoinmenttwo('select * from reserve where sin_date like :date',DateToStr(DateTimePicker1.Date));
  DM.RESERVE_Q_CDS.Params[0].AsString := DateToStr(DateTimePicker1.Date);
  DM.RESERVE_Q_CDS.Open;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  Main_Form := TMain_Form.Create(self);
 // TForm2.StrDate := COPY(string(FAC050ServerNow), 1, 8);
  Main_Form.ShowModal;
 // FormShowModalEX(TForm2);
  if Main_Form.ModalResult = mrOK then
  begin
   DateTimePicker2.Date := Main_Form.SelDate;
   Main_Form.Free;
  end;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
  DM.RESERVE_Q_CDS.Close;
  appone := TServerMethods1Client.Create(DM.SQLConnection1.DBXConnection);
  appone.appoinment('select * from reserve');
  dm.RESERVE_Q_CDS.Open;
end;

procedure TForm3.ClearText;
begin
   Edit1.Text := '';
   Edit2.Text := '';
   Edit3.Text := '';
   Edit4.Text := '';
   edit5.Text := '';
   Edit6.Text := '';
   Edit7.Text := '';
   Edit8.Text := '';
   Edit9.Text := '';
   Edit10.Text := '';
   Edit11.Text := '';
//   DateTimePicker2.Refresh;
   Edit16.Text := '';
   Edit18.Text := '';
   Edit13.Text := '';
   Edit15.Text := '0';
   Edit20.Text := '';
   Edit22.Text := '';
   Edit17.Text := '';
   Edit21.Text := '';
   Edit23.Text := '';
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
  label22.Caption := '';
  if ComboBox1.ItemIndex = 0 then
    LABEL22.Caption := '서울'
  ELSE if ComboBox1.ItemIndex = 1 then
    LABEL22.Caption := '대전'
  ELSE if ComboBox1.ItemIndex = 2 then
    LABEL22.Caption := '대구'
  ELSE LABEL22.Caption := '부산';
end;

end.
