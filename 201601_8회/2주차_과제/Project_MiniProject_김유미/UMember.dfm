object Member: TMember
  Left = 0
  Top = 0
  Caption = 'Member'
  ClientHeight = 462
  ClientWidth = 517
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 86
    Width = 497
    Height = 185
    DataSource = DataModule1.DsMember
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 497
    Height = 72
    TabOrder = 1
    object LID: TLabel
      Left = 16
      Top = 12
      Width = 26
      Height = 13
      Caption = 'I     D'
    end
    object LName: TLabel
      Left = 16
      Top = 41
      Width = 28
      Height = 13
      Caption = #51060'  '#47492
    end
    object Label3: TLabel
      Left = 288
      Top = 12
      Width = 33
      Height = 13
      Caption = #44160#49353#49692
    end
    object sbFirst: TSpeedButton
      Left = 298
      Top = 36
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = sbFirstClick
    end
    object sbPrior: TSpeedButton
      Left = 341
      Top = 36
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
      OnClick = sbPriorClick
    end
    object sbNext: TSpeedButton
      Left = 380
      Top = 36
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
      OnClick = sbNextClick
    end
    object sbLast: TSpeedButton
      Left = 423
      Top = 36
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = sbLastClick
    end
    object eID: TEdit
      Left = 72
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = eIDChange
      OnKeyPress = eIDKeyPress
    end
    object eName: TEdit
      Left = 72
      Top = 38
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = eNameChange
      OnKeyPress = eNameKeyPress
    end
    object ComboBox1: TComboBox
      Left = 327
      Top = 9
      Width = 145
      Height = 21
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'ID'
        'NAME'
        'TEAM')
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 277
    Width = 497
    Height = 164
    TabOrder = 2
    object Name: TLabel
      Left = 24
      Top = 24
      Width = 28
      Height = 13
      Caption = #51060'  '#47492
    end
    object Team: TLabel
      Left = 278
      Top = 24
      Width = 28
      Height = 13
      Caption = #54016'  '#47749
    end
    object bInsert: TButton
      Left = 24
      Top = 64
      Width = 75
      Height = 25
      Caption = #51077#47141
      TabOrder = 0
      OnClick = bInsertClick
    end
    object bPost: TButton
      Left = 127
      Top = 64
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 1
      OnClick = bPostClick
    end
    object bEdit: TButton
      Left = 229
      Top = 64
      Width = 75
      Height = 25
      Caption = #49688#51221
      TabOrder = 2
      OnClick = bEditClick
    end
    object bDelete: TButton
      Left = 336
      Top = 64
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 3
      OnClick = bDeleteClick
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 327
      Top = 16
      Width = 145
      Height = 21
      DataField = 'M_TEAM'
      DataSource = DataModule1.DsMember
      KeyField = 'D_ID'
      ListField = 'D_TEAM'
      ListSource = DataModule1.DsDept
      TabOrder = 4
    end
    object dbeName: TDBEdit
      Left = 72
      Top = 19
      Width = 121
      Height = 21
      DataField = 'M_NAME'
      DataSource = DataModule1.DsMember
      TabOrder = 5
    end
  end
end
