object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 456
  ClientWidth = 744
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 436
    Height = 391
    Align = alClient
    DataSource = DM.PROFESSORSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PROF_NUM'
        Title.Caption = #44368#49688#48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROF_NAME'
        Title.Caption = #51060#47492
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROF_DEPTNUM'
        Title.Caption = #54617#44284#53076#46300
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 65
    Align = alTop
    AutoSize = True
    Padding.Top = 15
    Padding.Right = 20
    Padding.Bottom = 15
    TabOrder = 1
    object Label1: TLabel
      Left = 344
      Top = 16
      Width = 91
      Height = 29
      Align = alCustom
      Caption = #44368#49688' '#44288#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnclose: TButton
      Left = 648
      Top = 16
      Width = 75
      Height = 33
      Align = alRight
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btncloseClick
    end
  end
  object Panel2: TPanel
    Left = 436
    Top = 65
    Width = 308
    Height = 391
    Align = alRight
    TabOrder = 2
    object Label2: TLabel
      Left = 47
      Top = 100
      Width = 44
      Height = 13
      Caption = #54617#44284#51060#47492
    end
    object Label3: TLabel
      Left = 69
      Top = 68
      Width = 22
      Height = 13
      Caption = #51060#47492
    end
    object Label4: TLabel
      Left = 47
      Top = 41
      Width = 44
      Height = 13
      Caption = #44368#49688#48264#54840
    end
    object Button1: TButton
      Left = 193
      Top = 177
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 2
      OnClick = Button1Click
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 65
      Width = 130
      Height = 21
      DataField = 'PROF_NAME'
      DataSource = DM.PROFESSORSource
      TabOrder = 1
    end
    object Button2: TButton
      Left = 96
      Top = 177
      Width = 75
      Height = 25
      Caption = #44368#49688' '#52628#44032
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 96
      Top = 208
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 193
      Top = 208
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 5
      OnClick = Button4Click
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 38
      Width = 130
      Height = 21
      DataField = 'PROF_NUM'
      DataSource = DM.PROFESSORSource
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 144
      Top = 92
      Width = 129
      Height = 21
      DataField = 'PROF_DEPTNUM'
      DataSource = DM.PROFESSORSource
      KeyField = 'DEPT_NUM'
      ListField = 'DEPT_NAME'
      ListSource = DM.deptDataSource
      TabOrder = 6
    end
  end
end
