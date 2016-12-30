object SalesFrm: TSalesFrm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #47588#52636#51221#48372
  ClientHeight = 466
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 40
    Width = 610
    Height = 421
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #47588#52636#44552#50529'('#46020#54364')'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 599
        Height = 390
        DataSource = DM.DataSource
        ImeName = 'Microsoft Office IME 2007'
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'OPEN_DATE'
            Title.Alignment = taCenter
            Title.Caption = #50689#50629#51068#51088
            Width = 129
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SLIP_NUM'
            Title.Alignment = taCenter
            Title.Caption = #51204#54364#48264#54840
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_SUM'
            Title.Alignment = taCenter
            Title.Caption = #44032#44201
            Width = 96
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #47588#52636#44552#50529'('#52264#53944')'
      ImageIndex = 1
      ExplicitLeft = 0
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 604
        Height = 346
        Title.Text.Strings = (
          #47588#52636#44552#50529)
        Pages.AutoScale = True
        Pages.MaxPointsPerPage = 3
        TabOrder = 0
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = True
          DataSource = DM.SalesQuery
          XLabelsSource = 'OPEN_DATE'
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'S_SUM'
        end
      end
      object Panel1: TPanel
        Left = -3
        Top = 344
        Width = 604
        Height = 49
        TabOrder = 1
        object SpeedButton4: TSpeedButton
          Left = 304
          Top = 0
          Width = 150
          Height = 49
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
          OnClick = SpeedButton4Click
        end
        object SpeedButton3: TSpeedButton
          Left = 153
          Top = 0
          Width = 150
          Height = 49
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
          OnClick = SpeedButton3Click
        end
        object SpeedButton2: TSpeedButton
          Left = 3
          Top = 0
          Width = 150
          Height = 49
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
          OnClick = SpeedButton2Click
        end
        object SpeedButton1: TSpeedButton
          Left = 455
          Top = 0
          Width = 150
          Height = 49
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
          OnClick = SpeedButton1Click
        end
      end
    end
  end
  object dtpOld: TDateTimePicker
    Left = 8
    Top = 8
    Width = 89
    Height = 21
    Date = 40573.172760798610000000
    Time = 40573.172760798610000000
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 1
  end
  object dtpNow: TDateTimePicker
    Left = 160
    Top = 8
    Width = 89
    Height = 21
    Date = 40573.172760798610000000
    Time = 40573.172760798610000000
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 2
  end
  object btnSalesInfo: TButton
    Left = 288
    Top = 4
    Width = 75
    Height = 25
    Caption = #48372#44592
    TabOrder = 3
    OnClick = btnSalesInfoClick
  end
end
