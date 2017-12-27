object RentForm: TRentForm
  Left = 0
  Top = 0
  Caption = 'RentForm'
  ClientHeight = 557
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object SeatPanel: TPanel
    Left = 0
    Top = 0
    Width = 722
    Height = 557
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 189
      Top = 160
      Width = 120
      Height = 41
      Caption = #50696#50557#49884#44036
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 535
      Top = 160
      Width = 90
      Height = 41
      Caption = #50676#46988#49892
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LibRoomCombo: TDBComboBox
      Left = 511
      Top = 216
      Width = 145
      Height = 37
      DataField = 'LIBROOMNUM'
      DataSource = LibSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object STimeCombo: TComboBox
      Left = 37
      Top = 219
      Width = 204
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
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
        #50724#54980' 02:00:00')
    end
    object DBEdit1: TDBEdit
      Left = 230
      Top = 56
      Width = 227
      Height = 49
      DataField = 'LIBNAME'
      DataSource = LibSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 264
      Top = 320
      Width = 169
      Height = 73
      Caption = #51340#49437' '#54788#54889' '#54869#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object ETimeCombo: TComboBox
      Left = 264
      Top = 219
      Width = 204
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = 'ComboBox1'
      Items.Strings = (
        #50724#51204' 09:00:00'
        #50724#51204' 10:00:00'
        #50724#51204' 11:00:00'
        #50724#51204' 12:00:00'
        #50724#54980' 01:00:00'
        #50724#54980' 02:00:00')
    end
  end
  object RentSource: TDataSource
    DataSet = DataAccess.qryRent
    Left = 552
    Top = 24
  end
  object LibSource: TDataSource
    Left = 624
    Top = 24
  end
end
