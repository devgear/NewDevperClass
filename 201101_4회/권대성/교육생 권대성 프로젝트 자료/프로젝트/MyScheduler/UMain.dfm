object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 673
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox5: TListBox
    Left = 369
    Top = 150
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox7: TListBox
    Left = 547
    Top = 150
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox6: TListBox
    Left = 458
    Top = 150
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 2
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox4: TListBox
    Left = 281
    Top = 150
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 3
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox3: TListBox
    Left = 192
    Top = 150
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 4
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox2: TListBox
    Left = 104
    Top = 150
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 5
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox1: TListBox
    Left = 16
    Top = 150
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    AutoComplete = False
    Color = clWhite
    Ctl3D = True
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 6
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 22
    Width = 650
    Height = 26
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Spacing = 0
    ExplicitWidth = 1084
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 650
    Height = 22
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #46027#50880
    Font.Style = []
    PersistentHotKeys = True
    Spacing = 0
    ExplicitWidth = 1084
  end
  object Panel1: TPanel
    Left = 0
    Top = 48
    Width = 650
    Height = 65
    Align = alTop
    TabOrder = 9
    ExplicitWidth = 1084
    object lbMonth: TLabel
      Left = 297
      Top = 0
      Width = 58
      Height = 64
      BiDiMode = bdRightToLeft
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object lbYear: TLabel
      Left = 184
      Top = 32
      Width = 44
      Height = 24
      Hint = #53364#47533#49884' '#51649#51217' '#51077#47141
      Caption = '2000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = lbYearClick
      OnMouseEnter = lbYearMouseEnter
    end
    object sbtnMDown: TSpeedButton
      Left = 274
      Top = 32
      Width = 20
      Height = 25
      Hint = #51648#45212#45804
      Caption = '<'
      OnClick = sbtnMDownClick
    end
    object sbtnMUp: TSpeedButton
      Left = 361
      Top = 32
      Width = 20
      Height = 25
      Hint = #45796#51020#45804
      Caption = '>'
      OnClick = sbtnMUpClick
    end
    object spbtnYear: TSpinButton
      Left = 234
      Top = 32
      Width = 20
      Height = 25
      Hint = #45380#46020' '#49440#53469
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      TabOrder = 0
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      OnDownClick = spbtnYearDownClick
      OnUpClick = spbtnYearUpClick
    end
    object edtYear: TEdit
      Left = 184
      Top = 33
      Width = 44
      Height = 21
      ImeName = 'Microsoft IME 2010'
      MaxLength = 4
      TabOrder = 1
      Visible = False
      OnChange = edtYearChange
      OnKeyPress = edtYearKeyPress
    end
    object btnToday: TButton
      Left = 698
      Top = 24
      Width = 38
      Height = 25
      Hint = #50724#45720' '#45216#51676#47196' '#51060#46041
      Caption = #50724#45720
      TabOrder = 2
      Visible = False
      OnClick = btnTodayClick
    end
    object TodayPanel: TPanel
      Left = 402
      Top = 33
      Width = 32
      Height = 23
      Hint = #50724#45720#47196' '#51060#46041
      Caption = #50724#45720
      Color = clCream
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 3
      OnClick = TodayPanelClick
      OnMouseEnter = TodayPanelMouseEnter
      OnMouseLeave = TodayPanelMouseLeave
    end
  end
  object ListBox8: TListBox
    Left = 16
    Top = 231
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 10
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox9: TListBox
    Left = 104
    Top = 231
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    Ctl3D = True
    ExtendedSelect = False
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 11
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseDown = ListBox9MouseDown
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox10: TListBox
    Left = 192
    Top = 231
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 12
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox11: TListBox
    Left = 281
    Top = 231
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 13
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox12: TListBox
    Left = 369
    Top = 231
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 14
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox13: TListBox
    Left = 458
    Top = 231
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 15
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox14: TListBox
    Left = 547
    Top = 231
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 16
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox15: TListBox
    Left = 16
    Top = 312
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 17
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox16: TListBox
    Left = 104
    Top = 312
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    ParentFont = False
    TabOrder = 18
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox17: TListBox
    Left = 192
    Top = 312
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 19
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox18: TListBox
    Left = 281
    Top = 312
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 20
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox19: TListBox
    Left = 370
    Top = 312
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 21
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox20: TListBox
    Left = 458
    Top = 312
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 22
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox21: TListBox
    Left = 547
    Top = 312
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 23
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox22: TListBox
    Left = 16
    Top = 393
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 24
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox23: TListBox
    Left = 104
    Top = 393
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 25
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox24: TListBox
    Left = 192
    Top = 393
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 26
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox25: TListBox
    Left = 281
    Top = 393
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 27
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox26: TListBox
    Left = 369
    Top = 393
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 28
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox27: TListBox
    Left = 458
    Top = 393
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 29
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox28: TListBox
    Left = 547
    Top = 393
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 30
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox29: TListBox
    Left = 16
    Top = 474
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 31
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox30: TListBox
    Left = 104
    Top = 474
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 32
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox31: TListBox
    Left = 192
    Top = 474
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 33
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox32: TListBox
    Left = 281
    Top = 474
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 34
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox33: TListBox
    Left = 369
    Top = 474
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 35
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox34: TListBox
    Left = 458
    Top = 474
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 36
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox35: TListBox
    Left = 547
    Top = 474
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 37
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox36: TListBox
    Left = 16
    Top = 555
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 38
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox37: TListBox
    Left = 104
    Top = 555
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 39
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox38: TListBox
    Left = 192
    Top = 555
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 40
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox39: TListBox
    Left = 281
    Top = 555
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 41
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox40: TListBox
    Left = 369
    Top = 555
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 42
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox41: TListBox
    Left = 458
    Top = 555
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 43
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object ListBox42: TListBox
    Left = 547
    Top = 555
    Width = 89
    Height = 81
    Style = lbOwnerDrawFixed
    Color = clWhite
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    TabOrder = 44
    OnClick = ListBoxAllClick
    OnDblClick = ListBoxAllDblClick
    OnDrawItem = ListBoxAllDrawItem
    OnMouseEnter = ListBoxAllMouseEnter
    OnMouseLeave = ListBoxAllMouseLeave
  end
  object Panel2: TPanel
    Left = 16
    Top = 121
    Width = 89
    Height = 30
    Caption = #51068
    TabOrder = 45
  end
  object Panel3: TPanel
    Left = 104
    Top = 121
    Width = 89
    Height = 30
    Caption = #50900
    TabOrder = 46
  end
  object Panel4: TPanel
    Left = 281
    Top = 121
    Width = 89
    Height = 30
    Caption = #49688
    TabOrder = 47
  end
  object Panel5: TPanel
    Left = 193
    Top = 121
    Width = 89
    Height = 30
    Caption = #54868
    TabOrder = 48
  end
  object Panel6: TPanel
    Left = 458
    Top = 121
    Width = 89
    Height = 30
    Caption = #44552
    TabOrder = 49
  end
  object Panel7: TPanel
    Left = 370
    Top = 121
    Width = 89
    Height = 30
    Caption = #47785
    TabOrder = 50
  end
  object Panel8: TPanel
    Left = 547
    Top = 121
    Width = 89
    Height = 30
    Caption = #53664
    TabOrder = 51
  end
  object DBGrid1: TDBGrid
    Left = 697
    Top = 393
    Width = 267
    Height = 109
    DataSource = DM.FindDayDataQuerySource
    ImeName = 'Microsoft IME 2010'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 52
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object testlist: TListBox
    Left = 706
    Top = 150
    Width = 121
    Height = 97
    ImeName = 'Microsoft IME 2010'
    ItemHeight = 13
    Items.Strings = (
      '1'
      '2'
      '3')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 53
  end
  object Button1: TButton
    Left = 874
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Button1'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 54
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 747
    Top = 119
    Width = 121
    Height = 21
    ImeName = 'Microsoft IME 2010'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 55
  end
  object DBGrid2: TDBGrid
    Left = 697
    Top = 520
    Width = 267
    Height = 116
    DataSource = DM.ScheduleTableSource
    ImeName = 'Microsoft IME 2010'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 56
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 654
    Width = 650
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 470
      end
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 100
      end>
    ParentShowHint = False
    ShowHint = True
    ExplicitTop = 638
    ExplicitWidth = 1084
  end
  object DBGrid3: TDBGrid
    Left = 698
    Top = 253
    Width = 267
    Height = 108
    DataSource = DM.SelectDataQuerySource
    ImeName = 'Microsoft IME 2010'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 58
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = FileExit1
            ImageIndex = 0
          end
          item
            Action = ListEdit
            Caption = #51204#52404' '#51068#51221' '#44288#47532'(&Z)'
            ImageIndex = 1
          end>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Items = <
              item
                Action = FileExit1
                ImageIndex = 0
              end>
            Caption = #54028#51068'(&Z)'
          end
          item
            Items = <
              item
                Action = ListEdit
                Caption = #51204#52404' '#51068#51221' '#44288#47532'(&Z)'
                ImageIndex = 1
              end>
            Caption = #51068#51221' '#44288#47532'(&Y)'
          end
          item
            Items = <
              item
                Action = TopAction
                Caption = #47564#46304#49324#46988'(&Z)'
                ImageIndex = 3
              end>
            Caption = #44592#53440'(&X)'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = ImageList1
    Left = 584
    Top = 8
    StyleName = 'Platform Default'
    object FileExit1: TFileExit
      Category = #54028#51068
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 0
    end
    object ListEdit: TAction
      Category = #51068#51221' '#44288#47532
      Caption = #51204#52404' '#51068#51221' '#44288#47532
      ImageIndex = 1
      OnExecute = ListEditExecute
    end
    object TopAction: TAction
      Category = #44592#53440
      Caption = #47564#46304#49324#46988
      ImageIndex = 3
      OnExecute = TopActionExecute
    end
    object AddAction: TAction
      Caption = #51068#51221' '#52628#44032
      OnExecute = AddActionExecute
    end
  end
  object ImageList1: TImageList
    Left = 512
    Top = 8
    Bitmap = {
      494C010104000A00040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      8600868686008686860086868600868686008686860086868600FFFFFF00C0C0
      C00086868600C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      860086868600868686008686860086868600868686008686860086868600FFFF
      FF0086868600FFFFFF0086868600868686000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00808080000000FF0080808000FFFFFF00000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00000000000000000000868686008686860086868600FFFFFF00FFFFFF00FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF000000FF000000FF000000FF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000008000
      0000FF00000080000000000000000000000086868600FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00808080000000FF0080808000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008000000000000000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      000080000000000000000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000FF008080800000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00800000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF0000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      00008000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF0000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00800000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF00808080008080800000FFFF00FFFFFF00808080000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF000000FF000000FF00FFFFFF0000FFFF00808080000000FF000000FF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF000000FF000000FF0080808000FFFFFF00808080000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFE00FFFFF0000FE3FE00FF83F
      0000F81FE00FE00FE007F40FF00FC007E007E007F00F8003E0078003F80F8003
      E0074001F0070001E0070000F0070001E0070000F0070001E0078001F00F0001
      E007C003F01F0001FFFFE00FF81F8003F81FF07FFE1F8003F81FF8FFFF1FC007
      F81FFFFFFF1FE00FFFFFFFFFFFBFF83F}
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 456
    Top = 8
    object popAddAction: TMenuItem
      Action = AddAction
    end
    object N2: TMenuItem
      Caption = #51068#51221' '#49688#51221
    end
    object N3: TMenuItem
      Caption = #51068#51221' '#49325#51228
    end
    object N4: TMenuItem
      Caption = #51204#52404' '#51068#51221
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 344
    Top = 8
  end
  object QueryTimer: TTimer
    Interval = 5000
    OnTimer = QueryTimerTimer
    Left = 392
    Top = 8
  end
end
