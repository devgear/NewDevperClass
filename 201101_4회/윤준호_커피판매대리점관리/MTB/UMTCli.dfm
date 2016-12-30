object ClientForm: TClientForm
  Left = 0
  Top = 0
  Caption = #47693#53573' '#53364#46972#51060#50616#53944
  ClientHeight = 514
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 647
    Height = 25
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.HighlightColor = clWhite
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Spacing = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 647
    Height = 489
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 645
      Height = 288
      Align = alTop
      TabOrder = 0
      object Panel4: TPanel
        Left = 24
        Top = 24
        Width = 121
        Height = 113
        TabOrder = 0
        object DBImage1: TDBImage
          Left = 1
          Top = 1
          Width = 119
          Height = 111
          Align = alClient
          Stretch = True
          TabOrder = 0
          OnClick = DBImage2Click
        end
      end
      object Panel5: TPanel
        Left = 184
        Top = 24
        Width = 121
        Height = 112
        TabOrder = 1
        object DBImage2: TDBImage
          Left = 1
          Top = 1
          Width = 119
          Height = 110
          Align = alClient
          Stretch = True
          TabOrder = 0
          OnClick = DBImage2Click
        end
      end
      object Panel6: TPanel
        Left = 344
        Top = 24
        Width = 121
        Height = 111
        TabOrder = 2
        object DBImage3: TDBImage
          Left = 1
          Top = 1
          Width = 119
          Height = 109
          Align = alClient
          Stretch = True
          TabOrder = 0
          OnClick = DBImage2Click
        end
      end
      object Panel7: TPanel
        Left = 496
        Top = 24
        Width = 121
        Height = 110
        TabOrder = 3
        object DBImage4: TDBImage
          Left = 1
          Top = 1
          Width = 119
          Height = 108
          Align = alClient
          Stretch = True
          TabOrder = 0
          OnClick = DBImage2Click
        end
      end
      object Panel8: TPanel
        Left = 24
        Top = 152
        Width = 121
        Height = 105
        TabOrder = 4
        object DBImage5: TDBImage
          Left = 1
          Top = 1
          Width = 119
          Height = 103
          Align = alClient
          Stretch = True
          TabOrder = 0
          OnClick = DBImage2Click
        end
      end
      object Panel9: TPanel
        Left = 185
        Top = 152
        Width = 121
        Height = 105
        TabOrder = 5
        object DBImage6: TDBImage
          Left = 1
          Top = 1
          Width = 119
          Height = 103
          Align = alClient
          Stretch = True
          TabOrder = 0
          OnClick = DBImage2Click
        end
      end
      object Panel10: TPanel
        Left = 344
        Top = 152
        Width = 121
        Height = 104
        TabOrder = 6
        object DBImage7: TDBImage
          Left = 1
          Top = 1
          Width = 119
          Height = 102
          Align = alClient
          Stretch = True
          TabOrder = 0
          OnClick = DBImage2Click
        end
      end
      object Panel11: TPanel
        Left = 496
        Top = 152
        Width = 121
        Height = 103
        TabOrder = 7
        object DBImage8: TDBImage
          Left = 1
          Top = 1
          Width = 119
          Height = 101
          Align = alClient
          Stretch = True
          TabOrder = 0
          OnClick = DBImage2Click
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 280
      Width = 645
      Height = 208
      Align = alBottom
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 16
        Top = 4
        Width = 617
        Height = 153
        ColCount = 4
        DrawingStyle = gdsClassic
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 0
        OnDrawCell = StringGrid1DrawCell
        ColWidths = (
          64
          243
          90
          88)
      end
      object Button1: TButton
        Left = 558
        Top = 163
        Width = 75
        Height = 25
        Caption = #44228#49328#54616#44592
        TabOrder = 1
        OnClick = Button1Click
      end
      object StatusBar1: TStatusBar
        Left = 1
        Top = 188
        Width = 643
        Height = 19
        Panels = <
          item
            Width = 400
          end
          item
            Width = 50
          end>
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = AC_Exit
                Caption = #51333#47308'(&X)'
              end>
            Caption = #49345#53468'(&Z)'
          end
          item
            Items = <
              item
                Action = AC_Items
                Caption = #49345#54408#44288#47532'(&X)'
              end
              item
                Action = AC_Cost
                Caption = #47588#52636#54788#54889'(&Z)'
              end>
            Caption = #44288#47532'(&Y)'
          end
          item
            Items = <
              item
                Action = AC_Message
                Caption = #47700#51068'(&Z)'
              end>
            Caption = #50864#54200'(&V)'
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = AC_Exit
                Caption = #51333#47308'(&Z)'
              end>
            Caption = #49345#53468'(&Z)'
          end
          item
            Items = <
              item
                Action = AC_Items
                Caption = #49345#54408#44288#47532'(&Z)'
              end
              item
                Action = AC_Cost
                Caption = #47588#52636#54788#54889'(&X)'
              end>
            Caption = #44288#47532'(&Y)'
          end
          item
            Items = <
              item
                Action = AC_Message
                Caption = #47700#51068'(&Z)'
              end>
            Caption = #50864#54200'(&X)'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 560
    Top = 40
    StyleName = 'Platform Default'
    object AC_Exit: TAction
      Category = #49345#53468
      Caption = #51333#47308
      OnExecute = AC_ExitExecute
    end
    object AC_Items: TAction
      Category = #44288#47532
      Caption = #49345#54408#44288#47532
      OnExecute = AC_ItemsExecute
    end
    object AC_Cost: TAction
      Category = #44288#47532
      Caption = #47588#52636#54788#54889
    end
    object AC_Message: TAction
      Category = #50864#54200
      Caption = #47700#51068
      OnExecute = AC_MessageExecute
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 520
    Top = 40
  end
end
