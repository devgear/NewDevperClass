unit URegForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Mask, DBCtrls, FMTBcd, DB, SqlExpr,
  DBGrids;

type
  TRegForm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    btn_Exit: TButton;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel6: TPanel;
    Panel11: TPanel;
    Panel10: TPanel;
    Panel9: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button5: TButton;
    btn_Insert: TButton;
    ItemSGQuery: TSQLQuery;
    DBGrid1: TDBGrid;
    btn_Cancel: TButton;
    btn_Delete: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_InsertClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegForm: TRegForm;

implementation

uses UAppStoreDM;

{$R *.dfm}

procedure TRegForm.btn_CancelClick(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  Edit7.Text := '';

  With AppStoreDM do
  begin
    Item.Cancel;
    Item.CancelUpdates;
  end;
end;

procedure TRegForm.btn_DeleteClick(Sender: TObject);
begin
  if messagedlg('삭제 하시겠습니까?', mtconfirmation,[mbyes, mbno],0) = mryes then
     try
       AppStoreDM.Item.Delete;
       AppStoreDM.Item.ApplyUpdates(-1);
     except
       on e:EXCEPTION do
          ShowMessage(e.Message);
     end;
end;

procedure TRegForm.btn_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TRegForm.btn_InsertClick(Sender: TObject);
begin
  try
    With AppStoreDM do
    begin
      Item.Insert;
      Item.FieldByName('Item_Name').AsString := Edit1.Text;
      Item.FieldByName('Item_Code').AsString := Edit2.Text;
      Item.FieldByName('Item_Group').AsString := Edit3.Text;
      Item.FieldByName('Item_Price').AsString := Edit4.Text;
      Item.FieldByName('Item_Size').AsString := Edit5.Text;
      Item.FieldByName('Item_Maker').AsString := Edit6.Text;
      Item.FieldByName('Item_MakeDate').AsString := Edit7.Text;

      Item.Post;
      Item.ApplyUpdates(-1);
    end;
  except
     ShowMessage('입력된 데이터가 없습니다.');
     AppStoreDM.Item.Cancel;
     AppStoreDM.Item.CancelUpdates;
  end;
end;

procedure TRegForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     SelectNext(Sender As TWinControl, true, true);
end;

procedure TRegForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRegForm.FormCreate(Sender: TObject);
begin
  Top := 0;
  Left := 0;
end;

procedure TRegForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
     SelectNext(Sender As TWinControl, true, true);
end;

end.
