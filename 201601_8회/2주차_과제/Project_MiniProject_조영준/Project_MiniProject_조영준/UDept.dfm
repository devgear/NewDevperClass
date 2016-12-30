object DeptForm: TDeptForm
  Left = 0
  Top = 0
  Caption = #48512#49436#44288#47532
  ClientHeight = 435
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 15
    Top = 40
    Width = 420
    Height = 33
    DataSource = DM.DeptSource
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 15
    Top = 95
    Width = 429
    Height = 120
    DataSource = DM.DeptSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'D_DEPT'
        Title.Caption = #48512#49436
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_TEAM'
        Title.Caption = #54016
        Width = 60
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 15
    Top = 242
    Width = 429
    Height = 185
    DataSource = DM.subEmployeeSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'E_NAME'
        Title.Caption = #51060#47492
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'E_PHONE'
        Title.Caption = #51204#54868#48264#54840
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'E_TEAM'
        Title.Caption = #54016
        Width = 100
        Visible = True
      end>
  end
end
