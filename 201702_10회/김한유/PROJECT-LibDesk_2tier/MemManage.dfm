object MemForm: TMemForm
  Left = 0
  Top = 0
  Caption = #54924#50896#44288#47532
  ClientHeight = 558
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object MemPanel: TPanel
    Left = 0
    Top = 41
    Width = 849
    Height = 517
    Align = alClient
    TabOrder = 0
    object pnlGridHeader: TPanel
      Left = 1
      Top = 1
      Width = 847
      Height = 41
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 13
        Width = 30
        Height = 16
        Caption = #44160#49353
      end
      object edtSearch: TEdit
        Left = 50
        Top = 10
        Width = 201
        Height = 24
        TabOrder = 0
        OnKeyUp = edtSearchKeyUp
      end
      object chkSearchName: TCheckBox
        Left = 273
        Top = 13
        Width = 48
        Height = 17
        Caption = #51060#47492
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object chkSearchPhone: TCheckBox
        Left = 333
        Top = 13
        Width = 97
        Height = 17
        Caption = #50500#51060#46356
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
    object MemGrid: TDBGrid
      Left = 1
      Top = 42
      Width = 847
      Height = 474
      Align = alClient
      DataSource = MemSource
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'USER_SEQ'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'USER_NAME'
          Title.Caption = #49324#50857#51088#51060#47492
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_ID'
          Title.Caption = #50500#51060#46356
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_PW'
          Title.Caption = #48708#48128#48264#54840
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_PHONE'
          Title.Caption = #51204#54868#48264#54840
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_MAIL'
          Title.Caption = #51060#47700#51068
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_OUT_YN'
          Width = -1
          Visible = False
        end>
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      849
      41)
    object lblCaption: TLabel
      Left = 15
      Top = 4
      Width = 92
      Height = 31
      Caption = #54924#50896#44288#47532
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnClose: TButton
      Left = 731
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnAdd: TButton
      Left = 638
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49888#44508' '#46321#47197
      TabOrder = 1
      OnClick = btnAddClick
    end
  end
  object MemSource: TDataSource
    DataSet = DataAccess.qryUser
    Left = 672
    Top = 104
  end
end
