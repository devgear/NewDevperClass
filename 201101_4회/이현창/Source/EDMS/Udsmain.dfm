object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #51204#51088' '#47928#49436' '#44208#51228' '#54532#47196#44536#47016
  ClientHeight = 517
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 212
    Top = 49
    Height = 449
    ExplicitLeft = 208
    ExplicitTop = 200
    ExplicitHeight = 100
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 22
    Width = 830
    Height = 27
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar2
        ImageIndex = -1
        MinHeight = 23
        Width = 826
      end>
    object ActionToolBar2: TActionToolBar
      Left = 9
      Top = 0
      Width = 817
      Height = 23
      ActionManager = ActionManager1
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
  end
  object Panel4: TPanel
    Left = 215
    Top = 49
    Width = 615
    Height = 449
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 209
      Width = 613
      Height = 5
      Cursor = crVSplit
      Align = alTop
      Beveled = True
      ExplicitTop = 181
      ExplicitWidth = 595
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 613
      Height = 208
      Align = alTop
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 611
        Height = 206
        Align = alClient
        TabOrder = 0
      end
      object TabControl1: TTabControl
        Left = 1
        Top = 1
        Width = 611
        Height = 206
        Align = alClient
        TabOrder = 1
        Tabs.Strings = (
          #48155#51008' '#47928#49436#54632
          #48372#45240' '#47928#49436#54632
          #51089#49457#51473' '#47928#49436
          #48152#47140' '#47928#49436)
        TabIndex = 0
        OnChange = TabControl1Change
        object MainGrid: TStringGrid
          Left = 4
          Top = 24
          Width = 603
          Height = 178
          Align = alClient
          ColCount = 9
          DefaultRowHeight = 20
          FixedCols = 0
          GridLineWidth = 2
          Options = [goFixedHorzLine, goHorzLine, goRowSizing, goColSizing, goRowSelect]
          TabOrder = 0
          OnDrawCell = MainGridDrawCell
          OnSelectCell = MainGridSelectCell
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 214
      Width = 613
      Height = 234
      Align = alClient
      TabOrder = 1
      object Panel8: TPanel
        Left = 360
        Top = 1
        Width = 252
        Height = 232
        Align = alRight
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 250
          Height = 56
          Align = alTop
          TabOrder = 0
          object returnButton: TButton
            Tag = -1
            AlignWithMargins = True
            Left = 127
            Top = 4
            Width = 119
            Height = 48
            Align = alRight
            Caption = #48152#47140
            TabOrder = 0
            OnClick = SettleButtonClick
          end
          object SettleButton: TButton
            Tag = 1
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 117
            Height = 48
            Align = alRight
            Caption = #44208#51228' '#52376#47532
            TabOrder = 1
            OnClick = SettleButtonClick
          end
          object Edit_Btn: TButton
            Tag = 1
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 0
            Height = 48
            Align = alClient
            Caption = #47928#49436' '#49688#51221
            TabOrder = 2
            Visible = False
            OnClick = Edit_BtnClick
          end
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 57
          Width = 250
          Height = 174
          Align = alClient
          Caption = #44208#51228' '#45236#50669
          TabOrder = 1
          object LogGrid: TDBGrid
            Left = 2
            Top = 15
            Width = 246
            Height = 157
            Align = alClient
            DataSource = dm.LogSource
            ImeName = 'Microsoft Office IME 2007'
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
      object ScrollBox1: TScrollBox
        Left = 1
        Top = 1
        Width = 359
        Height = 232
        HorzScrollBar.Position = 57
        VertScrollBar.Position = 341
        Align = alClient
        BiDiMode = bdLeftToRight
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentBiDiMode = False
        TabOrder = 1
        object ContPanel: TPanel
          AlignWithMargins = True
          Left = -7
          Top = -333
          Width = 675
          Height = 800
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = clBtnHighlight
          Ctl3D = True
          ParentBackground = False
          ParentCtl3D = False
          TabOrder = 0
          object Shape1: TShape
            Left = 24
            Top = 129
            Width = 633
            Height = 648
          end
          object Shape2: TShape
            Left = 24
            Top = 161
            Width = 633
            Height = 96
          end
          object Shape5: TShape
            Left = 24
            Top = 664
            Width = 633
            Height = 119
          end
          object Shape7: TShape
            Left = 24
            Top = 129
            Width = 121
            Height = 33
          end
          object Label9: TLabel
            Left = 43
            Top = 136
            Width = 84
            Height = 19
            Caption = #45216'          '#51676
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WriteDateLAbel: TLabel
            Left = 163
            Top = 136
            Width = 112
            Height = 19
            Caption = '----------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 43
            Top = 168
            Width = 84
            Height = 19
            Caption = #48156'          '#49888
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object TitleLable: TLabel
            Left = 8
            Top = 65
            Width = 665
            Height = 58
            Alignment = taCenter
            AutoSize = False
            Caption = #47928' '#49436' '#51228' '#47785
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -48
            Font.Name = 'Tahoma'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object Shape8: TShape
            Left = 24
            Top = 672
            Width = 121
            Height = 105
          end
          object Shape9: TShape
            Left = 144
            Top = 672
            Width = 513
            Height = 105
          end
          object Shape3: TShape
            Left = 144
            Top = 161
            Width = 513
            Height = 96
          end
          object Label11: TLabel
            Left = 163
            Top = 168
            Width = 95
            Height = 19
            Caption = #51060'          '#47492' :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 163
            Top = 193
            Width = 95
            Height = 19
            Caption = #48512'          '#49436' :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 163
            Top = 218
            Width = 95
            Height = 19
            Caption = #51649'          '#44553' :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SenderNameLabel: TLabel
            Left = 275
            Top = 168
            Width = 105
            Height = 19
            Caption = '---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SenderDeptLabel: TLabel
            Left = 275
            Top = 193
            Width = 105
            Height = 19
            Caption = '---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SenderClassLabel: TLabel
            Left = 275
            Top = 218
            Width = 105
            Height = 19
            Caption = '---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 163
            Top = 680
            Width = 95
            Height = 19
            Caption = #51060'          '#47492' :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 163
            Top = 705
            Width = 95
            Height = 19
            Caption = #48512'          '#49436' :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 163
            Top = 730
            Width = 95
            Height = 19
            Caption = #51649'          '#44553' :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RecvClassLabel: TLabel
            Left = 275
            Top = 730
            Width = 105
            Height = 19
            Caption = '---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RecvDeptLabel: TLabel
            Left = 275
            Top = 705
            Width = 105
            Height = 19
            Caption = '---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object recvNameLabel: TLabel
            Left = 275
            Top = 680
            Width = 105
            Height = 19
            Caption = '---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 43
            Top = 680
            Width = 89
            Height = 19
            Caption = #49688'           '#49888
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Shape4: TShape
            Left = 472
            Top = 672
            Width = 185
            Height = 105
          end
          object ContEdit: TRichEdit
            Left = 35
            Top = 267
            Width = 611
            Height = 381
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ImeName = 'Microsoft Office IME 2007'
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 830
    Height = 22
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #44404#47548
    Font.Style = []
    Spacing = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 498
    Width = 830
    Height = 19
    Panels = <>
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 212
    Height = 449
    Align = alLeft
    TabOrder = 4
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 204
      Height = 125
      Align = alTop
      Color = clInfoBk
      ParentBackground = False
      TabOrder = 0
      object ClassLabel: TLabel
        Left = 41
        Top = 68
        Width = 48
        Height = 13
        Caption = #51221#48372#50630#51020
      end
      object DeptLabel: TLabel
        Left = 41
        Top = 95
        Width = 48
        Height = 13
        Caption = #51221#48372#50630#51020
      end
      object IdLabel: TLabel
        Left = 41
        Top = 7
        Width = 48
        Height = 13
        Caption = #51221#48372#50630#51020
      end
      object Label1: TLabel
        Left = 11
        Top = 7
        Width = 24
        Height = 13
        Caption = #49324#48264
      end
      object Label2: TLabel
        Left = 11
        Top = 38
        Width = 24
        Height = 13
        Caption = #51060#47492
      end
      object Label3: TLabel
        Left = 11
        Top = 68
        Width = 24
        Height = 13
        Caption = #51649#44553
      end
      object Label4: TLabel
        Left = 11
        Top = 95
        Width = 24
        Height = 13
        Caption = #48512#49436
      end
      object NameLabel: TLabel
        Left = 41
        Top = 38
        Width = 48
        Height = 13
        Caption = #51221#48372#50630#51020
      end
      object LogoutBtn: TButton
        Left = 125
        Top = 7
        Width = 72
        Height = 34
        Caption = #47196#44536' '#50500#50883
        TabOrder = 0
        OnClick = act_logoutExecute
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 132
      Width = 210
      Height = 316
      Align = alClient
      TabOrder = 1
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 202
        Height = 152
        Align = alTop
        Caption = #51204#52404' '#48156#49888' '#51089#50629' '#51221#48372
        TabOrder = 0
        object sendInfoGrid: TStringGrid
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 192
          Height = 129
          Align = alClient
          ColCount = 2
          DefaultRowHeight = 20
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goHorzLine]
          TabOrder = 0
          ColWidths = (
            64
            63)
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 162
        Width = 202
        Height = 127
        Align = alTop
        Caption = #51204#52404' '#49688#49888' '#51089#50629' '#51221#48372
        TabOrder = 1
        object RecvInfoGrid: TStringGrid
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 192
          Height = 104
          Align = alClient
          ColCount = 2
          DefaultRowHeight = 20
          RowCount = 4
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goHorzLine]
          TabOrder = 0
          ColWidths = (
            64
            63)
        end
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = act_logout
              end
              item
                Action = act_close
              end>
            Caption = #54532#47196#44536#47016'(&Z)'
          end
          item
            Items = <
              item
                Action = act_WriteRep
              end>
            Caption = #44208#51228'(&Y)'
          end
          item
            Items = <
              item
                Action = act_Find
              end
              item
                Action = act_chart
              end>
            Caption = #51312#54924'(&X)'
          end>
        ActionBar = ActionMainMenuBar1
      end
      item
        Items = <
          item
            Action = act_WriteRep
          end
          item
            Action = act_Find
          end
          item
            Action = act_chart
          end>
        ActionBar = ActionToolBar2
      end>
    Images = ImageList1
    Left = 104
    Top = 128
    StyleName = 'Platform Default'
    object act_logout: TAction
      Category = #54532#47196#44536#47016
      Caption = #47196#44536#50500#50883'(&L)'
      OnExecute = act_logoutExecute
    end
    object act_close: TAction
      Category = #54532#47196#44536#47016
      Caption = #51333#47308'(&X)'
      OnExecute = act_closeExecute
    end
    object act_WriteRep: TAction
      Category = #44208#51228
      Caption = #47928#49436#51089#49457'(&W)'
      OnExecute = act_WriteRepExecute
    end
    object act_ModifyFlist: TAction
      Category = #49324#50857#51088
      Caption = #51600#44200#52286#44592' '#49444#51221'(&F)'
    end
    object act_Find: TAction
      Category = #51312#54924
      Caption = #44208#51228' '#51312#54924'(&S)'
      OnExecute = act_FindExecute
    end
    object act_chart: TAction
      Category = #51312#54924
      Caption = #52264#53944' '#48372#44592'(&C)'
    end
  end
  object ImageList1: TImageList
    Left = 32
    Top = 128
  end
end
