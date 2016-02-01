program Project_School;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain_Form in 'UMain_Form.pas' {Main_Form},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain_Form, Main_Form);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
