object DeptForm: TDeptForm
  Left = 0
  Top = 0
  Caption = 'DeptForm'
  ClientHeight = 407
  ClientWidth = 593
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
    Left = 8
    Top = 56
    Width = 148
    Height = 18
    Caption = 'Department Table'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 312
    Top = 20
    Width = 32
    Height = 16
    Caption = #54200#51665
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 384
    Top = 83
    Width = 30
    Height = 16
    Caption = #48512#49436
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 384
    Top = 123
    Width = 30
    Height = 16
    Caption = #49548#49549
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 289
    Height = 273
    DataSource = Dm.FDdeptsource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 349
    Top = 176
    Width = 75
    Height = 25
    Caption = #52628#44032
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 349
    Top = 216
    Width = 75
    Height = 25
    Caption = #52712#49548
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 511
    Top = 176
    Width = 75
    Height = 25
    Caption = #49325#51228
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 430
    Top = 176
    Width = 75
    Height = 25
    Caption = #51200#51109
    TabOrder = 4
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 448
    Top = 82
    Width = 121
    Height = 21
    DataField = 'D_DEPT'
    DataSource = Dm.FDdeptsource
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 448
    Top = 122
    Width = 121
    Height = 21
    DataField = 'D_TEAM'
    DataSource = Dm.FDdeptsource
    TabOrder = 6
  end
end
