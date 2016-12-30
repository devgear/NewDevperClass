object mainForm: TmainForm
  Left = 0
  Top = 0
  Caption = 'mainForm'
  ClientHeight = 625
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 27
    Width = 239
    Height = 563
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object CategoryPanel2: TCategoryPanel
      Top = 200
      Caption = #44288#47532#47588#45684
      TabOrder = 0
      object ButtonGroup1: TButtonGroup
        Left = 0
        Top = 0
        Width = 235
        Height = 174
        Align = alClient
        ButtonHeight = 40
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = #46027#50880
        Font.Style = [fsBold]
        Items = <
          item
            Caption = #54532#47196#51229#53944' '#44288#47532
            OnClick = Action1Execute
          end
          item
            Caption = #51064#49324' '#44288#47532
            OnClick = Action3Execute
          end
          item
            Caption = #48512#49436#44288#47532
            OnClick = Action2Execute
          end>
        TabOrder = 0
      end
    end
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Caption = #45216#51676
      TabOrder = 1
      object MonthCalendar1: TMonthCalendar
        Left = 0
        Top = 0
        Width = 235
        Height = 174
        Align = alClient
        Date = 42383.042159363420000000
        TabOrder = 0
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 590
    Width = 889
    Height = 35
    Panels = <
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 239
    Top = 27
    Width = 650
    Height = 563
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 243
    ExplicitTop = 21
    object GroupBox1: TGroupBox
      Left = 112
      Top = 152
      Width = 393
      Height = 217
      Caption = #49345#54889#54032
      TabOrder = 0
      object Label2: TLabel
        Left = 40
        Top = 48
        Width = 129
        Height = 24
        Caption = #51204' '#52404'   '#48512' '#49436' '#49688' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 40
        Top = 104
        Width = 137
        Height = 24
        Caption = #51652#54665#51473' '#54532#47196#51229#53944' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 40
        Top = 158
        Width = 131
        Height = 24
        Caption = #52509'   '#49324'   '#50896'   '#49688' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 889
    Height = 27
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = Action1
            Caption = #54532#47196#51229#53944' '#44288#47532'(&X)'
          end
          item
            Action = Action2
            Caption = #48512#49436#44288#47532'(&Y)'
          end
          item
            Action = Action3
            Caption = #51064#49324#44288#47532'(&Z)'
          end>
      end
      item
        Items = <
          item
            Action = Action3
            Caption = #51064#49324#44288#47532'(&U)'
          end
          item
            Action = Action2
            Caption = #48512#49436#44288#47532'(&V)'
          end
          item
            Action = Action3
            Caption = #51064#49324#44288#47532'(&W)'
          end
          item
            Action = Action2
            Caption = #48512#49436#44288#47532'(&X)'
          end
          item
            Action = Action1
            Caption = #54532#47196#51229#53944' '#44288#47532'(&Y)'
          end
          item
            Action = Action1
            Caption = #54532#47196#51229#53944' '#44288#47532'(&Z)'
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = FileExit1
                ImageIndex = 43
              end>
            Caption = '&File'
          end
          item
            Items = <
              item
                Action = Action1
                Caption = #54532#47196#51229#53944' '#44288#47532'(&X)'
              end
              item
                Action = Action2
                Caption = #48512#49436#44288#47532'(&Y)'
              end
              item
                Action = Action3
                Caption = #51064#49324#44288#47532'(&Z)'
              end>
            Caption = #54868#47732'(&Z)'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 56
    Top = 512
    StyleName = 'Platform Default'
    object Action1: TAction
      Category = #54868#47732
      Caption = #54532#47196#51229#53944' '#44288#47532
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Category = #54868#47732
      Caption = #48512#49436#44288#47532
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Category = #54868#47732
      Caption = #51064#49324#44288#47532
      OnExecute = Action3Execute
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 128
    Top = 520
  end
end
