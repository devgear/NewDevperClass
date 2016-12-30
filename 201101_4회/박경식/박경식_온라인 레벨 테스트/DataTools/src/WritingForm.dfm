object frWriting: TfrWriting
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsNone
  Caption = 'frWriting'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PanelQuestionInput: TPanel
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
      inherited Panelplayer: TPanel
        Width = 796
        Align = alClient
        ExplicitWidth = 796
        DesignSize = (
          792
          82)
        inherited MemoSoundUrl: TMemo
          Width = 394
          ExplicitWidth = 394
        end
        inherited PanelSountInOut: TPanel
          Left = 657
          ExplicitLeft = 657
        end
        inherited Panel1: TPanel
          Width = 792
          ExplicitWidth = 792
          inherited pnDirSelect: TPanel
            Left = 324
            ExplicitLeft = 324
          end
        end
      end
    end
    inline frmQuestionInput: TfrmQuestionInput
      Left = 0
      Top = 311
      Width = 796
      Height = 109
      Align = alTop
      TabOrder = 2
      ExplicitTop = 296
      ExplicitWidth = 796
      ExplicitHeight = 109
      inherited PanelInputQuestion: TPanel
        Width = 796
        Height = 109
        ExplicitWidth = 796
        ExplicitHeight = 109
        inherited edQuestion: TLabeledEdit
          Width = 672
          ExplicitWidth = 672
        end
      end
    end
    inline frmButtons: TfrmButtons
      Left = 0
      Top = 420
      Width = 796
      Height = 40
      Align = alTop
      TabOrder = 3
      ExplicitTop = 405
      ExplicitWidth = 796
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
        OnClick = frmButtonsbtModifyClick
        ExplicitLeft = 637
      end
      inherited btQueAdd: TButton
        Left = 555
        OnClick = frmButtonsbtQueAddClick
        ExplicitLeft = 555
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 136
      Width = 796
      Height = 175
      Align = alTop
      BevelKind = bkTile
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 4
      DesignSize = (
        792
        171)
      object lbExample: TLabel
        Left = 17
        Top = 18
        Width = 52
        Height = 14
        Caption = #51648#47928#51077#47141
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MemoExample: TMemo
        Left = 23
        Top = 54
        Width = 705
        Height = 100
        Anchors = [akLeft, akTop, akRight, akBottom]
        ImeName = 'Microsoft Office IME 2007'
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
