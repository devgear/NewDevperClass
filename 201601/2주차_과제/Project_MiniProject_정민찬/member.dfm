object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #49324#50896#44288#47532
  ClientHeight = 357
  ClientWidth = 433
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
  object Label8: TLabel
    Left = 8
    Top = 12
    Width = 56
    Height = 13
    Caption = #49324#50896#51221#48372
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 31
    Width = 433
    Height = 318
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #51312#54924
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 425
        Height = 290
        Align = alClient
        DataSource = DM.memberSource
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
            FieldName = 'M_ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'M_NAME'
            Title.Alignment = taCenter
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'M_TEAM'
            Title.Alignment = taCenter
            Width = 200
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #54200#51665
      ImageIndex = 1
      object Label1: TLabel
        Left = 80
        Top = 84
        Width = 22
        Height = 11
        Caption = #51060#47492
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 69
        Top = 121
        Width = 33
        Height = 11
        Caption = #49548#49549#54016
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 80
        Top = 47
        Width = 22
        Height = 11
        Caption = #49324#48264
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 131
        Top = 79
        Width = 158
        Height = 21
        DataField = 'M_NAME'
        DataSource = DM.memberSource
        TabOrder = 1
      end
      object Button1: TButton
        Left = 17
        Top = 227
        Width = 85
        Height = 25
        Caption = #51077#47141
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 312
        Top = 227
        Width = 85
        Height = 25
        Caption = #49325#51228
        TabOrder = 6
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 117
        Top = 227
        Width = 85
        Height = 25
        Caption = #49688#51221
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 312
        Top = 3
        Width = 85
        Height = 25
        Caption = #51312#54924
        TabOrder = 7
        OnClick = Button4Click
      end
      object DBEdit6: TDBEdit
        Left = 131
        Top = 42
        Width = 158
        Height = 21
        DataField = 'M_ID'
        DataSource = DM.memberSource
        TabOrder = 0
      end
      object Button5: TButton
        Left = 216
        Top = 227
        Width = 85
        Height = 25
        Caption = #51200#51109
        TabOrder = 5
        OnClick = Button5Click
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 131
        Top = 121
        Width = 158
        Height = 21
        DataField = 'M_TEAM'
        DataSource = DM.memberSource
        KeyField = 'D_TEAM'
        ListField = 'D_TEAM'
        ListSource = DM.DeptSource
        TabOrder = 2
      end
    end
  end
end
