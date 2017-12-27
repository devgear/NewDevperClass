object MyReserveForm: TMyReserveForm
  Left = 0
  Top = 0
  Caption = #50696#50557#54869#51064
  ClientHeight = 529
  ClientWidth = 850
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
  object MyPanel: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 529
    Align = alClient
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
  end
  object PanelBG: TPanel
    Left = 40
    Top = 45
    Width = 753
    Height = 455
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      753
      455)
    object Label1: TLabel
      Left = 123
      Top = 90
      Width = 90
      Height = 41
      Anchors = []
      Caption = #50500#51060#46356
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 127
      ExplicitTop = 107
    end
    object Label2: TLabel
      Left = 124
      Top = 138
      Width = 90
      Height = 41
      Anchors = []
      Caption = #46020#49436#44288
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 146
      ExplicitTop = 180
    end
    object Label3: TLabel
      Left = 123
      Top = 291
      Width = 120
      Height = 41
      Anchors = []
      Caption = #51340#49437#48264#54840
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 145
      ExplicitTop = 353
    end
    object Label4: TLabel
      Left = 121
      Top = 192
      Width = 120
      Height = 41
      Anchors = []
      Caption = #50696#50557#45216#51676
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 145
      ExplicitTop = 249
    end
    object Label5: TLabel
      Left = 123
      Top = 245
      Width = 120
      Height = 41
      Anchors = []
      Caption = #50696#50557#49884#44036
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 145
      ExplicitTop = 297
    end
    object Label6: TLabel
      Left = 299
      Top = 17
      Width = 163
      Height = 53
      Anchors = []
      Caption = #50696#50557' '#54869#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -42
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 348
      ExplicitTop = 28
    end
    object btnBack: TButton
      Left = 390
      Top = 350
      Width = 137
      Height = 49
      Anchors = []
      Caption = #45796#49884#50696#50557
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnBackClick
      ExplicitLeft = 425
      ExplicitTop = 377
    end
    object btnClose: TButton
      Left = 217
      Top = 350
      Width = 137
      Height = 49
      Anchors = []
      Caption = #54869#51064
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCloseClick
      ExplicitLeft = 239
      ExplicitTop = 377
    end
    object DBEdit2: TDBEdit
      Left = 269
      Top = 137
      Width = 225
      Height = 45
      Anchors = []
      DataField = 'LIBNAME'
      DataSource = MyDataSource_Lib
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 298
      ExplicitTop = 148
    end
    object DBEdit3: TDBEdit
      Left = 269
      Top = 191
      Width = 225
      Height = 45
      Anchors = []
      DataField = 'RENT_DATE'
      DataSource = MyDataSource_Rent
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      ExplicitLeft = 298
      ExplicitTop = 206
    end
    object DBEdit4: TDBEdit
      Left = 270
      Top = 241
      Width = 225
      Height = 45
      Anchors = []
      DataField = 'RENT_Stime'
      DataSource = MyDataSource_Rent
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      ExplicitLeft = 299
      ExplicitTop = 260
    end
    object DBEdit5: TDBEdit
      Left = 500
      Top = 241
      Width = 225
      Height = 45
      Anchors = []
      DataField = 'RENT_Etime'
      DataSource = MyDataSource_Rent
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      ExplicitLeft = 546
      ExplicitTop = 260
    end
    object DBEdit6: TDBEdit
      Left = 271
      Top = 290
      Width = 225
      Height = 45
      Anchors = []
      DataField = 'RENT_SEATNUM'
      DataSource = MyDataSource_Rent
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      ExplicitLeft = 300
      ExplicitTop = 313
    end
    object EditID: TEdit
      Left = 271
      Top = 86
      Width = 193
      Height = 45
      Anchors = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -30
      Font.Name = 'Tmon'#47788#49548#47532' Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      ExplicitLeft = 299
      ExplicitTop = 94
    end
  end
  object MyDataSource_User: TDataSource
    DataSet = DataAccess.qryUser
    Left = 744
    Top = 24
  end
  object MyDataSource_Lib: TDataSource
    DataSet = DataAccess.qryLib
    Left = 744
    Top = 80
  end
  object MyDataSource_Rent: TDataSource
    DataSet = DataAccess.qryRent
    Left = 744
    Top = 136
  end
  object MyDataSource_LibAddress: TDataSource
    DataSet = DataAccess.qryLibAddress
    Left = 104
    Top = 32
  end
end
