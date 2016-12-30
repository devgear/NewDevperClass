object frResultGuide: TfrResultGuide
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 't'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 108
    Height = 33
    Caption = #44208#44284#50504#45236
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 552
    Top = 488
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 64
    Width = 265
    Height = 449
    ColCount = 4
    FixedCols = 0
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 296
    Top = 64
    Width = 481
    Height = 97
    TabOrder = 2
    object Label3: TLabel
      Left = 104
      Top = 16
      Width = 12
      Height = 13
      Caption = '80'
    end
    object Label4: TLabel
      Left = 160
      Top = 16
      Width = 4
      Height = 13
      Caption = '/'
    end
    object Label5: TLabel
      Left = 24
      Top = 35
      Width = 24
      Height = 13
      Caption = #49437#52264
    end
    object Label6: TLabel
      Left = 104
      Top = 35
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label7: TLabel
      Left = 160
      Top = 35
      Width = 4
      Height = 13
      Caption = '/'
    end
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 24
      Height = 13
      Caption = #51216#49688
    end
    object Label8: TLabel
      Left = 200
      Top = 16
      Width = 18
      Height = 13
      Caption = '100'
    end
    object Label9: TLabel
      Left = 200
      Top = 35
      Width = 6
      Height = 13
      Caption = '5'
    end
    object Label10: TLabel
      Left = 104
      Top = 54
      Width = 23
      Height = 13
      Caption = '20%'
    end
    object Label11: TLabel
      Left = 24
      Top = 54
      Width = 36
      Height = 13
      Caption = #48177#48516#50948
    end
    object Label12: TLabel
      Left = 200
      Top = 54
      Width = 29
      Height = 13
      Caption = '100%'
    end
    object Label13: TLabel
      Left = 160
      Top = 54
      Width = 4
      Height = 13
      Caption = '/'
    end
  end
  object Panel2: TPanel
    Left = 296
    Top = 160
    Width = 481
    Height = 281
    TabOrder = 3
    object Chart1: TChart
      Left = 40
      Top = 16
      Width = 400
      Height = 250
      Title.Text.Strings = (
        #48177#48516#50948' '#44536#47000#54532)
      TabOrder = 0
      ColorPaletteIndex = 13
    end
  end
end
