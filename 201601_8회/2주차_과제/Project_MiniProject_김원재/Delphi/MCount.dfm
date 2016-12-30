object MCountForm: TMCountForm
  Left = 0
  Top = 0
  Caption = 'MCountForm'
  ClientHeight = 326
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 619
    Height = 249
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
    Left = 552
    Top = 263
    Width = 75
    Height = 25
    Caption = #52628#44032
    TabOrder = 1
    OnClick = Button1Click
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = wDM.FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 312
    Top = 168
    object FDTable1M_ID: TIntegerField
      FieldName = 'M_ID'
      Origin = 'M_ID'
      Required = True
    end
    object FDTable1M_NAME: TWideStringField
      FieldName = 'M_NAME'
      Origin = 'M_NAME'
      Size = 120
    end
    object FDTable1M_TEAM: TStringField
      FieldName = 'M_TEAM'
      Origin = 'M_TEAM'
      Size = 120
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 384
    Top = 176
  end
end
