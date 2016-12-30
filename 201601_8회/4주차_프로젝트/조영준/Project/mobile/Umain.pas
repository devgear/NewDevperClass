unit Umain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Edit, FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation, UDM,
  System.Actions, FMX.ActnList, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.ListBox;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    TabItem7: TTabItem;
    ToolBar1: TToolBar;
    lb_loginteb: TLabel;
    Layout1: TLayout;
    Layout2: TLayout;
    btn_login: TButton;
    Layout3: TLayout;
    Layout4: TLayout;
    Edit1: TEdit;
    Edit2: TEdit;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    btn_search: TButton;
    btn_liberalarts: TButton;
    btn_specialty: TButton;
    ToolBar2: TToolBar;
    ListView1: TListView;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar5: TToolBar;
    ListView2: TListView;
    ToolBar6: TToolBar;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    lb_sbjtname: TLabel;
    lb_sbjtdiv: TLabel;
    lb_sbjtnum: TLabel;
    lb_sbjtgrade: TLabel;
    lb_profname: TLabel;
    lb_sbjtroom: TLabel;
    lb_sbjttext: TLabel;
    lb_sbjttotal: TLabel;
    lb_sbjtclass: TLabel;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    Label1: TLabel;
    TabItem8: TTabItem;
    TabItem9: TTabItem;
    TabItem10: TTabItem;
    ListBox2: TListBox;
    ListBoxItem10: TListBoxItem;
    lb_sbjtname2: TLabel;
    ListBoxItem11: TListBoxItem;
    lb_sbjtdiv2: TLabel;
    ListBoxItem12: TListBoxItem;
    lb_sbjtnum2: TLabel;
    ListBoxItem13: TListBoxItem;
    lb_sbjtgrade2: TLabel;
    ListBoxItem14: TListBoxItem;
    lb_profname2: TLabel;
    ListBoxItem15: TListBoxItem;
    lb_sbjtroom2: TLabel;
    ListBoxItem16: TListBoxItem;
    lb_sbjttext2: TLabel;
    ListBoxItem17: TListBoxItem;
    lb_sbjttotal2: TLabel;
    ListBoxItem18: TListBoxItem;
    lb_sbjtclass2: TLabel;
    ToolBar7: TToolBar;
    Label11: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button4: TButton;
    ToolBar8: TToolBar;
    ListView3: TListView;
    LinkListControlToField3: TLinkListControlToField;
    Button10: TButton;
    Button11: TButton;
    StyleBook1: TStyleBook;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    ToolBar9: TToolBar;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    TabItem11: TTabItem;
    TabItem12: TTabItem;
    TabItem13: TTabItem;
    ToolBar10: TToolBar;
    Button20: TButton;
    Label2: TLabel;
    ListView4: TListView;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    ToolBar11: TToolBar;
    Button21: TButton;
    Label3: TLabel;
    ListView5: TListView;
    LinkListControlToField5: TLinkListControlToField;
    Button22: TButton;
    ToolBar12: TToolBar;
    Label4: TLabel;
    Button23: TButton;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Button24: TButton;
    Layout8: TLayout;
    Edit3: TEdit;
    Edit4: TEdit;
    Layout9: TLayout;
    BindSourceDB1: TBindSourceDB;
    LinkPropertyToFieldText8: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldText9: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldText12: TLinkPropertyToField;
    LinkPropertyToFieldText16: TLinkPropertyToField;
    LinkPropertyToFieldText13: TLinkPropertyToField;
    LinkPropertyToFieldText10: TLinkPropertyToField;
    LinkPropertyToFieldText15: TLinkPropertyToField;
    LinkPropertyToFieldText18: TLinkPropertyToField;
    LinkPropertyToFieldText14: TLinkPropertyToField;
    LinkPropertyToFieldText11: TLinkPropertyToField;
    LinkPropertyToFieldText17: TLinkPropertyToField;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB5: TBindSourceDB;
    procedure btn_loginClick(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
    procedure btn_liberalartsClick(Sender: TObject);
    procedure btn_specialtyClick(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListView2ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure ListView4ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure gotostart; // 1
    procedure gotologin; // 2
    procedure gotoSearchTab; // 3
    procedure gotorefinement; // 4
    procedure gotospecialty; // 5
    procedure finementdetail; // 6
    procedure specialtydetail; // 7
    procedure gotomark; // 8
    procedure gotoSignUP; // 9
    procedure gotonotice; // 10
    procedure signup; // 11
    procedure signup2; // 12
    procedure mark; // 학번

    { Private declarations }
  public
    { Public declarations }
    check: Boolean;
    check2: Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_liberalartsClick(Sender: TObject);
begin
  check := true;
  dm.refinementDataSet.Refresh;
  gotorefinement;
end;

procedure TForm1.btn_loginClick(Sender: TObject);
var
  i: integer;
begin
  if Edit1.Text = '' then
  begin
    showmessage('학번을 입력해주세요');
    Abort;
  end;
  if Edit2.Text = '' then
  begin
    showmessage('비밀번호를 입력해주세요');
    Abort;
  end;
  i := demo.Log_in(strtoint(Edit1.Text), Edit2.Text);

  case i of
    1:
      begin
        // showmessage('로그인');
        dm.userdataset.ParamByName('SDT_NUM').AsInteger := strtoint(Edit1.Text);
        dm.userdataset.Open;
        dm.userdataset.Refresh;
        // showmessage(dm.userdataset.FieldByName('sdt_deptnum').AsString);
        Edit1.Text := '';
        Edit2.Text := '';
        gotologin;
      end;
    2:
      showmessage('학번이나 비밀번호를 확인해주세요');
    3:
      showmessage('학교에 문의 해주세요');
  end;
end;

procedure TForm1.btn_searchClick(Sender: TObject);
begin
  gotoSearchTab;
end;

procedure TForm1.btn_specialtyClick(Sender: TObject);
begin
  check := false;
  dm.specialtyDataSet.Active := false;
  ListView2.Items.Clear;
  dm.specialtyDataSet.ParamByName('SBJT_DEPTNUM').AsString :=
    dm.userdataset.FieldByName('sdt_deptnum').AsString;
  dm.specialtyDataSet.Open;
  dm.specialtyDataSet.Refresh;
  gotospecialty;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if check2 then
    gotoSearchTab
  else
    gotoSignUP;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin

  MessageDlg('관심과목에서 삭제하시겟습니까?', TMsgDlgType.mtWarning,
    [TmsgDlgBtn.mbYes, TmsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        dm.makrDataSet.Delete;
        dm.makrDataSet.ApplyUpdates(-1);
      end;
    end);

end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  gotoSignUP;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  signup2;
end;

procedure TForm1.Button15Click(Sender: TObject);
var
  sign_STDNAME, sign_SDTDEPTNUM, sign_SBJTNAME, sign_PROFNAME, sign_ROOM,
    sign_DIV: string;
  sign_SDTNUM, sign_SBJTNUM, sign_SBJTCLASS, sign_PROFNUM, sign_GRADE: integer;
begin
  try
    sign_STDNAME := dm.makrDataSet.FieldByName('MK_STDNAME').AsString;
    sign_SDTDEPTNUM := dm.makrDataSet.FieldByName('MK_SDTDEPTNUM').AsString;
    sign_SBJTNAME := dm.makrDataSet.FieldByName('MK_SBJTNAME').AsString;
    sign_PROFNAME := dm.makrDataSet.FieldByName('MK_PROFNAME').AsString;
    sign_ROOM := dm.makrDataSet.FieldByName('MK_ROOM').AsString;
    sign_DIV := dm.makrDataSet.FieldByName('MK_DIV').AsString;
    sign_SDTNUM := dm.makrDataSet.FieldByName('MK_SDTNUM').AsInteger;
    sign_SBJTNUM := dm.makrDataSet.FieldByName('MK_SBJTNUM').AsInteger;
    sign_SBJTCLASS := dm.makrDataSet.FieldByName('MK_SBJTCLASS').AsInteger;
    sign_PROFNUM := dm.makrDataSet.FieldByName('MK_PROFNUM').AsInteger;
    sign_GRADE := dm.makrDataSet.FieldByName('MK_GRADE').AsInteger;

    if demo.signGradecheck(sign_SDTNUM) + sign_GRADE < 10 then
    begin
      if demo.total(sign_SBJTNUM, sign_SBJTCLASS) then
      begin
        demo.signup(sign_STDNAME, sign_SDTDEPTNUM, sign_SBJTNAME, sign_PROFNAME,
          sign_ROOM, sign_DIV, sign_SDTNUM, sign_SBJTNUM, sign_SBJTCLASS,
          sign_PROFNUM, sign_GRADE);
        showmessage(sign_SBJTNAME + '을 신청완료 했습니다');
      end
      else
        showmessage(sign_SBJTNAME + '더이상 신청할수 없습니다.');
    end
    else
    begin
      showmessage('더이상 신청할수 없습니다.');
      exit;
    end;
  except
    showmessage('이미등록된과목입니다.');
  end;

end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  gotologin;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  gotonotice;
  dm.noticeDataSet.Refresh;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  dm.SignupDataSet.Active := false;
  ListView5.Items.Clear;
  dm.SignupDataSet.ParamByName('sdt_num').AsInteger :=
    dm.userdataset.FieldByName('sdt_num').AsInteger;
  dm.SignupDataSet.Open;
  dm.SignupDataSet.Refresh;

  signup;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  gotostart;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  gotologin;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  gotoSignUP;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin

  MessageDlg('수강취소하시겟습니까?', TMsgDlgType.mtWarning,
    [TmsgDlgBtn.mbYes, TmsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
      begin
        dm.SignupDataSet.Delete;
        dm.SignupDataSet.ApplyUpdates(-1);
      end;
    end);

end;

procedure TForm1.Button24Click(Sender: TObject);
var
  sign_STDNAME, sign_SDTDEPTNUM, sign_SBJTNAME, sign_PROFNAME, sign_ROOM,
    sign_DIV: string;
  sign_SDTNUM, sign_SBJTNUM, sign_SBJTCLASS, sign_PROFNUM, sign_GRADE: integer;
begin
  if Edit3.Text = '' then
  begin
    showmessage('학수번호를 확인해주세요');
    Abort;
  end;
  if Edit4.Text = '' then
  begin
    showmessage('분반을 확인해주세요.');
    Abort;
  end;

  dm.sbjtdataset.ParamByName('A').AsInteger := strtoint(Edit3.Text);
  dm.sbjtdataset.ParamByName('B').AsInteger := strtoint(Edit4.Text);
  dm.sbjtdataset.Open;
  dm.sbjtdataset.Refresh;
  if dm.sbjtdataset.RecordCount = 0 then
  begin
    showmessage('학수번호나 분반을 확인해주세요');
    exit;
  end
  else
  begin
    sign_SDTNUM := dm.userdataset.FieldByName('sdt_num').AsInteger;
    sign_GRADE := dm.sbjtdataset.FieldByName('sbjt_grade').AsInteger;
    if demo.signGradecheck(sign_SDTNUM) + sign_GRADE < 10 then
    begin
      sign_STDNAME := dm.userdataset.FieldByName('sdt_name').AsString;
      sign_SDTDEPTNUM := dm.userdataset.FieldByName('sdt_deptnum').AsString;
      sign_SBJTNAME := dm.sbjtdataset.FieldByName('sbjt_name').AsString;
      sign_PROFNAME := dm.sbjtdataset.FieldByName('sbjt_profname').AsString;
      sign_ROOM := dm.sbjtdataset.FieldByName('sbjt_room').AsString;
      sign_DIV := dm.sbjtdataset.FieldByName('sbjt_div').AsString;

      sign_SBJTNUM := dm.sbjtdataset.FieldByName('sbjt_num').AsInteger;
      sign_SBJTCLASS := dm.sbjtdataset.FieldByName('sbjt_class').AsInteger;
      sign_PROFNUM := dm.sbjtdataset.FieldByName('sbjt_profnum').AsInteger;

      try
        if demo.total(sign_SBJTNUM, sign_SBJTCLASS) then
        begin
          demo.signup(sign_STDNAME, sign_SDTDEPTNUM, sign_SBJTNAME,
            sign_PROFNAME, sign_ROOM, sign_DIV, sign_SDTNUM, sign_SBJTNUM,
            sign_SBJTCLASS, sign_PROFNUM, sign_GRADE);
          showmessage(sign_SBJTNAME + ' 수강신청하였습니다');
          // showmessage('1');
        end
        else
          showmessage(sign_SBJTNAME + '더이상 신청할수 없습니다');
      except
        showmessage('이미등록된 과목입니다');
        exit;
      end;
    end
    else
    begin
      showmessage('더이상 신청할수 없습니다.');
      exit;
    end;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  gotologin;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  SdtName: string;
  SdtDeptNum: string;
  SdtNum: integer;
  sbjtprofnum: integer;

begin

  try
    SdtName := dm.userdataset.FieldByName('sdt_name').AsString;
    SdtDeptNum := dm.userdataset.FieldByName('sdt_deptnum').AsString;
    SdtNum := dm.userdataset.FieldByName('sdt_num').AsInteger;
    // showmessage(inttostr(SdtNum)); // sdtdeptnum,inttostr(sdtnum));
    // showmessage(inttostr(demo.Gradecheck(SdtNum)));

    // showmessage(inttostr(sbjtprofnum));
    if check then
    begin
      if demo.Gradecheck(SdtNum) + strtoint(lb_sbjtgrade.Text) < 10 then
      begin
        sbjtprofnum := dm.refinementDataSet.FieldByName('sbjt_profnum')
          .AsInteger;

        demo.mark_up(SdtName, SdtDeptNum, lb_sbjtname.Text, lb_profname.Text,
          lb_sbjtroom.Text, lb_sbjtdiv.Text, SdtNum, strtoint(lb_sbjtnum.Text),
          strtoint(lb_sbjtclass.Text), sbjtprofnum,
          strtoint(lb_sbjtgrade.Text));
      end
      else
      begin
        showmessage('더이상 신청할수 없습니다.');
        exit;
      end;
    end
    else
    begin
      if demo.Gradecheck(SdtNum) + strtoint(lb_sbjtgrade2.Text) < 10 then
      begin

        sbjtprofnum := dm.specialtyDataSet.FieldByName('sbjt_profnum')
          .AsInteger;

        demo.mark_up(SdtName, SdtDeptNum, lb_sbjtname2.Text, lb_profname2.Text,
          lb_sbjtroom2.Text, lb_sbjtdiv2.Text, SdtNum,
          strtoint(lb_sbjtnum2.Text), strtoint(lb_sbjtclass2.Text), sbjtprofnum,
          strtoint(lb_sbjtgrade2.Text));

      end
      else
      begin
        showmessage('더이상 신청할수 없습니다.');
        exit;
      end;

    end;
    showmessage('관심과목에 추가되었습니다');

  except
    showmessage('이미 등록된 과목입니다.');
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if (Sender as TButton).tag = 0 then
  begin
    Button11.Visible := true;
    Button15.Visible := false;
    check2 := true;
    mark;
  end
  else
  begin
    Button11.Visible := false;
    Button15.Visible := true;
    check2 := false;
    mark;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  gotoSearchTab;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  gotorefinement;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  gotospecialty;
end;

procedure TForm1.finementdetail;
begin
  ChangeTabAction1.Tab := TabItem6;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.TabIndex := 0;
end;

procedure TForm1.gotologin;
begin
  ChangeTabAction1.Tab := TabItem2;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.gotomark;
begin
  ChangeTabAction1.Tab := TabItem8;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.gotonotice;
begin
  ChangeTabAction1.Tab := TabItem10;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.gotorefinement;
begin
  ChangeTabAction1.Tab := TabItem4;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.gotoSearchTab;
begin
  ChangeTabAction1.Tab := TabItem3;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.gotoSignUP;
begin
  ChangeTabAction1.Tab := TabItem9;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.gotospecialty;
begin
  ChangeTabAction1.Tab := TabItem5;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.gotostart;
begin
  ChangeTabAction1.Tab := TabItem1;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.ListView1ItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  finementdetail;
end;

procedure TForm1.ListView2ItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  specialtydetail;
end;

procedure TForm1.ListView4ItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  showmessage(dm.noticeDataSet.FieldByName('not_memo').AsString);
end;

procedure TForm1.mark;
begin
  dm.makrDataSet.Active := false;
  ListView3.Items.Clear;
  dm.makrDataSet.ParamByName('sdt_num').AsInteger :=
    dm.userdataset.FieldByName('sdt_num').AsInteger;
  dm.makrDataSet.Open;
  dm.makrDataSet.Refresh;
  gotomark;
end;

procedure TForm1.signup;
begin
  ChangeTabAction1.Tab := TabItem11;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.signup2;
begin
  ChangeTabAction1.Tab := TabItem12;
  ChangeTabAction1.ExecuteTarget(nil);
end;

procedure TForm1.specialtydetail;
begin
  ChangeTabAction1.Tab := TabItem7;
  ChangeTabAction1.ExecuteTarget(nil);
end;

end.
