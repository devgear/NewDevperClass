object Flower_List_Info_Form: TFlower_List_Info_Form
  Left = 0
  Top = 0
  Caption = 'Flower_List_Info_Form'
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
      Left = 11
      Top = 10
      Width = 100
      Height = 16
      Caption = #44867' '#44288#47532' / '#51221#48372
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
        Left = 562
        Top = 8
        Width = 39
        Height = 13
        Caption = #44867' '#51060#47492
      end
      object Label3: TLabel
        Left = 562
        Top = 54
        Width = 24
        Height = 13
        Caption = #49688#47049
      end
      object Label4: TLabel
        Left = 562
        Top = 100
        Width = 24
        Height = 13
        Caption = #44032#44201
      end
      object Label5: TLabel
        Left = 562
        Top = 146
        Width = 63
        Height = 13
        Caption = #44867' '#47560#51068#47532#51648
      end
      object Label6: TLabel
        Left = 562
        Top = 192
        Width = 51
        Height = 13
        Caption = #44867' '#51060#48120#51648
      end
      object Label7: TLabel
        Left = 562
        Top = 238
        Width = 39
        Height = 13
        Caption = #44867' '#54617#47749
      end
      object Label8: TLabel
        Left = 562
        Top = 280
        Width = 63
        Height = 13
        Caption = #44867' '#48516#54252#51648#50669
      end
      object Label9: TLabel
        Left = 632
        Top = 280
        Width = 63
        Height = 13
        Caption = #44867' '#44060#54868#49884#44592
      end
      object Label10: TLabel
        Left = 562
        Top = 325
        Width = 30
        Height = 13
        Caption = #44867'  '#47568
      end
      object DBGrid1: TDBGrid
        Left = -1
        Top = 0
        Width = 550
        Height = 328
        DataSource = DataModule1.Flower_List_DataSource
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
            FieldName = 'LIST_SEQ'
            Title.Alignment = taCenter
            Title.Caption = #48264#54840
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_NAME'
            Title.Alignment = taCenter
            Title.Caption = #44867' '#47749
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_QTY'
            Title.Alignment = taCenter
            Title.Caption = #49569#51060
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_PRICE'
            Title.Alignment = taCenter
            Title.Caption = #45800#44032
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_POINT'
            Title.Alignment = taCenter
            Title.Caption = #44867' '#47560#51068#47532#51648' '#51216#49688
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_IMAGE'
            Title.Alignment = taCenter
            Title.Caption = #51060#48120#51648
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_SCIENTIFICNAME'
            Title.Alignment = taCenter
            Title.Caption = #54617#47749
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_AREA'
            Title.Alignment = taCenter
            Title.Caption = #48516#54252' '#51648#50669
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_PERIOD'
            Title.Alignment = taCenter
            Title.Caption = #44060#54868' '#49884#44592
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIST_LANGUAGE'
            Title.Alignment = taCenter
            Title.Caption = #44867#47568
            Width = 150
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 334
        Width = 200
        Height = 25
        DataSource = DataModule1.Flower_List_DataSource
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 10
      end
      object Insert_Button1: TButton
        Left = 331
        Top = 334
        Width = 50
        Height = 25
        Caption = #51077#47141
        TabOrder = 11
        OnClick = Insert_Button1Click
      end
      object Cancel_Button1: TButton
        Left = 387
        Top = 334
        Width = 50
        Height = 25
        Caption = #52712#49548
        TabOrder = 12
        OnClick = Cancel_Button1Click
      end
      object Delete_Button1: TButton
        Left = 443
        Top = 334
        Width = 50
        Height = 25
        Caption = #49325#51228
        TabOrder = 13
        OnClick = Delete_Button1Click
      end
      object Save_Button1: TButton
        Left = 499
        Top = 334
        Width = 50
        Height = 25
        Caption = #51200#51109
        TabOrder = 14
        OnClick = Save_Button1Click
      end
      object Name_DBEdit: TDBEdit
        Left = 562
        Top = 27
        Width = 121
        Height = 21
        DataField = 'LIST_NAME'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 1
        OnKeyPress = Name_DBEditKeyPress
      end
      object Qty_DBEdit: TDBEdit
        Left = 562
        Top = 73
        Width = 121
        Height = 21
        DataField = 'LIST_QTY'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 2
      end
      object Price_DBEdit: TDBEdit
        Left = 562
        Top = 119
        Width = 121
        Height = 21
        DataField = 'LIST_PRICE'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 3
      end
      object Flower_Point_DBEdit: TDBEdit
        Left = 562
        Top = 165
        Width = 121
        Height = 21
        DataField = 'LIST_POINT'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 4
      end
      object Image_DBEdit: TDBEdit
        Left = 562
        Top = 211
        Width = 121
        Height = 21
        DataField = 'LIST_IMAGE'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 5
      end
      object ScientificName_DBEdit: TDBEdit
        Left = 562
        Top = 257
        Width = 121
        Height = 21
        DataField = 'LIST_SCIENTIFICNAME'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 6
      end
      object Area_DBEdit: TDBEdit
        Left = 562
        Top = 298
        Width = 60
        Height = 21
        DataField = 'LIST_AREA'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 7
      end
      object Period_DBEdit: TDBEdit
        Left = 631
        Top = 299
        Width = 60
        Height = 21
        DataField = 'LIST_PERIOD'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 8
      end
      object Language_DBEdit: TDBEdit
        Left = 562
        Top = 341
        Width = 121
        Height = 21
        DataField = 'LIST_LANGUAGE'
        DataSource = DataModule1.Flower_List_DataSource
        TabOrder = 9
      end
    end
    object FlowerSearchBox: TSearchBox
      Left = 563
      Top = 9
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = FlowerSearchBoxChange
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
  end
end
