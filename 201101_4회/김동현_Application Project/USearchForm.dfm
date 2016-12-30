object SearchForm: TSearchForm
  Left = 0
  Top = 0
  Caption = #51312#54924' '#54868#47732
  ClientHeight = 555
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Panel3: TPanel
      Left = 16
      Top = 12
      Width = 185
      Height = 41
      BevelInner = bvRaised
      Caption = #49345#54408' '#51312#54924
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btn_Exit: TButton
      Left = 694
      Top = 13
      Width = 74
      Height = 41
      Caption = 'Exit'
      TabOrder = 1
      OnClick = btn_ExitClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 280
    Width = 782
    Height = 275
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 41
      Width = 778
      Height = 232
      Align = alClient
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel15: TPanel
      Left = 2
      Top = 2
      Width = 778
      Height = 39
      Align = alTop
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 615
        Top = 4
        Width = 30
        Height = 30
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
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 656
        Top = 4
        Width = 30
        Height = 30
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
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 697
        Top = 4
        Width = 30
        Height = 30
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
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 738
        Top = 4
        Width = 30
        Height = 30
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
        OnClick = SpeedButton4Click
      end
      object ComboBox1: TComboBox
        Left = 119
        Top = 7
        Width = 145
        Height = 24
        ImeName = 'Microsoft Office IME 2007'
        ItemIndex = 0
        TabOrder = 0
        Text = #51060#47492' '#49692
        OnChange = ComboBox1Change
        Items.Strings = (
          #51060#47492' '#49692
          #51228#51089#51068' '#49692
          #44032#44201' '#49692)
      end
      object Edit1: TEdit
        Left = 408
        Top = 7
        Width = 121
        Height = 24
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        OnChange = Edit1Change
      end
      object Panel16: TPanel
        Left = 14
        Top = 7
        Width = 89
        Height = 24
        Caption = #44160#49353' '#49692
        TabOrder = 2
      end
      object Panel17: TPanel
        Left = 302
        Top = 7
        Width = 89
        Height = 24
        Caption = #44160#49353' ('#51060#47492')'
        TabOrder = 3
      end
    end
  end
  object Panel6: TPanel
    Left = 232
    Top = 201
    Width = 89
    Height = 24
    Caption = #44536#47353
    TabOrder = 2
  end
  object Panel10: TPanel
    Left = 536
    Top = 144
    Width = 89
    Height = 24
    Caption = #51228#51089#49324
    TabOrder = 3
  end
  object Panel11: TPanel
    Left = 536
    Top = 201
    Width = 89
    Height = 24
    Caption = #51228#51089#51068
    TabOrder = 4
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 782
    Height = 215
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 5
    object Panel5: TPanel
      Left = 232
      Top = 26
      Width = 89
      Height = 24
      Caption = #51060#47492
      TabOrder = 0
    end
    object Panel7: TPanel
      Left = 232
      Top = 71
      Width = 89
      Height = 24
      Caption = #53076#46300
      TabOrder = 1
    end
    object Panel8: TPanel
      Left = 232
      Top = 166
      Width = 89
      Height = 24
      Caption = #44032#44201
      TabOrder = 2
    end
    object Panel9: TPanel
      Left = 494
      Top = 25
      Width = 89
      Height = 24
      Caption = #53356#44592
      TabOrder = 3
    end
    object TreeView1: TTreeView
      Left = 2
      Top = 2
      Width = 199
      Height = 211
      Align = alLeft
      Indent = 19
      TabOrder = 4
      OnClick = TreeView1Click
    end
    object DBEdit1: TDBEdit
      Left = 336
      Top = 26
      Width = 121
      Height = 24
      DataField = 'Item_Name'
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 336
      Top = 71
      Width = 121
      Height = 24
      DataField = 'Item_Code'
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
    end
    object DBEdit3: TDBEdit
      Left = 336
      Top = 119
      Width = 121
      Height = 24
      DataField = 'Item_Group'
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 336
      Top = 166
      Width = 121
      Height = 24
      DataField = 'Item_Price'
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 597
      Top = 26
      Width = 121
      Height = 24
      DataField = 'Item_Size'
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 9
    end
    object DBEdit6: TDBEdit
      Left = 597
      Top = 71
      Width = 121
      Height = 24
      DataField = 'Item_Maker'
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 10
    end
    object DBEdit7: TDBEdit
      Left = 597
      Top = 119
      Width = 121
      Height = 24
      DataField = 'Item_MakeDate'
      DataSource = AppStoreDM.ItemSource
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 11
    end
  end
  object Panel12: TPanel
    Left = 232
    Top = 183
    Width = 89
    Height = 24
    Caption = #44536#47353
    TabOrder = 6
  end
  object Panel13: TPanel
    Left = 494
    Top = 183
    Width = 89
    Height = 24
    Caption = #51228#51089#51068
    TabOrder = 7
  end
  object Panel14: TPanel
    Left = 494
    Top = 135
    Width = 89
    Height = 24
    Caption = #51228#51089#49324
    TabOrder = 8
  end
  object ItemQuery: TSQLQuery
    Active = True
    DataSource = AppStoreDM.ItemSource
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'Select * From "Item"'
      'Order by "Item_Group", "Item_Name"')
    SQLConnection = AppStoreDM.SQLConnection1
    Left = 32
    Top = 224
  end
  object SubItemQuery: TSQLQuery
    DataSource = AppStoreDM.ItemSource
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pcode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * From "Item"'
      'Where "Item_Code" = :pcode')
    SQLConnection = AppStoreDM.SQLConnection1
    Left = 632
    Top = 552
  end
end
