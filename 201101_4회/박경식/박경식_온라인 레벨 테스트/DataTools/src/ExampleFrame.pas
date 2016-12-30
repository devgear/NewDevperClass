unit ExampleFrame;

interface

uses
  TestClasses,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmExample = class(TFrame)
    PanelExample: TPanel;
    lbExample: TLabel;
    MemoExample: TMemo;
  private
    function GetText: string;
    procedure SetText(const Value: string);
    { Private declarations }
  public
    property Text: string read GetText write SetText;
    procedure ClearMemo;
    procedure Binding(Writing: TWriting); overload;
    procedure Binding(Quiz: TQuiz); overload;
  end;

implementation

{$R *.dfm}

{ TfrmExample }

procedure TfrmExample.Binding(Writing: TWriting);
begin
  MemoExample.Text := Writing.ExampleText;
end;

procedure TfrmExample.Binding(Quiz: TQuiz);
begin
//  MemoExample.Text := TReading(Quiz).ExampleText;
end;

procedure TfrmExample.ClearMemo;
begin
  MemoExample.Clear;
end;

function TfrmExample.GetText: string;
begin
  Result := MemoExample.Text;
end;

procedure TfrmExample.SetText(const Value: string);
begin

end;

end.
