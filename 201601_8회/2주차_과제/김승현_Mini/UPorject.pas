unit UPorject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList;

type
  TProForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBRadioGroup1: TDBRadioGroup;
    Button4: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Button5: TButton;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    Button6: TButton;
    ImageList1: TImageList;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProForm: TProForm;
  a:integer = 1;

implementation

{$R *.dfm}

uses UDM, UCalender;

procedure TProForm.Button1Click(Sender: TObject);
begin
  DataModule1.Project.Insert;
  DBEdit2.SetFocus;
end;

procedure TProForm.Button2Click(Sender: TObject);
begin
    try
      DataModule1.Project.Post;
    except
      on e:Exception do
        ShowMessage(e.Message);
    end;
    DataModule1.Project.Refresh;
end;

procedure TProForm.Button3Click(Sender: TObject);
begin
  DataModule1.Project.Cancel;
end;

procedure TProForm.Button4Click(Sender: TObject);
begin
  if MessageDlg('ªË¡¶ ?',mtConfirmation,[mbYes, mbNo], 0) = mrYes then
  try
    UDM.DataModule1.Project.Delete;
  Except
    on E:Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TProForm.Button5Click(Sender: TObject);
begin
  DataModule1.Project.Edit;
end;

procedure TProForm.Button6Click(Sender: TObject);
begin
  DataModule1.Project.Refresh;
end;

procedure TProForm.DBEdit2Change(Sender: TObject);
begin
//  UDM.DataModule1.FDQuery1.Close;
//  UDM.DataModule1.FDQuery1.ParamByName('NAME').Value := DBEdit2.Text;
//  UDM.DataModule1.FDQuery1.Open;
//  DBEdit6.Text := UDM.DataModule1.FDQuery1.FieldByName('num').Value;
  //if not FDQuery1.Eof then
   // ShowMessage(FDQuery1.Fields[0].AsString);
end;

procedure TProForm.DBEdit3Click(Sender: TObject);
begin
      CalForm := TCalForm.Create(Application);
      CalForm.Tag := 1;
      CalForm.Show;
end;

procedure TProForm.DBEdit4Click(Sender: TObject);
begin
      CalForm := TCalForm.Create(Application);
      CalForm.Tag := 2;
      CalForm.Show;
end;

procedure TProForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
