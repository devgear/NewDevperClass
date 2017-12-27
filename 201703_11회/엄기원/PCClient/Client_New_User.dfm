object Form_newuser: TForm_newuser
  Left = 0
  Top = 0
  Caption = 'Form_newuser'
  ClientHeight = 701
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 39
    Caption = #54924#50896#44032#51077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 88
    Width = 33
    Height = 13
    Caption = #50500#51060#46356
  end
  object Label3: TLabel
    Left = 56
    Top = 128
    Width = 44
    Height = 13
    Caption = #48708#48128#48264#54840
  end
  object Label4: TLabel
    Left = 56
    Top = 176
    Width = 22
    Height = 13
    Caption = #51060#47492
  end
  object Label5: TLabel
    Left = 56
    Top = 216
    Width = 44
    Height = 13
    Caption = #49373#45380#50900#51068
  end
  object Label6: TLabel
    Left = 56
    Top = 264
    Width = 55
    Height = 13
    Caption = #54648#46300#54256#48264#54840
  end
  object Button2: TButton
    Left = 272
    Top = 328
    Width = 75
    Height = 25
    Caption = #54924#50896#44032#51077
    TabOrder = 0
    OnClick = Button2Click
  end
  object Edit_ID: TEdit
    Left = 128
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit_PW: TEdit
    Left = 128
    Top = 125
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Edit_Name: TEdit
    Left = 128
    Top = 173
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit_Birth: TEdit
    Left = 128
    Top = 213
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit_phone: TEdit
    Left = 128
    Top = 261
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
