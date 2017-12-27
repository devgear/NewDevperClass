object Form_main: TForm_main
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Form_main'
  ClientHeight = 571
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  DesignSize = (
    814
    571)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Now_Show: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 571
    Align = alClient
    TabOrder = 1
  end
  object Button_View: TButton
    Left = 638
    Top = 486
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #51312#54924#50629#47924
    TabOrder = 3
    OnClick = Button_ViewClick
  end
  object Button_SellFood: TButton
    Left = 700
    Top = 382
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #49345#54408#54032#47588
    TabOrder = 2
    OnClick = Button_SellFoodClick
  end
  object Button4: TButton
    Left = 638
    Top = 24
    Width = 113
    Height = 51
    Anchors = [akTop, akRight]
    Caption = #49324#50857#51088' '#44160#49353
    TabOrder = 0
    OnClick = Button4Click
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 856
    object file1: TMenuItem
      Caption = 'file'
      object close1: TMenuItem
        Caption = 'close'
        OnClick = close1Click
      end
    end
  end
end
