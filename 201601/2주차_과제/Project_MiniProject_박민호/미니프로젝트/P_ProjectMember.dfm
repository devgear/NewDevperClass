object ProjectMember: TProjectMember
  Left = 0
  Top = 0
  Caption = 'ProjectMember'
  ClientHeight = 240
  ClientWidth = 553
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 553
    Height = 240
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 550
      Height = 200
      DataSource = DataSource1
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'M_ID'
          Title.Alignment = taCenter
          Title.Caption = #49324#50896#48264#54840
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = #51060#47492
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M_TEAM'
          Title.Alignment = taCenter
          Title.Caption = #49548#49549#54016
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M_PHONE'
          Title.Alignment = taCenter
          Title.Caption = #50672#46973#52376
          Width = 150
          Visible = True
        end>
    end
    object Select: TButton
      Left = 368
      Top = 206
      Width = 75
      Height = 25
      Caption = #49440#53469
      TabOrder = 1
      OnClick = SelectClick
    end
    object Cancel: TButton
      Left = 457
      Top = 206
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 2
      OnClick = CancelClick
    end
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'M_ID'
    Connection = TDataModule.FDConnection1
    UpdateOptions.UpdateTableName = 'MEMBER'
    TableName = 'MEMBER'
    Left = 40
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 112
    Top = 184
  end
end
