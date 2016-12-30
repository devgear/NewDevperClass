unit FormShape;

interface
uses
  Controls, types, Windows, classes, sysutils, Messages;

  procedure DrawRounded(Control: TWinControl);
implementation

procedure DrawRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20) ;
    Perform(EM_GETRECT, 0, lParam(@r)) ;
    InflateRect(r, - 2, - 2) ;
    Perform(EM_SETRECTNP, 0, lParam(@r)) ;
    SetWindowRgn(Handle, rgn, True) ;
    Invalidate;
  end;
end;
end.
