object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 551
  ClientWidth = 760
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
    Width = 448
    Height = 486
    Align = alClient
    DataSource = DM.SUBJECTSource
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
        FieldName = 'SBJT_DIV'
        Title.Caption = #51060#49688#44396#48516
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_NUM'
        Title.Caption = #54617#49688#48264#54840
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_NAME'
        Title.Caption = #44284#47785
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_DEPTNUM'
        Title.Caption = #54617#44284#53076#46300
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_PROFNUM'
        Title.Caption = #44368#49688#48264#54840
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_PROFNAME'
        Title.Caption = #44368#49688#51060#47492
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_GRADE'
        Title.Caption = #54617#51216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_TOTAL'
        Title.Caption = #52509#51064#50896
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_CLASS'
        Title.Caption = #48516#48152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_ROOM'
        Title.Caption = #44053#51032#49892
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SBJT_TEXT'
        Title.Caption = #49884#44036'/'#44592#53440#51221#48372
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
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
      Caption = #44284#47785' '#44288#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnclose: TButton
      Left = 664
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
    Left = 448
    Top = 65
    Width = 312
    Height = 486
    Align = alRight
    TabOrder = 2
    object Label2: TLabel
      Left = 47
      Top = 20
      Width = 44
      Height = 13
      Caption = #51060#49688#44396#48516
    end
    object Label3: TLabel
      Left = 47
      Top = 47
      Width = 44
      Height = 13
      Caption = #54617#49688#48264#54840
    end
    object Label4: TLabel
      Left = 47
      Top = 81
      Width = 22
      Height = 13
      Caption = #44284#47785
    end
    object Label5: TLabel
      Left = 47
      Top = 108
      Width = 44
      Height = 13
      Caption = #54617#44284#53076#46300
    end
    object Label6: TLabel
      Left = 47
      Top = 170
      Width = 44
      Height = 13
      Caption = #44368#49688#51060#47492
    end
    object Label7: TLabel
      Left = 47
      Top = 265
      Width = 22
      Height = 13
      Caption = #48516#48152
    end
    object Label8: TLabel
      Left = 47
      Top = 137
      Width = 44
      Height = 13
      Caption = #44368#49688#48264#54840
    end
    object Label9: TLabel
      Left = 47
      Top = 234
      Width = 33
      Height = 13
      Caption = #52509#51064#50896
    end
    object Label10: TLabel
      Left = 47
      Top = 202
      Width = 22
      Height = 13
      Caption = #54617#51216
    end
    object Label11: TLabel
      Left = 47
      Top = 292
      Width = 33
      Height = 13
      Caption = #44053#51032#49892
    end
    object Label12: TLabel
      Left = 47
      Top = 324
      Width = 70
      Height = 13
      Caption = #49884#44036'/'#44592#53440#51221#48372
    end
    object Button1: TButton
      Left = 225
      Top = 409
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 128
      Top = 409
      Width = 75
      Height = 25
      Caption = #44284#47785' '#52628#44032
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 128
      Top = 440
      Width = 75
      Height = 25
      Caption = #49325#51228
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 225
      Top = 440
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 3
      OnClick = Button4Click
    end
    object Edit2: TEdit
      Left = 176
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '10003'
    end
    object Edit3: TEdit
      Left = 176
      Top = 78
      Width = 121
      Height = 21
      TabOrder = 5
      Text = #44221#50689#54617
    end
    object Edit5: TEdit
      Left = 176
      Top = 132
      Width = 121
      Height = 21
      TabOrder = 6
      Text = '1003'
    end
    object Edit6: TEdit
      Left = 176
      Top = 167
      Width = 121
      Height = 21
      TabOrder = 7
      Text = #44608#49688#54788
    end
    object Edit7: TEdit
      Left = 176
      Top = 194
      Width = 121
      Height = 21
      TabOrder = 8
      Text = '3'
    end
    object Edit8: TEdit
      Left = 176
      Top = 231
      Width = 121
      Height = 21
      TabOrder = 9
      Text = '5'
    end
    object Edit9: TEdit
      Left = 176
      Top = 262
      Width = 121
      Height = 21
      TabOrder = 10
      Text = '1'
    end
    object Edit10: TEdit
      Left = 176
      Top = 289
      Width = 121
      Height = 21
      TabOrder = 11
      Text = '303'
    end
    object Memo1: TMemo
      Left = 176
      Top = 323
      Width = 121
      Height = 80
      Lines.Strings = (
        #50900'3,4/'#49688'3,4')
      TabOrder = 12
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 176
      Top = 105
      Width = 121
      Height = 21
      DataField = 'SBJT_DEPTNUM'
      DataSource = DM.SUBJECTSource
      KeyField = 'DEPT_NUM'
      ListField = 'DEPT_NAME'
      ListSource = DM.deptDataSource
      TabOrder = 13
    end
    object DBComboBox1: TDBComboBox
      Left = 176
      Top = 17
      Width = 121
      Height = 21
      DataField = 'SBJT_DIV'
      DataSource = DM.SUBJECTSource
      Items.Strings = (
        #44368#50577
        #51204#44277)
      TabOrder = 14
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_NUM'
      Control = Edit2
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_NAME'
      Control = Edit3
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_PROFNUM'
      Control = Edit5
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_PROFNAME'
      Control = Edit6
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_GRADE'
      Control = Edit7
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_TOTAL'
      Control = Edit8
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_CLASS'
      Control = Edit9
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_ROOM'
      Control = Edit10
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'SBJT_TEXT'
      Control = Memo1
      Track = False
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.SUBJECTDataSet
    ScopeMappings = <>
    Left = 376
    Top = 280
  end
end
