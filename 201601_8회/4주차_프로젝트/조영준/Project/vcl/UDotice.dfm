object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 429
  ClientWidth = 683
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 70
    Align = alTop
    AutoSize = True
    Padding.Top = 15
    Padding.Right = 20
    Padding.Bottom = 15
    TabOrder = 0
    object Label1: TLabel
      Left = 272
      Top = 16
      Width = 140
      Height = 29
      Align = alCustom
      Caption = #44277#51648' '#49324#54637' '#44288#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnclose: TButton
      Left = 587
      Top = 16
      Width = 75
      Height = 38
      Align = alRight
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btncloseClick
    end
  end
  object Panel2: TPanel
    Left = 375
    Top = 70
    Width = 308
    Height = 359
    Align = alRight
    TabOrder = 1
    object Label3: TLabel
      Left = 21
      Top = 68
      Width = 22
      Height = 13
      Caption = #45236#50857
    end
    object Label4: TLabel
      Left = 23
      Top = 25
      Width = 22
      Height = 13
      Caption = #51228#47785
    end
    object Button1: TButton
      Left = 193
      Top = 265
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 96
      Top = 265
      Width = 75
      Height = 25
      Caption = #44277#51648#52628#44032
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 96
      Top = 296
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 193
      Top = 296
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 4
      OnClick = Button4Click
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 22
      Width = 194
      Height = 21
      DataField = 'NOT_TITLE'
      DataSource = DM.noticeSource
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 72
      Top = 65
      Width = 193
      Height = 184
      Lines.Strings = (
        #49688#44053#49888#52397' '#44592#44036' 2016 02.15 ~2016 '
        '02.20 '#44620#51648#51077#45768#45796'1')
      TabOrder = 5
    end
  end
  object ListBox1: TListBox
    Left = 0
    Top = 70
    Width = 375
    Height = 359
    Align = alClient
    ItemHeight = 13
    Items.Strings = (
      #49688#44053#49888#52397#51068' '#44277#51648)
    TabOrder = 2
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'NOT_TITLE'
      Control = ListBox1
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'NOT_MEMO'
      Control = Memo1
      Track = False
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DM.noticeDataSet
    ScopeMappings = <>
    Left = 336
    Top = 272
  end
end
