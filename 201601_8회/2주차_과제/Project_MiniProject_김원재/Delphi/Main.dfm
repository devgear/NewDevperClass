object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 747
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1072
    Height = 29
    ButtonHeight = 29
    ButtonWidth = 155
    Caption = 'ToolBar1'
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 92
      Height = 29
      Caption = #54532#47196#51229#53944' '#51221#48372
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 92
      Top = 0
      Width = 75
      Height = 29
      Caption = #49324#50896' '#51221#48372
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 167
      Top = 0
      Width = 75
      Height = 29
      Caption = #48512#49436' '#51221#48372
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 1072
    Height = 718
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
  end
end
