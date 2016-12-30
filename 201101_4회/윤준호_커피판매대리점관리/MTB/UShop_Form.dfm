object ShopForm: TShopForm
  Left = 0
  Top = 0
  Caption = 'ShopForm'
  ClientHeight = 533
  ClientWidth = 573
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 11
      Width = 64
      Height = 19
      Caption = #51648#51216#44160#49353
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 396
      Top = 8
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 437
      Top = 8
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
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 475
      Top = 8
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
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 513
      Top = 8
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
      OnClick = SpeedButton4Click
    end
    object ShopEdit: TEdit
      Left = 106
      Top = 11
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
      OnChange = ShopEditChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 573
    Height = 492
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Top = 178
      Width = 573
      Height = 311
      ActivePage = TabSheet2
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = #51648#51216#44288#47532
        ImageIndex = 1
        object Label3: TLabel
          Left = 20
          Top = 16
          Width = 64
          Height = 19
          Caption = #51648#51216#48264#54840
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 20
          Top = 49
          Width = 64
          Height = 19
          Caption = #48708#48128#48264#54840
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 20
          Top = 81
          Width = 68
          Height = 19
          Caption = #51648'  '#51216'  '#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 21
          Top = 111
          Width = 67
          Height = 19
          Caption = #51216'       '#51109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 21
          Top = 142
          Width = 62
          Height = 19
          Caption = #51452'      '#49548
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 20
          Top = 174
          Width = 64
          Height = 19
          Caption = #51204#54868#48264#54840
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 266
          Top = 16
          Width = 64
          Height = 19
          Caption = #51648#51216#49324#51652
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 20
          Top = 203
          Width = 64
          Height = 19
          Caption = #44032#51077#51068#51088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Bt_Insert: TButton
          Left = 20
          Top = 233
          Width = 93
          Height = 41
          Caption = #46321#47197
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Bt_InsertClick
        end
        object Bt_Delete: TButton
          Left = 291
          Top = 232
          Width = 93
          Height = 41
          Caption = #49325#51228
          TabOrder = 1
          OnClick = Bt_DeleteClick
        end
        object Bt_Apply: TButton
          Left = 420
          Top = 232
          Width = 93
          Height = 41
          Caption = 'ApplyUpdate'
          TabOrder = 2
          OnClick = Bt_ApplyClick
        end
        object Bt_Image: TButton
          Left = 336
          Top = 12
          Width = 64
          Height = 23
          Caption = #48520#47084#50724#44592
          TabOrder = 3
          OnClick = Bt_ImageClick
        end
        object Bt_Cancel: TButton
          Left = 152
          Top = 232
          Width = 93
          Height = 41
          Caption = #52712#49548
          TabOrder = 4
          OnClick = Bt_CancelClick
        end
        object ShopNum: TDBEdit
          Left = 100
          Top = 18
          Width = 145
          Height = 21
          DataField = 'S_ID'
          DataSource = SDM.ShopSource
          ImeName = 'Microsoft IME 2010'
          TabOrder = 5
        end
        object ShopPw: TDBEdit
          Left = 100
          Top = 49
          Width = 145
          Height = 21
          DataField = 'C_PW'
          DataSource = SDM.ShopSource
          ImeName = 'Microsoft IME 2010'
          TabOrder = 6
        end
        object ShopNa: TDBEdit
          Left = 100
          Top = 84
          Width = 145
          Height = 21
          DataField = 'C_NAME'
          DataSource = SDM.ShopSource
          ImeName = 'Microsoft IME 2010'
          TabOrder = 7
        end
        object ShopMa: TDBEdit
          Left = 100
          Top = 111
          Width = 145
          Height = 21
          DataField = 'C_MASTER'
          DataSource = SDM.ShopSource
          ImeName = 'Microsoft IME 2010'
          TabOrder = 8
        end
        object ShopAddr: TDBEdit
          Left = 100
          Top = 142
          Width = 145
          Height = 21
          DataField = 'C_ADDR'
          DataSource = SDM.ShopSource
          ImeName = 'Microsoft IME 2010'
          TabOrder = 9
        end
        object ShopDa: TDBEdit
          Left = 100
          Top = 176
          Width = 145
          Height = 21
          DataField = 'C_TEL'
          DataSource = SDM.ShopSource
          ImeName = 'Microsoft IME 2010'
          TabOrder = 10
        end
        object ShopIma: TDBImage
          Left = 291
          Top = 41
          Width = 242
          Height = 185
          DataField = 'C_IMAGE'
          DataSource = SDM.ShopSource
          TabOrder = 11
        end
        object DBEdit1: TDBEdit
          Left = 100
          Top = 203
          Width = 145
          Height = 21
          DataField = 'C_JOIN'
          DataSource = SDM.ShopSource
          ImeName = 'Microsoft IME 2010'
          TabOrder = 12
        end
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 47
    Width = 573
    Height = 154
    DataSource = SDM.ShopSource
    ImeName = 'Microsoft IME 2010'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 296
    Top = 336
  end
end
