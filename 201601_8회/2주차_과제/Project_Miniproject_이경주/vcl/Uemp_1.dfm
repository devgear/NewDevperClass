object emp_1: Temp_1
  Left = 0
  Top = 0
  Caption = #49324#50896' '#54200#51665
  ClientHeight = 282
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 44
    Width = 51
    Height = 13
    Caption = #49324#50896' '#48264#54840
  end
  object Label2: TLabel
    Left = 232
    Top = 44
    Width = 51
    Height = 13
    Caption = #49324#50896' '#51060#47492
  end
  object Label3: TLabel
    Left = 24
    Top = 101
    Width = 51
    Height = 13
    Caption = #50672#46973#52376
  end
  object Label4: TLabel
    Left = 240
    Top = 101
    Width = 39
    Height = 13
    Caption = #49548#49549' '#54016
  end
  object DBEdit1: TDBEdit
    Left = 93
    Top = 41
    Width = 121
    Height = 21
    DataField = 'ENUMBER'
    DataSource = DM.DataSource2
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 289
    Top = 41
    Width = 121
    Height = 21
    DataField = 'ENAME'
    DataSource = DM.DataSource2
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 93
    Top = 93
    Width = 121
    Height = 21
    DataField = 'EPHONE'
    DataSource = DM.DataSource2
    TabOrder = 2
  end
  object Button1: TButton
    Left = 112
    Top = 200
    Width = 75
    Height = 25
    Caption = #54869#51064
    TabOrder = 3
  end
  object Button2: TButton
    Left = 248
    Top = 200
    Width = 75
    Height = 25
    Caption = #52712#49548' '
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 289
    Top = 93
    Width = 121
    Height = 21
    DataField = 'ETEAM'
    DataSource = DM.DataSource2
    ListField = 'DTEAM'
    ListSource = DM.DataSource1
    TabOrder = 5
  end
end
