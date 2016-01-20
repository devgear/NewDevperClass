object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #53685#54633' '#44288#47532' '#54532#47196#44536#47016
  ClientHeight = 566
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 566
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #51064#49324' '#44288#47532
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 627
        Height = 538
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = #46321#47197
          object Label1: TLabel
            Left = 38
            Top = 56
            Width = 29
            Height = 13
            Caption = #51060#47492' :'
          end
          object Label2: TLabel
            Left = 16
            Top = 96
            Width = 51
            Height = 13
            Caption = #51204#54868#48264#54840' :'
          end
          object Label4: TLabel
            Left = 24
            Top = 175
            Width = 43
            Height = 13
            Caption = #49548#49549' '#54016' :'
          end
          object Label5: TLabel
            Left = 16
            Top = 16
            Width = 51
            Height = 13
            Caption = #49324#50896#48264#54840' :'
          end
          object Label3: TLabel
            Left = 38
            Top = 139
            Width = 29
            Height = 13
            Caption = #48512#49436' :'
          end
          object Button3: TButton
            Left = 360
            Top = 57
            Width = 75
            Height = 25
            Caption = #52628#44032
            TabOrder = 0
            OnClick = Button3Click
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 80
            Top = 175
            Width = 145
            Height = 21
            DataField = 'EMP_TEAM'
            DataSource = DM.empSource
            KeyField = 'PART_TEAM'
            ListField = 'PART_TEAM'
            ListSource = DM.partSource
            TabOrder = 1
          end
          object Button1: TButton
            Left = 360
            Top = 88
            Width = 75
            Height = 25
            Caption = #46321#47197'/'#49688#51221
            TabOrder = 2
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 360
            Top = 119
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 3
            OnClick = Button2Click
          end
          object Button13: TButton
            Left = 360
            Top = 150
            Width = 75
            Height = 25
            Caption = #52712#49548
            TabOrder = 4
            OnClick = Button13Click
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 232
            Width = 619
            Height = 278
            Align = alBottom
            DataSource = DM.empSource
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object DBEdit4: TDBEdit
            Left = 80
            Top = 53
            Width = 121
            Height = 21
            DataField = 'EMP_NAME'
            DataSource = DM.empSource
            TabOrder = 6
          end
          object DBEdit5: TDBEdit
            Left = 80
            Top = 93
            Width = 121
            Height = 21
            DataField = 'EMP_PHONE'
            DataSource = DM.empSource
            TabOrder = 7
          end
          object DBEdit6: TDBEdit
            Left = 80
            Top = 13
            Width = 121
            Height = 21
            DataField = 'EMP_NO'
            DataSource = DM.empSource
            TabOrder = 8
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 80
            Top = 131
            Width = 145
            Height = 21
            DataField = 'EMP_PART'
            DataSource = DM.empSource
            KeyField = 'PART_NAME'
            ListField = 'PART_NAME'
            ListSource = DM.partSource
            TabOrder = 9
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #48512#49436' '#44288#47532
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 627
        Height = 538
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        object TabSheet6: TTabSheet
          Caption = #46321#47197
          object Label9: TLabel
            Left = 24
            Top = 59
            Width = 43
            Height = 13
            Caption = #48512#49436' '#47749' :'
          end
          object Label10: TLabel
            Left = 35
            Top = 99
            Width = 32
            Height = 13
            Caption = #54016' '#47749' :'
          end
          object Label22: TLabel
            Left = 13
            Top = 19
            Width = 54
            Height = 13
            Caption = #48512#49436' '#48264#54840' :'
          end
          object Button8: TButton
            Left = 357
            Top = 94
            Width = 75
            Height = 25
            Caption = #46321#47197'/'#49688#51221
            TabOrder = 0
            OnClick = Button8Click
          end
          object DBEdit1: TDBEdit
            Left = 80
            Top = 56
            Width = 121
            Height = 21
            DataField = 'PART_NAME'
            DataSource = DM.partSource
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 80
            Top = 16
            Width = 121
            Height = 21
            DataField = 'PART_NO'
            DataSource = DM.partSource
            TabOrder = 2
          end
          object DBEdit2: TDBEdit
            Left = 80
            Top = 96
            Width = 121
            Height = 21
            DataField = 'PART_TEAM'
            DataSource = DM.partSource
            TabOrder = 3
          end
          object Button10: TButton
            Left = 357
            Top = 63
            Width = 75
            Height = 25
            Caption = #52628#44032
            TabOrder = 4
            OnClick = Button10Click
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 232
            Width = 619
            Height = 278
            Align = alBottom
            DataSource = DM.partSource
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object Button12: TButton
            Left = 357
            Top = 125
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 6
            OnClick = Button12Click
          end
          object Button11: TButton
            Left = 357
            Top = 156
            Width = 75
            Height = 25
            Caption = #52712#49548
            TabOrder = 7
            OnClick = Button11Click
          end
        end
        object TabSheet7: TTabSheet
          Caption = #51312#51649#46020
          ImageIndex = 1
          object TreeView1: TTreeView
            Left = 0
            Top = 0
            Width = 161
            Height = 510
            Align = alLeft
            Indent = 19
            TabOrder = 0
            OnClick = TreeView1Click
          end
          object ListView1: TListView
            Left = 161
            Top = 0
            Width = 458
            Height = 510
            Align = alClient
            Columns = <
              item
                Caption = #49324#50896#48264#54840
              end
              item
                Caption = #51060#47492
              end
              item
                Caption = #51204#54868#48264#54840
              end
              item
                Caption = #48512#49436
              end
              item
                Caption = #54016
              end>
            TabOrder = 1
            ViewStyle = vsReport
          end
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = #54532#47196#51229#53944' '#44288#47532
      ImageIndex = 2
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 627
        Height = 538
        ActivePage = TabSheet10
        Align = alClient
        TabOrder = 0
        object TabSheet10: TTabSheet
          Caption = #46321#47197
          object Label13: TLabel
            Left = 16
            Top = 22
            Width = 76
            Height = 13
            Caption = #54532#47196#51229#53944' '#48264#54840' :'
          end
          object Label14: TLabel
            Left = 16
            Top = 57
            Width = 76
            Height = 13
            Caption = #54532#47196#51229#53944' '#51060#47492' :'
          end
          object Label16: TLabel
            Left = 16
            Top = 99
            Width = 76
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #54532#47196#51229#53944' '#44592#44036' :'
            ParentBiDiMode = False
          end
          object Label17: TLabel
            Left = 5
            Top = 140
            Width = 87
            Height = 13
            Caption = #54532#47196#51229#53944' '#47588#45768#51200' :'
          end
          object Label8: TLabel
            Left = 211
            Top = 99
            Width = 8
            Height = 13
            Caption = '~'
          end
          object Label11: TLabel
            Left = 38
            Top = 179
            Width = 54
            Height = 13
            Caption = #51652#54665' '#49345#53468' :'
          end
          object Label12: TLabel
            Left = 24
            Top = 214
            Width = 68
            Height = 13
            Caption = #52280#50668' '#51064#50896' '#49688' :'
          end
          object Label15: TLabel
            Left = 98
            Top = 214
            Width = 20
            Height = 13
            Caption = '0 '#47749
          end
          object Button9: TButton
            Left = 360
            Top = 96
            Width = 75
            Height = 25
            Caption = #46321#47197'/'#49688#51221
            TabOrder = 0
            OnClick = Button9Click
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 98
            Top = 140
            Width = 145
            Height = 21
            DataField = 'PRO_MNG'
            DataSource = DM.proSource
            KeyField = 'EMP_NAME'
            ListField = 'EMP_NAME'
            ListSource = DM.empSource
            TabOrder = 1
          end
          object DBGrid3: TDBGrid
            Left = 0
            Top = 248
            Width = 619
            Height = 262
            Align = alBottom
            DataSource = DM.proSource
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnMouseUp = DBGrid3MouseUp
          end
          object Button4: TButton
            Left = 360
            Top = 65
            Width = 75
            Height = 25
            Caption = #52628#44032
            TabOrder = 3
            OnClick = Button4Click
          end
          object Button5: TButton
            Left = 360
            Top = 127
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 4
            OnClick = Button5Click
          end
          object Button6: TButton
            Left = 360
            Top = 158
            Width = 75
            Height = 25
            Caption = #52712#49548
            TabOrder = 5
            OnClick = Button6Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 98
            Top = 99
            Width = 103
            Height = 21
            Date = 42394.000000000000000000
            Time = 42394.000000000000000000
            ImeMode = imSHanguel
            TabOrder = 6
          end
          object DateTimePicker2: TDateTimePicker
            Left = 225
            Top = 99
            Width = 104
            Height = 21
            Date = 42395.000000000000000000
            Time = 42395.000000000000000000
            TabOrder = 7
          end
          object DBComboBox1: TDBComboBox
            Left = 98
            Top = 176
            Width = 145
            Height = 21
            Hint = #49345#53468' '#49440#53469
            DataField = 'PRO_STAT'
            DataSource = DM.proSource
            Items.Strings = (
              #45824#44592
              #51652#54665#51473
              #50756#47308)
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
          end
          object DBEdit7: TDBEdit
            Left = 98
            Top = 19
            Width = 121
            Height = 21
            DataField = 'PRO_NO'
            DataSource = DM.proSource
            TabOrder = 9
          end
          object DBEdit8: TDBEdit
            Left = 98
            Top = 54
            Width = 121
            Height = 21
            DataField = 'PRO_NAME'
            DataSource = DM.proSource
            TabOrder = 10
          end
        end
        object TabSheet5: TTabSheet
          Caption = #44288#47532
          ImageIndex = 1
          object Label6: TLabel
            Left = 40
            Top = 51
            Width = 76
            Height = 13
            Caption = #54532#47196#51229#53944' '#48264#54840' :'
          end
          object Label7: TLabel
            Left = 62
            Top = 89
            Width = 54
            Height = 13
            Caption = #52628#44032' '#49324#50896' :'
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 122
            Top = 89
            Width = 103
            Height = 21
            DataField = 'EMPLOYEE_NAME'
            DataSource = DM.proEmpSource
            KeyField = 'EMP_NAME'
            ListField = 'EMP_NAME'
            ListSource = DM.empSource
            TabOrder = 0
          end
          object Button7: TButton
            Left = 360
            Top = 97
            Width = 75
            Height = 25
            Caption = #46321#47197'/'#49688#51221
            TabOrder = 1
            OnClick = Button7Click
          end
          object Button14: TButton
            Left = 360
            Top = 128
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 2
            OnClick = Button14Click
          end
          object Button15: TButton
            Left = 360
            Top = 66
            Width = 75
            Height = 25
            Caption = #52628#44032
            TabOrder = 3
            OnClick = Button15Click
          end
          object Button16: TButton
            Left = 360
            Top = 159
            Width = 75
            Height = 25
            Caption = #52712#49548
            TabOrder = 4
            OnClick = Button16Click
          end
          object DBGrid4: TDBGrid
            Left = 0
            Top = 232
            Width = 619
            Height = 278
            Align = alBottom
            DataSource = DM.proEmpSource
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 122
            Top = 51
            Width = 103
            Height = 21
            DataField = 'PROJECT_NO'
            DataSource = DM.proEmpSource
            KeyField = 'PRO_NO'
            ListField = 'PRO_NO'
            ListSource = DM.proSource
            TabOrder = 6
          end
        end
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.project
    ScopeMappings = <>
    Left = 536
    Top = 200
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 540
    Top = 141
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PRO_START'
      Control = DateTimePicker1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PRO_END'
      Control = DateTimePicker2
      Track = True
    end
  end
end
