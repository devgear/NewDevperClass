object money: Tmoney
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Align = alClient
    DataSource = dm.MoneySource
    ImeName = 'Microsoft Office IME 2007'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
