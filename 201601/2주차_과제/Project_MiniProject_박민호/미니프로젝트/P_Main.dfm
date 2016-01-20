object Project: TProject
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Project'
  ClientHeight = 692
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 669
    Width = 785
    Height = 23
    Panels = <
      item
        Alignment = taCenter
        Width = 0
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = -4
    Width = 784
    Height = 50
    Align = alCustom
    TabOrder = 1
    object LoginButton: TButton
      Left = 591
      Top = 13
      Width = 75
      Height = 25
      Caption = #47196#44536#51064
      TabOrder = 0
      OnClick = LoginButtonClick
    end
    object Registration: TButton
      Left = 672
      Top = 13
      Width = 75
      Height = 25
      Caption = #54924#50896#44032#51077
      TabOrder = 1
      OnClick = RegistrationClick
    end
  end
  object Panel2: TPanel
    Left = 1
    Top = 46
    Width = 784
    Height = 617
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 0
      Top = 9
      Width = 780
      Height = 600
      ActivePage = TabSheet3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #54632#52488#47212#46027#50880
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = #54532#47196#51229#53944' '#44288#47532
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet2: TTabSheet
        Caption = #51064#49324#44288#47532
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet3: TTabSheet
        Caption = #48512#49436' '#44288#47532
        ImageIndex = 2
      end
      object TabSheet5: TTabSheet
        Caption = 'MY PAGE'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        inline TFrame11: TFrame1
          Left = 0
          Top = 0
          Width = 772
          Height = 568
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 772
          ExplicitHeight = 568
          inherited Panel1: TPanel
            Width = 772
            Height = 568
            ExplicitWidth = 772
            ExplicitHeight = 568
            inherited Label1: TLabel
              Width = 98
              Height = 17
              ExplicitWidth = 98
              ExplicitHeight = 17
            end
            inherited Label2: TLabel
              Width = 59
              Height = 17
              ExplicitWidth = 59
              ExplicitHeight = 17
            end
            inherited Label3: TLabel
              Width = 138
              Height = 17
              ExplicitWidth = 138
              ExplicitHeight = 17
            end
            inherited Label4: TLabel
              Width = 192
              Height = 17
              ExplicitWidth = 192
              ExplicitHeight = 17
            end
            inherited Label5: TLabel
              Width = 162
              Height = 17
              ExplicitWidth = 162
              ExplicitHeight = 17
            end
            inherited Label6: TLabel
              Width = 124
              Height = 17
              ExplicitWidth = 124
              ExplicitHeight = 17
            end
          end
        end
      end
    end
    object Refresh: TButton
      Left = 625
      Top = 4
      Width = 121
      Height = 25
      Caption = #49352#47196#44256#52840
      ImageIndex = 0
      Images = Department.ImageList1
      TabOrder = 0
    end
    object GotoForm: TButton
      Left = 481
      Top = 4
      Width = 138
      Height = 25
      Caption = #54644#45817#54868#47732#51004#47196' '#51060#46041
      TabOrder = 2
      OnClick = GotoFormClick
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 8
  end
end
