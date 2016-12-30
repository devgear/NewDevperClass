program ugoroom;

uses
  Forms,
  Ugo in 'Ugo.pas' {goroom},
  udm in 'udm.pas' {dm: TDataModule},
  ucreate in 'ucreate.pas' {crtForm},
  usales in 'usales.pas' {Frame4: TFrame},
  Ucalendar in 'Ucalendar.pas' {Frame5: TFrame},
  uitems in 'uitems.pas' {itemsFrame: TFrame},
  usearch in 'usearch.pas' {searchform},
  ucreateroom in 'ucreateroom.pas' {crroomform};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tgoroom, goroom);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
