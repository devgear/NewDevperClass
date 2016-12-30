unit uroom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ImgList, Contnrs, ShellAPI;

type
  TFrame2 = class(TFrame)
    Shape1: TShape;
    Shape2: TShape;
    Shape8: TShape;
    Shape10: TShape;
    Panel2: TPanel;
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
   private
    { Private declarations }
  public
      PartsList:TObjectList;
    hotx,hoty:integer;
    { Public declarations }
  end;

implementation

uses ucreate, Ugo;

{$R *.dfm}
procedure TFrame2.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  create: Tcrtform;
begin
  create := Tcrtform.create(goroom);
  create.Show;

end;
end.
