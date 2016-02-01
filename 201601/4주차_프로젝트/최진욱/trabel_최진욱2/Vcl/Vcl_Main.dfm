object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #47700#51064#54868#47732
  ClientHeight = 465
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 41
    Height = 424
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object RB_Category: TCategoryPanel
      Top = 337
      Height = 80
      Caption = #51020#49885#51216' '#44172#49884#54032
      TabOrder = 0
      object ButtonGroup4: TButtonGroup
        Left = 0
        Top = 0
        Width = 196
        Height = 54
        Align = alClient
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #44172#49884#54032' '#50676#44592
            OnClick = ButtonGroup4Items0Click
          end
          item
            Caption = #44172#49884#44544' '#49325#51228
            OnClick = ButtonGroup4Items1Click
          end>
        TabOrder = 0
      end
    end
    object SB_Category: TCategoryPanel
      Top = 257
      Height = 80
      Caption = #44288#44305#51648' '#44172#49884#54032
      TabOrder = 1
      object ButtonGroup1: TButtonGroup
        Left = 0
        Top = 0
        Width = 196
        Height = 54
        Align = alClient
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #44172#49884#54032' '#50676#44592
            OnClick = ButtonGroup1Items0Click
          end
          item
            Caption = #44172#49884#44544' '#49325#51228
            OnClick = ButtonGroup1Items1Click
          end>
        TabOrder = 0
      end
    end
    object Rest_Category: TCategoryPanel
      Top = 129
      Height = 128
      Caption = #51020#49885#51216
      TabOrder = 2
      object ButtonGroup3: TButtonGroup
        Left = 0
        Top = 0
        Width = 196
        Height = 102
        Align = alClient
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #51020#49885#51216' '#47785#47197
            OnClick = ButtonGroup3Items0Click
          end
          item
            Caption = #51020#49885#51216' '#52628#44032
            OnClick = ButtonGroup3Items1Click
          end
          item
            Caption = #51020#49885#51216' '#49688#51221
            OnClick = ButtonGroup3Items2Click
          end
          item
            Caption = #51020#49885#51216' '#49325#51228
            OnClick = ButtonGroup3Items3Click
          end>
        TabOrder = 0
      end
    end
    object Sights_Category: TCategoryPanel
      Top = 0
      Height = 129
      Caption = #44288#44305#51648
      TabOrder = 3
      object ButtonGroup2: TButtonGroup
        Left = 0
        Top = 0
        Width = 196
        Height = 103
        Align = alClient
        ButtonOptions = [gboFullSize, gboShowCaptions]
        Items = <
          item
            Caption = #44288#44305#51648' '#47785#47197
            OnClick = ButtonGroup2Items0Click
          end
          item
            Caption = #44288#44305#51648' '#52628#44032
            ImageIndex = 0
            OnClick = ButtonGroup2Items1Click
          end
          item
            Caption = #44288#44305#51648' '#49688#51221
            ImageIndex = 1
            OnClick = ButtonGroup2Items2Click
          end
          item
            Caption = #44288#44305#51648' '#49325#51228
            OnClick = ButtonGroup2Items3Click
          end>
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 713
      Height = 39
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = #44288' '#47532' '#51088'  '#54532' '#47196' '#44536' '#47016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitTop = -3
    end
  end
  object Panel_Main: TPanel
    Left = 200
    Top = 41
    Width = 515
    Height = 424
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
  end
end
