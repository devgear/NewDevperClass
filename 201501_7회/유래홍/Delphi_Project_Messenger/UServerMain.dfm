object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 505
  ClientWidth = 842
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 486
    Width = 842
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 842
    Height = 486
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #51217#49549#54788#54889
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 51
        Height = 13
        Caption = #51217#49549' '#47785#47197
      end
      object Label2: TLabel
        Left = 255
        Top = 16
        Width = 51
        Height = 13
        Caption = #51217#49549' '#47196#44536
      end
      object Memo1: TMemo
        Left = 242
        Top = 35
        Width = 589
        Height = 358
        TabOrder = 0
      end
      object Button1: TButton
        Left = 736
        Top = 426
        Width = 75
        Height = 25
        Caption = #51204#52404' '#48169#49569
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 130
        Top = 426
        Width = 90
        Height = 23
        Caption = #49440#53469' '#48169#49569
        TabOrder = 2
        OnClick = Button2Click
      end
      object Edit1: TEdit
        Left = 255
        Top = 428
        Width = 475
        Height = 21
        TabOrder = 3
      end
      object Button3: TButton
        Left = 161
        Top = 4
        Width = 75
        Height = 25
        Caption = #49352#47196#44256#52840
        TabOrder = 4
        OnClick = Button3Click
      end
      object Edit2: TEdit
        Left = 3
        Top = 426
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'MessageChannel'
      end
      object Button4: TButton
        Left = 312
        Top = 4
        Width = 75
        Height = 25
        Caption = 'test'
        TabOrder = 6
        Visible = False
        OnClick = Button4Click
      end
      object Edit4: TEdit
        Left = 99
        Top = 399
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object Edit3: TEdit
        Left = 4
        Top = 399
        Width = 89
        Height = 21
        TabOrder = 8
      end
      object ListView1: TListView
        Left = 4
        Top = 35
        Width = 232
        Height = 358
        Columns = <
          item
            Caption = #50976#51200'ID'
            Width = 80
          end
          item
            Caption = #53084#48177'ID'
            Width = 150
          end>
        TabOrder = 9
        ViewStyle = vsReport
        OnSelectItem = ListView1SelectItem
      end
    end
    object TabSheet2: TTabSheet
      Caption = #46356#48708#44288#47532
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 834
        Height = 458
        ActivePage = TabSheet6
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = 'm0010'
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 826
            Height = 297
            Align = alTop
            DataSource = ServerMethods1.DataSource_m0010
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object DBNavigator1: TDBNavigator
            Left = 8
            Top = 391
            Width = 312
            Height = 25
            DataSource = ServerMethods1.DataSource_m0010
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            TabOrder = 1
          end
          object DBImage1: TDBImage
            Left = 376
            Top = 303
            Width = 105
            Height = 105
            DataField = 'c004'
            DataSource = ServerMethods1.DataSource_m0010
            TabOrder = 2
          end
          object Button5: TButton
            Left = 544
            Top = 328
            Width = 97
            Height = 25
            Hint = 'Open Picture'
            Caption = #49324#51652' '#45347#44592
            TabOrder = 3
            OnClick = Button5Click
          end
          object Button6: TButton
            Left = 544
            Top = 359
            Width = 97
            Height = 25
            Caption = #49324#51652' '#51200#51109
            TabOrder = 4
            OnClick = Button6Click
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'm1010'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 826
            Height = 329
            Align = alTop
            DataSource = ServerMethods1.DataSource_m1010
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object DBNavigator2: TDBNavigator
            Left = 352
            Top = 412
            Width = 240
            Height = 25
            DataSource = ServerMethods1.DataSource_m1010
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            TabOrder = 1
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'm2010'
          ImageIndex = 2
          object DBNavigator3: TDBNavigator
            Left = 360
            Top = 417
            Width = 240
            Height = 25
            DataSource = ServerMethods1.DataSource_m2010
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            TabOrder = 0
          end
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 826
            Height = 393
            Align = alTop
            DataSource = ServerMethods1.DataSource_m2010
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'm3010'
          ImageIndex = 3
          object DBNavigator4: TDBNavigator
            Left = 368
            Top = 415
            Width = 240
            Height = 25
            DataSource = ServerMethods1.DataSource_m3010
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
            TabOrder = 0
          end
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 826
            Height = 377
            Align = alTop
            DataSource = ServerMethods1.DataSource_m3010
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 728
    Top = 384
    object DialogOpenPicture1: TOpenPicture
      Category = 'Dialog'
      Caption = '&Open Picture...'
      Hint = 'Open Picture'
      ShortCut = 16463
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = ServerMethods1.ClientDataSet_m0010
    ScopeMappings = <>
    Left = 416
    Top = 256
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 412
    Top = 117
  end
end
