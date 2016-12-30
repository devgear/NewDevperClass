unit ResultListForm;

interface

uses
  LTClasses,
  ResultViewForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrResultList = class(TLTForm)
    ListView1: TListView;
    btResultView: TButton;
    Label1: TLabel;
    procedure btResultViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frResultList: TfrResultList;

implementation

{$R *.dfm}

procedure TfrResultList.btResultViewClick(Sender: TObject);
begin
  frResultView := TfrResultView.Create(self);
  frResultView.Parent := self;
  frResultView.Show;
end;

end.
