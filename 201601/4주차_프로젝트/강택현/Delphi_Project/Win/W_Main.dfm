object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #50668#44592#49436' '#47564#45208'!'
  ClientHeight = 444
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 444
    Align = alLeft
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      145
      444)
    object Label1: TLabel
      Left = 11
      Top = 326
      Width = 39
      Height = 13
      Caption = #45824#54868#47749' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn_HereMeet: TButton
      Left = 11
      Top = 408
      Width = 118
      Height = 30
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #50668#44592#49436' '#47564#45208
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_HereMeetClick
    end
    object Chat_List: TMemo
      Left = 0
      Top = 79
      Width = 139
      Height = 238
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object edt_Chat: TEdit
      Left = 0
      Top = 350
      Width = 139
      Height = 21
      TabOrder = 2
      TextHint = #52292#54021' '#51077#47141
    end
    object btn_Tras_Chat: TButton
      Left = 80
      Top = 377
      Width = 59
      Height = 25
      Caption = #51204#49569
      TabOrder = 3
      OnClick = btn_Tras_ChatClick
    end
    object Join_Member: TListBox
      Left = 0
      Top = 0
      Width = 139
      Height = 73
      ItemHeight = 13
      TabOrder = 4
    end
    object Nick_Name: TEdit
      Left = 56
      Top = 323
      Width = 83
      Height = 21
      TabOrder = 5
      TextHint = #45824#54868#47749' '#51077#47141
    end
  end
  object Panel2: TPanel
    Left = 145
    Top = 0
    Width = 657
    Height = 444
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 1
      Width = 655
      Height = 407
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ControlData = {
        4C000000B2430000112A00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object Panel3: TPanel
      Left = 1
      Top = 408
      Width = 655
      Height = 35
      Align = alBottom
      TabOrder = 1
      object Label2: TLabel
        Left = 29
        Top = 10
        Width = 29
        Height = 13
        Caption = #51060#47492' :'
      end
      object Label3: TLabel
        Left = 168
        Top = 8
        Width = 29
        Height = 13
        Caption = #51452#49548' :'
      end
      object edt_Name: TEdit
        Left = 60
        Top = 6
        Width = 97
        Height = 21
        TabOrder = 0
      end
      object edt_Address: TEdit
        Left = 201
        Top = 6
        Width = 345
        Height = 21
        TabOrder = 1
        TextHint = #51452#49548#45208' '#46020#47196#47749'+'#48264#51648#49688#47484' '#51077#47141#54644' '#51452#49464#50836'.'
      end
      object Button1: TButton
        Left = 552
        Top = 6
        Width = 75
        Height = 27
        Caption = #50948#52824' '#51204#49569
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
  object Loc_Mark: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Loc_MarkTimer
    Left = 280
    Top = 160
  end
  object Meet_Click: TTimer
    Enabled = False
    OnTimer = Meet_ClickTimer
    Left = 368
    Top = 160
  end
  object W_Loc_Mark: TTimer
    Enabled = False
    OnTimer = W_Loc_MarkTimer
    Left = 456
    Top = 160
  end
end
