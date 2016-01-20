object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #48512#49436#44288#47532
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
  object Label1: TLabel
    Left = 3
    Top = 8
    Width = 56
    Height = 13
    Caption = #48512#49436#51221#48372
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 27
    Width = 433
    Height = 310
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #51312#54924
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 425
        Height = 282
        Align = alClient
        DataSource = DM.DeptSource
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
            FieldName = 'D_ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'D_DEPT'
            Title.Alignment = taCenter
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'D_TEAM'
            Title.Alignment = taCenter
            Width = 190
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #54200#51665
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label5: TLabel
        Left = 69
        Top = 81
        Width = 33
        Height = 11
        Caption = #48512#49436#47749
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 69
        Top = 115
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
      object DBEdit5: TDBEdit
        Left = 127
        Top = 78
        Width = 177
        Height = 19
        DataField = 'D_DEPT'
        DataSource = DM.DeptSource
        TabOrder = 0
      end
      object Button1: TButton
        Left = 17
        Top = 227
        Width = 85
        Height = 25
        Caption = #51077#47141
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 320
        Top = 227
        Width = 85
        Height = 25
        Caption = #49325#51228
        TabOrder = 5
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 118
        Top = 227
        Width = 85
        Height = 25
        Caption = #49688#51221
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 320
        Top = 19
        Width = 85
        Height = 25
        Caption = #51312#54924
        TabOrder = 6
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 219
        Top = 227
        Width = 85
        Height = 25
        Caption = #51200#51109
        TabOrder = 4
        OnClick = Button5Click
      end
      object DBEdit2: TDBEdit
        Left = 127
        Top = 112
        Width = 177
        Height = 19
        DataField = 'D_TEAM'
        DataSource = DM.DeptSource
        TabOrder = 1
      end
    end
  end
end
