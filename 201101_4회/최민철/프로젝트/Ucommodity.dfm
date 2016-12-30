object Commodity: TCommodity
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      AlignWithMargins = True
      Caption = #51116#44256#51312#54924
      object Panel1: TPanel
        Left = 0
        Top = 56
        Width = 437
        Height = 214
        Align = alClient
        AutoSize = True
        Caption = 'Panel1'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 435
          Height = 212
          Align = alClient
          DataSource = dm.PurchaseSource
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
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 437
        Height = 56
        Align = alTop
        BorderStyle = bsSingle
        TabOrder = 1
        object ComboBox2: TComboBox
          Left = 3
          Top = 4
          Width = 147
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 0
          Text = #51333#47448#48324#51312#54924
          OnChange = ComboBox2Change
          OnEnter = ComboBox2Enter
          Items.Strings = (
            #51333#47448#48324#51312#54924)
        end
        object ComboBox3: TComboBox
          Left = 5
          Top = 25
          Width = 145
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          ItemIndex = 0
          TabOrder = 1
          Text = #50629#52404#48324#51312#54924
          OnChange = ComboBox3Change
          OnEnter = ComboBox3Enter
          Items.Strings = (
            #50629#52404#48324#51312#54924)
        end
        object Button4: TButton
          Left = 283
          Top = 0
          Width = 75
          Height = 52
          Caption = #49688#51221
          TabOrder = 2
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 358
          Top = 1
          Width = 75
          Height = 52
          Caption = #51204#52404#51312#54924
          TabOrder = 3
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 208
          Top = 0
          Width = 75
          Height = 52
          Caption = #49325#51228
          TabOrder = 4
          OnClick = Button6Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #51116#44256#51077#47141'/'#49325#51228
      ImageIndex = 1
      OnShow = TabSheet2Show
      object InputGrid: TStringGrid
        Left = 0
        Top = 198
        Width = 443
        Height = 78
        Align = alClient
        Color = clWhite
        ColCount = 6
        Ctl3D = True
        DoubleBuffered = False
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        TabOrder = 0
        OnDrawCell = InputGridDrawCell
        ColWidths = (
          64
          64
          64
          64
          64
          64)
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 198
        Align = alTop
        BorderStyle = bsSingle
        TabOrder = 1
        object Label2: TLabel
          Left = 10
          Top = 34
          Width = 48
          Height = 13
          Caption = #47932#54408#53076#46300
        end
        object Label3: TLabel
          Left = 11
          Top = 60
          Width = 48
          Height = 13
          Caption = #47588#51077#50896#44032
        end
        object Label4: TLabel
          Left = 13
          Top = 109
          Width = 48
          Height = 13
          Caption = #47588#51077#51068#51088
        end
        object Label5: TLabel
          Left = 11
          Top = 130
          Width = 48
          Height = 13
          Caption = #50629#52404#53076#46300
        end
        object Label7: TLabel
          Left = 10
          Top = 85
          Width = 67
          Height = 13
          Caption = #47588#51077#45800#50948'(kg)'
        end
        object ComboBox1: TComboBox
          Left = 78
          Top = 32
          Width = 187
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 0
          Text = #47932#54408#53076#46300
          OnEnter = ComboBox1Enter
        end
        object Edit3: TEdit
          Left = 77
          Top = 58
          Width = 186
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 1
        end
        object ComboBox4: TComboBox
          Left = 79
          Top = 135
          Width = 186
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 2
          Text = #50629#52404#53076#46300
          OnEnter = ComboBox4Enter
        end
        object Button3: TButton
          Left = 342
          Top = 93
          Width = 75
          Height = 25
          Caption = #52712#49548
          TabOrder = 3
          OnClick = Button3Click
        end
        object Button2: TButton
          Left = 344
          Top = 59
          Width = 75
          Height = 25
          Caption = #51200#51109
          TabOrder = 4
          OnClick = Button2Click
        end
        object Button1: TButton
          Left = 345
          Top = 27
          Width = 75
          Height = 25
          Caption = #51077#47141
          TabOrder = 5
          OnClick = Button1Click
        end
        object Edit2: TEdit
          Left = 78
          Top = 83
          Width = 185
          Height = 21
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 6
        end
        object DateTimePicker1: TDateTimePicker
          Left = 78
          Top = 109
          Width = 187
          Height = 21
          Date = 40573.717751006950000000
          Time = 40573.717751006950000000
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 7
        end
      end
    end
  end
  object SimpleDataSet1: TSimpleDataSet
    Aggregates = <>
    DataSet.DataSource = dm.VendorsSource
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 387
    Top = 169
  end
end
