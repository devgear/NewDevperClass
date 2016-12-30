object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object DBGrid2: TDBGrid
    Left = 225
    Top = 0
    Width = 226
    Height = 304
    Align = alRight
    DataSource = dm.AlignSource
    ImeName = 'Microsoft Office IME 2007'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 225
    Height = 304
    Align = alClient
    Columns = <
      item
        Caption = #50629#52404#47749
        Width = 60
      end
      item
        Caption = #44552#50529
        Width = 60
      end>
    GridLines = True
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
    OnDblClick = ListView1DblClick
    ExplicitLeft = 1
    ExplicitTop = -15
    ExplicitWidth = 223
    ExplicitHeight = 319
  end
end
