object frmCalc: TfrmCalc
  Left = 0
  Top = 0
  Caption = 'frmCalc'
  ClientHeight = 438
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 89
    Align = alTop
    TabOrder = 0
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 335
      Height = 87
      Align = alClient
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 337
    Height = 349
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 410
    object Btn1: TButton
      Left = 8
      Top = 199
      Width = 75
      Height = 57
      Caption = '1'
      TabOrder = 0
      OnClick = Btn0Click
    end
    object Btn2: TButton
      Left = 89
      Top = 199
      Width = 75
      Height = 57
      Caption = '2'
      TabOrder = 1
      OnClick = Btn0Click
    end
    object Btn3: TButton
      Left = 170
      Top = 199
      Width = 75
      Height = 57
      Caption = '3'
      TabOrder = 2
      OnClick = Btn0Click
    end
    object Btn4: TButton
      Left = 8
      Top = 136
      Width = 75
      Height = 57
      Caption = '4'
      TabOrder = 3
      OnClick = Btn0Click
    end
    object Btn5: TButton
      Left = 89
      Top = 136
      Width = 75
      Height = 57
      Caption = '5'
      TabOrder = 4
      OnClick = Btn0Click
    end
    object Btn6: TButton
      Left = 170
      Top = 134
      Width = 75
      Height = 59
      Caption = '6'
      TabOrder = 5
      OnClick = Btn0Click
    end
    object Btn7: TButton
      Left = 8
      Top = 73
      Width = 75
      Height = 57
      Caption = '7'
      TabOrder = 6
      OnClick = Btn0Click
    end
    object Btn8: TButton
      Left = 89
      Top = 73
      Width = 75
      Height = 57
      Caption = '8'
      TabOrder = 7
      OnClick = Btn0Click
    end
    object Btn9: TButton
      Left = 170
      Top = 71
      Width = 75
      Height = 57
      Caption = '9'
      TabOrder = 8
      OnClick = Btn0Click
    end
    object Btn0: TButton
      Left = 8
      Top = 262
      Width = 156
      Height = 57
      Caption = '0'
      TabOrder = 9
      OnClick = Btn0Click
    end
    object BtnDot: TButton
      Left = 170
      Top = 262
      Width = 75
      Height = 57
      Caption = '.'
      TabOrder = 10
      OnClick = BtnDotClick
    end
    object BtnEquals: TButton
      Left = 251
      Top = 199
      Width = 75
      Height = 120
      Caption = '='
      TabOrder = 11
      OnClick = BtnEqualsClick
    end
    object BtnPlus: TButton
      Left = 251
      Top = 134
      Width = 75
      Height = 59
      Caption = '+'
      TabOrder = 12
      OnClick = BtnPlusClick
    end
    object BtnSub: TButton
      Left = 251
      Top = 71
      Width = 75
      Height = 59
      Caption = '-'
      TabOrder = 13
      OnClick = BtnSubClick
    end
    object BtnMulty: TButton
      Left = 251
      Top = 6
      Width = 75
      Height = 59
      Caption = '*'
      TabOrder = 14
      OnClick = BtnMultyClick
    end
    object BtnDiv: TButton
      Left = 170
      Top = 6
      Width = 75
      Height = 59
      Caption = '/'
      TabOrder = 15
      OnClick = BtnDivClick
    end
    object BtnClear: TButton
      Left = 89
      Top = 6
      Width = 75
      Height = 59
      Caption = 'C'
      TabOrder = 16
      OnClick = BtnClearClick
    end
    object BtnBack: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 59
      Caption = #8592
      TabOrder = 17
      OnClick = BtnBackClick
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 329
      Width = 335
      Height = 19
      Panels = <
        item
          Width = 20
        end
        item
          Width = 150
        end
        item
          Width = 20
        end>
      ExplicitTop = 390
    end
  end
  object MainMenu1: TMainMenu
    Left = 96
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Caption = 'New'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Style1: TMenuItem
      Caption = 'Style'
      object Auric1: TMenuItem
        Caption = 'Auric'
        OnClick = Auric_actionExecute
      end
      object Windows1: TMenuItem
        Caption = 'Windows'
        OnClick = Windows_ActionExecute
      end
      object Silver1: TMenuItem
        Caption = 'Silver'
        OnClick = Silver_ActionExecute
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
      end>
    Left = 176
    Top = 25
    StyleName = 'Platform Default'
    object New_Action: TAction
      Category = 'File'
      Caption = 'New'
      OnExecute = New_ActionExecute
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object Auric_action: TAction
      Category = #49828#53440#51068
      Caption = 'Auric'
      OnExecute = Auric_actionExecute
    end
    object Windows_Action: TAction
      Category = #49828#53440#51068
      Caption = 'Windows'
      OnExecute = Windows_ActionExecute
    end
    object Silver_Action: TAction
      Category = #49828#53440#51068
      Caption = 'Silver'
      OnExecute = Silver_ActionExecute
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 272
    Top = 40
  end
end
