object CalForm: TCalForm
  Left = 0
  Top = 0
  Caption = 'CalForm'
  ClientHeight = 197
  ClientWidth = 226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Calender: TMonthCalendar
    Left = 3
    Top = 8
    Width = 218
    Height = 160
    Align = alCustom
    Date = 42384.585196446760000000
    TabOrder = 0
  end
  object Button1: TButton
    Left = 76
    Top = 170
    Width = 75
    Height = 25
    Caption = #54869#51064
    TabOrder = 1
    OnClick = Button1Click
  end
end
