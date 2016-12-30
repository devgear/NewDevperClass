object InsForm: TInsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49688#51221
  ClientHeight = 180
  ClientWidth = 245
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 245
    Height = 180
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label5: TLabel
      Left = 24
      Top = 44
      Width = 63
      Height = 24
      Caption = #51060'  '#47492'  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 74
      Width = 63
      Height = 24
      Caption = #54016'  '#47749'  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 24
      Top = 120
      Width = 75
      Height = 25
      Caption = #49688#51221
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 142
      Top = 120
      Width = 75
      Height = 25
      Caption = #52712#49548
      ModalResult = 2
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 77
      Width = 121
      Height = 21
      DataField = 'M_M_Name'
      DataSource = DM.DSMEMBER
      ListField = 'D_ID'
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 96
      Top = 50
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
  end
end
