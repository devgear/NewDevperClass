object FrmCalcul: TFrmCalcul
  Left = 0
  Top = 0
  Caption = 'FrmCalcul'
  ClientHeight = 395
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCalculMain: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 395
    Align = alClient
    TabOrder = 0
    object pnlOrderList: TPanel
      Left = 1
      Top = 1
      Width = 470
      Height = 216
      Align = alTop
      TabOrder = 0
      object GrdOrderList: TDBGrid
        Left = 1
        Top = 1
        Width = 468
        Height = 214
        Align = alClient
        DataSource = frmHall.dsTmpOrderlist
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TABLENUM'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MENU'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PEOPLE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTALPRICE'
            Width = 150
            Visible = True
          end>
      end
    end
    object pnlTotalPrice: TPanel
      Left = 1
      Top = 217
      Width = 470
      Height = 84
      Align = alTop
      Caption = 'pnlTotalPrice'
      TabOrder = 1
      object GrdTotalPrice: TDBGrid
        Left = 1
        Top = 1
        Width = 468
        Height = 82
        Align = alClient
        DataSource = dsTotal
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TABLENUM'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTALPRICE'
            Width = 300
            Visible = True
          end>
      end
    end
    object btnCalculCancel: TButton
      Left = 235
      Top = 301
      Width = 236
      Height = 93
      Align = alRight
      Anchors = []
      Caption = #52712#49548
      TabOrder = 2
      OnClick = btnCalculCancelClick
    end
    object btnCalculOk: TButton
      Left = 1
      Top = 301
      Width = 235
      Height = 93
      Align = alLeft
      Anchors = []
      Caption = #54869#51064
      TabOrder = 3
      OnClick = btnCalculOkClick
    end
  end
  object dsTotal: TDataSource
    DataSet = Dm_PC.cdsTotal
    Left = 361
    Top = 113
  end
end
