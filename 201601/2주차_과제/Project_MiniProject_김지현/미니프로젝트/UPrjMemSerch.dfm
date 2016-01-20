object PrjMSrForm: TPrjMSrForm
  Left = 0
  Top = 0
  Caption = #54532#47196#51229#53944#47716#48260#51312#54924
  ClientHeight = 368
  ClientWidth = 710
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
    Width = 710
    Height = 368
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 360
      Top = 232
      Width = 47
      Height = 13
      Alignment = taCenter
      Caption = #47716#48260' '#48264#54840
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 87
      Top = 232
      Width = 69
      Height = 13
      Alignment = taCenter
      Caption = #54532#47196#51229#53944' '#48264#54840
      Layout = tlCenter
    end
    object DBGrid1: TDBGrid
      Left = 33
      Top = 40
      Width = 272
      Height = 170
      DataSource = Dm.PrjMeDS
      DrawingStyle = gdsGradient
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
          FieldName = 'R_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'M_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'p_rook'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'm_rook'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 33
      Top = 16
      Width = 272
      Height = 18
      DataSource = Dm.PrjMeDS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object DBGrid2: TDBGrid
      Left = 356
      Top = 40
      Width = 273
      Height = 170
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBNavigator2: TDBNavigator
      Left = 356
      Top = 16
      Width = 272
      Height = 18
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 162
      Top = 232
      Width = 145
      Height = 21
      DataField = 'p_rook'
      DataSource = Dm.PrjMeDS
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 413
      Top = 232
      Width = 145
      Height = 21
      DataField = 'm_rook'
      DataSource = Dm.PrjMeDS
      TabOrder = 5
    end
    object Button1: TButton
      Left = 211
      Top = 276
      Width = 75
      Height = 25
      Caption = #51077#47141
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 292
      Top = 276
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 373
      Top = 276
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object PrjMEMQuerySource: TDataSource
    DataSet = PrjMEMQuery
    Left = 656
    Top = 312
  end
  object PrjMEMQuery: TFDQuery
    Active = True
    Connection = Dm.FDConnection1
    SQL.Strings = (
      'SELECT * FROM PROJECTMEMBER;')
    Left = 592
    Top = 312
  end
end
