object orderform: Torderform
  Left = 0
  Top = 0
  Caption = #51452#47928#54788#54889
  ClientHeight = 542
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 65
    Align = alTop
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 176
      Top = 10
      Width = 233
      Height = 41
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Caption = #51452' '#47928' '#54788' '#54889
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -20
      Font.Name = #46027#50880#52404
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 488
      Top = 29
      Width = 57
      Height = 30
      Caption = #45803' '#44592
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 572
    Height = 477
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 240
      Width = 570
      Height = 236
      ActivePage = TabSheet3
      Align = alBottom
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #51204#52404
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 562
          Height = 208
          Align = alClient
          DataSource = dm.ordersource
          ImeName = 'Microsoft Office IME 2007'
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
        Caption = #49436#51216#48324
        ImageIndex = 1
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 562
          Height = 208
          Align = alClient
          DataSource = dm.brchquerysource
          ImeName = 'Microsoft Office IME 2007'
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TabSheet3: TTabSheet
        Caption = #46020#49436#48324
        ImageIndex = 2
        object DBGrid5: TDBGrid
          Left = 0
          Top = 0
          Width = 562
          Height = 208
          Align = alClient
          DataSource = dm.productquerysource
          ImeName = 'Microsoft Office IME 2007'
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 570
      Height = 233
      Align = alTop
      TabOrder = 1
      ExplicitLeft = -3
      ExplicitTop = 6
      object DBGrid2: TDBGrid
        Left = 32
        Top = 49
        Width = 225
        Height = 168
        DataSource = dm.brchnamequerysource
        ImeName = 'Microsoft Office IME 2007'
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBGrid4: TDBGrid
        Left = 312
        Top = 49
        Width = 216
        Height = 168
        DataSource = dm.pronamequerysource
        ImeName = 'Microsoft Office IME 2007'
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel5: TPanel
        Left = 104
        Top = 5
        Width = 81
        Height = 30
        Caption = #49436#51216#48324#44160#49353
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel6: TPanel
        Left = 384
        Top = 5
        Width = 81
        Height = 30
        Caption = #46020#49436#48324#44160#49353
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #46027#50880#52404
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
end
