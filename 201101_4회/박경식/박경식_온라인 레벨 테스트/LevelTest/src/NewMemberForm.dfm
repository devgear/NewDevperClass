object frNewMember: TfrNewMember
  Left = 0
  Top = 0
  Caption = #49888#44508#44032#51077
  ClientHeight = 388
  ClientWidth = 408
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
    Left = 64
    Top = 83
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 64
    Top = 123
    Width = 48
    Height = 13
    Caption = #48708#48128#48264#54840
  end
  object Label3: TLabel
    Left = 64
    Top = 163
    Width = 24
    Height = 13
    Caption = #51060#47492
  end
  object Label4: TLabel
    Left = 64
    Top = 200
    Width = 24
    Height = 13
    Caption = #44428#54620
  end
  object Label5: TLabel
    Left = 64
    Top = 240
    Width = 48
    Height = 13
    Caption = #54924#50896#46321#44553
  end
  object Label6: TLabel
    Left = 64
    Top = 283
    Width = 39
    Height = 13
    Caption = 'Relation'
  end
  object edID: TEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
  end
  object edPassword: TEdit
    Left = 136
    Top = 120
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 1
  end
  object edName: TEdit
    Left = 136
    Top = 160
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 2
  end
  object edAuth: TEdit
    Left = 136
    Top = 197
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 3
  end
  object edMblevel: TEdit
    Left = 136
    Top = 240
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 4
  end
  object edRelation: TEdit
    Left = 136
    Top = 280
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 5
  end
  object btApply: TButton
    Left = 296
    Top = 283
    Width = 75
    Height = 25
    Caption = #44032' '#51077
    TabOrder = 6
    OnClick = btApplyClick
  end
end
