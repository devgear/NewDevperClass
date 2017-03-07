program Manager_Phone;

uses
  System.StartUpCopy,
  FMX.Forms,
  dmPhone in 'dmPhone.pas' {DataModule2: TDataModule},
  Phone in 'Phone.pas' {PhoneMasterDetail};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TPhoneMasterDetail, PhoneMasterDetail);
  Application.Run;
end.
