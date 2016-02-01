object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 441
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
    Height = 65
    Align = alTop
    AutoSize = True
    Padding.Top = 15
    Padding.Right = 20
    Padding.Bottom = 15
    TabOrder = 0
    object Label1: TLabel
      Left = 344
      Top = 16
      Width = 91
      Height = 29
      Align = alCustom
      Caption = #54617#44284' '#44288#47532
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
      Height = 33
      Align = alRight
      Caption = #45803#44592
      TabOrder = 0
      OnClick = btncloseClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 479
    Height = 376
    Align = alClient
    DataSource = DM.deptDataSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DEPT_NUM'
        Title.Caption = #54617#44284#53076#46300
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPT_NAME'
        Title.Caption = #54617#44284#47749
        Width = 100
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 479
    Top = 65
    Width = 308
    Height = 376
    Align = alRight
    TabOrder = 2
    object Label2: TLabel
      Left = 47
      Top = 36
      Width = 44
      Height = 13
      Caption = #54617#44284#53076#46300
    end
    object Label3: TLabel
      Left = 49
      Top = 68
      Width = 33
      Height = 13
      Caption = #54617#44284#47749
    end
    object Button1: TButton
      Left = 193
      Top = 129
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Left = 97
      Top = 33
      Width = 121
      Height = 21
      DataField = 'DEPT_NUM'
      DataSource = DM.deptDataSource
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 60
      Width = 121
      Height = 21
      DataField = 'DEPT_NAME'
      DataSource = DM.deptDataSource
      TabOrder = 2
    end
    object Button2: TButton
      Left = 96
      Top = 129
      Width = 75
      Height = 25
      Caption = #54617#44284' '#52628#44032
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 96
      Top = 160
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 193
      Top = 160
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 5
      OnClick = Button4Click
    end
  end
end
