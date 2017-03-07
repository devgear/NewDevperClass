object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'FrmMain'
  ClientHeight = 537
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 89
    Width = 856
    Height = 448
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 376
  end
  object pnlMainheader: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 89
    Align = alTop
    Color = clMenuBar
    ParentBackground = False
    TabOrder = 1
    object btnExit: TButton
      Left = 193
      Top = 1
      Width = 96
      Height = 87
      Align = alLeft
      Caption = #51333#47308
      TabOrder = 0
      OnClick = btnExitClick
    end
    object btnTable: TButton
      Left = 1
      Top = 1
      Width = 96
      Height = 87
      Align = alLeft
      Caption = #47588#51109#44288#47532
      TabOrder = 1
      OnClick = btnTableClick
    end
    object btnAccountDiary: TButton
      Left = 97
      Top = 1
      Width = 96
      Height = 87
      Align = alLeft
      Caption = #44032#44228#48512#44288#47532
      TabOrder = 2
      OnClick = btnAccountDiaryClick
    end
  end
end
