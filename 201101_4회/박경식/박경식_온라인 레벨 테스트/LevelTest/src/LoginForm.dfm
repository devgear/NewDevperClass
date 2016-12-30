object frLogin: TfrLogin
  Left = 0
  Top = 0
  Caption = 'frLogin'
  ClientHeight = 262
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 112
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 152
    Top = 24
    Width = 81
    Height = 33
    Caption = #47196#44536#51064
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btLogin: TButton
    Left = 216
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btLoginClick
  end
  object edID: TEdit
    Left = 80
    Top = 74
    Width = 121
    Height = 21
    Alignment = taRightJustify
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
    TextHint = 'ID'
  end
  object edPassword: TEdit
    Left = 80
    Top = 101
    Width = 121
    Height = 21
    Alignment = taRightJustify
    ImeName = 'Microsoft Office IME 2007'
    PasswordChar = '*'
    TabOrder = 1
    TextHint = 'PASSWORD'
    OnKeyPress = edPasswordKeyPress
  end
  object btGuest: TButton
    Left = 80
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Guest'
    TabOrder = 3
    OnClick = btGuestClick
  end
  object btExit: TButton
    Left = 216
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 4
    OnClick = btExitClick
  end
  object CheckBox1: TCheckBox
    Left = 80
    Top = 134
    Width = 97
    Height = 17
    Caption = 'ID'#51200#51109
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 216
    Top = 134
    Width = 97
    Height = 17
    Caption = 'Password '#51200#51109
    TabOrder = 6
  end
end
