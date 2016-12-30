object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 346
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 305
    Width = 862
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 701
      Top = 6
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 0
    end
    object Bt_ok: TButton
      Left = 782
      Top = 6
      Width = 75
      Height = 25
      Caption = #51077#47141
      TabOrder = 1
      OnClick = Bt_okClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 862
    Height = 208
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 860
      Height = 206
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #45236#48512#49324#50896
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 852
          Height = 175
          Align = alClient
          DataSource = DM.MEMBER_DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid2DblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'JISA_CODE'
              Title.Alignment = taCenter
              Title.Caption = #51648#49324#48264#54840
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_CODE'
              Title.Alignment = taCenter
              Title.Caption = #49324#50896#48264#54840
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_NAME'
              Title.Alignment = taCenter
              Title.Caption = #49324#50896#47749
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_DEPT'
              Title.Alignment = taCenter
              Title.Caption = #49548#49549#48512#49436
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_PHONE'
              Title.Alignment = taCenter
              Title.Caption = #55092#45824#51204#54868#48264#54840
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_ADDRESS'
              Title.Alignment = taCenter
              Title.Caption = #51452#49548
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 180
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'M_MAIL'
              Title.Alignment = taCenter
              Title.Caption = #47700#51068#51452#49548
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 140
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = #44032#47609#50629#52404
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 1
        ParentFont = False
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 852
          Height = 175
          Align = alClient
          DataSource = DM.GAMAENG_DS
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_CODE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #44032#47609#53076#46300
              Width = 55
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_NAME'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #44032#47609#51216#47749
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_CONTNAME'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #45824#54364#51088
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_KIND'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #50629#51333
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_PHONE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #55092#45824#51204#54868#48264#54840
              Width = 85
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_TEL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #51204#54868#48264#54840
              Width = 85
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_FAX'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #54057#49828#48264#54840
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_ADDRESS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #51452#49548
              Width = 180
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'G_MAIL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = #47700#51068#51452#49548
              Width = 130
              Visible = True
            end>
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 97
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 41
      Top = 30
      Width = 296
      Height = 33
      Caption = #54924#51032#49892' '#49324#50857#51088' '#51221#48372
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'HY'#44204#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 467
      Top = 8
      Width = 376
      Height = 80
      Caption = #49345#49464#44160#49353
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 49
        Width = 24
        Height = 13
        Caption = #51060#47492
      end
      object Label2: TLabel
        Left = 24
        Top = 22
        Width = 24
        Height = 13
        Caption = #53076#46300
      end
      object Button3: TButton
        Left = 286
        Top = 19
        Width = 75
        Height = 48
        Caption = #51312#54924
        TabOrder = 0
        OnClick = Button3Click
      end
      object Edit1: TEdit
        Left = 54
        Top = 19
        Width = 225
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 54
        Top = 46
        Width = 225
        Height = 21
        TabOrder = 2
        Text = 'Edit2'
      end
    end
    object GroupBox2: TGroupBox
      Left = 376
      Top = 8
      Width = 86
      Height = 80
      Caption = #44160#49353#44396#48516
      TabOrder = 1
      object RadioButton1: TRadioButton
        Left = 10
        Top = 21
        Width = 73
        Height = 17
        Caption = #45236#48512#49324#50896
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 10
        Top = 49
        Width = 73
        Height = 17
        Caption = #44032#47609#50629#52404
        TabOrder = 1
      end
    end
  end
end
