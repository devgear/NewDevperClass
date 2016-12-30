object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 770
  ClientWidth = 1221
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
    Top = 0
    Height = 770
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object CategoryPanel4: TCategoryPanel
      Top = 90
      Height = 30
      Caption = #44277#51648#49324#54637
      Color = clSilver
      Collapsed = True
      TabOrder = 0
    end
    object CategoryPanel3: TCategoryPanel
      Top = 60
      Height = 30
      Caption = #54924#51032#49892' '#44160#49353
      Collapsed = True
      TabOrder = 1
    end
    object CategoryPanel2: TCategoryPanel
      Top = 30
      Height = 30
      Caption = #54924#51032#49892' '#50696#50557
      Collapsed = True
      TabOrder = 2
      ExpandedHeight = 78
      object ButtonGroup2: TButtonGroup
        Left = 0
        Top = 0
        Width = 196
        Height = 0
        Align = alClient
        ButtonOptions = [gboAllowReorder, gboFullSize, gboGroupStyle, gboShowCaptions]
        Items = <
          item
            Caption = #54924#51032#49892' '#50696#50557
            OnClick = ButtonGroup2Items0Click
          end
          item
            Caption = #54924#51032#49892' '#50696#50557' '#52712#49548
          end>
        TabOrder = 0
      end
    end
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 30
      Caption = #54924#51032#49892' '#50504#45236
      Collapsed = True
      TabOrder = 3
      ExpandedHeight = 78
      object ButtonGroup1: TButtonGroup
        Left = 0
        Top = 0
        Width = 196
        Height = 0
        Align = alClient
        ButtonOptions = [gboAllowReorder, gboFullSize, gboGroupStyle, gboShowCaptions]
        Items = <
          item
            Caption = #54924#51032#49892' '#51221#48372
          end
          item
            Caption = #44592#51088#51116' '#51221#48372
          end>
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 200
    Top = 0
    Width = 1021
    Height = 770
    Align = alClient
    TabOrder = 1
  end
end
