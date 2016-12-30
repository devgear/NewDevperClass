object BookDelForm: TBookDelForm
  Left = 0
  Top = 0
  Caption = #46020#49436#49325#51228
  ClientHeight = 387
  ClientWidth = 740
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
    Left = 18
    Top = 45
    Width = 48
    Height = 13
    Caption = #46020#49436#48264#54840
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 80
    Width = 705
    Height = 289
    Caption = #46020#49436
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 701
      Height = 272
      Align = alClient
      ImeName = 'Microsoft IME 2010'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    Left = 389
    Top = 33
    Width = 332
    Height = 41
    Color = clGrayText
    ParentBackground = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 10
      Top = 8
      Width = 81
      Height = 23
      Caption = #46020#49436' '#44160#49353
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 89
      Top = 9
      Width = 232
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 42
    Width = 214
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 292
    Top = 40
    Width = 75
    Height = 25
    Caption = #49325#51228
    TabOrder = 3
    OnClick = Button1Click
  end
end
