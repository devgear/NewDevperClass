object project_1: Tproject_1
  Left = 0
  Top = 0
  Caption = 'project_1'
  ClientHeight = 282
  ClientWidth = 418
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
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 63
    Height = 13
    Caption = #54532#47196#51229#53944' '#47749
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 51
    Height = 13
    Caption = #49884#51089' '#45216#51676
  end
  object Label3: TLabel
    Left = 40
    Top = 101
    Width = 51
    Height = 13
    Caption = #51333#47308' '#45216#51676
  end
  object Label4: TLabel
    Left = 43
    Top = 141
    Width = 36
    Height = 13
    Caption = #44288#47532#51088
  end
  object Label5: TLabel
    Left = 40
    Top = 229
    Width = 51
    Height = 13
    Caption = #52280#50668' '#51064#50896
  end
  object Label6: TLabel
    Left = 43
    Top = 186
    Width = 51
    Height = 13
    Caption = #51652#54665' '#49345#53468
  end
  object DateTimePicker1: TDateTimePicker
    Left = 128
    Top = 48
    Width = 186
    Height = 21
    Date = 42381.074132638890000000
    Time = 42381.074132638890000000
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 128
    Top = 93
    Width = 186
    Height = 21
    Date = 42381.074132638890000000
    Time = 42381.074132638890000000
    TabOrder = 1
  end
  object DBComboBox1: TDBComboBox
    Left = 128
    Top = 138
    Width = 145
    Height = 21
    DataField = 'ENAME'
    DataSource = DM.DataSource2
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 21
    DataField = 'PNAME'
    DataSource = DM.DataSource1
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 178
    Width = 121
    Height = 21
    DataField = 'PDURING'
    DataSource = DM.DataSource1
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 128
    Top = 221
    Width = 121
    Height = 21
    DataField = 'PPERSON'
    DataSource = DM.DataSource1
    TabOrder = 5
  end
  object Button1: TButton
    Left = 312
    Top = 176
    Width = 75
    Height = 25
    Caption = #51200#51109
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 219
    Width = 75
    Height = 25
    Caption = #52712#49548
    TabOrder = 7
    OnClick = Button2Click
  end
end
