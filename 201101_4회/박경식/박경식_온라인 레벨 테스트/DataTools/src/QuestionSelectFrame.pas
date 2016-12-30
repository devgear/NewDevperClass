unit QuestionSelectFrame;

interface

uses
  TestClasses,
  Generics.Collections,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmQuestionSelect = class(TFrame)
    PanelQuestionSelect: TPanel;
    lbQuestionSelect: TLabel;
    cbNumberSelect: TComboBox;
    procedure cbNumberSelectSelect(Sender: TObject);
  private
    function GetIndex: Integer;
    function NullCheck: boolean;
    function LastNumber: Integer;
    function IndexInitialize: Integer;
    { Private declarations }
  public
    OnQuestionSelect: TNotifyEvent;
    procedure NumberListing(List: TObjectList<TQuiz>);
    property IsNull: boolean read NullCheck;
    property TestIndex: Integer read GetIndex;
    property Numbering: Integer read LastNumber;
    property SetIndex: Integer read IndexInitialize;
  end;

implementation

{$R *.dfm}

{ TfrmQuestionSelect }

function TfrmQuestionSelect.LastNumber: Integer;
begin
  if cbNumberSelect.Items.Count < 1 then Result := 0
  else Result := StrToInt(cbNumberSelect.Items[cbNumberSelect.Items.Count - 1]);
end;

function TfrmQuestionSelect.NullCheck: boolean;
begin
  Result := cbNumberSelect.Text = '';
end;

procedure TfrmQuestionSelect.NumberListing(List: TObjectList<TQuiz>);
var
  I: Integer;
begin
  cbNumberSelect.Clear;

  for I := 0 to List.Count - 1 do
    cbNumberSelect.Items.AddObject(IntToStr(List.Items[I].QuizNumber), List.Items[I]);
  cbNumberSelect.ItemIndex := 0;

  cbNumberSelectSelect(List);
end;

procedure TfrmQuestionSelect.cbNumberSelectSelect(Sender: TObject);
begin
  if Assigned(OnQuestionSelect) then
    if cbNumberSelect.ItemIndex >= 0 then
      OnQuestionSelect(cbNumberSelect.Items.Objects[cbNumberSelect.ItemIndex]);
end;

function TfrmQuestionSelect.GetIndex: Integer;
begin
  Result := cbNumberSelect.ItemIndex;
end;

function TfrmQuestionSelect.IndexInitialize: Integer;
begin
  cbNumberSelect.ItemIndex := -1;
end;

end.
