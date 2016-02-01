unit SERCH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Data.DBXDataSnap, IPPeerClient, Data.DBXCommon,
  Datasnap.DSConnect, Data.SqlExpr, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Bt_ok: TButton;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Edit1: TEdit;
    Button3: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Bt_okClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Main_Client, MoDule1;

procedure TForm1.Bt_okClick(Sender: TObject);
begin
//  ModalResult := mrOK;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  DM.MEMBER_Q_DS.DataSet := DM.MEMBER_Q_CDS;
  if radiobutton1.Checked then
  begin
    pagecontrol1.ActivePage := tabsheet1;
    begin
      DM.MEMBER_Q_CDS.Close;
      DM.MEMBER_Q_CDS.parambyname('CODE').AsString := edit1.Text;
      DM.MEMBER_Q_CDS.Open;
      DBGrid2.DataSource := DM.MEMBER_Q_DS;
      DBGrid2.Refresh;
    end;
  end

  else if RadioButton2.Checked then
  begin
//  FORM5.GAMAENG_Q_DS.DataSet := FORM5.GAMAENG_Q_CDS;

    begin
    pagecontrol1.ActivePage := tabsheet2;
      begin
        DM.GAMAENG_Q_CDS.Close;
        DM.GAMAENG_Q_CDS.parambyname('CODE').AsString := edit1.Text;
        DM.GAMAENG_Q_CDS.Open;
        DBGrid1.DataSource := DM.GAMAENG_Q_DS;
        DBGrid1.Refresh;
      end;
    end;
  end;
end;




procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
  Form3.Edit1.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_CONTNAME').AsString;
  Form3.Edit2.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_CODE').AsString;
  Form3.Edit3.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_NAME').AsString;
  Form3.Edit4.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_KIND').AsString;
  Form3.Edit5.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_TEL').AsString;
  Form3.Edit6.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_PHONE').AsString;
  Form3.Edit18.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_ADDRESS').AsString;
  Form3.Edit7.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_MAIL').AsString;
  Form3.Edit22.Text := DM.GAMAENG_DS.DataSet.FieldByName('G_FAX').AsString;
  FORM1.Close;
end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
begin
  Form3.Edit1.Text := DM.MEMBER_DS.DataSet.FieldByName('M_NAME').AsString;
  Form3.Edit2.Text := DM.MEMBER_DS.DataSet.FieldByName('M_CODE').AsString;
  Form3.Edit3.Text := DM.MEMBER_DS.DataSet.FieldByName('M_DEPTCODE').AsString;
  Form3.Edit4.Text := DM.MEMBER_DS.DataSet.FieldByName('M_DEPT').AsString;
  Form3.Edit6.Text := DM.MEMBER_DS.DataSet.FieldByName('M_PHONE').AsString;
  Form3.Edit18.Text := DM.MEMBER_DS.DataSet.FieldByName('M_ADDRESS').AsString;
  Form3.Edit7.Text := DM.MEMBER_DS.DataSet.FieldByName('M_MAIL').AsString;
  FORM1.Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShowMessage('');
end;

end.
