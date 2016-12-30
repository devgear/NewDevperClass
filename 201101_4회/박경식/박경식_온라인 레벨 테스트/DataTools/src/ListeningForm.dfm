object frListening: TfrListening
  Left = 0
  Top = 0
  Align = alClient
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = 'frListening'
  ClientHeight = 722
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
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
    inline frmSound1: TfrmSound
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
        ExplicitWidth = 796
        inherited MemoSoundUrl: TMemo
          Width = 394
          ExplicitWidth = 394
        end
        inherited PanelSountInOut: TPanel
          Left = 657
          ExplicitLeft = 657
          ExplicitTop = 35
          ExplicitHeight = 47
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
    inline frmQuestionInput: TfrmQuestionABCDInput
      Left = 0
      Top = 136
      Width = 796
      Height = 210
      Align = alTop
      Anchors = []
      TabOrder = 2
      ExplicitTop = 136
      ExplicitHeight = 210
      inherited PanelInputABCDQuestion: TPanel
        Height = 210
        ExplicitHeight = 210
      end
    end
    inline FrmButtons: TfrmButtons
      Left = 0
      Top = 346
      Width = 796
      Height = 40
      Align = alTop
      TabOrder = 3
      ExplicitTop = 346
      ExplicitWidth = 796
      inherited btDelete: TButton
        Left = 717
        ExplicitLeft = 717
      end
      inherited btInsert: TButton
        Left = 556
        OnClick = FrmButtonsbtInsertClick
        ExplicitLeft = 556
      end
      inherited btModify: TButton
        Left = 636
        OnClick = FrmButtonsbtModifyClick
        ExplicitLeft = 636
      end
      inherited btQueAdd: TButton
        Left = 555
        OnClick = FrmButtonsbtQueAddClick
        ExplicitLeft = 555
      end
    end
  end
end
