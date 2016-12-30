object frmButtons: TfrmButtons
  Left = 0
  Top = 0
  Width = 790
  Height = 40
  TabOrder = 0
  DesignSize = (
    790
    40)
  object btDelete: TButton
    Left = 711
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #49325#51228
    TabOrder = 0
    OnClick = btDeleteClick
  end
  object btInsert: TButton
    Left = 550
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #51077#47141
    TabOrder = 1
    Visible = False
    OnClick = btInsertClick
  end
  object btModify: TButton
    Left = 630
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #49688#51221
    TabOrder = 2
    OnClick = btModifyClick
  end
  object btQueAdd: TButton
    Left = 549
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #47928#51228#52628#44032
    TabOrder = 3
    OnClick = btQueAddClick
  end
end
