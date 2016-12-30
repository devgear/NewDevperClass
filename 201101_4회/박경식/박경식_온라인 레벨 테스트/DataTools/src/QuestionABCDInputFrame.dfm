object frmQuestionABCDInput: TfrmQuestionABCDInput
  Left = 0
  Top = 0
  Width = 796
  Height = 304
  TabOrder = 0
  object PanelInputABCDQuestion: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 304
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      792
      300)
    object lbQuestion: TLabel
      Left = 17
      Top = 16
      Width = 52
      Height = 14
      Caption = #47928#51228#51077#47141
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbAnswer: TLabel
      Left = 635
      Top = 17
      Width = 24
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #51221#45813
    end
    object edExampleA: TLabeledEdit
      Left = 65
      Top = 87
      Width = 700
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 11
      EditLabel.Height = 13
      EditLabel.Caption = 'A.'
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object edExampleB: TLabeledEdit
      Left = 65
      Top = 113
      Width = 700
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 10
      EditLabel.Height = 13
      EditLabel.Caption = 'B.'
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object edExampleC: TLabeledEdit
      Left = 65
      Top = 139
      Width = 700
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 11
      EditLabel.Height = 13
      EditLabel.Caption = 'C.'
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 4
    end
    object edExampleD: TLabeledEdit
      Left = 65
      Top = 165
      Width = 700
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 11
      EditLabel.Height = 13
      EditLabel.Caption = 'D.'
      ImeName = 'Microsoft Office IME 2007'
      LabelPosition = lpLeft
      TabOrder = 5
    end
    object edQuestion: TLabeledEdit
      Left = 65
      Top = 60
      Width = 700
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = #47928#51228
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
    end
    object edNumber: TLabeledEdit
      Left = 23
      Top = 60
      Width = 35
      Height = 21
      EditLabel.Width = 17
      EditLabel.Height = 13
      EditLabel.Caption = 'No.'
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object cbAnswer: TComboBox
      Left = 665
      Top = 14
      Width = 100
      Height = 21
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
      Items.Strings = (
        'A'
        'B'
        'C'
        'D')
    end
  end
end
