unit SpeakingForm;

interface

uses
  ReadingForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SpeakingFrame;

type
  TfrSpeaking = class(TForm)
    fmSpeaking: TfmSpeaking;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frSpeaking: TfrSpeaking;

implementation

{$R *.dfm}

end.
