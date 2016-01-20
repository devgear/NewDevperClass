object EmploForm: TEmploForm
  Left = 0
  Top = 0
  Caption = 'EmploForm'
  ClientHeight = 523
  ClientWidth = 812
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 812
    Height = 523
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = #51312#54924
      ImageIndex = 1
      object Label1: TLabel
        Left = 356
        Top = 1
        Width = 205
        Height = 17
        AutoSize = False
        Caption = 'Employee Information'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 120
        Width = 806
        Height = 385
        DataSource = Dm.FDMemSource
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet1: TTabSheet
      Caption = #54200#51665
      ImageIndex = 1
      object Label2: TLabel
        Left = 32
        Top = 24
        Width = 60
        Height = 18
        Caption = #49324'      '#48264
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 32
        Top = 64
        Width = 60
        Height = 18
        Caption = #51060'      '#47492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 32
        Top = 144
        Width = 45
        Height = 18
        Caption = #49548#49549#54016
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 128
        Top = 25
        Width = 121
        Height = 21
        DataField = 'M_ID'
        DataSource = Dm.FDMemSource
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 65
        Width = 121
        Height = 21
        DataField = 'M_NAME'
        DataSource = Dm.FDMemSource
        TabOrder = 1
      end
      object DBComboBox2: TDBComboBox
        Left = 128
        Top = 145
        Width = 121
        Height = 21
        DataField = 'D_TEAM'
        DataSource = Dm.FDdeptsource
        TabOrder = 2
      end
      object Button1: TButton
        Left = 416
        Top = 32
        Width = 81
        Height = 41
        Caption = #52628#44032
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 416
        Top = 95
        Width = 81
        Height = 41
        Caption = #51200#51109
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 416
        Top = 161
        Width = 81
        Height = 41
        Caption = #49325#51228
        TabOrder = 5
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 416
        Top = 233
        Width = 81
        Height = 41
        Caption = #52712#49548
        TabOrder = 6
        OnClick = Button3Click
      end
    end
  end
end
