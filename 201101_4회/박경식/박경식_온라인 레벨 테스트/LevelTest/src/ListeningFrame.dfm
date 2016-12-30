object fmListening: TfmListening
  Left = 0
  Top = 0
  Width = 1000
  Height = 600
  TabOrder = 0
  object Panel1: TPanel
    Left = 3
    Top = 96
    Width = 994
    Height = 413
    TabOrder = 0
    object lbQuestion: TLabel
      Left = 56
      Top = 30
      Width = 34
      Height = 19
      Caption = #47928#51228
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbExample1: TLabel
      Left = 56
      Top = 106
      Width = 44
      Height = 19
      Caption = #48372#44592'1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lbExample1Click
    end
    object lbExample2: TLabel
      Left = 56
      Top = 181
      Width = 44
      Height = 19
      Caption = #48372#44592'2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lbExample2Click
    end
    object lbExample3: TLabel
      Left = 56
      Top = 248
      Width = 44
      Height = 19
      Caption = #48372#44592'3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lbExample3Click
    end
    object lbExample4: TLabel
      Left = 56
      Top = 322
      Width = 44
      Height = 19
      Caption = #48372#44592'4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lbExample4Click
    end
    object lbNumber: TLabel
      Left = 17
      Top = 30
      Width = 34
      Height = 19
      Caption = #48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 581
      Top = 322
      Width = 80
      Height = 19
      Caption = #49440#53469#46108' '#45813' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbSelect: TLabel
      Left = 685
      Top = 322
      Width = 54
      Height = 19
      Caption = 'lbSelect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 90
    Align = alTop
    TabOrder = 1
    object lbQuestionInput: TLabel
      Left = 20
      Top = 33
      Width = 90
      Height = 19
      Caption = #46307#44592' '#53580#49828#53944
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 574
      Top = 43
      Width = 73
      Height = 19
      Caption = #51020#50896' '#46307#44592
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MediaPlayer1: TMediaPlayer
      Left = 688
      Top = 43
      Width = 57
      Height = 30
      ColoredButtons = [btStep, btBack, btRecord, btEject]
      EnabledButtons = [btPlay, btStop]
      VisibleButtons = [btPlay, btStop]
      AutoOpen = True
      FileName = 'D:\leveltest1\listening\1.mp3'
      TabOrder = 0
    end
  end
end
