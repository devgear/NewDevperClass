object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 449
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 8
    Top = 87
    Width = 100
    Height = 113
    DragMode = dmAutomatic
    OnDragDrop = Shape3DragDrop
    OnDragOver = Shape3DragOver
    OnStartDrag = Shape3StartDrag
  end
  object Shape3: TShape
    Left = 8
    Top = 8
    Width = 100
    Height = 73
    Brush.Color = 16777088
    DragMode = dmAutomatic
    OnDragDrop = Shape3DragDrop
    OnDragOver = Shape3DragOver
    OnStartDrag = Shape3StartDrag
  end
  object Panel2: TPanel
    Left = 132
    Top = 8
    Width = 533
    Height = 417
    TabOrder = 0
    OnDragDrop = Panel2DragDrop
    OnDragOver = Panel2DragOver
  end
  object Button1: TButton
    Left = 24
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DragImageList: TImageList
    Left = 395
    Top = 387
  end
end
