unit SelectForm;

interface

uses
  LTClasses,
  BackgroundForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrSelect = class(TLTForm)
    lvTest: TListView;
    btTestStart: TButton;
    Label1: TLabel;
    procedure btTestStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSelect: TfrSelect;

implementation

{$R *.dfm}

procedure TfrSelect.btTestStartClick(Sender: TObject);
begin
  frBackground := TfrBackground.Create(self);
  frBackground.Parent := self;
  frBackground.Show;
end;

end.
