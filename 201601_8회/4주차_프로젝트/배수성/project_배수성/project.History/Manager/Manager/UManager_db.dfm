object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 506
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Pagecontrol: TPageControl
    Left = 0
    Top = 0
    Width = 682
    Height = 506
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -299
    ExplicitTop = -315
    ExplicitWidth = 746
    ExplicitHeight = 517
    object TabSheet1: TTabSheet
      Caption = #49884#45824
      ExplicitWidth = 738
      ExplicitHeight = 489
      object Label1: TLabel
        Left = 3
        Top = 11
        Width = 38
        Height = 31
        Caption = #49884#45824
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'KBIZ'#54620#47560#51020#44256#46357' M'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 344
        Top = 48
        Width = 63
        Height = 13
        Caption = #45936#51060#53552' '#49688#51221
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 48
        Width = 320
        Height = 354
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit1: TDBEdit
        Left = 344
        Top = 85
        Width = 121
        Height = 21
        DataField = 'H_Times'
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 160
        Top = 11
        Width = 160
        Height = 31
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = #51064#47932
      ImageIndex = 1
      object Label3: TLabel
        Left = 3
        Top = 11
        Width = 38
        Height = 31
        Caption = #51064#47932
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'KBIZ'#54620#47560#51020#44256#46357' M'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 344
        Top = 48
        Width = 63
        Height = 13
        Caption = #45936#51060#53552' '#49688#51221
      end
      object DBNavigator2: TDBNavigator
        Left = 160
        Top = 11
        Width = 160
        Height = 31
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 48
        Width = 320
        Height = 354
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit2: TDBEdit
        Left = 344
        Top = 85
        Width = 121
        Height = 21
        DataField = 'H_Times'
        TabOrder = 2
      end
      object Button1: TButton
        Left = 344
        Top = 144
        Width = 75
        Height = 25
        Caption = #49688#51221
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Label2: TLabel
        Left = 3
        Top = 19
        Width = 84
        Height = 31
        Caption = #51064#47932' '#51221#48372
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'KBIZ'#54620#47560#51020#44256#46357' M'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 400
        Top = 56
        Width = 63
        Height = 13
        Caption = #45936#51060#53552' '#49688#51221
      end
      object DBGrid3: TDBGrid
        Left = 3
        Top = 56
        Width = 374
        Height = 354
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator3: TDBNavigator
        Left = 163
        Top = 19
        Width = 160
        Height = 31
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 400
        Top = 93
        Width = 121
        Height = 21
        DataField = 'H_Times'
        TabOrder = 2
      end
    end
  end
end
