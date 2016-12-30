object orderingform: Torderingform
  Left = 0
  Top = 0
  Caption = #51452#47928#44288#47532
  ClientHeight = 479
  ClientWidth = 656
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 516
    Top = 79
    Width = 63
    Height = 13
    Caption = #54788#51116' '#51116#44256#47049
  end
  object Panel1: TPanel
    Left = 24
    Top = 88
    Width = 89
    Height = 25
    Caption = #51452#47928#48264#54840
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 24
    Top = 232
    Width = 89
    Height = 25
    Caption = #49436#51201#53076#46300
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 24
    Top = 136
    Width = 89
    Height = 25
    Caption = #51452#47928#49436#51216#53076#46300
    TabOrder = 2
  end
  object Panel4: TPanel
    Left = 264
    Top = 88
    Width = 89
    Height = 25
    Caption = #51452#47928#49688#47049
    TabOrder = 3
  end
  object Panel5: TPanel
    Left = 264
    Top = 136
    Width = 89
    Height = 25
    Caption = #54032#47588#50529
    TabOrder = 4
  end
  object Panel6: TPanel
    Left = 264
    Top = 184
    Width = 89
    Height = 25
    Caption = #51452#47928#51068#51088
    TabOrder = 5
  end
  object Panel7: TPanel
    Left = 24
    Top = 184
    Width = 89
    Height = 25
    Caption = #51452#47928#49436#51216#51060#47492
    TabOrder = 6
  end
  object DBEdit1: TDBEdit
    Left = 119
    Top = 91
    Width = 121
    Height = 21
    DataField = 'number'
    DataSource = dm.orderquerysource
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 119
    Top = 235
    Width = 121
    Height = 21
    DataField = 'book_code'
    DataSource = dm.orderquerysource
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 119
    Top = 139
    Width = 121
    Height = 21
    DataField = 'brch_code'
    DataSource = dm.orderquerysource
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 359
    Top = 91
    Width = 121
    Height = 21
    DataField = 'vol'
    DataSource = dm.orderquerysource
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 10
  end
  object DBEdit5: TDBEdit
    Left = 359
    Top = 139
    Width = 121
    Height = 21
    DataField = 'totalprice'
    DataSource = dm.orderquerysource
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 11
  end
  object DBEdit6: TDBEdit
    Left = 359
    Top = 187
    Width = 121
    Height = 21
    DataField = 'orderdate'
    DataSource = dm.orderquerysource
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 12
  end
  object DBEdit7: TDBEdit
    Left = 119
    Top = 187
    Width = 121
    Height = 21
    DataField = 'brch_name'
    DataSource = dm.orderquerysource
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 280
    Width = 656
    Height = 199
    Align = alBottom
    DataSource = dm.orderquerysource
    ImeName = 'Microsoft Office IME 2007'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel9: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 73
    Align = alTop
    BorderStyle = bsSingle
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 15
    object Panel10: TPanel
      Left = 184
      Top = 14
      Width = 249
      Height = 37
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Caption = #51452' '#47928' '#44288' '#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 502
      Top = 22
      Width = 59
      Height = 28
      Caption = #45803' '#44592
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Button1: TButton
    Left = 544
    Top = 196
    Width = 88
    Height = 60
    Caption = #54032#47588#50756#47308#54616#44592
    TabOrder = 16
    OnClick = Button1Click
  end
  object Panel8: TPanel
    Left = 264
    Top = 232
    Width = 89
    Height = 25
    Caption = #54032#47588#50756#47308#51068#51088
    TabOrder = 17
  end
  object MaskEdit1: TMaskEdit
    Left = 359
    Top = 235
    Width = 120
    Height = 21
    EditMask = '!9999/99/00;1;_'
    ImeName = 'Microsoft Office IME 2007'
    MaxLength = 10
    TabOrder = 18
    Text = '    -  -  '
  end
  object DBEdit8: TDBEdit
    Left = 515
    Top = 98
    Width = 64
    Height = 21
    DataField = 'vol'
    DataSource = dm.productsource
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 19
  end
end
