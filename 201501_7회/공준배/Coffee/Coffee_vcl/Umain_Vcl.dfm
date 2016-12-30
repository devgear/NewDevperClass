object PcForm: TPcForm
  Left = 0
  Top = 0
  Caption = 'PcForm'
  ClientHeight = 517
  ClientWidth = 931
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
  object WebBrowser1: TWebBrowser
    Left = 1
    Top = 129
    Width = 928
    Height = 384
    TabOrder = 0
    ControlData = {
      4C000000E95F0000B02700000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 80
    Width = 92
    Height = 17
    Caption = #54788#51116' '#51452#47928' '#44148#49688'  :'
    TabOrder = 1
  end
  object StaticText2: TStaticText
    Left = 106
    Top = 80
    Width = 17
    Height = 17
    AutoSize = False
    Caption = '0'
    TabOrder = 2
  end
  object Btn_Payment: TButton
    Left = 824
    Top = 80
    Width = 105
    Height = 43
    Caption = #44208#51228#50756#47308
    TabOrder = 3
    OnClick = Btn_PaymentClick
  end
  object Btn_AddMenu: TButton
    Left = 824
    Top = 16
    Width = 105
    Height = 41
    Caption = #47700#45684#52628#44032
    TabOrder = 4
    Visible = False
  end
  object ListBox1: TListBox
    Left = 183
    Top = 16
    Width = 208
    Height = 107
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 5
    OnClick = ListBox1Click
    OnDblClick = ListBox1DblClick
  end
  object Memo1: TMemo
    Left = 413
    Top = 16
    Width = 372
    Height = 107
    ImeName = 'Microsoft IME 2010'
    Lines.Strings = (
      #49345#49464#51221#48372)
    ReadOnly = True
    TabOrder = 6
  end
  object StaticText3: TStaticText
    Left = 413
    Top = 0
    Width = 76
    Height = 17
    Caption = #49345#49464#50696#50557#51221#48372
    TabOrder = 7
  end
  object StaticText4: TStaticText
    Left = 183
    Top = 0
    Width = 52
    Height = 17
    Caption = #49552#45784#51221#48372
    TabOrder = 8
  end
  object StaticText5: TStaticText
    Left = 8
    Top = 0
    Width = 52
    Height = 17
    Caption = #47588#51109#49440#53469
    TabOrder = 9
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 16
    Width = 145
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 10
    Text = #44053#45224#45824#47196#51216
    OnChange = ComboBox1Change
    Items.Strings = (
      #44053#45224#45824#47196#51216
      #44053#45224#50669#51648#54616#49345#44032#51216
      #44368#48372#53440#50892#51216
      #51025#50516#50724#44144#47532#51216)
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 696
    Top = 89
  end
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 696
    Top = 48
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 644
    Top = 53
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = ComboBox1
      Track = True
      FillDataSource = BindSourceDB1
      FillDisplayFieldName = 'C_LOCA'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object Timer2: TTimer
    Interval = 2000
    OnTimer = Timer2Timer
    Left = 648
    Top = 88
  end
end
