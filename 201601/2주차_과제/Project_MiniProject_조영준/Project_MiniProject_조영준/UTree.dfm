object TreeForm: TTreeForm
  Left = 0
  Top = 0
  Caption = #51312#51649#46020
  ClientHeight = 419
  ClientWidth = 568
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
  object TreeView1: TTreeView
    Left = 8
    Top = 8
    Width = 273
    Height = 409
    Indent = 19
    TabOrder = 0
    OnClick = TreeView1Click
  end
  object ListView1: TListView
    Left = 287
    Top = 8
    Width = 273
    Height = 409
    Columns = <
      item
        Caption = #51060#47492
      end
      item
        Caption = #54016
      end>
    TabOrder = 1
    ViewStyle = vsReport
  end
end
