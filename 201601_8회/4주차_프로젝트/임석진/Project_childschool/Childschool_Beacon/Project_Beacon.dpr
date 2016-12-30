program Project_Beacon;

uses
  System.StartUpCopy,
  FMX.Forms,
  UBeacon in 'UBeacon.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
