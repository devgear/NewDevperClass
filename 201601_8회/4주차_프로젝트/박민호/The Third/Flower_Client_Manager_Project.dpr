program Flower_Client_Manager_Project;

uses
  Vcl.Forms,
  Flower_Main_Manager in 'Flower_Main_Manager.pas' {Form2},
  Flower_Member in 'Flower_Member.pas' {Member_Form},
  Flower_Client_DataModule in 'Flower_Client_DataModule.pas' {DataModule1: TDataModule},
  Flower_Flower in 'Flower_Flower.pas' {Flower_List_Info_Form},
  Flower_Reservation in 'Flower_Reservation.pas' {Reservation_Form},
  Flower_Order in 'Flower_Order.pas' {Order_Form},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Night');
  Application.CreateForm(TMember_Form, Member_Form);
  Application.CreateForm(TFlower_List_Info_Form, Flower_List_Info_Form);
  Application.CreateForm(TReservation_Form, Reservation_Form);
  Application.CreateForm(TOrder_Form, Order_Form);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
