object RecvListForm: TRecvListForm
  Left = 0
  Top = 0
  Caption = #45824#49345' '#52286#44592
  ClientHeight = 461
  ClientWidth = 426
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 33
    Align = alTop
    TabOrder = 0
    object SearchEdit: TEdit
      Left = 137
      Top = 6
      Width = 184
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 57
      Top = 6
      Width = 74
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 1
      Text = #49324'  '#50896'  '#47749
      Items.Strings = (
        #49324'  '#50896'  '#47749
        #49324#50896#48264#54840
        #48512'  '#49436'  '#47749
        #54016'        '#47749)
    end
    object Button1: TButton
      Left = 327
      Top = 6
      Width = 75
      Height = 21
      Caption = #44160#49353
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 426
    Height = 428
    Align = alClient
    TabOrder = 1
    object ListView1: TListView
      Left = 1
      Top = 1
      Width = 424
      Height = 426
      Align = alClient
      Columns = <
        item
          Caption = #49324#50896#48264#54840
          Width = 80
        end
        item
          Alignment = taCenter
          Caption = #48512#49436#47749
          Width = 80
        end
        item
          Alignment = taCenter
          Caption = #54016#47749
          Width = 80
        end
        item
          Alignment = taCenter
          Caption = #51060#47492
          Width = 80
        end
        item
          Alignment = taCenter
          Caption = #51649#44553
          Width = 80
        end>
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnDblClick = ListView1DblClick
    end
  end
  object empQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.DSDConnection
    Left = 24
    Top = 64
  end
end
