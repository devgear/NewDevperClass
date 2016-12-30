object SA_Form: TSA_Form
  Left = 0
  Top = 0
  Caption = #44288#44305#51648' '
  ClientHeight = 203
  ClientWidth = 425
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
  object Bevel1: TBevel
    Left = 24
    Top = 32
    Width = 249
    Height = 145
  end
  object lb_SName: TLabel
    Left = 48
    Top = 67
    Width = 51
    Height = 13
    Caption = #44288#44305#51648' '#47749
  end
  object lb_SAddress: TLabel
    Left = 48
    Top = 128
    Width = 24
    Height = 13
    Caption = #51452#49548
  end
  object Btn_S_Add: TButton
    Left = 296
    Top = 39
    Width = 121
    Height = 46
    Caption = #49688#51221
    TabOrder = 0
    OnClick = Btn_S_AddClick
  end
  object Btn_S_Cancel: TButton
    Left = 296
    Top = 125
    Width = 121
    Height = 46
    Caption = #52712#49548
    TabOrder = 1
    OnClick = Btn_S_CancelClick
  end
  object Edt_Sname: TDBEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 21
    DataField = 'S_NAME'
    DataSource = DM.Sights_Source
    TabOrder = 2
  end
  object Edt_Saddress: TDBEdit
    Left = 136
    Top = 125
    Width = 121
    Height = 21
    DataField = 'S_ADDRESS'
    DataSource = DM.Sights_Source
    TabOrder = 3
  end
end
