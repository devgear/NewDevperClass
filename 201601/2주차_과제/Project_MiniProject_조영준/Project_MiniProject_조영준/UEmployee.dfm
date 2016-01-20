object EmployeeForm: TEmployeeForm
  Left = 0
  Top = 0
  Caption = #49324#50896#44288#47532
  ClientHeight = 461
  ClientWidth = 424
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
  object Lb_NameSeach: TLabel
    Left = 36
    Top = 32
    Width = 44
    Height = 13
    Caption = #44160#49353#51060#47492
  end
  object PageControl1: TPageControl
    Left = 32
    Top = 75
    Width = 361
    Height = 353
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #49324#50896#47785#47197
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 353
        Height = 325
        Align = alClient
        DataSource = DM.EmployeeSource
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
            FieldName = 'E_NAME'
            Title.Caption = #51060' '#47492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_PHONE'
            Title.Caption = #51204#54868#48264#54840
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_TEAM'
            Title.Caption = #54016
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #49324#50896#52628#44032','#49688#51221
      ImageIndex = 1
      object Lb_Name: TLabel
        Left = 19
        Top = 35
        Width = 22
        Height = 13
        Caption = #51060#47492
      end
      object Lb_Phone: TLabel
        Left = 19
        Top = 72
        Width = 44
        Height = 13
        Caption = #51204#54868#48264#54840
      end
      object Lb_Team: TLabel
        Left = 19
        Top = 104
        Width = 11
        Height = 13
        Caption = #54016
      end
      object Edt_name: TDBEdit
        Left = 72
        Top = 37
        Width = 121
        Height = 21
        DataField = 'E_NAME'
        DataSource = DM.EmployeeSource
        MaxLength = 5
        TabOrder = 0
      end
      object Edt_Phone: TDBEdit
        Left = 72
        Top = 64
        Width = 121
        Height = 21
        DataField = 'E_PHONE'
        DataSource = DM.EmployeeSource
        ImeMode = imClose
        MaxLength = 11
        TabOrder = 1
      end
      object Bt_Insert: TButton
        Left = 19
        Top = 184
        Width = 81
        Height = 41
        Caption = 'Insert'
        TabOrder = 3
        OnClick = Bt_InsertClick
      end
      object Bt_Delete: TButton
        Left = 123
        Top = 184
        Width = 81
        Height = 41
        Caption = 'Delete'
        TabOrder = 4
        OnClick = Bt_DeleteClick
      end
      object Bt_CanCel: TButton
        Left = 19
        Top = 231
        Width = 81
        Height = 41
        Caption = 'Cencel'
        TabOrder = 5
        OnClick = Bt_CanCelClick
      end
      object Bt_Post: TButton
        Left = 123
        Top = 231
        Width = 81
        Height = 41
        Caption = 'Post'
        TabOrder = 6
        OnClick = Bt_PostClick
      end
      object TeamCombo: TDBLookupComboBox
        Left = 72
        Top = 96
        Width = 121
        Height = 21
        DataField = 'E_TEAM'
        DataSource = DM.EmployeeSource
        KeyField = 'D_TEAM'
        ListField = 'D_TEAM'
        ListSource = DM.DeptSource
        TabOrder = 2
      end
      object Button1: TButton
        Left = 34
        Top = 288
        Width = 30
        Height = 25
        Caption = '<<-'
        TabOrder = 7
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 70
        Top = 288
        Width = 30
        Height = 25
        Caption = '<-'
        TabOrder = 8
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 123
        Top = 288
        Width = 30
        Height = 25
        Caption = '->'
        TabOrder = 9
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 159
        Top = 288
        Width = 30
        Height = 25
        Caption = '->>'
        TabOrder = 10
        OnClick = Button4Click
      end
    end
  end
  object Edt_NameSearch: TEdit
    Left = 104
    Top = 32
    Width = 121
    Height = 21
    MaxLength = 3
    TabOrder = 1
    OnChange = Edit1Change
  end
end
