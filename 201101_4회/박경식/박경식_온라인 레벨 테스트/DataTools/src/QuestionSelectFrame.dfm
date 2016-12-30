object frmQuestionSelect: TfrmQuestionSelect
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object PanelQuestionSelect: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object lbQuestionSelect: TLabel
      Left = 17
      Top = 16
      Width = 52
      Height = 14
      Caption = #47928#51228#49440#53469
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbNumberSelect: TComboBox
      Left = 86
      Top = 14
      Width = 200
      Height = 21
      Style = csDropDownList
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      OnSelect = cbNumberSelectSelect
    end
  end
end
