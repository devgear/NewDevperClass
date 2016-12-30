object Reservation_Form: TReservation_Form
  Left = 0
  Top = 0
  Caption = 'Reservation_Form'
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
      Caption = #50696#50557' '#54788#54889
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
        Left = 572
        Top = 8
        Width = 24
        Height = 13
        Caption = #44867#47749
      end
      object Label3: TLabel
        Left = 572
        Top = 57
        Width = 24
        Height = 13
        Caption = #49569#51060
      end
      object Label4: TLabel
        Left = 572
        Top = 109
        Width = 51
        Height = 13
        Caption = #49688#47161#51064' '#47749
      end
      object Label5: TLabel
        Left = 572
        Top = 162
        Width = 75
        Height = 13
        Caption = #49688#47161#51064' '#50672#46973#52376
      end
      object Label6: TLabel
        Left = 572
        Top = 214
        Width = 63
        Height = 13
        Caption = #49688#47161#51064' '#51452#49548
      end
      object Label7: TLabel
        Left = 572
        Top = 266
        Width = 51
        Height = 13
        Caption = #49688#47161' '#53440#51077
      end
      object Label8: TLabel
        Left = 572
        Top = 317
        Width = 51
        Height = 13
        Caption = #44208#51228' '#48169#48277
      end
      object DBGrid1: TDBGrid
        Left = 12
        Top = 0
        Width = 550
        Height = 330
        DataSource = DataModule1.Reservation_DataSource
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
            FieldName = 'RESERVATION_SEQ'
            Title.Alignment = taCenter
            Title.Caption = #50696#50557' '#48264#54840
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESERVATION_DATE'
            Title.Alignment = taCenter
            Title.Caption = #50696#50557' '#45216#51676
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESERVATION_TIME'
            Title.Alignment = taCenter
            Title.Caption = #50696#50557' '#49884#44036
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESERVATION_QTY'
            Title.Alignment = taCenter
            Title.Caption = #49569#51060
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESERVATION_NAME'
            Title.Alignment = taCenter
            Title.Caption = #50696#50557#51088' '#47749
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESERVATION_PHONENUMBER'
            Title.Alignment = taCenter
            Title.Caption = #50696#50557#51088' '#50672#46973#52376
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECIPIENT_NAME'
            Title.Alignment = taCenter
            Title.Caption = #49688#47161#51064' '#47749
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECIPIENT_PHONENUMBER'
            Title.Alignment = taCenter
            Title.Caption = #49688#47161#51064' '#50672#46973#52376
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECIPIENT_ADDRESS'
            Title.Alignment = taCenter
            Title.Caption = #49688#47161#51064' '#51452#49548
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESERVATION_PRICE_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = #52509' '#51452#47928' '#44032#44201
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESERVATION_ETC'
            Title.Alignment = taCenter
            Title.Caption = #50836#44396#49324#54637
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECIPIENT_ETC'
            Title.Alignment = taCenter
            Title.Caption = #51204#45804' '#47700#49464#51648
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECEIVE_TYPE'
            Title.Alignment = taCenter
            Title.Caption = #49688#47161' '#48169#48277
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAYMENT_TYPE'
            Title.Alignment = taCenter
            Title.Caption = #51648#48520' '#48169#48277
            Width = 150
            Visible = True
          end>
      end
      object Flower_DBEdit: TDBEdit
        Left = 568
        Top = 27
        Width = 121
        Height = 21
        DataField = 'LIST_SEQ'
        DataSource = DataModule1.Reservation_DataSource
        TabOrder = 1
      end
      object Qty_DBEdit: TDBEdit
        Left = 572
        Top = 76
        Width = 121
        Height = 21
        DataField = 'RESERVATION_QTY'
        DataSource = DataModule1.Reservation_DataSource
        TabOrder = 2
      end
      object Recipient_Name_DBEdit: TDBEdit
        Left = 572
        Top = 128
        Width = 121
        Height = 21
        DataField = 'RESERVATION_NAME'
        DataSource = DataModule1.Reservation_DataSource
        TabOrder = 3
      end
      object Recipient_PhoneNumber_DBEdit: TDBEdit
        Left = 572
        Top = 181
        Width = 121
        Height = 21
        DataField = 'RECIPIENT_PHONENUMBER'
        DataSource = DataModule1.Reservation_DataSource
        TabOrder = 4
      end
      object Recipient_Address_DBEdit: TDBEdit
        Left = 572
        Top = 233
        Width = 121
        Height = 21
        DataField = 'RECIPIENT_ADDRESS'
        DataSource = DataModule1.Reservation_DataSource
        TabOrder = 5
      end
      object Receive_DBComboBox: TDBComboBox
        Left = 572
        Top = 285
        Width = 121
        Height = 21
        DataField = 'RECEIVE_TYPE'
        DataSource = DataModule1.Reservation_DataSource
        TabOrder = 6
      end
      object Payment_DBComboBox: TDBComboBox
        Left = 572
        Top = 336
        Width = 121
        Height = 21
        DataField = 'PAYMENT_TYPE'
        DataSource = DataModule1.Reservation_DataSource
        TabOrder = 7
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 13
      Top = 372
      Width = 200
      Height = 25
      DataSource = DataModule1.Reservation_DataSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
    end
    object Insert_Button: TButton
      Left = 345
      Top = 372
      Width = 50
      Height = 25
      Caption = #51077#47141
      TabOrder = 3
      OnClick = Insert_ButtonClick
    end
    object Cancel_Button: TButton
      Left = 401
      Top = 372
      Width = 50
      Height = 25
      Caption = #52712#49548
      TabOrder = 4
      OnClick = Cancel_ButtonClick
    end
    object Delete_Button: TButton
      Left = 457
      Top = 372
      Width = 50
      Height = 25
      Caption = #49325#51228
      TabOrder = 5
      OnClick = Delete_ButtonClick
    end
    object Save_Button: TButton
      Left = 513
      Top = 372
      Width = 50
      Height = 25
      Caption = #51200#51109
      TabOrder = 6
      OnClick = Save_ButtonClick
    end
    object Refresh_Button: TButton
      Left = 513
      Top = 5
      Width = 50
      Height = 25
      Caption = #49352#47196#44256#52840
      TabOrder = 8
      OnClick = Refresh_ButtonClick
    end
    object Reservation_SearchBox: TSearchBox
      Left = 573
      Top = 9
      Width = 121
      Height = 21
      TabOrder = 7
      OnChange = Reservation_SearchBoxChange
    end
  end
end
