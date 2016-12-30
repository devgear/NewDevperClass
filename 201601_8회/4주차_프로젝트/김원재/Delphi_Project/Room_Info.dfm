object RoomInfo_Form: TRoomInfo_Form
  Left = 0
  Top = 0
  Caption = 'RoomInfo_Form'
  ClientHeight = 746
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 807
    Height = 73
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 73
    Width = 441
    Height = 673
    Align = alLeft
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Panel3
        Row = 0
      end
      item
        Column = 0
        Control = Panel4
        Row = 1
      end
      item
        Column = 0
        Control = Panel5
        Row = 2
      end>
    RowCollection = <
      item
        Value = 40.332368184507330000
      end
      item
        Value = 6.650239534674109000
      end
      item
        Value = 53.017392280818570000
      end>
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 439
      Height = 270
      Align = alClient
      Caption = 'IMG_PANEL'
      TabOrder = 0
      object DBImage2: TDBImage
        Left = 1
        Top = 1
        Width = 437
        Height = 268
        Align = alClient
        Stretch = True
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 271
      Width = 439
      Height = 44
      Align = alClient
      TabOrder = 1
      object Label8: TLabel
        Left = 137
        Top = 8
        Width = 163
        Height = 24
        Alignment = taCenter
        Caption = #52789#48324' '#54924#51032#49892' LIST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 315
      Width = 439
      Height = 357
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 437
        Height = 355
        Align = alClient
        DataSource = DM.ROOM_DS
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnEnter = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'JISA_CODE'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RM_CODE'
            Title.Alignment = taCenter
            Title.Caption = #54924#51032#49892' '#48264#54840
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RM_NAME'
            Title.Alignment = taCenter
            Title.Caption = #54924#51032#49892' '#47749
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RM_FLOOR'
            Title.Alignment = taCenter
            Title.Caption = #52789' '#50948#52824
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RM_SIZE'
            Title.Alignment = taCenter
            Title.Caption = #54924#51032#51109' '#44508#47784
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RM_CHAIR'
            Title.Alignment = taCenter
            Title.Caption = #51340#49437#49688
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RENT_LIST'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_GAEK1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_GAEK2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_GAEK3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_GAEK4'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_BUGA1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_BUGA2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_BUGA3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_BUGA4'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_TOTAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RM_IMG'
            Visible = False
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 441
    Top = 73
    Width = 366
    Height = 673
    Align = alClient
    TabOrder = 2
    object 층: TLabel
      Left = 60
      Top = 306
      Width = 12
      Height = 13
      Caption = #52789
    end
    object Label1: TLabel
      Left = 147
      Top = 306
      Width = 24
      Height = 13
      Caption = #54840#49892
    end
    object Label3: TLabel
      Left = 16
      Top = 369
      Width = 24
      Height = 13
      Caption = #53356#44592
    end
    object Label4: TLabel
      Left = 176
      Top = 337
      Width = 36
      Height = 13
      Caption = #51340#49437#49688
    end
    object Label7: TLabel
      Left = 16
      Top = 337
      Width = 24
      Height = 13
      Caption = #50857#46020
    end
    object Label12: TLabel
      Left = 104
      Top = 12
      Width = 148
      Height = 33
      Caption = #54924#51032#49892' '#51221#48372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 16
      Top = 303
      Width = 38
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 78
      Top = 303
      Width = 63
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 193
      Top = 303
      Width = 120
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 46
      Top = 335
      Width = 115
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 218
      Top = 334
      Width = 113
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 46
      Top = 366
      Width = 115
      Height = 21
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 474
      Width = 337
      Height = 183
      Caption = #49884#44036#48324' '#49324#50857' '#44552#50529
      TabOrder = 6
      object Label2: TLabel
        Left = 15
        Top = 28
        Width = 87
        Height = 13
        Caption = #54924#51032#49892' '#49324#50857#44552#50529
      end
      object Label9: TLabel
        Left = 15
        Top = 60
        Width = 87
        Height = 13
        Caption = #45432#53944#48513' '#49324#50857#44552#50529
      end
      object Label10: TLabel
        Left = 15
        Top = 155
        Width = 63
        Height = 13
        Caption = #49324#50857#47308' '#54633#44228
      end
      object Label13: TLabel
        Left = 16
        Top = 92
        Width = 111
        Height = 13
        Caption = #48724#54532#47196#51229#53944' '#49324#50857#44552#50529
      end
      object Label14: TLabel
        Left = 18
        Top = 125
        Width = 147
        Height = 13
        Caption = #50724#46356#50724#51020#54693#49884#49828#53596' '#49324#50857#44552#50529
      end
      object Edit7: TEdit
        Left = 171
        Top = 25
        Width = 158
        Height = 21
        TabOrder = 0
      end
      object Edit8: TEdit
        Left = 171
        Top = 57
        Width = 158
        Height = 21
        TabOrder = 1
      end
      object Edit9: TEdit
        Left = 171
        Top = 89
        Width = 158
        Height = 21
        TabOrder = 2
      end
      object Edit10: TEdit
        Left = 171
        Top = 119
        Width = 158
        Height = 21
        TabOrder = 3
      end
      object Edit11: TEdit
        Left = 171
        Top = 149
        Width = 158
        Height = 21
        TabOrder = 4
      end
    end
    object DBImage1: TDBImage
      Left = 16
      Top = 64
      Width = 321
      Height = 233
      Stretch = True
      TabOrder = 7
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 399
      Width = 321
      Height = 62
      Caption = #49324#50857#44032#45733' '#44592#51088#51116' '#47785#47197
      TabOrder = 8
      object Label5: TLabel
        Left = 32
        Top = 29
        Width = 36
        Height = 13
        Caption = #45432#53944#48513
      end
      object Label6: TLabel
        Left = 110
        Top = 29
        Width = 60
        Height = 13
        Caption = #48724#54532#47196#51229#53944
      end
      object Label11: TLabel
        Left = 206
        Top = 29
        Width = 96
        Height = 13
        Caption = #50724#46356#50724#51020#54693#49884#49828#53596
      end
    end
  end
end
