object frResult: TfrResult
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frResult'
  ClientHeight = 600
  ClientWidth = 800
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
    Left = 0
    Top = 0
    Width = 108
    Height = 33
    Caption = #44160#49353#54616#44592
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btDetailView: TButton
    Left = 416
    Top = 16
    Width = 75
    Height = 25
    Caption = #49345#49464#48372#44592
    TabOrder = 0
    OnClick = btDetailViewClick
  end
  object btProgress: TButton
    Left = 497
    Top = 16
    Width = 75
    Height = 25
    Caption = #51216#49688#52628#51060
    TabOrder = 1
    OnClick = btProgressClick
  end
  object btPrint: TButton
    Left = 578
    Top = 16
    Width = 75
    Height = 25
    Caption = #51064#49604
    TabOrder = 2
  end
  object AdvStringGrid1: TAdvStringGrid
    Left = 16
    Top = 216
    Width = 737
    Height = 385
    Cursor = crDefault
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    Version = '5.0.2.0'
  end
  object Edit2: TEdit
    Left = 167
    Top = 170
    Width = 82
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 4
    Text = #44160#49353#51068#51088#51333#47308
  end
  object Edit4: TEdit
    Left = 72
    Top = 170
    Width = 81
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 5
    Text = #44160#49353#51068#51088#49884#51089
  end
  object btSearch: TButton
    Left = 632
    Top = 168
    Width = 75
    Height = 25
    Caption = #44160#49353
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 255
    Top = 170
    Width = 75
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 7
    Text = 'ComboBox1'
  end
  object 검색조건: TEdit
    Left = 472
    Top = 170
    Width = 121
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 8
    Text = #44160#49353#51312#44148
  end
  object btResultClose: TButton
    Left = 659
    Top = 16
    Width = 75
    Height = 25
    Caption = #51333#47308
    TabOrder = 9
    OnClick = btResultCloseClick
  end
end
