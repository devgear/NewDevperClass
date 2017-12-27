object Form_UserView: TForm_UserView
  Left = 0
  Top = 0
  Caption = 'Form_UserView'
  ClientHeight = 744
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 297
    Top = 41
    Height = 703
    ExplicitLeft = 320
    ExplicitTop = 344
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 630
    Height = 41
    Align = alTop
    TabOrder = 0
    object Edit_find_user: TEdit
      Left = 380
      Top = 11
      Width = 129
      Height = 21
      TabOrder = 0
      OnChange = Edit_find_userChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 297
    Height = 703
    Align = alLeft
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 22
      Top = 27
      Width = 257
      Height = 318
      DataSource = clientmodule.DataSource_update
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
          FieldName = 'USER_NO'
          Title.Caption = #48264#54840
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_ID'
          Title.Caption = 'ID'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_BIRTH'
          Title.Caption = #49373#45380#50900#51068
          Width = 82
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 300
    Top = 41
    Width = 330
    Height = 703
    Align = alLeft
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 1
      Top = 361
      Width = 328
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 409
      ExplicitWidth = 293
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 328
      Height = 360
      Align = alTop
      TabOrder = 0
      object TLabel
        Left = 38
        Top = 202
        Width = 61
        Height = 19
        Caption = #48372#50976' '#52880#49772
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 46
        Top = 246
        Width = 61
        Height = 19
        Caption = #48372#50976' '#49884#44036
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ID: TLabel
        Left = 64
        Top = 26
        Width = 17
        Height = 19
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 40
        Top = 160
        Width = 56
        Height = 19
        Caption = #49373#45380#50900#51068
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 56
        Top = 114
        Width = 28
        Height = 19
        Caption = #51060#47492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object PASSWD: TLabel
        Left = 38
        Top = 69
        Width = 63
        Height = 19
        Caption = 'PASSWD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Button_cancle: TButton
        Left = 230
        Top = 307
        Width = 75
        Height = 25
        Caption = #52712#49548
        TabOrder = 0
        OnClick = Button_cancleClick
      end
      object Button_save: TButton
        Left = 134
        Top = 307
        Width = 75
        Height = 25
        Caption = #51200#51109
        TabOrder = 1
        OnClick = Button_saveClick
      end
      object Button_updatemod: TButton
        Left = 24
        Top = 307
        Width = 75
        Height = 25
        Caption = #51221#48372' '#48320#44221
        TabOrder = 2
        OnClick = Button_updatemodClick
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 28
        Width = 121
        Height = 21
        DataField = 'USER_ID'
        DataSource = clientmodule.DataSource_update
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 160
        Top = 71
        Width = 121
        Height = 21
        DataField = 'USER_PW'
        DataSource = clientmodule.DataSource_update
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 160
        Top = 116
        Width = 121
        Height = 21
        DataField = 'USER_NAME'
        DataSource = clientmodule.DataSource_update
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 160
        Top = 248
        Width = 121
        Height = 21
        DataField = 'USER_TIME'
        DataSource = clientmodule.DataSource_update
        ReadOnly = True
        TabOrder = 6
        OnChange = DBEdit7Change
      end
      object DBEdit6: TDBEdit
        Left = 160
        Top = 204
        Width = 121
        Height = 21
        DataField = 'USER_CASH'
        DataSource = clientmodule.DataSource_update
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 160
        Top = 162
        Width = 121
        Height = 21
        DataField = 'USER_BIRTH'
        DataSource = clientmodule.DataSource_update
        ReadOnly = True
        TabOrder = 8
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 364
      Width = 328
      Height = 338
      Align = alClient
      TabOrder = 1
      object Label4: TLabel
        Left = 16
        Top = 23
        Width = 56
        Height = 19
        Caption = #49884#44036#52649#51204
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 72
        Width = 61
        Height = 19
        Caption = #51092#50668' '#49884#44036
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 112
        Width = 61
        Height = 19
        Caption = #52649#51204' '#49345#54408
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 139
        Width = 297
        Height = 25
        Caption = '---------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 24
        Top = 170
        Width = 61
        Height = 19
        Caption = #54633#44228' '#49884#44036
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 195
        Width = 297
        Height = 25
        Caption = '---------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 24
        Top = 226
        Width = 61
        Height = 19
        Caption = #52397#44396' '#44552#50529
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 32
        Top = 22
        Width = 5
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 224
        Top = 272
        Width = 75
        Height = 25
        Caption = #52649#51204
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit_nowtime: TEdit
        Left = 128
        Top = 73
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object Edit_alltime: TEdit
        Left = 128
        Top = 170
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object Edit_pay: TEdit
        Left = 128
        Top = 226
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 128
        Top = 112
        Width = 145
        Height = 21
        KeyField = 'TIME_NO'
        ListField = 'TIME_NAME'
        ListSource = clientmodule.DataSource_TIME
        TabOrder = 4
        OnCloseUp = DBLookupComboBox1CloseUp
      end
    end
  end
end
