object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'MainForm'
  ClientHeight = 489
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pMain: TPanel
    Left = 0
    Top = 41
    Width = 525
    Height = 448
    Align = alClient
    TabOrder = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 525
    Height = 41
    ButtonHeight = 38
    Caption = 'ToolBar1'
    TabOrder = 1
    object ProjectButton: TButton
      Left = 0
      Top = 0
      Width = 81
      Height = 38
      Caption = #54532#47196#51229#53944
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = ProjectButtonClick
    end
    object MemberButton: TButton
      Left = 81
      Top = 0
      Width = 82
      Height = 38
      Caption = #49324#50896' '#51221#48372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = MemberButtonClick
    end
    object DeptButton: TButton
      Left = 163
      Top = 0
      Width = 78
      Height = 38
      Caption = #48512#49436' '#51221#48372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = DeptButtonClick
    end
    object bClose: TButton
      Left = 241
      Top = 0
      Width = 56
      Height = 38
      Caption = #45803#44592
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bCloseClick
    end
    object StatusBar1: TStatusBar
      Left = 297
      Top = 0
      Width = 225
      Height = 38
      Align = alNone
      Panels = <
        item
          Width = 50
        end>
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 392
    Top = 8
  end
end
