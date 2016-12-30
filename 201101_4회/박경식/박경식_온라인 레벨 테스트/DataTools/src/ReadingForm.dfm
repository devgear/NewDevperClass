object frReading: TfrReading
  Left = 0
  Top = 0
  ActiveControl = cbExamCategory
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsNone
  Caption = 'frReading'
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 722
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelLeftInTop: TPanel
      Left = 0
      Top = 0
      Width = 796
      Height = 50
      Align = alTop
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 0
      object lbCategory: TLabel
        Left = 17
        Top = 16
        Width = 52
        Height = 14
        Caption = #51648#47928#49440#53469
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbExamCategory: TComboBox
        Left = 86
        Top = 14
        Width = 200
        Height = 21
        Style = csDropDownList
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        OnSelect = cbExamCategorySelect
      end
    end
    inline frmQuestionSelect: TfrmQuestionSelect
      Left = 0
      Top = 266
      Width = 796
      Height = 50
      Align = alTop
      TabOrder = 1
      ExplicitTop = 266
      ExplicitWidth = 796
      ExplicitHeight = 50
      inherited PanelQuestionSelect: TPanel
        Width = 796
        Align = alTop
        ExplicitWidth = 796
        inherited cbNumberSelect: TComboBox
          OnSelect = frmQuestionSelectcbNumberSelectSelect
        end
      end
    end
    inline frmQuestionABCDInput: TfrmQuestionABCDInput
      Left = 0
      Top = 316
      Width = 796
      Height = 210
      Align = alTop
      Anchors = []
      TabOrder = 2
      ExplicitTop = 316
      ExplicitHeight = 210
      inherited PanelInputABCDQuestion: TPanel
        Height = 210
        ExplicitHeight = 210
        DesignSize = (
          792
          206)
      end
    end
    inline frmButtons: TfrmButtons
      Left = 0
      Top = 526
      Width = 796
      Height = 40
      Align = alTop
      TabOrder = 3
      ExplicitTop = 526
      ExplicitWidth = 796
      inherited btDelete: TButton
        Left = 717
        OnClick = frmButtonsbtDeleteClick
        ExplicitLeft = 717
      end
      inherited btInsert: TButton
        Left = 556
        OnClick = frmButtonsbtInsertClick
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
    object PanelExam: TPanel
      Left = 0
      Top = 225
      Width = 796
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        796
        41)
      object btExamInsert: TButton
        Left = 554
        Top = 3
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #51077#47141
        TabOrder = 0
        Visible = False
        OnClick = btExamInsertClick
      end
      object btExamModify: TButton
        Left = 635
        Top = 3
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #49688#51221
        TabOrder = 1
        OnClick = btExamModifyClick
      end
      object btExamDelete: TButton
        Left = 716
        Top = 3
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #49325#51228
        TabOrder = 2
        OnClick = btExamDeleteClick
      end
      object btExamAdd: TButton
        Left = 554
        Top = 3
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #51648#47928#52628#44032
        TabOrder = 3
        OnClick = btExamAddClick
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 50
      Width = 796
      Height = 175
      Align = alTop
      BevelKind = bkTile
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 5
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
        Left = 64
        Top = 55
        Width = 656
        Height = 92
        Anchors = [akLeft, akTop, akRight, akBottom]
        ImeName = 'Microsoft Office IME 2007'
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object edNumber: TLabeledEdit
        Left = 23
        Top = 55
        Width = 35
        Height = 21
        EditLabel.Width = 17
        EditLabel.Height = 13
        EditLabel.Caption = 'No.'
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
      end
    end
  end
end
