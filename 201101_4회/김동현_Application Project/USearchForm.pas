unit USearchForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, FMTBcd, DB, SqlExpr, ComCtrls,
  Mask, DBCtrls, Buttons;

type
  TSearchForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btn_Exit: TButton;
    Panel6: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    ItemQuery: TSQLQuery;
    SubItemQuery: TSQLQuery;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    TreeView1: TTreeView;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel16: TPanel;
    Panel17: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  ItemRec = Record
    Item_Code: String;
    Item_Group: String;
  End;
  ItemRecptr = ^ItemRec;

var
  SearchForm: TSearchForm;
  ptr: ItemRecptr;

implementation

uses UAppStoreDM;

{$R *.dfm}

procedure TSearchForm.btn_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TSearchForm.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: begin
       AppStoreDM.Item.IndexName := 'I_Name';
       AppstoreDM.ItemItem_Name.Index := 0;
       AppstoreDM.ItemItem_MakeDate.Index := 1;
    end;
    1:  begin
       AppstoreDM.Item.IndexName := 'I_MakeDate';
       AppstoreDM.ItemItem_MakeDate.Index := 1;
       AppstoreDM.ItemItem_Name.Index := 0;
    end;
    2: AppstoreDM.Item.IndexName := 'I_Price';
  end;
end;

procedure TSearchForm.Edit1Change(Sender: TObject);
begin
  AppStoreDM.Item.IndexFieldNames := 'Item_Name';
  AppStoreDM.Item.FindNearest([Edit1.Text]);
end;

procedure TSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i,j: byte;
begin
  for i := 0 to TreeView1.Items.Count - 1 do
    if TreeView1.Items[i].Data <> nil then
      Dispose(ItemRecptr(TreeView1.Items[i].Data));

  Action := caFree;
end;

procedure TSearchForm.FormCreate(Sender: TObject);
var
  wk_Item: string;
begin
  top := 0;
  left := 0;
  ItemQuery.Open;
  With ItemQuery do
  begin
    while not Eof do
    begin
      New(ptr);
      if wk_Item <> FieldByName('Item_Group').AsString then
      begin
        TreeView1.Selected := TreeView1.Items.Add(TreeView1.Selected, FieldByName('Item_Group').AsString);
        wk_Item := FieldByName('Item_Group').AsString;
      end;
      ptr^.Item_Code := FieldByName('Item_Code').AsString;
      TreeView1.Items.AddChildObject(TreeView1.Selected, FieldByName('Item_Name').AsString, ptr); //포인터 변수까지 저장하는 AddChildObject 입니다. AddChild랑 조금 다른 메소드죠?
//    TreeView1.Items.AddChild(TreeView1.Selected, FieldByName('Section').AsString);
      Next;
    end;
  end;
end;

procedure TSearchForm.SpeedButton1Click(Sender: TObject);
begin
  AppStoreDM.Item.First;
end;

procedure TSearchForm.SpeedButton2Click(Sender: TObject);
begin
  if not AppStoreDM.Item.Bof then
     AppStoreDM.Item.Prior;
end;

procedure TSearchForm.SpeedButton3Click(Sender: TObject);
begin
  if not AppStoreDM.Item.Eof then
     AppStoreDM.Item.Next;
end;

procedure TSearchForm.SpeedButton4Click(Sender: TObject);
begin
  AppStoreDM.Item.Last;
end;

procedure TSearchForm.TreeView1Click(Sender: TObject);
var
  i: byte;
  ListItem: TListItem;
begin
  if not TreeView1.Selected.HasChildren then
  begin
    SubItemQuery.Close;
    SubItemQuery.Params[0].AsString := ItemRecptr(TreeView1.Selected.Data)^.Item_Code;
    SubItemQuery.Open;
    while not SubItemQuery.Eof do
    begin
      DBEdit1.Text := SubItemQuery.FieldByName('Item_Name').AsString;
      DBEdit2.Text := SubItemQuery.FieldByName('Item_Code').AsString;
      DBEdit3.Text := SubItemQuery.FieldByName('Item_Group').AsString;
      DBEdit4.Text := formatfloat('#,##0원', StrToint(SubItemQuery.FieldByName('Item_Price').AsString));
      DBEdit5.Text := SubItemQuery.FieldByName('Item_Size').AsString;
      DBEdit6.Text := SubItemQuery.FieldByName('Item_Maker').AsString;
      DBEdit7.Text := SubItemQuery.FieldByName('Item_MakeDate').AsString;
      SubItemQuery.Next;
    end;
  end;
end;

end.
