object FindForm: TFindForm
  Left = 0
  Top = 0
  Caption = 'FindForm'
  ClientHeight = 576
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object LibPanel: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 576
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object HiddenPanel: TPanel
      Left = 48
      Top = 240
      Width = 681
      Height = 297
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 0
      Visible = False
      object Label3: TLabel
        Left = 52
        Top = 104
        Width = 120
        Height = 41
        Caption = #44060#51109#49884#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 471
        Top = 104
        Width = 90
        Height = 41
        Caption = #55092#44288#51068
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 269
        Top = 104
        Width = 120
        Height = 41
        Caption = #54224#51109#49884#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 52
        Top = 160
        Width = 173
        Height = 33
        DataField = 'LIBOPEN'
        DataSource = LibSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 269
        Top = 160
        Width = 164
        Height = 33
        DataField = 'LIBCLOSE'
        DataSource = LibSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 471
        Top = 160
        Width = 178
        Height = 33
        DataField = 'LIBHOLIDAY'
        DataSource = LibSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 253
        Top = 22
        Width = 164
        Height = 49
        DataField = 'LIBNAME'
        DataSource = LibSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Button2: TButton
        Left = 241
        Top = 224
        Width = 203
        Height = 49
        Caption = #51088#47532' '#50696#50557#54616#47084' '#44032#44592
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = Button2Click
      end
    end
    object PanelMenu: TPanel
      Left = 48
      Top = 119
      Width = 665
      Height = 89
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 24
        Top = 26
        Width = 90
        Height = 41
        Caption = #49436#50872#49884
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 552
        Top = 28
        Width = 97
        Height = 37
        Caption = #52286#44592
        TabOrder = 0
        OnClick = Button1Click
      end
      object LibAddressCombo: TDBLookupComboBox
        Left = 136
        Top = 26
        Width = 177
        Height = 39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        KeyField = 'LIBADDRESS'
        ListField = 'LIBADDRESS'
        ListSource = LibAddressSource
        ParentFont = False
        TabOrder = 1
      end
      object LibNameCombo: TDBLookupComboBox
        Left = 319
        Top = 26
        Width = 193
        Height = 39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        KeyField = 'LIB_SEQ'
        ListField = 'LIBNAME'
        ListSource = LibSource
        ParentFont = False
        TabOrder = 2
      end
    end
    object PanelTitel: TPanel
      Left = 216
      Top = 24
      Width = 373
      Height = 60
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 65
        Top = 11
        Width = 256
        Height = 41
        Alignment = taCenter
        Caption = #49436#50872#49884' '#46020#49436#44288' '#52286#44592
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
  end
  object LibAddressSource: TDataSource
    DataSet = DataAccess.qryLibAddress
    Left = 40
    Top = 56
  end
  object LibSource: TDataSource
    DataSet = DataAccess.qryLib
    Left = 104
    Top = 8
  end
  object UserSource: TDataSource
    DataSet = DataAccess.qryUser
    Left = 24
    Top = 8
  end
end
