object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 237
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 27
    Width = 369
    Height = 166
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 318
    Top = 207
    Width = 75
    Height = 25
    Caption = #49440#53469
    TabOrder = 1
    OnClick = Button1Click
  end
  object FDTable1: TFDTable
    Active = True
    Filter = 'M_NAME LIKE '#39'%'#54861'%'#39
    IndexFieldNames = 'M_ID'
    Connection = DataModule8.FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 208
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 312
    Top = 136
  end
end
