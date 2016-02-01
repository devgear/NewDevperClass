unit UManager_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    Pagecontrol: TPageControl;
    TabSheet1: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBGrid5: TDBGrid;
    DBNavigator5: TDBNavigator;
    DBEdit3: TDBEdit;
    TabSheet7: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DBImage1: TDBImage;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UManager_Dm;

procedure TForm1.Button12Click(Sender: TObject);
begin
dm.TimesCDS.cancel;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
dm.TimesCDS.Append;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if dm.TimesCDS.UpdateStatus = TUpdateStatus.usInserted then
    dm.TimesCDS.FieldByName('H_ID').AsInteger := -1;
   dm.TimesCDS.post;
   dm.TimesCDS.ApplyUpdates(-1);
   dm.TimesCDS.Refresh;
  end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   dm.TimesCDS.delete;
   dm.TimesCDS.ApplyUpdates(-1);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
dm.TimesCDS.cancel;
dm.TimesCDS.Cancelupdates;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     dm.personCDS.Append;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if dm.personCDS.UpdateStatus = TUpdateStatus.usInserted then
    dm.personCDS.FieldByName('P_ID').AsInteger := -1;
   dm.personCDS.post;
   dm.personCDS.ApplyUpdates(-1);
   dm.personCDS.Refresh;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    dm.personCDS.delete;
    dm.PersonCDS.ApplyUpdates(-1);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
dm.personCDS.cancel;
dm.personCDS.Cancelupdates;
end;

procedure TForm1.DBImage1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    DBimage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

end.
