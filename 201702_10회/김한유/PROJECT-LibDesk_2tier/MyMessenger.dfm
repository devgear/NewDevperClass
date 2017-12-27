object MsgForm: TMsgForm
  Left = 0
  Top = 0
  Caption = 'MsgForm'
  ClientHeight = 520
  ClientWidth = 882
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
    Width = 882
    Height = 479
    Align = alClient
    TabOrder = 0
    object pnlGridHeader: TPanel
      Left = 1
      Top = 1
      Width = 880
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
        Width = 68
        Height = 17
        Caption = #50500#51060#46356
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object chkSearchPhone: TCheckBox
        Left = 353
        Top = 13
        Width = 97
        Height = 17
        Caption = #47700#49884#51648' '#45236#50857
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
    object MSGGrid: TDBGrid
      Left = 1
      Top = 42
      Width = 880
      Height = 436
      Align = alClient
      DataSource = Talk_Source
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
          FieldName = 'USERFROM_ID'
          Title.Caption = #48372#45240#49324#46988
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MES_SEQ'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MES_CONTENT'
          Title.Caption = #47700#49884#51648' '#45236#50857
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MES_DATE'
          Title.Caption = #51089#49457#45216#51676
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MES_TIME'
          Title.Caption = #51089#49457#49884#44036
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USERTO_ID'
          Title.Caption = #48155#45716#49324#46988
          Visible = False
        end>
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 882
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      882
      41)
    object lblCaption: TLabel
      Left = 15
      Top = 4
      Width = 150
      Height = 31
      Caption = #45236#44172' '#50728' '#47700#49884#51648
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnClose: TButton
      Left = 764
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnAdd: TButton
      Left = 671
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49325#51228
      TabOrder = 1
      OnClick = deleteClick
    end
  end
  object Talk_Source: TDataSource
    DataSet = DataAccess.qryTalk
    Left = 728
    Top = 272
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 696
    Top = 392
  end
end
