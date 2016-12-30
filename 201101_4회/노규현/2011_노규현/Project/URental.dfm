object RentalForm: TRentalForm
  Left = 0
  Top = 0
  Caption = #52264#47049#47116#53944
  ClientHeight = 549
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 354
    Width = 632
    Height = 195
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Left = 18
      Top = 26
      Width = 44
      Height = 13
      Caption = #52264#47049'   ID'
    end
    object Label5: TLabel
      Left = 18
      Top = 69
      Width = 44
      Height = 13
      Caption = #44256#44061'   ID'
    end
    object Label6: TLabel
      Left = 18
      Top = 112
      Width = 44
      Height = 13
      Caption = #51648#51216'   ID'
    end
    object Label7: TLabel
      Left = 264
      Top = 27
      Width = 48
      Height = 13
      Caption = #44032'        '#44201
    end
    object Label8: TLabel
      Left = 264
      Top = 62
      Width = 48
      Height = 13
      Caption = #49324#50857#51068#51676
    end
    object Button1: TButton
      Left = 501
      Top = 23
      Width = 81
      Height = 78
      Caption = #47116#53944
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 501
      Top = 107
      Width = 81
      Height = 78
      Caption = #45824#50668#51333#47308
      TabOrder = 1
      OnClick = Button2Click
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 25
      Width = 121
      Height = 21
      DataField = 'car_id'
      DataSource = DM.JOINTABLESource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 62
      Width = 121
      Height = 21
      DataField = 'c_id'
      DataSource = DM.CustomSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 105
      Width = 121
      Height = 21
      DataField = 'branch_id'
      DataSource = DM.JOINTABLESource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 336
      Top = 22
      Width = 121
      Height = 21
      DataField = 'price'
      DataSource = DM.JOINTABLESource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 336
      Top = 56
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
    end
    object Button3: TButton
      Left = 264
      Top = 96
      Width = 209
      Height = 81
      Caption = #44256#44061#44160#49353
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 73
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 1
    object Label2: TLabel
      Left = 306
      Top = 20
      Width = 88
      Height = 25
      Caption = #52264#47049#44160#49353
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 18
      Top = 20
      Width = 88
      Height = 25
      Caption = #44160#49353#51312#44148
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 416
      Top = 27
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 0
      OnChange = Edit1Change
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 27
      Width = 145
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 1
      Text = #52264#47049
      OnChange = ComboBox1Change
      Items.Strings = (
        #52264#47049
        #51648#51216)
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 73
    Width = 632
    Height = 281
    Align = alClient
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 18
    Top = 95
    Width = 564
    Height = 242
    DataSource = DM.JOINTABLESource
    ImeName = 'Microsoft IME 2003'
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
