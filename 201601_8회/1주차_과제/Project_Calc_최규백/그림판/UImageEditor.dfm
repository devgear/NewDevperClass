object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #44536#47548#54032
  ClientHeight = 295
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 321
    Height = 281
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
  end
  object ColorGrid1: TColorGrid
    Left = 352
    Top = 8
    Width = 184
    Height = 152
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 352
    Top = 166
    Width = 184
    Height = 123
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 88
    object N1: TMenuItem
      Caption = 'File'
      object clear1: TMenuItem
        Caption = 'Clear'
        OnClick = clear1Click
      end
      object Open1: TMenuItem
        Caption = 'Open'
        ShortCut = 16463
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = 'Save As'
        OnClick = Save1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
end
