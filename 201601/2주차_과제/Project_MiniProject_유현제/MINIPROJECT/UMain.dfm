object Mainform: TMainform
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 523
  ClientWidth = 783
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
    Width = 783
    Height = 523
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitHeight = 503
    object Label12: TLabel
      Left = 472
      Top = 14
      Width = 66
      Height = 13
      Caption = #51060#47492#53076#46300#44160#49353
    end
    object Label1: TLabel
      Left = 240
      Top = 14
      Width = 88
      Height = 13
      Caption = #54532#47196#51229#53944#53076#46300#44160#49353
    end
    object Label3: TLabel
      Left = 35
      Top = 14
      Width = 66
      Height = 13
      Caption = #48512#49436#53076#46300#44160#49353
    end
    object PageControl1: TPageControl
      Left = 28
      Top = 33
      Width = 717
      Height = 470
      ActivePage = TabSheet2
      TabOrder = 0
      object TabSeet1: TTabSheet
        Caption = 'Member'
        object Label2: TLabel
          Left = 88
          Top = 179
          Width = 32
          Height = 24
          Caption = #51060#47492
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 224
          Top = 179
          Width = 48
          Height = 24
          Caption = #49548#49549#54016
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid2: TDBGrid
          Left = 3
          Top = 32
          Width = 703
          Height = 120
          DataSource = DataModule1.DS_Member
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_ID'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_NAME'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_TEAM'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_TEAMNAME'
              Width = 60
              Visible = True
            end>
        end
        object DBEdit1: TDBEdit
          Left = 41
          Top = 209
          Width = 121
          Height = 41
          DataField = 'M_NAME'
          DataSource = DataModule1.DS_Member
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button1: TButton
          Left = 441
          Top = 391
          Width = 75
          Height = 25
          Caption = #52628#44032
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 602
          Top = 390
          Width = 75
          Height = 25
          Caption = #49325#51228
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button8: TButton
          Left = 521
          Top = 390
          Width = 75
          Height = 25
          Caption = #51200#51109
          TabOrder = 4
          OnClick = Button8Click
        end
        object DBEdit8: TDBEdit
          Left = 201
          Top = 209
          Width = 128
          Height = 41
          DataField = 'M_TEAMNAME'
          DataSource = DataModule1.DS_Member
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 5
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Project'
        ImageIndex = 1
        object Label5: TLabel
          Left = 46
          Top = 160
          Width = 75
          Height = 24
          Caption = #54532#47196#51229#53944#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = #54532#47196#51229
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 157
          Top = 159
          Width = 96
          Height = 24
          Caption = #54532#47196#51229#53944#49884#51089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 268
          Width = 96
          Height = 24
          Caption = #54532#47196#51229#53944#49324#50896
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 311
          Top = 159
          Width = 112
          Height = 24
          Caption = #54532#47196#51229#53944#47560#47924#47532
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 3
          Top = 0
          Width = 695
          Height = 120
          DataSource = DataModule1.DS_Project
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'P_ID'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'P_NAME'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'P_STARTDATE'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'P_ENDDATE'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P_MANAGER_ID'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'P_MEMBERCOUNT'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'P_STATUS'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MANAGER'
              Visible = True
            end>
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 189
          Width = 121
          Height = 32
          DataField = 'P_NAME'
          DataSource = DataModule1.DS_Project
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 151
          Top = 189
          Width = 154
          Height = 32
          DataField = 'P_STARTDATE'
          DataSource = DataModule1.DS_Project
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 2
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 512
          Top = 159
          Width = 185
          Height = 105
          Caption = #51652#54665#49345#53468
          DataField = 'P_STATUS'
          DataSource = DataModule1.DS_Project
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            #51456#48708
            #51652#54665
            #51333#47308)
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object DBEdit5: TDBEdit
          Left = 328
          Top = 189
          Width = 153
          Height = 32
          DataField = 'P_ENDDATE'
          DataSource = DataModule1.DS_Project
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 4
        end
        object Button3: TButton
          Left = 456
          Top = 379
          Width = 75
          Height = 25
          Caption = #52628#44032
          TabOrder = 5
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 631
          Top = 379
          Width = 75
          Height = 25
          Caption = #49325#51228
          TabOrder = 6
          OnClick = Button4Click
        end
        object Button9: TButton
          Left = 545
          Top = 379
          Width = 75
          Height = 25
          Caption = #51200#51109
          TabOrder = 7
          OnClick = Button9Click
        end
        object DBGrid5: TDBGrid
          Left = 3
          Top = 298
          Width = 300
          Height = 120
          DataSource = DataModule1.DS_Promem
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 8
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object Button10: TButton
          Left = 328
          Top = 329
          Width = 75
          Height = 25
          Caption = #49324#50896#52628#44032
          TabOrder = 9
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 328
          Top = 360
          Width = 75
          Height = 25
          Caption = #49324#50896#49325#51228
          TabOrder = 10
          OnClick = Button11Click
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Dept'
        ImageIndex = 2
        object Label9: TLabel
          Left = 56
          Top = 182
          Width = 66
          Height = 33
          Caption = #48512#49436#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 241
          Top = 182
          Width = 88
          Height = 33
          Caption = #49548#49549#54016#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid3: TDBGrid
          Left = 3
          Top = 32
          Width = 703
          Height = 120
          DataSource = DataModule1.DS_Dept
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'D_ID'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'D_DEPT'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'D_TEAM'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end>
        end
        object DBEdit6: TDBEdit
          Left = 40
          Top = 217
          Width = 121
          Height = 41
          DataField = 'D_DEPT'
          DataSource = DataModule1.DS_Dept
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 231
          Top = 217
          Width = 121
          Height = 41
          DataField = 'D_TEAM'
          DataSource = DataModule1.DS_Dept
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object Button5: TButton
          Left = 392
          Top = 360
          Width = 75
          Height = 25
          Caption = #52628#44032
          TabOrder = 3
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 584
          Top = 360
          Width = 75
          Height = 25
          Caption = #49325#51228
          TabOrder = 4
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 489
          Top = 360
          Width = 75
          Height = 25
          Caption = #51200#51109
          TabOrder = 5
          OnClick = Button7Click
        end
      end
    end
    object Edit1: TEdit
      Left = 107
      Top = 6
      Width = 116
      Height = 21
      TabOrder = 1
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 334
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = Edit2Change
    end
    object Edit3: TEdit
      Left = 544
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = Edit3Change
    end
  end
  object CountQuery: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT COUNT(*) FROM PROJECTMEMBER'
      'WHERE P_ID = :P_ID'
      '')
    Left = 744
    Top = 97
    ParamData = <
      item
        Name = 'P_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = DataModule1.FDConnection1
    InsertSQL.Strings = (
      'Insert INTO Member(M_name) values(m_name)')
    Left = 736
    Top = 40
  end
end
