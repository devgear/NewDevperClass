object FrmAccountDiary: TFrmAccountDiary
  Left = 0
  Top = 0
  Caption = 'FrmAccountDiary'
  ClientHeight = 527
  ClientWidth = 1064
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 494
    Height = 486
    Align = alClient
    Anchors = []
    Caption = 'Panel1'
    TabOrder = 0
    object grdOrderDB: TStringGrid
      Tag = 4
      Left = 1
      Top = 1
      Width = 492
      Height = 484
      Align = alClient
      Anchors = []
      ColCount = 4
      DefaultRowHeight = 50
      FixedCols = 0
      RowCount = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ColWidths = (
        300
        120
        150
        200)
      RowHeights = (
        50
        50
        50
        50
        50
        50
        50)
    end
  end
  object Panel2: TPanel
    Left = 494
    Top = 41
    Width = 570
    Height = 486
    Align = alRight
    Anchors = []
    Caption = 'Panel2'
    TabOrder = 1
    object grdOrderDetail: TDBGrid
      Left = 1
      Top = 1
      Width = 568
      Height = 484
      DataSource = dsOrderDetail
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'KEYNUM'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TABLENUM'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MENU'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEOPLE'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALPRICE'
          Width = 80
          Visible = True
        end>
    end
    object StringGrid1: TStringGrid
      Tag = 5
      Left = 1
      Top = 1
      Width = 568
      Height = 484
      Align = alClient
      Anchors = []
      DefaultRowHeight = 50
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ColWidths = (
        80
        100
        150
        80
        200)
      RowHeights = (
        50
        50)
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1064
    Height = 41
    Align = alTop
    Anchors = []
    TabOrder = 2
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 84
      Height = 39
      Align = alLeft
      Caption = #44032#44228#48512
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 33
    end
    object CalendarPicker1: TCalendarPicker
      Left = 160
      Top = 3
      Height = 32
      CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
      CalendarHeaderInfo.DaysOfWeekFont.Height = -13
      CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
      CalendarHeaderInfo.DaysOfWeekFont.Style = []
      CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.Font.Color = clWindowText
      CalendarHeaderInfo.Font.Height = -20
      CalendarHeaderInfo.Font.Name = 'Segoe UI'
      CalendarHeaderInfo.Font.Style = []
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      OnCloseUp = CalendarPicker1CloseUp
      ParentFont = False
      TabOrder = 0
      TextHint = #45216#51676' '#49440#53469
    end
  end
  object dsOrderDb: TDataSource
    DataSet = Dm_PC.cdsOrderDb
    OnDataChange = dsOrderDbDataChange
    Left = 536
    Top = 1
  end
  object dsOrderDetail: TDataSource
    DataSet = Dm_PC.cdsOrderDetail
    Left = 488
    Top = 1
  end
  object dsDatePicker: TDataSource
    DataSet = Dm_PC.cdsDateTouch
    Left = 424
  end
  object bsOrderDb: TBindSourceDB
    DataSet = Dm_PC.cdsOrderDb
    ScopeMappings = <>
    Left = 600
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 660
    Top = 65533
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = bsOrderDb
      GridControl = grdOrderDB
      Columns = <
        item
          MemberName = 'ORDERDATE'
          Width = 300
        end
        item
          MemberName = 'KEYNUM'
          Width = 120
        end
        item
          MemberName = 'TABLENUM'
          Width = 150
        end
        item
          MemberName = 'TOTALPRICE'
          Width = 200
        end>
    end
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = bsOrderDetail
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'KEYNUM'
          Width = 80
        end
        item
          MemberName = 'TABLENUM'
          Width = 100
        end
        item
          MemberName = 'MENU'
          Width = 150
        end
        item
          MemberName = 'PEOPLE'
          Width = 80
        end
        item
          MemberName = 'TOTALPRICE'
          Width = 200
        end>
    end
  end
  object bsOrderDetail: TBindSourceDB
    DataSet = Dm_PC.cdsOrderDetail
    ScopeMappings = <>
    Left = 736
  end
end
