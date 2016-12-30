object Customnew: TCustomnew
  Left = 0
  Top = 0
  Caption = #44256#44061#46321#47197
  ClientHeight = 247
  ClientWidth = 551
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
    Left = 13
    Top = 25
    Width = 66
    Height = 13
    Caption = #44256'  '#44061' '#48264' '#54840'  '
  end
  object Label3: TLabel
    Left = 254
    Top = 22
    Width = 63
    Height = 13
    Caption = #49457'            '#47749' '
  end
  object Label4: TLabel
    Left = 19
    Top = 59
    Width = 60
    Height = 13
    Caption = #51452' '#48124' '#48264' '#54840' '
  end
  object Label6: TLabel
    Left = 13
    Top = 103
    Width = 63
    Height = 13
    Caption = #51452'           '#49548'  '
  end
  object Label8: TLabel
    Left = 19
    Top = 155
    Width = 63
    Height = 13
    Caption = #51060'    '#47700'    '#51068' '
  end
  object Label38: TLabel
    Left = 12
    Top = 212
    Width = 60
    Height = 13
    Caption = #46321#47197#44256#44061#49688
  end
  object Label5: TLabel
    Left = 263
    Top = 61
    Width = 54
    Height = 13
    Caption = #55092'  '#45824'  '#54256'  '
  end
  object Label2: TLabel
    Left = 330
    Top = 156
    Width = 54
    Height = 13
    Caption = #46321#47197#51068#51088'  '
  end
  object DBEdit25: TDBEdit
    Left = 96
    Top = 18
    Width = 152
    Height = 21
    DataField = 'P_ID'
    DataSource = udm.customertableSource
    ImeName = 'Microsoft IME 2003'
    TabOrder = 0
  end
  object DBEdit26: TDBEdit
    Left = 337
    Top = 18
    Width = 192
    Height = 21
    DataField = 'P_NAME'
    DataSource = udm.customertableSource
    ImeName = 'Microsoft IME 2003'
    TabOrder = 1
  end
  object DBEdit27: TDBEdit
    Left = 104
    Top = 56
    Width = 153
    Height = 21
    DataField = 'P_NUM'
    DataSource = udm.customertableSource
    ImeName = 'Microsoft IME 2003'
    TabOrder = 2
  end
  object DBEdit28: TDBEdit
    Left = 96
    Top = 104
    Width = 427
    Height = 21
    DataField = 'P_ADDRESS'
    DataSource = udm.customertableSource
    ImeName = 'Microsoft IME 2003'
    TabOrder = 3
  end
  object DBEdit34: TDBEdit
    Left = 97
    Top = 152
    Width = 192
    Height = 21
    DataField = 'P-EMAIL'
    DataSource = udm.customertableSource
    ImeName = 'Microsoft IME 2003'
    TabOrder = 4
  end
  object DBEdit36: TDBEdit
    Left = 96
    Top = 207
    Width = 193
    Height = 21
    ImeName = 'Microsoft IME 2003'
    TabOrder = 5
  end
  object DBEdit30: TDBEdit
    Left = 336
    Top = 56
    Width = 193
    Height = 21
    DataField = 'P_PHONE'
    DataSource = udm.customertableSource
    ImeName = 'Microsoft IME 2003'
    TabOrder = 6
  end
  object DBEdit33: TDBEdit
    Left = 402
    Top = 152
    Width = 121
    Height = 21
    DataField = 'P_DATE'
    DataSource = udm.customertableSource
    ImeName = 'Microsoft IME 2003'
    TabOrder = 7
  end
  object Button1: TButton
    Left = 369
    Top = 206
    Width = 74
    Height = 33
    Caption = #46321#47197
    TabOrder = 8
  end
  object Button2: TButton
    Left = 449
    Top = 206
    Width = 74
    Height = 33
    Caption = #45803#44592
    TabOrder = 9
    OnClick = Button2Click
  end
end
