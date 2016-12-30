object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #44536#47548#54032
  ClientHeight = 358
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 345
    Height = 289
  end
  object ColorGrid1: TColorGrid
    Left = 359
    Top = 8
    Width = 172
    Height = 112
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 359
    Top = 144
    Width = 172
    Height = 153
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
    Left = 432
    Top = 304
    object FIle1: TMenuItem
      Caption = 'FIle'
      object Clear1: TMenuItem
        Caption = 'Clear'
        OnClick = Clear1Click
      end
      object Open1: TMenuItem
        Caption = 'Open...'
        OnClick = Open1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As...'
        OnClick = SaveAs1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
end
