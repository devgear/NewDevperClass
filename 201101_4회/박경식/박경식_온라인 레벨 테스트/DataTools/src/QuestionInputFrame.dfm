object frmQuestionInput: TfrmQuestionInput
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object PanelInputQuestion: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      447
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
    object edQuestion: TLabeledEdit
      Left = 64
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
      NumbersOnly = True
      TabOrder = 0
    end
  end
end
