object FormMain: TFormMain
  Left = 0
  Top = 0
  ClientHeight = 600
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1031
    Height = 600
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #47588#52636#52376#51312#54924
      object pnl_main: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 566
        Align = alClient
        TabOrder = 0
        object pnl_header: TPanel
          Left = 1
          Top = 1
          Width = 1021
          Height = 185
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 9
          ExplicitTop = 9
          DesignSize = (
            1021
            185)
          object lb_name: TLabel
            Left = 39
            Top = 82
            Width = 53
            Height = 16
            Caption = #48337'  '#50896'   '#47749
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lb_id: TLabel
            Left = 37
            Top = 119
            Width = 55
            Height = 16
            Caption = #49324#50629#51088#48264#54840
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lb_saler: TLabel
            Left = 37
            Top = 150
            Width = 57
            Height = 16
            Caption = #45824'   '#54364'   '#51088
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lb_phone: TLabel
            Left = 332
            Top = 85
            Width = 54
            Height = 16
            Caption = #51204'        '#54868
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lb_address: TLabel
            Left = 332
            Top = 150
            Width = 54
            Height = 16
            Caption = #51452'        '#49548
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 332
            Top = 119
            Width = 57
            Height = 16
            Caption = #45812'   '#45817'   '#51088
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object pnl_heaher_2: TPanel
            Left = 1
            Top = 1
            Width = 1019
            Height = 64
            Align = alTop
            TabOrder = 0
            DesignSize = (
              1019
              64)
            object lb_hos_name: TLabel
              Left = 20
              Top = 25
              Width = 33
              Height = 16
              Caption = #49345#54840#47749
            end
            object lb_hos_phone: TLabel
              Left = 482
              Top = 22
              Width = 44
              Height = 16
              Caption = #51204#54868#48264#54840
            end
            object btn_add: TButton
              Left = 759
              Top = 6
              Width = 57
              Height = 49
              Anchors = [akTop, akRight]
              Caption = #52628#44032
              TabOrder = 0
              OnClick = btn_addClick
            end
            object btn_close: TButton
              Left = 949
              Top = 6
              Width = 57
              Height = 49
              Anchors = [akTop, akRight]
              Caption = #45803#44592
              TabOrder = 1
              OnClick = btn_closeClick
            end
            object btn_delet: TButton
              Left = 886
              Top = 6
              Width = 57
              Height = 49
              Anchors = [akTop, akRight]
              Caption = #49325#51228
              TabOrder = 2
              OnClick = btn_deletClick
            end
            object btn_ser: TButton
              Left = 695
              Top = 6
              Width = 58
              Height = 49
              Anchors = [akTop, akRight]
              Caption = #44160#49353
              ImageAlignment = iaCenter
              ImageIndex = 3
              TabOrder = 3
              OnClick = btn_serClick
            end
            object edithos_name: TEdit
              Left = 75
              Top = 18
              Width = 127
              Height = 24
              TabOrder = 4
              OnKeyUp = edithos_nameKeyUp
            end
            object edithos_phone: TEdit
              Left = 548
              Top = 18
              Width = 141
              Height = 24
              TabOrder = 5
              OnKeyUp = edithos_phoneKeyUp
            end
            object btn_save: TButton
              Left = 823
              Top = 6
              Width = 57
              Height = 49
              Anchors = [akTop, akRight]
              Caption = #51200#51109
              TabOrder = 6
              OnClick = btn_saveClick
            end
          end
          object DBEdit1: TDBEdit
            Left = 110
            Top = 82
            Width = 131
            Height = 24
            DataField = 'HOS_NAME'
            DataSource = HosListSource
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 110
            Top = 116
            Width = 197
            Height = 24
            DataField = 'HOS_ID'
            DataSource = HosListSource
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 110
            Top = 147
            Width = 197
            Height = 24
            DataField = 'HOS_REP'
            DataSource = HosListSource
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 405
            Top = 79
            Width = 197
            Height = 24
            DataField = 'HOS_PHONE'
            DataSource = HosListSource
            TabOrder = 4
          end
          object DBEdit4: TDBEdit
            Left = 405
            Top = 147
            Width = 385
            Height = 24
            DataField = 'HOS_ADDRESS'
            DataSource = HosListSource
            TabOrder = 5
          end
          object grp_img: TGroupBox
            Left = 816
            Top = 71
            Width = 89
            Height = 114
            TabOrder = 6
            object img_id: TImage
              Left = 2
              Top = 18
              Width = 85
              Height = 94
              Align = alClient
              Anchors = [akTop, akRight, akBottom]
              Proportional = True
              Stretch = True
              ExplicitLeft = 1
              ExplicitTop = 17
            end
          end
          object Button2: TButton
            Left = 950
            Top = 71
            Width = 57
            Height = 50
            Anchors = [akTop, akRight]
            Caption = #51060#48120#51648
            TabOrder = 7
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 950
            Top = 129
            Width = 57
            Height = 50
            Anchors = [akTop, akRight]
            Caption = #49688#51221
            TabOrder = 8
            OnClick = Button3Click
          end
          object CheckBox1: TCheckBox
            Left = 222
            Top = 23
            Width = 83
            Height = 17
            Caption = #48337'    '#50896'(1)'
            TabOrder = 9
            OnClick = CheckBox1Click
          end
          object CheckBox2: TCheckBox
            Left = 304
            Top = 23
            Width = 75
            Height = 17
            Caption = #51312#47532#50896'(2)'
            TabOrder = 10
            OnClick = CheckBox2Click
          end
          object CheckBox3: TCheckBox
            Left = 389
            Top = 23
            Width = 70
            Height = 17
            Caption = #44144#47000#52376'(3)'
            TabOrder = 11
            OnClick = CheckBox3Click
          end
          object DBComboBox1: TDBComboBox
            Left = 247
            Top = 82
            Width = 60
            Height = 24
            DataField = 'HOS_PART'
            DataSource = HosListSource
            DropDownCount = 3
            Items.Strings = (
              '1'
              '2'
              '3')
            TabOrder = 12
          end
          object DBEdit6: TDBEdit
            Left = 405
            Top = 116
            Width = 197
            Height = 24
            DataField = 'HOS_PER'
            DataSource = HosListSource
            TabOrder = 13
          end
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 186
          Width = 1021
          Height = 379
          Align = alClient
          DataSource = HosListSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -17
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'HOS_NAME'
              Width = 192
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HOS_ADDRESS'
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HOS_PHONE'
              Width = 178
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HOS_PER'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HOS_PART'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 98
              Visible = True
            end>
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #54408#47785#44288#47532
      ImageIndex = 3
      object pnl_haeder3: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 177
        Align = alTop
        TabOrder = 0
        object lb_item2: TLabel
          Left = 69
          Top = 81
          Width = 22
          Height = 16
          Caption = #54408#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lb_price2: TLabel
          Left = 69
          Top = 116
          Width = 22
          Height = 16
          Caption = #45800#44032
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lb_size: TLabel
          Left = 69
          Top = 150
          Width = 22
          Height = 16
          Caption = #44508#44201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lb_ea: TLabel
          Left = 509
          Top = 80
          Width = 22
          Height = 16
          Caption = #45800#50948
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lb_blank: TLabel
          Left = 509
          Top = 116
          Width = 22
          Height = 16
          Caption = #48708#44256
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbedit_item: TDBEdit
          Left = 114
          Top = 80
          Width = 329
          Height = 24
          DataField = 'ITEM_NAME'
          DataSource = ItemSource1
          TabOrder = 1
        end
        object dbedit_price: TDBEdit
          Left = 114
          Top = 111
          Width = 329
          Height = 24
          DataField = 'ITEM_PRICE'
          DataSource = ItemSource1
          TabOrder = 2
        end
        object dbedit_size: TDBEdit
          Left = 114
          Top = 146
          Width = 329
          Height = 24
          DataField = 'ITEM_SIZE'
          DataSource = ItemSource1
          TabOrder = 3
        end
        object dbedit_ea: TDBEdit
          Left = 562
          Top = 76
          Width = 329
          Height = 24
          DataField = 'ITEM_EA'
          DataSource = ItemSource1
          TabOrder = 4
        end
        object dbedit_blank: TDBEdit
          Left = 562
          Top = 112
          Width = 329
          Height = 24
          DataField = 'ITEM_BLANK'
          DataSource = ItemSource1
          TabOrder = 5
        end
        object pnl_header_h2: TPanel
          Left = 1
          Top = 1
          Width = 1021
          Height = 61
          Align = alTop
          TabOrder = 0
          DesignSize = (
            1021
            61)
          object lb_item: TLabel
            Left = 28
            Top = 25
            Width = 22
            Height = 16
            Caption = #54408#47749
          end
          object lb_price: TLabel
            Left = 264
            Top = 25
            Width = 22
            Height = 16
            Caption = #45800#44032
          end
          object edit_item: TEdit
            Left = 94
            Top = 22
            Width = 127
            Height = 24
            TabOrder = 0
            OnKeyUp = edit_itemKeyUp
          end
          object edit_price: TEdit
            Left = 310
            Top = 22
            Width = 132
            Height = 24
            TabOrder = 1
            OnKeyUp = edit_priceKeyUp
          end
          object btn_serch3: TButton
            Left = 701
            Top = 5
            Width = 58
            Height = 49
            Anchors = [akTop, akRight]
            Caption = #44160#49353
            TabOrder = 2
            OnClick = btn_serch3Click
          end
          object btn_add3: TButton
            Left = 765
            Top = 5
            Width = 58
            Height = 49
            Anchors = [akTop, akRight]
            Caption = #52628#44032
            TabOrder = 3
            OnClick = btn_add3Click
          end
          object btn_save3: TButton
            Left = 830
            Top = 5
            Width = 58
            Height = 49
            Anchors = [akTop, akRight]
            Caption = #51200#51109
            TabOrder = 4
            OnClick = btn_save3Click
          end
          object btn_delet3: TButton
            Left = 893
            Top = 5
            Width = 58
            Height = 49
            Anchors = [akTop, akRight]
            Caption = #49325#51228
            TabOrder = 5
            OnClick = btn_delet3Click
          end
          object Button1: TButton
            Left = 957
            Top = 5
            Width = 57
            Height = 49
            Anchors = [akTop, akRight]
            Caption = #45803#44592
            TabOrder = 6
            OnClick = Button1Click
          end
        end
      end
      object pnl_main3: TPanel
        Left = 0
        Top = 177
        Width = 1023
        Height = 389
        Align = alClient
        TabOrder = 1
        object DBGrid3: TDBGrid
          Left = 1
          Top = 1
          Width = 1021
          Height = 387
          Align = alClient
          DataSource = ItemSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #50900#48324#54633#44228
      ImageIndex = 2
      object pnl_haeder4: TPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 65
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1023
          65)
        object Label1: TLabel
          Left = 207
          Top = 24
          Width = 22
          Height = 16
          Caption = #45216#51676
        end
        object Label2: TLabel
          Left = 400
          Top = 24
          Width = 33
          Height = 16
          Caption = #49345#54840#47749
        end
        object Label3: TLabel
          Left = 31
          Top = 24
          Width = 33
          Height = 16
          Caption = #44160#49353#49692
        end
        object Button5: TButton
          Left = 949
          Top = 9
          Width = 57
          Height = 49
          Anchors = [akTop, akRight]
          Caption = #45803#44592
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button4: TButton
          Left = 886
          Top = 9
          Width = 57
          Height = 49
          Anchors = [akTop, akRight]
          Caption = #50641#49472
          TabOrder = 1
        end
        object Button6: TButton
          Left = 823
          Top = 9
          Width = 57
          Height = 49
          Anchors = [akTop, akRight]
          Caption = #44536#47000#54532
          TabOrder = 2
          OnClick = Button6Click
        end
        object Edit1: TEdit
          Left = 241
          Top = 20
          Width = 121
          Height = 24
          TabOrder = 3
          OnKeyUp = Edit1KeyUp
        end
        object Edit2: TEdit
          Left = 456
          Top = 20
          Width = 161
          Height = 24
          TabOrder = 4
          OnKeyUp = Edit2KeyUp
        end
        object ComboBox1: TComboBox
          Left = 87
          Top = 20
          Width = 74
          Height = 24
          TabOrder = 5
          Text = #45216#51676
          OnChange = ComboBox1Change
          Items.Strings = (
            #45216#51676
            #49345#54840
            #54408#47785)
        end
      end
      object pnl_main4: TPanel
        Left = 0
        Top = 65
        Width = 1023
        Height = 501
        Align = alClient
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 1021
          Height = 499
          Align = alClient
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'TR_DATA'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HOS_NAME'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEM_NAME'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TR_ITEM_NUM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ITEM_PRICE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TR_RESULT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TR_TAX'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TR_FIGURE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TR_BLANK'
              Width = 129
              Visible = True
            end>
        end
      end
    end
  end
  object HosListSource: TDataSource
    DataSet = DataModule5.HosQuery
    OnDataChange = HosListSourceDataChange
    Left = 136
    Top = 536
  end
  object ItemSource1: TDataSource
    DataSet = DataModule5.ItemQuery
    Left = 216
    Top = 536
  end
  object imgdialog: TOpenDialog
    Left = 48
    Top = 536
  end
  object tradeSource1: TDataSource
    DataSet = DataModule5.TradeQuery
    Left = 296
    Top = 536
  end
  object DataSource1: TDataSource
    DataSet = DataModule5.FDQuery1
    Left = 376
    Top = 536
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 512
    Top = 312
  end
end
