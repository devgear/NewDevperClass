unit Uproduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, FMTBcd, DB, SqlExpr,
  Buttons, Mask, DBCtrls, GIFImg, Jpeg;

type
  Tproductform = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    TreeView1: TTreeView;
    kindquery: TSQLQuery;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    Panel4: TPanel;
    ListView1: TListView;
    detailquery: TSQLQuery;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Button5: TButton;
    DBImage1: TDBImage;
    Panel14: TPanel;
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  kindrec = record
    b_code : string;
    b_name : string;
  end;
  kindrecptr = ^kindrec;

var
  productform: Tproductform;
  ptr : kindrecptr;

implementation

uses Udm;

{$R *.dfm}

procedure Tproductform.Button1Click(Sender: TObject);
begin
  dm.product.Insert;
  dbedit1.SetFocus;
  dm.product.FieldByName('book_code').AsString := dbedit1.Text;
  dm.product.FieldByName('book_kind').AsString := dbcombobox1.Text;
  dm.product.FieldByName('book_name').AsString := dbedit2.Text;
  dm.product.FieldByName('price').AsString := dbedit3.Text;
  dm.product.FieldByName('vol').AsString := dbedit4.Text;
end;

procedure Tproductform.Button2Click(Sender: TObject);
begin
  if messagedlg('정말 삭제하시겠습니까?', mtconfirmation, [mbyes, mbno], 0) = mryes then
     try
         dm.product.Delete;
         dm.product.ApplyUpdates(-1);
     except
       on e:exception do
          showmessage(e.message);
     end;
end;

procedure Tproductform.Button3Click(Sender: TObject);
begin
  dm.product.cancel;
  dm.product.CancelUpdates;
end;

procedure Tproductform.Button4Click(Sender: TObject);
begin
try
  if dbedit1.Text = '' then
     begin
       showmessage('코드를 반드시 입력하세요!');
     end else begin
  dm.product.Post;
  dm.product.ApplyUpdates(-1);
     end;
     except
  on e:exception do
     showmessage(e.Message);
end;
end;

procedure Tproductform.Button5Click(Sender: TObject);
var
  OD : TopenDialog;
begin
  OD := TOpenDialog.Create(self);
  OD.Filter := 'Jpeg Files(*.jpg)|*.jpg';
  if OD.execute then
    dbimage1.Picture.LoadFromFile(OD.FileName);
  OD.Free;
  end;

procedure Tproductform.ComboBox1Change(Sender: TObject);
begin
  case combobox1.ItemIndex of
    0 : begin
    dm.product.indexname := 'code';
    dm.productbook_code.Index := 0;
    dm.productbook_name.Index := 1;
    end;
    1 : begin
    dm.product.IndexName := 'name';
    dm.productbook_code.Index := 1;
    dm.productbook_name.Index := 0;
    end;
    2 : dm.product.IndexName := 'price';
  end;
end;

procedure Tproductform.Edit1Change(Sender: TObject);
begin
  dm.product.IndexFieldNames := 'book_name';
  dm.product.FindNearest([edit1.Text]);
end;

procedure Tproductform.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     if not dm.product.FindKey([edit1.Text]) then
        showmessage(edit1.Text+' 책이 없습니다');
end;

procedure Tproductform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tproductform.FormCreate(Sender: TObject);
var
  wk_kind : string;
begin
  pagecontrol1.ActivePage := tabsheet1;
  kindquery.Open;
  with kindquery do
  begin
    while not eof do
    begin
      if wk_kind <> FieldByName('book_kind').Asstring then
      begin
        treeview1.Selected := treeview1.Items.Add(treeview1.Selected, fieldbyname('book_kind').AsString);
        wk_kind := fieldbyname('book_kind').AsString;
      end;
      new(ptr);
      ptr^.b_code := fieldbyname('book_code').asstring;
      treeview1.items.addchildobject(treeview1.Selected, fieldbyname('book_name').AsString, ptr);
//        treeview1.Items.addchild(treeview1.Selected, fieldbyname('section').AsString);
        next;
    end;
  end;
end;

procedure Tproductform.SpeedButton1Click(Sender: TObject);
begin
  dm.product.First;
end;

procedure Tproductform.SpeedButton2Click(Sender: TObject);
begin
  if not dm.product.Bof then
     dm.product.Prior;
end;

procedure Tproductform.SpeedButton3Click(Sender: TObject);
begin
  if not dm.product.Eof then
     dm.product.Next;
end;

procedure Tproductform.SpeedButton4Click(Sender: TObject);
begin
  dm.product.Last;
end;

procedure Tproductform.TreeView1Click(Sender: TObject);
var
  i : byte;
  listitem:tlistitem;

begin
  if not treeview1.Selected.HasChildren then
  begin
    detailquery.Close;
    detailquery.params[0].AsString := kindrecptr(treeview1.Selected.Data)^.b_code;
    detailquery.Open;

    listview1.Items.Clear;

    while not detailquery.eof do
    begin
      listitem := listview1.Items.Add;
      listitem.Caption := detailquery.FieldByName('price').AsString+'원';
      listitem.SubItems.Add(detailquery.FieldByName('vol').AsString + 'EA');
      detailquery.Next;
    end;
  end;
end;

end.
