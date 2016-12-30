unit ResultViewForm;

interface

uses
  LTClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrResultView = class(TLTForm)
    Label1: TLabel;
    btPrev: TButton;
    procedure btPrevClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frResultView: TfrResultView;

implementation

{$R *.dfm}

procedure TfrResultView.btPrevClick(Sender: TObject);
begin
  Close;
end;

end.
