object Vendors: TVendors
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 451
    Height = 199
    Align = alClient
    DataSource = dm.VendorsSource
    ImeName = 'Microsoft Office IME 2007'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 105
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 1
    object Label1: TLabel
      Left = 23
      Top = 14
      Width = 48
      Height = 13
      Caption = #50629#52404#53076#46300
    end
    object Label2: TLabel
      Left = 23
      Top = 31
      Width = 36
      Height = 13
      Caption = #50629#52404#47749
    end
    object Label3: TLabel
      Left = 23
      Top = 50
      Width = 72
      Height = 13
      Caption = #50629#52404#51204#54868#48264#54840
    end
    object Label4: TLabel
      Left = 23
      Top = 70
      Width = 60
      Height = 13
      Caption = #45812#45817#51088#51060#47492
    end
    object Button1: TButton
      Left = 297
      Top = 16
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 137
      Top = 75
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 136
      Top = 52
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 136
      Top = 29
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 137
      Top = 6
      Width = 121
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 4
    end
    object Button2: TButton
      Left = 297
      Top = 41
      Width = 75
      Height = 25
      Caption = #49688#51221
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 297
      Top = 66
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object SQLStoredProc1: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'V_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 10
        Name = 'V_BIZNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 13
        Name = 'V_TELNUMBER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 15
        Name = 'V_NAME'
        ParamType = ptInput
      end>
    SQLConnection = dm.SQLConnection1
    StoredProcName = 'INSERT_VENDORS'
    Left = 401
    Top = 28
  end
end
