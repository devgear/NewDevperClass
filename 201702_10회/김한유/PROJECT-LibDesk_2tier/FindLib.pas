unit FindLib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids;

type
  TFindForm = class(TForm)
    LibAddressSource: TDataSource;
    LibPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    LibAddressCombo: TDBLookupComboBox;
    LibSource: TDataSource;
    LibNameCombo: TDBLookupComboBox;
    HiddenPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button2: TButton;
    UserSource: TDataSource;
    PanelMenu: TPanel;
    PanelTitel: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mylib: integer;
  end;

var
  FindForm: TFindForm;

implementation

{$R *.dfm}

uses DataAccessModule, RentSeat, Main, RentTime;

procedure TFindForm.Button1Click(Sender: TObject);
begin
  HiddenPanel.Visible := true;
  // LibNameCombo.Text := mylib;
  mylib := DataAccess.qrylib.FieldByName('lib_Seq').AsInteger;
  mainform.Label4.Caption := inttostr(mylib);
end;

procedure TFindForm.Button2Click(Sender: TObject);
begin
  if not Assigned(SeatForm) then
    SeatForm := TSeatForm.Create(Self);
  SeatForm.Parent := mainform.MainPanel;
  SeatForm.BorderStyle := bsNone;
  SeatForm.Align := alClient;
  SeatForm.Show;

end;

end.
