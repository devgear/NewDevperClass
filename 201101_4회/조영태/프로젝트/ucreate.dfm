object crtForm: TcrtForm
  Left = 0
  Top = 0
  Caption = #46321#47197
  ClientHeight = 327
  ClientWidth = 518
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
    Left = 8
    Top = 8
    Width = 505
    Height = 305
    TabOrder = 0
    object namelabel: TLabel
      Left = 56
      Top = 75
      Width = 48
      Height = 13
      Caption = #51060'        '#47492
    end
    object telLabel: TLabel
      Left = 280
      Top = 75
      Width = 48
      Height = 13
      Caption = #51204#54868#48264#54840
    end
    object suibLabel: TLabel
      Left = 56
      Top = 123
      Width = 48
      Height = 13
      Caption = #48169'  '#44552'  '#50529
    end
    object boLabel: TLabel
      Left = 280
      Top = 123
      Width = 48
      Height = 13
      Caption = #48372'  '#51613'  '#44552
    end
    object indateLabel: TLabel
      Left = 56
      Top = 170
      Width = 48
      Height = 13
      Caption = #51077#49892#45216#51676
    end
    object outdateLabel9: TLabel
      Left = 280
      Top = 170
      Width = 48
      Height = 13
      Caption = #53748#49892#45216#51676
    end
    object roomnamelabel: TLabel
      Left = 44
      Top = 35
      Width = 39
      Height = 13
      Caption = #48169' '#48264#54840
    end
    object nameEdit: TEdit
      Left = 110
      Top = 72
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object telEdit: TEdit
      Left = 334
      Top = 72
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
    end
    object suibEdit: TEdit
      Left = 110
      Top = 120
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
    end
    object boEdit: TEdit
      Left = 334
      Top = 120
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
    end
    object crinbt: TButton
      Left = 56
      Top = 224
      Width = 137
      Height = 47
      Caption = #51200#51109
      TabOrder = 4
      OnClick = crinbtClick
    end
    object crcancelbt: TButton
      Left = 199
      Top = 224
      Width = 137
      Height = 47
      Caption = #52712#49548
      TabOrder = 5
      OnClick = crcancelbtClick
    end
    object inDateTimePicker: TDateTimePicker
      Left = 110
      Top = 168
      Width = 121
      Height = 21
      Date = 40564.625836944450000000
      Time = 40564.625836944450000000
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
    end
    object outDateTimePicker: TDateTimePicker
      Left = 334
      Top = 168
      Width = 121
      Height = 21
      Date = 40564.625971851850000000
      Time = 40564.625971851850000000
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 7
    end
    object roomdblc: TDBLookupComboBox
      Left = 88
      Top = 30
      Width = 113
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      KeyField = 'ROOM'
      ListField = 'ROOM'
      ListSource = dm.gosiDataSource
      TabOrder = 8
    end
    object crdelbt: TButton
      Left = 342
      Top = 224
      Width = 131
      Height = 47
      Caption = #53748#49892
      TabOrder = 9
      OnClick = crdelbtClick
    end
  end
end
