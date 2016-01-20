object SaForm: TSaForm
  Left = 0
  Top = 0
  Caption = 'SaForm'
  ClientHeight = 427
  ClientWidth = 717
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
    Width = 717
    Height = 427
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Label6: TLabel
      Left = 30
      Top = 20
      Width = 56
      Height = 19
      Caption = #49324#50896#51060#47492
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 61
      Width = 717
      Height = 366
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #51312#54924
        object DBGrid1: TDBGrid
          Left = -4
          Top = 3
          Width = 713
          Height = 174
          DataSource = DM.SaSource
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
          Top = 183
          Width = 713
          Height = 154
          DataSource = DM.BuSource
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
          Left = 62
          Top = 48
          Width = 22
          Height = 16
          Caption = #51060#47492
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 51
          Top = 121
          Width = 33
          Height = 16
          Caption = #49548#49549#54016
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 136
          Top = 45
          Width = 121
          Height = 21
          DataField = 'M_NAME'
          DataSource = DM.SaSource
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 136
          Top = 118
          Width = 121
          Height = 21
          DataField = 'M_TEAM'
          DataSource = DM.SaSource
          TabOrder = 1
        end
        object Button1: TButton
          Left = 472
          Top = 110
          Width = 89
          Height = 38
          Caption = 'INSERT'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 576
          Top = 110
          Width = 89
          Height = 38
          Caption = 'POST'
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 576
          Top = 171
          Width = 89
          Height = 38
          Caption = 'DELETE'
          TabOrder = 4
          OnClick = Button4Click
        end
        object Button3: TButton
          Left = 472
          Top = 171
          Width = 89
          Height = 38
          Caption = 'CANCEL'
          TabOrder = 5
          OnClick = Button3Click
        end
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 341
      Top = 12
      Width = 312
      Height = 31
      DataSource = DM.SaSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 96
      Top = 18
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
  end
end
