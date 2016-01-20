object MainForm: TMainForm
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = #54532#47196#51229#53944
  ClientHeight = 513
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    659
    513)
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TRibbon
    Left = 0
    Top = 0
    Width = 659
    Height = 143
    Caption = 'DataBase'
    Tabs = <
      item
        Caption = #45936#51060#53552#48288#51060#49828
        Page = RibbonPage1
      end>
    DesignSize = (
      659
      143)
    StyleName = 'Ribbon - Luna'
    object RibbonPage1: TRibbonPage
      Left = 0
      Top = 50
      Width = 658
      Height = 93
      Caption = #45936#51060#53552#48288#51060#49828
      Index = 0
      object RibbonGroup1: TRibbonGroup
        Left = 4
        Top = 3
        Width = 131
        Height = 86
        ActionManager = ActionManager1
        Caption = #54532#47196#51229#53944' '#51221#48372
        GroupIndex = 0
      end
      object RibbonGroup2: TRibbonGroup
        Left = 137
        Top = 3
        Width = 131
        Height = 86
        ActionManager = ActionManager1
        Caption = #47716#48260' '#51221#48372
        GroupIndex = 1
      end
      object RibbonGroup3: TRibbonGroup
        Left = 270
        Top = 3
        Width = 131
        Height = 86
        ActionManager = ActionManager1
        Caption = #48512#49436' '#51221#48372
        GroupIndex = 2
      end
      object RibbonGroup5: TRibbonGroup
        Left = 403
        Top = 3
        Width = 131
        Height = 86
        ActionManager = ActionManager1
        Caption = #54532#47196#51229#53944' '#47716#48260
        GroupIndex = 4
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 145
    Width = 658
    Height = 380
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object Label4: TLabel
      Left = 138
      Top = 82
      Width = 185
      Height = 77
      Alignment = taCenter
      AutoSize = False
      Caption = 'Green'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 306
      Top = 114
      Width = 177
      Height = 77
      Alignment = taCenter
      AutoSize = False
      Caption = 'Scale'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      Layout = tlCenter
    end
    object Label6: TLabel
      Left = 162
      Top = 226
      Width = 292
      Height = 58
      Alignment = taCenter
      AutoSize = False
      Caption = '('#51452') '#44536#47536#49828#52992#51068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = PrjSearch
            Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221'(&Z)'
          end>
        ActionBar = RibbonGroup1
      end
      item
        Items = <
          item
            Action = MemSearch
            Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221'(&Z)'
          end>
        ActionBar = RibbonGroup2
      end
      item
        Items = <
          item
            Action = DeptSearch
            Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221'(&Z)'
          end>
        ActionBar = RibbonGroup3
      end
      item
        Items = <
          item
            Action = PrjMemSearch
            Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221'(&Z)'
          end>
      end
      item
        Items = <
          item
            Action = PrjMemSearch
            Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221'(&Z)'
          end>
        ActionBar = RibbonGroup5
      end>
    Left = 592
    Top = 64
    StyleName = 'Platform Default'
    object PrjSearch: TAction
      Category = #54532#47196#51229#53944
      Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221
      OnExecute = PrjSearchExecute
    end
    object MemSearch: TAction
      Category = #47716#48260
      Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221
      OnExecute = MemSearchExecute
    end
    object DeptSearch: TAction
      Category = #48512#49436
      Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221
      OnExecute = DeptSearchExecute
    end
    object PrjMemSearch: TAction
      Category = #54532#47196#51229#53944#47716#48260
      Caption = #51312#54924'/'#52628#44032'/'#49325#51228'/'#51221#51221
      OnExecute = PrjMemSearchExecute
    end
    object TAction
    end
  end
end
