object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 402
  ClientWidth = 598
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
    Left = 4
    Top = 40
    Width = 594
    Height = 343
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #49324#50896
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 586
        Height = 315
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = #51312#54924
          object Grid_Emp: TDBGrid
            Left = 0
            Top = 0
            Width = 578
            Height = 287
            Align = alClient
            DataSource = DM.Data_Emp
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
                FieldName = 'E_NAME'
                Title.Caption = #49324#50896#47749
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_PHONE'
                Title.Caption = #51204#54868#48264#54840
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_TEAM'
                Title.Caption = #49548#49549#54016#47749
                Width = 100
                Visible = True
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = #54200#51665
          ImageIndex = 1
          object LB_Name: TLabel
            Left = 152
            Top = 40
            Width = 36
            Height = 13
            Caption = #49324#50896#47749
          end
          object LB_Phone: TLabel
            Left = 152
            Top = 88
            Width = 48
            Height = 13
            Caption = #51204#54868#48264#54840
          end
          object LB_E_Team: TLabel
            Left = 152
            Top = 136
            Width = 36
            Height = 13
            Caption = #49548#49549#54016
          end
          object ComboBox_Team: TDBLookupComboBox
            Left = 288
            Top = 136
            Width = 145
            Height = 21
            DataField = 'E_TEAM'
            DataSource = DM.Data_Emp
            KeyField = 'P_TEAM'
            ListField = 'P_TEAM'
            ListSource = DM.Data_Part
            TabOrder = 0
          end
          object Edit_Name: TDBEdit
            Left = 288
            Top = 37
            Width = 121
            Height = 21
            DataField = 'E_NAME'
            DataSource = DM.Data_Emp
            TabOrder = 1
          end
          object Btn_E_Insert: TButton
            Left = 40
            Top = 240
            Width = 75
            Height = 33
            Caption = #52628#44032
            TabOrder = 2
            OnClick = Btn_E_InsertClick
          end
          object Btn_E_Post: TButton
            Left = 184
            Top = 240
            Width = 75
            Height = 33
            Caption = #51077#47141'/'#49688#51221
            TabOrder = 3
            OnClick = Btn_E_PostClick
          end
          object Btn_E_Delete: TButton
            Left = 334
            Top = 240
            Width = 75
            Height = 33
            Caption = #49325#51228
            TabOrder = 4
            OnClick = Btn_E_DeleteClick
          end
          object Btn_E_Cancel: TButton
            Left = 463
            Top = 240
            Width = 75
            Height = 33
            Caption = #52712#49548
            TabOrder = 5
            OnClick = Btn_E_CancelClick
          end
          object Edit_Phone: TDBEdit
            Left = 288
            Top = 88
            Width = 121
            Height = 21
            DataField = 'E_PHONE'
            DataSource = DM.Data_Emp
            TabOrder = 6
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #48512#49436
      ImageIndex = 1
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 586
        Height = 315
        ActivePage = TabSheet9
        Align = alClient
        TabOrder = 0
        object TabSheet8: TTabSheet
          Caption = #51312#51649#46020
          object TreeView_Part: TTreeView
            Left = 0
            Top = 0
            Width = 281
            Height = 287
            Align = alLeft
            Indent = 19
            TabOrder = 0
            OnClick = TreeView_PartClick
          end
          object ListView_Part: TListView
            Left = 287
            Top = 0
            Width = 291
            Height = 287
            Align = alRight
            Columns = <
              item
                Caption = #51060#47492
              end
              item
                Caption = #54648#46300#54256#48264#54840
                Width = 100
              end>
            Items.ItemData = {
              051A0000000100000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
              0000}
            TabOrder = 1
            ViewStyle = vsReport
          end
        end
        object TabSheet9: TTabSheet
          Caption = #54200#51665
          ImageIndex = 1
          object LB_part: TLabel
            Left = 264
            Top = 76
            Width = 36
            Height = 13
            Caption = #48512#49436#47749
          end
          object LB_Team: TLabel
            Left = 264
            Top = 132
            Width = 54
            Height = 13
            Caption = #49548#49549' '#54016' '#47749
          end
          object Edit_Part: TDBEdit
            Left = 400
            Top = 73
            Width = 121
            Height = 21
            DataField = 'P_NAME'
            DataSource = DM.Data_Part
            TabOrder = 0
          end
          object Edit_Team: TDBEdit
            Left = 400
            Top = 129
            Width = 121
            Height = 21
            DataField = 'P_TEAM'
            DataSource = DM.Data_Part
            TabOrder = 1
          end
          object Btn_Pa_Insert: TButton
            Left = 40
            Top = 240
            Width = 75
            Height = 25
            Caption = #52628#44032
            TabOrder = 2
            OnClick = Btn_Pa_InsertClick
          end
          object Btn_Pa_Post: TButton
            Left = 184
            Top = 240
            Width = 75
            Height = 25
            Caption = #51077#47141'/'#49688#51221
            TabOrder = 3
            OnClick = Btn_Pa_PostClick
          end
          object Btn_Pa_Delete: TButton
            Left = 326
            Top = 240
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 4
            OnClick = Btn_Pa_DeleteClick
          end
          object Btn_Pa_Calcel: TButton
            Left = 463
            Top = 240
            Width = 75
            Height = 25
            Caption = #52712#49548
            TabOrder = 5
            OnClick = Btn_Pa_CalcelClick
          end
          object Grid_PART: TDBGrid
            Left = -2
            Top = 0
            Width = 251
            Height = 225
            DataSource = DM.Data_Part
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'P_NAME'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P_TEAM'
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #54532#47196#51229#53944
      ImageIndex = 2
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 586
        Height = 315
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        object TabSheet6: TTabSheet
          Caption = #51312#54924
          object Grid_Project: TDBGrid
            Left = 0
            Top = 0
            Width = 578
            Height = 162
            Align = alTop
            DataSource = DM.Data_Project
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
                FieldName = 'P_NAME'
                Title.Caption = #54532#47196#51229#53944#47749
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P_TERM_START'
                Title.Caption = #44592#44036'_'#49884#51089
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P_TERM_FIN'
                Title.Caption = #44592#44036'_'#51333#47308
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P_MANAGER'
                Title.Caption = #44288#47532#51088
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P_NUMBER'
                Title.Caption = #51064#50896
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'P_STATE'
                Title.Caption = #49345#53468
                Width = 100
                Visible = True
              end>
          end
          object Grid_P_List: TDBGrid
            Left = 0
            Top = 160
            Width = 578
            Height = 127
            Align = alBottom
            DataSource = DM.Data_P_List
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'P_NAME'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'E_NAME'
                Width = 100
                Visible = True
              end>
          end
        end
        object TabSheet7: TTabSheet
          Caption = #54200#51665
          ImageIndex = 1
          object LB_P_Name1: TLabel
            Left = 152
            Top = 35
            Width = 60
            Height = 13
            Caption = #54532#47196#51229#53944#47749
          end
          object LB_Term: TLabel
            Left = 152
            Top = 72
            Width = 24
            Height = 13
            Caption = #44592#44036
          end
          object LB_Manager: TLabel
            Left = 152
            Top = 152
            Width = 48
            Height = 13
            Caption = #44288#47532#51088#47749
          end
          object LB_State: TLabel
            Left = 152
            Top = 192
            Width = 48
            Height = 13
            Caption = #51652#54665#49345#53468
          end
          object ComboBox_manager: TDBLookupComboBox
            Left = 288
            Top = 152
            Width = 145
            Height = 21
            DataField = 'P_MANAGER'
            DataSource = DM.Data_Project
            KeyField = 'E_NAME'
            ListField = 'E_NAME'
            ListSource = DM.Data_Emp
            TabOrder = 0
          end
          object Edit_Project: TDBEdit
            Left = 288
            Top = 32
            Width = 121
            Height = 21
            DataField = 'P_NAME'
            DataSource = DM.Data_Project
            TabOrder = 1
          end
          object Btn_Pr_Insert: TButton
            Left = 48
            Top = 240
            Width = 75
            Height = 25
            Caption = #52628#44032
            TabOrder = 2
            OnClick = Btn_Pr_InsertClick
          end
          object Btn_Pr_Post: TButton
            Left = 184
            Top = 240
            Width = 75
            Height = 25
            Caption = #51077#47141'/'#49688#51221
            TabOrder = 3
            OnClick = Btn_Pr_PostClick
          end
          object Btn_Pr_Delete: TButton
            Left = 334
            Top = 240
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 4
            OnClick = Btn_Pr_DeleteClick
          end
          object Btn_Pr_Cancel: TButton
            Left = 463
            Top = 240
            Width = 75
            Height = 25
            Caption = #52712#49548
            TabOrder = 5
            OnClick = Btn_Pr_CancelClick
          end
          object ComboBox_State: TDBComboBox
            Left = 288
            Top = 192
            Width = 145
            Height = 21
            DataField = 'P_STATE'
            DataSource = DM.Data_Project
            Items.Strings = (
              #45824#44592
              #51652#54665#51473
              #51333#47308)
            TabOrder = 6
          end
          object Date_start: TDateTimePicker
            Left = 288
            Top = 72
            Width = 121
            Height = 21
            Date = 42384.000000000000000000
            Time = 42384.000000000000000000
            TabOrder = 7
          end
          object Date_finish: TDateTimePicker
            Left = 288
            Top = 112
            Width = 121
            Height = 21
            Date = 42399.000000000000000000
            Time = 42399.000000000000000000
            TabOrder = 8
          end
        end
        object TabSheet10: TTabSheet
          Caption = #54532#47196#51229#53944' '#51064#50896' '#54200#51665
          ImageIndex = 2
          object LB_P_Name2: TLabel
            Left = 112
            Top = 51
            Width = 60
            Height = 13
            Caption = #54532#47196#51229#53944#47749
          end
          object LB_E_Name2: TLabel
            Left = 112
            Top = 107
            Width = 36
            Height = 13
            Caption = #49324#50896#47749
          end
          object ComboBox_P_Name: TDBLookupComboBox
            Left = 280
            Top = 51
            Width = 145
            Height = 21
            DataField = 'P_NAME'
            DataSource = DM.Data_P_List
            KeyField = 'P_NAME'
            ListField = 'P_NAME'
            ListSource = DM.Data_Project
            TabOrder = 0
          end
          object ComboBox_EMP_Name: TDBLookupComboBox
            Left = 280
            Top = 107
            Width = 145
            Height = 21
            DataField = 'E_NAME'
            DataSource = DM.Data_P_List
            KeyField = 'E_NAME'
            ListField = 'E_NAME'
            ListSource = DM.Data_Emp
            TabOrder = 1
          end
          object Btn_PL_Insert: TButton
            Left = 48
            Top = 248
            Width = 75
            Height = 25
            Caption = #52628#44032
            TabOrder = 2
            OnClick = Btn_PL_InsertClick
          end
          object Btn_PL_Post: TButton
            Left = 184
            Top = 248
            Width = 75
            Height = 25
            Caption = #51077#47141'/'#49688#51221
            TabOrder = 3
            OnClick = Btn_PL_PostClick
          end
          object Btn_PL_Delete: TButton
            Left = 334
            Top = 248
            Width = 75
            Height = 25
            Caption = #49325#51228
            TabOrder = 4
            OnClick = Btn_PL_DeleteClick
          end
          object Btn_PL_Cancel: TButton
            Left = 463
            Top = 248
            Width = 75
            Height = 25
            Caption = #52712#49548
            TabOrder = 5
            OnClick = Btn_PL_CancelClick
          end
        end
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.Project
    ScopeMappings = <>
    Left = 96
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'P_TERM_START'
      Control = Date_start
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'P_TERM_FIN'
      Control = Date_finish
      Track = True
    end
  end
end
