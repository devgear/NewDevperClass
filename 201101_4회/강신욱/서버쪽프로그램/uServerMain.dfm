object fm_Main: Tfm_Main
  Left = 0
  Top = 0
  ClientHeight = 640
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #44404#47548
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 11
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 640
    Align = alClient
    TabOrder = 0
    object CategoryPanelGroup1: TCategoryPanelGroup
      Left = 12
      Top = 20
      Width = 593
      Height = 25
      VertScrollBar.Tracking = True
      Align = alCustom
      GradientBaseColor = clMaroon
      GradientColor = 65408
      GradientDirection = gdHorizontal
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 352
      Top = 51
      Width = 257
      Height = 354
      TabOrder = 1
      object Label1: TLabel
        Left = 36
        Top = 166
        Width = 24
        Height = 11
        Caption = #51060#47492
      end
      object Label2: TLabel
        Left = 36
        Top = 196
        Width = 24
        Height = 11
        Caption = #49324#48264
      end
      object Label3: TLabel
        Left = 36
        Top = 227
        Width = 24
        Height = 11
        Caption = #48512#49436
      end
      object Label4: TLabel
        Left = 36
        Top = 255
        Width = 24
        Height = 11
        Caption = #51649#50948
      end
      object Label5: TLabel
        Left = 36
        Top = 285
        Width = 53
        Height = 11
        Caption = #51068#54616#45716' '#44275
      end
      object Label6: TLabel
        Left = 36
        Top = 28
        Width = 24
        Height = 11
        Caption = #49324#51652
      end
      object Image1: TImage
        Left = 96
        Top = 32
        Width = 92
        Height = 110
        AutoSize = True
      end
      object Label7: TLabel
        Left = 36
        Top = 313
        Width = 53
        Height = 11
        Caption = #51077#49324' '#45216#51676
      end
      object Edit_Code: TEdit
        Left = 97
        Top = 193
        Width = 121
        Height = 19
        TabStop = False
        ImeName = 'Microsoft Office IME 2007'
        ReadOnly = True
        TabOrder = 0
      end
      object Edit_Dept: TEdit
        Left = 96
        Top = 224
        Width = 121
        Height = 19
        TabStop = False
        ImeName = 'Microsoft Office IME 2007'
        ReadOnly = True
        TabOrder = 1
      end
      object Edit_Class: TEdit
        Left = 96
        Top = 252
        Width = 121
        Height = 19
        TabStop = False
        ImeName = 'Microsoft Office IME 2007'
        ReadOnly = True
        TabOrder = 2
      end
      object Edit_Entering_Date: TEdit
        Left = 96
        Top = 310
        Width = 121
        Height = 19
        TabStop = False
        ImeName = 'Microsoft Office IME 2007'
        ReadOnly = True
        TabOrder = 3
      end
    end
    object CategoryPanelGroup2: TCategoryPanelGroup
      Left = 12
      Top = 411
      Width = 597
      Height = 25
      VertScrollBar.Tracking = True
      Align = alCustom
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 2
    end
    object Memo_Log: TMemo
      Left = 12
      Top = 448
      Width = 597
      Height = 181
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
    end
    object ListView_Emp_List: TTreeView
      Left = 12
      Top = 51
      Width = 334
      Height = 354
      Indent = 19
      TabOrder = 4
      OnClick = ListView_Emp_ListClick
    end
  end
  object Edit_Name: TEdit
    Left = 449
    Top = 214
    Width = 121
    Height = 19
    TabStop = False
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 1
  end
  object Edit_Region: TEdit
    Left = 448
    Top = 333
    Width = 121
    Height = 19
    TabStop = False
    ImeName = 'Microsoft Office IME 2007'
    ReadOnly = True
    TabOrder = 2
  end
  object IdTCPServer1: TIdTCPServer
    Active = True
    Bindings = <>
    DefaultPort = 1234
    OnConnect = IdTCPServer1Connect
    OnDisconnect = IdTCPServer1Disconnect
    OnExecute = IdTCPServer1Execute
    Left = 484
    Top = 65532
  end
  object ActionManager1: TActionManager
    Left = 588
    Top = 65532
    StyleName = 'Platform Default'
  end
end
