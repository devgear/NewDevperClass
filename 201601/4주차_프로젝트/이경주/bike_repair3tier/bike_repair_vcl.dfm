object bike_vcl: Tbike_vcl
  Left = 0
  Top = 0
  Caption = #52636#51109#49688#47532
  ClientHeight = 467
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 289
    Top = 378
    Width = 51
    Height = 13
    Caption = #51648#51216' '#49440#53469
  end
  object Label2: TLabel
    Left = 558
    Top = 378
    Width = 48
    Height = 13
    Caption = #50696' '#50557'   '#51473
  end
  object Label3: TLabel
    Left = 289
    Top = 417
    Width = 24
    Height = 13
    Caption = #50948#46020
  end
  object Label4: TLabel
    Left = 455
    Top = 417
    Width = 24
    Height = 13
    Caption = #44221#46020
  end
  object btn_user_management: TButton
    Left = 8
    Top = 351
    Width = 75
    Height = 25
    Caption = #54924#50896' '#44288#47532
    TabOrder = 0
    OnClick = btn_user_managementClick
  end
  object btn_repairman_management: TButton
    Left = 8
    Top = 392
    Width = 75
    Height = 25
    Caption = #49688#47532#44277' '#44288#47532
    TabOrder = 1
    OnClick = btn_repairman_managementClick
  end
  object btn_repairlist_management: TButton
    Left = 8
    Top = 434
    Width = 75
    Height = 25
    Caption = #49688#47532' '#45236#50669
    TabOrder = 2
    OnClick = btn_repairlist_managementClick
  end
  object WebBrowser1: TWebBrowser
    Left = 8
    Top = 8
    Width = 714
    Height = 337
    Align = alCustom
    TabOrder = 3
    ControlData = {
      4C000000CB490000D42200000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 367
    Top = 370
    Width = 145
    Height = 21
    DataField = 'CNAME'
    DataSource = dm1.repairlistDS
    KeyField = 'CNAME'
    ListField = 'CNAME'
    ListSource = dm1.repaircenterDS
    TabOrder = 4
    OnKeyDown = DBLookupComboBox1KeyDown
  end
  object Edit1: TEdit
    Left = 624
    Top = 370
    Width = 65
    Height = 21
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 328
    Top = 414
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 501
    Top = 414
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Timer1: TTimer
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 488
    Top = 240
  end
end
