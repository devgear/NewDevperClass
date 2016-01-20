object ProjectForm: TProjectForm
  Left = 0
  Top = 0
  Caption = #54532#47196#51229#53944#44288#47532
  ClientHeight = 465
  ClientWidth = 1103
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
    Left = 20
    Top = 9
    Width = 569
    Height = 241
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #54532#47196#51229#53944
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 561
        Height = 213
        Align = alClient
        DataSource = DM.ProjectSource
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
            FieldName = 'P_MANAGER'
            Title.Caption = #47588#45768#51200
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_DATESTART'
            Title.Caption = #49884#51089#51068
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_DATEEND'
            Title.Caption = #51333#47308#51068
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P_PROGRESS'
            Title.Caption = #51652#54665#47456
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #54532#47196#51229#53944#44288#47532
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object lb_Pname: TLabel
        Left = 11
        Top = 27
        Width = 55
        Height = 13
        Caption = #54532#47196#51229#53944#47749
      end
      object Label1: TLabel
        Left = 11
        Top = 59
        Width = 33
        Height = 13
        Caption = #47588#45768#51200
      end
      object Label2: TLabel
        Left = 11
        Top = 86
        Width = 33
        Height = 13
        Caption = #49884#51089#51068
      end
      object Label3: TLabel
        Left = 11
        Top = 113
        Width = 33
        Height = 13
        Caption = #51333#47308#51068
      end
      object Label4: TLabel
        Left = 11
        Top = 140
        Width = 33
        Height = 13
        Caption = #51652#54665#46020
      end
      object Label5: TLabel
        Left = 413
        Top = 101
        Width = 48
        Height = 13
        Caption = 'Label5'
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 24
        Width = 121
        Height = 21
        DataField = 'P_NAME'
        DataSource = DM.ProjectSource
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 80
        Top = 51
        Width = 121
        Height = 21
        DataField = 'P_MANAGER'
        DataSource = DM.ProjectSource
        KeyField = 'E_NAME'
        ListField = 'E_NAME'
        ListSource = DM.EmployeeSource
        TabOrder = 1
      end
      object DateTimePicker1: TDateTimePicker
        Left = 80
        Top = 78
        Width = 121
        Height = 21
        Date = 41255.000000000000000000
        Time = 41255.000000000000000000
        TabOrder = 2
      end
      object DateTimePicker2: TDateTimePicker
        Left = 80
        Top = 105
        Width = 121
        Height = 21
        Date = 41264.000000000000000000
        Time = 41264.000000000000000000
        TabOrder = 3
      end
      object DBComboBox1: TDBComboBox
        Left = 80
        Top = 132
        Width = 121
        Height = 21
        DataField = 'P_PROGRESS'
        DataSource = DM.ProjectSource
        Items.Strings = (
          '0'
          '10'
          '20'
          '30'
          '40'
          '50'
          '60'
          '70'
          '80'
          '90'
          '100')
        TabOrder = 4
      end
      object Bt_Post: TButton
        Left = 395
        Top = 73
        Width = 81
        Height = 41
        Caption = 'Post'
        TabOrder = 5
        OnClick = Bt_PostClick
      end
      object Bt_Insert: TButton
        Left = 291
        Top = 27
        Width = 81
        Height = 41
        Caption = 'Insert'
        TabOrder = 6
        OnClick = Bt_InsertClick
      end
      object Bt_Delete: TButton
        Left = 395
        Top = 26
        Width = 81
        Height = 41
        Caption = 'Delete'
        TabOrder = 7
        OnClick = Bt_DeleteClick
      end
      object Bt_CanCel: TButton
        Left = 291
        Top = 74
        Width = 81
        Height = 41
        Caption = 'Cencel'
        TabOrder = 8
        OnClick = Bt_CanCelClick
      end
      object Button1: TButton
        Left = 306
        Top = 130
        Width = 30
        Height = 25
        Caption = '<<-'
        TabOrder = 9
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 342
        Top = 130
        Width = 30
        Height = 25
        Caption = '<-'
        TabOrder = 10
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 395
        Top = 130
        Width = 30
        Height = 25
        Caption = '->'
        TabOrder = 11
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 431
        Top = 130
        Width = 30
        Height = 25
        Caption = '->>'
        TabOrder = 12
        OnClick = Button4Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #51064#50896#49688
      ImageIndex = 2
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 561
        Height = 213
        Align = alClient
        ColCount = 2
        DrawingStyle = gdsClassic
        TabOrder = 0
        OnDrawCell = StringGrid1DrawCell
      end
    end
  end
  object PageControl2: TPageControl
    Left = 20
    Top = 256
    Width = 569
    Height = 193
    ActivePage = TabSheet4
    TabOrder = 1
    object TabSheet4: TTabSheet
      Caption = #54532#47196#51229#53944#52280#50668#51088
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 561
        Height = 165
        Align = alClient
        DataSource = DM.SubPMSource
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
            FieldName = 'PM_NAME'
            Title.Caption = #54532#47196#51229#53944#47749
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PM_MEMBER'
            Title.Caption = #51060#47492
            Width = 120
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #52280#50668#51088#44288#47532
      ImageIndex = 1
      object lb_PMname: TLabel
        Left = 24
        Top = 32
        Width = 55
        Height = 13
        Caption = #54532#47196#51229#53944#47749
      end
      object lb_Pmmember: TLabel
        Left = 24
        Top = 72
        Width = 22
        Height = 13
        Caption = #51060#47492
      end
      object Btn_PMinsert: TButton
        Left = 291
        Top = 27
        Width = 81
        Height = 41
        Caption = 'Insert'
        TabOrder = 0
        OnClick = Btn_PMinsertClick
      end
      object btn_PMDelete: TButton
        Left = 395
        Top = 26
        Width = 81
        Height = 41
        Caption = 'Delete'
        TabOrder = 1
        OnClick = btn_PMDeleteClick
      end
      object Btn_PMPost: TButton
        Left = 395
        Top = 73
        Width = 81
        Height = 41
        Caption = 'Post'
        TabOrder = 2
        OnClick = Btn_PMPostClick
      end
      object Btn_PMCencel: TButton
        Left = 291
        Top = 74
        Width = 81
        Height = 41
        Caption = 'Cencel'
        TabOrder = 3
        OnClick = Btn_PMCencelClick
      end
      object Edit1: TEdit
        Left = 96
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '1'
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 72
        Width = 121
        Height = 21
        DataField = 'PM_MEMBER'
        DataSource = DM.SubPMSource
        TabOrder = 5
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.Project
    ScopeMappings = <>
    Left = 232
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'P_DATESTART'
      Control = DateTimePicker1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'P_DATEEND'
      Control = DateTimePicker2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'P_NAME'
      Control = Edit1
      Track = True
    end
  end
end
