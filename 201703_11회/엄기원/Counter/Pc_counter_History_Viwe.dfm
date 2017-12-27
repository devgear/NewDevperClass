object Form_History: TForm_History
  Left = 0
  Top = 0
  Caption = 'Form_History'
  ClientHeight = 685
  ClientWidth = 1076
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
  object PageControl_login: TPageControl
    Left = 0
    Top = 0
    Width = 1076
    Height = 685
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #47196#44536#51064' '#45236#50857' '#51312#54924
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 16
        Top = 56
        Width = 1033
        Height = 329
        DataSource = clientmodule.DataSource_login_history
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
            FieldName = 'USER_ID'
            Title.Caption = #49324#50857#51088
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN_DAY'
            Title.Caption = #51217#49549#45216#51676
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN_TIME'
            Title.Caption = #51217#49549' '#49884#44036
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'END_DAY'
            Title.Caption = #51333#47308' '#45216#51676
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'END_TIME'
            Title.Caption = #51333#47308' '#49884#44036
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN_CLIENT'
            Title.Caption = #51217#49549' '#51088#47532
            Visible = True
          end>
      end
      object ComboBox1: TComboBox
        Left = 576
        Top = 16
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = #49324#50857#51088
        Items.Strings = (
          #49324#50857#51088
          #51217#49549#45216#51088
          #47196#44536#50500#50883' '#45216#51088)
      end
      object Edit1: TEdit
        Left = 744
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 2
        OnChange = Edit1Change
      end
    end
    object TabSheet2: TTabSheet
      Caption = #49884#44036' '#52649#51204' '#51312#54924
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid2: TDBGrid
        Left = 16
        Top = 56
        Width = 1033
        Height = 329
        DataSource = clientmodule.DataSource_addtime
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
            FieldName = 'USER_ID'
            Title.Caption = #49324#50857#51088
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADD_DAY'
            Title.Caption = #52649#51204' '#45216#51676
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADD_TIME'
            Title.Caption = #52649#51204' '#49884#44036
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIME_NAME'
            Title.Caption = #52649#51204' '#49345#54408#47749
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOW_TIME'
            Title.Caption = #54633#44228' '#49884#44036
            Visible = True
          end>
      end
      object ComboBox2: TComboBox
        Left = 600
        Top = 16
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = #49324#50857#51088
        Items.Strings = (
          #49324#50857#51088
          #52649#51204' '#45216#51088)
      end
      object Edit2: TEdit
        Left = 776
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 2
        OnChange = Edit2Change
      end
    end
    object TabSheet3: TTabSheet
      Caption = #51068#51068' '#51221#49328
      ImageIndex = 2
      object label1: TLabel
        Left = 783
        Top = 24
        Width = 114
        Height = 33
        Caption = #51068#51068' '#44160#49353' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 527
        Top = 24
        Width = 114
        Height = 33
        Caption = #50900#48324' '#44160#49353' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid3: TDBGrid
        Left = 16
        Top = 80
        Width = 1033
        Height = 489
        DataSource = clientmodule.DataSource_dayday
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
            FieldName = 'ADD_DAY'
            Title.Caption = #45216#51676
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HC'
            Title.Caption = #49440#48520' '#52649#51204' '#54943#49688
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC'
            Title.Caption = #47196#44536#51064' '#54943#49688
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HS'
            Title.Caption = #52509' '#47588#52636
            Visible = True
          end>
      end
      object Edit3: TEdit
        Left = 900
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = Edit3Change
      end
      object Edit4: TEdit
        Left = 647
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 2
        OnChange = Edit4Change
      end
    end
  end
end
