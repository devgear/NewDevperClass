object Frame4: TFrame4
  Left = 0
  Top = 0
  Width = 630
  Height = 440
  TabOrder = 0
  object monthLabel: TLabel
    Left = 32
    Top = 37
    Width = 19
    Height = 13
    Caption = #50900' :'
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 88
    Width = 620
    Height = 352
    DataSource = dm.gosiDataSource
    ImeName = 'Microsoft Office IME 2007'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object monthComboBox: TComboBox
    Left = 57
    Top = 34
    Width = 53
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    ItemIndex = 0
    TabOrder = 1
    Text = '1'
    OnChange = monthComboBoxChange
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12')
  end
end
