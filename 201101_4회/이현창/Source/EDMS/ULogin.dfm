object LoginForm: TLoginForm
  Left = 0
  Top = 0
  Caption = #47196#44536#51064
  ClientHeight = 176
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 139
    Width = 58
    Height = 13
    Caption = #48708#48128#48264#54840' : '
  end
  object Label2: TLabel
    Left = 8
    Top = 115
    Width = 58
    Height = 13
    Caption = #49324#50896#48264#54840' : '
  end
  object Label3: TLabel
    Left = 89
    Top = 40
    Width = 162
    Height = 58
    Alignment = taCenter
    Caption = 'Log- in '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 0
    Width = 332
    Height = 39
    Align = alTop
    Alignment = taCenter
    Caption = #51204#51088' '#47928#49436' '#44208#51228
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
    ExplicitWidth = 212
  end
  object Edt_Password: TEdit
    Left = 73
    Top = 136
    Width = 137
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    PasswordChar = '*'
    TabOrder = 1
    Text = '11'
  end
  object Edt_id: TEdit
    Left = 72
    Top = 112
    Width = 137
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
    Text = '20041622'
  end
  object btn_OK: TButton
    Left = 217
    Top = 104
    Width = 115
    Height = 40
    Caption = #47196#44536#51064'!'
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object btn_cancel: TButton
    Left = 216
    Top = 150
    Width = 116
    Height = 22
    Caption = #51333'    '#47308'!'
    TabOrder = 3
    OnClick = btn_cancelClick
  end
end
