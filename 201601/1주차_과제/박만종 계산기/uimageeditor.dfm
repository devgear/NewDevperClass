object form1: Tform1
  Left = 0
  Top = 0
  Caption = 'form1'
  ClientHeight = 314
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 32
    Top = 32
    Width = 305
    Height = 169
  end
  object ColorGrid1: TColorGrid
    Left = 343
    Top = 32
    Width = 148
    Height = 128
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 32
    Top = 218
    Width = 41
    Height = 72
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
    Left = 24
    object FI1: TMenuItem
      Caption = 'FILE'
      object CLEAR1: TMenuItem
        Caption = 'CLEAR'
        OnClick = CLEAR1Click
      end
      object OPEN1: TMenuItem
        Caption = 'OPEN    (CTRL+O)'
        OnClick = OPEN1Click
      end
      object SAVEAS1: TMenuItem
        Caption = 'SAVE AS'
      end
      object EXIT1: TMenuItem
        Caption = 'EXIT'
      end
    end
  end
end
