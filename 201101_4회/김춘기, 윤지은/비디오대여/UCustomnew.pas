unit UCustomnew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask;

type
  TCustomnew = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label38: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit33: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Customnew: TCustomnew;

implementation

uses Uddm;

{$R *.dfm}

procedure TCustomnew.Button2Click(Sender: TObject);
begin
  CLOSE;
end;

procedure TCustomnew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
