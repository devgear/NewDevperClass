object ServerForm: TServerForm
  Left = 0
  Top = 0
  Caption = #47693#53573' '#49436#48260
  ClientHeight = 449
  ClientWidth = 585
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
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 585
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
    Top = 31
    Width = 585
    Height = 184
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 48
      Height = 13
      Caption = #51648#51216#51312#54924
    end
    object Label4: TLabel
      Left = 292
      Top = 6
      Width = 51
      Height = 13
      Caption = #51648#51216' '#44160#49353
    end
    object ShopEdit: TEdit
      Left = 349
      Top = 3
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
      OnChange = ShopEditChange
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 25
      Width = 581
      Height = 160
      DataSource = SDM.ShopSource
      ImeName = 'Microsoft IME 2010'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Bt_Refresh: TButton
      Left = 496
      Top = 0
      Width = 75
      Height = 25
      Caption = 'REFRASH'
      TabOrder = 2
      OnClick = Bt_RefreshClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 228
    Width = 585
    Height = 202
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 6
      Width = 48
      Height = 13
      Caption = #49345#54408#51312#54924
    end
    object Label7: TLabel
      Left = 292
      Top = 6
      Width = 51
      Height = 13
      Caption = #49345#54408' '#44160#49353
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 30
      Width = 573
      Height = 168
      DataSource = SDM.ItemSource
      ImeName = 'Microsoft IME 2010'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object ItemEdit: TEdit
      Left = 349
      Top = 3
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
      OnChange = ItemEditChange
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 430
    Width = 585
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
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
                Action = AC_Shop
                Caption = #51648#51216#49345#53468'(&Y)'
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
                Caption = #51333#47308'(&X)'
              end>
            Caption = #49345#53468'(&Z)'
          end
          item
            Items = <
              item
                Action = AC_Shop
                Caption = #51648#51216#49345#53468'(&Y)'
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
              end>
            Caption = #50864#54200'(&X)'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = ImageList1
    Left = 424
    Top = 136
    StyleName = 'Platform Default'
    object AC_Exit: TAction
      Category = #49345#53468
      Caption = #51333#47308
      OnExecute = AC_ExitExecute
    end
    object AC_Shop: TAction
      Category = #44288#47532
      Caption = #51648#51216#49345#53468
      OnExecute = AC_ShopExecute
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
  object ImageList1: TImageList
    Left = 344
    Top = 136
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 488
    Top = 136
  end
end
