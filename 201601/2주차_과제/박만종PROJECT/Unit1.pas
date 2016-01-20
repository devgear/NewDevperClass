unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.MongoDBDataSet, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait, USplash;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SAONE: TLabel;
    PDURING: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Edit2: TEdit;
    SpeedButton6: TSpeedButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label11: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDm;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
  Edit1.Text := DataModule1.querySource.DataSet.FieldByName('S_CODE').AsString;
  Edit3.Text := DataModule1.querySource.DataSet.FieldByName('S_NAME').AsString;
  Edit4.Text := DataModule1.querySource.DataSet.FieldByName('J_CODE').AsString;
  Edit5.Text := DataModule1.querySource.DataSet.FieldByName('S_RANK').AsString;
  Edit6.Text := DataModule1.querySource.DataSet.FieldByName('S_MOBI').AsString;

end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
begin

  Edit7.Text := DataModule1.QUERYSOUCE2.DataSet.FieldByName('P_CODE').AsString;
  Edit8.Text := DataModule1.QUERYSOUCE2.DataSet.FieldByName('P_NAME').AsString;
  Edit9.Text := DataModule1.QUERYSOUCE2.DataSet.FieldByName
    ('PSTA_DATE').AsString;
  Edit10.Text := DataModule1.QUERYSOUCE2.DataSet.FieldByName
    ('PEND_DATE').AsString;
  Edit11.Text := DataModule1.QUERYSOUCE2.DataSet.FieldByName('P_GAE').AsString;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  DataModule1.querySource.DataSet := DataModule1.FDQuery1;

  if RadioButton1.Checked then
  // PageControl1.TabSheet2.ENABLED =:FALSE;
  begiN
   PageControl1.ActivePage :=TabSheet1;
   // TabSheet1.ENABLED := True;
    TabSheet2.ENABLED := False;

    With DataModule1.FDQuery1 Do
    Begin
      CLOSE;
      // DATA :=NULL;
      PARAMs.ParamByName('S_CODE').AsString := Edit2.Text;
      OPEN;
    End;
  end
  else if RadioButton2.Checked then
  begin
    PageControl1.ActivePage :=TabSheet2;
    TabSheet2.ENABLED := True;
    TabSheet1.ENABLED := False;

    BEGIN
      DataModule1.querySource.DataSet := DataModule1.FDQuery2;

      begiN
        With DataModule1.FDQuery2 Do
        Begin
          CLOSE;
          // DATA :=NULL;
          PARAMs.ParamByName('P_CODE').AsString := Edit2.Text;
          OPEN;
        End;
      end;
    end;
  end;
   END;
  procedure TForm1.SpeedButton3Click(Sender: TObject);
  begin
    DataModule1.FDQuery1.Append;
  end;

  procedure TForm1.SpeedButton4Click(Sender: TObject);
  begin
    DataModule1.FDQuery1.Delete;
    if DataModule1.FDQuery1.ApplyUpdates(0) = 0 then
      MessageDlg('삭제되었습니다.', mtInformation, [mbOk], 0);
    if DataModule1.FDConnection1.Connected then
      DataModule1.FDConnection1.Connected := False
  end;

  procedure TForm1.SpeedButton5Click(Sender: TObject);
  begin
    // if DataModule1.FDQuery1.State = dsbrowse then
    // raise Exception.Create('조회중');

    try
      DataModule1.FDQuery1.Post;
    except
      on e: exception do
        showmessage(e.Message);
    end;
  end;

  procedure TForm1.SpeedButton6Click(Sender: TObject);
  begin
    CLOSE;
  end;

end.
