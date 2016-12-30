object itemsFrame: TitemsFrame
  Left = 0
  Top = 0
  Width = 630
  Height = 440
  TabOrder = 0
  object itemnamelabel: TLabel
    Left = 40
    Top = 43
    Width = 34
    Height = 13
    Caption = #47785#47197' : '
  end
  object exlabel: TLabel
    Left = 260
    Top = 43
    Width = 43
    Height = 13
    Caption = #51648#52636#44552' :'
  end
  object talabel: TLabel
    Left = 37
    Top = 123
    Width = 34
    Height = 13
    Caption = #44060#49688' : '
  end
  object totallabel: TLabel
    Left = 260
    Top = 123
    Width = 46
    Height = 13
    Caption = #52509#44552#50529' : '
  end
  object itemStringGrid: TStringGrid
    Left = 3
    Top = 204
    Width = 614
    Height = 221
    ColCount = 4
    DrawingStyle = gdsClassic
    RowCount = 4
    TabOrder = 0
  end
  object itemnameedit: TEdit
    Left = 80
    Top = 40
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 1
  end
  object exedit: TEdit
    Left = 309
    Top = 40
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 2
  end
  object taedit: TEdit
    Left = 77
    Top = 120
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 3
  end
  object totaledit: TEdit
    Left = 309
    Top = 120
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 4
  end
  object iteminBt: TButton
    Left = 488
    Top = 31
    Width = 70
    Height = 40
    Caption = #46321#47197
    TabOrder = 5
    OnClick = iteminBtClick
  end
  object itemclbt: TButton
    Left = 488
    Top = 81
    Width = 70
    Height = 40
    Caption = #52712#49548
    TabOrder = 6
    OnClick = itemclbtClick
  end
  object itemdelbt: TButton
    Left = 488
    Top = 137
    Width = 70
    Height = 40
    Caption = #49325#51228
    TabOrder = 7
    OnClick = itemdelbtClick
  end
end
