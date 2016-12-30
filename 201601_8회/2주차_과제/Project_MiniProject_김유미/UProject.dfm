object frmProject: TfrmProject
  Left = 0
  Top = 0
  Caption = 'Project'
  ClientHeight = 451
  ClientWidth = 520
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
    DataSource = DataModule1.DsProject
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
        FieldName = 'P_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_NAME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_STARTDATE'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_ENDDATE'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_MANAGER_ID'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_MEMBERCOUNT'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_STATUS'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 497
    Height = 72
    TabOrder = 1
    object P_ID: TLabel
      Left = 20
      Top = 12
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object MANAGER_ID: TLabel
      Left = 20
      Top = 42
      Width = 63
      Height = 13
      Caption = 'MANAGER ID'
    end
    object Label3: TLabel
      Left = 278
      Top = 12
      Width = 36
      Height = 13
      Caption = #44160#49353#49692
    end
    object sbFirst: TSpeedButton
      Left = 298
      Top = 38
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
      Top = 38
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
      Left = 386
      Top = 38
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
      Left = 431
      Top = 38
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
      Left = 105
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = eIDChange
      OnKeyPress = eIDKeyPress
    end
    object eManagerID: TEdit
      Left = 105
      Top = 39
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = eManagerIDChange
      OnKeyPress = eManagerIDKeyPress
    end
    object ComboBox1: TComboBox
      Left = 327
      Top = 11
      Width = 145
      Height = 21
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'ID'
        'NAME'
        'MANAGER_ID')
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 277
    Width = 497
    Height = 164
    TabOrder = 2
    object NAME: TLabel
      Left = 24
      Top = 14
      Width = 27
      Height = 13
      Caption = #51060' '#47492
    end
    object LManagerID: TLabel
      Left = 24
      Top = 96
      Width = 51
      Height = 13
      Caption = #44288#47532#51088' '#47749
    end
    object MemberCount: TLabel
      Left = 249
      Top = 17
      Width = 66
      Height = 13
      Caption = #52280#50668' '#51064#50896' '#49688
    end
    object StartDate: TLabel
      Left = 24
      Top = 43
      Width = 39
      Height = 13
      Caption = #49884#51089' '#45216
    end
    object EndDate: TLabel
      Left = 24
      Top = 72
      Width = 39
      Height = 13
      Caption = #47560#44048' '#45216
    end
    object bInsert: TButton
      Left = 24
      Top = 130
      Width = 75
      Height = 25
      Caption = #51077#47141
      TabOrder = 0
      OnClick = bInsertClick
    end
    object bPost: TButton
      Left = 126
      Top = 128
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 1
      OnClick = bPostClick
    end
    object bEdit: TButton
      Left = 228
      Top = 128
      Width = 75
      Height = 25
      Caption = #49688#51221
      TabOrder = 2
      OnClick = bEditClick
    end
    object bDelete: TButton
      Left = 328
      Top = 128
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 3
      OnClick = bDeleteClick
    end
    object dbeName: TDBEdit
      Left = 104
      Top = 11
      Width = 121
      Height = 21
      DataField = 'P_NAME'
      DataSource = DataModule1.DsProject
      TabOrder = 4
    end
    object dbeMemberCount: TDBEdit
      Left = 330
      Top = 9
      Width = 155
      Height = 21
      DataField = 'P_MEMBERCOUNT'
      DataSource = DataModule1.DsProject
      TabOrder = 5
    end
    object dbrgStatus: TDBRadioGroup
      Left = 249
      Top = 36
      Width = 236
      Height = 77
      Caption = #51652#54665' '#49345#53468
      DataField = 'P_STATUS'
      DataSource = DataModule1.DsProject
      Items.Strings = (
        #50756#47308
        #51473#44036
        #49884#51089)
      TabOrder = 6
      Values.Strings = (
        '1'
        '2'
        '3')
    end
    object DBEdit1: TDBEdit
      Left = 105
      Top = 38
      Width = 120
      Height = 21
      DataField = 'P_STARTDATE'
      DataSource = DataModule1.DsProject
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 105
      Top = 65
      Width = 120
      Height = 21
      DataField = 'P_ENDDATE'
      DataSource = DataModule1.DsProject
      TabOrder = 8
    end
    object DBEdit3: TDBEdit
      Left = 104
      Top = 92
      Width = 121
      Height = 21
      DataField = 'P_MANAGER_ID'
      DataSource = DataModule1.DsProject
      TabOrder = 9
    end
  end
end
