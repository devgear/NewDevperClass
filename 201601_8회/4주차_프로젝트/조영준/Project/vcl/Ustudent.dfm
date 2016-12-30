object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 446
  ClientWidth = 787
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
    Width = 787
    Height = 75
    Align = alTop
    AutoSize = True
    Padding.Top = 15
    Padding.Right = 20
    Padding.Bottom = 15
    TabOrder = 0
    object Label1: TLabel
      Left = 344
      Top = 16
      Width = 84
      Height = 29
      Align = alCustom
      Caption = #54617#49373#44288#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnclose: TButton
      Left = 691
      Top = 16
      Width = 75
      Height = 43
      Align = alRight
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btncloseClick
    end
  end
  object Panel2: TPanel
    Left = 479
    Top = 75
    Width = 308
    Height = 371
    Align = alRight
    TabOrder = 1
    object Label2: TLabel
      Left = 46
      Top = 87
      Width = 44
      Height = 13
      Caption = #54617#44284#51060#47492
    end
    object Label3: TLabel
      Left = 46
      Top = 60
      Width = 44
      Height = 13
      Caption = #54617#49373#48264#54840
    end
    object Label4: TLabel
      Left = 70
      Top = 33
      Width = 22
      Height = 13
      Caption = #51060#47492
    end
    object Label5: TLabel
      Left = 68
      Top = 114
      Width = 22
      Height = 13
      Caption = #54617#45380
    end
    object Label6: TLabel
      Left = 68
      Top = 141
      Width = 22
      Height = 13
      Caption = #49345#53468
    end
    object Label7: TLabel
      Left = 46
      Top = 168
      Width = 44
      Height = 13
      Caption = #48708#48128#48264#54840
    end
    object Button1: TButton
      Left = 209
      Top = 209
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 112
      Top = 209
      Width = 75
      Height = 25
      Caption = #54617#49373' '#52628#44032
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 112
      Top = 240
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 209
      Top = 240
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 9
      OnClick = Button4Click
    end
    object DBEdit3: TDBEdit
      Left = 137
      Top = 57
      Width = 121
      Height = 21
      DataField = 'SDT_NUM'
      DataSource = DM.studentDataSource
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 137
      Top = 30
      Width = 121
      Height = 21
      DataField = 'SDT_NAME'
      DataSource = DM.studentDataSource
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 137
      Top = 165
      Width = 121
      Height = 21
      DataField = 'SDT_PW'
      DataSource = DM.studentDataSource
      TabOrder = 5
    end
    object DBComboBox1: TDBComboBox
      Left = 136
      Top = 111
      Width = 121
      Height = 21
      DataField = 'SDT_YEAR'
      DataSource = DM.studentDataSource
      Items.Strings = (
        '1'
        '2'
        '3'
        '4')
      TabOrder = 3
    end
    object DBComboBox2: TDBComboBox
      Left = 136
      Top = 138
      Width = 121
      Height = 21
      DataField = 'SDT_STATE'
      DataSource = DM.studentDataSource
      Items.Strings = (
        #51116#54617
        #55092#54617
        #51088#53748)
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 136
      Top = 84
      Width = 121
      Height = 21
      DataField = 'SDT_DEPTNUM'
      DataSource = DM.studentDataSource
      KeyField = 'DEPT_NUM'
      ListField = 'DEPT_NAME'
      ListSource = DM.deptDataSource
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 75
    Width = 479
    Height = 371
    Align = alClient
    DataSource = DM.studentDataSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SDT_NUM'
        Title.Caption = #54617#48264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SDT_NAME'
        Title.Caption = #51060#47492
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SDT_DEPTNUM'
        Title.Caption = #54617#44284#53076#46300
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SDT_YEAR'
        Title.Caption = #54617#45380
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SDT_STATE'
        Title.Caption = #49345#53468
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SDT_PW'
        Title.Caption = #48708#48128#48264#54840
        Width = 100
        Visible = True
      end>
  end
end
