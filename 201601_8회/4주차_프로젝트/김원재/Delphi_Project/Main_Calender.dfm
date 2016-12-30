object Main_Form: TMain_Form
  Left = 0
  Top = 0
  Caption = 'Main_Form'
  ClientHeight = 763
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 763
    Align = alLeft
    TabOrder = 0
    DesignSize = (
      393
      763)
    object Label1: TLabel
      Left = 159
      Top = 17
      Width = 17
      Height = 19
      Caption = #45380
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label1Click
    end
    object Label2: TLabel
      Left = 254
      Top = 15
      Width = 16
      Height = 21
      Caption = #50900
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object YEARLabel: TLabel
      Left = 120
      Top = 16
      Width = 36
      Height = 21
      Caption = '1999'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MonthLabel: TLabel
      Left = 230
      Top = 15
      Width = 18
      Height = 21
      Caption = '12'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Calendar1: TCalendar
      Left = 10
      Top = 41
      Width = 377
      Height = 302
      Align = alCustom
      StartOfWeek = 0
      TabOrder = 0
      OnClick = Calendar1Click
      OnChange = Calendar1Change
      OnDblClick = Calendar1DblClick
    end
    object CancelBTN: TButton
      Left = 274
      Top = 351
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 1
      OnClick = CancelBTNClick
    end
    object OKBTN: TButton
      Left = 153
      Top = 351
      Width = 75
      Height = 25
      Caption = #49440#53469
      TabOrder = 2
      OnClick = Calendar1Click
    end
    object NextMonthBtn: TButton
      Left = 276
      Top = 11
      Width = 53
      Height = 25
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = NextMonthBtnClick
    end
    object NextYear: TButton
      Left = 335
      Top = 11
      Width = 52
      Height = 25
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = NextYearClick
    end
    object PrevMonthBtn: TButton
      Left = 65
      Top = 11
      Width = 49
      Height = 25
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = PrevMonthBtnClick
    end
    object PrevYear: TButton
      Left = 8
      Top = 10
      Width = 51
      Height = 25
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = PrevYearClick
    end
    object SpinEdit1: TSpinEdit
      Left = 179
      Top = 14
      Width = 49
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 7
      Value = 1999
    end
    object NOWBTN: TButton
      Left = 39
      Top = 351
      Width = 75
      Height = 25
      Caption = #50724#45720
      TabOrder = 8
      OnClick = NOWBTNClick
    end
    object Edit1: TEdit
      Left = 77
      Top = 95
      Width = 121
      Height = 21
      TabOrder = 9
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 388
      Width = 377
      Height = 180
      Caption = #54924#51032#49892' '#50696#50557' '#51221#48372
      TabOrder = 10
      object Label3: TLabel
        Left = 136
        Top = 26
        Width = 89
        Height = 13
        Caption = #49548#54924#51032#49892' [ 1001 ]'
      end
      object Label8: TLabel
        Left = 19
        Top = 26
        Width = 91
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #9635' '#49436#50872' '#48376#49324'       -'
        ParentBiDiMode = False
      end
      object Label4: TLabel
        Left = 136
        Top = 58
        Width = 89
        Height = 13
        Caption = #49548#54924#51032#49892' [ 1002 ]'
      end
      object Label9: TLabel
        Left = 19
        Top = 58
        Width = 91
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #9635' '#49436#50872' '#48376#49324'       -'
        ParentBiDiMode = False
      end
      object Label10: TLabel
        Left = 19
        Top = 91
        Width = 91
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #9635' '#49436#50872' '#48376#49324'       -'
        ParentBiDiMode = False
      end
      object Label5: TLabel
        Left = 136
        Top = 91
        Width = 89
        Height = 13
        Caption = #51473#54924#51032#49892' [ 1003 ]'
      end
      object Label11: TLabel
        Left = 19
        Top = 123
        Width = 91
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #9635' '#49436#50872' '#48376#49324'       -'
        ParentBiDiMode = False
      end
      object Label6: TLabel
        Left = 136
        Top = 123
        Width = 89
        Height = 13
        Caption = #51473#54924#51032#49892' [ 1004 ]'
      end
      object Label12: TLabel
        Left = 19
        Top = 155
        Width = 91
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #9635' '#49436#50872' '#48376#49324'       -'
        ParentBiDiMode = False
      end
      object Label7: TLabel
        Left = 136
        Top = 155
        Width = 89
        Height = 13
        Caption = #45824#54924#51032#49892' [ 1005 ]'
      end
      object RadioButton1: TRadioButton
        Left = 259
        Top = 24
        Width = 80
        Height = 17
        Color = clBlack
        ParentColor = False
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 258
        Top = 55
        Width = 81
        Height = 17
        Color = clBlack
        ParentColor = False
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 258
        Top = 88
        Width = 81
        Height = 18
        Color = clBlack
        ParentColor = False
        TabOrder = 2
      end
      object RadioButton4: TRadioButton
        Left = 258
        Top = 120
        Width = 81
        Height = 17
        Color = clBlack
        ParentColor = False
        TabOrder = 3
      end
      object RadioButton5: TRadioButton
        Left = 258
        Top = 152
        Width = 81
        Height = 17
        Color = clBlack
        ParentColor = False
        TabOrder = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 10
      Top = 574
      Width = 377
      Height = 51
      Caption = #44592#51088#51116' '#49324#50857' '#51221#48372
      TabOrder = 11
      object CheckBox1: TCheckBox
        Left = 35
        Top = 21
        Width = 97
        Height = 17
        Caption = #45432#53944#48513
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 138
        Top = 21
        Width = 97
        Height = 17
        Caption = #48724#54532#47196#51229#53944
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Left = 241
        Top = 21
        Width = 112
        Height = 17
        Caption = #50724#46356#50724#51020#54693#51109#48708
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 13
      Top = 631
      Width = 374
      Height = 82
      Caption = 'GroupBox3'
      TabOrder = 12
      object Label13: TLabel
        Left = 58
        Top = 23
        Width = 24
        Height = 13
        Caption = #50857#46020
      end
      object Label14: TLabel
        Left = 34
        Top = 55
        Width = 48
        Height = 13
        Caption = #52280#50668#51064#50896
      end
      object ComboBox1: TComboBox
        Left = 106
        Top = 20
        Width = 187
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = #54924#51032
        Items.Strings = (
          #54924#51032
          #44277#50672
          #49884#50672)
      end
      object Edit2: TEdit
        Left = 106
        Top = 52
        Width = 187
        Height = 21
        TabOrder = 1
      end
    end
    object Button1: TButton
      Left = 85
      Top = 725
      Width = 75
      Height = 25
      Anchors = []
      Caption = #51077#47141
      TabOrder = 13
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 199
      Top = 725
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 14
      OnClick = Button2Click
    end
  end
  object Panel1: TPanel
    Left = 393
    Top = 0
    Width = 807
    Height = 763
    Align = alClient
    TabOrder = 1
  end
end
