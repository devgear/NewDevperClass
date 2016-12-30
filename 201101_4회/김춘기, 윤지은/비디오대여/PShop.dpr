program PShop;

uses
  Forms,
  Uvideo in 'Uvideo.pas' {VideoForm},
  UCustom in 'UCustom.pas' {custom},
  UMovies in 'UMovies.pas' {movies},
  UBring in 'UBring.pas' {bring},
  UChangeForm in 'UChangeForm.pas' {chageForm},
  Ulend in 'Ulend.pas' {lendForm},
  Uddm in 'Uddm.pas' {udm: TDataModule},
  FrameCapture_ in 'FrameCapture_.pas' {Form1},
  loadvideo1 in 'loadvideo1.pas' {loadvideo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TVideoForm, VideoForm);
  Application.CreateForm(Tudm, udm);
  // Application.CreateForm(Tlend_Form, lend_Form);
  Application.Run;
end.
