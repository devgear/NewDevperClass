unit WritingForm;

interface

uses
  ResultGuideForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ListeningFrame, WritingFrame;

type
  TfrWriting = class(TForm)
    fmWriting: TfmWriting;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frWriting: TfrWriting;

implementation

{$R *.dfm}

end.
