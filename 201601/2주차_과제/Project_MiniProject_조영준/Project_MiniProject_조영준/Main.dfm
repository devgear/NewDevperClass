object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = Button1
  Caption = #54532#47196#51229#53944#44288#47532#54532#47196#44536
  ClientHeight = 83
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 324
    Height = 29
    ButtonWidth = 65
    Caption = 'ToolBar1'
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 22
      Caption = #49324#50896#44288#47532
      TabOrder = 0
      OnClick = Menu_EmployeeClick
    end
    object Button3: TButton
      Left = 75
      Top = 0
      Width = 75
      Height = 22
      Caption = #48512#49436#44288#47532
      TabOrder = 2
      OnClick = Menu_deptClick
    end
    object Button2: TButton
      Left = 150
      Top = 0
      Width = 75
      Height = 22
      Caption = #54532#47196#51229#53944#44288#47532
      TabOrder = 1
      OnClick = Menu_ProjectClick
    end
    object Bt_tree: TButton
      Left = 225
      Top = 0
      Width = 75
      Height = 22
      Caption = #51312#51649#46020
      TabOrder = 3
      OnClick = Bt_treeClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 24
    object N1: TMenuItem
      Caption = #44288#47532
      object Menu_Employee: TMenuItem
        Caption = #49324#50896#44288#47532
        OnClick = Menu_EmployeeClick
      end
      object Menu_dept: TMenuItem
        Caption = #48512#49436#44288#47532
        OnClick = Menu_deptClick
      end
      object Menu_Project: TMenuItem
        Caption = #54532#47196#51229#53944#44288#47532
        OnClick = Menu_ProjectClick
      end
    end
  end
end
