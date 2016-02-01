object RA_Form: TRA_Form
  Left = 0
  Top = 0
  Caption = #51020#49885#51216' '
  ClientHeight = 281
  ClientWidth = 420
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
    Height = 217
  end
  object lb_RName: TLabel
    Left = 48
    Top = 67
    Width = 51
    Height = 13
    Caption = #51020#49885#51216' '#47749
  end
  object lb_RPhone: TLabel
    Left = 48
    Top = 114
    Width = 48
    Height = 13
    Caption = #51204#54868#48264#54840
  end
  object lb_RAddress: TLabel
    Left = 48
    Top = 159
    Width = 24
    Height = 13
    Caption = #51452#49548
  end
  object lb_RSName: TLabel
    Left = 48
    Top = 204
    Width = 51
    Height = 13
    Caption = #44288#44305#51648' '#47749
  end
  object Btn_R_Add: TButton
    Left = 291
    Top = 39
    Width = 121
    Height = 46
    Caption = #49688#51221
    TabOrder = 0
    OnClick = Btn_R_AddClick
  end
  object Btn_R_Cancel: TButton
    Left = 291
    Top = 193
    Width = 121
    Height = 46
    Caption = #52712#49548
    TabOrder = 1
  end
  object Edt_Rname: TDBEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 21
    DataField = 'R_NAME'
    DataSource = DM.Rest_Source
    TabOrder = 2
  end
  object Edt_Rphone: TDBEdit
    Left = 136
    Top = 111
    Width = 121
    Height = 21
    DataField = 'R_PHONE'
    DataSource = DM.Rest_Source
    TabOrder = 3
  end
  object Edt_Raddress: TDBEdit
    Left = 136
    Top = 156
    Width = 121
    Height = 21
    DataField = 'R_ADDRESS'
    DataSource = DM.Rest_Source
    TabOrder = 4
  end
  object RSname_ComboBox: TDBLookupComboBox
    Left = 136
    Top = 204
    Width = 121
    Height = 21
    DataField = 'R_SNO'
    DataSource = DM.Rest_Source
    KeyField = 'S_NO'
    ListField = 'S_NAME'
    ListSource = DM.Sights_Source
    TabOrder = 5
  end
end
