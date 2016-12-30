object Frame3: TFrame3
  Left = 0
  Top = 0
  Width = 185
  Height = 446
  Align = alCustom
  TabOrder = 0
  object opPanel: TPanel
    Left = 3
    Top = 3
    Width = 174
    Height = 430
    Align = alCustom
    TabOrder = 0
    object rname: TLabel
      Left = 13
      Top = 14
      Width = 34
      Height = 13
      Caption = #54840#49688' : '
    end
    object floor: TLabel
      Left = 32
      Top = 57
      Width = 22
      Height = 13
      Caption = #52789' : '
    end
    object opmoney: TLabel
      Left = 13
      Top = 132
      Width = 34
      Height = 13
      Caption = #44552#50529' : '
    end
    object roomEdit: TEdit
      Left = 53
      Top = 11
      Width = 89
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object floorcbb: TComboBox
      Left = 53
      Top = 54
      Width = 89
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 1
      Text = '2'
      Items.Strings = (
        '2'
        '3'
        '4')
    end
    object opmoneyEdit: TEdit
      Left = 53
      Top = 129
      Width = 89
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
    end
    object opinsertbt: TButton
      Left = 60
      Top = 81
      Width = 59
      Height = 25
      Caption = #51201#50857
      TabOrder = 3
    end
    object opcrbt: TButton
      Left = 21
      Top = 156
      Width = 58
      Height = 25
      Caption = #49373#49457
      TabOrder = 4
      OnClick = opcrbtClick
    end
    object opdeletebt: TButton
      Left = 85
      Top = 156
      Width = 58
      Height = 25
      Caption = #49325#51228
      TabOrder = 5
      OnClick = opdeletebtClick
    end
  end
end
