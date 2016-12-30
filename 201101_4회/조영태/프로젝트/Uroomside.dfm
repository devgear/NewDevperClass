object roomsideFrame: TroomsideFrame
  Left = 0
  Top = 0
  Width = 185
  Height = 446
  TabOrder = 0
  object roomsidePanel: TPanel
    Left = 7
    Top = 6
    Width = 169
    Height = 433
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 35
      Width = 12
      Height = 13
      Caption = #52789
    end
    object Label2: TLabel
      Left = 21
      Top = 91
      Width = 12
      Height = 13
      Caption = #48169
    end
    object Label3: TLabel
      Left = 15
      Top = 189
      Width = 24
      Height = 13
      Caption = #51060#47492
    end
    object roomsideEdit: TEdit
      Left = 39
      Top = 88
      Width = 100
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object namesideEdit: TEdit
      Left = 45
      Top = 186
      Width = 100
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
    end
    object floowComboBox: TComboBox
      Left = 39
      Top = 32
      Width = 100
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 2
      Text = '2'
      Items.Strings = (
        '2'
        '3'
        '4')
    end
    object roomsideButton: TButton
      Left = 54
      Top = 126
      Width = 75
      Height = 25
      Caption = #52286#44592
      TabOrder = 3
      OnClick = roomsideButtonClick
    end
    object namesideButton: TButton
      Left = 54
      Top = 227
      Width = 75
      Height = 25
      Caption = #52286#44592
      TabOrder = 4
      OnClick = namesideButtonClick
    end
  end
end
