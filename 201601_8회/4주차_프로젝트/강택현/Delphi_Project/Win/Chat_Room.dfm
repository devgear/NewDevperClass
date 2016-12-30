object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'ChatRoom'
  ClientHeight = 301
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 373
    Height = 301
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = #48169' '#49373#49457
      object Label1: TLabel
        Left = 56
        Top = 24
        Width = 54
        Height = 25
        Caption = #48169' '#51228#47785
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 128
        Top = 104
        Width = 113
        Height = 41
        Caption = #49373#49457
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object edt_Room_Name: TEdit
        Left = 56
        Top = 55
        Width = 241
        Height = 21
        TabOrder = 1
        TextHint = #48169' '#51060#47492#51012' '#51077#47141#54616#49464#50836'.'
      end
    end
    object TabSheet2: TTabSheet
      Caption = #48169' '#52280#44032
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 48
        Width = 365
        Height = 225
        Align = alBottom
        DataSource = DataModule2.ChatRoom
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object edt_JoinRoom: TDBEdit
        Left = 3
        Top = 12
        Width = 278
        Height = 21
        DataField = 'CHAT_NAME'
        DataSource = DataModule2.ChatRoom
        TabOrder = 1
      end
      object btn_Join: TButton
        Left = 287
        Top = 3
        Width = 75
        Height = 39
        Caption = #52280#44032
        TabOrder = 2
        OnClick = btn_JoinClick
      end
    end
  end
end
