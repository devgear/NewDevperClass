object frMain: TfrMain
  Left = 0
  Top = 0
  ActiveControl = ListViewTest
  Caption = 'frMain'
  ClientHeight = 730
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object PanelBottonParent: TPanel
    Left = 0
    Top = 41
    Width = 1008
    Height = 689
    Align = alClient
    TabOrder = 1
    object PanelLeft: TPanel
      Left = 1
      Top = 1
      Width = 200
      Height = 687
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btAdd: TButton
        Left = 4
        Top = 5
        Width = 60
        Height = 50
        Caption = #52628#44032
        TabOrder = 0
        TabStop = False
        OnClick = btAddClick
      end
      object btModify: TButton
        Left = 69
        Top = 5
        Width = 60
        Height = 50
        Caption = #49688#51221
        TabOrder = 1
        TabStop = False
        OnClick = btModifyClick
      end
      object btDelete: TButton
        Left = 135
        Top = 5
        Width = 60
        Height = 50
        Caption = #49325#51228
        TabOrder = 2
        TabStop = False
        OnClick = btDeleteClick
      end
      object ListViewTest: TListView
        Left = 4
        Top = 61
        Width = 193
        Height = 620
        Columns = <>
        TabOrder = 3
        ViewStyle = vsList
        OnSelectItem = ListViewTestSelectItem
      end
    end
    object PanelClient: TPanel
      Left = 201
      Top = 1
      Width = 806
      Height = 687
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object PageControl: TPageControl
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 806
        Height = 687
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ActivePage = tsListening
        Align = alClient
        TabOrder = 0
        object tsListening: TTabSheet
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Listening'
        end
        object tsReading: TTabSheet
          Caption = 'Reading'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
      end
    end
  end
end
