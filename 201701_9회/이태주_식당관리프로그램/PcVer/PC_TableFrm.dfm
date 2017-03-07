object frmHall: TfrmHall
  Left = 0
  Top = 0
  Caption = #47588#51109#44288#47532
  ClientHeight = 511
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTableOrder: TPanel
    Left = 357
    Top = 0
    Width = 374
    Height = 511
    Align = alRight
    Anchors = []
    TabOrder = 0
    object btnCalculate: TButton
      Left = 1
      Top = 397
      Width = 372
      Height = 113
      Align = alBottom
      Caption = #44228#49328
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnCalculateClick
    end
    object edtTablenum: TEdit
      Left = 246
      Top = 489
      Width = 121
      Height = 21
      TabOrder = 1
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 372
      Height = 297
      Align = alTop
      DataSource = dsTmpOrderlist
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
          FieldName = 'TABLENUM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MENU'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEOPLE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALPRICE'
          Width = 95
          Visible = True
        end>
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 357
    Height = 511
    Align = alClient
    ColumnCollection = <
      item
        Value = 20.839695637593500000
      end
      item
        Value = 20.260118900889160000
      end
      item
        Value = 19.802002610055090000
      end
      item
        Value = 19.537114012907590000
      end
      item
        Value = 19.561068838554650000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = pnl1
        Row = 0
      end
      item
        Column = 1
        Control = pnl2
        Row = 0
      end
      item
        Column = 2
        Control = pnl3
        Row = 0
      end
      item
        Column = 3
        Control = pnl4
        Row = 0
      end
      item
        Column = 0
        Control = pnl6
        Row = 1
      end
      item
        Column = 1
        Control = pnl7
        Row = 1
      end
      item
        Column = 2
        Control = pnl8
        Row = 1
      end
      item
        Column = 3
        Control = pnl9
        Row = 1
      end
      item
        Column = 0
        Control = pnl11
        Row = 2
      end
      item
        Column = 1
        Control = pnl12
        Row = 2
      end
      item
        Column = 2
        Control = pnl13
        Row = 2
      end
      item
        Column = 3
        Control = pnl14
        Row = 2
      end
      item
        Column = 0
        Control = pnl16
        Row = 3
      end
      item
        Column = 1
        Control = pnl17
        Row = 3
      end
      item
        Column = 2
        Control = pnl18
        Row = 3
      end
      item
        Column = 3
        Control = pnl19
        Row = 3
      end
      item
        Column = 0
        Control = pnl21
        Row = 4
      end
      item
        Column = 1
        Control = pnl22
        Row = 4
      end
      item
        Column = 2
        Control = pnl23
        Row = 4
      end
      item
        Column = 3
        Control = pnl24
        Row = 4
      end
      item
        Column = 0
        Row = 0
      end
      item
        Column = 4
        Control = pnl5
        Row = 0
      end
      item
        Column = 4
        Control = pnl10
        Row = 1
      end
      item
        Column = 4
        Control = pnl15
        Row = 2
      end
      item
        Column = 4
        Control = pnl20
        Row = 3
      end
      item
        Column = 4
        Control = pnl25
        Row = 4
      end>
    RowCollection = <
      item
        Value = 19.999999999999990000
      end
      item
        Value = 19.999999999999560000
      end
      item
        Value = 19.999999999999970000
      end
      item
        Value = 20.000000000000300000
      end
      item
        Value = 20.000000000000190000
      end>
    TabOrder = 1
    object pnl1: TPanel
      Left = 1
      Top = 1
      Width = 73
      Height = 101
      Align = alClient
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnl1Click
    end
    object pnl2: TPanel
      Left = 74
      Top = 1
      Width = 71
      Height = 101
      Align = alClient
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnl1Click
    end
    object pnl3: TPanel
      Left = 145
      Top = 1
      Width = 70
      Height = 101
      Align = alClient
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = pnl1Click
    end
    object pnl4: TPanel
      Left = 215
      Top = 1
      Width = 69
      Height = 101
      Align = alClient
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = pnl1Click
    end
    object pnl6: TPanel
      Left = 1
      Top = 102
      Width = 73
      Height = 101
      Align = alClient
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = pnl1Click
    end
    object pnl7: TPanel
      Left = 74
      Top = 102
      Width = 71
      Height = 101
      Align = alClient
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = pnl1Click
    end
    object pnl8: TPanel
      Left = 145
      Top = 102
      Width = 70
      Height = 101
      Align = alClient
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = pnl1Click
    end
    object pnl9: TPanel
      Left = 215
      Top = 102
      Width = 69
      Height = 101
      Align = alClient
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      OnClick = pnl1Click
    end
    object pnl11: TPanel
      Left = 1
      Top = 203
      Width = 73
      Height = 101
      Align = alClient
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      OnClick = pnl1Click
    end
    object pnl12: TPanel
      Left = 74
      Top = 203
      Width = 71
      Height = 101
      Align = alClient
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 9
      OnClick = pnl1Click
    end
    object pnl13: TPanel
      Left = 145
      Top = 203
      Width = 70
      Height = 101
      Align = alClient
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 10
      OnClick = pnl1Click
    end
    object pnl14: TPanel
      Left = 215
      Top = 203
      Width = 69
      Height = 101
      Align = alClient
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 11
      OnClick = pnl1Click
    end
    object pnl16: TPanel
      Left = 1
      Top = 304
      Width = 73
      Height = 101
      Align = alClient
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 12
      OnClick = pnl1Click
    end
    object pnl17: TPanel
      Left = 74
      Top = 304
      Width = 71
      Height = 101
      Align = alClient
      Caption = '17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 13
      OnClick = pnl1Click
    end
    object pnl18: TPanel
      Left = 145
      Top = 304
      Width = 70
      Height = 101
      Align = alClient
      Caption = '18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 14
      OnClick = pnl1Click
    end
    object pnl19: TPanel
      Left = 215
      Top = 304
      Width = 69
      Height = 101
      Align = alClient
      Caption = '19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 15
      OnClick = pnl1Click
    end
    object pnl21: TPanel
      Left = 1
      Top = 405
      Width = 73
      Height = 105
      Align = alClient
      Caption = '21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 16
      OnClick = pnl1Click
    end
    object pnl22: TPanel
      Left = 74
      Top = 405
      Width = 71
      Height = 105
      Align = alClient
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 17
      OnClick = pnl1Click
    end
    object pnl23: TPanel
      Left = 145
      Top = 405
      Width = 70
      Height = 105
      Align = alClient
      Caption = '23'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 18
      OnClick = pnl1Click
    end
    object pnl24: TPanel
      Left = 215
      Top = 405
      Width = 69
      Height = 105
      Align = alClient
      Caption = '24'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 19
      OnClick = pnl1Click
    end
    object pnl5: TPanel
      Left = 284
      Top = 1
      Width = 72
      Height = 101
      Align = alClient
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 20
      OnClick = pnl1Click
    end
    object pnl10: TPanel
      Left = 284
      Top = 102
      Width = 72
      Height = 101
      Align = alClient
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 21
      OnClick = pnl1Click
    end
    object pnl15: TPanel
      Left = 284
      Top = 203
      Width = 72
      Height = 101
      Align = alClient
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 22
      OnClick = pnl1Click
    end
    object pnl20: TPanel
      Left = 284
      Top = 304
      Width = 72
      Height = 101
      Align = alClient
      Caption = '20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 23
      OnClick = pnl1Click
    end
    object pnl25: TPanel
      Left = 284
      Top = 405
      Width = 72
      Height = 105
      Align = alClient
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 24
      OnClick = pnl1Click
    end
  end
  object edtKeyNum: TEdit
    Left = 1205
    Top = 448
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
    Visible = False
  end
  object dsTmpOrderlist: TDataSource
    DataSet = Dm_PC.cdsTmpOrderlist
    Left = 1128
    Top = 432
  end
  object dsTotal: TDataSource
    DataSet = Dm_PC.cdsTotal
    Left = 1153
    Top = 161
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = Dm_PC.cdsTmpOrderlist
    ScopeMappings = <>
    Left = 629
    Top = 64
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 629
    Top = 136
  end
end
