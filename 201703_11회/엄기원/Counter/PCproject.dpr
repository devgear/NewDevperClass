program PCproject;

uses
  Vcl.Forms,
  Pc_Counter_Main in 'Pc_Counter_Main.pas' {Form_main},
  Pc_Counter_now in 'Pc_Counter_now.pas' {Form_now},
  Vcl.Themes,
  Vcl.Styles,
  Pc_counter_History_Viwe in 'Pc_counter_History_Viwe.pas' {Form_History},
  Pc_counter_UserView in 'Pc_counter_UserView.pas' {Form_UserView},
  ClientClassesUnit2 in 'ClientClassesUnit2.pas',
  PC_counter_dm in 'PC_counter_dm.pas' {clientmodule: TDataModule},
  Unit1 in 'Unit1.pas',
  pc_counter_popup in 'pc_counter_popup.pas' {Form_pop};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(Tclientmodule, clientmodule);
  Application.CreateForm(TForm_main, Form_main);
  Application.Run;
end.
