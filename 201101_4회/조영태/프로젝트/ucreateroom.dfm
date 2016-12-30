object crroomform: Tcrroomform
  Left = 0
  Top = 0
  Caption = #48169
  ClientHeight = 471
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object rname: TLabel
    Left = 13
    Top = 113
    Width = 34
    Height = 13
    Caption = #54840#49688' : '
  end
  object opmoney: TLabel
    Left = 13
    Top = 154
    Width = 34
    Height = 13
    Caption = #44552#50529' : '
  end
  object Label2: TLabel
    Left = 739
    Top = 113
    Width = 22
    Height = 13
    Caption = #48169' : '
  end
  object Label3: TLabel
    Left = 727
    Top = 208
    Width = 34
    Height = 13
    Caption = #51060#47492' : '
  end
  object Panel2: TPanel
    Left = 168
    Top = 8
    Width = 548
    Height = 447
    TabOrder = 0
    OnDragDrop = Panel2DragDrop
    OnDragOver = Panel2DragOver
  end
  object roombutton: TButton
    Left = 44
    Top = 194
    Width = 75
    Height = 25
    Caption = #49373#49457
    TabOrder = 1
    OnClick = roombuttonClick
  end
  object roomEdit: TEdit
    Left = 53
    Top = 110
    Width = 89
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 2
  end
  object opmoneyEdit: TEdit
    Left = 53
    Top = 151
    Width = 89
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 3
  end
  object opdeletebt: TButton
    Left = 44
    Top = 234
    Width = 75
    Height = 25
    Caption = #49325#51228
    TabOrder = 4
    OnClick = opdeletebtClick
  end
  object roomchk: TButton
    Left = 33
    Top = 285
    Width = 98
    Height = 41
    Caption = #48169#50948#52824#51200#51109
    TabOrder = 5
    OnClick = roomchkClick
  end
  object roomsideEdit: TEdit
    Left = 767
    Top = 110
    Width = 100
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 6
  end
  object roomsideButton: TButton
    Left = 782
    Top = 147
    Width = 75
    Height = 25
    Caption = #52286#44592
    TabOrder = 7
    OnClick = roomsideButtonClick
  end
  object namesideEdit: TEdit
    Left = 767
    Top = 205
    Width = 100
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 8
  end
  object namesideButton: TButton
    Left = 782
    Top = 244
    Width = 75
    Height = 25
    Caption = #52286#44592
    TabOrder = 9
    OnClick = namesideButtonClick
  end
  object DragImageList: TImageList
    Left = 35
    Top = 345
  end
end
