object Order_Form: TOrder_Form
  Left = 0
  Top = 0
  Caption = 'Order_Form'
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
      Caption = #44396#47588' '#54788#54889
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
        Top = 8
        Width = 24
        Height = 13
        Caption = #49457#47749
      end
      object Label3: TLabel
        Left = 568
        Top = 57
        Width = 51
        Height = 13
        Caption = #44396#47588' '#47785#47197
      end
      object Label4: TLabel
        Left = 568
        Top = 109
        Width = 24
        Height = 13
        Caption = #49688#47049
      end
      object Label5: TLabel
        Left = 568
        Top = 162
        Width = 39
        Height = 13
        Caption = #52509' '#44032#44201
      end
      object Label6: TLabel
        Left = 568
        Top = 214
        Width = 51
        Height = 13
        Caption = #48176#49569' '#48169#48277
      end
      object Label7: TLabel
        Left = 568
        Top = 266
        Width = 24
        Height = 13
        Caption = #44208#51228
      end
      object DBGrid1: TDBGrid
        Left = -1
        Top = 0
        Width = 550
        Height = 330
        DataSource = DataModule1.Order_Join_DataSource
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
            FieldName = 'ORDER_SEQ'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MEMBER_NAME'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORDER_PURCHASE_DATE'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORDER_ITEMS'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORDER_QTY'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORDER_TOTAL_PRICE'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORDER_STATUS'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORDER_PAYMENT'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORDER_DELIVERY'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RESERVATION_SEQ'
            Visible = True
          end>
      end
      object Name_DBEdit: TDBEdit
        Left = 567
        Top = 27
        Width = 121
        Height = 21
        DataField = 'MEMBER_NAME'
        DataSource = DataModule1.Member_DataSource
        TabOrder = 1
      end
      object Items_DBEdit: TDBEdit
        Left = 568
        Top = 76
        Width = 121
        Height = 21
        DataField = 'ORDER_ITEMS'
        DataSource = DataModule1.Order_DataSource
        TabOrder = 2
      end
      object Qty_DBEdit: TDBEdit
        Left = 568
        Top = 128
        Width = 121
        Height = 21
        DataField = 'ORDER_QTY'
        DataSource = DataModule1.Order_DataSource
        TabOrder = 3
      end
      object Total_Price_DBEdit: TDBEdit
        Left = 568
        Top = 181
        Width = 121
        Height = 21
        DataField = 'ORDER_TOTAL_PRICE'
        DataSource = DataModule1.Order_DataSource
        TabOrder = 4
      end
      object Delivery_DBEdit: TDBEdit
        Left = 568
        Top = 233
        Width = 121
        Height = 21
        DataField = 'ORDER_DELIVERY'
        DataSource = DataModule1.Order_DataSource
        TabOrder = 5
      end
      object Pay_DBEdit: TDBEdit
        Left = 568
        Top = 285
        Width = 121
        Height = 21
        DataField = 'ORDER_PAYMENT'
        DataSource = DataModule1.Order_DataSource
        TabOrder = 6
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 13
      Top = 372
      Width = 200
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
    end
    object Insert_Button: TButton
      Left = 333
      Top = 372
      Width = 50
      Height = 25
      Caption = #51077#47141
      TabOrder = 3
      OnClick = Insert_ButtonClick
    end
    object Cancel_Button: TButton
      Left = 389
      Top = 372
      Width = 50
      Height = 25
      Caption = #52712#49548
      TabOrder = 4
      OnClick = Cancel_ButtonClick
    end
    object Delete_Button: TButton
      Left = 445
      Top = 372
      Width = 50
      Height = 25
      Caption = #49325#51228
      TabOrder = 5
      OnClick = Delete_ButtonClick
    end
    object Save_Button: TButton
      Left = 501
      Top = 372
      Width = 50
      Height = 25
      Caption = #51200#51109
      TabOrder = 6
      OnClick = Save_ButtonClick
    end
    object Refresh_Button: TButton
      Left = 501
      Top = 5
      Width = 50
      Height = 25
      Caption = #49352#47196#44256#52840
      TabOrder = 8
      OnClick = Refresh_ButtonClick
    end
    object Purchase_Info_SearchBox: TSearchBox
      Left = 568
      Top = 9
      Width = 121
      Height = 21
      TabOrder = 7
    end
  end
end
