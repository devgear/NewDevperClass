unit ListeningForm;

interface

uses
  SpeakingForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ListeningFrame;

type
  TfrListening = class(TForm)
    procedure fmListeninglbExample1Click(Sender: TObject);
    procedure fmListeninglbExample2Click(Sender: TObject);
    procedure fmListeninglbExample3Click(Sender: TObject);
    procedure fmListeninglbExample4Click(Sender: TObject);
  private
    { Private declarations }
    FCheck: String;
  public
    { Public declarations }
  end;

var
  frListening: TfrListening;

implementation

{$R *.dfm}

procedure TfrListening.fmListeninglbExample1Click(Sender: TObject);
begin
  FCheck := 'A';
end;

procedure TfrListening.fmListeninglbExample2Click(Sender: TObject);
begin
  FCheck := 'B';
end;

procedure TfrListening.fmListeninglbExample3Click(Sender: TObject);
begin
  FCheck := 'C';
end;

procedure TfrListening.fmListeninglbExample4Click(Sender: TObject);
begin
  FCheck := 'D';
end;

end.
