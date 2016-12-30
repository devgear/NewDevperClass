object RevForm: TRevForm
  Left = 0
  Top = 0
  Caption = #52264#47049#50696#50557
  ClientHeight = 531
  ClientWidth = 625
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
  object panel1: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 201
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 48
      Top = 26
      Width = 48
      Height = 13
      Caption = #54924#50896#48264#54840
    end
    object Label3: TLabel
      Left = 48
      Top = 71
      Width = 48
      Height = 13
      Caption = #47116#53944#51648#51216
    end
    object Label4: TLabel
      Left = 48
      Top = 111
      Width = 48
      Height = 13
      Caption = #49324#50857#51068#49688
    end
    object Label5: TLabel
      Left = 280
      Top = 66
      Width = 48
      Height = 13
      Caption = #50696#50557#45216#51676
    end
    object Label7: TLabel
      Left = 280
      Top = 111
      Width = 48
      Height = 13
      Caption = #44032'        '#44201
    end
    object Label1: TLabel
      Left = 280
      Top = 26
      Width = 48
      Height = 13
      Caption = #52264#47049#51060#47492
    end
    object Label9: TLabel
      Left = 48
      Top = 177
      Width = 48
      Height = 13
      Caption = #44256#44061#44160#49353
    end
    object Button1: TButton
      Left = 513
      Top = 94
      Width = 75
      Height = 60
      Caption = #51333#47308
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 513
      Top = 28
      Width = 75
      Height = 60
      Caption = #50696#50557
      TabOrder = 1
      OnClick = Button2Click
    end
    object DBComboBox1: TDBComboBox
      Left = 120
      Top = 63
      Width = 121
      Height = 21
      DataField = 'name_1'
      DataSource = DM.JOINTABLESource
      ImeName = 'Microsoft IME 2003'
      Items.Strings = (
        #49436#50872
        #45824#51204
        #45824#44396
        #48512#49328)
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 23
      Width = 121
      Height = 21
      DataField = 'c_id'
      DataSource = DM.CustomSource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 352
      Top = 108
      Width = 121
      Height = 21
      DataField = 'price'
      DataSource = DM.JOINTABLESource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 120
      Top = 108
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 352
      Top = 23
      Width = 121
      Height = 21
      DataField = 'name'
      DataSource = DM.JOINTABLESource
      ImeName = 'Microsoft IME 2003'
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 120
      Top = 174
      Width = 121
      Height = 21
      ImeName = 'Microsoft IME 2003'
      TabOrder = 7
      OnChange = Edit4Change
    end
    object MaskEdit1: TMaskEdit
      Left = 352
      Top = 63
      Width = 119
      Height = 21
      EditMask = '!99/99/00;1;'
      ImeName = 'Microsoft IME 2003'
      MaxLength = 8
      TabOrder = 8
      Text = '  -  -  '
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 201
    Width = 625
    Height = 330
    Align = alClient
    TabOrder = 1
    object Label8: TLabel
      Left = 32
      Top = 6
      Width = 52
      Height = 18
      Caption = #52264'     '#47049
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 32
      Top = 160
      Width = 52
      Height = 18
      Caption = #44256'     '#44061
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 32
      Top = 184
      Width = 564
      Height = 130
      DataSource = DM.CustomSource
      ImeName = 'Microsoft IME 2003'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 32
      Top = 30
      Width = 564
      Height = 130
      DataSource = DM.JOINTABLESource
      ImeName = 'Microsoft IME 2003'
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
