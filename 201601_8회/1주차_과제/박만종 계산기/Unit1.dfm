object CALC: TCALC
  Left = 0
  Top = 0
  Caption = 'CALC'
  ClientHeight = 396
  ClientWidth = 271
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
    Width = 271
    Height = 89
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Edit_화면: TEdit
      Left = 16
      Top = 26
      Width = 249
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 203
    Height = 247
    Align = alClient
    TabOrder = 1
    object BT0: TButton
      Left = 16
      Top = 184
      Width = 50
      Height = 50
      Caption = '0'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BT0Click
    end
    object BT1: TButton
      Left = 16
      Top = 128
      Width = 50
      Height = 50
      Caption = '1'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BT1Click
    end
    object BT2: TButton
      Left = 80
      Top = 128
      Width = 50
      Height = 50
      Caption = '2'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BT2Click
    end
    object BT3: TButton
      Left = 143
      Top = 128
      Width = 50
      Height = 50
      Caption = '3'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BT3Click
    end
    object BT4: TButton
      Left = 16
      Top = 72
      Width = 50
      Height = 50
      Caption = '4'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BT4Click
    end
    object BT5: TButton
      Left = 80
      Top = 72
      Width = 50
      Height = 50
      Caption = '5'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BT5Click
    end
    object BT6: TButton
      Left = 143
      Top = 72
      Width = 50
      Height = 50
      Caption = '6'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BT6Click
    end
    object BT7: TButton
      Left = 16
      Top = 16
      Width = 50
      Height = 50
      Caption = '7'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BT7Click
    end
    object BT8: TButton
      Left = 80
      Top = 16
      Width = 50
      Height = 50
      Caption = '8'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BT8Click
    end
    object BT9: TButton
      Left = 143
      Top = 16
      Width = 50
      Height = 50
      Caption = '9'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BT9Click
    end
    object BT_초기화: TButton
      Left = 72
      Top = 184
      Width = 121
      Height = 50
      Caption = 'c'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BT_초기화Click
    end
  end
  object Panel3: TPanel
    Left = 203
    Top = 89
    Width = 68
    Height = 247
    Align = alRight
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object BT_빼기: TButton
      Left = 14
      Top = 77
      Width = 40
      Height = 40
      Caption = '-'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BT_빼기Click
    end
    object BT_곱하기: TButton
      Left = 16
      Top = 131
      Width = 40
      Height = 40
      Caption = '*'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BT_곱하기Click
    end
    object BT_나누기: TButton
      Left = 16
      Top = 185
      Width = 40
      Height = 40
      Caption = '/'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BT_나누기Click
    end
    object BT_더하기: TButton
      Left = 14
      Top = 17
      Width = 40
      Height = 40
      Caption = '+'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BT_더하기Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 336
    Width = 271
    Height = 60
    Align = alBottom
    TabOrder = 3
    object BT_RESULE: TButton
      Left = 16
      Top = 6
      Width = 241
      Height = 41
      Caption = '='
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BT_RESULEClick
    end
  end
end
