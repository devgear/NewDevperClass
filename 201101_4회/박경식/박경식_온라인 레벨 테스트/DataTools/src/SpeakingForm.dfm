object frSpeaking: TfrSpeaking
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsNone
  Caption = 'frSpeaking'
  ClientHeight = 722
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBottom: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 722
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    inline frmQuestionSelect: TfrmQuestionSelect
      Left = 0
      Top = 0
      Width = 796
      Height = 50
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 796
      ExplicitHeight = 50
      inherited PanelQuestionSelect: TPanel
        Width = 796
        Height = 50
        ExplicitWidth = 796
        ExplicitHeight = 50
      end
    end
    inline frmSound: TfrmSound
      Left = 0
      Top = 50
      Width = 796
      Height = 86
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 1
      ExplicitTop = 50
      ExplicitWidth = 796
      ExplicitHeight = 86
      inherited Panelplayer: TPanel
        Width = 796
        ExplicitWidth = 796
        DesignSize = (
          792
          82)
        inherited MemoSoundUrl: TMemo
          Width = 386
          TabStop = False
          ExplicitWidth = 390
        end
        inherited PanelSountInOut: TPanel
          Left = 657
          ExplicitLeft = 657
          ExplicitTop = 35
          ExplicitHeight = 47
        end
      end
    end
    inline frmQuestionInput: TfrmQuestionInput
      Left = 0
      Top = 136
      Width = 796
      Height = 109
      Align = alTop
      TabOrder = 2
      ExplicitTop = 136
      ExplicitWidth = 796
      ExplicitHeight = 109
      inherited PanelInputQuestion: TPanel
        Width = 796
        Height = 109
        ExplicitWidth = 796
        ExplicitHeight = 109
        DesignSize = (
          792
          105)
        inherited edQuestion: TLabeledEdit
          Width = 656
          ExplicitWidth = 660
        end
      end
    end
    inline FrmButtons: TfrmButtons
      Left = 0
      Top = 245
      Width = 796
      Height = 36
      Align = alTop
      TabOrder = 3
      ExplicitTop = 245
      ExplicitWidth = 796
      ExplicitHeight = 36
      inherited btDelete: TButton
        Left = 717
        ExplicitLeft = 717
      end
      inherited btInsert: TButton
        Left = 556
        ExplicitLeft = 556
      end
      inherited btModify: TButton
        Left = 637
        ExplicitLeft = 637
      end
      inherited btQueAdd: TButton
        Left = 555
        ExplicitLeft = 555
      end
    end
  end
end
