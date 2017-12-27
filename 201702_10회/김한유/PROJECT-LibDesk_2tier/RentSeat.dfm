object SeatForm: TSeatForm
  Left = 0
  Top = 0
  Caption = #51340#49437#54788#54889
  ClientHeight = 560
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object SeatPanel: TPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 81
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 465
      Top = 24
      Width = 92
      Height = 31
      Caption = #50696#50557#45216#51676
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LibName: TDBEdit
      Left = 220
      Top = 17
      Width = 145
      Height = 39
      DataField = 'LIBNAME'
      DataSource = LibSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object PickDate: TDateTimePicker
      Left = 592
      Top = 22
      Width = 186
      Height = 29
      Date = 42881.647035590280000000
      Time = 42881.647035590280000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btnConfirm: TButton
      Left = 792
      Top = 23
      Width = 58
      Height = 29
      Caption = #51312#54924
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnConfirmClick
    end
    object DBEdit1: TDBEdit
      Left = 0
      Top = 25
      Width = 25
      Height = 24
      DataField = 'LIB_SEQ'
      DataSource = LibSource
      TabOrder = 3
      Visible = False
    end
    object Edit1: TEdit
      Left = 0
      Top = 0
      Width = 36
      Height = 24
      TabOrder = 4
      Text = 'Edit1'
      Visible = False
    end
  end
  object SeatPanel2: TPanel
    Left = 0
    Top = 81
    Width = 870
    Height = 479
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object RentPanel: TPanel
      Left = 196
      Top = 272
      Width = 469
      Height = 161
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 0
      object Label5: TLabel
        Left = 15
        Top = 24
        Width = 92
        Height = 31
        Caption = #51340#49437#48264#54840
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 15
        Top = 75
        Width = 92
        Height = 31
        Caption = #50696#50557#49884#44036
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnReserve: TButton
        Left = 309
        Top = 24
        Width = 139
        Height = 54
        Caption = #50696#50557
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnReserveClick
      end
      object STimeCombo: TComboBox
        Left = 15
        Top = 112
        Width = 171
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'STimeCombo'
        Items.Strings = (
          #50724#51204' 09:00:00'
          #50724#51204' 10:00:00'
          #50724#51204' 11:00:00'
          #50724#51204' 12:00:00'
          #50724#54980' 01:00:00'
          #50724#54980' 02:00:00'
          #50724#54980' 03:00:00'
          #50724#54980' 04:00:00'
          #50724#54980' 05:00:00'
          #50724#54980' 06:00:00'
          #50724#54980' 07:00:00'
          #50724#54980' 08:00:00')
      end
      object ETimeCombo: TComboBox
        Left = 200
        Top = 112
        Width = 178
        Height = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tmon'#47788#49548#47532' Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'ETimeCombo'
        Items.Strings = (
          #50724#51204' 09:00:00'
          #50724#51204' 10:00:00'
          #50724#51204' 11:00:00'
          #50724#51204' 12:00:00'
          #50724#54980' 01:00:00'
          #50724#54980' 02:00:00'
          #50724#54980' 03:00:00'
          #50724#54980' 04:00:00'
          #50724#54980' 05:00:00'
          #50724#54980' 06:00:00'
          #50724#54980' 07:00:00'
          #50724#54980' 08:00:00'
          #50724#54980' 09:00:00')
      end
      object editNum: TEdit
        Left = 136
        Top = 24
        Width = 121
        Height = 24
        TabOrder = 3
        Text = 'editNum'
      end
    end
    object desk1: TPanel
      Left = 39
      Top = 24
      Width = 201
      Height = 137
      Color = clInactiveCaptionText
      ParentBackground = False
      TabOrder = 1
      object Button1: TButton
        Left = 24
        Top = 16
        Width = 49
        Height = 49
        Caption = '1'
        TabOrder = 0
        OnClick = SeatClick
      end
      object Button2: TButton
        Left = 79
        Top = 16
        Width = 49
        Height = 49
        Caption = '2'
        TabOrder = 1
        OnClick = SeatClick
      end
      object Button3: TButton
        Left = 134
        Top = 16
        Width = 49
        Height = 49
        Caption = '3'
        TabOrder = 2
        OnClick = SeatClick
      end
      object Button4: TButton
        Left = 24
        Top = 71
        Width = 49
        Height = 49
        Caption = '4'
        TabOrder = 3
        OnClick = SeatClick
      end
      object Button5: TButton
        Left = 79
        Top = 71
        Width = 49
        Height = 49
        Caption = '5'
        TabOrder = 4
        OnClick = SeatClick
      end
      object Button6: TButton
        Left = 134
        Top = 71
        Width = 49
        Height = 49
        Caption = '6'
        TabOrder = 5
        OnClick = SeatClick
      end
    end
    object Panel1: TPanel
      Left = 292
      Top = 24
      Width = 201
      Height = 137
      Caption = 'c'
      Color = clInactiveCaptionText
      ParentBackground = False
      TabOrder = 2
      object Button7: TButton
        Left = 24
        Top = 16
        Width = 49
        Height = 49
        Caption = '7'
        TabOrder = 0
        OnClick = SeatClick
      end
      object Button8: TButton
        Left = 79
        Top = 16
        Width = 49
        Height = 49
        Caption = '8'
        TabOrder = 1
        OnClick = SeatClick
      end
      object Button9: TButton
        Left = 134
        Top = 16
        Width = 49
        Height = 49
        Caption = '9'
        TabOrder = 2
        OnClick = SeatClick
      end
      object Button10: TButton
        Left = 24
        Top = 71
        Width = 49
        Height = 49
        Caption = '10'
        TabOrder = 3
        OnClick = SeatClick
      end
      object Button11: TButton
        Left = 79
        Top = 71
        Width = 49
        Height = 49
        Caption = '11'
        TabOrder = 4
        OnClick = SeatClick
      end
      object Button12: TButton
        Left = 134
        Top = 71
        Width = 49
        Height = 49
        Caption = '12'
        TabOrder = 5
        OnClick = SeatClick
      end
    end
    object Panel2: TPanel
      Left = 564
      Top = 24
      Width = 201
      Height = 137
      Caption = 'c'
      Color = clInactiveCaptionText
      ParentBackground = False
      TabOrder = 3
      object Button13: TButton
        Left = 24
        Top = 16
        Width = 49
        Height = 49
        Caption = '13'
        TabOrder = 0
        OnClick = SeatClick
      end
      object Button14: TButton
        Left = 79
        Top = 16
        Width = 49
        Height = 49
        Caption = '14'
        TabOrder = 1
        OnClick = SeatClick
      end
      object Button15: TButton
        Left = 134
        Top = 16
        Width = 49
        Height = 49
        Caption = '15'
        TabOrder = 2
        OnClick = SeatClick
      end
      object Button16: TButton
        Left = 24
        Top = 71
        Width = 49
        Height = 49
        Caption = '16'
        TabOrder = 3
        OnClick = SeatClick
      end
      object Button17: TButton
        Left = 79
        Top = 71
        Width = 49
        Height = 49
        Caption = '17'
        TabOrder = 4
        OnClick = SeatClick
      end
      object Button18: TButton
        Left = 134
        Top = 71
        Width = 49
        Height = 49
        Caption = '18'
        TabOrder = 5
        OnClick = SeatClick
      end
    end
  end
  object LibSource: TDataSource
    DataSet = DataAccess.qryLib
    Left = 816
    Top = 496
  end
  object RentSource: TDataSource
    DataSet = DataAccess.qryRent
    Left = 744
    Top = 496
  end
  object UserSource: TDataSource
    DataSet = DataAccess.qryUser
    Left = 664
    Top = 496
  end
  object DupSeatSource: TDataSource
    DataSet = DataAccess.qryDupSeat
    Left = 808
    Top = 424
  end
  object qrySeat: TFDQuery
    Connection = DataAccess.LibraryConnection
    SQL.Strings = (
      
        'SELECT RENT_SEATNUM FROM RENT WHERE RENT_DATE = :DATE AND LIB_SE' +
        'Q = :LIBSEQ AND RENT_SEATNUM = :Rent_SeatNum')
    Left = 728
    Top = 416
    ParamData = <
      item
        Name = 'DATE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LIBSEQ'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'RENT_SEATNUM'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
