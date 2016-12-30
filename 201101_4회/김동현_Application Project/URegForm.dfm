object RegForm: TRegForm
  Left = 0
  Top = 0
  Caption = #46321#47197'/'#49325#51228' '#54868#47732
  ClientHeight = 555
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Panel3: TPanel
      Left = 16
      Top = 12
      Width = 185
      Height = 41
      BevelInner = bvRaised
      Caption = #49345#54408' '#46321#47197'/'#49325#51228
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btn_Exit: TButton
      Left = 695
      Top = 13
      Width = 74
      Height = 40
      Caption = 'Exit'
      TabOrder = 1
      OnClick = btn_ExitClick
    end
    object btn_Insert: TButton
      Left = 452
      Top = 13
      Width = 75
      Height = 40
      Caption = #46321#47197
      TabOrder = 2
      OnClick = btn_InsertClick
    end
    object btn_Cancel: TButton
      Left = 533
      Top = 13
      Width = 75
      Height = 40
      Caption = #52712#49548
      TabOrder = 3
      OnClick = btn_CancelClick
    end
    object btn_Delete: TButton
      Left = 614
      Top = 13
      Width = 75
      Height = 40
      Caption = #49325#51228
      TabOrder = 4
      OnClick = btn_DeleteClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 782
    Height = 231
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Panel7: TPanel
      Left = 56
      Top = 79
      Width = 89
      Height = 24
      Caption = #53076#46300
      TabOrder = 0
    end
    object Panel8: TPanel
      Left = 56
      Top = 175
      Width = 89
      Height = 24
      Caption = #44032#44201
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 56
      Top = 127
      Width = 89
      Height = 24
      Caption = #44536#47353
      TabOrder = 2
    end
    object Panel11: TPanel
      Left = 349
      Top = 126
      Width = 89
      Height = 24
      Caption = #51228#51089#51068
      TabOrder = 3
    end
    object Panel10: TPanel
      Left = 349
      Top = 78
      Width = 89
      Height = 24
      Caption = #51228#51089#49324
      TabOrder = 4
    end
    object Panel9: TPanel
      Left = 349
      Top = 31
      Width = 89
      Height = 24
      Caption = #53356#44592
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 160
      Top = 31
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
      OnKeyDown = Edit1KeyDown
    end
    object Edit2: TEdit
      Left = 160
      Top = 79
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 4
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 160
      Top = 127
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 8
    end
    object Edit4: TEdit
      Left = 160
      Top = 175
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 15
      NumbersOnly = True
      TabOrder = 9
    end
    object Edit5: TEdit
      Left = 456
      Top = 31
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      MaxLength = 15
      NumbersOnly = True
      TabOrder = 10
    end
    object Edit6: TEdit
      Left = 456
      Top = 78
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 11
    end
    object Edit7: TEdit
      Left = 456
      Top = 126
      Width = 121
      Height = 24
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 12
      TextHint = #50696') 2011-01-01'
    end
    object Button5: TButton
      Left = 639
      Top = 31
      Width = 98
      Height = 58
      Caption = #54028#51068' '#50629#47196#46300
      TabOrder = 13
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 782
    Height = 259
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 778
      Height = 255
      Align = alClient
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel5: TPanel
    Left = 56
    Top = 96
    Width = 89
    Height = 24
    Caption = #51060#47492
    TabOrder = 3
  end
  object ItemSGQuery: TSQLQuery
    DataSource = AppStoreDM.ItemSource
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * From "Item"')
    SQLConnection = AppStoreDM.SQLConnection1
    Left = 688
    Top = 208
  end
end
