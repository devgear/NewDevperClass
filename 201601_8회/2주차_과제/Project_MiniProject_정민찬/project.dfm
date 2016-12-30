object Form2: TForm2
  Left = 0
  Top = 0
  Hint = #51077#47141#52285', '#51312#54924#52285
  Caption = #54532#47196#51229#53944
  ClientHeight = 482
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 9
    Top = 9
    Width = 56
    Height = 13
    Caption = #54532#47196#51229#53944
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 9
    Top = 264
    Width = 103
    Height = 13
    Caption = #54532#47196#51229#53944' '#44288#47532#51088
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 46
    Top = 66
    Width = 44
    Height = 11
    Caption = #49884#51089#44592#44036
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 28
    Width = 589
    Height = 230
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #51312#54924
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 581
        Height = 202
        Align = alClient
        DataSource = DM.projectSource
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'P_ID'
            Title.Alignment = taCenter
            Width = 34
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'P_NAME'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'P_STARTDATE'
            Title.Alignment = taCenter
            Width = 104
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'P_ENDDATE'
            Title.Alignment = taCenter
            Width = 104
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'P_MANAGER_ID'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'P_MEMBERCOUNT'
            Title.Alignment = taCenter
            Width = 104
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'P_STATUS'
            Title.Alignment = taCenter
            Width = 74
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #54200#51665
      ImageIndex = 1
      object Label1: TLabel
        Left = 27
        Top = 23
        Width = 55
        Height = 11
        Caption = #54532#47196#51229#53944#47749
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 38
        Top = 52
        Width = 44
        Height = 11
        Caption = #49884#51089#44592#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 45
        Top = 109
        Width = 33
        Height = 11
        Caption = #44288#47532#51088
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 38
        Top = 141
        Width = 44
        Height = 11
        Caption = #52280#50668#51064#50896
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 37
        Top = 170
        Width = 44
        Height = 11
        Caption = #51652#54665#49345#53468
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 37
        Top = 81
        Width = 44
        Height = 11
        Caption = #51333#47308#44592#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 111
        Top = 15
        Width = 121
        Height = 21
        DataField = 'P_NAME'
        DataSource = DM.projectSource
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 111
        Top = 46
        Width = 121
        Height = 21
        DataField = 'P_STARTDATE'
        DataSource = DM.projectSource
        MaxLength = 10
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 111
        Top = 136
        Width = 121
        Height = 21
        DataField = 'P_MEMBERCOUNT'
        DataSource = DM.projectSource
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 111
        Top = 168
        Width = 121
        Height = 21
        DataField = 'P_STATUS'
        DataSource = DM.projectSource
        TabOrder = 5
      end
      object Button1: TButton
        Left = 301
        Top = 14
        Width = 85
        Height = 25
        Caption = #51077#47141
        TabOrder = 6
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 405
        Top = 56
        Width = 85
        Height = 25
        Caption = #49325#51228
        TabOrder = 9
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 405
        Top = 14
        Width = 85
        Height = 25
        Caption = #49688#51221
        TabOrder = 7
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 301
        Top = 93
        Width = 85
        Height = 25
        Caption = #51312#54924
        TabOrder = 10
      end
      object Button5: TButton
        Left = 301
        Top = 56
        Width = 85
        Height = 25
        Caption = #51200#51109
        TabOrder = 8
        OnClick = Button5Click
      end
      object DBEdit6: TDBEdit
        Left = 111
        Top = 75
        Width = 121
        Height = 21
        DataField = 'P_ENDDATE'
        DataSource = DM.projectSource
        MaxLength = 10
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 111
        Top = 105
        Width = 121
        Height = 21
        DataField = 'P_MANAGER_ID'
        DataSource = DM.projectSource
        KeyField = 'M_ID'
        ListField = 'M_ID'
        ListSource = DM.memberSource
        TabOrder = 3
      end
    end
  end
  object DBGrid2: TDBGrid
    Left = -5
    Top = 283
    Width = 606
    Height = 166
    DataSource = DM.managerSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'R_ID'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'P_ID'
        Title.Alignment = taCenter
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'M_ID'
        Title.Alignment = taCenter
        Width = 300
        Visible = True
      end>
  end
end
