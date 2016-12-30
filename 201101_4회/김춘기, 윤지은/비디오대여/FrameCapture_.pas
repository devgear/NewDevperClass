unit FrameCapture_;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Menus, VidGrab;

type
  TForm1 = class(TForm)
    Image1: TImage;
    GroupBox2: TGroupBox;
    Button6: TButton;
    Button7: TButton;
    Button4: TButton;
    Edit2: TEdit;
    CheckBox3: TCheckBox;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Button10: TButton;
    Button9: TButton;
    Button3: TButton;
    Button8: TButton;
    VideoGrabber1: TVideoGrabber;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Button1: TButton;
    Button5: TButton;
    Button11: TButton;
    Edit3: TEdit;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure VideoGrabber1ResizeVideo(Sender: TObject; SourceWidth,
      SourceHeight: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure VideoGrabber1VideoDeviceSelected(Sender: TObject);
    procedure VideoGrabber1FrameCaptureCompleted(Sender: TObject;
      FrameBitmap: TBitmap; BitmapWidth, BitmapHeight: Integer;
      FrameNumber: Cardinal; FrameTime: Int64; DestType: TFrameCaptureDest;
      FileName: String; Success: Boolean; FrameId: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}
//------------------------------------------------------------------------------

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action := cafree;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

   ComboBox1.Items.Text := VideoGrabber1.VideoDevices;
   ComboBox1.ItemIndex := VideoGrabber1.VideoDevice;

   Edit1.Text := IntToStr (VideoGrabber1.BurstCount);
   Edit3.Text := IntToStr (VideoGrabber1.BurstInterval);

   Memo1.Lines.Add ('storage: ' + VideoGrabber1.StoragePath);
end;
//------------------------------------------------------------------------------

procedure TForm1.Button3Click(Sender: TObject);
begin
   VideoGrabber1.StartPreview;
end;
//------------------------------------------------------------------------------

procedure TForm1.Button8Click(Sender: TObject);
begin
   VideoGrabber1.StopPreview;
end;
//------------------------------------------------------------------------------

procedure TForm1.Button11Click(Sender: TObject);
begin
   VideoGrabber1.BurstType := fc_TBitmap;
   VideoGrabber1.BurstMode := True;
end;
//------------------------------------------------------------------------------

procedure TForm1.Button1Click(Sender: TObject);
begin
   VideoGrabber1.BurstType := fc_JpegFile;
   VideoGrabber1.BurstMode := True;
end;
//------------------------------------------------------------------------------

procedure TForm1.Button5Click(Sender: TObject);
begin
   VideoGrabber1.BurstType := fc_BmpFile;
   VideoGrabber1.BurstMode := True;
end;
//------------------------------------------------------------------------------

procedure TForm1.Button2Click(Sender: TObject);
begin
   VideoGrabber1.BurstMode := False;
end;
//------------------------------------------------------------------------------

procedure TForm1.Button4Click(Sender: TObject);
begin
    VideoGrabber1.CaptureFrameTo (fc_TBitmap, '');
end;
//------------------------------------------------------------------------------

procedure TForm1.Button6Click(Sender: TObject);
begin
   if CheckBox3.Checked then begin
      VideoGrabber1.CaptureFrameTo (fc_JpegFile, '');
   end
   else begin
      VideoGrabber1.CaptureFrameTo (fc_JpegFile, Edit2.Text);
   end;
end;
//------------------------------------------------------------------------------

procedure TForm1.Button7Click(Sender: TObject);
begin
   if CheckBox3.Checked then begin
      VideoGrabber1.CaptureFrameTo (fc_BmpFile, '');
   end
   else begin
      VideoGrabber1.CaptureFrameTo (fc_BmpFile, Edit2.Text);
   end;
end;
//------------------------------------------------------------------------------

procedure TForm1.VideoGrabber1FrameCaptureCompleted(Sender: TObject;
  FrameBitmap: TBitmap; BitmapWidth, BitmapHeight: Integer;
  FrameNumber: Cardinal; FrameTime: Int64; DestType: TFrameCaptureDest;
  FileName: String; Success: Boolean; FrameId: Integer);
begin
   case DestType of
      fc_BmpFile, fc_JPEGFile: begin
        Memo1.Lines.add (FileName + ' created');
      end;
      fc_TBitmap: begin
         Image1.Picture.Bitmap.Assign (FrameBitmap);
         // you can replace the statement above by the faster 2 statements below,
         // because the bitmap is not copied. However be sure not to reuse it several times.
         // (symptom: a black bitmap. In this case use the statement above instead).

         //Image1.Picture.Bitmap.Handle := FrameBitmap.Handle;
         //FrameBitmap.ReleaseHandle;
      end;
   end;
end;
//------------------------------------------------------------------------------

procedure TForm1.VideoGrabber1VideoDeviceSelected(Sender: TObject);
begin
   ComboBox1.ItemIndex := VideoGrabber1.VideoDevice;

   ComboBox2.Items.Text := VideoGrabber1.AnalogVideoStandards;
   ComboBox2.ItemIndex := integer (VideoGrabber1.AnalogVideoStandard);
   ComboBox2.Enabled := VideoGrabber1.IsAnalogVideoDecoderAvailable;

   ComboBox4.Items.Text := VideoGrabber1.VideoInputs;
   ComboBox4.ItemIndex := integer (VideoGrabber1.VideoInput);

   ComboBox5.Items.Text := VideoGrabber1.VideoSizes;
   ComboBox5.ItemIndex := integer (VideoGrabber1.VideoSize);

   Button10.Enabled := VideoGrabber1.IsTVTunerAvailable;
end;

//------------------------------------------------------------------------------

procedure TForm1.VideoGrabber1ResizeVideo(Sender: TObject; SourceWidth,
  SourceHeight: Integer);
var
   NewWidth: longint;
begin
   Image1.Picture.Assign (nil);
   Image1.Left := VideoGrabber1.Left + VideoGrabber1.Width + 20;
   Image1.Width := VideoGrabber1.VideoWidth;
   Image1.Height := VideoGrabber1.VideoHeight;
   NewWidth := Image1.Left + VideoGrabber1.Width + 20;
   if NewWidth < GroupBox3.Width + 20 then begin
      NewWidth := GroupBox3.Width + 20;
   end;
   Height := VideoGrabber1.Top + VideoGrabber1.Height + 75;
   Width := NewWidth;
end;
//------------------------------------------------------------------------------

procedure TForm1.Button9Click(Sender: TObject);
begin
   VideoGrabber1.ShowDialog (dlg_VideoDevice);
end;
//------------------------------------------------------------------------------

procedure TForm1.Button10Click(Sender: TObject);
begin
   VideoGrabber1.ShowDialog (dlg_TVTuner);
end;
//------------------------------------------------------------------------------

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
   VideoGrabber1.VideoDevice := ComboBox1.ItemIndex;
end;
//------------------------------------------------------------------------------

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
   VideoGrabber1.AnalogVideoStandard := ComboBox2.ItemIndex;
end;
//------------------------------------------------------------------------------

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
   VideoGrabber1.VideoInput := ComboBox4.ItemIndex;
end;
//------------------------------------------------------------------------------

procedure TForm1.ComboBox5Change(Sender: TObject);
begin
   VideoGrabber1.VideoSize := ComboBox5.ItemIndex;
end;
//------------------------------------------------------------------------------

procedure TForm1.Edit1Change(Sender: TObject);
begin
   VideoGrabber1.BurstCount := StrToIntDef (Edit1.Text, 0);
end;
//------------------------------------------------------------------------------

procedure TForm1.Edit3Change(Sender: TObject);
begin
   VideoGrabber1.BurstInterval := StrToIntDef (Edit3.Text, 0);
end;
//------------------------------------------------------------------------------

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
   Edit2.Enabled := not CheckBox3.Checked; // if the file name is not generated automatically, it can be entered
end;
//------------------------------------------------------------------------------

end.
