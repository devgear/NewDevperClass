object FormSub: TFormSub
  Left = 0
  Top = 0
  ClientHeight = 674
  ClientWidth = 1113
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object pnl_sub_Haeder: TPanel
    Left = 0
    Top = 0
    Width = 1113
    Height = 217
    Align = alTop
    TabOrder = 0
    object lb_name: TLabel
      Left = 23
      Top = 22
      Width = 57
      Height = 16
      Caption = #48337'   '#50896'   '#47749
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb_phone: TLabel
      Left = 22
      Top = 137
      Width = 56
      Height = 16
      Caption = #51204' '#54868' '#48264' '#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb_address: TLabel
      Left = 21
      Top = 174
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
    object lb_Id: TLabel
      Left = 22
      Top = 99
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
    object Label1: TLabel
      Left = 23
      Top = 63
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
    object dedit_name: TDBEdit
      Left = 95
      Top = 19
      Width = 370
      Height = 24
      DataField = 'HOS_NAME'
      DataSource = FormMain.HosListSource
      TabOrder = 0
    end
    object dedit_id: TDBEdit
      Left = 95
      Top = 94
      Width = 370
      Height = 24
      DataField = 'HOS_ID'
      DataSource = FormMain.HosListSource
      TabOrder = 2
    end
    object dedit_phone: TDBEdit
      Left = 95
      Top = 132
      Width = 370
      Height = 24
      DataField = 'HOS_PHONE'
      DataSource = FormMain.HosListSource
      TabOrder = 3
    end
    object dedit_address: TDBEdit
      Left = 95
      Top = 171
      Width = 370
      Height = 24
      DataField = 'HOS_ADDRESS'
      DataSource = FormMain.HosListSource
      TabOrder = 4
    end
    object dedit_rep: TDBEdit
      Left = 95
      Top = 58
      Width = 370
      Height = 24
      DataField = 'HOS_REP'
      DataSource = FormMain.HosListSource
      TabOrder = 1
    end
    object pnl_right: TPanel
      Left = 600
      Top = 1
      Width = 512
      Height = 215
      Align = alRight
      TabOrder = 5
      DesignSize = (
        512
        215)
      object lb_ea: TLabel
        Left = 260
        Top = 96
        Width = 46
        Height = 16
        Caption = #49688'      '#47049
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lb_iteamname: TLabel
        Left = 25
        Top = 134
        Width = 46
        Height = 16
        Caption = #54408'      '#47749
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lb_result: TLabel
        Left = 260
        Top = 134
        Width = 46
        Height = 16
        Caption = #48708'      '#44256
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lb_date: TLabel
        Left = 25
        Top = 96
        Width = 46
        Height = 16
        Caption = #45216'      '#51676
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 173
        Width = 50
        Height = 16
        Caption = #54633'       '#44228
      end
      object btn_cash: TButton
        Left = 407
        Top = 28
        Width = 71
        Height = 37
        Caption = #44144#47000#47749#49464#49436
        TabOrder = 4
        OnClick = btn_cashClick
      end
      object btn_save: TButton
        Left = 117
        Top = 28
        Width = 71
        Height = 37
        Caption = #51200#51109
        TabOrder = 1
        OnClick = btn_saveClick
      end
      object btn_add: TButton
        Left = 21
        Top = 28
        Width = 71
        Height = 37
        Caption = #52628#44032
        TabOrder = 0
        OnClick = btn_addClick
      end
      object btn_close: TButton
        Left = 306
        Top = 28
        Width = 71
        Height = 37
        Caption = #45803#44592
        TabOrder = 3
        OnClick = btn_closeClick
      end
      object DBEdit1: TDBEdit
        Left = 111
        Top = 93
        Width = 121
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'TR_DATA'
        DataSource = TradeSource
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 340
        Top = 131
        Width = 121
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'TR_BLANK'
        DataSource = TradeSource
        TabOrder = 9
      end
      object Button1: TButton
        Left = 209
        Top = 28
        Width = 71
        Height = 37
        Caption = #49325#51228
        TabOrder = 2
        OnClick = Button1Click
      end
      object DBEdit4: TDBEdit
        Left = 339
        Top = 93
        Width = 121
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'TR_ITEM_NUM'
        DataSource = TradeSource
        TabOrder = 8
        OnExit = DBEdit4Exit
      end
      object DBEdit3: TDBEdit
        Left = 111
        Top = 170
        Width = 121
        Height = 24
        Anchors = [akTop, akRight]
        DataField = 'TR_RESULT'
        DataSource = TradeSource
        TabOrder = 7
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 111
        Top = 131
        Width = 122
        Height = 24
        DataField = 'ITEM_SEQ'
        DataSource = TradeSource
        KeyField = 'ITEM_SEQ'
        ListField = 'ITEM_NAME'
        ListSource = FormMain.ItemSource1
        TabOrder = 6
        OnKeyUp = DBLookupComboBox1KeyUp
      end
    end
  end
  object pnl_sub_main: TPanel
    Left = 0
    Top = 217
    Width = 1113
    Height = 457
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1111
      Height = 455
      Align = alClient
      DataSource = TradeSource
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
      Columns = <
        item
          Expanded = False
          FieldName = 'TR_DATA'
          Width = 159
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
          FieldName = 'TR_RESULT'
          Width = 141
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TR_TAX'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEM_PRICE'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TR_BLANK'
          Width = 252
          Visible = True
        end>
    end
    object Memo1: TMemo
      Left = 837
      Top = 104
      Width = 185
      Height = 193
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
    end
  end
  object TradeSource: TDataSource
    DataSet = DataModule5.TradeQuery
    Left = 624
    Top = 616
  end
  object frxReport1: TfrxReport
    Version = '5.5.11'
    DataSet = frxDBDataset2
    DataSetName = 'user'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42786.564911296300000000
    ReportOptions.LastChange = 42794.715518553200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 936
    Top = 616
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 're'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'user'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape16: TfrxShapeView
        Width = 680.315400000000000000
        Height = 445.984540000000000000
      end
      object Shape23: TfrxShapeView
        Top = 366.614410000000000000
        Width = 680.315400000000000000
        Height = 22.677180000000000000
      end
      object Shape25: TfrxShapeView
        Top = 389.291590000000000000
        Width = 75.590600000000000000
        Height = 37.795300000000000000
      end
      object Shape26: TfrxShapeView
        Left = 226.771800000000000000
        Top = 389.291590000000000000
        Width = 75.590600000000000000
        Height = 37.795300000000000000
      end
      object Shape27: TfrxShapeView
        Left = 498.897960000000000000
        Top = 389.291590000000000000
        Width = 75.590600000000000000
        Height = 37.795300000000000000
      end
      object Shape24: TfrxShapeView
        Top = 389.291590000000000000
        Width = 680.315400000000000000
        Height = 37.795300000000000000
      end
      object Shape17: TfrxShapeView
        Left = 37.795300000000000000
        Top = 207.874150000000000000
        Width = 226.771800000000000000
        Height = 181.417440000000000000
      end
      object Shape20: TfrxShapeView
        Left = 529.134200000000000000
        Top = 207.874150000000000000
        Width = 151.181200000000000000
        Height = 181.417440000000000000
      end
      object Shape18: TfrxShapeView
        Left = 264.567100000000000000
        Top = 207.874150000000000000
        Width = 113.385900000000000000
        Height = 181.417440000000000000
      end
      object Shape8: TfrxShapeView
        Left = 377.953000000000000000
        Top = 132.283550000000000000
        Width = 302.362400000000000000
        Height = 75.590600000000000000
      end
      object Shape6: TfrxShapeView
        Left = 37.795300000000000000
        Top = 132.283550000000000000
        Width = 302.362400000000000000
        Height = 75.590600000000000000
      end
      object Shape1: TfrxShapeView
        Top = 18.897650000000000000
        Width = 340.157700000000000000
        Height = 188.976500000000000000
      end
      object Shape2: TfrxShapeView
        Left = 339.716760000000000000
        Top = 18.897650000000000000
        Width = 340.157700000000000000
        Height = 188.976500000000000000
      end
      object Shape10: TfrxShapeView
        Left = 377.953000000000000000
        Top = 18.897650000000000000
        Width = 75.590600000000000000
        Height = 188.976500000000000000
      end
      object Shape9: TfrxShapeView
        Left = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 75.590600000000000000
        Height = 188.976500000000000000
      end
      object Shape7: TfrxShapeView
        Left = 377.953000000000000000
        Top = 56.692950000000000000
        Width = 302.362400000000000000
        Height = 37.795300000000000000
      end
      object Shape5: TfrxShapeView
        Left = 37.795300000000000000
        Top = 56.692950000000000000
        Width = 302.362400000000000000
        Height = 37.795300000000000000
      end
      object Shape3: TfrxShapeView
        Top = 18.897650000000000000
        Width = 37.795300000000000000
        Height = 188.976500000000000000
      end
      object Shape4: TfrxShapeView
        Left = 340.157700000000000000
        Top = 18.897650000000000000
        Width = 37.795300000000000000
        Height = 188.976500000000000000
      end
      object Memo1: TfrxMemoView
        Left = 11.338590000000000000
        Top = 41.574830000000000000
        Width = 18.897650000000000000
        Height = 151.181200000000000000
        Memo.UTF8W = (
          #44277
          ''
          #44553
          ''
          #48155
          ''
          #45716
          ''
          #51088)
      end
      object Memo2: TfrxMemoView
        Left = 353.275820000000000000
        Top = 30.236240000000000000
        Width = 15.118120000000000000
        Height = 162.519790000000000000
        Memo.UTF8W = (
          ''
          #44277
          ''
          ''
          ''
          #44553
          ''
          ''
          ''
          #51088)
      end
      object Memo3: TfrxMemoView
        Left = 45.354360000000000000
        Top = 30.236240000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #49324#50629#51088#48264#54840)
      end
      object Memo4: TfrxMemoView
        Left = 45.354360000000000000
        Top = 68.031540000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #49345'       '#54840)
      end
      object Memo5: TfrxMemoView
        Left = 387.850650000000000000
        Top = 30.236240000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #49324#50629#51088#48264#54840)
      end
      object Memo6: TfrxMemoView
        Left = 387.850650000000000000
        Top = 68.031540000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #49345'       '#54840)
      end
      object Memo7: TfrxMemoView
        Left = 45.354360000000000000
        Top = 162.519790000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #51452'       '#49548)
      end
      object Memo8: TfrxMemoView
        Left = 387.850650000000000000
        Top = 162.519790000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #51452'       '#49548)
      end
      object Memo9: TfrxMemoView
        Left = 45.354360000000000000
        Top = 105.826840000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #45824'  '#54364'  '#51088)
      end
      object Memo10: TfrxMemoView
        Left = 387.850650000000000000
        Top = 105.826840000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #45824'  '#54364'  '#51088)
      end
      object Shape11: TfrxShapeView
        Top = 207.874150000000000000
        Width = 680.315400000000000000
        Height = 22.677180000000000000
      end
      object Memo11: TfrxMemoView
        Left = 6.779530000000000000
        Top = 210.433210000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #49692#48264)
      end
      object Memo12: TfrxMemoView
        Left = 89.149660000000000000
        Top = 210.433210000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          '   '#54408'                     '#47749)
      end
      object Memo13: TfrxMemoView
        Left = 293.023810000000000000
        Top = 210.433210000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #49688'         '#47049)
      end
      object Memo14: TfrxMemoView
        Left = 412.968770000000000000
        Top = 210.433210000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #45800'           '#44032)
      end
      object Memo15: TfrxMemoView
        Left = 563.149970000000000000
        Top = 210.433210000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #44552'          '#50529)
      end
      object Shape12: TfrxShapeView
        Top = 230.551330000000000000
        Width = 680.315400000000000000
        Height = 22.677180000000000000
      end
      object Shape13: TfrxShapeView
        Top = 253.228510000000000000
        Width = 680.315400000000000000
        Height = 22.677180000000000000
      end
      object Shape14: TfrxShapeView
        Top = 275.905690000000000000
        Width = 680.315400000000000000
        Height = 22.677180000000000000
      end
      object Shape15: TfrxShapeView
        Top = 298.582870000000000000
        Width = 680.315400000000000000
        Height = 22.677180000000000000
      end
      object Shape21: TfrxShapeView
        Top = 321.260050000000000000
        Width = 680.315400000000000000
        Height = 22.677180000000000000
      end
      object Shape22: TfrxShapeView
        Top = 343.937230000000000000
        Width = 680.315400000000000000
        Height = 22.677180000000000000
      end
      object Memo16: TfrxMemoView
        Left = 11.338590000000000000
        Top = 400.630180000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #44277#44553#44032#50529)
      end
      object Memo17: TfrxMemoView
        Left = 239.110390000000000000
        Top = 400.630180000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #48512'  '#44032'  '#49464)
      end
      object Memo18: TfrxMemoView
        Left = 511.236550000000000000
        Top = 400.630180000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #54633'      '#44228)
      end
      object reUSER_NAME: TfrxMemoView
        Left = 468.661720000000000000
        Top = 68.031540000000000000
        Width = 200.315090000000000000
        Height = 18.897650000000000000
        DataField = 'USER_NAME'
        DataSet = frxDBDataset2
        DataSetName = 'user'
        Memo.UTF8W = (
          '[user."USER_NAME"]')
      end
      object reUSER_ADDRESS: TfrxMemoView
        Left = 468.661720000000000000
        Top = 158.740260000000000000
        Width = 200.315090000000000000
        Height = 18.897650000000000000
        DataField = 'USER_ADDRESS'
        DataSet = frxDBDataset2
        DataSetName = 'user'
        Memo.UTF8W = (
          '[user."USER_ADDRESS"]')
      end
      object reUSER_ID: TfrxMemoView
        Left = 468.661720000000000000
        Top = 30.236240000000000000
        Width = 200.315090000000000000
        Height = 18.897650000000000000
        DataField = 'USER_ID'
        DataSet = frxDBDataset2
        DataSetName = 'user'
        DisplayFormat.FormatStr = 'MMM-MM-MMMMM'
        DisplayFormat.Kind = fkNumeric
        Memo.UTF8W = (
          '[user."USER_ID"]')
      end
      object reUSER_REP: TfrxMemoView
        Left = 468.661720000000000000
        Top = 105.826840000000000000
        Width = 200.315090000000000000
        Height = 18.897650000000000000
        DataField = 'USER_REP'
        DataSet = frxDBDataset2
        DataSetName = 'user'
        Memo.UTF8W = (
          '[user."USER_REP"]')
      end
      object Date: TfrxMemoView
        Left = 574.488560000000000000
        Top = 3.000000000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = 'YYYY'#45380' MM'#50900' DD'#51068
        DisplayFormat.Kind = fkDateTime
        Memo.UTF8W = (
          '[Date]')
      end
      object Memo19: TfrxMemoView
        Left = 7.559060000000000000
        Top = 234.330860000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          '  1')
      end
      object Memo20: TfrxMemoView
        Left = 7.559060000000000000
        Top = 257.008040000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          '  2')
      end
      object Memo21: TfrxMemoView
        Left = 3.779530000000000000
        Top = 3.779530000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          'Tel.')
      end
      object frxDBDataset1HOS_NAME: TfrxMemoView
        Left = 124.724490000000000000
        Top = 68.031540000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'HOS_NAME'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."HOS_NAME"]')
      end
      object frxDBDataset1HOS_ID: TfrxMemoView
        Left = 124.724490000000000000
        Top = 30.236240000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'HOS_ID'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."HOS_ID"]')
      end
      object frxDBDataset1HOS_REP: TfrxMemoView
        Left = 124.724490000000000000
        Top = 105.826840000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'HOS_REP'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."HOS_REP"]')
      end
      object frxDBDataset1HOS_ADDRESS: TfrxMemoView
        Left = 120.944960000000000000
        Top = 147.401670000000000000
        Width = 207.874150000000000000
        Height = 52.913420000000000000
        DataField = 'HOS_ADDRESS'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."HOS_ADDRESS"]')
      end
      object userUSER_PHONE: TfrxMemoView
        Left = 30.236240000000000000
        Top = 3.779530000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'USER_PHONE'
        DataSet = frxDBDataset2
        DataSetName = 'user'
        Memo.UTF8W = (
          '[user."USER_PHONE"]')
      end
      object reITEM_NAME: TfrxMemoView
        Left = 86.929190000000000000
        Top = 234.330860000000000000
        Width = 128.504020000000000000
        Height = 86.929190000000000000
        DataField = 'ITEM_NAME'
        DataSet = frxDBDataset3
        DataSetName = 're'
        Memo.UTF8W = (
          '[re."ITEM_NAME"]')
      end
      object reTR_ITEM_NUM: TfrxMemoView
        Left = 283.464750000000000000
        Top = 234.330860000000000000
        Width = 79.370130000000000000
        Height = 86.929190000000000000
        DataField = 'TR_ITEM_NUM'
        DataSet = frxDBDataset3
        DataSetName = 're'
        Memo.UTF8W = (
          '[re."TR_ITEM_NUM"]')
      end
      object reITEM_PRICE: TfrxMemoView
        Left = 411.968770000000000000
        Top = 230.551330000000000000
        Width = 79.370130000000000000
        Height = 90.708720000000000000
        DataField = 'ITEM_PRICE'
        DataSet = frxDBDataset3
        DataSetName = 're'
        Memo.UTF8W = (
          '[re."ITEM_PRICE"]')
      end
      object reTR_TAX: TfrxMemoView
        Left = 317.480520000000000000
        Top = 400.630180000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'TR_TAX'
        DataSet = frxDBDataset3
        DataSetName = 're'
        Memo.UTF8W = (
          '[re."TR_TAX"]')
      end
      object reTR_RESULT: TfrxMemoView
        Left = 86.929190000000000000
        Top = 400.630180000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'TR_RESULT'
        DataSet = frxDBDataset3
        DataSetName = 're'
        Memo.UTF8W = (
          '[re."TR_RESULT"]')
      end
      object reTR_FIGURE: TfrxMemoView
        Left = 582.047620000000000000
        Top = 400.630180000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'TR_FIGURE'
        DataSet = frxDBDataset3
        DataSetName = 're'
        Memo.UTF8W = (
          '[re."TR_FIGURE"]')
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'user'
    CloseDataSource = True
    FieldAliases.Strings = (
      'USER_NAME=USER_NAME'
      'USER_ADDRESS=USER_ADDRESS'
      'USER_ID=USER_ID'
      'USER_REP=USER_REP'
      'USER_PHONE=USER_PHONE')
    DataSet = DataModule5.user_report_query
    BCDToCurrency = False
    Left = 840
    Top = 616
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = True
    DataSet = DataModule5.hos_report_query
    BCDToCurrency = False
    Left = 728
    Top = 616
  end
  object OpenDialog1: TOpenDialog
    Left = 536
    Top = 616
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 're'
    CloseDataSource = True
    FieldAliases.Strings = (
      'TR_HOS_NAME=TR_HOS_NAME'
      'TR_ITEM=TR_ITEM'
      'TR_DATA=TR_DATA'
      'TR_RESULT=TR_RESULT'
      'TR_ITEM_NUM=TR_ITEM_NUM'
      'HOS_SEQ=HOS_SEQ'
      'ITEM_SEQ=ITEM_SEQ'
      'TR_SEQ=TR_SEQ'
      'TR_PRICE=TR_PRICE'
      'TR_TAX=TR_TAX'
      'TR_BLANK=TR_BLANK'
      'TR_FIGURE=TR_FIGURE'
      'ITEM_PRICE=ITEM_PRICE'
      'ITEM_NAME=ITEM_NAME'
      'HOS_NAME=HOS_NAME')
    DataSet = DataModule5.FDQuery1
    BCDToCurrency = False
    Left = 840
    Top = 560
  end
end
