object frGuest: TfrGuest
  Left = 0
  Top = 0
  Caption = 'frGuest'
  ClientHeight = 344
  ClientWidth = 366
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
    Left = 0
    Top = 0
    Width = 184
    Height = 33
    Caption = 'Guest '#51221#48372#51077#47141
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btGuestLogin: TButton
    Left = 96
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Guest Login'
    TabOrder = 0
    OnClick = btGuestLoginClick
  end
  object btCancel: TButton
    Left = 190
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btCancelClick
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 55
    Width = 265
    Height = 78
    Caption = #44053#49324
    TabOrder = 2
    object edTeacherID: TLabeledEdit
      Left = 88
      Top = 19
      Width = 121
      Height = 21
      EditLabel.Width = 11
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'ID'
      EditLabel.ParentBiDiMode = False
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object edTeacherPassword: TLabeledEdit
      Left = 88
      Top = 47
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Password'
      EditLabel.ParentBiDiMode = False
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object btCheck: TButton
      Left = 215
      Top = 19
      Width = 47
      Height = 46
      Caption = #51064#51613
      TabOrder = 2
      OnClick = btCheckClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 48
    Top = 139
    Width = 265
    Height = 134
    Caption = #54617#49373
    TabOrder = 3
    object edStudentName: TLabeledEdit
      Left = 88
      Top = 23
      Width = 121
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #8251' '#51060#47492
      EditLabel.ParentBiDiMode = False
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object edStudentPhone: TLabeledEdit
      Left = 88
      Top = 50
      Width = 121
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #50672#46973#52376
      EditLabel.ParentBiDiMode = False
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object edStudentGrade: TLabeledEdit
      Left = 88
      Top = 104
      Width = 121
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #54617#45380
      EditLabel.ParentBiDiMode = False
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object edStudentSchool: TLabeledEdit
      Left = 88
      Top = 77
      Width = 121
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #54617#44368#47749
      EditLabel.ParentBiDiMode = False
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 3
    end
  end
end
