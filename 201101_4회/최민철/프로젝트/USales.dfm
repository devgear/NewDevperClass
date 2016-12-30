object Sales: TSales
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 160
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
    ExplicitLeft = -9
    ExplicitTop = 1
    ExplicitWidth = 513
    object Label1: TLabel
      Left = 19
      Top = 25
      Width = 48
      Height = 13
      Caption = #54032#47588#48264#54840
    end
    object Label2: TLabel
      Left = 21
      Top = 46
      Width = 48
      Height = 13
      Caption = #54032#47588#44552#50529
    end
    object Label3: TLabel
      Left = 217
      Top = 24
      Width = 48
      Height = 13
      Caption = #54032#47588#45216#51676
    end
    object Label4: TLabel
      Left = 219
      Top = 46
      Width = 48
      Height = 13
      Caption = #51228#54408#51333#47448
    end
    object Edit1: TEdit
      Left = 76
      Top = 22
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 77
      Top = 46
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 275
      Top = 21
      Width = 186
      Height = 21
      Date = 40571.640039594910000000
      Time = 40571.640039594910000000
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 276
      Top = 46
      Width = 187
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
      Text = #51228#54408#51333#47448
      OnEnter = ComboBox1Enter
    end
    object Button1: TButton
      Left = 276
      Top = 86
      Width = 75
      Height = 25
      Caption = #46321#47197
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 276
      Top = 111
      Width = 75
      Height = 25
      Caption = #49688#51221
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 351
      Top = 86
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 160
    Width = 451
    Height = 144
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 472
      Height = 142
      Align = alClient
      DataSource = dm.SalseQuerySource
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
  object SQLStoredProc1: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'S_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'S_MONEY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'S_DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'C_CODE'
        ParamType = ptInput
      end>
    SQLConnection = dm.SQLConnection1
    StoredProcName = 'INSERT_SALES'
    Left = 30
    Top = 74
  end
end
