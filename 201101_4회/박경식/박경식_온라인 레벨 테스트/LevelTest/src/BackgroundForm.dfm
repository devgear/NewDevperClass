object frBackground: TfrBackground
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frBackground'
  ClientHeight = 689
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    1000
    689)
  PixelsPerInch = 96
  TextHeight = 13
  object QuestionBoard: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 600
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    inline fmReading: TfmReading
      Left = 0
      Top = 0
      Width = 1000
      Height = 600
      Align = alClient
      TabOrder = 0
    end
    inline fmListening: TfmListening
      Left = 0
      Top = 0
      Width = 1000
      Height = 600
      Align = alClient
      TabOrder = 1
      inherited Panel2: TPanel
        inherited MediaPlayer1: TMediaPlayer
          Width = 57
          ExplicitWidth = 57
        end
      end
    end
  end
  object btNext: TButton
    Left = 832
    Top = 606
    Width = 160
    Height = 75
    Anchors = [akRight, akBottom]
    Caption = #45796#51020
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btNextClick
  end
end
