object frmCalc: TfrmCalc
  Left = 0
  Top = 0
  Caption = 'frmCalc'
  ClientHeight = 297
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 328
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
  object Edit1: TEdit
    Left = 24
    Top = 46
    Width = 281
    Height = 40
    AutoSize = False
    BiDiMode = bdLeftToRight
    Ctl3D = True
    DoubleBuffered = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Text = '0'
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold]
  end
  object Button1: TButton
    Left = 24
    Top = 240
    Width = 105
    Height = 42
    Caption = '0'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 135
    Top = 239
    Width = 49
    Height = 42
    Caption = '.'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 24
    Top = 192
    Width = 49
    Height = 42
    Caption = '1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 80
    Top = 191
    Width = 49
    Height = 42
    Caption = '2'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button5: TButton
    Left = 135
    Top = 191
    Width = 49
    Height = 42
    Caption = '3'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button6: TButton
    Left = 24
    Top = 144
    Width = 49
    Height = 42
    Caption = '4'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button7: TButton
    Left = 80
    Top = 144
    Width = 49
    Height = 42
    Caption = '5'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button8: TButton
    Left = 135
    Top = 143
    Width = 49
    Height = 42
    Caption = '6'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button9: TButton
    Left = 24
    Top = 96
    Width = 49
    Height = 42
    Caption = '7'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button10: TButton
    Left = 80
    Top = 96
    Width = 49
    Height = 42
    Caption = '8'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button11: TButton
    Left = 135
    Top = 95
    Width = 49
    Height = 42
    Caption = '9'
    TabOrder = 12
    OnClick = Button1Click
  end
  object Button12: TButton
    Left = 199
    Top = 238
    Width = 105
    Height = 42
    Caption = '='
    TabOrder = 13
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 200
    Top = 191
    Width = 49
    Height = 42
    Caption = '+'
    TabOrder = 14
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 255
    Top = 190
    Width = 49
    Height = 42
    Caption = '-'
    TabOrder = 15
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 200
    Top = 143
    Width = 49
    Height = 42
    Caption = '*'
    TabOrder = 16
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 255
    Top = 142
    Width = 49
    Height = 42
    Caption = '/'
    TabOrder = 17
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 200
    Top = 95
    Width = 49
    Height = 42
    Caption = #8592
    TabOrder = 18
  end
  object Button18: TButton
    Left = 255
    Top = 94
    Width = 49
    Height = 42
    Caption = 'c'
    TabOrder = 19
    OnClick = Button18Click
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = EditCopy1
                ImageIndex = 1
                ShortCut = 16451
              end
              item
                Action = EditPaste1
                ImageIndex = 2
                ShortCut = 16470
              end>
            Caption = #54200#51665'(&Z)'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 256
    Top = 48
    StyleName = 'Platform Default'
    object EditCopy1: TEditCopy
      Category = #54200#51665
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = #54200#51665
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
  end
end
