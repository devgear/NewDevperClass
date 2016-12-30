object ProForm: TProForm
  Left = 0
  Top = 0
  Caption = 'ProForm'
  ClientHeight = 363
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 363
    Align = alClient
    TabOrder = 0
    object Label6: TLabel
      Left = 24
      Top = 20
      Width = 103
      Height = 19
      Caption = #54532#47196#51229#53944#47749' '#44160#49353
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 49
      Width = 715
      Height = 302
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #51312#54924
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 707
          Height = 274
          Align = alClient
          DataSource = DM.ProSource
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
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
          Left = 37
          Top = 79
          Width = 70
          Height = 16
          Caption = #54532#47196#51229#53944' '#44592#44036
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 70
          Top = 134
          Width = 37
          Height = 16
          Caption = #51064#50896' '#49688
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 59
          Top = 185
          Width = 44
          Height = 16
          Caption = #51652#54665#49345#53468
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 136
          Top = 79
          Width = 22
          Height = 16
          Caption = #49884#51089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 368
          Top = 79
          Width = 22
          Height = 16
          Caption = #51333#47308
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 48
          Top = 29
          Width = 59
          Height = 16
          Caption = #54532#47196#51229#53944' '#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 164
          Top = 78
          Width = 168
          Height = 21
          DataField = 'P_STARTDATE'
          DataSource = DM.ProSource
          MaxLength = 10
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 411
          Top = 76
          Width = 166
          Height = 21
          DataField = 'P_ENDDATE'
          DataSource = DM.ProSource
          MaxLength = 10
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 164
          Top = 132
          Width = 121
          Height = 21
          DataField = 'P_MEMBERCOUNT'
          DataSource = DM.ProSource
          TabOrder = 3
        end
        object Button1: TButton
          Left = 464
          Top = 132
          Width = 89
          Height = 38
          Caption = 'INSERT'
          TabOrder = 5
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 568
          Top = 132
          Width = 89
          Height = 38
          Caption = 'POST'
          TabOrder = 6
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 464
          Top = 193
          Width = 89
          Height = 38
          Caption = 'CANCEL'
          TabOrder = 7
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 568
          Top = 193
          Width = 89
          Height = 38
          Caption = 'DELETE'
          TabOrder = 8
          OnClick = Button4Click
        end
        object DBEdit6: TDBEdit
          Left = 164
          Top = 183
          Width = 121
          Height = 21
          DataField = 'P_STATUS'
          DataSource = DM.ProSource
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 164
          Top = 27
          Width = 121
          Height = 21
          DataField = 'P_NAME'
          DataSource = DM.ProSource
          TabOrder = 0
        end
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 375
      Top = 16
      Width = 312
      Height = 31
      DataSource = DM.ProSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 146
      Top = 18
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
  end
end
