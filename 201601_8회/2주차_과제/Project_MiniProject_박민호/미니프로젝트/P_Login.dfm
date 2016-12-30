object Login: TLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 128
  ClientWidth = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 252
    Height = 128
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 14
      Width = 12
      Height = 16
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 68
      Height = 16
      Caption = 'PASSWORD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 24
      Top = 85
      Width = 90
      Height = 25
      Caption = #47196#44536#51064
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 134
      Top = 85
      Width = 90
      Height = 25
      Caption = #52712#49548
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 103
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 103
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
end
