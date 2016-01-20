object BuForm: TBuForm
  Left = 0
  Top = 0
  Caption = 'BuForm'
  ClientHeight = 421
  ClientWidth = 712
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
    Width = 712
    Height = 421
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Label6: TLabel
      Left = 45
      Top = 20
      Width = 42
      Height = 19
      Caption = #48512#49436#47749
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 53
      Width = 712
      Height = 372
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #51312#54924
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 704
          Height = 178
          DataSource = DM.BuSource
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 184
          Width = 705
          Height = 161
          DataSource = DM.SaSource
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TabSheet2: TTabSheet
        Caption = #54200#51665
        ImageIndex = 1
        object Label2: TLabel
          Left = 50
          Top = 124
          Width = 52
          Height = 16
          Caption = #49548#49549' '#54016' '#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 65
          Top = 55
          Width = 37
          Height = 16
          Caption = #48512#49436' '#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 152
          Top = 54
          Width = 121
          Height = 21
          DataField = 'D_DEPT'
          DataSource = DM.BuSource
          TabOrder = 0
        end
        object Button1: TButton
          Left = 474
          Top = 115
          Width = 89
          Height = 38
          Caption = 'INSERT'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 578
          Top = 115
          Width = 89
          Height = 38
          Caption = 'POST'
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 578
          Top = 176
          Width = 89
          Height = 38
          Caption = 'DELETE'
          TabOrder = 3
          OnClick = Button4Click
        end
        object Button3: TButton
          Left = 474
          Top = 176
          Width = 89
          Height = 38
          Caption = 'CANCEL'
          TabOrder = 4
          OnClick = Button3Click
        end
        object DBEdit3: TDBEdit
          Left = 152
          Top = 123
          Width = 121
          Height = 21
          DataField = 'D_TEAM'
          DataSource = DM.BuSource
          TabOrder = 5
        end
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 344
      Top = 16
      Width = 312
      Height = 31
      DataSource = DM.BuSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 103
      Top = 22
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
  end
end
