object MyForm: TMyForm
  Left = 0
  Top = 0
  Caption = 'MyPage'
  ClientHeight = 553
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object MyPanel: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 553
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    DesignSize = (
      866
      553)
    object Label4: TLabel
      Left = 323
      Top = 27
      Width = 188
      Height = 41
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #45208#51032' '#50696#50557#51312#54924
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit4: TEdit
      Left = 16
      Top = 16
      Width = 24
      Height = 17
      TabOrder = 0
      Text = 'Edit4'
      Visible = False
    end
    object Edit5: TEdit
      Left = 15
      Top = 39
      Width = 25
      Height = 19
      TabOrder = 1
      Text = 'Edit5'
      Visible = False
    end
    object PanelMenu: TPanel
      Left = 16
      Top = 109
      Width = 841
      Height = 76
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 2
      DesignSize = (
        841
        76)
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 90
        Height = 41
        Caption = #46020#49436#44288
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 375
        Top = 17
        Width = 120
        Height = 41
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #50696#50557#45216#51676
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LibNameCombo: TDBLookupComboBox
        Left = 144
        Top = 17
        Width = 193
        Height = 39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        KeyField = 'LIBNAME'
        ListField = 'LIBNAME'
        ListSource = DataSource_Lib
        ParentFont = False
        TabOrder = 0
      end
      object RPickDate: TDateTimePicker
        Left = 526
        Top = 17
        Width = 186
        Height = 33
        Date = 42881.647035590280000000
        Time = 42881.647035590280000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Button1: TButton
        Left = 734
        Top = 14
        Width = 91
        Height = 43
        Caption = #51312#54924
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object PanelReserve: TPanel
      Left = 88
      Top = 256
      Width = 649
      Height = 169
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 3
      DesignSize = (
        649
        169)
      object Label3: TLabel
        Left = 36
        Top = 22
        Width = 120
        Height = 41
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #50696#50557#49884#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 36
        Top = 78
        Width = 120
        Height = 41
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #51340#49437#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditSTime: TEdit
        Left = 214
        Top = 24
        Width = 162
        Height = 33
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object EditETime: TEdit
        Left = 414
        Top = 24
        Width = 163
        Height = 33
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object EditSeatNum: TEdit
        Left = 214
        Top = 80
        Width = 121
        Height = 33
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object DataSource_Lib: TDataSource
    DataSet = qryLib
    Left = 488
    Top = 464
  end
  object qryRentCheck: TFDQuery
    Active = True
    Connection = DataAccess.LibraryConnection
    SQL.Strings = (
      'SELECT * FROM RENT '
      
        'WHERE LIB_SEQ = :LIBSEQ AND RENT_dATE = :DATE AND USER_SEQ = :US' +
        'ERSEQ')
    Left = 592
    Top = 464
    ParamData = <
      item
        Name = 'LIBSEQ'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'USERSEQ'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSource_rent: TDataSource
    DataSet = qryRentCheck
    Left = 368
    Top = 472
  end
  object qryUserCheck: TFDQuery
    Active = True
    Connection = DataAccess.LibraryConnection
    SQL.Strings = (
      'SELECT * FROM USERS WHERE USER_ID = :USERID'
      ' ')
    Left = 680
    Top = 464
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object DataSource_User: TDataSource
    DataSet = qryUserCheck
    Left = 264
    Top = 472
  end
  object qryLib: TFDQuery
    Active = True
    IndexFieldNames = 'LIBADDRESS'
    MasterFields = 'LIBADDRESS'
    Connection = DataAccess.LibraryConnection
    SQL.Strings = (
      'SELECT * FROM LIB')
    Left = 772
    Top = 464
  end
  object qryLibCheck: TFDQuery
    Active = True
    Connection = DataAccess.LibraryConnection
    SQL.Strings = (
      'SELECT LIB_SEQ FROM LIB WHERE LIBNAME = :LIBNAME'
      ' ')
    Left = 820
    Top = 464
    ParamData = <
      item
        Name = 'LIBNAME'
        DataType = ftWideString
        ParamType = ptInput
        Size = 80
        Value = Null
      end>
  end
end
