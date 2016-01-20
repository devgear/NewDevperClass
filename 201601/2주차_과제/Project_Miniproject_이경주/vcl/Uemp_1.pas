unit Uemp_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Temp_1 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure cancle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  emp_1: Temp_1;

implementation

{$R *.dfm}

uses ClientModuleUnit1, Uemp;

procedure Temp_1.Button2Click(Sender: TObject);
begin
//
cancle;
emp_1.Close;
end;

procedure Temp_1.cancle;
begin
  dm.emp.cancel;
  dm.emp.CancelUpdates;

end;

end.
