unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.CheckLst,
  Vcl.WinXCalendars, frxClass, frxExportXLSX, Excel2000, Vcl.OleServer,
  System.ImageList, Vcl.ImgList;

type
  TFormMain = class(TForm)
    pnl_main: TPanel;
    HosListSource: TDataSource;
    ItemSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pnl_header: TPanel;
    lb_hos_name: TLabel;
    lb_hos_phone: TLabel;
    edithos_name: TEdit;
    edithos_phone: TEdit;
    btn_ser: TButton;
    btn_add: TButton;
    btn_delet: TButton;
    btn_close: TButton;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    pnl_haeder3: TPanel;
    lb_item2: TLabel;
    lb_price2: TLabel;
    lb_size: TLabel;
    lb_ea: TLabel;
    lb_blank: TLabel;
    dbedit_item: TDBEdit;
    dbedit_price: TDBEdit;
    dbedit_size: TDBEdit;
    dbedit_ea: TDBEdit;
    dbedit_blank: TDBEdit;
    pnl_header_h2: TPanel;
    lb_item: TLabel;
    lb_price: TLabel;
    edit_item: TEdit;
    edit_price: TEdit;
    btn_serch3: TButton;
    btn_add3: TButton;
    btn_save3: TButton;
    btn_delet3: TButton;
    pnl_main3: TPanel;
    DBGrid3: TDBGrid;
    TabSheet3: TTabSheet;
    pnl_haeder4: TPanel;
    pnl_main4: TPanel;
    pnl_heaher_2: TPanel;
    lb_name: TLabel;
    DBEdit1: TDBEdit;
    lb_id: TLabel;
    DBEdit2: TDBEdit;
    lb_saler: TLabel;
    DBEdit5: TDBEdit;
    lb_phone: TLabel;
    DBEdit3: TDBEdit;
    lb_address: TLabel;
    DBEdit4: TDBEdit;
    grp_img: TGroupBox;
    img_id: TImage;
    Button2: TButton;
    Button3: TButton;
    imgdialog: TOpenDialog;
    btn_save: TButton;
    tradeSource1: TDataSource;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button1: TButton;
    Button5: TButton;
    Button4: TButton;
    Button6: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    DBComboBox1: TDBComboBox;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    ImageList1: TImageList;
    procedure btn_addClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure edithos_nameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edithos_phoneKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edit_itemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_priceKeyUp(Sender: TObject; var Key: Word;      Shift: TShiftState);
    procedure btn_add3Click(Sender: TObject);
    procedure btn_serch3Click(Sender: TObject);
    procedure btn_save3Click(Sender: TObject);
    procedure btn_delet3Click(Sender: TObject);
    procedure btn_serClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_deletClick(Sender: TObject);

    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure HosListSourceDataChange(Sender: TObject; Field: TField);




  private
    { Private declarations }
    procedure Hospital_Filter;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  Excel : Variant;
  Id : Integer;
implementation

{$R *.dfm}

uses UMainAdd, Udata, USubOrder, USub1, CommonFunctions, USubAdd, ComObj;



procedure TFormMain.btn_add3Click(Sender: TObject);
begin
 dbedit_item.SetFocus;
 DataModule5.ItemQuery.Append;
end;

procedure TFormMain.btn_addClick(Sender: TObject);
begin
  DBEdit1.SetFocus;
  DataModule5.HosQuery.Append;
end;


procedure TFormMain.btn_delet3Click(Sender: TObject);
begin
 if MessageDlg('삭제하시겠습니까?',mtconfirmation,[mbyes,mbno],0) = mryes then
 DataModule5.ItemQuery.Delete;
end;



procedure TFormMain.btn_deletClick(Sender: TObject);
begin
 if MessageDlg('삭제하시겠습니까?',mtconfirmation,[mbyes,mbno],0) = mryes then

DataModule5.HosQuery.Delete;
end;

procedure TFormMain.btn_save3Click(Sender: TObject);
begin
 DataModule5.ItemQuery.Post;
 DataModule5.ItemQuery.Refresh;
end;

procedure TFormMain.btn_saveClick(Sender: TObject);
begin
 DataModule5.HosQuery.Post;
 DataModule5.HosQuery.Refresh;

end;

procedure TFormMain.btn_serch3Click(Sender: TObject);
begin
 edit_item.SetFocus;
end;

procedure TFormMain.btn_serClick(Sender: TObject);
begin
  edithos_name.SetFocus;
end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  FormMain.Close;
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
if imgdialog.Execute  then
    begin

    LoadImageFromFile(img_id,imgdialog.FileName);

    end;
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
  img_id.Picture.Assign(nil);
end;





procedure TFormMain.Button5Click(Sender: TObject);
begin
 FormMain.Close;
end;



procedure TFormMain.Button6Click(Sender: TObject);
begin

 Form4 := TForm4.Create(Application);
 Form4.Show;
end;

procedure TFormMain.CheckBox1Click(Sender: TObject);
begin
  DBGrid1.SetFocus;
  Hospital_Filter;
end;

procedure TFormMain.CheckBox2Click(Sender: TObject);
begin
  DBGrid1.SetFocus;
  Hospital_Filter;
end;

procedure TFormMain.CheckBox3Click(Sender: TObject);
begin
  DBGrid1.SetFocus;
  Hospital_Filter;
end;



procedure TFormMain.ComboBox1Change(Sender: TObject);
begin
 case ComboBox1.Itemindex of
    0:
      BEGIN
        DataModule5.FDQuery1.IndexFieldNames := 'TR_DATA';
        DataModule5.FDQuery1TR_DATA.Index := 0;
        DataModule5.FDQuery1HOS_NAME.Index := 1;
      END;
    1:
      begin
        DataModule5.FDQuery1.IndexFieldNames := 'HOS_NAME';
        DataModule5.FDQuery1HOS_NAME.Index := 1;
        DataModule5.FDQuery1TR_DATA.Index := 0;
      end;
    2:
      DataModule5.FDQuery1.IndexFieldNames := 'ITEM_NAME';
  end;
end;

procedure TFormMain.btn_closeClick(Sender: TObject);
begin
//Form4 := TForm4.Create(Application);
//Form4.show;
  FormMain.Close;
end;







procedure TFormMain.DBGrid1CellClick(Column: TColumn);
begin
 FormSub := TFormSub.Create(Application);
 FormSub.Show;
end;


procedure TFormMain.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var
  Filter : string;
 begin
  Filter := '';
  if Edit1.Text <>'' then
  begin
    Filter := Format('TR_DATA like''%%%s%%''',[Edit1.Text]);
  end;

  DataModule5.FDQuery1.Filter := Filter;
  DataModule5.FDQuery1.Filtered := (Filter <>'');

end;

procedure TFormMain.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var
  Filter : string;
 begin
  Filter := '';
  if Edit2.Text <>'' then
  begin
    Filter := Format('TR_HOS_NAME like''%%%s%%''',[Edit2.Text]);
  end;

  DataModule5.FDQuery1.Filter := Filter;
  DataModule5.FDQuery1.Filtered := (Filter <>'');
end;
procedure TFormMain.edithos_nameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  Filter : string;
 begin
  Filter := '';
  if edithos_name.Text <>'' then
  begin
    Filter := Format('HOS_NAME like''%%%s%%''',[edithos_name.Text]);
  end;

  DataModule5.HosQuery.Filter := Filter;
  DataModule5.HosQuery.Filtered := (Filter <>'');
end;


procedure TFormMain.edithos_phoneKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

 var
  Filter : string;
 begin
  Filter := '';
  if edithos_phone.Text <>'' then
  begin
    Filter := Format('HOS_PHONE like''%%%s%%''',[edithos_phone.Text])

  end;

  DataModule5.HosQuery.Filter := Filter;
  DataModule5.HosQuery.Filtered := (Filter <>'');
end;


procedure TFormMain.edit_itemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Filter : string;
 begin
  Filter := '';
  if edit_item.Text <>'' then
  begin
    Filter := Format('ITEM_NAME like''%%%s%%''',[edit_item.Text])
  end;
  DataModule5.ItemQuery.Filter := Filter;
  DataModule5.ItemQuery.Filtered := (Filter <>'');
 end;

procedure TFormMain.edit_priceKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Filter : string;
 begin
  Filter := '';
  if edit_price.Text <>'' then
  begin
    Filter := Format('ITEM_PRICE like''%%%s%%''',[edit_price.Text])

  end;

  DataModule5.ItemQuery.Filter := Filter;
  DataModule5.ItemQuery.Filtered := (Filter <>'');

 end;


procedure TFormMain.HosListSourceDataChange(Sender: TObject; Field: TField);
var
 LField : TField;
begin

  if DataModule5.HosQuery.State <> dsBrowse then
    Exit;

    LField := DataModule5.HosQuery.FieldByName('HOA_IMG');
    LoadImageFromBlobField(img_id, LField as TBlobField);
end;



procedure TFormMain.Hospital_Filter;

var Filter : string;
 begin
   Filter := '';
  if CheckBox1.Checked then
    Filter := 'HOS_PART = ''1''';
  if CheckBox2.Checked then
  begin
    if Filter <>'' then
    Filter := Filter + ' or ';
    Filter := Filter + 'HOS_PART =''2''';
  end;
   if CheckBox3.Checked then
  begin
    if Filter <>'' then
    Filter := Filter +  ' or ';
    Filter := Filter + 'HOS_PART =''3''';
  end;
  DataModule5.HosQuery.Filter := Filter;
  DataModule5.HosQuery.Filtered := (Filter <>'');
end;




end.
