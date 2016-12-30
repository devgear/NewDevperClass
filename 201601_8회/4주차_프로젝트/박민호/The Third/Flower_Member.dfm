object Member_Form: TMember_Form
  Left = 0
  Top = 0
  Caption = 'Member_Form'
  ClientHeight = 442
  ClientWidth = 704
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
    Width = 704
    Height = 442
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 68
      Height = 16
      Caption = #44256#44061' '#44288#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 411
      Width = 702
      Height = 30
      Panels = <
        item
          Alignment = taCenter
          Width = 50
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 36
      Width = 704
      Height = 369
      TabOrder = 1
      object Label2: TLabel
        Left = 568
        Top = 21
        Width = 24
        Height = 13
        Caption = #49457#54632
      end
      object Label3: TLabel
        Left = 568
        Top = 78
        Width = 24
        Height = 13
        Caption = #51452#49548
      end
      object Label4: TLabel
        Left = 568
        Top = 140
        Width = 36
        Height = 13
        Caption = #50672#46973#52376
      end
      object Label5: TLabel
        Left = 568
        Top = 255
        Width = 75
        Height = 13
        Caption = #47560#51068#47532#51648' '#51216#49688
      end
      object Label6: TLabel
        Left = 567
        Top = 314
        Width = 72
        Height = 13
        Caption = #52572#44540#48169#47928#51068#51088
      end
      object Label7: TLabel
        Left = 568
        Top = 196
        Width = 24
        Height = 13
        Caption = #49373#51068
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 0
        Width = 548
        Height = 330
        DataSource = DataModule1.Member_DataSource
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
            FieldName = 'MEMBER_SEQ'
            Title.Alignment = taCenter
            Title.Caption = #44256#44061' '#48264#54840
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEMBER_NAME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = #44256#44061' '#47749
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEMBER_ADDRESS'
            Title.Alignment = taCenter
            Title.Caption = #44256#44061' '#51452#49548
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEMBER_PHONENUMBER'
            Title.Alignment = taCenter
            Title.Caption = #44256#44061' '#50672#46973#52376
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEMBER_BIRTHDAY'
            Title.Alignment = taCenter
            Title.Caption = #44256#44061' '#49373#51068
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEMBER_POINT'
            Title.Alignment = taCenter
            Title.Caption = #44256#44061' '#47560#51068#47532#51648' '#51216#49688
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEMBER_LASTVISIT'
            Title.Alignment = taCenter
            Title.Caption = #52572#44540' '#48169#47928' '#51068#51088
            Width = 150
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 336
        Width = 200
        Height = 25
        DataSource = DataModule1.Member_DataSource
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 8
      end
      object Insert_Button: TButton
        Left = 333
        Top = 336
        Width = 50
        Height = 25
        Caption = #51077#47141
        TabOrder = 7
        OnClick = Insert_ButtonClick
      end
      object Cancel_Button: TButton
        Left = 389
        Top = 336
        Width = 50
        Height = 25
        Caption = #52712#49548
        TabOrder = 9
        OnClick = Cancel_ButtonClick
      end
      object Delete_Button: TButton
        Left = 445
        Top = 336
        Width = 50
        Height = 25
        Caption = #49325#51228
        TabOrder = 10
        OnClick = Delete_ButtonClick
      end
      object Save_Button: TButton
        Left = 501
        Top = 336
        Width = 50
        Height = 25
        Caption = #51200#51109
        TabOrder = 11
        OnClick = Save_ButtonClick
      end
      object Name_DBEdit: TDBEdit
        Left = 568
        Top = 40
        Width = 119
        Height = 21
        DataField = 'MEMBER_NAME'
        DataSource = DataModule1.Member_DataSource
        TabOrder = 1
      end
      object Address_DBEdit: TDBEdit
        Left = 568
        Top = 97
        Width = 121
        Height = 21
        DataField = 'MEMBER_ADDRESS'
        DataSource = DataModule1.Member_DataSource
        TabOrder = 2
      end
      object PhoneNumber_DBEdit: TDBEdit
        Left = 568
        Top = 159
        Width = 121
        Height = 21
        DataField = 'MEMBER_PHONENUMBER'
        DataSource = DataModule1.Member_DataSource
        TabOrder = 3
      end
      object Customer_Point_DBEdit: TDBEdit
        Left = 568
        Top = 274
        Width = 121
        Height = 21
        DataField = 'MEMBER_POINT'
        DataSource = DataModule1.Member_DataSource
        TabOrder = 5
      end
      object LastVisit_DBEdit: TDBEdit
        Left = 568
        Top = 333
        Width = 113
        Height = 21
        DataField = 'MEMBER_LASTVISIT'
        DataSource = DataModule1.Member_DataSource
        MaxLength = 10
        TabOrder = 6
      end
      object Birthday_DBEdit: TDBEdit
        Left = 568
        Top = 215
        Width = 121
        Height = 21
        DataField = 'MEMBER_BIRTHDAY'
        DataSource = DataModule1.Member_DataSource
        TabOrder = 4
      end
    end
    object Refresh_Button: TButton
      Left = 501
      Top = 5
      Width = 50
      Height = 25
      Caption = #49352#47196#44256#52840
      TabOrder = 2
      OnClick = Refresh_ButtonClick
    end
    object Member_SearchBox: TSearchBox
      Left = 568
      Top = 9
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = Member_SearchBoxChange
    end
  end
end
